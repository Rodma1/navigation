package com.chen.service.phrases;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.domain.article.CyzArticleBO;
import com.chen.domain.article.CyzArticleDTO;
import com.chen.domain.article.CyzArticlePagesQuery;
import com.chen.domain.phrases.PhrasesDTO;
import com.chen.domain.phrases.PhrasesPO;
import com.chen.domain.phrases.PhrasesBO;
import com.chen.common.config.mybatisplus.core.IServicePlus;
import com.chen.domain.phrases.PhrasesPagesQuery;
import io.swagger.models.auth.In;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口
 */
public interface PhrasesService extends IServicePlus<PhrasesPO, PhrasesDTO> {

    /**
     * 分页查询
     */
    TableDataInfo<PhrasesDTO> page(PhrasesPagesQuery pagesQuery);

    /**
     * 新增
     */
    Boolean insert(PhrasesBO phrasesBO);

    /**
     * 删除
     */
    Boolean delete(Long id);

    /**
     * 编辑
     */
    Boolean update(PhrasesBO phrasesBO);
}
