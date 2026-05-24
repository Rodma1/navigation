package com.chen.chatai.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * AI 聊天配置
 * apiType 支持 openai（OpenAI 兼容接口）和 anthropic（Anthropic/Claude 接口）
 *
 * OpenAI 格式：  POST baseUrl + /chat/completions,  Header: Authorization: Bearer <key>
 * Anthropic 格式：POST baseUrl + /v1/messages,      Header: x-api-key: <key>, anthropic-version: 2023-06-01
 */
@Data
@Component
@ConfigurationProperties(prefix = "ai.chat")
public class ChatAiConfig {

    private String baseUrl = "https://token-plan.cn-beijing.maas.aliyuncs.com/apps/anthropic";

    private String apiKey = "";

    /** API 类型：openai 或 anthropic */
    private String apiType = "anthropic";

    private String defaultModel = "claude-sonnet-4-20250514";

    private List<ModelOption> models = new ArrayList<>();

    @Data
    public static class ModelOption {
        private String label;
        private String value;
    }
}