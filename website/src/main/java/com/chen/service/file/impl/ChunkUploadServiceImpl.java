package com.chen.service.file.impl;

import com.chen.MinioTemplate;
import com.chen.service.file.ChunkUploadService;
import com.chen.utils.date.DateTimeUtils;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Slf4j
@Service
@RequiredArgsConstructor
public class ChunkUploadServiceImpl implements ChunkUploadService {

    private final MinioTemplate minioTemplate;

    @Value("${chunk.upload.temp-dir}")
    private String tempDir;

    @Override
    public String uploadChunk(MultipartFile file, Integer chunkNumber, Integer totalChunks, String identifier, String filename) {
        try {
            // 创建临时目录
            String chunkDir = getChunkDir(identifier);
            Files.createDirectories(Paths.get(chunkDir));

            // 保存分片文件
            String chunkPath = chunkDir + File.separator + chunkNumber;
            File chunkFile = new File(chunkPath);
            file.transferTo(chunkFile);

            // 如果所有分片都已上传，自动触发合并
            if (isAllChunksUploaded(identifier, totalChunks)) {
                return mergeChunks(identifier, filename, totalChunks);
            }

            return chunkPath;
        } catch (IOException e) {
            log.error("分片上传失败", e);
            throw new RuntimeException("分片上传失败", e);
        }
    }

    @Override
    public boolean checkChunk(String identifier, Integer chunkNumber) {
        String chunkPath = getChunkDir(identifier) + File.separator + chunkNumber;
        return Files.exists(Paths.get(chunkPath));
    }

    @Override
    public String mergeChunks(String identifier, String filename, Integer totalChunks) {
        try {
            String chunkDir = getChunkDir(identifier);
            String mergedFilePath = tempDir + File.separator + UUID.randomUUID() + "_" + filename;
            File mergedFile = new File(mergedFilePath);

            // 确保合并文件所在目录存在
            Files.createDirectories(mergedFile.getParentFile().toPath());

            // 按顺序合并所有分片
            List<File> chunkFiles = new ArrayList<>();
            for (int i = 1; i <= totalChunks; i++) {
                File chunkFile = new File(chunkDir + File.separator + i);
                if (!chunkFile.exists()) {
                    throw new RuntimeException("分片文件不存在: " + chunkFile.getPath());
                }
                chunkFiles.add(chunkFile);
            }

            // 合并文件
            try (FileOutputStream fos = new FileOutputStream(mergedFile)) {
                for (File chunkFile : chunkFiles) {
                    FileUtils.copyFile(chunkFile, fos);
                }
            }

            // 上传到MinIO
            String bucketName = DateTimeUtils.getCurrentDateTime(DateTimeUtils.y4M2_NON);
            String objectName = getRenameFileName(filename);
            minioTemplate.uploadFile(bucketName, mergedFilePath, objectName);

            // 清理临时文件
            cleanupTempFiles(chunkDir, mergedFilePath);

            // 返回文件访问URL
            return minioTemplate.getObjectUrl(bucketName, objectName);
        } catch (IOException e) {
            log.error("合并分片失败", e);
            throw new RuntimeException("合并分片失败", e);
        }
    }

    private String getChunkDir(String identifier) {
        return tempDir + File.separator + identifier;
    }

    private boolean isAllChunksUploaded(String identifier, int totalChunks) {
        for (int i = 1; i <= totalChunks; i++) {
            if (!checkChunk(identifier, i)) {
                return false;
            }
        }
        return true;
    }

    private void cleanupTempFiles(String chunkDir, String mergedFilePath) {
        try {
            // 删除分片目录
            FileUtils.deleteDirectory(new File(chunkDir));
            // 删除合并后的临时文件
            Files.deleteIfExists(Paths.get(mergedFilePath));
        } catch (IOException e) {
            log.warn("清理临时文件失败", e);
        }
    }

    private String getRenameFileName(String fileName) {
        if (fileName == null || fileName.trim().isEmpty()) {
            throw new IllegalArgumentException("文件名不能为空");
        }

        // 获取文件扩展名
        String extension = "";
        int lastDotIndex = fileName.lastIndexOf('.');
        if (lastDotIndex > 0) {
            extension = fileName.substring(lastDotIndex);
        }

        // 获取文件名（不含扩展名）
        String nameWithoutExtension = lastDotIndex > 0 ? fileName.substring(0, lastDotIndex) : fileName;

        // 1. 替换所有空格为下划线
        nameWithoutExtension = nameWithoutExtension.replaceAll("\\s+", "_");

        // 2. 移除所有非法字符，只保留字母、数字、下划线、连字符和点
        nameWithoutExtension = nameWithoutExtension.replaceAll("[^a-zA-Z0-9_\\-\\.]", "");

        // 3. 确保文件名不以点或连字符开头
        nameWithoutExtension = nameWithoutExtension.replaceAll("^[.\\-]+", "");

        // 4. 如果文件名为空，使用默认名称
        if (nameWithoutExtension.isEmpty()) {
            nameWithoutExtension = "file";
        }

        // 5. 组合最终文件名：时间戳_清理后的文件名.扩展名
        return DateTimeUtils.getCurrentDateTime(DateTimeUtils.y4M2d2H2m2s2S3_NON) + "_" + nameWithoutExtension + extension;
    }
} 