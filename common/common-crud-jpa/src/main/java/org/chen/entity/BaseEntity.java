package org.chen.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.*;
import org.chen.annotation.GeneratorId;
import org.chen.listener.JpaListener;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Comment;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@MappedSuperclass
@EntityListeners({AuditingEntityListener.class, JpaListener.class})
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class BaseEntity implements Serializable {

    @Serial
    private static final long serialVersionUID = 2030469276667529289L;

    /**
     * id主键
     */
    @Id
    @GeneratorId
    @Column(name = "id", length = 36)
    @Comment("id主键")
    protected String id;

    /**
     * 创建时间
     */
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "create_time")
    @CreatedDate
    @Comment("创建时间")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    protected LocalDateTime createTime;

    /**
     * 更新时间
     */
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "update_time")
    @LastModifiedDate
    @Comment("更新时间")
    @JsonDeserialize(using = LocalDateTimeDeserializer.class)
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    protected LocalDateTime updateTime;

    /**
     * 创建人
     */
    @CreatedBy
    @Column(name = "create_by", length = 36)
    @Comment("创建人")
    protected String createBy;

    /**
     * 更新人
     */
    @LastModifiedBy
    @Column(name = "update_by", length = 36)
    @Comment("更新人")
    protected String updateBy;

    /**
     * 删除标识：0 -> 否, 1 -> 是
     */
    @Column(name = "del_flag", length = 2)
    @ColumnDefault("0")
    @Comment("删除标识：0否 1是")
    protected String delFlag;

}
