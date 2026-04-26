package com.chen.controller.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.domain.taskcheckin.TaskCalendarVO;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.domain.taskcheckin.TaskTodayVO;
import com.chen.service.task.TaskCheckInService;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RestController
@Tag(name = "任务打卡管理", description = "任务打卡相关接口")
@RequestMapping("/task/checkin")
@RequiredArgsConstructor
public class TaskCheckInController {

    private final TaskCheckInService taskCheckInService;

    @Operation(summary = "获取今日任务列表（含打卡状态）")
    @GetMapping("/today")
    public ResultData<List<TaskTodayVO>> today(
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {
        if (date == null) {
            date = LocalDate.now();
        }
        return ResultData.success(taskCheckInService.getTodayTasks(date));
    }

    @Operation(summary = "一键打卡")
    @PostMapping("/quick")
    public ResultData<TaskCheckInBO> quickCheckIn(@RequestBody TaskCheckInBO bo) {
        return ResultData.success(taskCheckInService.quickCheckIn(bo));
    }

    @Operation(summary = "获取打卡日历统计")
    @GetMapping("/calendar")
    public ResultData<TaskCalendarVO> calendar(@RequestParam String month) {
        return ResultData.success(taskCheckInService.getCalendarStats(month));
    }

    @Operation(summary = "分页查询打卡记录")
    @GetMapping("/page")
    public ResultData<IPage<TaskCheckInBO>> page(
            Page<TaskCheckInPO> page,
            @RequestParam(required = false) Long userId,
            @RequestParam(required = false) Long taskPlanId,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInPage(page, userId, taskPlanId, startTime, endTime));
    }

    @Operation(summary = "查询打卡记录列表")
    @GetMapping("/list")
    public ResultData<List<TaskCheckInBO>> list(
            @RequestParam(required = false) Long userId,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInList(userId, startTime, endTime));
    }

    @Operation(summary = "更新打卡记录")
    @PutMapping
    public ResultData<Boolean> update(@RequestBody TaskCheckInBO taskCheckInBO) {
        return ResultData.success(taskCheckInService.updateTaskCheckIn(taskCheckInBO));
    }

    @Operation(summary = "删除打卡记录")
    @DeleteMapping("/{id}")
    public ResultData<Boolean> delete(@PathVariable Long id) {
        return ResultData.success(taskCheckInService.deleteTaskCheckIn(id));
    }

    @Operation(summary = "批量删除打卡记录")
    @DeleteMapping("/batch")
    public ResultData<Boolean> deleteBatch(@RequestBody List<Long> ids) {
        return ResultData.success(taskCheckInService.deleteTaskCheckInBatch(ids));
    }

    @Operation(summary = "打卡统计")
    @GetMapping("/statistics")
    public ResultData<Map<LocalDate, Map<String, Integer>>> statistics(
            @RequestParam(required = false) Long userId,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date startTime,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") Date endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInStatistics(userId, startTime, endTime));
    }
}
