package com.chen.controller.memory.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * 删除备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:41
 */

@Data
@ApiModel(value = "删除备忘录")
public class MemoryDeleteCommand {

    private List<Long> ids;

}
