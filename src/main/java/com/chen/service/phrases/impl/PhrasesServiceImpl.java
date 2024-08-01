package com.chen.service.phrases.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.phrases.*;
import com.chen.mapper.PhrasesMapper;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.phrases.PhrasesService;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口实现类
 */
@Service
public class PhrasesServiceImpl extends ServicePlusImpl<PhrasesMapper, PhrasesPO, PhrasesDTO> implements PhrasesService {

    @Override
    public TableDataInfo<PhrasesDTO> page(PhrasesPagesQuery pagesQuery) {
        LambdaQueryWrapper<PhrasesDTO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getSentence()),PhrasesDTO::getSentence,pagesQuery.getSentence());

        queryWrapper.orderByDesc(PhrasesDTO:: getCreateTime);
        return PageUtils.buildDataInfo(this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build())));
    }

    @Override
    public Boolean insert(PhrasesBO phrasesBO) {
        boolean save = this.save(phrasesBO.buildInsertPo());
        if (!save) {
            throw new ServiceException("新增失败");
        }
        return true;
    }

    @Override
    public Boolean delete(Long id) {
        boolean remove = this.removeById(id);
        if (!remove) {
            throw new ServiceException("删除失败");
        }
        return true;

    }

    @Override
    public Boolean update(PhrasesBO phrasesBO) {
        boolean update = this.save(phrasesBO.buildUpdatePo());
        if (!update) {
            throw new ServiceException("更新失败");
        }
        return true;

    }
}
