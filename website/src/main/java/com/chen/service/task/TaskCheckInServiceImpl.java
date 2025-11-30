package com.chen.service.task;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.mapper.TaskCheckInMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class TaskCheckInServiceImpl extends ServicePlusImpl<TaskCheckInMapper, TaskCheckInPO, TaskCheckInBO> implements TaskCheckInService {

    private final TaskPlanService taskPlanService;
    @Override
    public IPage<TaskCheckInBO> selectTaskCheckInPage(Page<TaskCheckInPO> page, Long userId, Long taskPlanId, Date startTime, Date endTime) {
        IPage<TaskCheckInPO> poPage = baseMapper.selectTaskCheckInPage(page, userId, taskPlanId, startTime, endTime);
        IPage<TaskCheckInBO> convert = poPage.convert(po -> BeanUtil.copyProperties(po, TaskCheckInBO.class));
        List<Long> taskPlanIds = convert.getRecords().stream().map(TaskCheckInBO::getTaskId).toList();
        if (ObjectUtil.isNotEmpty(taskPlanIds)) {
            Map<Long, String> taskPlanNameMaps = taskPlanService.list(new LambdaQueryWrapper<TaskPlanPO>().in(TaskPlanPO::getId, taskPlanIds))
                    .stream().collect(Collectors.toMap(TaskPlanPO::getId, TaskPlanPO::getTaskName));
            // 设置名字
            convert.getRecords().forEach(record -> record.setTaskPlanName(taskPlanNameMaps.get(record.getTaskId())));
        }
        return convert;
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInList(Long userId, Date startTime, Date endTime) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInList(userId, startTime, endTime);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInListByDate(Long userId, Date date) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInListByDate(userId, date);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public List<TaskCheckInBO> selectTaskCheckInListByTaskPlan(Long userId, Long taskPlanId) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInListByTaskPlan(userId, taskPlanId);
        return BeanUtil.copyToList(poList, TaskCheckInBO.class);
    }

    @Override
    public Map<LocalDate, Map<String, Integer>> selectTaskCheckInStatistics(Long userId, Date startTime, Date endTime) {
        List<TaskCheckInPO> poList = baseMapper.selectTaskCheckInStatistics(userId, startTime, endTime);
        Map<LocalDate, Map<String, Integer>> result = new HashMap<>();
        Map<String, Integer> map = new HashMap<>();
        map.put("totalCount", 0);
        map.put("completedCount", 0);
        for (TaskCheckInPO po : poList) {
            map.put("totalCount", map.get("totalCount")  + po.getTotalCount());
            map.put("completedCount", map.get("completedCount")  + po.getCompletedCount());
        }
        result.put( LocalDate.ofInstant(startTime.toInstant(), ZoneId.systemDefault()), map);
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