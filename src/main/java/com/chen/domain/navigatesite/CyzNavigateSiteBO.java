package com.chen.domain.navigatesite;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
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
@ApiModel(value = "CyzNavigateSiteBO对象", description = "")
public class CyzNavigateSiteBO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    @ApiModelProperty("类别id")
    private Long categoryId;

    @ApiModelProperty("网站标题")
    private String name;

    @ApiModelProperty("图片")
    private String image;

    @ApiModelProperty("描述")
    private String description;

    @ApiModelProperty("网站路径")
    private String url;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("创建者")
    private String createBy;

    @ApiModelProperty("更新者")
    private String updateBy;


}
