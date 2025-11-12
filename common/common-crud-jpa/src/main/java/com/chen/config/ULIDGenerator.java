package com.chen.config;

import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;
import org.springframework.util.ReflectionUtils;
import com.github.f4b6a3.ulid.UlidCreator;

import java.io.Serializable;
import java.lang.reflect.Field;

public class ULIDGenerator implements IdentifierGenerator {

    @Override
    public Serializable generate(SharedSessionContractImplementor session, Object object) {
        Field idField = ReflectionUtils.findField(object.getClass(), "id");
        if (idField != null) {
            ReflectionUtils.makeAccessible(idField);
            Object currentId = ReflectionUtils.getField(idField, object);
            if (currentId != null) {
                return currentId.toString();
            }
        }
        return UlidCreator.getMonotonicUlid().toString();
    }
}
