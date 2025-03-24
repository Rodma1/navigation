package com.chen.domain.phrasesdomain.phrasesbindcategory;

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
 * @since 2024-08-09
 */
@Getter
@Setter
@TableName("cyz_phrases_bind_category")
@Schema(name   = "PhrasesBindCategoryPO对象", description = "")
public class PhrasesBindCategoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="句子id")
    @TableField("phrases_id")
    private Long phrasesId;

    @Schema(name ="文章类别id")
    @TableField("category_id")
    private Long categoryId;


}
