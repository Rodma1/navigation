package com.chen.controller.memory.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 创建备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:37
 */

@Data
@ApiModel(value = "创建备忘录")
public class MemoryInsertCommand {

    @ApiModelProperty("内容")
    private String content;

}
