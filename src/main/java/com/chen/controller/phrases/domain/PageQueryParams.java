package com.chen.controller.phrases.domain;

import com.chen.common.config.mybatisplus.page.BasePagesQuery;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 15:40
 * @Description:
 */
@Getter
@Setter
@ApiModel("分页查询")
public class PageQueryParams extends BasePagesQuery {

    @ApiModelProperty("句子")
    private String sentence;


}
