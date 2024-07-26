package com.chen.common.config.aspectj.annotation;

import java.lang.annotation.*;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023/10/20 17:12
 * @Description:
 */
@Target({ ElementType.PARAMETER, ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
public @interface Hello {

    public String name() default "";
}
