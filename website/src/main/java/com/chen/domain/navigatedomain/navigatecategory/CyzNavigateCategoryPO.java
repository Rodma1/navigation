package com.chen.domain.navigatedomain.navigatecategory;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
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
@Schema(name   = "CyzNavigateCategoryPO对象", description = "")
public class CyzNavigateCategoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    @Schema(name ="父id")
    @TableField("parent_id")
    private Long parentId;

    @Schema(name ="排序")
    @TableField("sort")
    private Integer sort;

    @Schema(name ="类别名称")
    @TableField("name")
    private String name;

    @Schema(name ="图标")
    @TableField("icon")
    private String icon;

    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @TableField("del_flag")
    @TableLogic
    private String delFlag;


}
