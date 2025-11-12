package com.chen.domain.phrasesdomain.phrases;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

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
 * @since 2024-07-26
 */
@Getter
@Setter
@TableName("cyz_phrases")
@Schema(name   = "PhrasesDTO对象", description = "")
public class PhrasesDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="句子")
    private String sentence;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    private String createBy;

    @Schema(name ="更新者")
    private String updateBy;

    @Schema(name ="类别")
    private Long categoryId;

    @Schema(name ="文章类别ids")
    private List<Long> categoryIds;

    @Schema(name ="推荐等级")
    private String rank;

    private Long id;


    @Schema(name ="类别名称")
    private String categoryName;

}
