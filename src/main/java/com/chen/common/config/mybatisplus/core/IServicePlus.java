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
 * @param <B> Bo类
 * @author chenyunzhi
 */
public interface IServicePlus<T, B> extends IService<T> {

	/**
	 * @param id          主键id
	 * @param copyOptions copy条件
	 * @return V对象
	 */
	B getBoById(Serializable id, CopyOptions copyOptions);

	default B getBoById(Serializable id) {
		return getBoById(id, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default B getBoById(Serializable id, Function<T, B> convertor) {
		return convertor.apply(getById(id));
	}

	/**
	 * @param idList      id列表
	 * @param copyOptions copy条件
	 * @return V对象
	 */
	List<B> listBoByIds(Collection<? extends Serializable> idList, CopyOptions copyOptions);

	default List<B> listBoByIds(Collection<? extends Serializable> idList) {
		return listBoByIds(idList, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<B> listBoByIds(Collection<? extends Serializable> idList,
								Function<Collection<T>, List<B>> convertor) {
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
	List<B> listBoByMap(Map<String, Object> columnMap, CopyOptions copyOptions);

	default List<B> listBoByMap(Map<String, Object> columnMap) {
		return listBoByMap(columnMap, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<B> listBoByMap(Map<String, Object> columnMap,
								Function<Collection<T>, List<B>> convertor) {
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
	B getBoOne(Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default B getBoOne(Wrapper<T> queryWrapper) {
		return getBoOne(queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default B getBoOne(Wrapper<T> queryWrapper, Function<T, B> convertor) {
		return convertor.apply(getOne(queryWrapper, true));
	}



	/**
	 * @param queryWrapper 查询条件
	 * @param copyOptions  copy条件
	 * @return V对象
	 */
	List<B> listBo(Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default List<B> listBo(Wrapper<T> queryWrapper) {
		return listBo(queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default List<B> listBo(Wrapper<T> queryWrapper, Function<Collection<T>, List<B>> convertor) {
		List<T> list = getBaseMapper().selectList(queryWrapper);
		if (list == null) {
			return null;
		}
		return convertor.apply(list);
	}



	/**
	 * @param convertor 自定义转换器
	 */
	default List<B> listBo(Function<Collection<T>, List<B>> convertor) {
		return listBo(Wrappers.emptyWrapper(), convertor);
	}

	/**
	 * @param page         分页对象
	 * @param queryWrapper 查询条件
	 * @param copyOptions  copy条件
	 * @return V对象
	 */
	PagePlus<T, B> pageBo(PagePlus<T, B> page, Wrapper<T> queryWrapper, CopyOptions copyOptions);

	default PagePlus<T, B> pageBo(PagePlus<T, B> page, Wrapper<T> queryWrapper) {
		return pageBo(page, queryWrapper, new CopyOptions());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default PagePlus<T, B> pageBo(PagePlus<T, B> page, Wrapper<T> queryWrapper,
								  Function<Collection<T>, List<B>> convertor) {
		PagePlus<T, B> result = getBaseMapper().selectPage(page, queryWrapper);
		return result.setRecordsVo(convertor.apply(result.getRecords()));
	}

	default PagePlus<T, B> pageBo(PagePlus<T, B> page) {
		return pageBo(page, Wrappers.emptyWrapper());
	}

	/**
	 * @param convertor 自定义转换器
	 */
	default PagePlus<T, B> pageBo(PagePlus<T, B> page, Function<Collection<T>, List<B>> convertor) {
		return pageBo(page, Wrappers.emptyWrapper(), convertor);
	}

	boolean saveAll(Collection<T> entityList);

	boolean saveOrUpdateAll(Collection<T> entityList);


	List<B> listBo();
}

