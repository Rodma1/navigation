package com.chen.domain.elsaticsearch;

import lombok.Data;

import javax.annotation.Nullable;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/16 17:57
 * @Description:
 */
@Data
public class CatAliasesRecord {

    private final String alias;

    private final String index;

    private final String filter;

    private final String routingIndex;

    private final String routingSearch;

    private final String isWriteIndex;

}
