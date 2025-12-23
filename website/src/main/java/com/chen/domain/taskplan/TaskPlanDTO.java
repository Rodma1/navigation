package com.chen.domain.taskplan;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
@TableName("cyz_task_plan")
@Schema(name = "TaskPlanDTO", description = "任务计划数据传输对象")
public class TaskPlanDTO implements Serializable {

    private static final long serialVersionUID = 1L;
    @JsonFormat(shape = JsonFormat.Shape.STRING)
    @Schema(name = "主键")
    private Long id;

    @Schema(name = "任务名称")
    private String taskName;

    @Schema(name = "任务类型（数学、英语、专业课、面试、生活等）")
    private String taskType;

    @Schema(name = "开始时间（如：08:30）")
    private String startTime;

    @Schema(name = "结束时间（如：10:30）")
    private String endTime;

    @Schema(name = "任务内容")
    private String taskContent;

    @Schema(name = "执行星期（1-7，多个用逗号分隔，null表示每天）")
    private String weekDay;

    @Schema(name = "排序")
    private Integer sort;

    @Schema(name = "状态（0正常 1停用）")
    private String status;

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