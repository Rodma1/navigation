package com.chen.domain.navigatedomain.navigatecategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.chen.common.category.BaseCategory;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2023-09-22
 */
@Getter
@Setter
@TableName("cyz_navigate_category")
@Schema(name   = "CyzNavigateCategoryDTO对象", description = "")
public class CyzNavigateCategoryDTO extends BaseCategory implements Serializable   {

    private static final long serialVersionUID = 1L;

    @JsonFormat(shape = JsonFormat.Shape.STRING)
    private Long id;

    @Schema(name ="父id")
    @JsonFormat(shape = JsonFormat.Shape.STRING)
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

//    @Schema(name ="子类别")
//    private List<CyzNavigateCategoryBO> children;

    @TableField("del_flag")
    private String delFlag;

    @Schema(name ="子类别")
    private List<CyzNavigateSiteBO> sites;


}
