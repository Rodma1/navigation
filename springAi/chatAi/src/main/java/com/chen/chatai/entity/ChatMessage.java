package com.chen.chatai.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.sql.Timestamp;

@Getter
@Setter
@TableName("cyz_chat_message")
public class ChatMessage implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("conversation_id")
    private Long conversationId;

    @TableField("role")
    private String role;

    @TableField("content")
    private String content;

    @TableField("model")
    private String model;

    @TableField("create_time")
    private Timestamp createTime;

    @TableField("del_flag")
    @TableLogic
    private String delFlag;
}
