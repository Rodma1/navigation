package com.chen.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.BaseMapperPlus;
import com.chen.domain.taskplan.TaskPlanPO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

/**
 * 任务计划 Mapper 接口
 *
 * @author cyz
 * @since 2024-03-21
 */
@Repository
public interface TaskPlanMapper extends BaseMapperPlus<TaskPlanPO> {

    /**
     * 分页查询任务计划列表
     *
     * @param page 分页参数
     * @param userId 用户ID
     * @param taskType 任务类型
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 分页结果
     */
    IPage<TaskPlanPO> selectTaskPlanPage(
        Page<TaskPlanPO> page,
        @Param("userId") Long userId,
        @Param("taskType") String taskType,
        @Param("startTime") LocalDate startTime,
        @Param("endTime") LocalDate endTime
    );

    /**
     * 查询指定日期范围内的任务计划列表
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 任务计划列表
     */
    List<TaskPlanPO> selectTaskPlanList(
        @Param("userId") Long userId,
        @Param("startTime") LocalDate startTime,
        @Param("endTime") LocalDate endTime
    );

    /**
     * 查询指定日期的任务计划列表
     *
     * @param userId 用户ID
     * @param date 日期
     * @return 任务计划列表
     */
    List<TaskPlanPO> selectTaskPlanListByDate(
        @Param("userId") Long userId,
        @Param("date") LocalDate date
    );
} 