package com.chen.controller.memory.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 创建备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:37
 */

@Data
@Schema(name   = "创建备忘录")
public class MemoryInsertCommand {

    @Schema(name ="内容")
    private String content;

}
