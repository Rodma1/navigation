package com.chen.chatai.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class ChatRequest {

    @NotBlank(message = "消息不能为空")
    private String message;

    private Long conversationId;

    private String model;

    private Boolean stream = true;
}
