package com.chen.common.config.mybatisplus;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.baomidou.mybatisplus.core.injector.AbstractMethod;
import com.baomidou.mybatisplus.core.injector.DefaultSqlInjector;
import com.baomidou.mybatisplus.core.injector.ISqlInjector;
import com.baomidou.mybatisplus.core.metadata.TableInfo;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.OptimisticLockerInnerInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.List;

/**
 * mybatis-plus配置类
 *
 * @author chenyunzhi
 */
@EnableTransactionManagement(proxyTargetClass = true)
@Configuration
// 指定要扫描的Mapper类的包的路径
@MapperScan("${mybatis-plus.mapperPackage}")
public class MybatisPlusConfig {

	@Bean
	public MybatisPlusInterceptor mybatisPlusInterceptor() {
		MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
		// 分页插件
		interceptor.addInnerInterceptor(paginationInnerInterceptor());
		// 乐观锁插件
		interceptor.addInnerInterceptor(optimisticLockerInnerInterceptor());
		// 阻断插件
//		interceptor.addInnerInterceptor(blockAttackInnerInterceptor());
		return interceptor;
	}

	/**
	 * 分页插件，自动识别数据库类型
	 * <a href="https://baomidou.com/guide/interceptor-pagination.html">...</a>
	 */
	public PaginationInnerInterceptor paginationInnerInterceptor() {
		PaginationInnerInterceptor paginationInnerInterceptor = new PaginationInnerInterceptor();
		// 设置最大单页限制数量，默认 500 条，-1 不受限制
		paginationInnerInterceptor.setMaxLimit(-1L);
		// 分页合理化
		paginationInnerInterceptor.setOverflow(true);
		return paginationInnerInterceptor;
	}

	/**
	 * 乐观锁插件
	 * <a href="https://baomidou.com/guide/interceptor-optimistic-locker.html">...</a>
	 */
	public OptimisticLockerInnerInterceptor optimisticLockerInnerInterceptor() {
		return new OptimisticLockerInnerInterceptor();
	}


	/**
	 * 元对象字段填充控制器
	 * <a href="https://baomidou.com/guide/auto-fill-metainfo.html">...</a>
	 */
	@Bean
	public MetaObjectHandler metaObjectHandler() {
		return new CreateAndUpdateMetaObjectHandler();
	}

	/**
	 * sql注入器配置
	 * <a href="https://baomidou.com/guide/sql-injector.html">...</a>
	 */
	@Bean
	public ISqlInjector sqlInjector() {
		return new DefaultSqlInjector() {
			@Override
			public List<AbstractMethod> getMethodList(Class<?> mapperClass, TableInfo tableInfo) {
				List<AbstractMethod> methodList = super.getMethodList(mapperClass, tableInfo);
				methodList.add(new InsertAll());
				return methodList;
			}
		};
	}

}
