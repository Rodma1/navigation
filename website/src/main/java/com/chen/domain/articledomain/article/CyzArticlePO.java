package com.chen.domain.articledomain.article;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import io.swagger.v3.oas.annotations.media.Schema;
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
 * @since 2024-07-17
 */
@Getter
@Setter
@TableName("cyz_article")
@Schema(name   = "CyzArticlePO对象", description = "")
public class CyzArticlePO implements Serializable {

    private static final long serialVersionUID = 1L;


    @TableId("id")
    private Long id;


    @Schema(name ="文章地址")
    @TableField("url")
    private String url;

    @Schema(name ="文章名称")
    @TableField("name")
    private String name;

    @Schema(name ="完成状态 0 未完成 1已完成")
    @TableField("state")
    private String state;

    @Schema(name ="文章类别id")
    @TableField("category_id")
    private Long categoryId;


    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @TableLogic
    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableField("del_flag")
    private String delFlag;

    @Schema(name ="创建者")
    @TableField("create_by")
    private String createBy;

    @Schema(name ="更新者")
    @TableField("update_by")
    private String updateBy;


}
