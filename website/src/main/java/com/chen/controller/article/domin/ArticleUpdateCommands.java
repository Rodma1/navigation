package com.chen.controller.article.domin;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/24 17:08
 * @Description:
 */
@Data
@Schema(name ="文章更新")
public class ArticleUpdateCommands {

    private Long id;

    @Schema(name ="文章地址")
    private String url;

    @Schema(name ="文章名称")
    private String name;

    @Schema(name ="完成状态 0 未完成 1已完成")
    private String state;

    @Schema(name ="文章类别id")
    private Long categoryId;

    @Schema(name ="文章类别ids")
    private List<Long> categoryIds;
}
