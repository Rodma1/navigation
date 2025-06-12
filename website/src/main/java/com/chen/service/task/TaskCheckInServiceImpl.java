package com.chen.service.task;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.mapper.TaskCheckInMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TaskCheckInServiceImpl extends ServicePlusImpl<TaskCheckInMapper, TaskCheckInPO, TaskCheckInBO> implements TaskCheckInService {

    @Override
    public IPage<TaskCheckInBO> selectTaskCheckInPage(Page<TaskCheckInPO> page, Long userId, Long taskPlanId, LocalDate startTime, LocalDate endTime) {
        IPage<TaskCheckInPO> poPage = baseMapper.selectTaskCheckInPage(page, userId, taskPlanId, startTime, endTime);
        return poPage.convert(po -> BeanUtil.copyProperties(po, TaskCheckInBO.class));
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInList(Long userId, LocalDate startTime, LocalDate endTime) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInList(userId, startTime, endTime);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInListByDate(Long userId, LocalDate date) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInListByDate(userId, date);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInListByTaskPlan(Long userId, Long taskPlanId) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInListByTaskPlan(userId, taskPlanId);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public Map<LocalDate, Map<String, Integer>> selectTaskCheckInStatistics(Long userId, LocalDate startTime, LocalDate endTime) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInStatistics(userId, startTime, endTime);
        Map<LocalDate, Map<String, Integer>> result = new HashMap<>();
        
        for (TaskCheckInPO po : poList) {
            LocalDate checkDate = po.getCheckDate().toInstant()
                .atZone(ZoneId.systemDefault())
                .toLocalDate();
            Map<String, Integer> stats = result.computeIfAbsent(checkDate, k -> {
                Map<String, Integer> map = new HashMap<>();
                map.put("totalCount", 0);
                map.put("completedCount", 0);
                return map;
            });
            
            stats.put("totalCount", stats.get("totalCount") + 1);
            if ("1".equals(po.getCheckStatus())) {
                stats.put("completedCount", stats.get("completedCount") + 1);
            }
        }
        
        return result;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean createTaskCheckIn(TaskCheckInBO taskCheckInBO) {
        TaskCheckInPO po = BeanUtil.copyProperties(taskCheckInBO, TaskCheckInPO.class);
        return save(po);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateTaskCheckIn(TaskCheckInBO taskCheckInBO) {
        TaskCheckInPO po = BeanUtil.copyProperties(taskCheckInBO, TaskCheckInPO.class);
        return updateById(po);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteTaskCheckIn(Long id) {
        return removeById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean deleteTaskCheckInBatch(List<Long> ids) {
        return removeByIds(ids);
    }
} 