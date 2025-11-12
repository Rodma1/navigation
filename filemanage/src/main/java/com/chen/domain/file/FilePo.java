package com.chen.domain.file;

import com.chen.entity.StringIdEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Comment;

@Entity
@Getter
@Setter
@Table(name = "cyz_file")
public class FilePo extends StringIdEntity {

    @Column(name="filename",length = 128)
    @Comment("文件名称")
    private String filename;

    @Column(name="original",length = 200)
    @Comment("原始文件名称")
    private String original;

    @Column(name="bucket_name",length = 200)
    @Comment("存储桶名称")
    private String bucketName;

    @Column(name="type")
    @Comment("文件类型")
    private String type;

    @Comment("读取路径")
    private String url;

    @Comment("文件大小")
    private Long fileSize;

    @Column(name="md5",length = 32)
    @Comment("文件MD5")
    private String md5;

    @Column(name = "pid")
    @Comment("父级id")
    @ColumnDefault("0")
    private Long pid;

}
