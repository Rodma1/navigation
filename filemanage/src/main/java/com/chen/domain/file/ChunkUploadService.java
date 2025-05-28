package com.chen.domain.file;

import org.springframework.web.multipart.MultipartFile;

public interface ChunkUploadService {
    /**
     * 上传分片
     * @param file 分片文件
     * @param chunkNumber 当前分片序号
     * @param totalChunks 总分片数
     * @param identifier 文件唯一标识
     * @param filename 文件名
     * @return 分片存储路径
     */
    String uploadChunk(MultipartFile file, Integer chunkNumber, Integer totalChunks, String identifier, String filename);

    /**
     * 检查分片是否存在
     * @param identifier 文件唯一标识
     * @param chunkNumber 分片序号
     * @return 是否存在
     */
    boolean checkChunk(String identifier, Integer chunkNumber);

    /**
     * 合并分片
     * @param identifier 文件唯一标识
     * @param filename 文件名
     * @param totalChunks 总分片数
     * @return 合并后的文件URL
     */
    String mergeChunks(String identifier, String filename, Integer totalChunks);
} 