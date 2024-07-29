package com.chen.service.common;

import com.chen.domain.common.category.BaseCategory;

import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/29 14:01
 * @Description:
 */
public interface CategoryService<T extends BaseCategory> {

    /**
     * 获取所有类别
     */
    List<T> getAllCategories();

    /**
     * 获取类别信息
     */
    T getCategoryById(Long id);

    /**
     * 创建类别
     */
    void createCategory(T category);

    /**
     * 更新类别
     */
    void updateCategory(T category);


    /**
     * 删除类别
     */
    void deleteCategory(Long id);

}
