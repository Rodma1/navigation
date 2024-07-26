package com.chen.controller.phrases.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/26 10:43
 * @Description:
 */
@Data
@ApiModel("句子新增")
public class PhrasesInsertCommands {

    @ApiModelProperty("类别")
    private String category;

    @ApiModelProperty("推荐等级")
    private String rank;

    @ApiModelProperty("句子")
    private String sentence;

}
