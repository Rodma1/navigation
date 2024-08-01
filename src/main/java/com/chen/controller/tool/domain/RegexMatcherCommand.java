package com.chen.controller.tool.domain;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/1 9:29
 * @Description:
 */
@ApiModel(value = "正则",description = "正则")
@Data
public class RegexMatcherCommand {

    @ApiModelProperty("正则")
    private String regex;

    @ApiModelProperty("匹配项")
    private List<String> value;
}
