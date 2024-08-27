/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.248.128
 Source Server Type    : PostgreSQL
 Source Server Version : 140006
 Source Host           : 192.168.248.128:5432
 Source Catalog        : navigation
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140006
 File Encoding         : 65001

 Date: 27/08/2024 21:42:19
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

-- ----------------------------
-- Table structure for cyz_article_bind_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article_bind_category";
CREATE TABLE "public"."cyz_article_bind_category" (
  "article_id" int8,
  "category_id" int8
)
;

-- ----------------------------
-- Records of cyz_article_bind_category
-- ----------------------------

-- ----------------------------
-- Table structure for cyz_article_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article_category";
CREATE TABLE "public"."cyz_article_category" (
  "name" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_article_category_id_seq'::regclass),
  "sort" int8,
  "icon" varchar COLLATE "pg_catalog"."default",
  "parent_id" int8
)
;
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

-- ----------------------------
-- Table structure for cyz_memory
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_memory";
CREATE TABLE "public"."cyz_memory" (
  "content" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "id" int4 NOT NULL DEFAULT nextval('cyz_memory_id_seq'::regclass)
)
;
COMMENT ON COLUMN "public"."cyz_memory"."content" IS '内容';
COMMENT ON COLUMN "public"."cyz_memory"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_memory"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_memory"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_memory"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_memory"."update_by" IS '更新者';

