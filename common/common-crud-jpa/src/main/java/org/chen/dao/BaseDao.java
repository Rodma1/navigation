package org.chen.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.QueryByExampleExecutor;


@NoRepositoryBean
public interface BaseDao<T> extends JpaRepository<T, String>, JpaSpecificationExecutor<T>, QueryByExampleExecutor<T> {

}
