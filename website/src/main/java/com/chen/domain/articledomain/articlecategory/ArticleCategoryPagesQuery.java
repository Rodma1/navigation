package com.chen.domain.articledomain.articlecategory;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
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
@TableName("cyz_article_category")
@Schema(name   = "ArticleCategoryPagesQuery对象", description = "")
public class ArticleCategoryPagesQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="类别名称")
    private String name;

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

    private Long id;

    @Schema(name ="排序")
    private Integer sort;

    @Schema(name ="图标")
    private String icon;

    @Schema(name ="父id")
    private Long parentId;
}
