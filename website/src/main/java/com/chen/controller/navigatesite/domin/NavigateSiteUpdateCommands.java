package com.chen.controller.navigatesite.domin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@Schema(name = "网站更新")
public class NavigateSiteUpdateCommands {

    @NotNull(message = "id不能为空")
    private Long id;

    @Schema(name = "类别id")
    private Long categoryId;

    @Schema(name = "网站名称")
    private String name;

    @Schema(name = "图片")
    private String image;

    @Schema(name = "描述")
    private String description;

    @Schema(name = "网站路径")
    private String url;
}
