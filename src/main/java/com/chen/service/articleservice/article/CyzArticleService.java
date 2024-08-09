package com.chen.service.articleservice.article;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.domain.articledomain.article.CyzArticleDTO;
import com.chen.domain.articledomain.article.CyzArticlePO;
import com.chen.domain.articledomain.article.CyzArticleBO;
import com.chen.common.config.mybatisplus.core.IServicePlus;
import com.chen.domain.articledomain.article.CyzArticlePagesQuery;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-17
 * @description:  业务层接口
 */
public interface CyzArticleService extends IServicePlus<CyzArticlePO,CyzArticleDTO> {

    /**
     * 分页查询
     */
    TableDataInfo<CyzArticleDTO> page(CyzArticlePagesQuery pagesQuery);

    /**
     * 新增
     */
    void insert(CyzArticleBO cyzArticleBO);

    /**
     * 删除
     */
    Boolean delete(Long id);

    /**
     * 编辑
     */
    void update(CyzArticleBO cyzArticleBO);
}
