package com.chen.domain.taskplan;

import com.baomidou.mybatisplus.annotation.TableName;
import com.chen.common.exception.ServiceException;
import com.chen.config.mybatisplus.core.command.BaseBizCommand;
import com.chen.utils.BeanUtils;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.sql.Timestamp;

@Getter
@Setter
@TableName("cyz_task_plan")
@Schema(name = "TaskPlanBO", description = "任务计划业务对象")
public class TaskPlanBO implements Serializable, BaseBizCommand<TaskPlanPO> {

    private static final long serialVersionUID = 1L;
    @Schema(name = "主键")
    private Long id;

    @Schema(name = "任务名称")
    private String taskName;

    @Schema(name = "任务类型（数学、英语、专业课、面试、生活等）")
    private String taskType;

    @Schema(name = "开始日期（如：2026-04-26）")
    private String startTime;

    @Schema(name = "完成日期（如：2026-06-30），null表示一直持续")
    private String endTime;

    @Schema(name = "任务内容")
    private String taskContent;

    @Schema(name = "执行星期（1-7，多个用逗号分隔，null表示每天）")
    private String weekDay;

    @Schema(name = "排序")
    private Integer sort;

    @Schema(name = "状态（0正常 1停用）")
    private String status;

    @Override
    public TaskPlanPO buildInsertPo() throws ServiceException {
        TaskPlanPO po = BeanUtils.copyObject(this, TaskPlanPO.class);
        po.setCreateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }

    @Override
    public TaskPlanPO buildDeletePo() throws ServiceException {
        return null;
    }

    @Override
    public TaskPlanPO buildUpdatePo() throws ServiceException {
        TaskPlanPO po = BeanUtils.copyObject(this, TaskPlanPO.class);
        po.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        return po;
    }
} 