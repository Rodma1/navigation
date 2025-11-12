package com.chen.domain.articledomain.articlebindcategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
@Schema(name   = "ArticleBindCategoryPO对象", description = "")
public class ArticleBindCategoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="文章id")
    @TableField("article_id")
    private Long articleId;

    @Schema(name ="文章类别id")
    @TableField("category_id")
    private Long categoryId;


}
