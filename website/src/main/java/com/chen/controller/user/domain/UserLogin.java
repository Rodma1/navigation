package com.chen.controller.user.domain;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/10/10 11:01
 * @Description:
 */
@ApiModel(value = "用户登录", description = "用户登录")
@Data
public class UserLogin {

    /**
     * 用户名
     */
    public String principal;

    /**
     * 密码
     */
    public String credential;
}
