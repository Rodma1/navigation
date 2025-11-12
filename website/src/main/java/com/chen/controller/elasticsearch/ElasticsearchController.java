package com.chen.controller.elasticsearch;
import com.chen.config.NavigateConfig;
import com.chen.utils.BeanUtils;
import com.chen.utils.json.FastJsonUtils;
import com.chen.utils.json.ReadJsonUtils;
import com.chen.utils.resultreturn.ResultData;
import com.chen.controller.elasticsearch.domin.OperationCommand;
import com.chen.config.elasticsearch.ElasticsearchConnectParam;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.ElasticsearchService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/2 17:59
 * @Description:
 */
@RequiredArgsConstructor
@RestController
@Tag(name = "接口控制器", description ="elasticsearch接口")
@RequestMapping("/elasticsearch")
public class ElasticsearchController {


    private final ElasticsearchService elasticsearchService;
    /**
     * 基本的操作接口
     */
    @Operation(summary ="es基本的操作接口")
    @PostMapping("/operation")
    public ResultData<Object> performOperation(@RequestBody OperationCommand operationCommand) throws IOException {
        return ResultData.success(elasticsearchService.performOperation(
                BeanUtils.copyObject(operationCommand, ElasticsearchFactoryParam.class)
                ,BeanUtils.copyObject(operationCommand, ElasticsearchConnectParam.class)));
    }

    /**
     * 基本的操作接口
     */
    @Operation(summary ="获取es连接详细")
    @GetMapping("/connectParam")
    public ResultData<List<ElasticsearchConnectParam>> getConnectParam() {
        String jsonObject = ReadJsonUtils.readJsonFile(NavigateConfig.getEsConnectParamPath());
        return ResultData.success(FastJsonUtils.toList(jsonObject, ElasticsearchConnectParam.class));
    }

}
