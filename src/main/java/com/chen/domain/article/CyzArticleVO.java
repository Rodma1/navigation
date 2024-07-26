package com.chen.domain.article;

import com.baomidou.mybatisplus.annotation.TableLogic;
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
 * @since 2024-07-17
 */
@Getter
@Setter
@TableName("cyz_article")
@ApiModel(value = "CyzArticleVO对象", description = "")
public class CyzArticleVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("文章地址")
    private String url;

    @ApiModelProperty("文章名称")
    private String name;

    @ApiModelProperty("完成状态 0 未完成 1已完成")
    private String state;

    @ApiModelProperty("文章类别id")
    private Integer categoryId;

    @ApiModelProperty("创建时间")
    private Date createTime;

    @ApiModelProperty("更新时间")
    private Date updateTime;

    @ApiModelProperty("删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @ApiModelProperty("创建者")
    private String createBy;

    @ApiModelProperty("更新者")
    private String updateBy;

    private Integer id;


}
