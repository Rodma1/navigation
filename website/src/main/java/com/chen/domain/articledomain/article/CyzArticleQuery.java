package com.chen.domain.articledomain.article;

import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
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
@Schema(name   = "CyzArticleQuery对象", description = "")
public class CyzArticleQuery implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="文章地址")
    private String url;

    @Schema(name ="文章名称")
    private String name;

    @Schema(name ="完成状态 0 未完成 1已完成")
    private String state;

    @Schema(name ="文章类别id")
    private Long categoryId;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    private String createBy;

    @Schema(name ="更新者")
    private String updateBy;

    private Long id;


}
