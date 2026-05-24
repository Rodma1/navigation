package com.chen.chatai.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.chatai.config.ChatAiConfig;
import com.chen.chatai.dto.ChatRequest;
import com.chen.chatai.dto.ChatResponse;
import com.chen.chatai.entity.ChatConversation;
import com.chen.chatai.entity.ChatMessage;
import com.chen.chatai.mapper.ChatConversationMapper;
import com.chen.chatai.mapper.ChatMessageMapper;
import com.chen.chatai.service.ChatAiService;
import com.chen.common.exception.ServiceException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.*;
import java.util.concurrent.TimeUnit;

@Slf4j
@RequiredArgsConstructor
@Service
public class ChatAiServiceImpl implements ChatAiService {

    private final ChatAiConfig config;
    private final ChatConversationMapper conversationMapper;
    private final ChatMessageMapper messageMapper;

    private static final ObjectMapper objectMapper = new ObjectMapper();
    private static final int MAX_HISTORY_MESSAGES = 20;

    private final OkHttpClient httpClient = new OkHttpClient.Builder()
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(120, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .build();

    @Override
    public ChatResponse chat(ChatRequest request, String userId) {
        validateConfig();
        String model = resolveModel(request.getModel());

        ChatConversation conversation = getOrCreateConversation(request, userId, model);
        List<ChatMessage> history = loadHistory(conversation.getId());

        saveMessage(conversation.getId(), "user", request.getMessage(), model);

        List<Map<String, String>> messages = buildMessages(history, request.getMessage());
        String content = callAiApi(model, messages);

        saveMessage(conversation.getId(), "assistant", content, model);
        updateConversationTitle(conversation, request.getMessage());

        return new ChatResponse(content, conversation.getId(), model);
    }

    @Override
    public void chatStream(ChatRequest request, SseEmitter emitter, String userId) {
        validateConfig();
        String model = resolveModel(request.getModel());

        ChatConversation conversation = getOrCreateConversation(request, userId, model);
        List<ChatMessage> history = loadHistory(conversation.getId());

        saveMessage(conversation.getId(), "user", request.getMessage(), model);

        List<Map<String, String>> messages = buildMessages(history, request.getMessage());
        StringBuilder fullContent = new StringBuilder();

        try {
            callAiApiStream(model, messages, new StreamCallback() {
                @Override
                public void onToken(String token) {
                    try {
                        fullContent.append(token);
                        Map<String, String> data = new HashMap<>();
                        data.put("content", token);
                        emitter.send(SseEmitter.event().data(objectMapper.writeValueAsString(data)));
                    } catch (Exception e) {
                        log.error("SSE 发送失败", e);
                    }
                }

                @Override
                public void onComplete() {
                    try {
                        saveMessage(conversation.getId(), "assistant", fullContent.toString(), model);
                        updateConversationTitle(conversation, request.getMessage());
                        emitter.send(SseEmitter.event().data("[DONE]"));
                        emitter.complete();
                    } catch (Exception e) {
                        log.error("SSE 完成失败", e);
                    }
                }

                @Override
                public void onError(String error) {
                    try {
                        Map<String, String> data = new HashMap<>();
                        data.put("error", error);
                        emitter.send(SseEmitter.event().data(objectMapper.writeValueAsString(data)));
                        emitter.complete();
                    } catch (Exception e) {
                        log.error("SSE 错误发送失败", e);
                    }
                }
            });
        } catch (Exception e) {
            log.error("流式调用异常", e);
            try {
                Map<String, String> data = new HashMap<>();
                data.put("error", "AI 服务调用失败: " + e.getMessage());
                emitter.send(SseEmitter.event().data(objectMapper.writeValueAsString(data)));
                emitter.complete();
            } catch (Exception ex) {
                log.error("SSE 错误发送失败", ex);
            }
        }
    }

    @Override
    public List<ChatConversation> listConversations(String userId) {
        LambdaQueryWrapper<ChatConversation> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(ChatConversation::getUserId, userId)
                .orderByDesc(ChatConversation::getUpdateTime);
        return conversationMapper.selectList(wrapper);
    }

    @Override
    public List<ChatMessage> listMessages(Long conversationId, String userId) {
        verifyConversationOwner(conversationId, userId);
        LambdaQueryWrapper<ChatMessage> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(ChatMessage::getConversationId, conversationId)
                .orderByAsc(ChatMessage::getCreateTime);
        return messageMapper.selectList(wrapper);
    }

    @Override
    public boolean deleteConversation(Long conversationId, String userId) {
        verifyConversationOwner(conversationId, userId);
        return conversationMapper.deleteById(conversationId) > 0;
    }

    // ==================== private ====================

    private void validateConfig() {
        if (StrUtil.isBlank(config.getApiKey())) {
            throw new ServiceException("AI 配置未完成，请先配置 ai.chat.api-key");
        }
    }

    private String resolveModel(String requestModel) {
        return StrUtil.isNotBlank(requestModel) ? requestModel : config.getDefaultModel();
    }

    private boolean isAnthropic() {
        return "anthropic".equalsIgnoreCase(config.getApiType());
    }

    private ChatConversation getOrCreateConversation(ChatRequest request, String userId, String model) {
        if (request.getConversationId() != null) {
            ChatConversation existing = conversationMapper.selectById(request.getConversationId());
            if (existing != null && existing.getUserId().equals(userId)) {
                return existing;
            }
        }
        ChatConversation conversation = new ChatConversation();
        conversation.setTitle("新对话");
        conversation.setUserId(userId);
        conversation.setModel(model);
        conversation.setCreateTime(new Timestamp(System.currentTimeMillis()));
        conversation.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        conversation.setDelFlag("0");
        conversationMapper.insert(conversation);
        return conversation;
    }

    private List<ChatMessage> loadHistory(Long conversationId) {
        LambdaQueryWrapper<ChatMessage> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(ChatMessage::getConversationId, conversationId)
                .orderByDesc(ChatMessage::getCreateTime)
                .last("LIMIT " + MAX_HISTORY_MESSAGES);
        List<ChatMessage> messages = messageMapper.selectList(wrapper);
        Collections.reverse(messages);
        return messages;
    }

    private List<Map<String, String>> buildMessages(List<ChatMessage> history, String userMessage) {
        List<Map<String, String>> messages = new ArrayList<>();
        for (ChatMessage msg : history) {
            messages.add(Map.of("role", msg.getRole(), "content", msg.getContent()));
        }
        messages.add(Map.of("role", "user", "content", userMessage));
        return messages;
    }

    private String buildSystemPrompt() {
        return "你是一个智能助手，请用中文回答用户的问题。回答要准确、简洁、有条理。如果不确定，请如实说明。";
    }

    private void saveMessage(Long conversationId, String role, String content, String model) {
        ChatMessage message = new ChatMessage();
        message.setConversationId(conversationId);
        message.setRole(role);
        message.setContent(content);
        message.setModel(model);
        message.setCreateTime(new Timestamp(System.currentTimeMillis()));
        message.setDelFlag("0");
        messageMapper.insert(message);
    }

    private void updateConversationTitle(ChatConversation conversation, String firstMessage) {
        if ("新对话".equals(conversation.getTitle())) {
            String title = firstMessage.length() > 30 ? firstMessage.substring(0, 30) + "..." : firstMessage;
            conversation.setTitle(title);
            conversation.setUpdateTime(new Timestamp(System.currentTimeMillis()));
            conversationMapper.updateById(conversation);
        } else {
            conversation.setUpdateTime(new Timestamp(System.currentTimeMillis()));
            conversationMapper.updateById(conversation);
        }
    }

    private void verifyConversationOwner(Long conversationId, String userId) {
        ChatConversation conversation = conversationMapper.selectById(conversationId);
        if (conversation == null || !conversation.getUserId().equals(userId)) {
            throw new ServiceException("会话不存在或无权访问");
        }
    }

    // ==================== API 调用（支持 OpenAI 和 Anthropic） ====================

    private String buildApiUrl() {
        String base = config.getBaseUrl().replaceAll("/+$", "");
        if (isAnthropic()) {
            return base + "/v1/messages";
        }
        return base + "/chat/completions";
    }

    private Request.Builder buildRequestHeaders(Request.Builder builder) {
        if (isAnthropic()) {
            builder.addHeader("x-api-key", config.getApiKey());
            builder.addHeader("anthropic-version", "2023-06-01");
            builder.addHeader("Content-Type", "application/json");
        } else {
            builder.addHeader("Authorization", "Bearer " + config.getApiKey());
            builder.addHeader("Content-Type", "application/json");
        }
        return builder;
    }

    private String buildRequestBody(String model, List<Map<String, String>> messages, boolean stream) {
        try {
            if (isAnthropic()) {
                Map<String, Object> body = new LinkedHashMap<>();
                body.put("model", model);
                body.put("max_tokens", 4096);
                body.put("system", buildSystemPrompt());
                // Anthropic messages 不包含 system，只有 user/assistant
                List<Map<String, String>> filteredMessages = new ArrayList<>();
                for (Map<String, String> msg : messages) {
                    if (!"system".equals(msg.get("role"))) {
                        filteredMessages.add(msg);
                    }
                }
                body.put("messages", filteredMessages);
                body.put("stream", stream);
                return objectMapper.writeValueAsString(body);
            } else {
                Map<String, Object> body = new LinkedHashMap<>();
                body.put("model", model);
                // OpenAI 格式：system 放在 messages 开头
                List<Map<String, String>> openaiMessages = new ArrayList<>();
                openaiMessages.add(Map.of("role", "system", "content", buildSystemPrompt()));
                openaiMessages.addAll(messages);
                body.put("messages", openaiMessages);
                body.put("stream", stream);
                body.put("temperature", 0.7);
                return objectMapper.writeValueAsString(body);
            }
        } catch (Exception e) {
            throw new ServiceException("构建请求体失败: " + e.getMessage());
        }
    }

    private String callAiApi(String model, List<Map<String, String>> messages) {
        try {
            String requestBody = buildRequestBody(model, messages, false);
            String apiUrl = buildApiUrl();
            log.info("AI API 请求: 地址={}, 类型={}, 模型={}", apiUrl, config.getApiType(), model);

            Request request = buildRequestHeaders(new Request.Builder())
                    .url(apiUrl)
                    .post(RequestBody.create(requestBody, MediaType.parse("application/json; charset=utf-8")))
                    .build();

            try (Response response = httpClient.newCall(request).execute()) {
                if (!response.isSuccessful()) {
                    String resBody = response.body() != null ? response.body().string() : "";
                    log.error("AI API 调用失败: HTTP {}, 响应: {}", response.code(), resBody);
                    throw new ServiceException("AI API 调用失败: HTTP " + response.code() + " " + resBody);
                }
                String responseBody = response.body().string();
                JsonNode root = objectMapper.readTree(responseBody);

                if (isAnthropic()) {
                    // Anthropic 响应格式: { content: [{type:"text", text:"..."}] }
                    JsonNode contentArray = root.path("content");
                    if (contentArray.isArray() && contentArray.size() > 0) {
                        return contentArray.get(0).path("text").asText("");
                    }
                    return root.path("text").asText("");
                } else {
                    // OpenAI 响应格式: { choices: [{message: {content: "..."}}] }
                    return root.path("choices").path(0).path("message").path("content").asText();
                }
            }
        } catch (ServiceException e) {
            throw e;
        } catch (Exception e) {
            log.error("AI API 调用异常", e);
            throw new ServiceException("AI API 调用异常: " + e.getMessage());
        }
    }

    private interface StreamCallback {
        void onToken(String token);
        void onComplete();
        void onError(String error);
    }

    private void callAiApiStream(String model, List<Map<String, String>> messages, StreamCallback callback) {
        try {
            String requestBody = buildRequestBody(model, messages, true);
            String apiUrl = buildApiUrl();
            log.info("AI API 流式请求: 地址={}, 类型={}, 模型={}", apiUrl, config.getApiType(), model);

            Request request = buildRequestHeaders(new Request.Builder())
                    .url(apiUrl)
                    .post(RequestBody.create(requestBody, MediaType.parse("application/json; charset=utf-8")))
                    .build();

            Response response = httpClient.newCall(request).execute();
            if (!response.isSuccessful()) {
                String resBody = response.body() != null ? response.body().string() : "";
                log.error("AI API 流式调用失败: HTTP {}, 响应: {}", response.code(), resBody);
                callback.onError("AI API 调用失败: HTTP " + response.code() + " " + resBody);
                return;
            }

            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(response.body().byteStream(), StandardCharsets.UTF_8));
            String line;

            if (isAnthropic()) {
                // Anthropic SSE 格式：
                // event: content_block_delta
                // data: {"type":"content_block_delta","delta":{"type":"text_delta","text":"xxx"}}
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    if (line.startsWith("event:")) {
                        String eventType = line.substring(6).trim();
                        if ("message_stop".equals(eventType)) {
                            callback.onComplete();
                            return;
                        }
                        if ("error".equals(eventType)) {
                            // 下一行是 error data
                            String dataLine = reader.readLine();
                            if (dataLine != null) {
                                String data = dataLine.trim().replaceFirst("^data:", "").trim();
                                try {
                                    JsonNode errorNode = objectMapper.readTree(data);
                                    callback.onError(errorNode.path("error").path("message").asText("未知错误"));
                                } catch (Exception e) {
                                    callback.onError(data);
                                }
                            }
                            return;
                        }
                    } else if (line.startsWith("data:")) {
                        String data = line.substring(5).trim();
                        try {
                            JsonNode chunk = objectMapper.readTree(data);
                            String type = chunk.path("type").asText("");
                            if ("content_block_delta".equals(type)) {
                                String text = chunk.path("delta").path("text").asText("");
                                if (StrUtil.isNotBlank(text)) {
                                    callback.onToken(text);
                                }
                            }
                        } catch (Exception e) {
                            log.warn("解析 Anthropic SSE chunk 失败: {}", data);
                        }
                    }
                }
                callback.onComplete();
            } else {
                // OpenAI SSE 格式：
                // data: {"choices":[{"delta":{"content":"xxx"}}]}
                while ((line = reader.readLine()) != null) {
                    if (line.startsWith("data: ")) {
                        String data = line.substring(6).trim();
                        if ("[DONE]".equals(data)) {
                            callback.onComplete();
                            return;
                        }
                        try {
                            JsonNode chunk = objectMapper.readTree(data);
                            String content = chunk.path("choices").path(0).path("delta").path("content").asText("");
                            if (StrUtil.isNotBlank(content)) {
                                callback.onToken(content);
                            }
                        } catch (Exception e) {
                            log.warn("解析 OpenAI SSE chunk 失败: {}", data);
                        }
                    }
                }
                callback.onComplete();
            }
        } catch (Exception e) {
            log.error("流式 AI API 调用异常", e);
            callback.onError("AI 服务调用失败: " + e.getMessage());
        }
    }
}