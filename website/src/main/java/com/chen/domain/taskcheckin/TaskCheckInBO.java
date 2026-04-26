package com.chen.domain.taskcheckin;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.chen.common.exception.ServiceException;
import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.utils.BeanUtils;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

@Getter
@Setter
@TableName("cyz_task_check_in")
@Schema(name = "TaskCheckInBO", description = "任务打卡业务对象")
public class TaskCheckInBO implements Serializable, BaseBizCommand<TaskCheckInPO> {

    private static final long serialVersionUID = 1L;
    @Schema(name = "主键")
    private Long id;
    @Schema(name = "任务ID")
    private Long taskId;

    @Schema(name = "打卡日期")
    private Date checkDate;

    @Schema(name = "完成状态（已完成、部分完成、未完成）")
    private String checkStatus;

    @Schema(name = "打卡内容（实际完成情况）")
    private String checkContent;

    @Schema(name = "备注（如遇到的问题、心得等）")
    private String checkNote;

    @Schema(name = "实际开始时间（如 09:30）")
    private String actualStartTime;

    @Schema(name = "实际结束时间（如 11:00）")
    private String actualEndTime;

    @Schema(name = "任务名")
    private String taskPlanName;
    @Override
    public TaskCheckInPO buildInsertPo() throws ServiceException {
        TaskCheckInPO po = BeanUtils.copyObject(this, TaskCheckInPO.class);
        po.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }

    @Override
    public TaskCheckInPO buildUpdatePo() throws ServiceException {
        TaskCheckInPO po = BeanUtils.copyObject(this, TaskCheckInPO.class);
        po.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }

    @Override
    public TaskCheckInPO buildDeletePo() throws ServiceException {
        return null;
    }
} 