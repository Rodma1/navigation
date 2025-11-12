package com.chen.domain.taskcheckin;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

@Data
@TableName("cyz_task_check_in")
@Schema(name = "TaskCheckInPO", description = "任务打卡持久化对象")
public class TaskCheckInPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId
    @Schema(name = "主键")
    private Long id;

    @TableField("task_id")
    @Schema(name = "任务ID")
    private Long taskId;

    @TableField("check_date")
    @Schema(name = "打卡日期")
    private Date checkDate;

    @TableField("check_status")
    @Schema(name = "完成状态（已完成、部分完成、未完成）")
    private String checkStatus;

    @TableField("check_content")
    @Schema(name = "打卡内容（实际完成情况）")
    private String checkContent;

    @TableField("check_note")
    @Schema(name = "备注（如遇到的问题、心得等）")
    private String checkNote;

    @TableField("create_time")
    @Schema(name = "创建时间")
    private Timestamp createTime;

    @TableField("update_time")
    @Schema(name = "更新时间")
    private Timestamp updateTime;

    @TableField("del_flag")
    @Schema(name = "删除标志（0代表存在 1代表删除）")
    private String delFlag;

    @TableField("create_by")
    @Schema(name = "创建者")
    private String createBy;

    @TableField("update_by")
    @Schema(name = "更新者")
    private String updateBy;
} 