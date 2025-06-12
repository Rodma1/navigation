package com.chen.service.task;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.domain.taskplan.TaskPlanBO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.mapper.TaskPlanMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

@RequiredArgsConstructor
@Service
public class TaskPlanServiceImpl extends ServicePlusImpl<TaskPlanMapper, TaskPlanPO, TaskPlanBO> implements TaskPlanService {


    @Override
    public IPage<TaskPlanBO> selectTaskPlanPage(Page<TaskPlanPO> page, Long userId, String taskType, LocalDate startTime, LocalDate endTime) {
        IPage<TaskPlanPO> poPage = baseMapper.selectTaskPlanPage(page, userId, taskType, startTime, endTime);
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
        return removeById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteTaskPlanBatch(List<Long> ids) {
        return removeByIds(ids);
    }
} 