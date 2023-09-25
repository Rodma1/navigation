package com.chen.controller.navigatecategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.chen.domain.navigatecategory.CyzNavigateCategoryBO;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023/9/25 9:50
 * @Description:
 */
@Data
public class NavigateCategoryTreeVo {
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

    @ApiModelProperty("子类别")
    private List<CyzNavigateCategoryBO> children;

    @TableField("del_flag")
    private String delFlag;
}
