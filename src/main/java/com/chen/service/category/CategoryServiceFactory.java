package com.chen.service.category;

import com.chen.domain.common.category.CommandCategory;
import com.chen.service.category.common.CategoryService;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/31 14:31
 * @Description:
 */
public interface CategoryServiceFactory {
    <T extends CommandCategory> CategoryService<T> getService(String categoryType);
}
