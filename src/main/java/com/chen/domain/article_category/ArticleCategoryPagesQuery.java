package com.chen.domain.article_category;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
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
@ApiModel(value = "ArticleCategoryPagesQuery对象", description = "")
public class ArticleCategoryPagesQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("类别名称")
    private String name;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @ApiModelProperty("创建者")
    private String createBy;

    @ApiModelProperty("更新者")
    private String updateBy;

    private Integer id;

    @ApiModelProperty("排序")
    private Integer sort;

}
