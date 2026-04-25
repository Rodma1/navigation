package com.chen.controller.navigatesite.domin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import java.util.List;

@Data
@Schema(name = "网站删除")
public class NavigateSiteDeleteCommands {

    @Schema(name = "网站id列表")
    @NotEmpty(message = "ids不能为空")
    private List<Long> ids;
}
