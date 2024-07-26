package com.chen.service.elasticsearch.operation;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch.cat.tasks.TasksRecord;
import co.elastic.clients.elasticsearch.tasks.CancelResponse;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.json.FastJsonUtils;
import com.chen.domain.elsaticsearch.ElasticsearchFactoryParam;
import com.chen.service.elasticsearch.impl.ElasticsearchOperationStrategy;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * @Author chenyunzhi
 * @DATE 2024/7/17 15:30
 * @Description:
 */
@RequiredArgsConstructor
public class TaskOperationStrategy implements ElasticsearchOperationStrategy {

    private final ElasticsearchFactoryParam  factoryParam;
    @Override
    public Object execute(ElasticsearchClient elasticsearchClient) throws IOException {

        switch (factoryParam.getOperationType()) {
            case "LIST":
                return this.taskList(elasticsearchClient);
            case "PUT":
                return this.stopTask(elasticsearchClient, factoryParam.getTaskId());
            default:
                return null;
        }
    }


    public Object taskList(ElasticsearchClient client) throws IOException {
        List<TasksRecord> tasksRecords = client.cat().tasks().valueBody();
        return FastJsonUtils.toObject(FastJsonUtils.toJSONString(tasksRecords));
    }

    public Object stopTask(ElasticsearchClient client, String taskId) {
        try {
            CancelResponse cancel = client.tasks().cancel(c -> c.taskId(taskId));
            return cancel.tasks();
        } catch (Exception e) {
            throw  new ServiceException("停止任务失败：" + e.getMessage());
        }
    }
}
