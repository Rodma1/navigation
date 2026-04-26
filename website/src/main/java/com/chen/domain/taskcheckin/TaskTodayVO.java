package com.chen.domain.taskcheckin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@Schema(name = "TaskTodayVO", description = "今日任务视图")
public class TaskTodayVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name = "任务ID")
    private Long taskId;

    @Schema(name = "任务名称")
    private String taskName;

    @Schema(name = "任务类型")
    private String taskType;

    @Schema(name = "任务内容")
    private String taskContent;

    @Schema(name = "开始时间")
    private String startTime;

    @Schema(name = "结束时间")
    private String endTime;

    @Schema(name = "排序")
    private Integer sort;

    @Schema(name = "是否已打卡")
    private Boolean checked;

    @Schema(name = "打卡记录ID")
    private Long checkInId;

    @Schema(name = "打卡状态（0未完成 1已完成 2部分完成）")
    private String checkStatus;

    @Schema(name = "打卡内容")
    private String checkContent;

    @Schema(name = "打卡备注")
    private String checkNote;

    @Schema(name = "实际开始时间")
    private String actualStartTime;

    @Schema(name = "实际结束时间")
    private String actualEndTime;
}
