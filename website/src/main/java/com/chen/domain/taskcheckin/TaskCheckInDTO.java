package com.chen.domain.taskcheckin;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

@Data
@TableName("cyz_task_check_in")
@Schema(name = "TaskCheckInDTO", description = "任务打卡数据传输对象")
public class TaskCheckInDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name = "主键")
    private Long id;

    @Schema(name = "任务ID")
    private Long taskId;

    @Schema(name = "任务名称")
    private String taskName;

    @Schema(name = "任务类型")
    private String taskType;

    @Schema(name = "打卡日期")
    private Date checkDate;

    @Schema(name = "完成状态（已完成、部分完成、未完成）")
    private String checkStatus;

    @Schema(name = "打卡内容（实际完成情况）")
    private String checkContent;

    @Schema(name = "备注（如遇到的问题、心得等）")
    private String checkNote;

    @Schema(name = "创建时间")
    private Timestamp createTime;

    @Schema(name = "更新时间")
    private Timestamp updateTime;

    @Schema(name = "删除标志（0代表存在 1代表删除）")
    private String delFlag;

    @Schema(name = "创建者")
    private String createBy;

    @Schema(name = "更新者")
    private String updateBy;
} 