package com.chen.controller.elasticsearch;

import com.chen.common.utils.BeanCopyUtils;
import com.chen.common.utils.BeanUtils;
import com.chen.controller.elasticsearch.domin.OperationCommand;
import com.chen.domain.elsaticsearch.ElasticsearchConnectParam;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.ElasticsearchService;
import io.swagger.annotations.Api;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/2 17:59
 * @Description:
 */
@RequiredArgsConstructor
@RestController
@Api(value = "接口控制器", tags = "elasticsearch接口")
@RequestMapping("/elasticsearch")
public class ElasticsearchController {


    private final ElasticsearchService elasticsearchService;
    /**
     * 基本的操作接口
     */
    @PostMapping("/operation")
    public Object performOperation(@RequestBody OperationCommand operationCommand) {
        return elasticsearchService.performOperation(
                BeanUtils.copyObject(operationCommand, ElasticsearchFactoryParam.class)
                ,BeanUtils.copyObject(operationCommand, ElasticsearchConnectParam.class));
    }

}
