package com.chen.controller.category.domain;
import com.chen.domain.common.category.BaseCategory;
import com.chen.domain.navigatesite.CyzNavigateSiteBO;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023/9/25 9:50
 * @Description:
 */
@Getter
@Setter
public class CategoryTreeVo extends BaseCategory {
    private static final long serialVersionUID = 1L;


    @ApiModelProperty("图标")
    private String icon;

    @ApiModelProperty("网站")
    private List<CyzNavigateSiteBO> sites;
}
