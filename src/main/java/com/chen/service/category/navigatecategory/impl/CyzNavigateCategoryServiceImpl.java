package com.chen.service.category.navigatecategory.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.chen.common.utils.BeanUtils;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSitePO;
import com.chen.mapper.CyzNavigateCategoryMapper;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryPO;
import com.chen.domain.navigatedomain.navigatecategory.CyzNavigateCategoryDTO;
import com.chen.service.navigatesite.CyzNavigateSiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.category.navigatecategory.CyzNavigateCategoryService;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-22
 * @description:  业务层接口实现类
 */
@Service
public class CyzNavigateCategoryServiceImpl extends ServicePlusImpl<CyzNavigateCategoryMapper, CyzNavigateCategoryPO, CyzNavigateCategoryBO> implements CyzNavigateCategoryService {

    @Autowired
    private CyzNavigateSiteService navigateSiteService;
    @Override
    public List<CyzNavigateCategoryDTO> getAllCategories() {


        List<CyzNavigateCategoryBO> navigateCategories = this.listBo();


        // 构造一个字典
        Map<Long, CyzNavigateCategoryBO> cyzNavigateCategoryBoMap = navigateCategories.stream().collect(Collectors.toMap(CyzNavigateCategoryBO::getId, Function.identity()));

        List<CyzNavigateCategoryBO> categoryBOList = new ArrayList<>();

        // 获取所有的顶级节点
        for (CyzNavigateCategoryBO navigateCategoryBo : navigateCategories) {
            if (!Objects.isNull(navigateCategoryBo.getParentId()) && navigateCategoryBo.getParentId()==0) {
                categoryBOList.add(navigateCategoryBo);
            }
        }

        // 遍历子节点
        for (CyzNavigateCategoryBO navigateCategoryBo: categoryBOList) {

            buildSubTree(cyzNavigateCategoryBoMap,navigateCategoryBo);

        }

        return BeanUtils.copyList(categoryBOList,CyzNavigateCategoryDTO.class);
    }

    /**
     * 通过出栈入栈的数据结构构造数据
     */
    private void buildSubTree(Map<Long, CyzNavigateCategoryBO> cyzNavigateCategoryBoMap, CyzNavigateCategoryBO navigateCategoryBo) {
        Deque<CyzNavigateCategoryBO> navigateCategories = new ArrayDeque<>();
        navigateCategories.push(navigateCategoryBo);

        while (!navigateCategories.isEmpty()) {
            CyzNavigateCategoryBO categoryBO = navigateCategories.pop();
            List<CyzNavigateCategoryBO> cyzNavigateCategoryBoS = cyzNavigateCategoryBoMap.values().stream()
                    .filter(navigateCategoryBO -> Objects.nonNull(navigateCategoryBO.getParentId()) && navigateCategoryBO.getParentId().equals(categoryBO.getId()))
                    .collect(Collectors.toList());

            List<CyzNavigateSiteBO> cyzNavigateSiteBoS = navigateSiteService.listBo(
                    new LambdaQueryWrapper<CyzNavigateSitePO>().eq(CyzNavigateSitePO::getCategoryId, categoryBO.getId()));
            categoryBO.setSites(cyzNavigateSiteBoS);
            categoryBO.setChildren(cyzNavigateCategoryBoS);

            cyzNavigateCategoryBoS.forEach(navigateCategories::push);
        }
    }
}
