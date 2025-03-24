package com.chen.controller.tool.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:56
 * @Description:
 */
@ApiModel(value = "字符转义", description = "字符转义")
@Data
public class CharacterEscapeCommand {

    @ApiModelProperty("输入字符")
    private String value;
}
