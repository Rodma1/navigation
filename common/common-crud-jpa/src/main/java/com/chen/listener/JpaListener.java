package com.chen.listener;

import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.extern.slf4j.Slf4j;
import com.chen.entity.StringIdEntity;

import java.util.Objects;

@Slf4j
public class JpaListener {

    @PrePersist
    @PreUpdate
    public void prePersist(StringIdEntity entity){
        if(Objects.isNull(entity.getDelFlag())){
            entity.setDelFlag("0");
        }
    }
}
