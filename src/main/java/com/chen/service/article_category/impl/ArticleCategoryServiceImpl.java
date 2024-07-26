package com.chen.service.article_category.impl;

import com.chen.mapper.ArticleCategoryMapper;
import com.chen.domain.article_category.ArticleCategoryPO;
import com.chen.domain.article_category.ArticleCategoryBO;
import com.chen.domain.article_category.ArticleCategoryVO;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.article_category.ArticleCategoryService;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口实现类
 */
@Service
public class ArticleCategoryServiceImpl extends ServicePlusImpl<ArticleCategoryMapper, ArticleCategoryPO, ArticleCategoryBO> implements ArticleCategoryService {

}
