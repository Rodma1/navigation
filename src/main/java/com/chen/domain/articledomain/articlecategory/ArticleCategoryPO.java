package com.chen.domain.articledomain.articlecategory;

import com.baomidou.mybatisplus.annotation.*;

import java.io.Serializable;
import java.sql.Timestamp;
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
 * @since 2024-07-26
 */
@Getter
@Setter
@TableName("cyz_article_category")
@ApiModel(value = "ArticleCategoryPO对象", description = "")
public class ArticleCategoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("类别名称")
    @TableField("name")
    private String name;

    @ApiModelProperty("创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @ApiModelProperty("更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @ApiModelProperty("删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @ApiModelProperty("创建者")
    @TableField("create_by")
    private String createBy;

    @ApiModelProperty("更新者")
    @TableField("update_by")
    private String updateBy;

    @TableId("id")
    private Long id;

    @ApiModelProperty("排序")
    @TableField("sort")
    private Integer sort;

    @ApiModelProperty("图标")
    @TableField("icon")
    private String icon;

    @ApiModelProperty("父id")
    @TableField("parent_id")
    private Long parentId;
}
