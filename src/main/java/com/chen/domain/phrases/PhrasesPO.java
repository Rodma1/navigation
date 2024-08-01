package com.chen.domain.phrases;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
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
 * @since 2024-07-26
 */
@Getter
@Setter
@TableName("cyz_phrases")
@ApiModel(value = "PhrasesPO对象", description = "")
public class PhrasesPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("句子")
    @TableField("sentence")
    private String sentence;

    @ApiModelProperty("创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @ApiModelProperty("更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @ApiModelProperty("删除标志(0代表存在 1代表删除)")
    @TableField("del_flag")
    @TableLogic
    private String delFlag;

    @ApiModelProperty("创建者")
    @TableField("create_by")
    private String createBy;

    @ApiModelProperty("更新者")
    @TableField("update_by")
    private String updateBy;

    @ApiModelProperty("类别")
    @TableField("category")
    private Integer categoryId;

    @ApiModelProperty("推荐等级")
    @TableField("rank")
    private String rank;

    @ApiModelProperty("父类")
    @TableField("parent_class")
    private String parentClass;

    @TableId("id")
    private Long id;


}
