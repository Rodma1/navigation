package com.chen.service.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.IServicePlus;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 任务打卡 Service 接口
 *
 * @author cyz
 * @since 2024-03-21
 */
public interface TaskCheckInService extends IServicePlus<TaskCheckInPO, TaskCheckInBO> {

    /**
     * 分页查询任务打卡记录
     *
     * @param page 分页参数
     * @param userId 用户ID
     * @param taskPlanId 任务计划ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 分页结果
     */
    IPage<TaskCheckInBO> selectTaskCheckInPage(
        Page<TaskCheckInPO> page,
        Long userId,
        Long taskPlanId,
        Date startTime,
        Date endTime
    );

    /**
     * 查询指定日期范围内的任务打卡记录
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡记录列表
     */
    List<TaskCheckInBO> selectTaskCheckInList(
        Long userId,
        Date startTime,
        Date endTime
    );

    /**
     * 查询指定日期的任务打卡记录
     *
     * @param userId 用户ID
     * @param date 日期
     * @return 打卡记录列表
     */
    List<TaskCheckInBO> selectTaskCheckInListByDate(
        Long userId,
        Date date
    );

    /**
     * 查询指定任务计划的打卡记录
     *
     * @param userId 用户ID
     * @param taskPlanId 任务计划ID
     * @return 打卡记录列表
     */
    List<TaskCheckInBO> selectTaskCheckInListByTaskPlan(
        Long userId,
        Long taskPlanId
    );

    /**
     * 统计指定日期范围内的打卡完成情况
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡统计结果，key为日期，value为统计信息（包含总数和完成数）
     */
    Map<LocalDate, Map<String, Integer>> selectTaskCheckInStatistics(
        Long userId,
        Date startTime,
        Date endTime
    );

    /**
     * 创建打卡记录
     *
     * @param taskCheckInBO 打卡记录信息
     * @return 是否成功
     */
    boolean createTaskCheckIn(TaskCheckInBO taskCheckInBO);

    /**
     * 更新打卡记录
     *
     * @param taskCheckInBO 打卡记录信息
     * @return 是否成功
     */
    boolean updateTaskCheckIn(TaskCheckInBO taskCheckInBO);

    /**
     * 删除打卡记录
     *
     * @param id 打卡记录ID
     * @return 是否成功
     */
    boolean deleteTaskCheckIn(Long id);

    /**
     * 批量删除打卡记录
     *
     * @param ids 打卡记录ID列表
     * @return 是否成功
     */
    boolean deleteTaskCheckInBatch(List<Long> ids);
} 