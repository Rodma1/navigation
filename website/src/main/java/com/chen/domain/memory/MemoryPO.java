package com.chen.domain.memory;

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
 * @since 2024-08-15
 */
@Getter
@Setter
@TableName("cyz_memory")
@Schema(name   = "MemoryPO对象", description = "")
public class MemoryPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("id")
    private Long id;

    @Schema(name ="内容")
    @TableField("content")
    private String content;

    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableField("del_flag")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    @TableField("create_by")
    private String createBy;

    @Schema(name ="更新者")
    @TableField("update_by")
    private String updateBy;


}
