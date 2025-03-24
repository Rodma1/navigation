package com.chen.controller.category.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/6 14:48
 * @Description:
 */
@Data
@ApiModel(value = "删除类别")
public class CategoryDeleteCommands {

    @ApiModelProperty("操作类别")
    private String categoryType;

    @ApiModelProperty("类别Id")
    private Long id;
}
