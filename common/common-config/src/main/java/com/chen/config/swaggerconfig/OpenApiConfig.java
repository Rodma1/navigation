package com.chen.config.swaggerconfig;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI customOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Navigation API 文档")  // 设置 API 标题
                        .version("1.0.0")             // 设置 API 版本
                        .description("Spring Boot 3 + MyBatis-Plus 多数据源示例") // API 描述
                        .termsOfService("https://example.com/terms")
                        .contact(new Contact()
                                .name("神唱")
                                .url("https://github.com/shenchang")
                                .email("shenchang@example.com"))
                        .license(new License()
                                .name("Apache 2.0")
                                .url("https://springdoc.org")));
    }
}
