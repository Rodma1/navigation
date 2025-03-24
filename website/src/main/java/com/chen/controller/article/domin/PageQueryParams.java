package com.chen.controller.article.domin;

import com.chen.config.mybatisplus.page.BasePagesQuery;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
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
@Schema(name ="分页查询")
public class PageQueryParams extends BasePagesQuery {

    @Schema(name ="文章名称")
    private String name;

    @Schema(name ="文章地址")
    private String url;

    @Schema(name ="文章类别id")
    private Long categoryId;



}
