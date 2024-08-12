package com.chen.common.utils.codegenerator;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.config.TemplateType;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.chen.common.config.mybatisplus.core.BaseMapperPlus;
import com.chen.common.config.mybatisplus.core.IServicePlus;
import com.chen.common.config.mybatisplus.core.ServicePlusImpl;


import java.util.*;

/**
 * mybatis-plus代码生成工具
 */
public class GeneratorConfig {


    /**
     * 生成代码入口main方法
     *
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        // 当前项目根路径
        String property = System.getProperty("user.dir");
        generateRepositoryAndPO(property);
        generateController(property);
        generateEntity(property);
    }



    // 数据库连接配置
    //数据库ip
    public static final String DATABASE_IP = "192.168.1.47";
    //数据库端口
    public static final String DATABASE_PORT = "5432";
    //数据库名称
    public static final String DATABASE_NAME = "navigation";
    private static final String JDBC_URL = "jdbc:postgresql://" + DATABASE_IP + ":" + DATABASE_PORT + "/" + DATABASE_NAME + "?serverTimezone=GMT%2b8&&useUnicode=true&characterEncoding=UTF-8";
    private static final String JDBC_USER_NAME = "postgres";
    private static final String JDBC_PASSWORD = "chenyunzhi123";

    //指定数据库表的前缀。指定后，在生成文件时，模板会自动截取掉前缀字符，如表名为sys_user，指定前缀为sys_,生成实体是自动识别生成为user
    //多个前缀可以用逗号隔开，例如 sys_,bs_，根据项目需要配置
//    private static final String TABLE_PREFIX = "sys_";
    private static final String TABLE_PREFIX = "cyz_";

    // 当前包名
    private static final String MODULE_NAME = "phrasesbindcategory";

    /**
     * 表名配置
     *
     * @return
     */
    private static List<String> getTables() {
        List<String> tables = new ArrayList<>();
        tables.add("cyz_phrases_bind_category");
        return tables;
    }


    // 文件输出路径
    private static final String OUTPUT_DIR = "\\src\\main\\java";
    private static final String OUTPUT_XML_DIR = "\\src\\main\\resources";
    private static final String OUTPUTDTO_DIR = "\\src\\main\\java";
    //作者
    private static final String AUTHOR = "神的孩子都在歌唱";

    // 顶级包路径
    private static final String TOP_LEVEL_PACKAGE_PATH = OUTPUT_DIR + "\\com\\chen\\";
    private static final String ENTITY_TOP_LEVEL_PACKAGE_PATH = OUTPUTDTO_DIR + "\\com\\chen\\";
    //设置MVC下各个模块的包名
    //项目名
    private static final String PROJECT_NAME = "navigate";
    private static final String COMMON_NAME = "";
    private static final String ENTITY_NAME = "domain";
    private static final String SERVICE_NAME = "service";
    private static final String MAPPER_INTERFACE_NAME = "mapper";
    private static final String MAPPER_XML_NAME = "mapper";
    private static final String REP_SERVICE_NAME = "service";
    private static final String REP_SERVICE_IMPL_NAME = "impl";
    private static final String CONTROLLER_NAME = "controller";

    //设置父包名
    private static String PARENT_PACKAGE_NAME = "com.chen.";
    // entity父报名
    private static String ENTITY_PARENT_PACKAGE_NAME = "com.chen.";
    // entity包名(rep用)
    private static String REP_ENTITY_PACKAGE_NAME = "domain." + MODULE_NAME;
    // entity包名
    private static String ENTITY_PACKAGE_NAME = "domain." + MODULE_NAME;
    // repService包名
    private static String REP_SERVICE_INTERFACE_PACKAGE_NAME = "service." + MODULE_NAME;
    // remImpl包名
    private static String REP_SERVICE_IMPL_PACKAGE_NAME = "service."+ MODULE_NAME + ".impl";
    // mapper包名
    private static String MAPPER_INTERFACE_PACKAGE_NAME = "mapper";
    // mapper xml文件包名
    private static String MAPPER_XML_PACKAGE_NAME = "mapper";
    // control包名
    private static String CONTROLLER_PACKAGE_NAME = "controller." + MODULE_NAME;