-- ----------------------------
-- Records of cyz_memory
-- ----------------------------

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
  "del_flag" char COLLATE "pg_catalog"."default" DEFAULT 0
)
;
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
INSERT INTO "public"."cyz_navigate_category" VALUES (11, 0, 1, '公司网站', NULL, '2023-10-08 11:30:00.081', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (12, 0, 5, '博客网站', NULL, '2023-10-10 17:53:05', '2023-10-10 17:53:09.738', '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (14, 0, 15, '编程-开发', NULL, '2023-10-12 10:12:13.383', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (15, 14, 1, '前端', NULL, '2023-10-12 10:13:02.123', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (16, 14, 5, '后端', NULL, '2023-10-12 10:13:13.311', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (17, 0, 10, '网站', NULL, '2023-10-12 10:13:30.082', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (13, 14, 10, '浏览器', NULL, '2023-10-12 10:08:54', '2023-10-12 10:13:35.054', '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (18, 14, 15, '常用网站', NULL, '2023-10-12 10:20:33.647', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (19, 0, 20, '我的网站', NULL, '2023-10-16 20:28:32.42', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (20, 0, 25, '错题网站', NULL, '2023-10-17 14:59:05.975', NULL, '0');
INSERT INTO "public"."cyz_navigate_category" VALUES (21, 15, 1, 'vue', NULL, '2024-02-06 15:12:59.945', NULL, '1');

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
  "del_flag" char COLLATE "pg_catalog"."default" DEFAULT 0
)
;
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
INSERT INTO "public"."cyz_navigate_site" VALUES (53, 12, 'infoQ', NULL, '在线新闻/社区网站', 'https://www.infoq.cn/', '2023-10-12 10:26:09', '2023-10-12 10:29:03.106', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (67, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015213115A001.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:31:14.983', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (55, 16, 'Kafka 中文文档 - ApacheCN', NULL, NULL, 'https://kafka.apachecn.org/', '2023-10-12 10:30:41.477', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (50, 18, 'GitHub', NULL, 'Let’s build from here · GitHub', 'https://github.com/', '2023-10-12 10:20:50', '2023-10-12 10:32:09.493', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (48, 16, 'Redis命令中心（Redis commands）', NULL, ' Redis中国用户组（CRUG）', 'http://www.redis.cn/commands.html', '2023-10-12 10:19:20', '2023-10-12 10:32:45.817', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (47, 16, 'Linux命令大全(手册) ', '/profile/upload/2023/10/12/favicon_20231012101759A002.png', '真正好用的Linux命令在线查询网站', 'https://www.linuxcool.com/', '2023-10-12 10:17:59', '2023-10-12 10:32:59.093', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (68, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015213741A001.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:37:40.213', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (2, 11, 'coding', '/profile/upload/2023/10/08/favicon_20231008114049A001.jpg', '公司代码管理仓库', 'https://uguardsec.coding.net/user', '2023-10-08 11:41:15', '2023-10-08 11:41:53.698', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (56, 17, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/', '2023-10-13 17:31:21.305', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (7, 12, 'CSDN', '/profile/upload/2023/10/10/1607569674685_20231010180158A001.png', 'Csdn', 'https://www.csdn.net/', '2023-10-10 17:57:57', '2023-10-11 14:39:01.448', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (46, 15, 'Vue.js', NULL, '渐进式 JavaScript 框架', 'https://cn.vuejs.org/', '2023-10-12 10:15:01', '2023-10-12 10:16:28.818', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (63, 11, 'None', NULL, NULL, 'https://www.csdn.net/', '2023-10-15 21:16:16.329', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (62, 17, '验证码_哔哩哔哩', '/profile/upload/2023/10/13/favicon_20231013180950A001.ico', NULL, 'https://www.bilibili.com/', '2023-10-13 18:09:48.249', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (64, 16, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/12/favicon_20231012101759A002.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:16:48.531', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (66, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015212611A004.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:26:11.085', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (65, 11, 'Linux命令大全(手册) – 真正好用的Linux命令在线查询网站', '/profile/upload/2023/10/15/favicon_20231015211912A003.png', NULL, 'https://www.linuxcool.com/', '2023-10-15 21:19:11.478', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (58, 17, '验证码_哔哩哔哩', NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 17:50:26.872', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (45, 15, 'Element ', NULL, 'The world''s most popular Vue UI framework', 'https://element.eleme.cn/', '2023-10-12 10:14:38', '2023-10-12 10:17:07.894', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (59, 17, '验证码_哔哩哔哩', NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:00:06.311', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (60, 17, NULL, NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:01:57.415', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (61, 17, NULL, NULL, NULL, 'https://www.bilibili.com/', '2023-10-13 18:03:20.868', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (57, 17, '验证码_哔哩哔哩', '', NULL, 'https://www.bilibili.com/', '2023-10-13 17:39:24', '2023-10-15 21:38:47.263', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (6, 11, '蓝湖', '/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg', '蓝湖', 'https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa', '2023-10-10 17:42:48.885', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (71, 11, 'None', NULL, NULL, 'https://www.csdn.net/', '2023-10-15 21:40:03.966', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (70, 11, 'Python3 教程 | 菜鸟教程', NULL, NULL, 'https://www.runoob.com/python3/python3-tutorial.html', '2023-10-15 21:39:38.742', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (49, 16, 'Python3 教程 | 菜鸟教程', NULL, NULL, 'https://www.runoob.com/python3/python3-tutorial.html', '2023-10-12 10:19:49.47', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (51, 16, 'PostgreSQL 教程 | 菜鸟教程', '/profile/upload/2023/10/12/favicon_20231012102123A003.png', NULL, 'https://www.runoob.com/postgresql/postgresql-tutorial.html', '2023-10-12 10:21:23.079', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (52, 16, 'Docker 教程 | 菜鸟教程', '/profile/upload/2023/10/12/favicon_20231012102141A004.png', NULL, 'https://www.runoob.com/docker/docker-tutorial.html', '2023-10-12 10:21:40.456', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (72, 11, 'Element - The world''s most popular Vue UI framework', '/profile/upload/2023/10/15/favicon_20231015214031A005.ico', NULL, 'https://element.eleme.cn/', '2023-10-15 21:40:29.837', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (69, 11, '哔哩哔哩', '/profile/upload/2023/10/15/favicon_20231015213902A003.ico', NULL, 'https://www.bilibili.com/', '2023-10-15 21:39:01.04', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (73, 11, 'baidu', '/profile/upload/2023/10/15/favicon_20231012100939A001_20231015214144A006.png', NULL, 'http://www.baidu.com', '2023-10-15 21:41:53', '2023-10-15 21:42:15.857', NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (74, 19, '百度', '/profile/upload/2023/10/16/favicon_20231012100939A001_20231016202924A007.png', '百度', 'http://www.baidu.com', '2023-10-16 20:29:25.926', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (75, 11, '验证码_哔哩哔哩', '/profile/upload/2023/10/16/favicon_20231016210332A008.ico', NULL, 'https://www.bilibili.com/', '2023-10-16 21:03:30.554', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (76, 11, '哔哩哔哩', '/profile/upload/2023/10/16/favicon_20231016210701A009.ico', NULL, 'https://www.bilibili.com/', '2023-10-16 21:07:01', '2023-10-16 21:07:16.02', NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (77, 16, 'MyBatis-Plus', NULL, NULL, 'https://baomidou.com/', '2023-10-17 13:39:39.772', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (78, 20, 'None', NULL, NULL, 'https://blog.csdn.net/liutongzhuang/article/details/121075541', '2023-10-17 14:59:15.147', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (54, 12, '开源中国', NULL, NULL, 'https://www.oschina.net/', '2023-10-12 10:26:40', '2023-10-12 10:26:56.402', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (80, 21, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/user', '2024-02-06 15:14:35.117', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (79, 21, '列表渲染 | Vue.js', NULL, NULL, 'https://cn.vuejs.org/guide/essentials/list.html#v-for-with-a-component', '2024-02-06 15:13:43.556', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (81, 21, 'ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é', '/profile/upload/2024/02/06/favicon_20240206151743A014.png', NULL, 'http://www.baidu.com', '2024-02-06 15:17:43.475', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (82, 14, 'Elasticsearch 平台 — 大规模查找实时答案 | Elastic', '/profile/upload/2024/02/21/favicon_20240221140927A015.png', NULL, 'https://www.elastic.co/cn/', '2024-02-21 14:09:21.246', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (41, 11, 'CODING | 一站式软件研发管理平台', NULL, NULL, 'https://uguardsec.coding.net/p/public/iterations/210/issues/220', '2023-10-12 10:07:50.704', NULL, NULL, NULL, '1');
INSERT INTO "public"."cyz_navigate_site" VALUES (42, 13, '必应', NULL, NULL, 'https://www.bing.com/', '2023-10-12 10:09:10.862', NULL, NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (43, 13, '百度', '/profile/upload/2023/10/12/favicon_20231012100939A001.png', NULL, 'https://www.baidu.com/', '2023-10-12 10:09:38', '2023-10-12 10:09:48.5', NULL, NULL, '0');
INSERT INTO "public"."cyz_navigate_site" VALUES (44, 13, '谷歌', NULL, NULL, 'https://www.google.com.hk/', '2023-10-12 10:10:32', '2023-10-12 10:11:00.341', NULL, NULL, '0');

-- ----------------------------
-- Table structure for cyz_phrases
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases";
CREATE TABLE "public"."cyz_phrases" (
  "sentence" varchar COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar COLLATE "pg_catalog"."default",
  "update_by" varchar COLLATE "pg_catalog"."default",
  "category_id" int8,
  "rank" varchar COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL DEFAULT nextval('cyz_phrases_id_seq'::regclass)
)
;
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

-- ----------------------------
-- Table structure for cyz_phrases_bind_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases_bind_category";
CREATE TABLE "public"."cyz_phrases_bind_category" (
  "phrases_id" int8,
  "category_id" int8
)
;

-- ----------------------------
-- Records of cyz_phrases_bind_category
-- ----------------------------

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
INSERT INTO "public"."gen_table" VALUES (1, 'cyz_navigate_category', '任务类别表', '', '', 'CyzNavigateCategory', 'tree', 'com.ruoyi.system', 'system', 'category', '神的孩子都在歌唱', '神的孩子都在歌唱', '0', NULL, '{"treeCode":"id","treeName":"name","treeParentCode":"parent_id"}', 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903', NULL);
INSERT INTO "public"."gen_table" VALUES (2, 'cyz_navigate_site', '导航网站', '', '', 'CyzNavigateSite', 'crud', 'com.ruoyi.system', 'system', 'site', '导航网站', 'ruoyi', NULL, NULL, '{"parentMenuId":"2007"}', 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474', NULL);

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
INSERT INTO "public"."gen_table_column" VALUES (1, '1', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 1, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (2, '1', 'parent_id', '父id', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 2, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (3, '1', 'sort', '排序', 'integer', 'Long', 'sort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', NULL, 3, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (4, '1', 'name', '类别名称', 'character varying', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', NULL, NULL, 4, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (5, '1', 'icon', '图标', 'character varying', 'String', 'icon', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 5, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (6, '1', 'create_time', '创建时间', 'timestamp without time zone', 'String', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 6, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (7, '1', 'update_time', '更新时间', 'timestamp without time zone', 'String', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 7, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (8, '1', 'del_flag', '删除标志(0代表存在 1代表删除)', 'character', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 8, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 10:31:45.185903');
INSERT INTO "public"."gen_table_column" VALUES (9, '2', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (10, '2', 'category_id', '类别id', 'bigint', 'Long', 'categoryId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (11, '2', 'name', '网站标题', 'character varying', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', NULL, NULL, 3, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (12, '2', 'image', '图片', 'character varying', 'String', 'image', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', NULL, 4, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (13, '2', 'description', '描述', 'character varying', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 5, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (14, '2', 'url', '网站路径', 'character varying', 'String', 'url', '0', '0', '0', '1', '1', '1', '1', 'EQ', NULL, NULL, 6, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (15, '2', 'create_time', '创建时间', 'timestamp without time zone', 'String', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 7, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (16, '2', 'update_time', '更新时间', 'timestamp without time zone', 'String', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 8, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (17, '2', 'create_by', '创建者', 'character varying', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', NULL, NULL, 9, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');
INSERT INTO "public"."gen_table_column" VALUES (18, '2', 'update_by', '更新者', 'character varying', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', NULL, NULL, 10, 'admin', '2023-09-26 10:17:47.203905', NULL, '2023-09-26 11:33:31.034474');

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

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "public"."qrtz_cron_triggers" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

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

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/10 * * * * ?t\\000\\021ryTask.ryNoParamst\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\001t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\227\\240\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/15 * * * * ?t\\000\\025ryTask.ryParams(''ry'')t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\346\\234\\211\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');
INSERT INTO "public"."qrtz_job_details" VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', 'false', 'true', 'false', 'false', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\001t\\000\\017TASK_PROPERTIESsr\\000\\036com.ruoyi.quartz.domain.SysJob\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\010L\\000\\012concurrentt\\000\\022Ljava/lang/String;L\\000\\016cronExpressionq\\000~\\000\\011L\\000\\014invokeTargetq\\000~\\000\\011L\\000\\010jobGroupq\\000~\\000\\011L\\000\\005jobIdt\\000\\020Ljava/lang/Long;L\\000\\007jobNameq\\000~\\000\\011L\\000\\015misfirePolicyq\\000~\\000\\011L\\000\\006statusq\\000~\\000\\011xr\\000''com.ruoyi.common.core.domain.BaseEntity\\000\\000\\000\\000\\000\\000\\000\\001\\002\\000\\007L\\000\\010createByq\\000~\\000\\011L\\000\\012createTimet\\000\\020Ljava/util/Date;L\\000\\006paramsq\\000~\\000\\003L\\000\\006remarkq\\000~\\000\\011L\\000\\013searchValueq\\000~\\000\\011L\\000\\010updateByq\\000~\\000\\011L\\000\\012updateTimeq\\000~\\000\\014xpt\\000\\005adminsr\\000\\016java.util.Datehj\\201\\001KYt\\031\\003\\000\\000xpw\\010\\000\\000\\001y\\250Q\\233\\030xpt\\000\\000pppt\\000\\0011t\\000\\0160/20 * * * * ?t\\0008ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)t\\000\\007DEFAULTsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\003t\\000\\030\\347\\263\\273\\347\\273\\237\\351\\273\\230\\350\\256\\244\\357\\274\\210\\345\\244\\232\\345\\217\\202\\357\\274\\211t\\000\\0013t\\000\\0011x\\000');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO "public"."qrtz_locks" VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');
INSERT INTO "public"."qrtz_locks" VALUES ('RuoyiScheduler', 'STATE_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO "public"."qrtz_scheduler_state" VALUES ('RuoyiScheduler', 'LAPTOP-3MPMV2DO1622082068199', 1622082356557, 15000);

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

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

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

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

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
INSERT INTO "public"."sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', '2021-05-27 09:07:43.532263', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "public"."sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', '2021-05-27 10:15:52.394492', '初始化密码 123456');
INSERT INTO "public"."sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-05-26 18:56:31', 'admin', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO "public"."sys_config" VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-09-26 09:13:03.941853', 'admin', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO "public"."sys_config" VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-09-26 09:13:03.944134', 'admin', NULL, '是否开启注册用户功能（true开启，false关闭）');

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
INSERT INTO "public"."sys_dict_data" VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-26 09:13:03.985898', '', NULL, '性别男');
INSERT INTO "public"."sys_dict_data" VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.987754', '', NULL, '性别女');
INSERT INTO "public"."sys_dict_data" VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.98846', '', NULL, '性别未知');
INSERT INTO "public"."sys_dict_data" VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.989308', '', NULL, '显示菜单');
INSERT INTO "public"."sys_dict_data" VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.990049', '', NULL, '隐藏菜单');
INSERT INTO "public"."sys_dict_data" VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.991276', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.992457', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.99317', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.993643', '', NULL, '停用状态');
INSERT INTO "public"."sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-26 09:13:03.994052', '', NULL, '默认分组');
INSERT INTO "public"."sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-26 09:13:03.994422', '', NULL, '系统分组');
INSERT INTO "public"."sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.994787', '', NULL, '系统默认是');
INSERT INTO "public"."sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.995248', '', NULL, '系统默认否');
INSERT INTO "public"."sys_dict_data" VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-26 09:13:03.995967', '', NULL, '通知');
INSERT INTO "public"."sys_dict_data" VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-26 09:13:03.996532', '', NULL, '公告');
INSERT INTO "public"."sys_dict_data" VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-26 09:13:03.996956', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.997559', '', NULL, '关闭状态');
INSERT INTO "public"."sys_dict_data" VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-26 09:13:03.998223', '', NULL, '新增操作');
INSERT INTO "public"."sys_dict_data" VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-26 09:13:03.999171', '', NULL, '修改操作');
INSERT INTO "public"."sys_dict_data" VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:03.999941', '', NULL, '删除操作');
INSERT INTO "public"."sys_dict_data" VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-26 09:13:04.000442', '', NULL, '授权操作');
INSERT INTO "public"."sys_dict_data" VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.000938', '', NULL, '导出操作');
INSERT INTO "public"."sys_dict_data" VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.001609', '', NULL, '导入操作');
INSERT INTO "public"."sys_dict_data" VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.003534', '', NULL, '强退操作');
INSERT INTO "public"."sys_dict_data" VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-26 09:13:04.004983', '', NULL, '生成操作');
INSERT INTO "public"."sys_dict_data" VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.00589', '', NULL, '清空操作');
INSERT INTO "public"."sys_dict_data" VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-26 09:13:04.00708', '', NULL, '正常状态');
INSERT INTO "public"."sys_dict_data" VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-26 09:13:04.007957', '', NULL, '停用状态');

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
INSERT INTO "public"."sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '菜单状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '系统开关列表');
INSERT INTO "public"."sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '任务状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '任务分组列表');
INSERT INTO "public"."sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '系统是否列表');
INSERT INTO "public"."sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '通知类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '通知状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '操作类型列表');
INSERT INTO "public"."sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-05-26 18:56:30', '', NULL, '登录状态列表');
INSERT INTO "public"."sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-05-26 18:56:30', 'admin', '2021-05-27 10:07:12.015926', '用户性别列表');

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
INSERT INTO "public"."sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');
INSERT INTO "public"."sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-05-26 18:56:31', '', NULL, '');

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
INSERT INTO "public"."sys_menu" VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', 0, '', 'monitor', 'admin', '2023-09-26 09:13:04.104837', '', NULL, '系统监控目录');
INSERT INTO "public"."sys_menu" VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', 0, '', 'tool', 'admin', '2023-09-26 09:13:04.105782', '', NULL, '系统工具目录');
INSERT INTO "public"."sys_menu" VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', 0, '', 'guide', 'admin', '2023-09-26 09:13:04.106503', '', NULL, '若依官网地址');
INSERT INTO "public"."sys_menu" VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', 0, 'system:user:list', 'user', 'admin', '2023-09-26 09:13:04.106976', '', NULL, '用户管理菜单');
INSERT INTO "public"."sys_menu" VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', 0, 'system:role:list', 'peoples', 'admin', '2023-09-26 09:13:04.107548', '', NULL, '角色管理菜单');
INSERT INTO "public"."sys_menu" VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', 0, 'system:menu:list', 'tree-table', 'admin', '2023-09-26 09:13:04.108063', '', NULL, '菜单管理菜单');
INSERT INTO "public"."sys_menu" VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', 0, 'system:dept:list', 'tree', 'admin', '2023-09-26 09:13:04.108724', '', NULL, '部门管理菜单');
INSERT INTO "public"."sys_menu" VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', 0, 'system:post:list', 'post', 'admin', '2023-09-26 09:13:04.109246', '', NULL, '岗位管理菜单');
INSERT INTO "public"."sys_menu" VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', 0, 'system:dict:list', 'dict', 'admin', '2023-09-26 09:13:04.109872', '', NULL, '字典管理菜单');
INSERT INTO "public"."sys_menu" VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', 0, 'system:config:list', 'edit', 'admin', '2023-09-26 09:13:04.111166', '', NULL, '参数设置菜单');
INSERT INTO "public"."sys_menu" VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', 0, 'system:notice:list', 'message', 'admin', '2023-09-26 09:13:04.112012', '', NULL, '通知公告菜单');
INSERT INTO "public"."sys_menu" VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', 0, '', 'log', 'admin', '2023-09-26 09:13:04.112571', '', NULL, '日志管理菜单');
INSERT INTO "public"."sys_menu" VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', 0, 'monitor:online:list', 'online', 'admin', '2023-09-26 09:13:04.113006', '', NULL, '在线用户菜单');
INSERT INTO "public"."sys_menu" VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', 0, 'monitor:job:list', 'job', 'admin', '2023-09-26 09:13:04.113438', '', NULL, '定时任务菜单');
INSERT INTO "public"."sys_menu" VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', 0, 'monitor:druid:list', 'druid', 'admin', '2023-09-26 09:13:04.114071', '', NULL, '数据监控菜单');
INSERT INTO "public"."sys_menu" VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', 0, 'monitor:server:list', 'server', 'admin', '2023-09-26 09:13:04.114548', '', NULL, '服务监控菜单');
INSERT INTO "public"."sys_menu" VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', 0, 'monitor:cache:list', 'redis', 'admin', '2023-09-26 09:13:04.115074', '', NULL, '缓存监控菜单');
INSERT INTO "public"."sys_menu" VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', 0, 'tool:build:list', 'build', 'admin', '2023-09-26 09:13:04.116415', '', NULL, '表单构建菜单');
INSERT INTO "public"."sys_menu" VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', 0, 'tool:gen:list', 'code', 'admin', '2023-09-26 09:13:04.116846', '', NULL, '代码生成菜单');
INSERT INTO "public"."sys_menu" VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', 0, 'tool:swagger:list', 'swagger', 'admin', '2023-09-26 09:13:04.117395', '', NULL, '系统接口菜单');
INSERT INTO "public"."sys_menu" VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', 0, 'monitor:operlog:list', 'form', 'admin', '2023-09-26 09:13:04.118241', '', NULL, '操作日志菜单');
INSERT INTO "public"."sys_menu" VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', 0, 'monitor:logininfor:list', 'logininfor', 'admin', '2023-09-26 09:13:04.119068', '', NULL, '登录日志菜单');
INSERT INTO "public"."sys_menu" VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:user:query', '#', 'admin', '2023-09-26 09:13:04.120072', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:user:add', '#', 'admin', '2023-09-26 09:13:04.121134', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:user:edit', '#', 'admin', '2023-09-26 09:13:04.122082', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:user:remove', '#', 'admin', '2023-09-26 09:13:04.122727', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:user:export', '#', 'admin', '2023-09-26 09:13:04.123204', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', 0, 'system:user:import', '#', 'admin', '2023-09-26 09:13:04.123843', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', 0, 'system:user:resetPwd', '#', 'admin', '2023-09-26 09:13:04.124397', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:role:query', '#', 'admin', '2023-09-26 09:13:04.124962', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:role:add', '#', 'admin', '2023-09-26 09:13:04.126402', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:role:edit', '#', 'admin', '2023-09-26 09:13:04.127312', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:role:remove', '#', 'admin', '2023-09-26 09:13:04.128325', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:role:export', '#', 'admin', '2023-09-26 09:13:04.129299', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:query', '#', 'admin', '2023-09-26 09:13:04.130187', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:add', '#', 'admin', '2023-09-26 09:13:04.130876', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:edit', '#', 'admin', '2023-09-26 09:13:04.131618', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:menu:remove', '#', 'admin', '2023-09-26 09:13:04.132403', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:query', '#', 'admin', '2023-09-26 09:13:04.133146', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:add', '#', 'admin', '2023-09-26 09:13:04.1342', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:edit', '#', 'admin', '2023-09-26 09:13:04.134637', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:dept:remove', '#', 'admin', '2023-09-26 09:13:04.135003', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', 0, 'system:post:query', '#', 'admin', '2023-09-26 09:13:04.135584', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', 0, 'system:post:add', '#', 'admin', '2023-09-26 09:13:04.136222', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', 0, 'system:post:edit', '#', 'admin', '2023-09-26 09:13:04.136729', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', 0, 'system:post:remove', '#', 'admin', '2023-09-26 09:13:04.137206', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', 0, 'system:post:export', '#', 'admin', '2023-09-26 09:13:04.137809', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:query', '#', 'admin', '2023-09-26 09:13:04.138547', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:add', '#', 'admin', '2023-09-26 09:13:04.139026', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:edit', '#', 'admin', '2023-09-26 09:13:04.139462', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:remove', '#', 'admin', '2023-09-26 09:13:04.14015', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2000, '导航类别', 2007, 1, 'category', 'system/category/index', NULL, 1, 0, 'C', '0', 0, 'system:category:list', 'tree-table', 'admin', '2023-09-26 10:43:04.240481', 'admin', '2023-09-26 10:57:21.68306', '神的孩子都在歌唱菜单');
INSERT INTO "public"."sys_menu" VALUES (2002, '导航类别查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:query', '#', 'admin', '2023-09-26 10:43:56.55783', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2003, '导航类别新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:add', '#', 'admin', '2023-09-26 10:43:56.559124', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2004, '导航类别修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:edit', '#', 'admin', '2023-09-26 10:43:56.560076', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2005, '导航类别删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:remove', '#', 'admin', '2023-09-26 10:43:56.561301', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2006, '导航类别导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:category:export', '#', 'admin', '2023-09-26 10:43:56.562135', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2007, '导航网站管理', 0, 5, '/navication', NULL, NULL, 1, 0, 'M', '0', 0, NULL, 'tree', 'admin', '2023-09-26 10:56:41.855161', NULL, NULL, NULL);
INSERT INTO "public"."sys_menu" VALUES (2009, '导航网站查询', 2007, 1, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:query', '#', 'admin', '2023-09-26 11:24:55.797246', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2010, '导航网站新增', 2007, 2, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:add', '#', 'admin', '2023-09-26 11:24:55.797971', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2011, '导航网站修改', 2007, 3, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:edit', '#', 'admin', '2023-09-26 11:24:55.798752', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2012, '导航网站删除', 2007, 4, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:remove', '#', 'admin', '2023-09-26 11:24:55.800219', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2013, '导航网站导出', 2007, 5, '#', '', NULL, 1, 0, 'F', '0', 0, 'system:site:export', '#', 'admin', '2023-09-26 11:24:55.802009', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', 0, '', 'system', 'admin', '2023-09-26 09:13:04.10286', '', NULL, '系统管理目录');
INSERT INTO "public"."sys_menu" VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', 0, 'monitor:cache:list', 'redis-list', 'admin', '2023-09-26 09:13:04.115625', '', NULL, '缓存列表菜单');
INSERT INTO "public"."sys_menu" VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', 0, 'system:dict:export', '#', 'admin', '2023-09-26 09:13:04.141939', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:query', '#', 'admin', '2023-09-26 09:13:04.144181', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:add', '#', 'admin', '2023-09-26 09:13:04.145011', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:edit', '#', 'admin', '2023-09-26 09:13:04.145823', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:remove', '#', 'admin', '2023-09-26 09:13:04.146577', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', 0, 'system:config:export', '#', 'admin', '2023-09-26 09:13:04.147231', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:query', '#', 'admin', '2023-09-26 09:13:04.148041', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:add', '#', 'admin', '2023-09-26 09:13:04.148953', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:edit', '#', 'admin', '2023-09-26 09:13:04.149813', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', 0, 'system:notice:remove', '#', 'admin', '2023-09-26 09:13:04.150554', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:query', '#', 'admin', '2023-09-26 09:13:04.15115', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:remove', '#', 'admin', '2023-09-26 09:13:04.151921', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:operlog:export', '#', 'admin', '2023-09-26 09:13:04.152591', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:query', '#', 'admin', '2023-09-26 09:13:04.153133', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:remove', '#', 'admin', '2023-09-26 09:13:04.153894', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:export', '#', 'admin', '2023-09-26 09:13:04.154622', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:logininfor:unlock', '#', 'admin', '2023-09-26 09:13:04.155358', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:query', '#', 'admin', '2023-09-26 09:13:04.155939', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:batchLogout', '#', 'admin', '2023-09-26 09:13:04.15779', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:online:forceLogout', '#', 'admin', '2023-09-26 09:13:04.15873', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:query', '#', 'admin', '2023-09-26 09:13:04.159544', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:add', '#', 'admin', '2023-09-26 09:13:04.160844', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:edit', '#', 'admin', '2023-09-26 09:13:04.16188', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:remove', '#', 'admin', '2023-09-26 09:13:04.162666', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:changeStatus', '#', 'admin', '2023-09-26 09:13:04.163121', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', 0, 'monitor:job:export', '#', 'admin', '2023-09-26 09:13:04.163841', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:query', '#', 'admin', '2023-09-26 09:13:04.164785', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:edit', '#', 'admin', '2023-09-26 09:13:04.165368', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:remove', '#', 'admin', '2023-09-26 09:13:04.166175', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:import', '#', 'admin', '2023-09-26 09:13:04.167041', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:preview', '#', 'admin', '2023-09-26 09:13:04.16769', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', 0, 'tool:gen:code', '#', 'admin', '2023-09-26 09:13:04.168415', '', NULL, '');
INSERT INTO "public"."sys_menu" VALUES (2008, '导航网站', 2007, 1, 'site', 'system/site/index', NULL, 1, 0, 'C', '0', 0, 'system:site:list', 'international', 'admin', '2023-09-26 11:24:55.793745', 'admin', '2023-10-01 22:10:11.369956', '导航网站菜单');

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
INSERT INTO "public"."sys_notice" VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '\xe7bbb4e68aa4e58685e5aeb9', '0', 'admin', '2021-05-26 18:56:31', '', NULL, '管理员');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_article_category_id_seq"', 19, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_article_id_seq"', 25, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_memory_id_seq"
OWNED BY "public"."cyz_memory"."id";
SELECT setval('"public"."cyz_memory_id_seq"', 4, true);

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
SELECT setval('"public"."cyz_phrases_category_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."cyz_phrases_id_seq"', 13, true);

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
