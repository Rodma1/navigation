package com.chen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: 那就叫小智吧
 * @date: 2023/9/18 14:50
 * @Version 1.0
 * @Description:
 */
@SpringBootApplication
public class ChenApplication {

    public static void main(String[] args)
    { SpringApplication.run(ChenApplication.class, args);
        System.out.println("启动成功");
    }
}
