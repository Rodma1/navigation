package com.chen.common.config.mybatisplus.page;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/18 20:37
 * @Description:
 */
@Data
public class PageRequest {


    private final Integer pageNum;

    private final Integer pageSize;


    private PageRequest(Builder builder) {
        this.pageNum = builder.pageNum;
        this.pageSize = builder.pageSize;
    }

    public static class Builder {
        private final Integer pageNum;

        private final Integer pageSize;


        public Builder(Integer pageNum, Integer pageSize) {
            this.pageNum = pageNum;
            this.pageSize = pageSize;
        }
        public PageRequest build() {
            return new PageRequest(this);
        }

    }

}
