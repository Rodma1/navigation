package com.chen.controller.navigatesite.domin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@Schema(name = "网站新增")
public class NavigateSiteInsertCommands {

    @Schema(name = "类别id")
    @NotNull(message = "分类不能为空")
    private Long categoryId;

    @Schema(name = "网站名称")
    @NotBlank(message = "网站名称不能为空")
    private String name;

    @Schema(name = "图片")
    private String image;

    @Schema(name = "描述")
    private String description;

    @Schema(name = "网站路径")
    @NotBlank(message = "网站地址不能为空")
    private String url;
}
