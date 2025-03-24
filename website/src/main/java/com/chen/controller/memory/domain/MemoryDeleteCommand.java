package com.chen.controller.memory.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * 删除备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:41
 */

@Data
@Schema(name   = "删除备忘录")
public class MemoryDeleteCommand {

    private List<Long> ids;

}
