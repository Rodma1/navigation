package com.chen.domain.taskcheckin;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Schema(name = "TaskCalendarVO", description = "打卡日历统计")
public class TaskCalendarVO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name = "月份（如 2026-04）")
    private String month;

    @Schema(name = "连续打卡天数")
    private Integer streak;

    @Schema(name = "每日统计")
    private List<DayStat> dayStats;

    @Getter
    @Setter
    @Schema(name = "DayStat", description = "每日打卡统计")
    public static class DayStat implements Serializable {

        private static final long serialVersionUID = 1L;

        @Schema(name = "日期（如 2026-04-26）")
        private String date;

        @Schema(name = "总任务数")
        private Integer totalCount;

        @Schema(name = "已完成数")
        private Integer completedCount;

        @Schema(name = "完成率（0-100）")
        private Integer completionRate;
    }
}
