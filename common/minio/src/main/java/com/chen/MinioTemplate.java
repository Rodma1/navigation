package com.chen;

import com.chen.utils.date.DateTimeUtils;
import domain.MinioItemVo;
import io.minio.*;
import io.minio.messages.Bucket;
import io.minio.messages.Item;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Component
@Slf4j
public class MinioTemplate implements InitializingBean {

    private final MinioProperties minioProperties;
    private MinioClient minioClient;
    @Override
    public void afterPropertiesSet() {
        this.minioClient = MinioClient.builder()
                .endpoint(minioProperties.getUrl())
                .credentials(minioProperties.getAccessKey(), minioProperties.getSecretKey())
                .build();
        log.info("MinioClient 初始化成功，连接地址：{}", minioProperties.getUrl());
    }

    /**
     * 获取所有的目录
     */


    @SneakyThrows
    public List<Bucket> getAllBuckets(){
        return minioClient.listBuckets();
    }
    /**
     * 查看存储bucket是否存在
     */
    public Boolean bucketExists(String bucketName) throws Exception{
        return   minioClient.bucketExists(BucketExistsArgs.builder().bucket(bucketName).build());
    }

    /**
     * 创建存储bucket
     */
    public void makeBucket(String bucketName) throws Exception{
        if (!bucketExists(bucketName)) {
            minioClient.makeBucket(
                    MakeBucketArgs.builder()
                            .bucket(bucketName)
                            .build());
        }
    }

    /**
     * 上传文件
     */
    public void uploadFile(String bucketName,String filePath, String fileName) {
        try {
            this.makeBucket(bucketName);
            minioClient.uploadObject(
                    UploadObjectArgs.builder()
                            .bucket(bucketName).object(filePath).filename(fileName).build());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 上传文件流
     */
    public void putObject(String bucketName, String fileName, InputStream stream) {

        try {
            this.makeBucket(bucketName);
            PutObjectArgs objectArgs = PutObjectArgs.builder()
                    .bucket(bucketName)
                    .object(fileName)
                    .stream(stream, stream.available(), -1)
                    .build();
            minioClient.putObject(objectArgs);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    /**
     * 根据指定存储桶查询指定文件
     *
     * @param bucketName bucket名称
     * @param recursive  是否递归查询
     * @return MinioItem 列表
     */
    @SneakyThrows
    public List<MinioItemVo> getAllObjects(String bucketName, boolean recursive) {
        List<MinioItemVo> objectList = new ArrayList<>();
        Iterable<Result<Item>> objectsIterator = minioClient
                .listObjects(ListObjectsArgs.builder().bucket(bucketName).recursive(recursive).build());

        for (Result<Item> itemResult : objectsIterator) {
            objectList.add(new MinioItemVo(itemResult.get()));
        }
        return objectList;
    }



}
