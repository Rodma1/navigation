package com.chen.dao;

import com.chen.entity.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.QueryByExampleExecutor;


@NoRepositoryBean
public interface BaseDao<T, ID> extends JpaRepository<T, ID>, JpaSpecificationExecutor<T>, QueryByExampleExecutor<T> {
    <E extends BaseEntity> E findByIdAndDelFlag(ID id, String delFlag);

}
