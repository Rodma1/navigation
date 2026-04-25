package com.chen.service.navigatesite;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSitePO;
import com.chen.domain.navigatedomain.navigatesite.CyzNavigateSiteBO;
import com.chen.config.mybatisplus.core.IServicePlus;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2023-09-25
 * @description:  业务层接口
 */
public interface CyzNavigateSiteService extends IServicePlus<CyzNavigateSitePO,CyzNavigateSiteBO> {

    void insert(CyzNavigateSiteBO bo);

    void update(CyzNavigateSiteBO bo);

    Boolean delete(List<Long> ids);
}
