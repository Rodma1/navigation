package com.chen;

import io.minio.MinioClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Minio配置类
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "minio")
public class MinioProperties {

    private String accessKey;

    private String secretKey;

    private String url;
}
