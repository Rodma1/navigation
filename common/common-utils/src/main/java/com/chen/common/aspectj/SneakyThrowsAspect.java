package com.chen.common.aspectj;

import com.chen.common.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Slf4j
public class SneakyThrowsAspect {

    @Around("@annotation(com.chen.common.aspectj.annotation.SneakyThrows)")
    public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
        try {
            return joinPoint.proceed();
        } catch (Exception e) {
            log.error("异常被捕获：", e);
            throw new ServiceException("请求报错: " + e.getMessage(), e);
        }
    }
}
