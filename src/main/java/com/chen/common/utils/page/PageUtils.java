package com.chen.common.utils.page;

import cn.hutool.http.HttpStatus;
import com.baomidou.mybatisplus.core.metadata.OrderItem;
import com.chen.common.config.mybatisplus.core.TableDataInfo;
import com.chen.common.config.mybatisplus.page.PagePlus;
import com.chen.common.config.mybatisplus.page.PageRequest;
import com.chen.common.utils.StringUtils;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/18 20:13
 * @Description:
 */
public class PageUtils {

    /**
     * 当前记录起始索引 默认值
     */
    public static final int DEFAULT_PAGE_NUM = 1;

    /**
     * 构建 plus 分页对象
     * @param <T> domain 实体
     * @param <K> vo 实体
     * @return 分页对象
     */
    public static <T, K> PagePlus<T, K> buildPagePlus(PageRequest request) {
        return new PagePlus<>(request.getPageNum(), request.getPageSize());
    }



    public static <T, K> TableDataInfo<K> buildDataInfo(PagePlus<T, K> page) {
        TableDataInfo<K> rspData = new TableDataInfo<>();
        rspData.setCode(HttpStatus.HTTP_OK);
        rspData.setMsg("查询成功");
        rspData.setRows(page.getRecordsVo());
        rspData.setTotal(page.getTotal());
        return rspData;
    }

    public static <T> TableDataInfo<T> buildDataInfo() {
        TableDataInfo<T> rspData = new TableDataInfo<>();
        rspData.setCode(HttpStatus.HTTP_OK);
        rspData.setMsg("查询成功");
        return rspData;
    }

    public static <T> TableDataInfo<T> buildDataInfoDto() {
        TableDataInfo<T> rspData = new TableDataInfo<>();
        rspData.setCode(HttpStatus.HTTP_OK);
        rspData.setMsg("查询成功");
        return rspData;
    }
}
