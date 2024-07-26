//package com.chen.common.config.aspectj;
//
//import com.chen.common.config.aspectj.annotation.Hello;
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.Signature;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Pointcut;
//import org.aspectj.lang.reflect.MethodSignature;
//import org.springframework.stereotype.Component;
//
//import java.lang.reflect.Method;
//
///**
// * @author: 神的孩子都在歌唱
// * @date: 2023/10/20 17:29
// * @Description:
// */
//
//@Aspect
//@Component
//public class AroundHello {
//
//
////    定义切点： 基于注解
//    @Pointcut("@annotation(com.chen.common.config.aspectj.annotation.Hello)")
//    public void aroundHello() {}
//
////    环绕通知
//    @Around("aroundHello()")
//    public Object aroundAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
//        // 在目标方法执行前执行的逻辑
//        System.out.println("执行前");
//        // 在目标方法返回结果后执行的逻辑
//        Object result = proceedingJoinPoint.proceed();
//        Hello annotationHello = getAnnotationHello(proceedingJoinPoint);
//        if (annotationHello != null) {
//            System.out.println("执行后" + annotationHello.name() + "," + result);
//        }
//        return result;
//
//    }
//
//    /**
//     * 是否存在注解，如果存在就获取
//     */
//    private Hello getAnnotationHello(JoinPoint joinPoint) throws Exception {
//        Signature signature = joinPoint.getSignature();
//        MethodSignature methodSignature = (MethodSignature)signature;
//        Method method = methodSignature.getMethod();
//
//        if (method != null) {
//            return method.getAnnotation(Hello.class);
//        }
//        return null;
//    }
//}
