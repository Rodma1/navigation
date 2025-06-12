package com.chen.controller.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.service.task.TaskPlanService;
import com.chen.domain.taskplan.TaskPlanBO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

/**
 * 任务计划控制器
 * 提供任务计划的增删改查接口
 */
@Api(tags = "任务计划管理")
@RestController
@RequestMapping("/task/plan")
@RequiredArgsConstructor
public class TaskPlanController {

    private final TaskPlanService taskPlanService;

    /**
     * 分页查询任务计划列表
     * @param page 分页参数
     * @param userId 用户ID
     * @param taskType 任务类型（考研/找工作）
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 分页结果
     */
    @ApiOperation("分页查询任务计划列表")
    @GetMapping("/page")
    public ResultData<IPage<TaskPlanBO>> page(
            @ApiParam("分页参数") Page<TaskPlanPO> page,
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("任务类型") @RequestParam(required = false) String taskType,
            @ApiParam("开始日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @ApiParam("结束日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskPlanService.selectTaskPlanPage(page, userId, taskType, startTime, endTime));
    }

    /**
     * 查询任务计划列表
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 任务计划列表
     */
    @ApiOperation("查询任务计划列表")
    @GetMapping("/list")
    public ResultData<List<TaskPlanBO>> list(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("开始日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @ApiParam("结束日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskPlanService.selectTaskPlanList(userId, startTime, endTime));
    }

    /**
     * 查询指定日期的任务计划列表
     * @param userId 用户ID
     * @param date 日期
     * @return 任务计划列表
     */
    @ApiOperation("查询指定日期的任务计划列表")
    @GetMapping("/list/date")
    public ResultData<List<TaskPlanBO>> listByDate(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("日期") @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {
        return ResultData.success(taskPlanService.selectTaskPlanListByDate(userId, date));
    }

    /**
     * 创建任务计划
     * @param taskPlanBO 任务计划信息
     * @return 创建结果
     */
    @ApiOperation("创建任务计划")
    @PostMapping
    public ResultData<Boolean> create(@RequestBody TaskPlanBO taskPlanBO) {
        return ResultData.success(taskPlanService.createTaskPlan(taskPlanBO));
    }

    /**
     * 更新任务计划
     * @param taskPlanBO 任务计划信息
     * @return 更新结果
     */
    @ApiOperation("更新任务计划")
    @PutMapping
    public ResultData<Boolean> update(@RequestBody TaskPlanBO taskPlanBO) {
        return ResultData.success(taskPlanService.updateTaskPlan(taskPlanBO));
    }

    /**
     * 删除任务计划
     * @param id 任务计划ID
     * @return 删除结果
     */
    @ApiOperation("删除任务计划")
    @DeleteMapping("/{id}")
    public ResultData<Boolean> delete(@PathVariable Long id) {
        return ResultData.success(taskPlanService.deleteTaskPlan(id));
    }

    /**
     * 批量删除任务计划
     * @param ids 任务计划ID列表
     * @return 删除结果
     */
    @ApiOperation("批量删除任务计划")
    @DeleteMapping("/batch")
    public ResultData<Boolean> deleteBatch(@RequestBody List<Long> ids) {
        return ResultData.success(taskPlanService.deleteTaskPlanBatch(ids));
    }
} 