package com.chen.domain.articledomain.articlebindcategory;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2024-08-08
 */
@Getter
@Setter
@TableName("cyz_article_bind_category")
@Schema(name   = "ArticleBindCategoryPagesQuery对象", description = "")
public class ArticleBindCategoryPagesQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="文章id")
    private Long articleId;

    @Schema(name ="文章类别id")
    private Long categoryId;


}
