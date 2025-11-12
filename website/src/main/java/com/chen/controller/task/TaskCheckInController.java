package com.chen.controller.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.service.task.TaskCheckInService;
import com.chen.utils.resultreturn.ResultData;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

/**
 * 任务打卡控制器
 * 提供任务打卡的增删改查接口
 */
@Api(tags = "任务打卡管理")
@RestController
@RequestMapping("/task/checkin")
@RequiredArgsConstructor
public class TaskCheckInController {

    private final TaskCheckInService taskCheckInService;

    /**
     * 分页查询任务打卡记录
     * @param page 分页参数
     * @param userId 用户ID
     * @param taskPlanId 任务计划ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 分页结果
     */
    @ApiOperation("分页查询任务打卡记录")
    @GetMapping("/page")
    public ResultData<IPage<TaskCheckInBO>> page(
            @ApiParam("分页参数") Page<TaskCheckInPO> page,
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("任务计划ID") @RequestParam(required = false) Long taskPlanId,
            @ApiParam("开始日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @ApiParam("结束日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInPage(page, userId, taskPlanId, startTime, endTime));
    }

    /**
     * 查询任务打卡记录列表
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡记录列表
     */
    @ApiOperation("查询任务打卡记录列表")
    @GetMapping("/list")
    public ResultData<List<TaskCheckInBO>> list(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("开始日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @ApiParam("结束日期") @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInList(userId, startTime, endTime));
    }

    /**
     * 查询指定日期的任务打卡记录
     * @param userId 用户ID
     * @param date 日期
     * @return 打卡记录列表
     */
    @ApiOperation("查询指定日期的任务打卡记录")
    @GetMapping("/list/date")
    public ResultData<List<TaskCheckInBO>> listByDate(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("日期") @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate date) {
        return ResultData.success(taskCheckInService.selectTaskCheckInListByDate(userId, date));
    }

    /**
     * 查询指定任务计划的打卡记录
     * @param userId 用户ID
     * @param taskPlanId 任务计划ID
     * @return 打卡记录列表
     */
    @ApiOperation("查询指定任务计划的打卡记录")
    @GetMapping("/list/task")
    public ResultData<List<TaskCheckInBO>> listByTaskPlan(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("任务计划ID") @RequestParam Long taskPlanId) {
        return ResultData.success(taskCheckInService.selectTaskCheckInListByTaskPlan(userId, taskPlanId));
    }

    /**
     * 统计指定日期范围内的打卡完成情况
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡统计结果
     */
    @ApiOperation("统计指定日期范围内的打卡完成情况")
    @GetMapping("/statistics")
    public ResultData<Map<LocalDate, Map<String, Integer>>> statistics(
            @ApiParam("用户ID") @RequestParam Long userId,
            @ApiParam("开始日期") @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @ApiParam("结束日期") @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return ResultData.success(taskCheckInService.selectTaskCheckInStatistics(userId, startTime, endTime));
    }

    /**
     * 创建打卡记录
     * @param taskCheckInBO 打卡记录信息
     * @return 创建结果
     */
    @ApiOperation("创建打卡记录")
    @PostMapping
    public ResultData<Boolean> create(@RequestBody TaskCheckInBO taskCheckInBO) {
        return ResultData.success(taskCheckInService.createTaskCheckIn(taskCheckInBO));
    }

    /**
     * 更新打卡记录
     * @param taskCheckInBO 打卡记录信息
     * @return 更新结果
     */
    @ApiOperation("更新打卡记录")
    @PutMapping
    public ResultData<Boolean> update(@RequestBody TaskCheckInBO taskCheckInBO) {
        return ResultData.success(taskCheckInService.updateTaskCheckIn(taskCheckInBO));
    }

    /**
     * 删除打卡记录
     * @param id 打卡记录ID
     * @return 删除结果
     */
    @ApiOperation("删除打卡记录")
    @DeleteMapping("/{id}")
    public ResultData<Boolean> delete(@PathVariable Long id) {
        return ResultData.success(taskCheckInService.deleteTaskCheckIn(id));
    }

    /**
     * 批量删除打卡记录
     * @param ids 打卡记录ID列表
     * @return 删除结果
     */
    @ApiOperation("批量删除打卡记录")
    @DeleteMapping("/batch")
    public ResultData<Boolean> deleteBatch(@RequestBody List<Long> ids) {
        return ResultData.success(taskCheckInService.deleteTaskCheckInBatch(ids));
    }
}