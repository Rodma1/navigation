package com.chen.service.category.navigatecategory;
import com.chen.domain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.domain.navigatecategory.CyzNavigateCategoryPO;
import com.chen.domain.navigatecategory.CyzNavigateCategoryDTO;
import com.chen.common.config.mybatisplus.core.IServicePlus;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-22
 * @description:  业务层接口
 */
public interface CyzNavigateCategoryService extends IServicePlus<CyzNavigateCategoryPO, CyzNavigateCategoryBO> {

    List<CyzNavigateCategoryDTO> getAllCategories();

}
