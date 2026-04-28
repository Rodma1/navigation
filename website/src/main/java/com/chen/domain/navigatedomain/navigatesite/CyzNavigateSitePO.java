package com.chen.domain.navigatedomain.navigatesite;

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
 * @since 2023-09-25
 */
@Getter
@Setter
@TableName("cyz_navigate_site")
@Schema(name   = "CyzNavigateSitePO对象", description = "")
public class CyzNavigateSitePO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    @Schema(name ="类别id")
    @TableField("category_id")
    private Long categoryId;

    @Schema(name ="网站标题")
    @TableField("name")
    private String name;

    @Schema(name ="图片")
    @TableField("image")
    private String image;

    @Schema(name ="描述")
    @TableField("description")
    private String description;

    @Schema(name ="网站路径")
    @TableField("url")
    private String url;

    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @Schema(name ="创建者")
    @TableField("create_by")
    private String createBy;

    @Schema(name ="更新者")
    @TableField("update_by")
    private String updateBy;

    @TableField("del_flag")
    @TableLogic
    private String delFlag;


}
