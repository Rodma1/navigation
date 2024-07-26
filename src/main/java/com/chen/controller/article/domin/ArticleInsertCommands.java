package com.chen.controller.article.domin;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 16:57
 * @Description:
 */
@Data
@ApiModel("文章新增")
public class ArticleInsertCommands {

    @ApiModelProperty("文章地址")
    private String url;

    @ApiModelProperty("文章名称")
    private String name;

    @ApiModelProperty("完成状态 0 未完成 1已完成")
    private String state;

    @ApiModelProperty("文章类别")
    private String category;
}
