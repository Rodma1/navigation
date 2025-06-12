package com.chen.domain.taskplan;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@Schema(name = "TaskPlanPagesQuery", description = "任务计划分页查询对象")
public class TaskPlanPagesQuery {

    @Schema(name = "页码")
    private Integer pageNum;

    @Schema(name = "每页数量")
    private Integer pageSize;

    @Schema(name = "任务名称")
    private String taskName;

    @Schema(name = "任务类型")
    private String taskType;

    @Schema(name = "状态")
    private String status;
} 