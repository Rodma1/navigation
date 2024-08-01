package com.chen.domain.navigatecategory;

import com.baomidou.mybatisplus.annotation.TableField;
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
 * @since 2023-09-22
 */
@Getter
@Setter
@TableName("cyz_navigate_category")
@ApiModel(value = "CyzNavigateCategoryQuery对象", description = "")
public class CyzNavigateCategoryQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

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


}
