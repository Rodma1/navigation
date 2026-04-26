package com.chen.service.task;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.domain.taskplan.TaskPlanBO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.domain.taskplan.TaskPlanStatsVO;
import com.chen.mapper.TaskCheckInMapper;
import com.chen.mapper.TaskPlanMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

@RequiredArgsConstructor
@Service
public class TaskPlanServiceImpl extends ServicePlusImpl<TaskPlanMapper, TaskPlanPO, TaskPlanBO> implements TaskPlanService {

    private final TaskCheckInMapper taskCheckInMapper;

    @Override
    public IPage<TaskPlanBO> selectTaskPlanPage(Page<TaskPlanPO> page, Long userId, String taskType, String status, LocalDate startTime, LocalDate endTime) {
        IPage<TaskPlanPO> poPage = baseMapper.selectTaskPlanPage(page, userId, taskType, status, startTime, endTime);
        return poPage.convert(po -> BeanUtil.copyProperties(po, TaskPlanBO.class));
    }

    @Override
    public List<TaskPlanBO> selectTaskPlanList(Long userId, LocalDate startTime, LocalDate endTime) {
        List<TaskPlanPO> poList = baseMapper.selectTaskPlanList(userId, startTime, endTime);
        return BeanUtil.copyToList(poList, TaskPlanBO.class);
    }

    @Override
    public List<TaskPlanBO> selectTaskPlanListByDate(Long userId, LocalDate date) {
        List<TaskPlanPO> poList = baseMapper.selectTaskPlanListByDate(userId, date);
        return BeanUtil.copyToList(poList, TaskPlanBO.class);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean createTaskPlan(TaskPlanBO taskPlanBO) {
        TaskPlanPO taskPlanPO = taskPlanBO.buildInsertPo();
        return save(taskPlanPO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateTaskPlan(TaskPlanBO taskPlanBO) {
        TaskPlanPO taskPlanPO = taskPlanBO.buildUpdatePo();
        return updateById(taskPlanPO);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteTaskPlan(Long id) {
        taskCheckInMapper.delete(new LambdaQueryWrapper<TaskCheckInPO>().eq(TaskCheckInPO::getTaskId, id));
        return removeById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteTaskPlanBatch(List<Long> ids) {
        taskCheckInMapper.delete(new LambdaQueryWrapper<TaskCheckInPO>().in(TaskCheckInPO::getTaskId, ids));
        return removeByIds(ids);
    }

    @Override
    public TaskPlanStatsVO getPlanStats(String taskType, LocalDate startTime, LocalDate endTime) {
        LambdaQueryWrapper<TaskPlanPO> wrapper = new LambdaQueryWrapper<TaskPlanPO>()
                .eq(TaskPlanPO::getDelFlag, "0");
        if (taskType != null && !taskType.isEmpty()) {
            wrapper.eq(TaskPlanPO::getTaskType, taskType);
        }
        long totalCount = count(wrapper);

        List<Long> planIds = null;
        if (taskType != null && !taskType.isEmpty()) {
            planIds = list(new LambdaQueryWrapper<TaskPlanPO>()
                    .eq(TaskPlanPO::getDelFlag, "0")
                    .eq(TaskPlanPO::getTaskType, taskType))
                    .stream().map(TaskPlanPO::getId).toList();
            if (planIds.isEmpty()) {
                TaskPlanStatsVO vo = new TaskPlanStatsVO();
                vo.setTotalCount((int) totalCount);
                vo.setTotalCheckInCount(0);
                vo.setCompletedCount(0);
                vo.setCompletionRate(0);
                return vo;
            }
        }

        LambdaQueryWrapper<TaskCheckInPO> checkInWrapper = new LambdaQueryWrapper<TaskCheckInPO>()
                .eq(TaskCheckInPO::getDelFlag, "0");
        if (startTime != null) {
            checkInWrapper.ge(TaskCheckInPO::getCheckDate, java.sql.Date.valueOf(startTime));
        }
        if (endTime != null) {
            checkInWrapper.le(TaskCheckInPO::getCheckDate, java.sql.Date.valueOf(endTime));
        }
        if (planIds != null) {
            checkInWrapper.in(TaskCheckInPO::getTaskId, planIds);
        }
        long totalCheckInCount = taskCheckInMapper.selectCount(checkInWrapper);

        LambdaQueryWrapper<TaskCheckInPO> completedWrapper = new LambdaQueryWrapper<TaskCheckInPO>()
                .eq(TaskCheckInPO::getDelFlag, "0")
                .eq(TaskCheckInPO::getCheckStatus, "1");
        if (startTime != null) {
            completedWrapper.ge(TaskCheckInPO::getCheckDate, java.sql.Date.valueOf(startTime));
        }
        if (endTime != null) {
            completedWrapper.le(TaskCheckInPO::getCheckDate, java.sql.Date.valueOf(endTime));
        }
        if (planIds != null) {
            completedWrapper.in(TaskCheckInPO::getTaskId, planIds);
        }
        long completedCount = taskCheckInMapper.selectCount(completedWrapper);

        TaskPlanStatsVO vo = new TaskPlanStatsVO();
        vo.setTotalCount((int) totalCount);
        vo.setTotalCheckInCount((int) totalCheckInCount);
        vo.setCompletedCount((int) completedCount);
        vo.setCompletionRate(totalCheckInCount > 0 ? (int) (completedCount * 100 / totalCheckInCount) : 0);
        return vo;
    }
}
