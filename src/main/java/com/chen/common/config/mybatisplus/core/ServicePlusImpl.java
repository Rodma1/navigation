package com.chen.common.config.mybatisplus.core;

import cn.hutool.core.bean.copier.CopyOptions;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.TableInfo;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.baomidou.mybatisplus.core.toolkit.Assert;
import com.baomidou.mybatisplus.core.toolkit.ReflectionKit;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.utils.BeanCopyUtils;
import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.ReflectUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * IServicePlus 实现类
 *
 * @param <M> Mapper类
 * @param <T> 数据实体类
 * @param <B> Bo类
 * @author chenyunzhi
 */
@Slf4j
@SuppressWarnings("unchecked")
public class ServicePlusImpl<M extends BaseMapperPlus<T>, T, B> extends ServiceImpl<M, T> implements IServicePlus<T, B> {

	@Autowired
	protected M  baseMapper;

	@Override
	public M getBaseMapper() {
		return baseMapper;
	}


	protected Class<T> entityClass = currentModelClass();

	@Override
	public Class<T> getEntityClass() {
		return entityClass;
	}

	protected Class<M> mapperClass = currentMapperClass();

	protected Class<B> boClass = currentVoClass();

	public Class<B> getBoClass() {
		return boClass;
	}

	@Override
	protected Class<M> currentMapperClass() {
		return (Class<M>) ReflectionKit.getSuperClassGenericType(this.getClass(), ServicePlusImpl.class, 0);
	}

	@Override
	protected Class<T> currentModelClass() {
		return (Class<T>) ReflectionKit.getSuperClassGenericType(this.getClass(), ServicePlusImpl.class, 1);
	}

	protected Class<B> currentVoClass() {
		return (Class<B>) ReflectionKit.getSuperClassGenericType(this.getClass(), ServicePlusImpl.class, 2);
	}

	/**
	 * 单条执行性能差 适用于列表对象内容不确定
	 */
	@Override
	public boolean saveBatch(Collection<T> entityList, int batchSize) {
		return super.saveBatch(entityList, batchSize);
	}

	@Override
	public boolean saveOrUpdate(T entity) {
		return super.saveOrUpdate(entity);
	}

	@Override
	public List<B> listBo() {
		List<T> list = this.list();
		if (list == null) {
			return null;
		}
		return BeanUtils.copyList(list, boClass);
	}

	/**
	 * 单条执行性能差 适用于列表对象内容不确定
	 */
	@Override
	public boolean saveOrUpdateBatch(Collection<T> entityList, int batchSize) {
		return super.saveOrUpdateBatch(entityList, batchSize);
	}

	@Override
	public boolean updateBatchById(Collection<T> entityList, int batchSize) {
		return super.updateBatchById(entityList, batchSize);
	}

	/**
	 * 单sql批量插入( 全量填充 无视数据库默认值 )
	 * 适用于无脑插入
	 */
	@Override
	public boolean saveBatch(Collection<T> entityList) {
		return saveBatch(entityList, DEFAULT_BATCH_SIZE);
	}

	@Override
	public boolean saveOrUpdateBatch(Collection<T> entityList) {
		return saveOrUpdateBatch(entityList, DEFAULT_BATCH_SIZE);
	}

	@Override
	public boolean updateBatchById(Collection<T> entityList) {
		return updateBatchById(entityList, DEFAULT_BATCH_SIZE);
	}

	/**
	 * 单sql批量插入( 全量填充 )
	 */
	@Override
	public boolean saveAll(Collection<T> entityList) {
		if (CollUtil.isEmpty(entityList)) {
			return false;
		}
		return baseMapper.insertAll(entityList) == entityList.size();
	}

	/**
	 * 全量保存或更新 ( 按主键区分 )
	 */
	@Override
	public boolean saveOrUpdateAll(Collection<T> entityList) {
		if (CollUtil.isEmpty(entityList)) {
			return false;
		}
		TableInfo tableInfo = TableInfoHelper.getTableInfo(entityClass);
		Assert.notNull(tableInfo, "error: can not execute. because can not find cache of TableInfo for entity!");
		String keyProperty = tableInfo.getKeyProperty();
		Assert.notEmpty(keyProperty, "error: can not execute. because can not find column for id from entity!");
		List<T> addList = new ArrayList<>();
		List<T> updateList = new ArrayList<>();
		int row = 0;
		for (T entity : entityList) {
			Object id = ReflectUtils.invokeGetter(entity, keyProperty);
			if (ObjectUtil.isNull(id)) {
				addList.add(entity);
			} else {
				updateList.add(entity);
			}
		}
		if (CollUtil.isNotEmpty(updateList) && updateBatchById(updateList)) {
			row += updateList.size();
		}
        if (CollUtil.isNotEmpty(addList)) {
            row += baseMapper.insertAll(addList);
        }
		return row == entityList.size();
	}

	/**
	 * 根据 ID 查询
	 *
	 * @param id 主键ID
	 */
	@Override
	public B getBoById(Serializable id, CopyOptions copyOptions) {
		T t = getBaseMapper().selectById(id);
		return BeanCopyUtils.oneCopy(t, copyOptions, boClass);
	}

	/**
	 * 查询（根据ID 批量查询）
	 *
	 * @param idList 主键ID列表
	 */
	@Override
	public List<B> listBoByIds(Collection<? extends Serializable> idList, CopyOptions copyOptions) {
		List<T> list = getBaseMapper().selectBatchIds(idList);
		if (list == null) {
			return null;
		}
		return BeanCopyUtils.listCopy(list, copyOptions, boClass);
	}

	/**
	 * 查询（根据 columnMap 条件）
	 *
	 * @param columnMap 表字段 map 对象
	 */
	@Override
	public List<B> listBoByMap(Map<String, Object> columnMap, CopyOptions copyOptions) {
		List<T> list = getBaseMapper().selectByMap(columnMap);
		if (list == null) {
			return null;
		}
		return BeanCopyUtils.listCopy(list, copyOptions, boClass);
	}

	/**
	 * 根据 Wrapper，查询一条记录 <br/>
	 * <p>结果集，如果是多个会抛出异常，随机取一条加上限制条件 wrapper.last("LIMIT 1")</p>
	 *
	 * @param queryWrapper 实体对象封装操作类 {@link com.baomidou.mybatisplus.core.conditions.query.QueryWrapper}
	 */
	@Override
	public B getBoOne(Wrapper<T> queryWrapper, CopyOptions copyOptions) {
		T t = getOne(queryWrapper, true);
		return BeanCopyUtils.oneCopy(t, copyOptions, boClass);
	}

	/**
	 * 查询列表
	 *
	 * @param queryWrapper 实体对象封装操作类 {@link com.baomidou.mybatisplus.core.conditions.query.QueryWrapper}
	 */
	@Override
	public List<B> listBo(Wrapper<T> queryWrapper, CopyOptions copyOptions) {
		List<T> list = getBaseMapper().selectList(queryWrapper);
		if (list == null) {
			return null;
		}
		return BeanCopyUtils.listCopy(list, copyOptions, boClass);
	}

	/**
	 * 翻页查询
	 *
	 * @param page         翻页对象
	 * @param queryWrapper 实体对象封装操作类
	 */
	@Override
	public PagePlus<T, B> pageBo(PagePlus<T, B> page, Wrapper<T> queryWrapper, CopyOptions copyOptions) {
		PagePlus<T, B> result = getBaseMapper().selectPage(page, queryWrapper);
		List<B> volist = BeanCopyUtils.listCopy(result.getRecords(), copyOptions, boClass);
		result.setRecordsVo(volist);
		return result;
	}

}
