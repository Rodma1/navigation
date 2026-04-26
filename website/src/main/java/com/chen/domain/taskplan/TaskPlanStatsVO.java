package com.chen.domain.taskplan;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@Schema(name = "TaskPlanStatsVO", description = "任务计划统计")
public class TaskPlanStatsVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name = "总任务数")
    private Integer totalCount;

    @Schema(name = "已完成打卡次数")
    private Integer completedCount;

    @Schema(name = "总打卡次数")
    private Integer totalCheckInCount;

    @Schema(name = "完成率（0-100）")
    private Integer completionRate;
}
