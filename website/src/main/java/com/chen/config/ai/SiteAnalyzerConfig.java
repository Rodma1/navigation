package com.chen.config.ai;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * AI 网站分析配置
 * <p>
 * 对应 application.yml 中 ai.site-analyzer 下的配置项，
 * 支持 OpenAI 兼容接口，只需修改 baseUrl 和 model 即可切换提供商。
 * 最终请求地址 = baseUrl + /chat/completions
 *
 * 配置示例：
 * - DeepSeek:   base-url: https://api.deepseek.com/v1,        model: deepseek-chat
 * - 火山引擎:   base-url: https://ark.cn-beijing.volces.com/api/v3, model: ark-code-latest
 * - OpenAI:     base-url: https://api.openai.com/v1,          model: gpt-4o-mini
 */
@Data
@Component
@ConfigurationProperties(prefix = "ai.site-analyzer")
public class SiteAnalyzerConfig {

    /** OpenAI 兼容接口地址，如 https://api.deepseek.com、https://api.openai.com */
    private String baseUrl = "https://api.deepseek.com";

    /** API Key */
    private String apiKey = "";

    /** 模型名称，如 deepseek-chat、gpt-4o-mini、qwen-turbo */
    private String model = "deepseek-chat";
}
