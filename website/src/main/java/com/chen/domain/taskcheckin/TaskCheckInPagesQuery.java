package com.chen.domain.taskcheckin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.Date;

@Data
@Schema(name = "TaskCheckInPagesQuery", description = "任务打卡分页查询对象")
public class TaskCheckInPagesQuery {

    @Schema(name = "页码")
    private Integer pageNum;

    @Schema(name = "每页数量")
    private Integer pageSize;

    @Schema(name = "任务ID")
    private Long taskId;

    @Schema(name = "任务类型")
    private String taskType;

    @Schema(name = "完成状态")
    private String checkStatus;

    @Schema(name = "开始日期")
    private Date startTime;

    @Schema(name = "结束日期")
    private Date endTime;
} 