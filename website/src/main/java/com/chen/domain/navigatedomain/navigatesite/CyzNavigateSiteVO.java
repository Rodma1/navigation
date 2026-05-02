package com.chen.domain.navigatedomain.navigatesite;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
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
@Schema(name   = "CyzNavigateSiteVO对象", description = "")
public class CyzNavigateSiteVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @JsonFormat(shape = JsonFormat.Shape.STRING)
    private Long id;

    @Schema(name ="类别id")
    @JsonFormat(shape = JsonFormat.Shape.STRING)
    private Long categoryId;

    @Schema(name ="网站标题")
    private String name;

    @Schema(name ="图片")
    private String image;

    @Schema(name ="描述")
    private String description;

    @Schema(name ="网站路径")
    private String url;

    @Schema(name ="创建时间")
    private Date createTime;

    @Schema(name ="更新时间")
    private Date updateTime;

    @Schema(name ="创建者")
    private String createBy;

    @Schema(name ="更新者")
    private String updateBy;


}
