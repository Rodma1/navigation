package com.chen.common.config.aspectj;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AfterAspect {
    @Pointcut("within(com.chen.service.*)")
    public void serviceMethods() {}

    @After("serviceMethods()")
    public void afterAdvice(JoinPoint joinPoint) {
        // 在目标类中的方法执行后执行的逻辑
        System.out.println("方法执行后");
    }
}
