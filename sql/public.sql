/*
 Navicat Premium Dump SQL

 Source Server         : 47.115.72.27
 Source Server Type    : PostgreSQL
 Source Server Version : 140006 (140006)
 Source Host           : 47.115.72.27:5432
 Source Catalog        : navigation
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140006 (140006)
 File Encoding         : 65001

 Date: 29/11/2025 22:17:02
*/


-- ----------------------------
-- Sequence structure for cyz_article_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_article_category_id_seq";
CREATE SEQUENCE "public"."cyz_article_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_article_category_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_article_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_article_id_seq";
CREATE SEQUENCE "public"."cyz_article_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_article_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_check_in_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_check_in_id_seq";
CREATE SEQUENCE "public"."cyz_check_in_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_check_in_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_memory_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_memory_id_seq";
CREATE SEQUENCE "public"."cyz_memory_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_memory_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_navigate_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_navigate_category_id_seq";
CREATE SEQUENCE "public"."cyz_navigate_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_navigate_category_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_navigate_site_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_navigate_site_id_seq";
CREATE SEQUENCE "public"."cyz_navigate_site_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_navigate_site_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_phrases_category_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_phrases_category_id_seq";
CREATE SEQUENCE "public"."cyz_phrases_category_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_phrases_category_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_phrases_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_phrases_id_seq";
CREATE SEQUENCE "public"."cyz_phrases_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_phrases_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for cyz_task_plan_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cyz_task_plan_id_seq";
CREATE SEQUENCE "public"."cyz_task_plan_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."cyz_task_plan_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for gen_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_column_column_id_seq";
CREATE SEQUENCE "public"."gen_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."gen_table_column_column_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for gen_table_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gen_table_table_id_seq";
CREATE SEQUENCE "public"."gen_table_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."gen_table_table_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_config_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_config_config_id_seq";
CREATE SEQUENCE "public"."sys_config_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_config_config_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dept_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dept_dept_id_seq";
CREATE SEQUENCE "public"."sys_dept_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_dept_dept_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dict_data_dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_data_dict_code_seq";
CREATE SEQUENCE "public"."sys_dict_data_dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_dict_data_dict_code_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_dict_type_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_dict_type_dict_id_seq";
CREATE SEQUENCE "public"."sys_dict_type_dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_dict_type_dict_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_job_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_job_id_seq";
CREATE SEQUENCE "public"."sys_job_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_job_job_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_job_log_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_job_log_job_log_id_seq";
CREATE SEQUENCE "public"."sys_job_log_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_job_log_job_log_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_logininfor_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_logininfor_info_id_seq";
CREATE SEQUENCE "public"."sys_logininfor_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_logininfor_info_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_menu_menu_id_seq";
CREATE SEQUENCE "public"."sys_menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_menu_menu_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_notice_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_notice_notice_id_seq";
CREATE SEQUENCE "public"."sys_notice_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_notice_notice_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_oper_log_oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_oper_log_oper_id_seq";
CREATE SEQUENCE "public"."sys_oper_log_oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_oper_log_oper_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_post_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_post_post_id_seq";
CREATE SEQUENCE "public"."sys_post_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_post_post_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_role_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_role_role_id_seq";
CREATE SEQUENCE "public"."sys_role_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_role_role_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for sys_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_user_user_id_seq";
CREATE SEQUENCE "public"."sys_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."sys_user_user_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for cyz_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article";
CREATE TABLE "public"."cyz_article" (
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "state" char(1) COLLATE "pg_catalog"."default",
  "category_id" int8,
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_article_id_seq'::regclass)
)
;
ALTER TABLE "public"."cyz_article" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_article"."url" IS '文章地址';
COMMENT ON COLUMN "public"."cyz_article"."name" IS '文章名称';
COMMENT ON COLUMN "public"."cyz_article"."state" IS '完成状态 0 未完成 1已完成';
COMMENT ON COLUMN "public"."cyz_article"."category_id" IS '文章类别id';
COMMENT ON COLUMN "public"."cyz_article"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_article"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_article"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_article"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_article"."update_by" IS '更新者';

