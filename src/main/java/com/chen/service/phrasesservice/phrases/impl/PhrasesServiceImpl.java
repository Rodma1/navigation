package com.chen.service.phrasesservice.phrases.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.StringUtils;
import com.chen.common.utils.page.PageUtils;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryPO;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryPO;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryBO;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryPO;
import com.chen.domain.phrasesdomain.phrases.PhrasesBO;
import com.chen.domain.phrasesdomain.phrases.PhrasesDTO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPO;
import com.chen.domain.phrasesdomain.phrases.PhrasesPagesQuery;
import com.chen.domain.phrasesdomain.phrasesCategory.PhrasesCategoryPO;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryBO;
import com.chen.domain.phrasesdomain.phrasesbindcategory.PhrasesBindCategoryPO;
import com.chen.mapper.PhrasesCategoryMapper;
import com.chen.mapper.PhrasesMapper;
import com.chen.service.phrasesservice.phrasesbindcategory.PhrasesBindCategoryService;
import com.github.yulichang.wrapper.MPJLambdaWrapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.phrasesservice.phrases.PhrasesService;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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
    private final PhrasesBindCategoryService phrasesBindCategoryService;
    @Override
    public TableDataInfo<PhrasesDTO> page(PhrasesPagesQuery pagesQuery) {
        MPJLambdaWrapper<PhrasesDTO> queryWrapper = new MPJLambdaWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(pagesQuery.getSentence()),PhrasesDTO::getSentence,pagesQuery.getSentence());
        queryWrapper.leftJoin(PhrasesBindCategoryPO.class, PhrasesBindCategoryPO::getPhrasesId,PhrasesPO::getId);
        queryWrapper.leftJoin(PhrasesCategoryPO.class,PhrasesCategoryPO::getId,PhrasesBindCategoryPO::getCategoryId);
        queryWrapper.eq(ObjectUtil.isNotNull(pagesQuery.getCategoryId()), PhrasesCategoryPO::getId,pagesQuery.getCategoryId());

        queryWrapper.orderByDesc(PhrasesDTO:: getCreateTime);
        PagePlus<PhrasesPO, PhrasesDTO>  pagedBo = this.pageBo(PageUtils.buildPagePlus(new PageRequest.Builder(pagesQuery.getPageNum(), pagesQuery.getPageSize()).build()));
        pagedBo.getRecordsVo().forEach(this::parameterConversion);
        return PageUtils.buildDataInfo(pagedBo);
    }

    /**
     * 转化特定参数
     * @param phrasesDtoS 文章
     */
    private void parameterConversion(PhrasesDTO phrasesDtoS) {
        Map<Long, String> collect = categoryMapper.selectList(new LambdaQueryWrapper<>()).stream().collect(Collectors.toMap(PhrasesCategoryPO::getId, PhrasesCategoryPO::getName));
        List<PhrasesBindCategoryBO> phrasesBindCategoryBoS = phrasesBindCategoryService.listBo(new LambdaQueryWrapper<PhrasesBindCategoryPO>().eq(PhrasesBindCategoryPO::getPhrasesId, phrasesDtoS.getId()));

        phrasesDtoS.setCategoryName(phrasesBindCategoryBoS.stream().map(item -> collect.get(item.getCategoryId())).collect(Collectors.joining(", ")));
    }
    @Transactional(rollbackFor = ServiceException.class)
    @Override
    public Boolean insert(PhrasesBO phrasesBO) {
        try {
            PhrasesPO phrasesPo = phrasesBO.buildInsertPo();
            boolean save = this.save(phrasesPo);
            if (!save) {
                throw new ServiceException("新增失败");
            }
            this.phrasesBindCategory(phrasesBO.getCategoryIds(), phrasesPo.getId());
            return true;
        } catch (Exception e) {
            throw new ServiceException("新增失败" + e.getMessage());
        }
    }

    @Transactional(rollbackFor = ServiceException.class)
    @Override
    public Boolean delete(Long id) {

        try {
            boolean remove = this.removeById(id);
            if (!remove) {
                throw new ServiceException("删除失败");
            }
            phrasesBindCategoryService.remove(new LambdaQueryWrapper<PhrasesBindCategoryPO>().eq(PhrasesBindCategoryPO::getPhrasesId,id));
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
        return true;

    }

    @Override
    public Boolean update(PhrasesBO phrasesBO) {
        try {
            boolean update = this.save(phrasesBO.buildUpdatePo());
            if (!update) {
                throw new ServiceException("更新失败");
            }
            phrasesBindCategoryService.remove(new LambdaQueryWrapper<PhrasesBindCategoryPO>().eq(PhrasesBindCategoryPO::getPhrasesId,phrasesBO.getId()));
            this.phrasesBindCategory(phrasesBO.getCategoryIds(), phrasesBO.getId());
        } catch (ServiceException e) {
            throw new ServiceException(e);
        }
        return true;

    }

    private void phrasesBindCategory(List<Long> categoryIds,Long phrasesId) {
        ArrayList<PhrasesBindCategoryPO> phrasesBindCategoryPoS = new ArrayList<>();

        categoryIds.forEach(item-> {
            PhrasesBindCategoryPO phrasesBindCategoryPo = new PhrasesBindCategoryPO();
            phrasesBindCategoryPo.setCategoryId(item);
            phrasesBindCategoryPo.setPhrasesId(phrasesId);
            phrasesBindCategoryPoS.add(phrasesBindCategoryPo);

        });
        phrasesBindCategoryService.saveBatch(phrasesBindCategoryPoS);
    }

}
