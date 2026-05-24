package com.chen.config.satoken;

import cn.dev33.satoken.interceptor.SaInterceptor;
import cn.dev33.satoken.stp.StpUtil;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class SaTokenConfigure implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SaInterceptor(handle -> StpUtil.checkLogin()).isAnnotation(false))
                .addPathPatterns("/**")
                .excludePathPatterns("/user/doLogin").excludePathPatterns("/tool/**")
                .excludePathPatterns("/doc.html/**").excludePathPatterns("/**/swagger-resources/**").excludePathPatterns("/**/swagger-ui/**")
                .excludePathPatterns("/**/v3/**").excludePathPatterns("/error")
                .excludePathPatterns("/elasticsearch/**").excludePathPatterns("/cyzNavigateCategory/**")
                .excludePathPatterns("/categories/**").excludePathPatterns("/api/**");
    }
}