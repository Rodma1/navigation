//// config/ThreadPoolConfig.java
//package com.chen.common.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import java.util.concurrent.*;
//
//@Configuration
//public class ThreadPoolConfig {
//
//    @Bean("customExecutor")
//    public ExecutorService customExecutor() {
//        return new ThreadPoolExecutor(
//                10,                // 核心线程数
//                10,                // 最大线程数
//                60L,
//                TimeUnit.SECONDS,
//                new LinkedBlockingQueue<>(),
//                new ThreadPoolExecutor.CallerRunsPolicy()
//        );
//    }
//}
