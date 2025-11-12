package com.chen.service;

import cn.hutool.core.collection.CollUtil;
import com.chen.common.exception.ServiceException;
import com.chen.dao.BaseDao;
import com.chen.entity.StringIdEntity;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

@Slf4j
@Transactional(rollbackFor = Exception.class)
public abstract class AbstractBaseService<E extends StringIdEntity, Dao extends BaseDao<E,String>> implements BaseDataService<E> {
	protected final Dao dao;

	@Autowired
	protected AbstractBaseService(Dao dao) {
		this.dao = dao;
	}

	public List<E> findAll(Sort.Direction sort, String field) {
		return dao.findAll(Sort.by(sort, field));
	}

	public E add(E entity) {
		if (StringUtils.isNotBlank(entity.getId())) {
			throw new ServiceException("新增id必须为空");
		}
		fillDefaultFields(entity);
		log.info("新增实体: {}", entity);
		return dao.save(entity);
	}

	@Override
	public E save(E entity) {
		fillDefaultFields(entity);
		return dao.save(entity);
	}

	@Override
	public List<E> saveAll(List<E> list) {
		list.forEach(this::fillDefaultFields);
		return dao.saveAll(list);
	}

	@Override
	@Transactional(readOnly = true)
	public Page<E> findAll(Specification<E> spec, Pageable pageable) {
		return dao.findAll(spec, pageable);
	}

	@Transactional(readOnly = true)
	public List<E> findAll(Specification<E> spec, Sort sort) {
		return dao.findAll(spec, sort);
	}

	@Transactional(readOnly = true)
	public List<E> findAll(Specification<E> spec) {
		return dao.findAll(spec);
	}

	@Transactional(readOnly = true)
	public E findOne(Specification<E> spec) {
		return dao.findOne(spec).orElse(null);
	}
	@Override
	public E find(String id) {
		return dao.findByIdAndDelFlag(id, "0");
	}
	@Override
	public E update(E entity) {
		entity.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		fillDefaultFields(entity);
		log.info("更新实体: {}", entity);
		return dao.save(entity);
	}

	@Override
	@Transactional(readOnly = true)
	public E get(String id) {
		return dao.findById(id).orElse(null);
	}

	@Transactional(readOnly = true)
	public List<E> list() {
		return dao.findAll();
	}

	public List<E> listNotDeleted() {
		return dao.findAll(notDeletedSpec());
	}

	public void logicalDelete(E entity) {
		entity.setDelFlag("1");
		dao.save(entity);
		log.info("逻辑删除实体: {}", entity);
	}

	public long physicalDelete(Specification<E> spec) {
		return dao.delete(spec);
	}

	public void logicalDeleteAll(Specification<E> spec) {
		List<E> all = dao.findAll(spec);
		if (CollUtil.isNotEmpty(all)) {
			all.forEach(e -> e.setDelFlag("1"));
			dao.saveAll(all);
			log.info("批量逻辑删除 {} 条数据", all.size());
		}
	}

	@Transactional(readOnly = true)
	public long count(Specification<E> spec) {
		return dao.count(spec);
	}

	@Transactional(readOnly = true)
	public boolean exists(Specification<E> spec) {
		return dao.exists(spec);
	}

	@Override
	public void deleteById(String id) {
		dao.findById(id).ifPresent(e -> {
			e.setDelFlag("1");
			dao.save(e);
			log.info("根据 ID [{}] 逻辑删除实体", id);
		});
	}

	@Override
	@Transactional(readOnly = true)
	public boolean exists(String id) {
		return dao.existsById(id);
	}

	/**
	 * 是否存在(不含已标记为删除的数据)
	 */
	@Transactional(readOnly = true)
	public boolean existsAndNotDeleted(String id) {
		return dao.exists((root, query, cb) -> cb.and(
				cb.equal(root.get("id"), id),
				cb.equal(root.get("delFlag"), "0")
		));
	}

	@Override
	@Transactional(readOnly = true)
	public List<E> find(Example<E> example) {
		return dao.findAll(example);
	}

	@Override
	@Transactional(readOnly = true)
	public Page<E> find(Pageable pageable) {
		return dao.findAll(pageable);
	}

	/** 公共填充方法 */
	protected void fillDefaultFields(E entity) {
		if (Objects.isNull(entity.getDelFlag())) {
			entity.setDelFlag("0");
		}
	}

	/** 未删除的默认筛选器 */
	protected Specification<E> notDeletedSpec() {
		return (root, query, cb) -> cb.equal(root.get("delFlag"), "0");
	}
}
