package com.chen.common.config.mybatisplus;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.chen.common.exception.ServiceException;
import com.chen.common.utils.http.HttpStatus;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;

import java.util.Date;

/**
 * @author:  MP注入处理器
 * @date: 2023/9/18 14:50
 * @Description: 使用方法,在参数上面打上注解  @TableField(value = "update_time",fill = FieldFill.UPDATE)
 */
@Slf4j
public class CreateAndUpdateMetaObjectHandler implements MetaObjectHandler {

	@Override
	public void insertFill(MetaObject metaObject) {
		try {
			//根据属性名字设置要填充的值
			if (metaObject.hasGetter("createTime")) {
				this.setFieldValByName("createTime", new Date(), metaObject);
			}
		} catch (Exception e) {
			throw new ServiceException("自动注入异常 => " + e.getMessage(), HttpStatus.HTTP_UNAUTHORIZED);
		}
		updateFill(metaObject);
	}

	@Override
	public void updateFill(MetaObject metaObject) {
		try {
			if (metaObject.hasGetter("updateTime")) {
				this.setFieldValByName("updateTime", new Date(), metaObject);
			}
		} catch (Exception e) {
			throw new ServiceException("自动注入异常 => " + e.getMessage(), HttpStatus.HTTP_UNAUTHORIZED);
		}
	}


}
