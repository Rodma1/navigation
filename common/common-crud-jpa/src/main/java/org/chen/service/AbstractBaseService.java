package org.chen.service;

import cn.hutool.core.collection.CollUtil;
import com.chen.common.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.chen.dao.BaseDao;
import org.chen.entity.BaseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Slf4j
@Transactional(rollbackFor = Exception.class)
public abstract class AbstractBaseService<E extends BaseEntity, Dao extends BaseDao<E>> implements BaseDataService<E> {

	@Autowired
	private Dao dao;

	public List<E> findAll(Sort.Direction sort, String field) {
		return dao.findAll(Sort.by(sort, field));
	}

	public E add(E entity) {
		if (StringUtils.isNotBlank(entity.getId())) {
			throw new ServiceException("新增id必须为空");
		}
		if (Objects.isNull(entity.getDelFlag())) {
			entity.setDelFlag("0");
		}
		return dao.save(entity);
	}

	@Override
	public E save(E entity) {
		if (Objects.isNull(entity.getDelFlag())) {
			entity.setDelFlag("0");
		}
		return dao.save(entity);
	}

	@Override
	public List<E> saveAll(List<E> list) {
		return dao.saveAll(list);
	}

	@Override
	public Page<E> findAll(Specification<E> spec, Pageable pageable) {
		return dao.findAll(spec, pageable);
	}

	public List<E> findAll(Specification<E> spec, Sort sort) {
		return dao.findAll(spec, sort);
	}

	public List<E> findAll(Specification<E> spec) {
		return dao.findAll(spec);
	}

	public E findOne(Specification<E> spec) {
		return dao.findOne(spec).orElse(null);
	}

	@Override
	public E update(E entity) {
		entity.setUpdateTime(LocalDateTime.now());
		if (entity.getDelFlag() == null) {
			entity.setDelFlag("0");
		}
		return dao.save(entity);
	}


	@Override
	public E get(String id) {
		return dao.findById(id).orElse(null);
	}

	public List<E> list() {
		return dao.findAll();
	}

	@Override
	public void delete(E entity) {
		entity.setDelFlag("1");
		dao.save(entity);
	}

	/* 真删除 */
	public long delete(Specification<E> spec) {
		return dao.delete(spec);
	}

	/* 逻辑删 */
	public void delLg(Specification<E> spec) {
		List<E> all = dao.findAll(spec);
		if (CollUtil.isNotEmpty(all)) {
			all.forEach(e -> e.setDelFlag("1"));
			dao.saveAll(all);
		}
	}

	/* 计数 */
	public long count(Specification<E> spec) {
		return dao.count(spec);
	}

	/* 是否存在 */
	public boolean exists(Specification<E> spec) {
		return dao.exists(spec);
	}

	@Override
	public void deleteById(String id) {
        Optional<E> byId = dao.findById(id);
        // 逻辑删除
        if (byId.isPresent()) {
			E e = byId.get();
			e.setDelFlag("1");
			dao.save(e);
		}
	}

	@Override
	public boolean exists(String id) {
		return dao.existsById(id);
	}

	/**
	 * 是否存在(不含已标记为删除的数据)
	 * @param id id
	 */
	public boolean existsAndNoDelFlag(String id) {
		return dao.exists((root, query, cb) -> cb.and(
				cb.equal(root.get("id"), id),
				/* 未删除 */
				cb.equal(root.get("isDeleted"), 0)
		));
	}

	@Override
	public List<E> find(Example<E> example) {
		return dao.findAll(example);
	}

	@Override
	public Page<E> find(Pageable pageable) {
		return dao.findAll(pageable);
	}





	
}
