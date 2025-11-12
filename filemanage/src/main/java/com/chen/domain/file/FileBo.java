package com.chen.domain.file;

import com.chen.entity.StringIdEntity;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Comment;

@EqualsAndHashCode(callSuper = true)
@Data
@Accessors(chain = true)
public class FileBo extends StringIdEntity {

    @Schema(name ="文件名称")
    private String filename;

    @Schema(name ="原始文件名称")
    private String original;

    @Schema(name ="存储桶名称")
    private String bucketName;

    @Schema(name ="文件类型")
    private String type;

    @Schema(name ="读取路径")
    private String url;

    @Schema(name ="文件大小")
    private Long fileSize;


    @Schema(name ="文件MD5")
    private String md5;

    @Schema(name ="共享")
    private String shared;

    @Schema(name ="父级id")
    private Long pid;

}
