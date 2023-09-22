package com.chen.service.navigatecategory.impl;

import com.chen.common.utils.BeanCopyUtils;
import com.chen.common.utils.BeanUtils;
import com.chen.common.utils.StringUtils;
import com.chen.domain.navigatecategory.CyzNavigateCategoryBO;
import com.chen.mapper.CyzNavigateCategoryMapper;
import com.chen.domain.navigatecategory.CyzNavigateCategoryPO;
import com.chen.domain.navigatecategory.CyzNavigateCategoryDTO;
import org.springframework.stereotype.Service;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;
import com.chen.service.navigatecategory.CyzNavigateCategoryService;

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

        }

        return BeanUtils.copyList(categoryBOList,CyzNavigateCategoryDTO.class);
    }

    /**
     * 通过出栈入栈的数据结构构造数据
     */
    private void buildSubTree(Map<Long, CyzNavigateCategoryBO> cyzNavigateCategoryBoMap, CyzNavigateCategoryBO navigateCategoryBo) {

        Stack<CyzNavigateCategoryBO> navigateCategories = new Stack<>();

        navigateCategories.push(navigateCategoryBo);

        while (!navigateCategories.isEmpty()) {
            CyzNavigateCategoryBO categoryBO = navigateCategories.pop();
            ArrayList<CyzNavigateCategoryBO> cyzNavigateCategoryBoS = new ArrayList<>();
            // 遍历获取它的子节点
            for (CyzNavigateCategoryBO navigateCategoryBO: cyzNavigateCategoryBoS) {

            }

        }
    }
}
