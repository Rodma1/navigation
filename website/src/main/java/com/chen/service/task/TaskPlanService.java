package com.chen.service.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.IServicePlus;
import com.chen.domain.taskplan.TaskPlanBO;
import com.chen.domain.taskplan.TaskPlanPO;

import java.time.LocalDate;
import java.util.List;

/**
 * 任务计划 Service 接口
 *
 * @author cyz
 * @since 2024-03-21
 */
public interface TaskPlanService extends IServicePlus<TaskPlanPO, TaskPlanBO> {

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
    IPage<TaskPlanBO> selectTaskPlanPage(
        Page<TaskPlanPO> page,
        Long userId,
        String taskType,
        LocalDate startTime,
        LocalDate endTime
    );

    /**
     * 查询指定日期范围内的任务计划列表
     *
     * @param userId 用户ID
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return 任务计划列表
     */
    List<TaskPlanBO> selectTaskPlanList(
        Long userId,
        LocalDate startTime,
        LocalDate endTime
    );

    /**
     * 查询指定日期的任务计划列表
     *
     * @param userId 用户ID
     * @param date 日期
     * @return 任务计划列表
     */
    List<TaskPlanBO> selectTaskPlanListByDate(
        Long userId,
        LocalDate date
    );

    /**
     * 创建任务计划
     *
     * @param taskPlanBO 任务计划信息
     * @return 是否成功
     */
    boolean createTaskPlan(TaskPlanBO taskPlanBO);

    /**
     * 更新任务计划
     *
     * @param taskPlanBO 任务计划信息
     * @return 是否成功
     */
    boolean updateTaskPlan(TaskPlanBO taskPlanBO);

    /**
     * 删除任务计划
     *
     * @param id 任务计划ID
     * @return 是否成功
     */
    boolean deleteTaskPlan(Long id);

    /**
     * 批量删除任务计划
     *
     * @param ids 任务计划ID列表
     * @return 是否成功
     */
    boolean deleteTaskPlanBatch(List<Long> ids);
} 