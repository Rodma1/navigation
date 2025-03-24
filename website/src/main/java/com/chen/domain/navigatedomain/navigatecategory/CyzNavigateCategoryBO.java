package com.chen.domain.navigatedomain.navigatecategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
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
 * @since 2023-09-22
 */
@Getter
@Setter
@TableName("cyz_navigate_category")
@ApiModel(value = "CyzNavigateCategoryBO对象", description = "")
public class CyzNavigateCategoryBO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty("排序")
    private Integer sort;

    @ApiModelProperty("类别名称")
    private String name;

    @ApiModelProperty("图标")
    private String icon;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @TableField("del_flag")
    private String delFlag;

    @ApiModelProperty("子类别")
    private List<CyzNavigateCategoryBO> children;

    @ApiModelProperty("子类别")
    private List<CyzNavigateSiteBO> sites;


}
