package com.chen.service;

import com.chen.common.config.aspectj.annotation.Hello;
import org.springframework.stereotype.Service;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023/10/20 15:16
 * @Description:
 */
@Service
public class HelloWord {
    public String helloWord() {
        System.out.println("你好呀");
        return "你好";
    }
}
