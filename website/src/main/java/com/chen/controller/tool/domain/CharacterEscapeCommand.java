package com.chen.controller.tool.domain;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:56
 * @Description:
 */
@Schema(name   = "字符转义", description = "字符转义")
@Data
public class CharacterEscapeCommand {

    @Schema(name ="输入字符")
    private String value;
}
