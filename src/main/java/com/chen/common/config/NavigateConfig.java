package com.chen.common.config;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @Author chenyunzhi
 * @DATE 2024/10/8 9:38
 * @Description:
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@Component
@ConfigurationProperties(prefix = "navigate")
public class NavigateConfig {
    /**
     * logSourcePath下载路径
     */
    @Getter
    private static String esConnectParamPath;
    public void setEsConnectParamPath(String esConnectParamPath) {
        NavigateConfig.esConnectParamPath = esConnectParamPath;
    }
}
