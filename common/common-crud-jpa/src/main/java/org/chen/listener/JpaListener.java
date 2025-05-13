package org.chen.listener;

import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.extern.slf4j.Slf4j;
import org.chen.entity.BaseEntity;

import java.util.Objects;

@Slf4j
public class JpaListener {

    @PrePersist
    @PreUpdate
    public void prePersist(BaseEntity entity){
        if(Objects.isNull(entity.getDelFlag())){
            entity.setDelFlag("0");
        }
    }
}
