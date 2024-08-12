package com.chen.service.phrasesservice.phrases;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.domain.phrasesdomain.phrases.PhrasesDTO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPO;
import com.chen.domain.phrasesdomain.phrases.PhrasesBO;
import com.chen.common.config.mybatisplus.core.IServicePlus;
import com.chen.domain.phrasesdomain.phrases.PhrasesPagesQuery;

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
