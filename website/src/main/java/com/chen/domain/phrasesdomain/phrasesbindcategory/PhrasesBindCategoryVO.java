package com.chen.domain.phrasesdomain.phrasesbindcategory;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
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
@ApiModel(value = "PhrasesBindCategoryVO对象", description = "")
public class PhrasesBindCategoryVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("句子id")
    private Long phrasesId;

    @ApiModelProperty("文章类别id")
    private Long categoryId;


}
