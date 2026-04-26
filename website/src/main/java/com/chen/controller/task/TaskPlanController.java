package com.chen.controller.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.service.task.TaskPlanService;
import com.chen.domain.taskplan.TaskPlanBO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.domain.taskplan.TaskPlanStatsVO;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@Tag(name = "任务计划管理", description = "任务计划相关接口")
@RequestMapping("/task/plan")
@RequiredArgsConstructor
public class TaskPlanController {

    private final TaskPlanService taskPlanService;

    @Operation(summary = "分页查询任务计划")
    @GetMapping("/page")
    public ResultData<IPage<TaskPlanBO>> page(
            Page<TaskPlanPO> page,
            @RequestParam(required = false) Long userId,
            @RequestParam(required = false) String taskType,
            @RequestParam(required = false) String status,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskPlanService.selectTaskPlanPage(page, userId, taskType, status, startTime, endTime));
    }

    @Operation(summary = "查询任务计划列表")
    @GetMapping("/list")
    public ResultData<List<TaskPlanBO>> list(
            @RequestParam(required = false) Long userId,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskPlanService.selectTaskPlanList(userId, startTime, endTime));
    }

    @Operation(summary = "查询指定日期的任务计划")
    @GetMapping("/list/date")
    public ResultData<List<TaskPlanBO>> listByDate(
            @RequestParam(required = false) Long userId,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {
        return ResultData.success(taskPlanService.selectTaskPlanListByDate(userId, date));
    }

    @Operation(summary = "创建任务计划")
    @PostMapping
    public ResultData<Boolean> create(@RequestBody TaskPlanBO taskPlanBO) {
        return ResultData.success(taskPlanService.createTaskPlan(taskPlanBO));
    }

    @Operation(summary = "更新任务计划")
    @PutMapping
    public ResultData<Boolean> update(@RequestBody TaskPlanBO taskPlanBO) {
        return ResultData.success(taskPlanService.updateTaskPlan(taskPlanBO));
    }

    @Operation(summary = "删除任务计划（级联删除打卡记录）")
    @DeleteMapping("/{id}")
    public ResultData<Boolean> delete(@PathVariable Long id) {
        return ResultData.success(taskPlanService.deleteTaskPlan(id));
    }

    @Operation(summary = "批量删除任务计划")
    @DeleteMapping("/batch")
    public ResultData<Boolean> deleteBatch(@RequestBody List<Long> ids) {
        return ResultData.success(taskPlanService.deleteTaskPlanBatch(ids));
    }

    @Operation(summary = "任务计划统计")
    @GetMapping("/stats")
    public ResultData<TaskPlanStatsVO> stats(
            @RequestParam(required = false) String taskType,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskPlanService.getPlanStats(taskType, startTime, endTime));
    }
}