-- ----------------------------
-- Records of cyz_article
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '正则表达式中的贪婪模式和非贪婪模式', '1', NULL, '2024-09-23 16:09:52.236', '2024-09-28 22:49:57.992', '0', NULL, NULL, 52);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'springboot使用redisson分布式锁', NULL, NULL, '2024-09-21 16:36:24.33', NULL, '0', NULL, NULL, 31);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '正则表达式中的特殊字符', '1', NULL, '2024-09-23 15:56:44.269', '2024-09-26 00:00:37.395', '0', NULL, NULL, 50);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/142451380?spm=1001.2014.3001.5502', '个人导航网站介绍和部署', '1', NULL, '2024-09-20 15:36:40.982', '2024-09-23 10:31:20.608', '0', NULL, NULL, 27);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/135187324', 'JAVA - 单例设计模式', '1', NULL, '2024-09-23 10:31:48.033', '2024-09-23 10:31:50.772', '0', NULL, NULL, 32);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/135279697', '创建型设计模式 - 抽象工厂模式 - JAVA', '1', NULL, '2024-09-23 10:33:04.1', NULL, '0', NULL, NULL, 35);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/135187412', 'Java - 工厂设计模式', '1', NULL, '2024-09-23 10:32:30.914', '2024-09-23 10:33:07.06', '0', NULL, NULL, 33);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/136243817', '创建型设计模式 - 原型设计模式 - JAVA', '1', NULL, '2024-09-23 10:33:28.258', NULL, '0', NULL, NULL, 36);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/136358378', '创建型设计模式 - 建造者设计模式 - JAVA', '1', NULL, '2024-09-23 10:34:06.892', '2024-09-23 10:34:08.603', '0', NULL, NULL, 37);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/136694266', '结构设计模式 -适配器设计模式 -Java', '1', NULL, '2024-09-23 10:34:28.785', NULL, '0', NULL, NULL, 38);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/136723200', '结构设计模式 - 组合设计模式 - JAVA', '1', NULL, '2024-09-23 10:34:47.547', NULL, '0', NULL, NULL, 39);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/139362987', '结构设计模式 - 代理设计模式 - JAVA', '1', NULL, '2024-09-23 10:35:03.582', NULL, '0', NULL, NULL, 40);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/139728292', '结构设计模式 - 桥接设计模式 - JAVA', '1', NULL, '2024-09-23 10:35:20.477', NULL, '0', NULL, NULL, 41);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '正则的正向前瞻断言和负向前瞻断言', '1', NULL, '2024-09-23 16:28:53.348', '2024-10-26 15:37:42.264', '0', NULL, NULL, 53);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\做项目所需\总结', 'Redisson分布式锁', '1', NULL, '2024-09-21 16:34:53.907', '2024-09-26 00:00:46.056', '0', NULL, NULL, 30);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://blog.csdn.net/weixin_46654114/article/details/142453225', '结构设计模式 -装饰器设计模式 - JAVA', '1', NULL, '2024-09-23 10:37:36.674', '2024-09-23 11:08:43.409', '0', NULL, NULL, 42);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '行为设计模式 -模板方法模式- JAVA', '1', NULL, '2024-09-23 10:40:30.06', '2024-09-28 22:55:28.018', '0', NULL, NULL, 43);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\网络知识\netty', '使用spring-netty制作简单的聊天功能', NULL, NULL, '2024-09-26 16:12:15.19', NULL, '0', NULL, NULL, 71);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/133895809', 'mybatis-plus自动填充', '1', NULL, '2024-09-23 15:42:47.329', '2024-09-23 15:42:54.643', '0', NULL, NULL, 48);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/132674157', 'grpc + springboot + mybatis-plus 动态配置数据源', '1', NULL, '2024-09-23 15:44:38.398', NULL, '0', NULL, NULL, 49);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programming\programmingNotes', 'CAS实现跨域单点登录（SSO）', '0', NULL, '2024-09-26 11:11:30.958', NULL, '0', NULL, NULL, 63);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/134707904', '什么是REST API', '1', NULL, '2024-09-23 18:13:14.462', '2024-09-23 18:14:36.489', '0', NULL, NULL, 57);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/129039781', 'python连接pgsql库对指定字段的参数加密', '1', NULL, '2024-09-23 18:17:57.532', NULL, '0', NULL, NULL, 59);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/129042100', 'python运行sql文件且失败可以回滚', '1', NULL, '2024-09-23 18:18:59.455', NULL, '0', NULL, NULL, 60);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'Redis分布式锁的概念和使用', '1', NULL, '2024-09-20 15:38:33.389', '2024-09-24 09:26:55.21', '0', NULL, NULL, 28);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '行为设计模式 -策略设计模式- JAVA', '1', NULL, '2024-09-23 10:40:33.942', '2024-09-29 23:16:29.592', '0', NULL, NULL, 44);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\做项目所需\总结', '记一次sql查询优化', '1', NULL, '2024-09-20 15:49:59.332', '2024-09-24 09:29:56.972', '0', NULL, NULL, 29);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\基础知识\函数式编程', '函数式编程', NULL, NULL, '2024-09-26 11:24:33.369', NULL, '0', NULL, NULL, 66);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('https://chenyunzhi.blog.csdn.net/article/details/134707904', '开发中遇到的问题 -- 回调解决应用端和服务端通信问题', '1', NULL, '2024-09-23 18:13:54.33', '2024-09-26 11:25:22.197', '0', NULL, NULL, 58);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\解决方案\分布式搜索方案\ELK\filebeat\filebeat.md', 'filebeat介绍安装和使用', NULL, NULL, '2024-09-26 15:33:49.719', NULL, '0', NULL, NULL, 69);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\projects\项目部署笔记', '玩转华为云CodeArts项目管理部署', '1', NULL, '2024-09-20 15:34:59.762', '2024-09-27 09:11:01.871', '0', NULL, NULL, 26);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '正则中捕获组和非捕获组区别', '1', NULL, '2024-09-23 16:09:31.669', '2024-09-27 09:11:16.916', '0', NULL, NULL, 51);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\projects\导航网站\', '个人网站介绍和部署（开源）', '1', NULL, '2024-09-24 11:06:09.182', '2024-09-28 22:49:13.679', '0', NULL, NULL, 61);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programming\programmingNotes', '编程中为什么使用0和1表示状态', '1', NULL, '2024-09-24 11:21:07.27', '2024-09-29 23:10:11.911', '0', NULL, NULL, 62);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\基础知识\编码demo', 'java判断ip是否为指定网段', '1', NULL, '2024-09-26 11:23:27.952', '2024-09-30 10:25:22.193', '0', NULL, NULL, 65);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '行为设计模式 -观察者模式- JAVA', '1', NULL, '2024-09-23 10:56:24.244', '2024-10-03 22:27:45.694', '0', NULL, NULL, 45);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\projects\导航网站\开发笔记', '个人网站-登录后才能看到某些菜单', '0', NULL, '2024-10-11 13:44:25.805', '2024-10-11 13:44:35.855', '0', NULL, NULL, 74);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '个人网站 - 整合类别对象(工厂+策略+模板+单例模式)', NULL, NULL, '2024-10-11 13:45:20.757', NULL, '0', NULL, NULL, 75);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '个人网站-Mybatis-plus-Join连表查询', '0', NULL, '2024-10-11 13:46:07.383', '2024-10-11 13:50:31.289', '0', NULL, NULL, 76);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\做项目所需\mybatis-plus', 'mybatis-plus 多租户（动态新增切换删除数据源）', '0', NULL, '2024-10-14 11:37:37.948', NULL, '0', NULL, NULL, 78);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\git\错误', 'fatal refusing to merge unrelated histories', '0', NULL, '2024-10-14 17:34:21.294', NULL, '0', NULL, NULL, 79);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '正则中的字符集', '1', NULL, '2024-09-23 16:30:21.105', '2024-10-23 22:18:29.633', '0', NULL, NULL, 54);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '行为设计模式 -命令模式- JAVA', '1', NULL, '2024-09-23 10:56:37.122', '2024-10-24 23:23:16.736', '0', NULL, NULL, 46);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'PgSQL常用SQL语句', '1', NULL, '2024-09-23 17:37:55.82', '2024-10-27 23:26:37.631', '0', NULL, NULL, 55);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\网络知识\netty', '你知道如何使用netty开启websocket通信么？', '1', NULL, '2024-09-26 16:09:17.088', '2024-10-30 09:23:28.622', '0', NULL, NULL, 70);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\基础知识\零散的知识', 'Java 集合交集判断', '1', NULL, '2024-09-26 14:21:28.24', '2024-10-27 23:46:21.966', '0', NULL, NULL, 67);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\大数据\kafka', '你了解kafka消息队列么？', '1', NULL, '2024-09-26 11:13:29.093', '2024-10-27 23:46:34.35', '0', NULL, NULL, 64);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\网络知识\netty', '一文了解Java的BIO, NIO和AIO模型.md', '1', NULL, '2024-10-09 15:33:34.996', '2024-10-30 09:55:11.758', '0', NULL, NULL, 73);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你了解Netty么？', '1', NULL, '2024-09-26 17:11:00.209', '2024-10-30 09:55:07.525', '0', NULL, NULL, 72);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\git\github个人主页美化.md', '一文教你如何制作属于自己的github主页', '0', NULL, '2024-10-12 11:57:51.748', '2024-12-28 21:50:28.982', '0', NULL, NULL, 77);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\ELK\elasticsearch', 'elasticsearch8指定Id更新和批量更新文档', '0', NULL, '2024-10-15 18:08:09.567', NULL, '0', NULL, NULL, 80);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\ELK\错误', 'java客户端8.4查询es 8.11 的任务信息报错', NULL, NULL, '2024-10-15 18:10:07.687', NULL, '0', NULL, NULL, 81);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\otherDocs\笔记本\博客搭建', '搭建个人博客（hexo）并部署到github', '0', NULL, '2024-10-17 15:12:51.572', '2024-10-17 15:13:04.117', '0', NULL, NULL, 82);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\otherDocs\笔记本\博客搭建', 'PicGo+Gitee搭建个人图床', NULL, NULL, '2024-10-17 15:14:30.38', NULL, '0', NULL, NULL, 83);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '行为设计模式 -责任链设计模式- JAVA', '1', NULL, '2024-09-23 10:57:10.732', '2024-10-23 22:16:13.424', '0', NULL, NULL, 47);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'navicate连接pgsql数据库报错datlastsysoid does not exist', '1', NULL, '2024-09-23 17:56:38.266', '2024-10-24 17:48:52.512', '0', NULL, NULL, 56);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\ELK', 'elasticsearch简介', '1', NULL, '2024-09-26 15:32:51.303', '2024-10-28 18:10:15.141', '0', NULL, NULL, 68);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\ELK\错误', 'es创建的索引状态一直是red', '0', NULL, '2024-10-31 14:40:33.989', NULL, '0', NULL, NULL, 86);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\做项目所需\gradle', '一文教你了解Gradle依赖管理（基于Kotlin）', '1', NULL, '2024-10-22 11:06:15.11', '2024-11-08 17:51:19.927', '0', NULL, NULL, 85);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\做项目所需\gradle', 'Deprecated Gradle features were used in this build', '1', NULL, '2024-10-21 11:19:21.394', '2024-11-08 17:51:20.651', '0', NULL, NULL, 84);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\database\pgsql\postgresql', '在宿主机中下载pg_dump 工具', '0', NULL, '2024-11-08 18:17:35.453', NULL, '0', NULL, NULL, 87);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\基础知识\java基础', 'Java从列表的指定位置开始过滤', '0', NULL, '2024-11-14 11:18:45.844', NULL, '0', NULL, NULL, 88);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\programmingLanguage\java\基础知识\java基础', 'java中等值判断不区分大小写', '0', NULL, '2024-11-21 15:30:00.884', NULL, '0', NULL, NULL, 89);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', ' 你知道OSI参考模型是什么吗？', '1', NULL, '2024-12-19 20:34:05.167', NULL, '0', NULL, NULL, 90);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解TCPIP参考模型吗', '1', NULL, '2024-12-19 20:34:24.165', NULL, '0', NULL, NULL, 91);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解过数据链路层的点对点协议吗', '1', NULL, '2024-12-19 20:34:53.808', NULL, '0', NULL, NULL, 92);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解网络层的 ICMP 吗？', '1', NULL, '2024-12-19 20:35:13.113', NULL, '0', NULL, NULL, 93);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', 'Java和J2EE有什么不同', '1', NULL, '2024-12-19 20:36:17.738', NULL, '0', NULL, NULL, 94);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解 ARP 和 RARP 吗？', '1', NULL, '2024-12-19 20:56:30.032', NULL, '0', NULL, NULL, 95);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你需要了解的简单邮件传输协议——SMTP', NULL, NULL, '2025-02-05 15:56:07.314', NULL, '0', NULL, NULL, 114);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\笔记\docs\tools\LADP', '一文教你了解ldap的原理和安装使用', '1', NULL, '2024-12-20 19:33:53.383', '2024-12-22 21:15:22.182', '0', NULL, NULL, 96);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '一文教你了解什么是 IPv6', '1', NULL, '2024-12-22 22:21:58.579', '2024-12-23 18:24:29.689', '0', NULL, NULL, 98);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', 'TCP/IP 模型中，网络层对 IP 地址的分配与路由选择', '1', NULL, '2024-12-24 22:03:39.912', NULL, '0', NULL, NULL, 99);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', 'NAT 技术如何解决 IP 地址短缺问题？', '1', NULL, '2024-12-25 23:30:08.797', NULL, '0', NULL, NULL, 100);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', 'docker拉取镜像报错 request canceled while waiting for connection ', '1', NULL, '2024-12-22 22:18:07.218', '2024-12-25 23:30:11.507', '0', NULL, NULL, 97);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '必须要知道的 11 个网络诊断命令！快收藏起来方便查看 ', NULL, NULL, '2025-02-05 15:56:24.501', NULL, '0', NULL, NULL, 115);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '如何区分路由器的 WAN 口和 LAN 口？你必须知道的关键差异！', NULL, NULL, '2025-02-05 15:56:48.64', NULL, '0', NULL, NULL, 116);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解DNS吗？', '1', NULL, '2024-12-27 00:27:28.218', '2024-12-28 00:11:24.888', '0', NULL, NULL, 101);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('E:\study\notes\tools\linux\网络\网络知识', '你了解DHCP吗？', '1', NULL, '2024-12-28 00:11:23.193', '2024-12-28 00:11:30.106', '0', NULL, NULL, 102);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '你认识我们们经常使用的文件传输协议FTP和TFTP吗？', '1', NULL, '2024-12-30 11:55:56.559', '2025-01-03 00:02:03.309', '0', NULL, NULL, 103);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '你了解 SNMP 协议吗？', '1', NULL, '2025-01-02 23:55:12.238', '2025-01-04 13:56:53.438', '0', NULL, NULL, 104);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你了解中继器、网桥、路由器和网关的差别吗？看完这篇你就明白了！', '1', NULL, '2025-02-05 15:54:08.665', '2025-02-06 17:33:16.552', '0', NULL, NULL, 110);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你需要了解的远程登录协议——Telnet', NULL, NULL, '2025-02-05 15:55:52.636', NULL, '0', NULL, NULL, 113);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '交换机光口和电口的区别是什么？快来看这份详细解读！', NULL, NULL, '2025-02-05 15:57:14.393', NULL, '0', NULL, NULL, 117);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '两种 PPP 认证方式：PAP 和 CHAP，你知道区别吗？', NULL, NULL, '2025-02-05 15:58:03.667', NULL, '0', NULL, NULL, 118);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '网络工程师必备！这些默认端口号你绝对不能不知道，快收藏！', NULL, NULL, '2025-02-05 15:59:12.343', NULL, '0', NULL, NULL, 119);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '网工必懂！路由器、光猫、交换机三大设备大揭秘，区别你分得清吗？', NULL, NULL, '2025-02-05 15:59:28.735', NULL, '0', NULL, NULL, 120);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'Windows 和 Linux 如何根据端口号查找进程并杀掉它？手把手教你！', NULL, NULL, '2025-02-05 15:59:42.61', NULL, '0', NULL, NULL, 121);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '私有IP地址和公有IP地址的范围有哪些？你了解吗？', NULL, NULL, '2025-02-05 15:59:58.219', NULL, '0', NULL, NULL, 122);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你了解SSLTLS 协议及其工作原理吗', '1', NULL, '2025-01-02 23:55:30.209', '2025-02-06 17:32:59.152', '0', NULL, NULL, 105);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你了解虚拟专用网络VPN吗？', '1', NULL, '2025-01-02 23:55:47.733', '2025-02-06 17:33:00.752', '0', NULL, NULL, 106);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '如何构建高效局域网？从拓扑到传输介质的全面指南', '1', NULL, '2025-01-04 00:55:11.873', '2025-02-06 17:33:06.523', '0', NULL, NULL, 107);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '解密 LAN/WAN 的 IEEE 802 标准：网络通信的基石', '1', NULL, '2025-02-05 15:53:29.246', '2025-02-06 17:33:08.625', '0', NULL, NULL, 108);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '揭秘 CSMA/CD 协议：了解以太网数据传输的幕后英雄', '1', NULL, '2025-02-05 15:53:53.327', '2025-02-06 17:33:14.446', '0', NULL, NULL, 109);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '什么是CIDR技术？ 它是如何解决路由缩放问题的', '1', NULL, '2025-02-05 15:54:41.355', '2025-02-06 17:33:21.311', '0', NULL, NULL, 111);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '什么是三层交换技术？让你的网络飞起来！', '1', NULL, '2025-02-05 15:55:35.49', '2025-02-06 17:49:50.837', '0', NULL, NULL, 112);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', 'IP 地址与子网掩码：如何计算网络范围？ ', '0', NULL, '2025-04-07 18:17:17.449', '2025-06-12 01:14:22.358', '0', NULL, NULL, 129);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '你知道交换机有哪三种端口工作模式吗？', '0', NULL, '2025-03-03 17:28:55.682', '2025-06-12 01:14:22.371', '0', NULL, NULL, 126);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, '网工必懂！使用VLAN技术让你的网络更高效、更安全', '0', NULL, '2025-02-05 16:00:14.826', '2025-06-12 01:14:22.696', '0', NULL, NULL, 123);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', ' iptables vs firewalld：全面剖析区别、联系与实战配置', '0', NULL, '2025-04-01 18:11:26.169', '2025-06-12 01:14:22.358', '0', NULL, NULL, 128);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '传输层的TCP 三次握手与四次挥手：你真的理解了吗？', '0', NULL, '2025-04-10 09:56:44.258', '2025-11-29 19:18:18.82', '0', NULL, NULL, 132);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'Linux 网络管理命令大全：网卡、端口、路由全掌握', '0', NULL, '2025-04-07 18:17:32.299', '2025-06-12 01:14:22.042', '0', NULL, NULL, 130);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', 'DNS 污染是怎么回事？一文搞懂原理与防护', '0', NULL, '2025-03-31 14:48:06.794', '2025-06-12 01:14:22.358', '0', NULL, NULL, 127);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', '手把手教你玩转VLAN—— 基于三层交换机的VLAN划分与路由配置', '0', NULL, '2025-03-03 17:28:14.826', '2025-06-12 01:14:22.371', '0', NULL, NULL, 125);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('', ' 网络工程师领域，DeepSeek可以用于哪些方面，以提高工作效率和解决复杂问题呢', '0', NULL, '2025-02-06 17:51:01.485', '2025-06-12 01:14:22.402', '0', NULL, NULL, 124);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES (NULL, 'VLAN 是什么？如何用 VLAN 提高网络安全与效率？', '1', NULL, '2025-04-07 18:17:55.618', '2025-06-12 01:19:33.809', '0', NULL, NULL, 131);
INSERT INTO "public"."cyz_article" ("url", "name", "state", "category_id", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('test', 'test', '1', NULL, '2025-11-29 18:53:52.335', NULL, '1', NULL, NULL, 133);
COMMIT;

-- ----------------------------
-- Table structure for cyz_article_bind_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article_bind_category";
CREATE TABLE "public"."cyz_article_bind_category" (
  "article_id" int8,
  "category_id" int8
)
;
ALTER TABLE "public"."cyz_article_bind_category" OWNER TO "postgres";

-- ----------------------------
-- Records of cyz_article_bind_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (28, 22);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (31, 26);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (27, 20);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (32, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (33, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (35, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (36, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (37, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (38, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (39, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (40, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (41, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (43, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (44, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (45, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (46, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (47, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (42, 27);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (30, 26);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (48, 28);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (49, 28);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (50, 29);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (51, 29);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (52, 29);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (53, 29);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (54, 29);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (55, 30);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (56, 30);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (57, 31);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (59, 32);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (60, 32);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (29, 24);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (61, 20);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (26, 20);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (63, 31);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (62, 31);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (65, 34);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (66, 23);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (58, 24);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (67, 23);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (69, 36);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (71, 38);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (73, 38);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (74, 40);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (75, 40);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (76, 28);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (76, 40);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (78, 28);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (79, 41);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (80, 37);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (81, 42);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (82, 43);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (83, 43);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (84, 44);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (85, 44);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (64, 33);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (68, 37);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (70, 38);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (72, 38);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (86, 37);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (87, 30);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (88, 45);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (89, 45);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (90, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (91, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (92, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (93, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (94, 45);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (95, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (96, 47);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (97, 48);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (98, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (99, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (100, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (101, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (102, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (77, 41);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (103, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (104, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (105, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (106, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (107, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (108, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (109, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (110, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (111, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (112, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (113, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (114, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (115, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (116, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (117, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (118, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (119, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (120, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (121, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (122, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (123, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (124, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (125, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (126, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (127, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (128, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (129, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (130, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (131, 46);
INSERT INTO "public"."cyz_article_bind_category" ("article_id", "category_id") VALUES (132, 46);
COMMIT;

-- ----------------------------
-- Table structure for cyz_article_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article_category";
CREATE TABLE "public"."cyz_article_category" (
  "name" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_article_category_id_seq'::regclass),
  "sort" int8,
  "icon" varchar COLLATE "pg_catalog"."default",
  "parent_id" int8
)
;
ALTER TABLE "public"."cyz_article_category" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_article_category"."name" IS '类别名称';
COMMENT ON COLUMN "public"."cyz_article_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_article_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_article_category"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_article_category"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_article_category"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_article_category"."sort" IS '排序';
COMMENT ON COLUMN "public"."cyz_article_category"."icon" IS '图标';
COMMENT ON COLUMN "public"."cyz_article_category"."parent_id" IS '父id';

-- ----------------------------
-- Records of cyz_article_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('项目部署', '2024-09-20 15:32:35.339', NULL, '0', NULL, NULL, 20, 0, '', 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('database', '2024-09-20 15:37:32.216', NULL, '0', NULL, NULL, 21, 0, NULL, 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('redis', '2024-09-20 15:37:52.367', NULL, '0', NULL, NULL, 22, 0, NULL, 21);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('Java', '2024-09-20 15:48:56.1', NULL, '0', NULL, NULL, 23, 0, '', 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('问题汇总', '2024-09-20 15:49:41.352', NULL, '0', NULL, NULL, 24, NULL, NULL, 23);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('框架', '2024-09-21 16:33:03.272', NULL, '0', NULL, NULL, 25, 0, '', 23);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('redisson', '2024-09-21 16:34:11.315', NULL, '0', NULL, NULL, 26, NULL, NULL, 25);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('设计模式', '2024-09-23 10:30:37.099', NULL, '0', NULL, NULL, 27, 0, '', 23);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('mybatis-plush', '2024-09-23 15:42:07.836', NULL, '0', NULL, NULL, 28, 0, '', 25);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('正则', '2024-09-23 15:56:20.244', NULL, '0', NULL, NULL, 29, 0, NULL, 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('postgresql', '2024-09-23 17:37:41.216', NULL, '0', NULL, NULL, 30, 1, NULL, 21);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('basicKnowledge', '2024-09-23 18:12:41.905', NULL, '0', NULL, NULL, 31, 0, NULL, 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('python', '2024-09-23 18:17:45.509', NULL, '0', NULL, NULL, 32, 0, NULL, 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('kafka', '2024-09-26 11:13:02.953', NULL, '0', NULL, NULL, 33, 0, '', 25);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('utils', '2024-09-26 11:23:13.889', NULL, '0', NULL, NULL, 34, 4, NULL, 23);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('tool', '2024-09-26 15:31:21.405', NULL, '0', NULL, NULL, 35, 0, '', 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('ELK', '2024-09-26 15:31:54.929', NULL, '0', NULL, NULL, 36, NULL, NULL, 35);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('elasticsearch', '2024-09-26 15:32:06.655', NULL, '0', NULL, NULL, 37, NULL, NULL, 36);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('netty', '2024-09-26 16:08:50.432', NULL, '0', NULL, NULL, 38, 0, '', 25);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('项目笔记', '2024-10-11 13:43:54.001', NULL, '0', NULL, NULL, 39, 0, '', 0);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('个人网站', '2024-10-11 13:44:13.792', NULL, '0', NULL, NULL, 40, 0, NULL, 39);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('git', '2024-10-12 11:57:43.193', NULL, '0', NULL, NULL, 41, 1, '', 35);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('error', '2024-10-15 18:09:43.981', NULL, '0', NULL, NULL, 42, 0, '', 37);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('个人博客', '2024-10-17 15:12:25.128', NULL, '0', NULL, NULL, 43, 1, '', 39);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('gradle', '2024-10-21 11:19:07.551', NULL, '0', NULL, NULL, 44, 4, '', 25);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('基础知识', '2024-11-14 11:18:17.808', NULL, '0', NULL, NULL, 45, 1, '', 23);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('网络知识', '2024-12-19 20:33:44.599', NULL, '0', NULL, NULL, 46, 0, '', 31);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('LDAP', '2024-12-20 19:33:16.004', NULL, '0', NULL, NULL, 47, 0, '', 35);
INSERT INTO "public"."cyz_article_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "sort", "icon", "parent_id") VALUES ('docker', '2024-12-22 22:17:48.599', NULL, '0', NULL, NULL, 48, 3, '', 35);
COMMIT;

-- ----------------------------
-- Table structure for cyz_file
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_file";
CREATE TABLE "public"."cyz_file" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(36) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "del_flag" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 0,
  "update_by" varchar(36) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "bucket_name" varchar(200) COLLATE "pg_catalog"."default",
  "file_size" int8,
  "filename" varchar(128) COLLATE "pg_catalog"."default",
  "md5" varchar(32) COLLATE "pg_catalog"."default",
  "original" varchar(200) COLLATE "pg_catalog"."default",
  "pid" int8 DEFAULT 0,
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."cyz_file" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_file"."id" IS 'id主键';
COMMENT ON COLUMN "public"."cyz_file"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."cyz_file"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_file"."del_flag" IS '删除标识：0否 1是';
COMMENT ON COLUMN "public"."cyz_file"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."cyz_file"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_file"."bucket_name" IS '存储桶名称';
COMMENT ON COLUMN "public"."cyz_file"."file_size" IS '文件大小';
COMMENT ON COLUMN "public"."cyz_file"."filename" IS '文件名称';
COMMENT ON COLUMN "public"."cyz_file"."md5" IS '文件MD5';
COMMENT ON COLUMN "public"."cyz_file"."original" IS '原始文件名称';
COMMENT ON COLUMN "public"."cyz_file"."pid" IS '父级id';
COMMENT ON COLUMN "public"."cyz_file"."type" IS '文件类型';
COMMENT ON COLUMN "public"."cyz_file"."url" IS '读取路径';

-- ----------------------------
-- Records of cyz_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cyz_file_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_file_category";
CREATE TABLE "public"."cyz_file_category" (
  "id" int8 NOT NULL,
  "create_by" varchar(36) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "del_flag" varchar(2) COLLATE "pg_catalog"."default" DEFAULT 0,
  "update_by" varchar(36) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "icon" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "sort" int4
)
;
ALTER TABLE "public"."cyz_file_category" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_file_category"."id" IS 'id主键';
COMMENT ON COLUMN "public"."cyz_file_category"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."cyz_file_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_file_category"."del_flag" IS '删除标识：0否 1是';
COMMENT ON COLUMN "public"."cyz_file_category"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."cyz_file_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_file_category"."icon" IS '图标';
COMMENT ON COLUMN "public"."cyz_file_category"."name" IS '类别名称';
COMMENT ON COLUMN "public"."cyz_file_category"."parent_id" IS '父id';
COMMENT ON COLUMN "public"."cyz_file_category"."sort" IS '排序';

-- ----------------------------
-- Records of cyz_file_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_file_category" ("id", "create_by", "create_time", "del_flag", "update_by", "update_time", "icon", "name", "parent_id", "sort") VALUES (20, NULL, '2024-09-20 15:32:35.339', '0', NULL, NULL, '', '项目部署', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for cyz_memory
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_memory";
CREATE TABLE "public"."cyz_memory" (
  "content" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int4 NOT NULL DEFAULT nextval('cyz_memory_id_seq'::regclass)
)
;
ALTER TABLE "public"."cyz_memory" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_memory"."content" IS '内容';
COMMENT ON COLUMN "public"."cyz_memory"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_memory"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_memory"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_memory"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_memory"."update_by" IS '更新者';

-- ----------------------------
-- Records of cyz_memory
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天下午要和我哥他们吃饭', '2024-09-20 15:41:44.839', NULL, '0', NULL, NULL, 5);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天周六，但是加班，昨晚把车撞坏了，今晚记得修一下。小可爱今天回家了，他外公离开了', '2024-09-21 16:22:42.527', '2024-09-21 16:23:10.594', '0', NULL, NULL, 6);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('明天得要去拿一下体检报告了', '2024-09-21 16:40:32.151', NULL, '0', NULL, NULL, 7);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天好像啥也没干，下午到晚上打了黑生化悟空，大头怪真难打，不过很好玩，一路打到了黑风山，然后小可爱就来了', '2024-09-23 11:19:47.301', NULL, '0', NULL, NULL, 8);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨晚看了一眼老家监控，连看了前几天的录像，都没有看到奶奶，后面才看到爸爸扶着奶奶上车了，我立马想到奶奶生病了，我就去问爸爸，我爸说奶奶发烧了，目前没什么事情，爷爷也是生病了，希望他们早日康复，很担心他们', '2024-09-23 11:21:30.425', '2024-09-23 11:21:53.756', '0', NULL, NULL, 9);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天的天空很黑，一直在下雨，烦', '2024-09-23 11:22:22.63', NULL, '0', NULL, NULL, 10);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('人生苦短(rén shēng kǔ duǎn)，意思是说苦于人生太短，这是一个倒装句，苦在此并非形容词。和去日苦多一样，并不是说过去的时间苦日子多，而是苦于人生过于短暂。', '2024-09-23 11:35:19.807', NULL, '0', NULL, NULL, 11);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨晚做了两包泡面，放了一包白菜和两个蛋，吃的真爽，吃完还打了会黑神话，然后就是写文章，到一点才睡', '2024-09-24 16:47:49.652', NULL, '0', NULL, NULL, 12);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天天气还是阴天，还好早上上班没下雨，中午吃饭完就去小可爱的酒店睡觉了', '2024-09-24 16:48:28.199', NULL, '0', NULL, NULL, 13);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天和今天都在整理文章，太闲了，不过才发现我有那么多文章要整理，最近都整理了十几篇了', '2024-09-24 16:49:39.731', NULL, '0', NULL, NULL, 14);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天研究了一天cas，黑神话打了一晚上的老虎，麻了麻了', '2024-09-26 10:57:49.618', NULL, '0', NULL, NULL, 15);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天和她去看了一天头发，和她仁姐和拓哥吃了个饭，很热，我也买了点药治疗头发，我的秃头很严重', '2024-09-29 18:07:19.235', NULL, '0', NULL, NULL, 16);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('2024-9-27 晚上她又生气了，原因是和她不想和谁说在海口跟我玩，搞偷偷摸摸一样，我不喜欢这种感觉，所以我就说那我也不和朋友说了，然后她就不耐烦生气了。我很累，希望她能控制住自己的情绪', '2024-09-29 18:14:54.682', '2024-09-29 18:15:42.4', '0', NULL, NULL, 17);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天她叫我去她家拿洗发液，我找她拿她妹妹通讯录，她死活不肯，就是怕被她妹妹知道我，我都不知道怎么说了，无语', '2024-10-03 22:29:49.975', NULL, '0', NULL, NULL, 18);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天早早回老家买槟榔，买了335斤，一斤36块，赚了12060块', '2024-10-03 22:31:26.721', NULL, '0', NULL, NULL, 19);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天带她回老家看了奶奶，然后和朋友去榕树下吃了夜宵', '2024-10-03 22:33:27.725', NULL, '0', NULL, NULL, 20);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('奶奶生病了，吃不下东西了，很难过，这已经是一个预兆了', '2024-10-03 22:34:00.616', NULL, '0', NULL, NULL, 21);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又要开始打工的一天了，加油', '2024-10-08 10:59:27.028', NULL, '0', NULL, NULL, 22);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天给我的导航网站加了登录登出功能', '2024-10-10 17:03:50.987', NULL, '0', NULL, NULL, 23);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天黑神话打到第四章了', '2024-10-10 17:56:33.786', NULL, '0', NULL, NULL, 24);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天她和一个男生单独吃饭了，我以后这样子她不准说我', '2024-10-10 17:57:11.072', NULL, '0', NULL, NULL, 25);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('车的电池坏了，开两天就要充电，周日一定要记得拿去修一下了', '2024-10-11 13:50:16.246', NULL, '0', NULL, NULL, 26);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天她面试白沙事业编考了12名，入围了，替她开心', '2024-10-14 11:44:16.798', NULL, '0', NULL, NULL, 27);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天晚上去我姐那里睡了，照顾两个孩子，今天送他们上学了', '2024-10-14 11:44:46.127', NULL, '0', NULL, NULL, 28);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天看了以下es的文档更新，收获很多，把es工具也完善了一下，添加了查看任务详情和文档更新操作', '2024-10-15 18:11:54.16', NULL, '0', NULL, NULL, 29);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('上班时候听了《可能》这首歌，突然间幻想了一段中二的故事（以下纯属虚构），故事从男主和女主开始，他们从小就认识，男主经常跑女主家玩，女主爸妈很喜欢男主，经常给他们拍视频发网上。有一次，她爸录着视频问男主，你长大后想做什么，男主骄傲的说要当科学家，后来家庭变故，男的为了完成爸爸心愿去踢足球，获得了冠军，不过这段时间她不在理会女主，因为害怕无法给女主陪伴，所以女主就唱了这首歌', '2024-10-16 09:28:10.59', '2024-10-16 09:29:46.732', '0', NULL, NULL, 30);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天她把我微信删了，还说我不负责任，说我生小孩子气。原因是因为她说我要买五金才结婚，我说我不买，然后她说我不买她就嫁给别人。我一听就不乐意了，感觉五年的感情都抵不过这五金。我平时都是好好对她的，她需要什么我都是能买就买。就因为五金，她就说要嫁给别人，我就很生气。然后她还觉得自己委屈，拿着包走出门。这种事情之前也有过，就因为我不想拿手机给他她扫码登录电脑，她自己手机就在手上，偏偏要我的，然后就出门一晚上，我也找了一晚上，就因为这事情。以后不管这种了，随便吧，她怎么对我的，我也怎么对她。昨晚还是我先道的歉。', '2024-10-21 16:19:59.754', NULL, '0', NULL, NULL, 31);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('每晚都是一点半后才睡，很累，感觉身体要顶不住了，今晚一定早睡', '2024-10-22 11:08:22.08', NULL, '0', NULL, NULL, 32);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('在上班，有点困，摸了一天🐟，昨天和今天把gradle了解了一下输出了篇文章，也算是一个收获吧', '2024-10-22 15:44:26.4', NULL, '0', NULL, NULL, 33);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('她叫我买个100G的硬盘给她，移动硬盘', '2024-10-22 15:44:49.722', '2024-10-22 15:45:00.032', '0', NULL, NULL, 34);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('家里面今天买槟榔，41元1斤，卖了8600', '2024-10-22 15:46:39.663', NULL, '0', NULL, NULL, 35);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天通关了黑神话，真的帅，大圣残区是我打过最帅的boos', '2024-10-23 12:00:19.928', NULL, '0', NULL, NULL, 36);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天是程序员节，中午全部人被老板批斗了，然后三点钟我们领导请和奶茶', '2024-10-24 15:52:58.636', NULL, '0', NULL, NULL, 37);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('一会要和我哥我姐和冰萍去友谊吃饭', '2024-10-25 17:47:49.525', NULL, '0', NULL, NULL, 38);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天周六，可是要补班，今天是一点都不想来，然后公司今天早上断网，我看了一早上小说，真罪过，我要好好学习了', '2024-10-26 15:51:49.209', NULL, '0', NULL, NULL, 39);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天和他们去看了部战争电影叫做《志愿军: 存亡之战》，评下是下次别看了', '2024-10-26 15:55:51.98', '2024-10-26 17:18:14.453', '0', NULL, NULL, 40);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('快考试了，每天都浑浑噩噩的，好累', '2024-10-28 10:05:03.434', NULL, '0', NULL, NULL, 41);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('每天都说不吃饭，每天都出去吃', '2024-10-30 18:27:04.598', NULL, '0', NULL, NULL, 42);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('周六和她朋友陈怡吃老爸茶，她说不想让人知道她住我哪里。然后吃饭完去和她吾悦和她姐姐吃饭去了，我回宿舍', '2024-11-04 11:54:56.961', NULL, '0', NULL, NULL, 43);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('周六早上考完事业编的试了，人生转变时刻', '2024-11-04 11:55:37.012', NULL, '0', NULL, NULL, 44);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('集群进度还是缓慢，领导突然之间说了一个多合一进度，我都忘记还有这玩意，难搞。想辞职了', '2024-11-04 17:13:15.566', NULL, '0', NULL, NULL, 45);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('前天和领导聊了辞职的事情，被领导说了一顿，可是我还是要走，最后领导打电话和我说让我不要在意之前的话，放心去做', '2024-11-06 11:54:36.683', NULL, '0', NULL, NULL, 46);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('做个RAG的个人ai问答吧', '2025-11-24 23:04:41.693', NULL, '0', NULL, NULL, 92);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('你好陈运智，又是犯困的一天，前几天玩了雅科夫和原神，最近一直还玩弹弹堂，都玩了一个月了，不能这样子了，要振作起来，好好学习，努力减肥，加油。', '2025-11-25 11:21:37.467', NULL, '0', NULL, NULL, 93);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨晚又和她吵架了，原因是她把我的心意当成价格比较，起因是她说我给我弟弟买了四千多的手机，没给她买，我说我也给你买好多东西呀，她问我买了什么，我说买了平板，然后她说平板才多少钱，你说我能不生气么，我和你说心意，你来和我说价格。然后我就说你觉得少就换回来，没想到她还觉得自己委屈了，要还钱。我生气了就挂断电话，给她发了我生气的原因，不是要她给钱，而是因为她把我的心意变成价格拿来比。可是她不听，还阴阳怪气的说比不上我家人，然后我和她说这种东西没有什么可比性，以后不要再说了，然后她还一直说比不上我家人，我真的害怕了，她如果还不会改变那就只能分手了，我真搞不懂为什么要和我家人比。明明一开始说的是价格心意的事情，如果她在我发话后立马给我道歉，都不会有这些事情出来。最近真的很累心情真的很差。', '2024-11-06 12:02:22.261', NULL, '0', NULL, NULL, 47);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天心情，累难受疲惫', '2024-11-06 12:02:42.107', NULL, '0', NULL, NULL, 48);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是疲惫的一天', '2024-11-07 10:02:31.759', NULL, '0', NULL, NULL, 49);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天去世纪大桥喝了一杯不是酒的自调酒', '2024-11-13 09:08:24.345', NULL, '0', NULL, NULL, 50);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天是他的生日', '2024-11-13 09:18:40.476', NULL, '0', NULL, NULL, 51);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天第二次开了日审评审会，然后打了一晚上的csgo', '2024-11-14 14:00:54.864', NULL, '0', NULL, NULL, 52);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('11-15号她和人家去昌江吃饭，吃完饭去看花火不和我说', '2024-11-18 10:30:51.063', NULL, '0', NULL, NULL, 53);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('11-15号我和朋友去吃了牛杂煲，和去喝了点小酒', '2024-11-18 10:32:05.493', '2024-11-18 10:32:33.419', '0', NULL, NULL, 54);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('11-16号和朋友去金盘吃了小吃 ', '2024-11-18 10:32:50.144', NULL, '0', NULL, NULL, 55);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天修了车外壳，去了假日海滩看沙滩排球，好看程度一般般吧，路边的风景很好看', '2024-11-18 10:34:06.565', NULL, '0', NULL, NULL, 56);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天和她很生她的气，我本来周日要去找她，她说还有材料没弄完，不让我去，自己晚上又有时间和人家吃烧烤，我从去年就说要去找她，她一直在推脱，别人约她就有时间，我约她就没有', '2024-11-18 10:35:47.519', NULL, '0', NULL, NULL, 57);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('12月13去了东莞的华为云溪流湖背坡村参加开发者盛典，遇到了很多有趣的人', '2024-12-19 20:29:48.092', NULL, '0', NULL, NULL, 58);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('12月11号我的日审任务快结束了，和老板再次提了离职，希望12月22号就可走', '2024-12-19 20:30:43.686', NULL, '0', NULL, NULL, 59);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('12月18号，和我交接的同事要走了，领导要求我在干完今年，把saas项目做完，我接受了他的要求', '2024-12-19 20:31:31.116', NULL, '0', NULL, NULL, 60);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天开了估时会，大概都是日审的功能', '2024-12-20 19:14:49.664', NULL, '0', NULL, NULL, 61);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('12月15号到18号，我和她在宿舍连续煮了三天火锅，好快乐', '2024-12-20 19:16:19.258', NULL, '0', NULL, NULL, 62);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('她昨天考车，一下考过了三个科目', '2024-12-23 18:18:22.068', NULL, '0', NULL, NULL, 63);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天和她回家看爷爷奶奶了，很开心', '2024-12-28 21:44:59.572', NULL, '0', NULL, NULL, 64);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('老弟感冒了', '2024-12-30 18:18:42.478', NULL, '0', NULL, NULL, 65);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天晚上跨年了，和她去了万绿园，2025年是一个新的开始，加油！', '2025-01-02 17:52:41.002', NULL, '0', NULL, NULL, 66);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天早上头晕晕的感觉要发烧了', '2025-01-03 16:02:16.758', NULL, '0', NULL, NULL, 67);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('压力忽大忽小的', '2025-01-06 14:56:35.999', NULL, '0', NULL, NULL, 68);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天公司来了个后端java开发，感觉挺牛逼的', '2025-01-06 14:56:55.118', NULL, '0', NULL, NULL, 69);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('那个后端开发走了', '2025-01-14 22:22:12.429', NULL, '0', NULL, NULL, 70);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今晚又要加班到11点了', '2025-01-14 22:22:27.321', NULL, '0', NULL, NULL, 71);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('新年快乐，陈运智，开工第一天，发了100红包，和老板说了离职的事情，这周五就走，加油吧！', '2025-02-05 16:03:45.056', NULL, '0', NULL, NULL, 72);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天和老师打了电话，老师那边推荐我考研，说实话我心动了。', '2025-03-10 17:46:45.795', NULL, '0', NULL, NULL, 73);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('你好久没有记录备忘录了', '2025-03-31 14:46:45.676', NULL, '0', NULL, NULL, 74);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天好冷', '2025-03-31 14:47:05.804', NULL, '0', NULL, NULL, 75);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天发布了一篇 DNS 污染是怎么回事？一文搞懂原理与防护 文章', '2025-03-31 14:47:54.243', NULL, '0', NULL, NULL, 76);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天还有点雨，也有点冷，昨天又和她吵架了，说了分手的话', '2025-04-01 18:27:04.672', NULL, '0', NULL, NULL, 77);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('清明结束了，今天是上班的第一天，清明除草到现在腰还酸。去了莺歌海吃烧烤', '2025-04-07 18:16:29.266', NULL, '0', NULL, NULL, 78);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是打工的一天，一直睡不够，周末要好好睡一觉', '2025-04-10 18:56:38.016', NULL, '0', NULL, NULL, 79);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('刚刚和爷爷奶奶打了电话，很开心，他们都很健康', '2025-04-14 23:54:52.688', NULL, '0', NULL, NULL, 80);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天下雨去跑了一下步，还真是要多运动才有活力', '2025-04-14 23:55:19.867', NULL, '0', NULL, NULL, 81);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('我又回来了，有好多话要说和整理接下来就听我慢慢说吧。', '2025-11-19 10:16:17.745', NULL, '0', NULL, NULL, 82);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('六月份我从海南航众离职了，没错，我又离职了，离职原因其实就是呆着看不到上升空间，还有就是社保不缴纳，周末一直叫去加班，公司产品研发管理制度差。 虽然薪资税前9000比海南大部分工资水平都高，可是我还是不想呆下去，我又想到了一月份老师说考研的想法，所以我纠结了许久后，我六月15号还是提出了离职。我不知道我现在的想法对不对，不过我还是想尝试一下。所以我六到9月份中旬一直在备考，学习考研知识，期间确实收获了很多知识，比如计算机网络，计算机组成原理，操作系统和数据结构，这些我在上学期间没有学透的知识，现在也算是补回来了，不得不说，基础很重要。现在之前工作中的一些问题，现在也能立马想到解决方法了。怎么说呢，就是感觉自己的知识体系又跨上了一个新的台阶。', '2025-11-19 10:25:31.954', NULL, '0', NULL, NULL, 83);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('自从六月中旬离职后，我在备考期间也一直找工作，当然，还是在海南，我的想法是如果能找的到好工作那么就去，找不到就继续备考，这两者不冲突。于是我就每天在学习和面试中度过，不得不说海南的公司确实少，基本上都是小公司，于是我定一个目标，做ai产品项目的公司优先，其次是薪资和福利待遇好的，其他的都不去。最后在九月十八号的时候我入职了海南宙骏有限公司，主要是做ai产品相关的开发，试用期六个月，前三个月6800，三个月后是8500,工作日有20的餐补，目前来说还挺不错的。', '2025-11-19 10:29:20.816', '2025-11-19 10:31:34.174', '0', NULL, NULL, 84);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('十一月十一号我参加了软考，网络工程师，目前还没有出成绩，不过估分了一下，上午题大概五十多分，肯定过了，下午题预估在及格线左右，看批卷人的心情了。', '2025-11-19 10:34:53.939', NULL, '0', NULL, NULL, 85);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('十一月十七号我给小可爱买了1.6克的金项链做为生日礼物，总共花了2150，她很开心，蹦蹦跳跳的，真可爱。期间还有个小插曲，我本来是想在出去吃饭的时候给她的。所以我事先买了一双鞋先顶着，于是这双鞋买的是我的号码，我说这双鞋是她的生日礼物，然后她就不开心了，一直找茬，最后还哭了，我立马把项链拿出来给她，然后她又哭又笑的。', '2025-11-19 10:37:55.246', NULL, '0', NULL, NULL, 86);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天开始就好好的记录每一天把，又是开始工作的一天', '2025-11-19 10:38:58.634', NULL, '0', NULL, NULL, 87);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨天上班终于捋清楚了项目的需求，还和楠姐吃了烤鱼。', '2025-11-21 11:33:32.365', NULL, '0', NULL, NULL, 88);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是新的一天，vpn老是断掉，又是被迫摸鱼的一天', '2025-11-21 11:33:59.378', NULL, '0', NULL, NULL, 89);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是新的一周，昨晚又晚睡了', '2025-11-24 22:33:31.27', NULL, '0', NULL, NULL, 90);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('想做个小项目', '2025-11-24 22:59:35.643', NULL, '0', NULL, NULL, 91);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天帮助客户部署了sh智能体项目，花了一早上时间，主要还是环境问题，尤其是时间格式问题，数据库中的是utc，系统中的是cst，本来想着改系统时间或者数据库的就可以，折腾半天最后还是改代码了，在查询的时候指定时区。', '2025-11-25 17:55:51.015', NULL, '0', NULL, NULL, 94);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是新的一天，今天是2025-11-26，昨晚十二点半睡觉，今天八点起床，精神好一点了，今晚睡得更早一点。', '2025-11-26 08:52:33.748', NULL, '0', NULL, NULL, 95);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('又是新的一天，现在和她冷战了，昨天十一点钟，她说现在去洗澡，问我要不要等她，我说那你快点去。她就说我不想等她，我都没有这意思，后面和她解释了也没用。累了', '2025-11-27 08:53:09.672', NULL, '0', NULL, NULL, 96);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('昨晚也是十二点半睡的，可是还是很困，今晚要12点睡', '2025-11-27 08:53:35.874', NULL, '0', NULL, NULL, 97);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('好累，感觉要发烧', '2025-11-27 16:36:26.235', NULL, '0', NULL, NULL, 98);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('今天晚上去图书馆，突然下雨了。', '2025-11-29 18:18:21.562', '2025-11-29 19:59:04.508', '0', NULL, NULL, 99);
INSERT INTO "public"."cyz_memory" ("content", "create_time", "update_time", "del_flag", "create_by", "update_by", "id") VALUES ('test', '2025-11-29 19:59:11.915', NULL, '1', NULL, NULL, 100);
COMMIT;

-- ----------------------------
-- Table structure for cyz_navigate_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_navigate_category";
CREATE TABLE "public"."cyz_navigate_category" (
  "id" int8 NOT NULL DEFAULT nextval('cyz_navigate_category_id_seq'::regclass),
  "parent_id" int8,
  "sort" int4,
  "name" varchar COLLATE "pg_catalog"."default",
  "icon" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0
)
;
ALTER TABLE "public"."cyz_navigate_category" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_navigate_category"."parent_id" IS '父id';
COMMENT ON COLUMN "public"."cyz_navigate_category"."sort" IS '排序';
COMMENT ON COLUMN "public"."cyz_navigate_category"."name" IS '类别名称';
COMMENT ON COLUMN "public"."cyz_navigate_category"."icon" IS '图标';
COMMENT ON COLUMN "public"."cyz_navigate_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_navigate_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_navigate_category"."del_flag" IS '删除标志(0代表存在 1代表删除)';

-- ----------------------------
-- Records of cyz_navigate_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (11, 0, 1, '公司网站', NULL, '2023-10-08 11:30:00.081', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (12, 0, 5, '博客网站', NULL, '2023-10-10 17:53:05', '2023-10-10 17:53:09.738', '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (14, 0, 15, '编程-开发', NULL, '2023-10-12 10:12:13.383', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (15, 14, 1, '前端', NULL, '2023-10-12 10:13:02.123', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (16, 14, 5, '后端', NULL, '2023-10-12 10:13:13.311', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (17, 0, 10, '网站', NULL, '2023-10-12 10:13:30.082', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (13, 14, 10, '浏览器', NULL, '2023-10-12 10:08:54', '2023-10-12 10:13:35.054', '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (18, 14, 15, '常用网站', NULL, '2023-10-12 10:20:33.647', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (19, 0, 20, '我的网站', NULL, '2023-10-16 20:28:32.42', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (20, 0, 25, '错题网站', NULL, '2023-10-17 14:59:05.975', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" ("id", "parent_id", "sort", "name", "icon", "create_time", "update_time", "del_flag") VALUES (21, 15, 1, 'vue', NULL, '2024-02-06 15:12:59.945', NULL, '1');
COMMIT;

-- ----------------------------
-- Table structure for cyz_navigate_site
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_navigate_site";
CREATE TABLE "public"."cyz_navigate_site" (
  "id" int8 NOT NULL DEFAULT nextval('cyz_navigate_site_id_seq'::regclass),
  "category_id" int8,
  "name" varchar COLLATE "pg_catalog"."default",
  "image" varchar COLLATE "pg_catalog"."default",
  "description" varchar COLLATE "pg_catalog"."default",
  "url" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0
)
;
ALTER TABLE "public"."cyz_navigate_site" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_navigate_site"."category_id" IS '类别id';
COMMENT ON COLUMN "public"."cyz_navigate_site"."name" IS '网站标题';
COMMENT ON COLUMN "public"."cyz_navigate_site"."image" IS '图片';
COMMENT ON COLUMN "public"."cyz_navigate_site"."description" IS '描述';
COMMENT ON COLUMN "public"."cyz_navigate_site"."url" IS '网站路径';
COMMENT ON COLUMN "public"."cyz_navigate_site"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_navigate_site"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_navigate_site"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_navigate_site"."update_by" IS '更新者';

-- ----------------------------
-- Records of cyz_navigate_site
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (53, 12, 'infoQ', NULL, '在线新闻/社区网站', 'https://www.infoq.cn/', '2023-10-12 10:26:09', '2023-10-12 10:29:03.106', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (67, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015213115A001.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:31:14.983', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (55, 16, 'Kafka 中文文档 - ApacheCN', NULL, NULL, 'https://kafka.apachecn.org/', '2023-10-12 10:30:41.477', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (50, 18, 'GitHub', NULL, 'Let’s build from here · GitHub', 'https://github.com/', '2023-10-12 10:20:50', '2023-10-12 10:32:09.493', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (48, 16, 'Redis命令中心（Redis commands）', NULL, ' Redis中国用户组（CRUG）', 'http://www.redis.cn/commands.html', '2023-10-12 10:19:20', '2023-10-12 10:32:45.817', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (47, 16, 'Linux命令大全(手册) ', '/profile/upload/2023/10/12/favicon_20231012101759A002.png', '真正好用的Linux命令在线查询网站', 'https://www.linuxcool.com/', '2023-10-12 10:17:59', '2023-10-12 10:32:59.093', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (68, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015213741A001.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:37:40.213', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (2, 11, 'coding', '/profile/upload/2023/10/08/favicon_20231008114049A001.jpg', '公司代码管理仓库', 'https://uguardsec.coding.net/user', '2023-10-08 11:41:15', '2023-10-08 11:41:53.698', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (56, 17, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/', '2023-10-13 17:31:21.305', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (7, 12, 'CSDN', '/profile/upload/2023/10/10/1607569674685_20231010180158A001.png', 'Csdn', 'https://www.csdn.net/', '2023-10-10 17:57:57', '2023-10-11 14:39:01.448', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (46, 15, 'Vue.js', NULL, '渐进式 JavaScript 框架', 'https://cn.vuejs.org/', '2023-10-12 10:15:01', '2023-10-12 10:16:28.818', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (63, 11, 'None', NULL, NULL, 'https://www.csdn.net/', '2023-10-15 21:16:16.329', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (62, 17, '验证码_哔哩哔哩', '/profile/upload/2023/10/13/favicon_20231013180950A001.ico', NULL, 'https://www.bilibili.com/', '2023-10-13 18:09:48.249', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (64, 16, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/12/favicon_20231012101759A002.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:16:48.531', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (66, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015212611A004.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:26:11.085', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (65, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015211912A003.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:19:11.478', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (58, 17, '验证码_哔哩哔哩', NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 17:50:26.872', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (45, 15, 'Element ', NULL, 'The world''s most popular Vue UI framework', 'https://element.eleme.cn/', '2023-10-12 10:14:38', '2023-10-12 10:17:07.894', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (59, 17, '验证码_哔哩哔哩', NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:00:06.311', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (60, 17, NULL, NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:01:57.415', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (61, 17, NULL, NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:03:20.868', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (57, 17, '验证码_哔哩哔哩', '', NULL, 'https://www.bilibili.com/', '2023-10-13 17:39:24', '2023-10-15 21:38:47.263', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (6, 11, '蓝湖', '/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg', '蓝湖', 'https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa', '2023-10-10 17:42:48.885', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (71, 11, 'None', NULL, NULL, 'https://www.csdn.net/', '2023-10-15 21:40:03.966', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (70, 11, 'Python3 教程 | 菜鸟教程', NULL, NULL, 'https://www.runoob.com/python3/python3-tutorial.html', '2023-10-15 21:39:38.742', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (49, 16, 'Python3 教程 | 菜鸟教程', NULL, NULL, 'https://www.runoob.com/python3/python3-tutorial.html', '2023-10-12 10:19:49.47', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (51, 16, 'PostgreSQL 教程 | 菜鸟教程', '/profile/upload/2023/10/12/favicon_20231012102123A003.png', NULL, 'https://www.runoob.com/postgresql/postgresql-tutorial.html', '2023-10-12 10:21:23.079', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (52, 16, 'Docker 教程 | 菜鸟教程', '/profile/upload/2023/10/12/favicon_20231012102141A004.png', NULL, 'https://www.runoob.com/docker/docker-tutorial.html', '2023-10-12 10:21:40.456', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (72, 11, 'Element - The world''s most popular Vue UI framework', '/profile/upload/2023/10/15/favicon_20231015214031A005.ico', NULL, 'https://element.eleme.cn/', '2023-10-15 21:40:29.837', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (69, 11, '哔哩哔哩', '/profile/upload/2023/10/15/favicon_20231015213902A003.ico', NULL, 'https://www.bilibili.com/', '2023-10-15 21:39:01.04', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (73, 11, 'baidu', '/profile/upload/2023/10/15/favicon_20231012100939A001_20231015214144A006.png', NULL, 'http://www.baidu.com', '2023-10-15 21:41:53', '2023-10-15 21:42:15.857', NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (74, 19, '百度', '/profile/upload/2023/10/16/favicon_20231012100939A001_20231016202924A007.png', '百度', 'http://www.baidu.com', '2023-10-16 20:29:25.926', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (75, 11, '验证码_哔哩哔哩', '/profile/upload/2023/10/16/favicon_20231016210332A008.ico', NULL, 'https://www.bilibili.com/', '2023-10-16 21:03:30.554', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (76, 11, '哔哩哔哩', '/profile/upload/2023/10/16/favicon_20231016210701A009.ico', NULL, 'https://www.bilibili.com/', '2023-10-16 21:07:01', '2023-10-16 21:07:16.02', NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (77, 16, 'MyBatis-Plus', NULL, NULL, 'https://baomidou.com/', '2023-10-17 13:39:39.772', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (78, 20, 'None', NULL, NULL, 'https://blog.csdn.net/liutongzhuang/article/details/121075541', '2023-10-17 14:59:15.147', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (54, 12, '开源中国', NULL, NULL, 'https://www.oschina.net/', '2023-10-12 10:26:40', '2023-10-12 10:26:56.402', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (80, 21, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/user', '2024-02-06 15:14:35.117', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (79, 21, '列表渲染 | Vue.js', NULL, NULL, 'https://cn.vuejs.org/guide/essentials/list.html#v-for-with-a-component', '2024-02-06 15:13:43.556', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (81, 21, 'ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é', '/profile/upload/2024/02/06/favicon_20240206151743A014.png', NULL, 'http://www.baidu.com', '2024-02-06 15:17:43.475', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (82, 14, 'Elasticsearch 平台 — 大规模查找实时答案 | Elastic', '/profile/upload/2024/02/21/favicon_20240221140927A015.png', NULL, 'https://www.elastic.co/cn/', '2024-02-21 14:09:21.246', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (41, 11, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/p/public/iterations/210/issues/220', '2023-10-12 10:07:50.704', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (42, 13, '必应', NULL, NULL, 'https://www.bing.com/', '2023-10-12 10:09:10.862', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (43, 13, '百度', '/profile/upload/2023/10/12/favicon_20231012100939A001.png', NULL, 'https://www.baidu.com/', '2023-10-12 10:09:38', '2023-10-12 10:09:48.5', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" ("id", "category_id", "name", "image", "description", "url", "create_time", "update_time", "create_by", "update_by", "del_flag") VALUES (44, 13, '谷歌', NULL, NULL, 'https://www.google.com.hk/', '2023-10-12 10:10:32', '2023-10-12 10:11:00.341', NULL, NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for cyz_phrases
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases";
CREATE TABLE "public"."cyz_phrases" (
  "sentence" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "category_id" int8,
  "rank" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_phrases_id_seq'::regclass)
)
;
ALTER TABLE "public"."cyz_phrases" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_phrases"."sentence" IS '句子';
COMMENT ON COLUMN "public"."cyz_phrases"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_phrases"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_phrases"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_phrases"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_phrases"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_phrases"."category_id" IS '类别';
COMMENT ON COLUMN "public"."cyz_phrases"."rank" IS '推荐等级';

-- ----------------------------
-- Records of cyz_phrases
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('为什么我们过不了“摆烂”的生活？
因为当你说“摆烂”这个词的时候，你就已经知道是一种烂生活。
人不能过自己看不起的生活。', '2024-09-21 16:41:57.861', NULL, '0', NULL, NULL, NULL, '5', 14);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('不要谩骂以前的自己 他当时一个人站在雾里也很迷茫', '2024-09-21 16:42:16.531', NULL, '0', NULL, NULL, NULL, '5', 15);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('罗翔老师这段话让我茅塞顿开: “其实没什么好后悔的，很多事情就算时间能重来一遍，以当时的心智和阅历还是会做同样的选择，避免不了同样的结果。人本来就是在失败中学乖的，与其抱着过去后悔，不如擦擦眼泪向前走吧。我们可能经常会想:“如果当初我怎样怎样就好了；如果当初我换了一个专业就好了；如果当时没来这个城市就好了；如果当初再见他一面就好了。” 似乎未选择的那条路总是更好的，但事实真的如此吗?可能你选择另一条路，大概率也是换一个新的烦恼，那些似乎必然通向好的结局也只是你的遐想。 但人生最有趣的一点就是，无论你做出什么选择，你都是在向前走。所以不要纠结和后悔，脚下的这条路就是最好的路，不要总是去美化未选择的路，不要站在现在的角度去批判当时的自己，要相信一切都是上天最好的安排，你所错过的很可能都是上天在保护你。', '2024-09-21 16:42:32.242', NULL, '0', NULL, NULL, NULL, '5', 16);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('人生苦短(rén shēng kǔ duǎn)，意思是说苦于人生太短，这是一个倒装句，苦在此并非形容词。和去日苦多一样，并不是说过去的时间苦日子多，而是苦于人生过于短暂。', '2024-09-23 11:35:52.532', '2024-09-23 11:36:25.209', '0', NULL, NULL, NULL, '4', 18);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('你永远也不可能真正了解一个人，除非你穿上他的鞋子走来走去，站在他的角度考虑问题。', '2024-09-23 11:27:04.687', '2024-09-23 11:36:28.304', '0', NULL, NULL, NULL, '3', 17);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('生活不可能像你想象得那么好
但也不会像你想象得那么糟
我觉得人的脆弱和坚强
都超乎自己的想象

有时，我可能脆弱得
一句话就泪流满面
有时，也发现自己
咬着牙走了很长的路

——莫泊桑 《一生》', '2024-10-10 18:01:26.954', NULL, '0', NULL, NULL, NULL, '5', 19);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('我不祝你一帆风顺，我祝你乘风破浪', '2024-10-10 18:11:35.299', NULL, '0', NULL, NULL, NULL, '4', 20);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('幸福不应该依赖他人，而是来自内心的独立与自我完善。关键在于如何面对生活中的困境，学会放下、看淡，保持好的心态，才能找到真正的快乐。正如林徽因所说，“爱人前先爱己”，真正的幸福与成长来自于自我关爱和独立面对生活', '2024-10-10 18:18:35.902', '2024-10-10 18:20:26.022', '0', NULL, NULL, NULL, '4', 21);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('一生很短，不过是春夏秋冬。一生所求，不过是平安与自由。', '2024-10-22 15:29:13.411', NULL, '0', NULL, NULL, NULL, '4', 23);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('这不是很好吗？生活毕竟不是童话，大结局不总是王子和公主幸福地生活在城堡里。没有人可以平平安安，风平浪静的度过自己的一生。生活本来就是充满了酸甜苦辣。正所谓船呆在海港里是最安全的，可那不是造船的目的。', '2024-10-28 09:52:49.582', '2024-10-29 11:52:12.659', '0', NULL, NULL, NULL, '4', 24);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('永！远！不！要！去！美！化！你！没！有！选！择！的！那！条！路！
', '2024-10-14 11:01:45.11', '2024-10-31 18:00:56.248', '0', NULL, NULL, NULL, '4', 22);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('种一棵树最好的时间是十年前，其次是现在！', '2024-11-04 18:21:39.801', NULL, '0', NULL, NULL, NULL, '4', 25);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('生活不止眼前的苟且，还有诗和远方的田野，你赤手空拳来到人世间，为找到那片海不顾一切', '2024-11-18 13:51:11.985', NULL, '0', NULL, NULL, NULL, '4', 26);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('夜色渐浓，天边微暗，独坐窗前，思绪万千。', '2024-11-19 09:49:30.588', '2025-01-02 17:53:39.64', '0', NULL, NULL, NULL, '3', 27);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('人生有三次成长：一是发现自己不再是世界的中心的时候，二是发现再怎么努力也无能为力的时候，三是接受自己的平凡并去享受平凡的时候。—— 周国平', '2025-01-05 17:12:09.194', NULL, '0', NULL, NULL, NULL, '5', 28);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('人还是需要一些经历，哪怕是挫败的 但是是自己的就不后悔 --阿馅', '2025-02-05 17:03:48.444', '2025-02-05 17:06:08.334', '0', NULL, NULL, NULL, '5', 29);
INSERT INTO "public"."cyz_phrases" ("sentence", "create_time", "update_time", "del_flag", "create_by", "update_by", "category_id", "rank", "id") VALUES ('总有一天，你不需要轰轰烈烈的爱情，你想要的只是一个在平淡中守护你的人。冷的时候他会给你一件外套，胃里难受的时候他会给你一杯热水，难过的时候他会给你一个拥抱，就这么一直陪在你身边，陪你走过每一段路、度过每一个关头——爱不是轰轰烈烈的告白，而是平平淡淡的相守。', '2025-11-27 09:09:25.516', NULL, '0', NULL, NULL, NULL, '5', 30);
COMMIT;

-- ----------------------------
-- Table structure for cyz_phrases_bind_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases_bind_category";
CREATE TABLE "public"."cyz_phrases_bind_category" (
  "phrases_id" int8,
  "category_id" int8
)
;
ALTER TABLE "public"."cyz_phrases_bind_category" OWNER TO "postgres";

-- ----------------------------
-- Records of cyz_phrases_bind_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (14, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (15, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (16, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (18, 7);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (17, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (19, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (20, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (21, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (23, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (24, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (22, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (22, 6);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (25, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (26, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (27, 8);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (28, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (29, 5);
INSERT INTO "public"."cyz_phrases_bind_category" ("phrases_id", "category_id") VALUES (30, 9);
COMMIT;

-- ----------------------------
-- Table structure for cyz_phrases_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases_category";
CREATE TABLE "public"."cyz_phrases_category" (
  "name" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "sort" int8,
  "icon" varchar COLLATE "pg_catalog"."default",
  "parent_id" int8,
  "id" int8 NOT NULL DEFAULT nextval('cyz_phrases_category_id_seq'::regclass)
)
;
ALTER TABLE "public"."cyz_phrases_category" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_phrases_category"."name" IS '类别名称';
COMMENT ON COLUMN "public"."cyz_phrases_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_phrases_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_phrases_category"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_phrases_category"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_phrases_category"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_phrases_category"."sort" IS '排序';
COMMENT ON COLUMN "public"."cyz_phrases_category"."icon" IS '图标';
COMMENT ON COLUMN "public"."cyz_phrases_category"."parent_id" IS '父id';

-- ----------------------------
-- Records of cyz_phrases_category
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_phrases_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "sort", "icon", "parent_id", "id") VALUES ('给自己的话', '2024-09-21 16:41:33.53', NULL, '0', NULL, NULL, 0, '', 0, 5);
INSERT INTO "public"."cyz_phrases_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "sort", "icon", "parent_id", "id") VALUES ('对人', '2024-09-23 11:26:56.68', NULL, '0', NULL, NULL, 0, '', 0, 6);
INSERT INTO "public"."cyz_phrases_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "sort", "icon", "parent_id", "id") VALUES ('词解释', '2024-09-23 11:35:47.012', NULL, '0', NULL, NULL, 0, '', 0, 7);
INSERT INTO "public"."cyz_phrases_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "sort", "icon", "parent_id", "id") VALUES ('感想', '2024-11-19 09:49:22.884', NULL, '0', NULL, NULL, 0, '', 0, 8);
INSERT INTO "public"."cyz_phrases_category" ("name", "create_time", "update_time", "del_flag", "create_by", "update_by", "sort", "icon", "parent_id", "id") VALUES ('爱情', '2025-11-27 09:09:12.617', NULL, '0', NULL, NULL, 0, '', 0, 9);
COMMIT;

-- ----------------------------
-- Table structure for cyz_task_check_in
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_task_check_in";
CREATE TABLE "public"."cyz_task_check_in" (
  "task_id" int8,
  "check_date" date,
  "check_status" varchar(255) COLLATE "pg_catalog"."default",
  "check_content" varchar(255) COLLATE "pg_catalog"."default",
  "check_note" varchar(255) COLLATE "pg_catalog"."default",
  "actual_start_time" varchar(255) COLLATE "pg_catalog"."default",
  "actual_end_time" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_check_in_id_seq'::regclass)
)
;
ALTER TABLE "public"."cyz_task_check_in" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_task_check_in"."task_id" IS '任务ID';
COMMENT ON COLUMN "public"."cyz_task_check_in"."check_date" IS '打卡日期';
COMMENT ON COLUMN "public"."cyz_task_check_in"."check_status" IS '完成状态：0-未完成 1-已完成 2-部分完成';
COMMENT ON COLUMN "public"."cyz_task_check_in"."check_content" IS '打卡内容（实际完成情况）';
COMMENT ON COLUMN "public"."cyz_task_check_in"."check_note" IS '备注（如遇到的问题、心得等）';
COMMENT ON COLUMN "public"."cyz_task_check_in"."actual_start_time" IS '实际开始时间（如 09:30）';
COMMENT ON COLUMN "public"."cyz_task_check_in"."actual_end_time" IS '实际结束时间（如 11:00）';
COMMENT ON COLUMN "public"."cyz_task_check_in"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_task_check_in"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_task_check_in"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_task_check_in"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_task_check_in"."update_by" IS '更新者';

-- ----------------------------
-- Records of cyz_task_check_in
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for cyz_task_plan
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_task_plan";
CREATE TABLE "public"."cyz_task_plan" (
  "task_name" varchar(255) COLLATE "pg_catalog"."default",
  "task_type" varchar COLLATE "pg_catalog"."default",
  "start_time" varchar(255) COLLATE "pg_catalog"."default",
  "end_time" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_task_plan_id_seq'::regclass),
  "task_content" varchar(255) COLLATE "pg_catalog"."default",
  "week_day" varchar(255) COLLATE "pg_catalog"."default",
  "sort" int4,
  "status" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."cyz_task_plan" OWNER TO "postgres";
COMMENT ON COLUMN "public"."cyz_task_plan"."task_name" IS '任务名称';
COMMENT ON COLUMN "public"."cyz_task_plan"."task_type" IS '任务类型：1-考研 2-找工作 3-生活';
COMMENT ON COLUMN "public"."cyz_task_plan"."start_time" IS '开始日期（如：2026-04-26）';
COMMENT ON COLUMN "public"."cyz_task_plan"."end_time" IS '完成日期（如：2026-06-30），null表示一直持续';
COMMENT ON COLUMN "public"."cyz_task_plan"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_task_plan"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_task_plan"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_task_plan"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_task_plan"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_task_plan"."task_content" IS '任务内容';
COMMENT ON COLUMN "public"."cyz_task_plan"."week_day" IS '执行星期（1-7，多个用逗号分隔，null表示每天）';
COMMENT ON COLUMN "public"."cyz_task_plan"."sort" IS '排序';
COMMENT ON COLUMN "public"."cyz_task_plan"."status" IS '状态：0-已暂停 1-进行中 2-已结束';

-- ----------------------------
-- Records of cyz_task_plan
-- ----------------------------
BEGIN;
INSERT INTO "public"."cyz_task_plan" ("task_name", "task_type", "start_time", "end_time", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "task_content", "week_day", "sort", "status") VALUES ('tested', '1', '2025-06-12', '2025-06-12', NULL, '2025-06-12 15:03:53.194', '1', NULL, NULL, 2, '给v的', NULL, NULL, NULL);
INSERT INTO "public"."cyz_task_plan" ("task_name", "task_type", "start_time", "end_time", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "task_content", "week_day", "sort", "status") VALUES ('阿斯顿', '1', '2025-06-12', '2025-06-12', '2025-06-12 15:12:47.25', NULL, '1', NULL, NULL, 3, '阿斯顿', NULL, NULL, NULL);
INSERT INTO "public"."cyz_task_plan" ("task_name", "task_type", "start_time", "end_time", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "task_content", "week_day", "sort", "status") VALUES ('英语学习', '1', '2025-11-29', '2025-12-22', '2025-11-29 20:06:21.481', NULL, '0', NULL, NULL, 4, '每天学习多邻国和背英语单词', NULL, NULL, NULL);
INSERT INTO "public"."cyz_task_plan" ("task_name", "task_type", "start_time", "end_time", "create_time", "update_time", "del_flag", "create_by", "update_by", "id", "task_content", "week_day", "sort", "status") VALUES ('考编制', '2', '2025-11-29', '2026-01-22', '2025-11-29 20:12:00.581', NULL, '0', NULL, NULL, 5, '学习考编的资料', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table";
CREATE TABLE "public"."gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('gen_table_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default",
  "table_comment" varchar(500) COLLATE "pg_catalog"."default",
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default",
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default",
  "class_name" varchar(100) COLLATE "pg_catalog"."default",
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default",
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default",
  "gen_path" varchar(200) COLLATE "pg_catalog"."default",
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."gen_table" OWNER TO "postgres";
COMMENT ON COLUMN "public"."gen_table"."table_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table"."table_name" IS '表名称';
COMMENT ON COLUMN "public"."gen_table"."table_comment" IS '表描述';
COMMENT ON COLUMN "public"."gen_table"."sub_table_name" IS '关联子表的表名';
COMMENT ON COLUMN "public"."gen_table"."sub_table_fk_name" IS '子表关联的外键名';
COMMENT ON COLUMN "public"."gen_table"."class_name" IS '实体类名称';
COMMENT ON COLUMN "public"."gen_table"."tpl_category" IS '使用的模板（crud单表操作 tree树表操作）';
COMMENT ON COLUMN "public"."gen_table"."package_name" IS '生成包路径';
COMMENT ON COLUMN "public"."gen_table"."module_name" IS '生成模块名';
COMMENT ON COLUMN "public"."gen_table"."business_name" IS '生成业务名';
COMMENT ON COLUMN "public"."gen_table"."function_name" IS '生成功能名';
COMMENT ON COLUMN "public"."gen_table"."function_author" IS '生成功能作者';
COMMENT ON COLUMN "public"."gen_table"."gen_type" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "public"."gen_table"."gen_path" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "public"."gen_table"."options" IS '其它生成选项';
COMMENT ON COLUMN "public"."gen_table"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gen_table"."remark" IS '备注';
COMMENT ON TABLE "public"."gen_table" IS '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO "public"."gen_table" ("table_id", "table_name", "table_comment", "sub_table_name", "sub_table_fk_name", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "gen_type", "gen_path", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 'cyz_navigate_category', '任务类别表', '', '', 'CyzNavigateCategory', 'tree', 'com.ruoyi.system', 'system', 'category', '神的孩子都在歌唱', '神的孩子都在歌唱', '0', NULL, '{"treeCode":"id","treeName":"name","treeParentCode":"parent_id"}', 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903', NULL);
INSERT INTO "public"."gen_table" ("table_id", "table_name", "table_comment", "sub_table_name", "sub_table_fk_name", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "gen_type", "gen_path", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 'cyz_navigate_site', '导航网站', '', '', 'CyzNavigateSite', 'crud', 'com.ruoyi.system', 'system', 'site', '导航网站', 'ruoyi', NULL, NULL, '{"parentMenuId":"2007"}', 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474', NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."gen_table_column";
CREATE TABLE "public"."gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('gen_table_column_column_id_seq'::regclass),
  "table_id" varchar(64) COLLATE "pg_catalog"."default",
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default",
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
ALTER TABLE "public"."gen_table_column" OWNER TO "postgres";
COMMENT ON COLUMN "public"."gen_table_column"."column_id" IS '编号';
COMMENT ON COLUMN "public"."gen_table_column"."table_id" IS '归属表编号';
COMMENT ON COLUMN "public"."gen_table_column"."column_name" IS '列名称';
COMMENT ON COLUMN "public"."gen_table_column"."column_comment" IS '列描述';
COMMENT ON COLUMN "public"."gen_table_column"."column_type" IS '列类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_type" IS 'JAVA类型';
COMMENT ON COLUMN "public"."gen_table_column"."java_field" IS 'JAVA字段名';
COMMENT ON COLUMN "public"."gen_table_column"."is_pk" IS '是否主键（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_increment" IS '是否自增（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_required" IS '是否必填（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_insert" IS '是否为插入字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_edit" IS '是否编辑字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_list" IS '是否列表字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."is_query" IS '是否查询字段（1是）';
COMMENT ON COLUMN "public"."gen_table_column"."query_type" IS '查询方式（等于、不等于、大于、小于、范围）';
COMMENT ON COLUMN "public"."gen_table_column"."html_type" IS '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
COMMENT ON COLUMN "public"."gen_table_column"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."gen_table_column"."sort" IS '排序';
COMMENT ON COLUMN "public"."gen_table_column"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."gen_table_column"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gen_table_column"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."gen_table_column"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."gen_table_column" IS '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (1, '1', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 1, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (2, '1', 'parent_id', '父id', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 2, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (3, '1', 'sort', '排序', 'integer', 'Long', 'sort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 3, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (4, '1', 'name', '类别名称', 'character varying', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', NULL, NULL, 4, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (5, '1', 'icon', '图标', 'character varying', 'String', 'icon', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 5, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (6, '1', 'create_time', '创建时间', 'timestamp without time zone', 'String', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 6, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (7, '1', 'update_time', '更新时间', 'timestamp without time zone', 'String', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 7, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (8, '1', 'del_flag', '删除标志(0代表存在 1代表删除)', 'character', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 8, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (9, '2', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (10, '2', 'category_id', '类别id', 'bigint', 'Long', 'categoryId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (11, '2', 'name', '网站标题', 'character varying', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', NULL, NULL, 3, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (12, '2', 'image', '图片', 'character varying', 'String', 'image', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', NULL, 4, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (13, '2', 'description', '描述', 'character varying', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 5, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (14, '2', 'url', '网站路径', 'character varying', 'String', 'url', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 6, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (15, '2', 'create_time', '创建时间', 'timestamp without time zone', 'String', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 7, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (16, '2', 'update_time', '更新时间', 'timestamp without time zone', 'String', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 8, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (17, '2', 'create_by', '创建者', 'character varying', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 9, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES (18, '2', 'update_by', '更新者', 'character varying', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 10, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_blob_triggers";
CREATE TABLE "public"."qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;
ALTER TABLE "public"."qrtz_blob_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_calendars";
CREATE TABLE "public"."qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;
ALTER TABLE "public"."qrtz_calendars" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_cron_triggers";
CREATE TABLE "public"."qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."qrtz_cron_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_fired_triggers";
CREATE TABLE "public"."qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" varchar(20) COLLATE "pg_catalog"."default",
  "requests_recovery" varchar(20) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."qrtz_fired_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_job_details";
CREATE TABLE "public"."qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "is_nonconcurrent" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "is_update_data" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "requests_recovery" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "job_data" bytea
)
;
ALTER TABLE "public"."qrtz_job_details" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/10 * * * * ?t\\000\\021ryTask.ryNoParamst\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\001t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\227\\240\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/15 * * * * ?t\\000\\025ryTask.ryParams(''ry'')t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\234\\211\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/20 * * * * ?t\\0008ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\003t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\345\\244\\232\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."qrtz_locks" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_locks" ("sched_name", "lock_name") VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');
INSERT INTO "public"."qrtz_locks" ("sched_name", "lock_name") VALUES ('RuoyiScheduler', 'STATE_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."qrtz_paused_trigger_grps" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_scheduler_state";
CREATE TABLE "public"."qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;
ALTER TABLE "public"."qrtz_scheduler_state" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
INSERT INTO "public"."qrtz_scheduler_state" ("sched_name", "instance_name", "last_checkin_time", "checkin_interval") VALUES ('RuoyiScheduler', 'LAPTOP-3MPMV2DO1622082068199', 1622082356557, 15000);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simple_triggers";
CREATE TABLE "public"."qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;
ALTER TABLE "public"."qrtz_simple_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simprop_triggers";
CREATE TABLE "public"."qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" varchar(2) COLLATE "pg_catalog"."default",
  "bool_prop_2" varchar(2) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."qrtz_simprop_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_triggers";
CREATE TABLE "public"."qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;
ALTER TABLE "public"."qrtz_triggers" OWNER TO "postgres";

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_config";
CREATE TABLE "public"."sys_config" (
  "config_id" int8 NOT NULL DEFAULT nextval('sys_config_config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default",
  "config_key" varchar(100) COLLATE "pg_catalog"."default",
  "config_value" varchar(500) COLLATE "pg_catalog"."default",
  "config_type" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_config" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_config"."config_id" IS '参数主键';
COMMENT ON COLUMN "public"."sys_config"."config_name" IS '参数名称';
COMMENT ON COLUMN "public"."sys_config"."config_key" IS '参数键名';
COMMENT ON COLUMN "public"."sys_config"."config_value" IS '参数键值';
COMMENT ON COLUMN "public"."sys_config"."config_type" IS '系统内置（Y是 N否）';
COMMENT ON COLUMN "public"."sys_config"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_config"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_config"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_config"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_config" IS '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', '2021-05-27 09:07:43.532263', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', '2021-05-27 10:15:52.394492', '初始化密码 123456');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-09-26 09:13:03.941853', 'admin', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO "public"."sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-09-26 09:13:03.944134', 'admin', NULL, '是否开启注册用户功能（true开启，false关闭）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dept";
CREATE TABLE "public"."sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('sys_dept_dept_id_seq'::regclass),
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default",
  "order_num" int4,
  "leader" varchar(20) COLLATE "pg_catalog"."default",
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_dept" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dept"."dept_id" IS '部门id';
COMMENT ON COLUMN "public"."sys_dept"."parent_id" IS '父部门id';
COMMENT ON COLUMN "public"."sys_dept"."ancestors" IS '祖级列表';
COMMENT ON COLUMN "public"."sys_dept"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_dept"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_dept"."leader" IS '负责人';
COMMENT ON COLUMN "public"."sys_dept"."phone" IS '联系电话';
COMMENT ON COLUMN "public"."sys_dept"."email" IS '邮箱';
COMMENT ON COLUMN "public"."sys_dept"."status" IS '部门状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dept"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_dept"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dept"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dept"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dept"."update_time" IS '更新时间';
COMMENT ON TABLE "public"."sys_dept" IS '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_code" int8 NOT NULL DEFAULT nextval('sys_dict_data_dict_code_seq'::regclass),
  "dict_sort" int4,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default",
  "dict_value" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_dict_data" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dict_data"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_sort" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."css_class" IS '样式属性（其他样式扩展）';
COMMENT ON COLUMN "public"."sys_dict_data"."list_class" IS '表格回显样式';
COMMENT ON COLUMN "public"."sys_dict_data"."is_default" IS '是否默认（Y是 N否）';
COMMENT ON COLUMN "public"."sys_dict_data"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-26 09:13:03.985898', '', NULL, '性别男');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.987754', '', NULL, '性别女');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.98846', '', NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.989308', '', NULL, '显示菜单');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.990049', '', NULL, '隐藏菜单');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.991276', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.992457', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.99317', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.993643', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-26 09:13:03.994052', '', NULL, '默认分组');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.994422', '', NULL, '系统分组');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.994787', '', NULL, '系统默认是');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.995248', '', NULL, '系统默认否');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-26 09:13:03.995967', '', NULL, '通知');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-26 09:13:03.996532', '', NULL, '公告');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.996956', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.997559', '', NULL, '关闭状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-26 09:13:03.998223', '', NULL, '新增操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-26 09:13:03.999171', '', NULL, '修改操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.999941', '', NULL, '删除操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-26 09:13:04.000442', '', NULL, '授权操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.000938', '', NULL, '导出操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.001609', '', NULL, '导入操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.003534', '', NULL, '强退操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.004983', '', NULL, '生成操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.00589', '', NULL, '清空操作');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-26 09:13:04.00708', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.007957', '', NULL, '停用状态');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('sys_dict_type_dict_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default",
  "dict_type" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_dict_type" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_dict_type"."dict_id" IS '字典主键';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '菜单状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '系统开关列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '任务状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '任务分组列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '系统是否列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '通知类型列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '通知状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '操作类型列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '登录状态列表');
INSERT INTO "public"."sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-05-26 18:56:30', 'admin', '2021-05-27 10:07:12.015926', '用户性别列表');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job";
CREATE TABLE "public"."sys_job" (
  "job_id" int8 NOT NULL DEFAULT nextval('sys_job_job_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default",
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default",
  "concurrent" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_job" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_job"."job_id" IS '任务ID';
COMMENT ON COLUMN "public"."sys_job"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job"."cron_expression" IS 'cron执行表达式';
COMMENT ON COLUMN "public"."sys_job"."misfire_policy" IS '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
COMMENT ON COLUMN "public"."sys_job"."concurrent" IS '是否并发执行（0允许 1禁止）';
COMMENT ON COLUMN "public"."sys_job"."status" IS '状态（0正常 1暂停）';
COMMENT ON COLUMN "public"."sys_job"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_job"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_job"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_job"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_job"."remark" IS '备注信息';
COMMENT ON TABLE "public"."sys_job" IS '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');
INSERT INTO "public"."sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_job_log";
CREATE TABLE "public"."sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('sys_job_log_job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_job_log" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_job_log"."job_log_id" IS '任务日志ID';
COMMENT ON COLUMN "public"."sys_job_log"."job_name" IS '任务名称';
COMMENT ON COLUMN "public"."sys_job_log"."job_group" IS '任务组名';
COMMENT ON COLUMN "public"."sys_job_log"."invoke_target" IS '调用目标字符串';
COMMENT ON COLUMN "public"."sys_job_log"."job_message" IS '日志信息';
COMMENT ON COLUMN "public"."sys_job_log"."status" IS '执行状态（0正常 1失败）';
COMMENT ON COLUMN "public"."sys_job_log"."exception_info" IS '异常信息';
COMMENT ON COLUMN "public"."sys_job_log"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."sys_job_log" IS '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_logininfor";
CREATE TABLE "public"."sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('sys_logininfor_info_id_seq'::regclass),
  "user_name" varchar(50) COLLATE "pg_catalog"."default",
  "ipaddr" varchar(128) COLLATE "pg_catalog"."default",
  "login_location" varchar(255) COLLATE "pg_catalog"."default",
  "browser" varchar(50) COLLATE "pg_catalog"."default",
  "os" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "msg" varchar(255) COLLATE "pg_catalog"."default",
  "login_time" timestamp(6)
)
;
ALTER TABLE "public"."sys_logininfor" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_logininfor"."info_id" IS '访问ID';
COMMENT ON COLUMN "public"."sys_logininfor"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_logininfor"."ipaddr" IS '登录IP地址';
COMMENT ON COLUMN "public"."sys_logininfor"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."sys_logininfor"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."sys_logininfor"."os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_logininfor"."status" IS '登录状态（0成功 1失败）';
COMMENT ON COLUMN "public"."sys_logininfor"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."sys_logininfor"."login_time" IS '访问时间';
COMMENT ON TABLE "public"."sys_logininfor" IS '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('sys_menu_menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" int4,
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "query" varchar(255) COLLATE "pg_catalog"."default",
  "is_frame" int4,
  "is_cache" int4 DEFAULT 0,
  "menu_type" char(1) COLLATE "pg_catalog"."default",
  "visible" char(1) COLLATE "pg_catalog"."default",
  "status" int2,
  "perms" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_menu" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '菜单名称';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父菜单ID';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '路由地址';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '组件路径';
COMMENT ON COLUMN "public"."sys_menu"."query" IS '路由参数';
COMMENT ON COLUMN "public"."sys_menu"."is_frame" IS '是否为外链（0是 1否）';
COMMENT ON COLUMN "public"."sys_menu"."is_cache" IS '是否缓存（0缓存 1不缓存）';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型（M目录 C菜单 F按钮）';
COMMENT ON COLUMN "public"."sys_menu"."visible" IS '菜单状态（0显示 1隐藏）';
COMMENT ON COLUMN "public"."sys_menu"."status" IS '菜单状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限标识';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_menu" IS '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', 0, '', 'monitor', 'admin', '2023-09-26 09:13:04.104837', '', NULL, '系统监控目录');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', 0, '', 'tool', 'admin', '2023-09-26 09:13:04.105782', '', NULL, '系统工具目录');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', 0, '', 'guide', 'admin', '2023-09-26 09:13:04.106503', '', NULL, '若依官网地址');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', 0, 'system:user:list', 'user', 'admin', '2023-09-26 09:13:04.106976', '', NULL, '用户管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', 0, 'system:role:list', 'peoples', 'admin', '2023-09-26 09:13:04.107548', '', NULL, '角色管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', 0, 'system:menu:list', 'tree-table', 'admin', '2023-09-26 09:13:04.108063', '', NULL, '菜单管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', 0, 'system:dept:list', 'tree', 'admin', '2023-09-26 09:13:04.108724', '', NULL, '部门管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', 0, 'system:post:list', 'post', 'admin', '2023-09-26 09:13:04.109246', '', NULL, '岗位管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', 0, 'system:dict:list', 'dict', 'admin', '2023-09-26 09:13:04.109872', '', NULL, '字典管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', 0, 'system:config:list', 'edit', 'admin', '2023-09-26 09:13:04.111166', '', NULL, '参数设置菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', 0, 'system:notice:list', 'message', 'admin', '2023-09-26 09:13:04.112012', '', NULL, '通知公告菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', 0, '', 'log', 'admin', '2023-09-26 09:13:04.112571', '', NULL, '日志管理菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', 0, 'monitor:online:list', 'online', 'admin', '2023-09-26 09:13:04.113006', '', NULL, '在线用户菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', 0, 'monitor:job:list', 'job', 'admin', '2023-09-26 09:13:04.113438', '', NULL, '定时任务菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', 0, 'monitor:druid:list', 'druid', 'admin', '2023-09-26 09:13:04.114071', '', NULL, '数据监控菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', 0, 'monitor:server:list', 'server', 'admin', '2023-09-26 09:13:04.114548', '', NULL, '服务监控菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', 0, 'monitor:cache:list', 'redis', 'admin', '2023-09-26 09:13:04.115074', '', NULL, '缓存监控菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', 0, 'tool:build:list', 'build', 'admin', '2023-09-26 09:13:04.116415', '', NULL, '表单构建菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', 0, 'tool:gen:list', 'code', 'admin', '2023-09-26 09:13:04.116846', '', NULL, '代码生成菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', 0, 'tool:swagger:list', 'swagger', 'admin', '2023-09-26 09:13:04.117395', '', NULL, '系统接口菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', 0, 'monitor:operlog:list', 'form', 'admin', '2023-09-26 09:13:04.118241', '', NULL, '操作日志菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', 0, 'monitor:logininfor:list', 'logininfor', 'admin', '2023-09-26 09:13:04.119068', '', NULL, '登录日志菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:user:query', '#', 'admin', '2023-09-26 09:13:04.120072', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:user:add', '#', 'admin', '2023-09-26 09:13:04.121134', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:user:edit', '#', 'admin', '2023-09-26 09:13:04.122082', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:user:remove', '#', 'admin', '2023-09-26 09:13:04.122727', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:user:export', '#', 'admin', '2023-09-26 09:13:04.123204', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', 0, 'system:user:import', '#', 'admin', '2023-09-26 09:13:04.123843', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', 0, 'system:user:resetPwd', '#', 'admin', '2023-09-26 09:13:04.124397', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:role:query', '#', 'admin', '2023-09-26 09:13:04.124962', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:role:add', '#', 'admin', '2023-09-26 09:13:04.126402', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:role:edit', '#', 'admin', '2023-09-26 09:13:04.127312', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:role:remove', '#', 'admin', '2023-09-26 09:13:04.128325', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:role:export', '#', 'admin', '2023-09-26 09:13:04.129299', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:query', '#', 'admin', '2023-09-26 09:13:04.130187', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:add', '#', 'admin', '2023-09-26 09:13:04.130876', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:edit', '#', 'admin', '2023-09-26 09:13:04.131618', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:remove', '#', 'admin', '2023-09-26 09:13:04.132403', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:query', '#', 'admin', '2023-09-26 09:13:04.133146', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:add', '#', 'admin', '2023-09-26 09:13:04.1342', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:edit', '#', 'admin', '2023-09-26 09:13:04.134637', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:remove', '#', 'admin', '2023-09-26 09:13:04.135003', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:post:query', '#', 'admin', '2023-09-26 09:13:04.135584', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:post:add', '#', 'admin', '2023-09-26 09:13:04.136222', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:post:edit', '#', 'admin', '2023-09-26 09:13:04.136729', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:post:remove', '#', 'admin', '2023-09-26 09:13:04.137206', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:post:export', '#', 'admin', '2023-09-26 09:13:04.137809', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:query', '#', 'admin', '2023-09-26 09:13:04.138547', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:add', '#', 'admin', '2023-09-26 09:13:04.139026', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:edit', '#', 'admin', '2023-09-26 09:13:04.139462', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:remove', '#', 'admin', '2023-09-26 09:13:04.14015', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2000, '导航类别', 2007, 1, 'category', 'system/category/index', NULL, 1, 0, 'C', '0', 0, 'system:category:list', 'tree-table', 'admin', '2023-09-26 10:43:04.240481', 'admin', '2023-09-26 10:57:21.68306', '神的孩子都在歌唱菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2002, '导航类别查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:query', '#', 'admin', '2023-09-26 10:43:56.55783', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2003, '导航类别新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:add', '#', 'admin', '2023-09-26 10:43:56.559124', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2004, '导航类别修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:edit', '#', 'admin', '2023-09-26 10:43:56.560076', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2005, '导航类别删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:remove', '#', 'admin', '2023-09-26 10:43:56.561301', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2006, '导航类别导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:export', '#', 'admin', '2023-09-26 10:43:56.562135', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2007, '导航网站管理', 0, 5, '/navication', NULL, NULL, 1, 0, 'M', '0', 0, NULL, 'tree', 'admin', '2023-09-26 10:56:41.855161', NULL, NULL, NULL);
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2009, '导航网站查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:query', '#', 'admin', '2023-09-26 11:24:55.797246', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2010, '导航网站新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:add', '#', 'admin', '2023-09-26 11:24:55.797971', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2011, '导航网站修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:edit', '#', 'admin', '2023-09-26 11:24:55.798752', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2012, '导航网站删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:remove', '#', 'admin', '2023-09-26 11:24:55.800219', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2013, '导航网站导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:export', '#', 'admin', '2023-09-26 11:24:55.802009', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', 0, '', 'system', 'admin', '2023-09-26 09:13:04.10286', '', NULL, '系统管理目录');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', 0, 'monitor:cache:list', 'redis-list', 'admin', '2023-09-26 09:13:04.115625', '', NULL, '缓存列表菜单');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:export', '#', 'admin', '2023-09-26 09:13:04.141939', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:query', '#', 'admin', '2023-09-26 09:13:04.144181', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:add', '#', 'admin', '2023-09-26 09:13:04.145011', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:edit', '#', 'admin', '2023-09-26 09:13:04.145823', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:remove', '#', 'admin', '2023-09-26 09:13:04.146577', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:export', '#', 'admin', '2023-09-26 09:13:04.147231', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:query', '#', 'admin', '2023-09-26 09:13:04.148041', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:add', '#', 'admin', '2023-09-26 09:13:04.148953', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:edit', '#', 'admin', '2023-09-26 09:13:04.149813', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:remove', '#', 'admin', '2023-09-26 09:13:04.150554', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:query', '#', 'admin', '2023-09-26 09:13:04.15115', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:remove', '#', 'admin', '2023-09-26 09:13:04.151921', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:export', '#', 'admin', '2023-09-26 09:13:04.152591', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:query', '#', 'admin', '2023-09-26 09:13:04.153133', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:remove', '#', 'admin', '2023-09-26 09:13:04.153894', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:export', '#', 'admin', '2023-09-26 09:13:04.154622', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:unlock', '#', 'admin', '2023-09-26 09:13:04.155358', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:query', '#', 'admin', '2023-09-26 09:13:04.155939', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:batchLogout', '#', 'admin', '2023-09-26 09:13:04.15779', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:forceLogout', '#', 'admin', '2023-09-26 09:13:04.15873', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:query', '#', 'admin', '2023-09-26 09:13:04.159544', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:add', '#', 'admin', '2023-09-26 09:13:04.160844', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:edit', '#', 'admin', '2023-09-26 09:13:04.16188', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:remove', '#', 'admin', '2023-09-26 09:13:04.162666', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:changeStatus', '#', 'admin', '2023-09-26 09:13:04.163121', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:export', '#', 'admin', '2023-09-26 09:13:04.163841', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:query', '#', 'admin', '2023-09-26 09:13:04.164785', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:edit', '#', 'admin', '2023-09-26 09:13:04.165368', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:remove', '#', 'admin', '2023-09-26 09:13:04.166175', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:import', '#', 'admin', '2023-09-26 09:13:04.167041', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:preview', '#', 'admin', '2023-09-26 09:13:04.16769', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:code', '#', 'admin', '2023-09-26 09:13:04.168415', '', NULL, '');
INSERT INTO "public"."sys_menu" ("menu_id", "menu_name", "parent_id", "order_num", "path", "component", "query", "is_frame", "is_cache", "menu_type", "visible", "status", "perms", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2008, '导航网站', 2007, 1, 'site', 'system/site/index', NULL, 1, 0, 'C', '0', 0, 'system:site:list', 'international', 'admin', '2023-09-26 11:24:55.793745', 'admin', '2023-10-01 22:10:11.369956', '导航网站菜单');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_notice";
CREATE TABLE "public"."sys_notice" (
  "notice_id" int8 NOT NULL DEFAULT nextval('sys_notice_notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" text COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."sys_notice" OWNER TO "postgres";
COMMENT ON COLUMN "public"."sys_notice"."notice_id" IS '公告ID';
COMMENT ON COLUMN "public"."sys_notice"."notice_title" IS '公告标题';
COMMENT ON COLUMN "public"."sys_notice"."notice_type" IS '公告类型（1通知 2公告）';
COMMENT ON COLUMN "public"."sys_notice"."notice_content" IS '公告内容';
COMMENT ON COLUMN "public"."sys_notice"."status" IS '公告状态（0正常 1关闭）';
COMMENT ON COLUMN "public"."sys_notice"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_notice"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_notice"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_notice"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_notice"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_notice" IS '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO "public"."sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '\xe7bbb4e68aa4e58685e5aeb9', '0', 'admin', '2021-05-26 18:56:31', '', NULL, '管理员');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_article_category_id_seq"', 48, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_article_id_seq"', 133, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_check_in_id_seq"
OWNED BY "public"."cyz_task_check_in"."id";
SELECT setval('"public"."cyz_check_in_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_memory_id_seq"
OWNED BY "public"."cyz_memory"."id";
SELECT setval('"public"."cyz_memory_id_seq"', 100, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_navigate_category_id_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_navigate_site_id_seq"', 84, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_phrases_category_id_seq"
OWNED BY "public"."cyz_phrases_category"."id";
SELECT setval('"public"."cyz_phrases_category_id_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_phrases_id_seq"', 30, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_task_plan_id_seq"
OWNED BY "public"."cyz_task_plan"."id";
SELECT setval('"public"."cyz_task_plan_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gen_table_column_column_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gen_table_table_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_config_config_id_seq"', 102, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_dept_dept_id_seq"', 112, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_dict_data_dict_code_seq"', 31, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_dict_type_dict_id_seq"', 13, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_job_job_id_seq"', 6, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_job_log_job_log_id_seq"', 3, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_logininfor_info_id_seq"', 72, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_menu_menu_id_seq"', 2002, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_notice_notice_id_seq"', 5, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_oper_log_oper_id_seq"', 189, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_post_post_id_seq"', 7, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_role_role_id_seq"', 5, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."sys_user_user_id_seq"', 5, false);

-- ----------------------------
-- Primary Key structure for table cyz_article
-- ----------------------------
ALTER TABLE "public"."cyz_article" ADD CONSTRAINT "cyz_article_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_article_category
-- ----------------------------
ALTER TABLE "public"."cyz_article_category" ADD CONSTRAINT "cyz_article_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_file
-- ----------------------------
ALTER TABLE "public"."cyz_file" ADD CONSTRAINT "cyz_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_file_category
-- ----------------------------
ALTER TABLE "public"."cyz_file_category" ADD CONSTRAINT "cyz_file_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_memory
-- ----------------------------
ALTER TABLE "public"."cyz_memory" ADD CONSTRAINT "cyz_memory_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_phrases
-- ----------------------------
ALTER TABLE "public"."cyz_phrases" ADD CONSTRAINT "cyz_phrases_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_phrases_category
-- ----------------------------
ALTER TABLE "public"."cyz_phrases_category" ADD CONSTRAINT "cyz_phrases_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_task_check_in
-- ----------------------------
ALTER TABLE "public"."cyz_task_check_in" ADD CONSTRAINT "cyz_article_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_task_plan
-- ----------------------------
ALTER TABLE "public"."cyz_task_plan" ADD CONSTRAINT "cyz_task_check_in_copy1_pkey" PRIMARY KEY ("id");
