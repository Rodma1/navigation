package com.chen.controller.memory.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * 更新备忘录
 *
 * @author chenyunzhi
 * @date 2024/8/26 21:43
 */

@Data
@Schema(name   = "更新备忘录")
public class MemoryUpdateCommand {

    private Long id;

    @Schema(name ="内容")
    private String content;

}
