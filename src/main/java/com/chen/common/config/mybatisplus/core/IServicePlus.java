package com.chen.common.config.mybatisplus.core;

import cn.hutool.core.bean.copier.CopyOptions;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.IService;
import com.chen.common.config.mybatisplus.page.PagePlus;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/**
 * 自定义 Service 接口, 实现 数据库实体与 vo 对象转换返回
 *
 * @param <T> 数据实体类
 * @param <D> Dto类
 * @author cwaf
 */
public interface IServicePlus<T, D> extends IService<T> {

	/**
	 * @param id          主键id
	 * @param copyOptions copy条件
	 * @return V对象
	 */
	D getDtoById(Serializable id, CopyOptions copyOptions);

	default D getDtoById(Serializable id) {
		return getDtoById(id, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default D getDtoById(Serializable id, Function<T, D> convertor) {
		return convertor.apply(getById(id));
	}

	/**
	 * @param idList      id列表
	 * @param copyOptions copy条件
	 * @return V对象
	 */
	List<D> listDtoByIds(Collection<? extends Serializable> idList, CopyOptions copyOptions);

	default List<D> listDtoByIds(Collection<? extends Serializable> idList) {
		return listDtoByIds(idList, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<D> listVoByIds(Collection<? extends Serializable> idList,
								Function<Collection<T>, List<D>> convertor) {
		List<T> list = getBaseMapper().selectBatchIds(idList);
		if (list == null) {
			return null;
		}
		return convertor.apply(list);
	}

	/**
	 * @param columnMap   表字段 map 对象
	 * @param copyOptions copy条件
	 * @return V对象
	 */
	List<D> listDtoByMap(Map<String, Object> columnMap, CopyOptions copyOptions);

	default List<D> listDtoByMap(Map<String, Object> columnMap) {
		return listDtoByMap(columnMap, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<D> listDtoByMap(Map<String, Object> columnMap,
								Function<Collection<T>, List<D>> convertor) {
		List<T> list = getBaseMapper().selectByMap(columnMap);
		if (list == null) {
			return null;
		}
		return convertor.apply(list);
	}

	/**
	 * @param queryWrapper 查询条件
	 * @param copyOptions  copy条件
	 * @return V对象
	 */
	D getVoOne(Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default D getVoOne(Wrapper<T> queryWrapper) {
		return getVoOne(queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default D getVoOne(Wrapper<T> queryWrapper, Function<T, D> convertor) {
		return convertor.apply(getOne(queryWrapper, true));
	}

	/**
	 * @param queryWrapper 查询条件
	 * @param copyOptions  copy条件
	 * @return V对象
	 */
	List<D> listDto(Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default List<D> listDto(Wrapper<T> queryWrapper) {
		return listDto(queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<D> listDto(Wrapper<T> queryWrapper, Function<Collection<T>, List<D>> convertor) {
		List<T> list = getBaseMapper().selectList(queryWrapper);
		if (list == null) {
			return null;
		}
		return convertor.apply(list);
	}



	/**
	 * @param convertor 自定义转换器
	 */
	default List<D> listDto(Function<Collection<T>, List<D>> convertor) {
		return listDto(Wrappers.emptyWrapper(), convertor);
	}

	/**
	 * @param page         分页对象
	 * @param queryWrapper 查询条件
	 * @param copyOptions  copy条件
	 * @return V对象
	 */
	PagePlus<T, D> pageDto(PagePlus<T, D> page, Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default PagePlus<T, D> pageDto(PagePlus<T, D> page, Wrapper<T> queryWrapper) {
		return pageDto(page, queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default PagePlus<T, D> pageDto(PagePlus<T, D> page, Wrapper<T> queryWrapper,
								  Function<Collection<T>, List<D>> convertor) {
		PagePlus<T, D> result = getBaseMapper().selectPage(page, queryWrapper);
		return result.setRecordsVo(convertor.apply(result.getRecords()));
	}

	default PagePlus<T, D> pageDto(PagePlus<T, D> page) {
		return pageDto(page, Wrappers.emptyWrapper());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default PagePlus<T, D> pageDto(PagePlus<T, D> page, Function<Collection<T>, List<D>> convertor) {
		return pageDto(page, Wrappers.emptyWrapper(), convertor);
	}

	boolean saveAll(Collection<T> entityList);

	boolean saveOrUpdateAll(Collection<T> entityList);
}

