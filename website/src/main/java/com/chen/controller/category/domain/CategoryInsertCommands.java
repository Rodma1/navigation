package com.chen.controller.category.domain;
import com.chen.domain.common.category.BaseCategory;
import com.chen.domain.common.category.CommandCategory;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/2 10:23
 * @Description:
 */

@Setter
@Getter
@ApiModel(value = "创建类别")
public class CategoryInsertCommands {


    @ApiModelProperty("父id")
    private Long parentId;

    @ApiModelProperty("排序")
    private Integer sort;

    @ApiModelProperty("类别名称")
    private String name;

    @ApiModelProperty("图标")
    private String icon;

    @ApiModelProperty("操作类别")
    private String categoryType;
}
