package com.chen.common.config.mybatisplus.core.command;


import com.chen.common.exception.ServiceException;

/**
 * @author chenyunzhi
 */
public interface BaseBizCommand<T> {

    T buildInsertPo() throws ServiceException;

    T buildDeletePo() throws ServiceException;

    T buildUpdatePo() throws ServiceException;
}
