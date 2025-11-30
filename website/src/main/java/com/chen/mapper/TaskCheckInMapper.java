package com.chen.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.BaseMapperPlus;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

/**
 * 任务打卡 Mapper 接口
 *
 * @author cyz
 * @since 2024-03-21
 */
@Repository
public interface TaskCheckInMapper extends BaseMapperPlus<TaskCheckInPO> {

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
    IPage<TaskCheckInPO> selectTaskCheckInPage(
        Page<TaskCheckInPO> page,
        @Param("userId") Long userId,
        @Param("taskPlanId") Long taskPlanId,
        @Param("startTime") Date startTime,
        @Param("endTime") Date endTime
    );

    /**
     * 查询指定日期范围内的任务打卡记录
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡记录列表
     */
    List<TaskCheckInPO> selectTaskCheckInList(
        @Param("userId") Long userId,
        @Param("startTime") Date startTime,
        @Param("endTime") Date endTime
    );

    /**
     * 查询指定日期的任务打卡记录
     *
     * @param userId 用户ID
     * @param date 日期
     * @return 打卡记录列表
     */
    List<TaskCheckInPO> selectTaskCheckInListByDate(
        @Param("userId") Long userId,
        @Param("date") Date date
    );

    /**
     * 查询指定任务计划的打卡记录
     *
     * @param userId 用户ID
     * @param taskPlanId 任务计划ID
     * @return 打卡记录列表
     */
    List<TaskCheckInPO> selectTaskCheckInListByTaskPlan(
        @Param("userId") Long userId,
        @Param("taskPlanId") Long taskPlanId
    );

    /**
     * 统计指定日期范围内的打卡完成情况
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 打卡统计结果
     */
    List<TaskCheckInPO> selectTaskCheckInStatistics(
        @Param("userId") Long userId,
        @Param("startTime") Date startTime,
        @Param("endTime") Date endTime
    );
} 