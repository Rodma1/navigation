package com.chen.controller.memory.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 更新备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:43
 */

@Data
@ApiModel(value = "更新备忘录")
public class MemoryUpdateCommand {

    private Long id;

    @ApiModelProperty("内容")
    private String content;

}