    // controller文件路径
    private static String CONTROLLER_PATH = TOP_LEVEL_PACKAGE_PATH + "\\" + CONTROLLER_NAME + "\\" + MODULE_NAME + "\\";
    // entity文件路径
    private static String ENTITY_PATH = ENTITY_TOP_LEVEL_PACKAGE_PATH + COMMON_NAME + "\\" + ENTITY_NAME + "\\" + MODULE_NAME + "\\";
    // service文件
    public static String SERVICE_PATH = TOP_LEVEL_PACKAGE_PATH + "\\" + SERVICE_NAME + "\\" + MODULE_NAME;
    // 设置mapper文件的目录
    private static String MAPPER_INTERFACE_PATH = TOP_LEVEL_PACKAGE_PATH + "\\" + MAPPER_INTERFACE_NAME;
    // 设置XML资源文件的目录
    private static String MAPPER_XML_PATH = OUTPUT_XML_DIR + "\\" + MAPPER_XML_NAME + "\\" + PROJECT_NAME + "\\";
    // rep接口路径
    public static String REP_INTERFACE_PATH = TOP_LEVEL_PACKAGE_PATH + "\\" + REP_SERVICE_NAME + "\\" + MODULE_NAME  + "\\";
    public static String REP_IMPL_PATH = REP_INTERFACE_PATH + "\\" + REP_SERVICE_IMPL_NAME;


    /**
     * 生成controller代码
     *
     * @param property
     */
    private static void generateController(String property) {
        List<String> tables = getTables();
        for (String table : tables) {
            String[] tableNames = table.split(TABLE_PREFIX);
            final String packageName;
            if (Objects.isNull(tableNames) || tableNames.length <= 1) {
                packageName = tableNames[0].replaceAll("_", "");
                ;
            } else {
                packageName = tableNames[1].replaceAll("_", "");
            }
            FastAutoGenerator.create(JDBC_URL, JDBC_USER_NAME, JDBC_PASSWORD)
                .globalConfig(builder -> {
                    // 作者
                    builder.author(AUTHOR)
                        // 输出路径(写到java目录)
                        .outputDir(property + OUTPUT_DIR)
                        // 开启swagger
                        .enableSwagger()
                        // 注释的日期格式
                        .commentDate("yyyy-MM-dd")
                        // 日期字段类型
                        .dateType(DateType.SQL_PACK)
                        // 开启覆盖之前生成的文件
                        .fileOverride()
                        // 不打开生成文件的目录
                        .disableOpenDir();
                })
                .packageConfig(builder -> builder.parent("")
                    .controller(PARENT_PACKAGE_NAME + CONTROLLER_PACKAGE_NAME)
                    .pathInfo(getControllerOutputFileStringMap(property)))
                .strategyConfig(builder -> builder.addInclude(table)
                    .addTablePrefix(TABLE_PREFIX)
                    .controllerBuilder()
                    // controller后缀名
                    .formatFileName("%sController")
                    // 开启生成@RestController控制器
                    .enableRestStyle()
                )
                .templateConfig(builder ->
                    builder.disable(TemplateType.ENTITY, TemplateType.SERVICE, TemplateType.SERVICEIMPL, TemplateType.MAPPER, TemplateType.XML)
                        .controller("templates/Controller.java.vm"))
                .execute();
        }
    }

    /**
     * controller类输出路径
     */
    private static Map<OutputFile, String> getControllerOutputFileStringMap(String property) {
        Map<OutputFile, String> outputFileMap = new HashMap<>();
        outputFileMap.put(OutputFile.entity, property + CONTROLLER_PATH);
        return outputFileMap;
    }

    /**
     * 生成repository代码
     */
    private static void generateRepositoryAndPO(String property) {
        List<String> tables = getTables();
        for (String table : tables) {
            String[] tableNames = table.split(TABLE_PREFIX);
            FastAutoGenerator.create(JDBC_URL, JDBC_USER_NAME, JDBC_PASSWORD)
                .globalConfig(builder -> {
                    // 作者
                    builder.author(AUTHOR)
                        // 输出路径(写到java目录)
                        .outputDir(property + OUTPUT_DIR)
                        // 开启swagger
                        .enableSwagger()
                        // 注释的日期格式
                        .commentDate("yyyy-MM-dd")
                        // 日期字段类型
                        .dateType(DateType.SQL_PACK)
                        // 开启覆盖之前生成的文件
                        .fileOverride()
                        // 不打开生成文件的目录
                        .disableOpenDir();
                })
                .packageConfig(builder -> builder.parent("")
                    .entity(ENTITY_PARENT_PACKAGE_NAME + REP_ENTITY_PACKAGE_NAME)
                    .service(PARENT_PACKAGE_NAME + REP_SERVICE_INTERFACE_PACKAGE_NAME)
                    .serviceImpl(PARENT_PACKAGE_NAME + REP_SERVICE_IMPL_PACKAGE_NAME)
                    .mapper(PARENT_PACKAGE_NAME + MAPPER_INTERFACE_PACKAGE_NAME)
                    .xml(PARENT_PACKAGE_NAME + MAPPER_XML_PACKAGE_NAME)
                    .pathInfo(getRepDaoPOOutputFileStringMap(property)))
                .strategyConfig(builder -> builder.addInclude(table)
                    .addTablePrefix(TABLE_PREFIX)
                    .serviceBuilder()
                    // rep接口文件后缀
                    .formatServiceFileName("%sService")
                    .superServiceClass(IServicePlus.class)
                    .superServiceImplClass(ServicePlusImpl.class)
                    // rep接口实现类文件后缀
                    .formatServiceImplFileName("%sServiceImpl")
                    .entityBuilder()
                    // 开启Lombok
                    .enableLombok()
                    // 实体后缀名
                    .formatFileName("%sPO")
                    // 逻辑删除字段名(数据库)
                    .logicDeleteColumnName("del_flag")
                    // 逻辑删除属性名(实体)
                    .logicDeletePropertyName("delFlag")
                    // 开启生成实体时生成字段注解
                    .enableTableFieldAnnotation()
                    .mapperBuilder()
                    // 设置父类
                    .superClass(BaseMapperPlus.class)
                    // dao接口文件后缀
                    .formatMapperFileName("%sMapper")
                    // 开启 @Mapper 注解
                    .enableMapperAnnotation()
                    // xml文件后缀
                    .formatXmlFileName("%sMapper"))
                // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                //                .templateEngine(new FreemarkerTemplateEngine())
                .templateConfig(builder ->
                    builder.disable(TemplateType.CONTROLLER)
                        .mapper("templates/Dao.java.vm")
                        .service("templates/Rep.java.vm")
                        .serviceImpl("templates/RepImpl.java.vm"))
                .execute();
        }
    }

