package com.chen.domain.navigatedomain.navigatesite;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2023-09-25
 */
@Getter
@Setter
@TableName("cyz_navigate_site")
@ApiModel(value = "CyzNavigateSitePO对象", description = "")
public class CyzNavigateSitePO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    @ApiModelProperty("类别id")
    @TableField("category_id")
    private Long categoryId;

    @ApiModelProperty("网站标题")
    @TableField("name")
    private String name;

    @ApiModelProperty("图片")
    @TableField("image")
    private String image;

    @ApiModelProperty("描述")
    @TableField("description")
    private String description;

    @ApiModelProperty("网站路径")
    @TableField("url")
    private String url;

    @ApiModelProperty("创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @ApiModelProperty("更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @ApiModelProperty("创建者")
    @TableField("create_by")
    private String createBy;

    @ApiModelProperty("更新者")
    @TableField("update_by")
    private String updateBy;

    @TableField("del_flag")
    private String delFlag;


}
