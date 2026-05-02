package com.chen.domain.articledomain.articlecategory;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.sql.Timestamp;
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
@Schema(name   = "ArticleCategoryPO对象", description = "")
public class ArticleCategoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="类别名称")
    @TableField("name")
    private String name;

    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    @TableField("create_by")
    private String createBy;

    @Schema(name ="更新者")
    @TableField("update_by")
    private String updateBy;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @Schema(name ="排序")
    @TableField("sort")
    private Integer sort;

    @Schema(name ="图标")
    @TableField("icon")
    private String icon;

    @Schema(name ="父id")
    @TableField("parent_id")
    private Long parentId;
}
