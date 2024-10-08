package com.chen.common.utils;

import cn.hutool.core.bean.copier.BeanCopier;
import cn.hutool.core.bean.copier.CopyOptions;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.ReflectUtil;

import java.util.List;
import java.util.stream.Collectors;

/**
 * bean深拷贝工具
 *
 * @author chenyunzhi
 */
public class BeanCopyUtils {

	/**
	 * 单对象基于class创建拷贝
	 *
	 * @param source      数据来源实体
	 * @param copyOptions copy条件
	 * @param desc        描述对象 转换后的对象
	 * @return desc
	 */
	public static <T, V> V oneCopy(T source, CopyOptions copyOptions, Class<V> desc) {
		V v = ReflectUtil.newInstanceIfPossible(desc);
		return oneCopy(source, copyOptions, v);
	}

	/**
	 * 单对象基于对象创建拷贝
	 *
	 * @param source      数据来源实体
	 * @param copyOptions copy条件
	 * @param desc        转换后的对象
	 * @return desc
	 */
	public static <T, V> V oneCopy(T source, CopyOptions copyOptions, V desc) {
		if (ObjectUtil.isNull(source)) {
			return null;
		}
		return BeanCopier.create(source, desc, copyOptions).copy();
	}

	/**
	 * 列表对象基于class创建拷贝
	 *
	 * @param sourceList  数据来源实体列表
	 * @param copyOptions copy条件
	 * @param desc        描述对象 转换后的对象
	 * @return desc
	 */
	public static <T, V> List<V> listCopy(List<T> sourceList, CopyOptions copyOptions, Class<V> desc) {
		if (ObjectUtil.isNull(sourceList)) {
			return null;
		}
		if (CollUtil.isEmpty(sourceList)) {
			return CollUtil.newArrayList();
		}
		return sourceList.stream()
			.map(source -> oneCopy(source, copyOptions, desc))
			.collect(Collectors.toList());
	}
}
