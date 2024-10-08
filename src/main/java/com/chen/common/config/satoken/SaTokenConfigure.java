package com.chen.common.config.satoken;

import cn.dev33.satoken.interceptor.SaInterceptor;
import cn.dev33.satoken.stp.StpUtil;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Author chenyunzhi
 */
@Configuration
public class SaTokenConfigure implements WebMvcConfigurer {
    // 注册拦截器
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册 Sa-Token 拦截器，校验规则为 StpUtil.checkLogin() 登录校验。
        registry.addInterceptor(new SaInterceptor(handle -> StpUtil.checkLogin()).isAnnotation(false))
                .addPathPatterns("/**")
                .excludePathPatterns("/user/doLogin").excludePathPatterns("/tool/**")
                .excludePathPatterns("/doc.html/**").excludePathPatterns("/swagger-resources/**")
                .excludePathPatterns("/v3/api-docs/**").excludePathPatterns("/error")
                .excludePathPatterns("/elasticsearch/**").excludePathPatterns("/cyzNavigateCategory/**");
    }
}
