package com.chen.domain.taskplan;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
@TableName("cyz_task_plan")
@Schema(name = "TaskPlanPO", description = "任务计划持久化对象")
public class TaskPlanPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId
    @Schema(name = "主键")
    private Long id;

    @TableField("task_name")
    @Schema(name = "任务名称")
    private String taskName;

    @TableField("task_type")
    @Schema(name = "任务类型（数学、英语、专业课、面试、生活等）")
    private String taskType;

    @TableField("start_time")
    @Schema(name = "开始日期（如：2026-04-26）")
    private String startTime;

    @TableField("end_time")
    @Schema(name = "完成日期（如：2026-06-30），null表示一直持续")
    private String endTime;

    @TableField("task_content")
    @Schema(name = "任务内容")
    private String taskContent;

    @TableField("week_day")
    @Schema(name = "执行星期（1-7，多个用逗号分隔，null表示每天）")
    private String weekDay;

    @TableField("sort")
    @Schema(name = "排序")
    private Integer sort;

    @TableField("status")
    @Schema(name = "状态（0正常 1停用）")
    private String status;

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