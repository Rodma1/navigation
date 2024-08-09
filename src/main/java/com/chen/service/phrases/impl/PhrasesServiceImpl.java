package com.chen.service.phrases.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.phrases.*;
import com.chen.domain.phrasesdomain.phrases.PhrasesBO;
import com.chen.domain.phrasesdomain.phrases.PhrasesDTO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPagesQuery;
import com.chen.domain.phrasesdomain.phrasesCategory.PhrasesCategoryPO;
import com.chen.mapper.PhrasesCategoryMapper;
import com.chen.mapper.PhrasesMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.phrases.PhrasesService;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-07-26
 * @description:  业务层接口实现类
 */
@RequiredArgsConstructor
@Service
public class PhrasesServiceImpl extends ServicePlusImpl<PhrasesMapper, PhrasesPO, PhrasesDTO> implements PhrasesService {

    private final PhrasesCategoryMapper categoryMapper;
    @Override
    public TableDataInfo<PhrasesDTO> page(PhrasesPagesQuery pagesQuery) {
        LambdaQueryWrapper<PhrasesDTO> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getSentence()),PhrasesDTO::getSentence,pagesQuery.getSentence());
        queryWrapper.eq(ObjectUtil.isNotNull(pagesQuery.getCategoryId()), PhrasesDTO::getCategoryId,pagesQuery.getCategoryId());

        queryWrapper.orderByDesc(PhrasesDTO:: getCreateTime);
        PagePlus<PhrasesPO, PhrasesDTO>  pagedBo = this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build()));
        this.parameterConversion(pagedBo.getRecordsVo());
        return PageUtils.buildDataInfo(pagedBo);
    }

    /**
     * 转化特定参数
     * @param articleDtoS 文章
     */
    private void parameterConversion(List<PhrasesDTO> articleDtoS) {
        Map<Long, String> collect = categoryMapper.selectList(new LambdaQueryWrapper<>()).stream().collect(Collectors.toMap(PhrasesCategoryPO::getId, PhrasesCategoryPO::getName));
        articleDtoS.forEach(item->{
            item.setCategoryName(collect.get(item.getCategoryId()));
        });
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
