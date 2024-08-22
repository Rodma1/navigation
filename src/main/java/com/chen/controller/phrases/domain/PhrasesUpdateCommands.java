package com.chen.controller.phrases.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/26 11:06
 * @Description:
 */

@Data
@ApiModel("句子更新")
public class PhrasesUpdateCommands {

    @ApiModelProperty("类别")
    private List<Long> categoryIds;

    @ApiModelProperty("推荐等级")
    private String rank;

    @ApiModelProperty("句子")
    private String sentence;

    private Long id;

}
