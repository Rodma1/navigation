package com.chen.service.file;

import cn.hutool.core.io.unit.DataUnit;
import com.chen.MinioTemplate;
import com.chen.utils.date.DateTimeUtils;
import domain.MinioItemVo;
import io.minio.ListObjectsArgs;
import io.minio.Result;
import io.minio.messages.Bucket;
import io.minio.messages.Item;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 文件操作实现层
 */
@RequiredArgsConstructor
@Service
public class FileService {

    private final MinioTemplate minioTemplate;

    /**
     * 上传文件
     */
    public void uploadFile(String filePath, String fileName) {
        String bucketName = DateTimeUtils.getCurrentDateTime(DateTimeUtils.y4M2_NON);
        minioTemplate.uploadFile(bucketName, filePath, fileName);
    }

    /**
     * 上传文件流
     */
    public void uploadFile(MultipartFile file) throws IOException {
        String bucketName = DateTimeUtils.getCurrentDateTime(DateTimeUtils.y4M2_NON);
        minioTemplate.putObject(bucketName, this.getRenameFileName(file.getOriginalFilename()), file.getInputStream());
    }

    /**
     * 获取所有存储桶
     */
    public List<String> getAllBuckets() {
        List<Bucket> allBuckets = minioTemplate.getAllBuckets();
        return allBuckets.stream().map(Bucket::name).toList();
    }


    /**
     * 获取重命名的文件名称
     */
    public String getRenameFileName(String fileName) {
        return DateTimeUtils.getCurrentDateTime(DateTimeUtils.y4M2d2_NON) + "_" + fileName;
    }



}
