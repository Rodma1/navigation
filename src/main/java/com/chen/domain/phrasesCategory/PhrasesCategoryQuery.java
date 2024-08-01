package com.chen.domain.phrasesCategory;

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
 * @since 2024-08-01
 */
@Getter
@Setter
@TableName("cyz_phrases_category")
@ApiModel(value = "PhrasesCategoryQuery对象", description = "")
public class PhrasesCategoryQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("类别名称")
    private String name;

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

    @ApiModelProperty("排序")
    private Integer sort;

    @ApiModelProperty("图标")
    private String icon;

    @ApiModelProperty("父id")
    private Long parentId;

    private Integer id;


}
