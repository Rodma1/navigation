package com.chen.controller.article.domin;

import com.chen.common.config.mybatisplus.page.BasePagesQuery;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
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

    @ApiModelProperty("文章名称")
    private String name;

    @ApiModelProperty("文章地址")
    private String url;

    @ApiModelProperty("文章类别id")
    private Long categoryId;



}
