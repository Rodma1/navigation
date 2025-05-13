package org.chen.service;

import org.chen.entity.BaseEntity;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;


public interface BaseDataService<Entity extends BaseEntity> {


    Entity add(Entity entity);

    /**
     * 添加一个实体，实体内应没有id，返回添加成功后的实体
     */
    Entity save(Entity entity);

    /**
     * 批量添加一个实体集合，返回添加成功后的集合
     */
    List<Entity> saveAll(List<Entity> entities);

    /**
     * 查询
     */
    Page<Entity> findAll(Specification<Entity> spec, Pageable pageable);

    /**
     * 更新实体，必须保证id字段不为空
     */
    Entity update(Entity entity);

    /**
     * 根据id获取实体，如果一级缓存中存在，则从以及缓存中取
     */
    Entity get(String id);

    /**
     * 根据id查询，过滤掉isDeleted=1的实体
     */
    Entity find(String id);

    /**
     * 删除一个实体，实体必须有id
     */
    void delete(Entity entity);

    /**
     * 根据id删除实体
     */
    void deleteById(String id);

    /**
     * 判断是否存在
     */
    boolean exists(String id);

    /**
     * 根据传入的example 进行查询，不分页，且条件都是equals
     */
    List<Entity> find(Example<Entity> example);


    /**
     * 分页查询，但是没有查询条件
     */
    Page<Entity> find(Pageable pageable);

    /**
     * 根据传入的Bean和sort查询对应的entity
     * 不进行分页，查出来的是全部
     */
    List<Entity> findByCondition(Entity entity, Sort sort);

    /**
     * 条件查询，根据bean中定义的字段名进行查询，
     * 具体字段命名方式参见 BaseDataServiceImpl
     */
    List<Entity> findByCondition(Entity entity);

    /**
     * 条件查询并分页
     */
    Page<Entity> findByCondition(Pageable pageable, Entity entity);

    List<Entity> list();
}