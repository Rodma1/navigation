package com.chen.entity;

import com.chen.listener.JpaListener;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.io.Serial;
import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@MappedSuperclass
@EntityListeners({AuditingEntityListener.class, JpaListener.class})
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class LongIdEntity extends BaseEntity implements Serializable  {

    @Serial
    private static final long serialVersionUID = 2030469276667529289L;

    /**
     * id主键
     */
    @Id
    @Column(name = "id", length = 36)
    @Comment("id主键")
    protected Long id;


}
