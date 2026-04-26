package com.chen.service.task;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.common.exception.ServiceException;
import com.chen.config.mybatisplus.core.ServicePlusImpl;
import com.chen.domain.taskcheckin.TaskCalendarVO;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.domain.taskcheckin.TaskTodayVO;
import com.chen.domain.taskplan.TaskPlanPO;
import com.chen.mapper.TaskCheckInMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.TextStyle;
import java.util.*;
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
        Map<LocalDate, Map<String, Integer>> result = new LinkedHashMap<>();
        for (TaskCheckInPO po : poList) {
            LocalDate date = po.getCheckDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            Map<String, Integer> map = new HashMap<>();
            map.put("totalCount", po.getTotalCount());
            map.put("completedCount", po.getCompletedCount());
            result.put(date, map);
        }
        return result;
    }

    @Override
    public List<TaskTodayVO> getTodayTasks(LocalDate date) {
        int dayOfWeek = date.getDayOfWeek().getValue();
        String weekDayStr = String.valueOf(dayOfWeek);

        List<TaskPlanPO> plans = taskPlanService.list(new LambdaQueryWrapper<TaskPlanPO>()
                .eq(TaskPlanPO::getDelFlag, "0")
                .eq(TaskPlanPO::getStatus, "1")
                .and(wrapper -> wrapper
                        .isNull(TaskPlanPO::getStartTime)
                        .or()
                        .le(TaskPlanPO::getStartTime, date.toString())
                )
                .and(wrapper -> wrapper
                        .isNull(TaskPlanPO::getEndTime)
                        .or()
                        .ge(TaskPlanPO::getEndTime, date.toString())
                )
                .and(wrapper -> wrapper
                        .isNull(TaskPlanPO::getWeekDay)
                        .or()
                        .eq(TaskPlanPO::getWeekDay, "")
                        .or()
                        .like(TaskPlanPO::getWeekDay, weekDayStr)
                )
        );

        Date checkDate = Date.from(date.atStartOfDay(ZoneId.systemDefault()).toInstant());
        List<TaskCheckInPO> checkIns = list(new LambdaQueryWrapper<TaskCheckInPO>()
                .eq(TaskCheckInPO::getCheckDate, checkDate)
                .eq(TaskCheckInPO::getDelFlag, "0")
        );
        Map<Long, TaskCheckInPO> checkInMap = checkIns.stream()
                .collect(Collectors.toMap(TaskCheckInPO::getTaskId, po -> po, (a, b) -> a));

        return plans.stream().map(plan -> {
            TaskTodayVO vo = new TaskTodayVO();
            vo.setTaskId(plan.getId());
            vo.setTaskName(plan.getTaskName());
            vo.setTaskType(plan.getTaskType());
            vo.setTaskContent(plan.getTaskContent());
            vo.setStartTime(plan.getStartTime());
            vo.setEndTime(plan.getEndTime());
            vo.setSort(plan.getSort() != null ? plan.getSort() : 0);

            TaskCheckInPO checkIn = checkInMap.get(plan.getId());
            if (checkIn != null) {
                vo.setChecked(true);
                vo.setCheckInId(checkIn.getId());
                vo.setCheckStatus(checkIn.getCheckStatus());
                vo.setCheckContent(checkIn.getCheckContent());
                vo.setCheckNote(checkIn.getCheckNote());
                vo.setActualStartTime(checkIn.getActualStartTime());
                vo.setActualEndTime(checkIn.getActualEndTime());
            } else {
                vo.setChecked(false);
            }
            return vo;
        }).sorted(Comparator.comparingInt(TaskTodayVO::getSort)).collect(Collectors.toList());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public TaskCheckInBO quickCheckIn(TaskCheckInBO bo) {
        Date checkDate = bo.getCheckDate();
        Long taskId = bo.getTaskId();

        LambdaQueryWrapper<TaskCheckInPO> wrapper = new LambdaQueryWrapper<TaskCheckInPO>()
                .eq(TaskCheckInPO::getTaskId, taskId)
                .eq(TaskCheckInPO::getCheckDate, checkDate)
                .eq(TaskCheckInPO::getDelFlag, "0");
        long count = count(wrapper);
        if (count > 0) {
            throw new ServiceException("该任务今日已打卡");
        }

        if (bo.getCheckStatus() == null) {
            bo.setCheckStatus("1");
        }
        TaskCheckInPO po = bo.buildInsertPo();
        save(po);
        bo.setId(po.getId());
        return bo;
    }

    @Override
    public TaskCalendarVO getCalendarStats(String month) {
        LocalDate start = LocalDate.parse(month + "-01");
        LocalDate end = start.plusMonths(1).minusDays(1);

        Date startDate = Date.from(start.atStartOfDay(ZoneId.systemDefault()).toInstant());
        Date endDate = Date.from(end.atStartOfDay(ZoneId.systemDefault()).toInstant());

        List<TaskCheckInPO> stats = baseMapper.selectTaskCheckInStatistics(null, startDate, endDate);

        List<TaskCalendarVO.DayStat> dayStats = new ArrayList<>();
        for (TaskCheckInPO po : stats) {
            LocalDate date = po.getCheckDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            int total = po.getTotalCount() != null ? po.getTotalCount() : 0;
            int completed = po.getCompletedCount() != null ? po.getCompletedCount() : 0;
            int rate = total > 0 ? (completed * 100 / total) : 0;

            TaskCalendarVO.DayStat dayStat = new TaskCalendarVO.DayStat();
            dayStat.setDate(date.toString());
            dayStat.setTotalCount(total);
            dayStat.setCompletedCount(completed);
            dayStat.setCompletionRate(rate);
            dayStats.add(dayStat);
        }

        TaskCalendarVO vo = new TaskCalendarVO();
        vo.setMonth(month);
        vo.setDayStats(dayStats);

        // 计算连续打卡天数
        int streak = calculateStreak(LocalDate.now());
        vo.setStreak(streak);

        return vo;
    }

    private int calculateStreak(LocalDate today) {
        int streak = 0;
        LocalDate date = today;
        while (true) {
            Date checkDate = Date.from(date.atStartOfDay(ZoneId.systemDefault()).toInstant());
            long count = count(new LambdaQueryWrapper<TaskCheckInPO>()
                    .eq(TaskCheckInPO::getCheckDate, checkDate)
                    .eq(TaskCheckInPO::getDelFlag, "0")
                    .eq(TaskCheckInPO::getCheckStatus, "1"));
            if (count > 0) {
                streak++;
                date = date.minusDays(1);
            } else {
                break;
            }
        }
        return streak;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean createTaskCheckIn(TaskCheckInBO taskCheckInBO) {
        TaskCheckInPO po = taskCheckInBO.buildInsertPo();
        return save(po);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateTaskCheckIn(TaskCheckInBO taskCheckInBO) {
        TaskCheckInPO po = taskCheckInBO.buildUpdatePo();
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
