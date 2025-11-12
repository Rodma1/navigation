package com.chen.domain.file;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;


@Data
public class FileUploadInfo {

    private String id;
    /**
     * 文件原名
     */
    private String filename;
    /**
     * 总分片数: 上传资料被分解总块数
     */
    private int totalChunks = -1;

    /**
     * 当前块数（从0开始计数）
     */
    private int chunkNumber = -1;

    /**
     * 文件唯一标识 md5值
     */
    private String identifier;

    /**
     * 保存文件上传信息，不会自动赋值，需要手动传入
     */
    private MultipartFile file;

    /**
     * 文件大小
     */
    private Long size;



    /**
     * 父级文件夹id
     */
    private String pid;
}
