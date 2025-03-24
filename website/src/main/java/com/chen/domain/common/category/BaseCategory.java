package com.chen.domain.common.category;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

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

    @Schema(name ="父id")
    private Long parentId;

    @Schema(name ="排序")
    private Integer sort;

    @Schema(name ="类别名称")
    private String name;

    @Schema(name ="子类别")
    private List<? extends BaseCategory> children;

    @Schema(name ="图标")
    private String icon;

}
