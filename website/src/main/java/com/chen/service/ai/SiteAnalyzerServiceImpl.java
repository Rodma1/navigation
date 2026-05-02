package com.chen.service.ai;

import com.chen.common.exception.ServiceException;
import com.chen.config.ai.SiteAnalyzerConfig;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryPO;
import com.chen.domain.navigatedomain.navigatesite.SiteAnalyzeResult;
import com.chen.service.category.navigatecategory.CyzNavigateCategoryService;
import com.chen.utils.WebPageFetcher;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 网站智能分析服务实现
 * <p>
 * 流程：输入URL → 抓取网页信息（title/description/image/body） → 构造prompt发给AI → 解析AI返回的JSON → 填充结果
 * 使用 OpenAI 兼容接口（支持 DeepSeek、通义千问等），通过 application.yml 中的 ai.site-analyzer 配置切换
 */
@Slf4j
@RequiredArgsConstructor
@Service
public class SiteAnalyzerServiceImpl implements SiteAnalyzerService {

    private final SiteAnalyzerConfig config;
    private final CyzNavigateCategoryService categoryService;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    /** 独立的 OkHttpClient，超时设置比通用工具类更短，适合 AI API 调用 */
    private final OkHttpClient httpClient = new OkHttpClient.Builder()
            .connectTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .readTimeout(60, java.util.concurrent.TimeUnit.SECONDS)
            .writeTimeout(30, java.util.concurrent.TimeUnit.SECONDS)
            .build();

    @Override
    public SiteAnalyzeResult analyzeSite(String url) {
        // 校验 API Key 是否已配置
        if (config.getApiKey() == null || config.getApiKey().isEmpty() || "sk-xxx".equals(config.getApiKey())) {
            throw new ServiceException("AI 配置未完成，请先配置 ai.site-analyzer.api-key");
        }

        // 1. 抓取网页基本信息
        WebPageFetcher.WebPageInfo pageInfo = WebPageFetcher.fetch(url);

        // 2. 获取所有分类列表，格式化为 "id:名称" 供 AI 选择
        List<CyzNavigateCategoryPO> categories = categoryService.list();
        String categoryList = categories.stream()
                .map(c -> c.getId() + ":" + c.getName())
                .collect(Collectors.joining(", "));

        // 3. 构造 prompt 并调用 AI
        String prompt = buildPrompt(url, pageInfo, categoryList);
        String aiResponse = callAiApi(prompt);

        // 4. 解析 AI 返回的 JSON，匹配分类名称
        return parseAiResponse(aiResponse, categories);
    }

    /**
     * 构造发送给 AI 的 prompt，包含网页信息和可选分类列表
     */
    private String buildPrompt(String url, WebPageFetcher.WebPageInfo pageInfo, String categoryList) {
        return "你是一个网站分类助手。根据以下网页信息，分析并返回JSON格式的结果。\n" +
                "网页信息：\n" +
                "- URL: " + url + "\n" +
                "- 标题: " + nullSafe(pageInfo.getTitle()) + "\n" +
                "- 描述: " + nullSafe(pageInfo.getDescription()) + "\n" +
                "- 网站图标: " + nullSafe(pageInfo.getImageUrl()) + "\n" +
                "- 内容摘要: " + nullSafe(pageInfo.getBodyText()) + "\n\n" +
                "可选分类列表：\n" + categoryList + "\n\n" +
                "请返回如下JSON（不要返回其他内容，不要用markdown代码块包裹）：\n" +
                "{\"name\":\"简洁的网站名称\",\"description\":\"50字以内的网站描述\",\"imageUrl\":\"直接使用上面提供的网站图标地址，如果为空则根据URL推测，仍无法确定则留空\",\"categoryId\":最匹配的分类ID}\n\n" +
                "如果没有合适的分类，categoryId设为null。";
    }

    /**
     * 调用 OpenAI 兼容的 chat/completions 接口
     * 最终请求地址 = baseUrl + /chat/completions
     * 不同提供商的 baseUrl 示例：
     * - DeepSeek:   https://api.deepseek.com/v1
     * - 火山引擎:   https://ark.cn-beijing.volces.com/api/v3
     * - OpenAI:     https://api.openai.com/v1
     */
    private String callAiApi(String prompt) {
        try {
            // 构建 OpenAI 兼容格式的请求体
            String requestBody = objectMapper.writeValueAsString(new java.util.HashMap<>() {{
                put("model", config.getModel());
                put("messages", new java.util.ArrayList<>() {{
                    add(new java.util.HashMap<>() {{
                        put("role", "user");
                        put("content", prompt);
                    }});
                }});
                put("temperature", 0.3);
            }});

            String apiUrl = config.getBaseUrl().replaceAll("/+$", "") + "/chat/completions";
            Request request = new Request.Builder()
                    .url(apiUrl)
                    .addHeader("Authorization", "Bearer " + config.getApiKey())
                    .addHeader("Content-Type", "application/json")
                    .post(RequestBody.create(requestBody, MediaType.parse("application/json; charset=utf-8")))
                    .build();

            try (Response response = httpClient.newCall(request).execute()) {
                if (!response.isSuccessful()) {
                    String body = response.body() != null ? response.body().string() : "";
                    throw new ServiceException("AI API 调用失败: HTTP " + response.code() + " " + body);
                }
                // 从 OpenAI 兼容格式的响应中提取 content
                String responseBody = response.body().string();
                JsonNode root = objectMapper.readTree(responseBody);
                return root.path("choices").path(0).path("message").path("content").asText();
            }
        } catch (ServiceException e) {
            throw e;
        } catch (Exception e) {
            log.error("AI API 调用异常", e);
            throw new ServiceException("AI API 调用异常: " + e.getMessage());
        }
    }

    /**
     * 解析 AI 返回的 JSON 内容，兼容 AI 可能返回 markdown 代码块包裹的情况
     */
    private SiteAnalyzeResult parseAiResponse(String aiContent, List<CyzNavigateCategoryPO> categories) {
        try {
            String json = aiContent.trim();
            // 处理 AI 返回 ```json ... ``` 包裹的情况
            if (json.startsWith("```")) {
                json = json.replaceAll("^```json?\\s*", "").replaceAll("\\s*```$", "");
            }

            JsonNode node = objectMapper.readTree(json);
            SiteAnalyzeResult result = new SiteAnalyzeResult();
            result.setName(node.path("name").asText(""));
            result.setDescription(node.path("description").asText(""));
            result.setImageUrl(node.path("imageUrl").asText(""));

            // 匹配推荐的分类ID，并查找对应的分类名称
            JsonNode categoryIdNode = node.path("categoryId");
            if (!categoryIdNode.isNull() && !categoryIdNode.asText().isEmpty()) {
                Long categoryId = categoryIdNode.asLong();
                result.setCategoryId(categoryId);
                categories.stream()
                        .filter(c -> c.getId().equals(categoryId))
                        .findFirst()
                        .ifPresent(c -> result.setCategoryName(c.getName()));
            }

            return result;
        } catch (Exception e) {
            log.error("解析 AI 响应失败: {}", aiContent, e);
            throw new ServiceException("解析 AI 响应失败: " + e.getMessage());
        }
    }

    private String nullSafe(String s) {
        return s != null ? s : "";
    }
}
