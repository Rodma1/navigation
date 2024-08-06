package com.chen.domain.common.category;

import com.baomidou.mybatisplus.annotation.TableField;
import com.chen.common.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.domain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.domain.navigatesite.CyzNavigateSiteBO;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/29 14:03
 * @Description:
 */

@Getter
@Setter
public abstract class BaseCategory extends CommandCategory{

    private Long id;

    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty("排序")
    private Integer sort;

    @ApiModelProperty("类别名称")
    private String name;

    @ApiModelProperty("子类别")
    private List<? extends BaseCategory> children;

    @ApiModelProperty("图标")
    private String icon;

}
