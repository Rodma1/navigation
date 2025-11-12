package com.chen.controller.category.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/6 14:48
 * @Description:
 */
@Data
@Schema(name   = "删除类别")
public class CategoryDeleteCommands {

    @Schema(name ="操作类别")
    private String categoryType;

    @Schema(name ="类别Id")
    private Long id;
}
