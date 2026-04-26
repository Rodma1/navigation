package com.chen.service.task;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.chen.config.mybatisplus.core.IServicePlus;
import com.chen.domain.taskcheckin.TaskCalendarVO;
import com.chen.domain.taskcheckin.TaskCheckInBO;
import com.chen.domain.taskcheckin.TaskCheckInPO;
import com.chen.domain.taskcheckin.TaskTodayVO;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

public interface TaskCheckInService extends IServicePlus<TaskCheckInPO, TaskCheckInBO> {

    IPage<TaskCheckInBO> selectTaskCheckInPage(Page<TaskCheckInPO> page, Long userId, Long taskPlanId, Date startTime, Date endTime);

    List<TaskCheckInBO> selectTaskCheckInList(Long userId, Date startTime, Date endTime);

    List<TaskCheckInBO> selectTaskCheckInListByDate(Long userId, Date date);

    List<TaskCheckInBO> selectTaskCheckInListByTaskPlan(Long userId, Long taskPlanId);

    Map<LocalDate, Map<String, Integer>> selectTaskCheckInStatistics(Long userId, Date startTime, Date endTime);

    List<TaskTodayVO> getTodayTasks(LocalDate date);

    TaskCheckInBO quickCheckIn(TaskCheckInBO bo);

    TaskCalendarVO getCalendarStats(String month);

    boolean createTaskCheckIn(TaskCheckInBO taskCheckInBO);

    boolean updateTaskCheckIn(TaskCheckInBO taskCheckInBO);

    boolean deleteTaskCheckIn(Long id);

    boolean deleteTaskCheckInBatch(List<Long> ids);
}
