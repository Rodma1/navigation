package com.chen.service.memory;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.domain.memory.MemoryDTO;
import com.chen.domain.memory.MemoryPO;
import com.chen.domain.memory.MemoryBO;
import com.chen.common.config.mybatisplus.core.IServicePlus;
import com.chen.domain.memory.MemoryPagesQuery;

import java.util.List;

/**
 * @author: 神的孩子都在歌唱
 * @date: 2024-08-15
 * @description:  业务层接口
 */
public interface MemoryService extends IServicePlus<MemoryPO,MemoryDTO> {
    /**
     * 分页查询
     */
    TableDataInfo<MemoryDTO> page(MemoryPagesQuery pagesQuery);

    /**
     * 新增
     */
    void insert(MemoryBO cyzArticleBO);

    /**
     * 删除
     */
    Boolean delete(List<Long> ids);

    /**
     * 编辑
     */
    void update(MemoryBO cyzArticleBO);
}