    /**
     * 输出文件路径配置
     *
     * @param property
     * @return
     */
    private static Map<OutputFile, String> getRepDaoPOOutputFileStringMap(String property) {
        Map<OutputFile, String> outputFileMap = new HashMap<>();
        outputFileMap.put(OutputFile.entity, property + ENTITY_PATH);
        outputFileMap.put(OutputFile.service, property + REP_INTERFACE_PATH);
        outputFileMap.put(OutputFile.serviceImpl, property + REP_IMPL_PATH);
        outputFileMap.put(OutputFile.mapper, property + MAPPER_INTERFACE_PATH);
        outputFileMap.put(OutputFile.mapperXml, property + MAPPER_XML_PATH);
        return outputFileMap;
    }


    /**
     * 生成VO DTO
     *
     * @param property
     */
    private static void generateEntity(String property) {
        List<String> formatFileNameList = Arrays.asList("%sBO", "%sVO", "%sDTO", "%sPagesQuery", "%sQuery");
        List<String> tables = getTables();
        for (String formatFileName : formatFileNameList) {
            for (String table : tables) {
                String[] tableNames = table.split(TABLE_PREFIX);
                FastAutoGenerator.create(JDBC_URL, JDBC_USER_NAME, JDBC_PASSWORD)
                    .globalConfig(builder -> {
                        // 作者
                        builder.author(AUTHOR)
                            // 输出路径(写到java目录)
                            .outputDir(property + OUTPUT_DIR)
                            // 开启swagger
                            .enableSwagger()
                            // 注释的日期格式
                            .commentDate("yyyy-MM-dd")
                            // 日期字段类型
                            .dateType(DateType.ONLY_DATE)
                            // 开启覆盖之前生成的文件
                            .fileOverride()
                            // 不打开生成文件的目录
                            .disableOpenDir();
                    })
                    .packageConfig(builder -> builder.parent("")
                        .entity(ENTITY_PARENT_PACKAGE_NAME + ENTITY_PACKAGE_NAME)
                        .pathInfo(getEntityOutputFileStringMap(property)))
                    .strategyConfig(builder -> builder.addInclude(table)
                        .addTablePrefix(TABLE_PREFIX)
                        .entityBuilder()
                        // 开启Lombok
                        .enableLombok()
                        // 实体后缀名
                        .formatFileName(formatFileName)
                        // 逻辑删除字段名(数据库)
                        .logicDeleteColumnName("del_flag")
                        // 逻辑删除属性名(实体)
                        .logicDeletePropertyName("delFlag")
                    )
                    .templateConfig(builder ->
                        builder.disable(TemplateType.CONTROLLER, TemplateType.SERVICE, TemplateType.SERVICEIMPL, TemplateType.MAPPER, TemplateType.XML))
                    .execute();
            }

        }
    }


    /**
     * 实体类输出路径
     *
     * @param property
     * @return
     */
    private static Map<OutputFile, String> getEntityOutputFileStringMap(String property) {
        Map<OutputFile, String> outputFileMap = new HashMap<>();
        outputFileMap.put(OutputFile.entity, property + ENTITY_PATH);
        return outputFileMap;
    }
}
