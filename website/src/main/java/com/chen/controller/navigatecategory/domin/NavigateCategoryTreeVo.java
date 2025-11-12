package com.chen.controller.navigatecategory.domin;

import com.baomidou.mybatisplus.annotation.TableField;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import io.swagger.v3.oas.annotations.media.Schema;
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

    @Schema(name ="父id")
    private Long parentId;

    @Schema(name ="排序")
    private Integer sort;

    @Schema(name ="类别名称")
    private String name;

    @Schema(name ="图标")
    private String icon;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="子类别")
    private List<CyzNavigateCategoryBO> children;

    @TableField("del_flag")
    private String delFlag;

    @Schema(name ="网站")
    private List<CyzNavigateSiteBO> sites;
}
