package com.chen.service.category;

import com.chen.domain.common.category.BaseCategory;
import com.chen.service.common.CategoryService;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/31 14:31
 * @Description:
 */
public interface CategoryServiceFactory {
    <T extends BaseCategory> CategoryService<T> getService(String categoryType);
}
