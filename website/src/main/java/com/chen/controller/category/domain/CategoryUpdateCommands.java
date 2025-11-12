package com.chen.controller.category.domain;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/8/2 10:23
 * @Description:
 */

@Setter
@Getter
@Schema(name   = "创建类别")
public class CategoryUpdateCommands {

    @Schema(name ="类别Id")
    private Long id;

    @Schema(name ="父id")
    private Long parentId;

    @Schema(name ="排序")
    private Integer sort;

    @Schema(name ="类别名称")
    private String name;

    @Schema(name ="图标")
    private String icon;

    @Schema(name ="操作类别")
    private String categoryType;
}
