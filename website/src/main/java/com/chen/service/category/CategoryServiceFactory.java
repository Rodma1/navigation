package com.chen.service.category;

import com.chen.common.category.CommandCategory;
import com.chen.common.category.CategoryService;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/31 14:31
 * @Description:
 */
public interface CategoryServiceFactory {

    /**
     * 获取对应的实体类
     * @param categoryType 类别类型
     * @return 实体类
     */
    <T extends CommandCategory> Class<T> getDataClass(String categoryType);

    /**
     * 获取对应的服务
     * @param categoryType 类别的实体类
     * @return 服务名
     * @param <T> 类别
     */
    <T extends CommandCategory> CategoryService<T> getService(Class<T> categoryType);


}
