package com.chen.entity;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import com.chen.listener.JpaListener;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Comment;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.io.Serializable;
import java.sql.Timestamp;
@Getter
@Setter
@NoArgsConstructor
@MappedSuperclass
@EntityListeners({AuditingEntityListener.class, JpaListener.class})
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class BaseEntity  implements Serializable {


    /**
     * 创建时间
     */
    @Column(name = "create_time")
    @CreatedDate
    @Comment("创建时间")
    protected Timestamp createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    @LastModifiedDate
    @Comment("更新时间")
    protected Timestamp updateTime;

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
