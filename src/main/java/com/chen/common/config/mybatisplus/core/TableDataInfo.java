package com.chen.common.config.mybatisplus.core;


import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/**
 * 表格分页数据对象
 *
 * @author cwaf
 */

@Data
@Accessors(chain = true)
public class TableDataInfo<T> implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 总记录数
	 */
	private long total;

	/**
	 * 列表数据
	 */
	private List<T> rows;

	/**
	 * 消息状态码
	 */
	private int code;

	/**
	 * 消息内容
	 */
	private String msg;

	/**
	 * 分页
	 *
	 * @param list  列表数据
	 * @param total 总记录数
	 */
	public TableDataInfo(List<T> list, long total) {
		this.rows = list;
		this.total = total;
	}

    public TableDataInfo() {
        this.rows = Collections.emptyList();
        this.total = 0;
    }
}
