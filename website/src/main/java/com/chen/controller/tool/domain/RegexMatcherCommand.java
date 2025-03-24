package com.chen.controller.tool.domain;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:29
 * @Description:
 */
@Schema(name   = "正则",description = "正则")
@Data
public class RegexMatcherCommand {

    @Schema(name ="正则")
    private String regex;

    @Schema(name ="匹配项")
    private List<String> values;

    @Schema(name ="匹配项")
    private String value;
}
