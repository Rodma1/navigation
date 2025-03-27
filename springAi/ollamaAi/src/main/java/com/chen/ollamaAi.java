package com.chen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Hello world!
 *https://docs.spring.io/spring-ai/reference/api/testing.html
 */
@SpringBootApplication
public class ollamaAi
{
    public static void main( String[] args )
    {
        SpringApplication.run(ollamaAi.class, args);
        System.out.println("启动成功");
    }
}
