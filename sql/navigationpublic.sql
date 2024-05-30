/*
 Navicat Premium Data Transfer

 Source Server         : 111.230.112.151
 Source Server Type    : PostgreSQL
 Source Server Version : 140006
 Source Host           : 111.230.112.151:5432
 Source Catalog        : navigation
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140006
 File Encoding         : 65001

 Date: 23/05/2024 00:45:20
*/


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
-- Table structure for cyz_navigate_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_navigate_category";
CREATE TABLE "public"."cyz_navigate_category" (
  "id" int8 NOT NULL DEFAULT nextval('cyz_navigate_category_id_seq'::regclass),
  "parent_id" int8,
  "sort" int4,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "icon" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" char(1) COLLATE "pg_catalog"."default"
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
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "create_by" varchar(255) COLLATE "pg_catalog"."default",
  "update_by" varchar(255) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default"
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
INSERT INTO "public"."sys_logininfor" VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-26 09:23:17.924907');
INSERT INTO "public"."sys_logininfor" VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-26 13:36:52.503123');
INSERT INTO "public"."sys_logininfor" VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-01 22:06:06.151288');
INSERT INTO "public"."sys_logininfor" VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-10-07 17:36:11.905056');
INSERT INTO "public"."sys_logininfor" VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-07 17:36:15.30845');
INSERT INTO "public"."sys_logininfor" VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 09:02:10.955071');
INSERT INTO "public"."sys_logininfor" VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 09:20:05.206043');
INSERT INTO "public"."sys_logininfor" VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:04:16.625776');
INSERT INTO "public"."sys_logininfor" VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:22:23.445277');
INSERT INTO "public"."sys_logininfor" VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-08 10:31:30.236066');
INSERT INTO "public"."sys_logininfor" VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-08 10:31:30.251114');
INSERT INTO "public"."sys_logininfor" VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:31:50.375061');
INSERT INTO "public"."sys_logininfor" VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-10-08 10:32:06.341843');
INSERT INTO "public"."sys_logininfor" VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:32:15.481076');
INSERT INTO "public"."sys_logininfor" VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:33:03.604188');
INSERT INTO "public"."sys_logininfor" VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 10:34:51.369185');
INSERT INTO "public"."sys_logininfor" VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-08 11:28:08.764078');
INSERT INTO "public"."sys_logininfor" VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-08 11:28:08.771287');
INSERT INTO "public"."sys_logininfor" VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-10-08 11:28:11.839075');
INSERT INTO "public"."sys_logininfor" VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-08 11:28:11.842056');
INSERT INTO "public"."sys_logininfor" VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-08 11:28:19.925626');
INSERT INTO "public"."sys_logininfor" VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-10 17:34:43.398825');
INSERT INTO "public"."sys_logininfor" VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-11 14:38:44.810057');
INSERT INTO "public"."sys_logininfor" VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-11 15:52:22.001156');
INSERT INTO "public"."sys_logininfor" VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-11 16:25:53.783062');
INSERT INTO "public"."sys_logininfor" VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-11 16:27:10.466254');
INSERT INTO "public"."sys_logininfor" VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-12 09:04:09.13606');
INSERT INTO "public"."sys_logininfor" VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-12 09:04:09.146056');
INSERT INTO "public"."sys_logininfor" VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-12 09:04:20.932984');
INSERT INTO "public"."sys_logininfor" VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-12 10:01:00.730065');
INSERT INTO "public"."sys_logininfor" VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-10-12 10:36:46.926061');
INSERT INTO "public"."sys_logininfor" VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-10-12 10:50:33.638143');
INSERT INTO "public"."sys_logininfor" VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-12 16:10:39.395769');
INSERT INTO "public"."sys_logininfor" VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-12 16:10:39.408051');
INSERT INTO "public"."sys_logininfor" VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-12 16:10:46.976358');
INSERT INTO "public"."sys_logininfor" VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-12 16:51:32.106568');
INSERT INTO "public"."sys_logininfor" VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-12 17:59:54.547216');
INSERT INTO "public"."sys_logininfor" VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-13 17:30:55.552362');
INSERT INTO "public"."sys_logininfor" VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-15 21:15:38.902954');
INSERT INTO "public"."sys_logininfor" VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-16 20:23:50.029521');
INSERT INTO "public"."sys_logininfor" VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-10-16 20:24:18.657352');
INSERT INTO "public"."sys_logininfor" VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-16 20:24:40.822905');
INSERT INTO "public"."sys_logininfor" VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-16 21:03:17.937714');
INSERT INTO "public"."sys_logininfor" VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-17 13:38:59.181117');
INSERT INTO "public"."sys_logininfor" VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-17 14:58:37.446078');
INSERT INTO "public"."sys_logininfor" VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-17 14:58:37.45029');
INSERT INTO "public"."sys_logininfor" VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-17 14:58:45.552495');
INSERT INTO "public"."sys_logininfor" VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-17 17:43:50.045565');
INSERT INTO "public"."sys_logininfor" VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-10-19 17:30:59.649114');
INSERT INTO "public"."sys_logininfor" VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-10-19 17:30:59.668797');
INSERT INTO "public"."sys_logininfor" VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-10-19 17:31:06.839434');
INSERT INTO "public"."sys_logininfor" VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2024-01-11 15:36:55.331909');
INSERT INTO "public"."sys_logininfor" VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-11 15:36:55.35595');
INSERT INTO "public"."sys_logininfor" VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2024-01-11 15:37:04.469736');
INSERT INTO "public"."sys_logininfor" VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-11 15:37:04.47257');
INSERT INTO "public"."sys_logininfor" VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-01-11 15:38:02.738583');
INSERT INTO "public"."sys_logininfor" VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2024-01-11 15:38:10.158277');
INSERT INTO "public"."sys_logininfor" VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-11 15:38:10.159938');
INSERT INTO "public"."sys_logininfor" VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误4次', '2024-01-11 15:38:21.243772');
INSERT INTO "public"."sys_logininfor" VALUES (60, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-11 15:38:21.245733');
INSERT INTO "public"."sys_logininfor" VALUES (61, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-01-11 15:38:28.662984');
INSERT INTO "public"."sys_logininfor" VALUES (62, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-11 15:39:11.352369');
INSERT INTO "public"."sys_logininfor" VALUES (63, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2024-02-06 09:30:37.612741');
INSERT INTO "public"."sys_logininfor" VALUES (64, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2024-02-06 09:30:37.624736');
INSERT INTO "public"."sys_logininfor" VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2024-02-06 09:30:56.601811');
INSERT INTO "public"."sys_logininfor" VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-06 09:31:00.182981');
INSERT INTO "public"."sys_logininfor" VALUES (67, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-06 10:12:56.354424');
INSERT INTO "public"."sys_logininfor" VALUES (68, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-06 13:46:03.748023');
INSERT INTO "public"."sys_logininfor" VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-06 15:12:44.37879');
INSERT INTO "public"."sys_logininfor" VALUES (70, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-21 14:08:17.453557');

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
INSERT INTO "public"."sys_notice" VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '\', '0', 'admin', '2021-05-26 18:56:31', 'admin', '2021-05-27 09:08:41.403262', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('sys_oper_log_oper_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "business_type" int4,
  "method" varchar(100) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "operator_type" int4,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(50) COLLATE "pg_catalog"."default",
  "oper_url" varchar(255) COLLATE "pg_catalog"."default",
  "oper_ip" varchar(128) COLLATE "pg_catalog"."default",
  "oper_location" varchar(255) COLLATE "pg_catalog"."default",
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default",
  "json_result" varchar(2000) COLLATE "pg_catalog"."default",
  "status" int4,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default",
  "oper_time" timestamp(6),
  "cost_time" int8 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型（0其它 1新增 2修改 3删除）';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."operator_type" IS '操作类别（0其它 1后台用户 2手机端用户）';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '操作人员';
COMMENT ON COLUMN "public"."sys_oper_log"."dept_name" IS '部门名称';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求URL';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_ip" IS '主机地址';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_location" IS '操作地点';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."status" IS '操作状态（0正常 1异常）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON TABLE "public"."sys_oper_log" IS '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO "public"."sys_oper_log" VALUES (1, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{"tables":"cyz_navigate_category,cyz_navigate_site"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:17:47.361627', 172);
INSERT INTO "public"."sys_oper_log" VALUES (2, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"cyz_navigate_category"}', NULL, 0, NULL, '2023-09-26 10:27:21.367825', 72);
INSERT INTO "public"."sys_oper_log" VALUES (3, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"category","className":"CyzNavigateCategory","columns":[{"capJavaField":"Id","columnId":1,"columnName":"id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"input","increment":true,"insert":true,"isEdit":"1","isIncrement":"1","isInsert":"1","isList":"1","isPk":"1","isQuery":"1","isRequired":"0","javaField":"id","javaType":"Long","list":true,"params":{},"pk":true,"query":true,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":1,"usableColumn":false},{"capJavaField":"ParentId","columnComment":"父id","columnId":2,"columnName":"parent_id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"parentId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":true,"tableId":1,"usableColumn":true},{"capJavaField":"Sort","columnComment":"排序","columnId":3,"columnName":"sort","columnType":"integer","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"input","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"sort","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":3,"superColumn":false,"tableId":1,"usableColumn":false},{"capJavaField":"Name","columnComment":"类别名称","columnId":4,"columnName":"name","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"name","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":false,"sort":4,"sup', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:31:45.231481', 42);
INSERT INTO "public"."sys_oper_log" VALUES (4, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"cyz_navigate_category"}', NULL, 0, NULL, '2023-09-26 10:32:24.944437', 74);
INSERT INTO "public"."sys_oper_log" VALUES (5, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:48:53","params":{},"parentId":3,"sort":2}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(1)" 已经存在
### The error may exist in file [E:\study\code\java\github\RuoYi-Vue-Postgresql-master\ruoyi-system\target\classes\mapper\system\CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,                                       create_time )           values ( ?,             ?,                                       ? )
### Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(1)" 已经存在
; 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(1)" 已经存在; nested exception is org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(1)" 已经存在', '2023-09-26 10:48:53.859694', 101);
INSERT INTO "public"."sys_oper_log" VALUES (6, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:00","params":{},"parentId":3,"sort":3}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(2)" 已经存在
### The error may exist in file [E:\study\code\java\github\RuoYi-Vue-Postgresql-master\ruoyi-system\target\classes\mapper\system\CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,                                       create_time )           values ( ?,             ?,                                       ? )
### Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(2)" 已经存在
; 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(2)" 已经存在; nested exception is org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(2)" 已经存在', '2023-09-26 10:49:00.118001', 3);
INSERT INTO "public"."sys_oper_log" VALUES (7, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:05","params":{},"parentId":3,"sort":3}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(3)" 已经存在
### The error may exist in file [E:\study\code\java\github\RuoYi-Vue-Postgresql-master\ruoyi-system\target\classes\mapper\system\CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,                                       create_time )           values ( ?,             ?,                                       ? )
### Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(3)" 已经存在
; 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(3)" 已经存在; nested exception is org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(3)" 已经存在', '2023-09-26 10:49:05.213083', 4);
INSERT INTO "public"."sys_oper_log" VALUES (8, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:09","params":{},"parentId":3,"sort":3}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(4)" 已经存在
### The error may exist in file [E:\study\code\java\github\RuoYi-Vue-Postgresql-master\ruoyi-system\target\classes\mapper\system\CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,                                       create_time )           values ( ?,             ?,                                       ? )
### Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(4)" 已经存在
; 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(4)" 已经存在; nested exception is org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(4)" 已经存在', '2023-09-26 10:49:09.599759', 4);
INSERT INTO "public"."sys_oper_log" VALUES (23, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":4,"createTime":"2023-09-25 10:54:06","description":"sdfsdcvcvv","id":3,"image":"https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg","name":"dsdfs","params":{},"updateTime":"2023-09-26 14:11:05","url":"http://baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 14:11:05.311458', 5);
INSERT INTO "public"."sys_oper_log" VALUES (9, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:12","params":{},"parentId":3,"sort":3}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(5)" 已经存在
### The error may exist in file [E:\study\code\java\github\RuoYi-Vue-Postgresql-master\ruoyi-system\target\classes\mapper\system\CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,                                       create_time )           values ( ?,             ?,                                       ? )
### Cause: org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(5)" 已经存在
; 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(5)" 已经存在; nested exception is org.postgresql.util.PSQLException: 错误: 重复键违反唯一约束"cyz_navigate_category_pkey"
  详细：键值"(id)=(5)" 已经存在', '2023-09-26 10:49:12.659344', 3);
INSERT INTO "public"."sys_oper_log" VALUES (10, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:15","id":6,"params":{},"parentId":3,"sort":3}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:49:15.360817', 7);
INSERT INTO "public"."sys_oper_log" VALUES (11, '神的孩子都在歌唱', 2, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.edit()', 'PUT', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-26 10:49:15","id":6,"name":"从福州市","params":{},"parentId":3,"sort":3,"updateTime":"2023-09-26 10:50:56"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:50:56.781017', 11);
INSERT INTO "public"."sys_oper_log" VALUES (12, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"createBy":"admin","icon":"tree","isCache":"0","isFrame":"1","menuName":"导航网站管理","menuType":"M","orderNum":5,"params":{},"parentId":0,"path":"/navication","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:56:41.898297', 34);
INSERT INTO "public"."sys_oper_log" VALUES (13, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{"children":[],"component":"system/category/index","createTime":"2023-09-26 10:43:04","icon":"tree-table","isCache":"0","isFrame":"1","menuId":2000,"menuName":"导航类别","menuType":"C","orderNum":1,"params":{},"parentId":2007,"path":"category","perms":"system:category:list","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:57:21.709151', 14);
INSERT INTO "public"."sys_oper_log" VALUES (14, '神的孩子都在歌唱', 2, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.edit()', 'PUT', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-09-25 10:12:21","delFlag":"0","id":5,"name":"ffff","params":{},"parentId":0,"sort":1,"updateTime":"2023-09-26 10:57:37"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 10:57:37.176351', 18);
INSERT INTO "public"."sys_oper_log" VALUES (15, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"site","className":"CyzNavigateSite","columns":[{"capJavaField":"Id","columnId":9,"columnName":"id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":false,"htmlType":"input","increment":true,"insert":true,"isIncrement":"1","isInsert":"1","isPk":"1","isRequired":"0","javaField":"id","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":2,"usableColumn":false},{"capJavaField":"CategoryId","columnComment":"类别id","columnId":10,"columnName":"category_id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"select","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"categoryId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":false,"tableId":2,"usableColumn":false},{"capJavaField":"Name","columnComment":"网站标题","columnId":11,"columnName":"name","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"name","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":false,"sort":3,"superColumn":false,"tableId":2,"usableColumn":false},{"capJavaField":"Image","columnComment":"图片","columnId":12,"columnName":"image","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"imageUpload","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"image","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":4,"superColumn":f', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 11:15:44.137553', 61);
INSERT INTO "public"."sys_oper_log" VALUES (16, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"site","className":"CyzNavigateSite","columns":[{"capJavaField":"Id","columnId":9,"columnName":"id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":false,"htmlType":"input","increment":true,"insert":true,"isIncrement":"1","isInsert":"1","isPk":"1","isRequired":"0","javaField":"id","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:15:44","usableColumn":false},{"capJavaField":"CategoryId","columnComment":"类别id","columnId":10,"columnName":"category_id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"select","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"categoryId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:15:44","usableColumn":false},{"capJavaField":"Name","columnComment":"网站标题","columnId":11,"columnName":"name","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"name","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":false,"sort":3,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:15:44","usableColumn":false},{"capJavaField":"Image","columnComment":"图片","columnId":12,"columnName":"image","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"imageUpload","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"image","javaType":"String","', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 11:18:55.218981', 40);
INSERT INTO "public"."sys_oper_log" VALUES (17, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"cyz_navigate_site"}', NULL, 0, NULL, '2023-09-26 11:19:00.297626', 97);
INSERT INTO "public"."sys_oper_log" VALUES (18, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":3,"createTime":"2023-09-25 10:54:06","cyzNavigateCategoryList":[],"description":"sdfsdcvcvv","id":1,"image":"/profile/upload/2023/09/26/微信图片_20220411213250_20230926112741A002.png","name":"dsdfs","params":{},"updateTime":"2023-09-26 11:28:29","url":"http://baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 11:28:29.858566', 35);
INSERT INTO "public"."sys_oper_log" VALUES (19, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/2', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 11:31:48.052515', 10);
INSERT INTO "public"."sys_oper_log" VALUES (20, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{"businessName":"site","className":"CyzNavigateSite","columns":[{"capJavaField":"Id","columnId":9,"columnName":"id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":false,"htmlType":"input","increment":true,"insert":true,"isIncrement":"1","isInsert":"1","isPk":"1","isRequired":"0","javaField":"id","javaType":"Long","list":false,"params":{},"pk":true,"query":false,"queryType":"EQ","required":false,"sort":1,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:18:55","usableColumn":false},{"capJavaField":"CategoryId","columnComment":"类别id","columnId":10,"columnName":"category_id","columnType":"bigint","createBy":"admin","createTime":"2023-09-26 10:17:47","dictType":"","edit":true,"htmlType":"select","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"categoryId","javaType":"Long","list":true,"params":{},"pk":false,"query":true,"queryType":"EQ","required":false,"sort":2,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:18:55","usableColumn":false},{"capJavaField":"Name","columnComment":"网站标题","columnId":11,"columnName":"name","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"name","javaType":"String","list":true,"params":{},"pk":false,"query":true,"queryType":"LIKE","required":false,"sort":3,"superColumn":false,"tableId":2,"updateTime":"2023-09-26 11:18:55","usableColumn":false},{"capJavaField":"Image","columnComment":"图片","columnId":12,"columnName":"image","columnType":"character varying","createBy":"admin","createTime":"2023-09-26 10:17:47","edit":true,"htmlType":"imageUpload","increment":false,"insert":true,"isEdit":"1","isIncrement":"0","isInsert":"1","isList":"1","isPk":"0","isQuery":"1","isRequired":"0","javaField":"image","javaTy', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 11:33:31.11222', 62);
INSERT INTO "public"."sys_oper_log" VALUES (21, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{"tables":"cyz_navigate_site"}', NULL, 0, NULL, '2023-09-26 13:37:28.357325', 101);
INSERT INTO "public"."sys_oper_log" VALUES (22, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":5,"createTime":"2023-09-25 10:54:06","description":"sdfsdcvcvv","id":3,"image":"https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg","name":"dsdfs","params":{},"updateTime":"2023-09-26 14:10:59","url":"http://baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 14:10:59.750569', 26);
INSERT INTO "public"."sys_oper_log" VALUES (24, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":3,"createTime":"2023-09-25 10:54:06","description":"sdfsdcvcvv","id":3,"image":"https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg","name":"dsdfs","params":{},"updateTime":"2023-09-26 14:38:57","url":"http://baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 14:38:57.766345', 23);
INSERT INTO "public"."sys_oper_log" VALUES (25, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":6,"createTime":"2023-09-25 10:54:06","description":"sdfsdcvcvv","id":3,"image":"https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg","name":"dsdfs","params":{},"updateTime":"2023-09-26 14:39:03","url":"http://baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 14:39:03.315831', 6);
INSERT INTO "public"."sys_oper_log" VALUES (26, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-08 11:29:55","name":"公司网站","params":{},"parentId":0,"sort":1}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_category_pkey"
  Detail: Key (id)=(10) already exists.
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateCategoryMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateCategoryMapper.insertCyzNavigateCategory-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_category          ( parent_id,             sort,             name,                          create_time )           values ( ?,             ?,             ?,                          ? )
### Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_category_pkey"
  Detail: Key (id)=(10) already exists.
; ERROR: duplicate key value violates unique constraint "cyz_navigate_category_pkey"
  Detail: Key (id)=(10) already exists.; nested exception is org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_category_pkey"
  Detail: Key (id)=(10) already exists.', '2023-10-08 11:29:55.871045', 27);
INSERT INTO "public"."sys_oper_log" VALUES (27, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-08 11:30:00","id":11,"name":"公司网站","params":{},"parentId":0,"sort":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-08 11:30:00.100616', 7);
INSERT INTO "public"."sys_oper_log" VALUES (28, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":0,"createTime":"2023-10-08 11:41:11","description":"公司代码管理仓库","image":"/profile/upload/2023/10/08/favicon_20231008114049A001.jpg","name":"coding","params":{},"url":"https://uguardsec.coding.net/user"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(1) already exists.
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,             image,             description,             url,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )
### Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(1) already exists.
; ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(1) already exists.; nested exception is org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(1) already exists.', '2023-10-08 11:41:11.668071', 18);
INSERT INTO "public"."sys_oper_log" VALUES (29, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":0,"createTime":"2023-10-08 11:41:15","description":"公司代码管理仓库","id":2,"image":"/profile/upload/2023/10/08/favicon_20231008114049A001.jpg","name":"coding","params":{},"url":"https://uguardsec.coding.net/user"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-08 11:41:15.029036', 6);
INSERT INTO "public"."sys_oper_log" VALUES (30, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-08 11:41:15","description":"公司代码管理仓库","id":2,"image":"/profile/upload/2023/10/08/favicon_20231008114049A001.jpg","name":"coding","params":{},"updateTime":"2023-10-08 11:41:53","url":"https://uguardsec.coding.net/user"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-08 11:41:53.727308', 12);
INSERT INTO "public"."sys_oper_log" VALUES (58, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/17', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:03.79477', 9);
INSERT INTO "public"."sys_oper_log" VALUES (59, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/16', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:08.653062', 7);
INSERT INTO "public"."sys_oper_log" VALUES (60, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/15', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:11.10647', 41);
INSERT INTO "public"."sys_oper_log" VALUES (61, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/14', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:12.923369', 6);
INSERT INTO "public"."sys_oper_log" VALUES (31, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-10 17:42:44","description":"蓝湖","image":"/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg","name":"蓝湖","params":{},"url":"https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(3) already exists.
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,             image,             description,             url,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )
### Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(3) already exists.
; ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(3) already exists.; nested exception is org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(3) already exists.', '2023-10-10 17:42:44.568964', 5);
INSERT INTO "public"."sys_oper_log" VALUES (32, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-10 17:42:46","description":"蓝湖","image":"/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg","name":"蓝湖","params":{},"url":"https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(4) already exists.
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,             image,             description,             url,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )
### Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(4) already exists.
; ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(4) already exists.; nested exception is org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(4) already exists.', '2023-10-10 17:42:46.532147', 8);
INSERT INTO "public"."sys_oper_log" VALUES (33, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-10 17:42:47","description":"蓝湖","image":"/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg","name":"蓝湖","params":{},"url":"https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(5) already exists.
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,             image,             description,             url,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ? )
### Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(5) already exists.
; ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(5) already exists.; nested exception is org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint "cyz_navigate_site_pkey"
  Detail: Key (id)=(5) already exists.', '2023-10-10 17:42:47.819362', 3);
INSERT INTO "public"."sys_oper_log" VALUES (34, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-10 17:42:48","description":"蓝湖","id":6,"image":"/profile/upload/2023/10/10/1696930775911_20231010174242A002.jpg","name":"蓝湖","params":{},"url":"https://lanhuapp.com/dashboard/#/item?tid=00d1b4f4-538e-4138-b8b5-2f9793491baa"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-10 17:42:48.901978', 5);
INSERT INTO "public"."sys_oper_log" VALUES (35, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-10 17:53:05","delFlag":"0","id":12,"name":"博客网站","params":{},"parentId":11,"sort":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-10 17:53:05.256718', 35);
INSERT INTO "public"."sys_oper_log" VALUES (36, '神的孩子都在歌唱', 2, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.edit()', 'PUT', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-10 17:53:05","delFlag":"0","id":12,"name":"博客网站","params":{},"parentId":0,"sort":5,"updateTime":"2023-10-10 17:53:09"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-10 17:53:09.763095', 12);
INSERT INTO "public"."sys_oper_log" VALUES (37, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-10 17:54:23","delFlag":"0","description":"Csdn","name":"CSDN","params":{},"url":"https://www.csdn.net/"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,                          description,             url,             create_time )           values ( ?,             ?,                          ?,             ?,             ?,                                                    ? )
### Cause: org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305', '2023-10-10 17:54:23.59608', 77);
INSERT INTO "public"."sys_oper_log" VALUES (62, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/13', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:14.77852', 7);
INSERT INTO "public"."sys_oper_log" VALUES (38, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-10 17:54:27","delFlag":"0","description":"Csdn","name":"CSDN","params":{},"url":"https://www.csdn.net/"}', NULL, 1, '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305
### The error may exist in URL [jar:file:/chenyunzhi/project/navicate/navicate_admin/ruoyi-admin.jar!/BOOT-INF/lib/ruoyi-system-3.8.6.jar!/mapper/system/CyzNavigateSiteMapper.xml]
### The error may involve com.ruoyi.system.mapper.CyzNavigateSiteMapper.insertCyzNavigateSite-Inline
### The error occurred while setting parameters
### SQL: insert into cyz_navigate_site          ( category_id,             name,                          description,             url,             create_time )           values ( ?,             ?,                          ?,             ?,             ?,                                                    ? )
### Cause: org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ERROR: INSERT has more expressions than target columns
  Position: 305', '2023-10-10 17:54:27.798591', 7);
INSERT INTO "public"."sys_oper_log" VALUES (39, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-10 17:57:57","delFlag":"0","description":"Csdn","id":7,"name":"CSDN","params":{},"url":"https://www.csdn.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-10 17:57:57.56906', 59);
INSERT INTO "public"."sys_oper_log" VALUES (40, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"categoryName":"博客网站","createTime":"2023-10-10 17:57:57","description":"Csdn","id":7,"image":"/profile/upload/2023/10/10/1607569674685_20231010180158A001.png","name":"CSDN","params":{},"updateTime":"2023-10-10 18:01:59","url":"https://www.csdn.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-10 18:01:59.264811', 11);
INSERT INTO "public"."sys_oper_log" VALUES (41, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"categoryName":"博客网站","createTime":"2023-10-10 17:57:57","description":"Csdn","id":7,"image":"/profile/upload/2023/10/10/1607569674685_20231010180158A001.png","name":"CSDN","params":{},"updateTime":"2023-10-11 14:39:01","url":"https://www.csdn.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 14:39:01.467852', 5);
INSERT INTO "public"."sys_oper_log" VALUES (42, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 15:53:19","delFlag":"0","id":8,"params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 15:53:20.542452', 177);
INSERT INTO "public"."sys_oper_log" VALUES (43, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/8', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 15:57:32.114246', 65);
INSERT INTO "public"."sys_oper_log" VALUES (44, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 15:57:42","delFlag":"0","id":9,"params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 15:58:00.098711', 17123);
INSERT INTO "public"."sys_oper_log" VALUES (45, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 15:59:09","delFlag":"0","id":10,"params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 15:59:16.212768', 5901);
INSERT INTO "public"."sys_oper_log" VALUES (46, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:01:24","delFlag":"0","id":11,"params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:01:34.917175', 9746);
INSERT INTO "public"."sys_oper_log" VALUES (47, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/10', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:01:44.146584', 37);
INSERT INTO "public"."sys_oper_log" VALUES (48, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/11', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:01:47.148147', 22);
INSERT INTO "public"."sys_oper_log" VALUES (49, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/9', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:01:50.220362', 25);
INSERT INTO "public"."sys_oper_log" VALUES (50, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:08:01","delFlag":"0","id":12,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:08:16.756552', 13877);
INSERT INTO "public"."sys_oper_log" VALUES (51, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:09:15","delFlag":"0","id":13,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:09:28.073821', 11893);
INSERT INTO "public"."sys_oper_log" VALUES (52, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:09:29","delFlag":"0","id":14,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:09:32.936604', 2088);
INSERT INTO "public"."sys_oper_log" VALUES (53, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:09:52","delFlag":"0","id":15,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:09:58.050901', 4442);
INSERT INTO "public"."sys_oper_log" VALUES (54, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:10:26","delFlag":"0","id":16,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:16:12.26198', 334438);
INSERT INTO "public"."sys_oper_log" VALUES (55, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:16:00","delFlag":"0","id":17,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:16:17.544915', 16311);
INSERT INTO "public"."sys_oper_log" VALUES (56, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:16:00","delFlag":"0","id":18,"name":"cccvvv","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:16:17.577921', 16337);
INSERT INTO "public"."sys_oper_log" VALUES (57, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/18', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:02.105225', 11);
INSERT INTO "public"."sys_oper_log" VALUES (63, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/12', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:26:16.414564', 26);
INSERT INTO "public"."sys_oper_log" VALUES (64, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:42:22","delFlag":"0","id":19,"params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:42:23.032117', 56);
INSERT INTO "public"."sys_oper_log" VALUES (65, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:43:29","delFlag":"0","id":20,"params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:43:29.501679', 56);
INSERT INTO "public"."sys_oper_log" VALUES (66, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:55:34","delFlag":"0","id":21,"params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:55:35.870044', 1023);
INSERT INTO "public"."sys_oper_log" VALUES (68, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:58:58","delFlag":"0","id":23,"image":"/chenyunzhi/project/navicate/navicate_admin/uploadPath/2023/10/11/favicon_20231011165904A003.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:59:07.523965', 8486);
INSERT INTO "public"."sys_oper_log" VALUES (67, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:59:02","delFlag":"0","id":22,"image":"/chenyunzhi/project/navicate/navicate_admin/uploadPath/2023/10/11/favicon_20231011165904A002.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:59:07.523119', 4486);
INSERT INTO "public"."sys_oper_log" VALUES (69, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 16:59:01","delFlag":"0","id":24,"image":"/chenyunzhi/project/navicate/navicate_admin/uploadPath/2023/10/11/favicon_20231011165904A001.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 16:59:07.52444', 6378);
INSERT INTO "public"."sys_oper_log" VALUES (70, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:13:09","delFlag":"0","id":25,"image":"/profile/upload/2023/10/11/favicon_20231011171315A001.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:13:19.315084', 9847);
INSERT INTO "public"."sys_oper_log" VALUES (71, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:14:09","delFlag":"0","id":26,"image":"/profile/upload/2023/10/11/favicon_20231011171414A002.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:14:14.583071', 5338);
INSERT INTO "public"."sys_oper_log" VALUES (72, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:21:31","delFlag":"0","id":27,"image":"/profile/upload/2023/10/11/favicon_20231011172138A003.png","name":"知乎 - 有问题，就会有答案","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:21:38.798899', 6875);
INSERT INTO "public"."sys_oper_log" VALUES (73, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:30:41","delFlag":"0","id":28,"image":"/profile/upload/2023/10/11/favicon_20231011173047A001.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"http://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:30:48.836898', 7292);
INSERT INTO "public"."sys_oper_log" VALUES (74, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:30:47","delFlag":"0","id":29,"image":"/profile/upload/2023/10/11/favicon_20231011173048A002.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:30:50.860057', 2862);
INSERT INTO "public"."sys_oper_log" VALUES (75, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:31:03","delFlag":"0","id":30,"image":"/profile/upload/2023/10/11/favicon_20231011173104A003.png","name":"ç¾åº¦ä¸ä¸ï¼ä½ å°±ç¥é","params":{},"url":"https://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:31:04.231889', 1008);
INSERT INTO "public"."sys_oper_log" VALUES (76, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:31:18","delFlag":"0","id":31,"image":"/profile/upload/2023/10/11/favicon_20231011173122A004.png","name":"知乎 - 有问题，就会有答案","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:31:22.655054', 4127);
INSERT INTO "public"."sys_oper_log" VALUES (77, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:45:36","delFlag":"0","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:45:37.239108', 265);
INSERT INTO "public"."sys_oper_log" VALUES (78, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:45:55","delFlag":"0","params":{},"url":"https://github.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:45:55.798064', 8);
INSERT INTO "public"."sys_oper_log" VALUES (79, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:46:15","delFlag":"0","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:46:15.635779', 3);
INSERT INTO "public"."sys_oper_log" VALUES (80, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:50:16","delFlag":"0","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:50:16.853302', 7);
INSERT INTO "public"."sys_oper_log" VALUES (106, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:12:13","delFlag":"0","id":14,"name":"编程-开发","params":{},"parentId":0,"sort":15}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:12:13.413176', 17);
INSERT INTO "public"."sys_oper_log" VALUES (81, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:53:51","delFlag":"0","id":36,"image":"/profile/upload/2023/10/11/favicon_20231011175358A001.png","name":"知乎 - 有问题，就会有答案","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:54:03.404132', 12153);
INSERT INTO "public"."sys_oper_log" VALUES (82, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 17:54:11","delFlag":"0","id":37,"image":"/profile/upload/2023/10/11/favicon_20231011175416A002.png","name":"知乎 - 有问题，就会有答案","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 17:54:16.779057', 5011);
INSERT INTO "public"."sys_oper_log" VALUES (83, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 18:02:22","delFlag":"0","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:02:22.949248', 184);
INSERT INTO "public"."sys_oper_log" VALUES (84, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-11 18:02:44","delFlag":"0","params":{},"url":"https://github.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:02:44.151059', 3);
INSERT INTO "public"."sys_oper_log" VALUES (85, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/39', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:03:50.921958', 231);
INSERT INTO "public"."sys_oper_log" VALUES (86, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/38', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:03:57.729923', 585);
INSERT INTO "public"."sys_oper_log" VALUES (87, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/37', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:03:59.914544', 13);
INSERT INTO "public"."sys_oper_log" VALUES (88, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/30', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:14.209661', 75);
INSERT INTO "public"."sys_oper_log" VALUES (89, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/29', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:16.346279', 8);
INSERT INTO "public"."sys_oper_log" VALUES (90, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/28', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:18.368419', 11);
INSERT INTO "public"."sys_oper_log" VALUES (91, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/26', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:20.286275', 10);
INSERT INTO "public"."sys_oper_log" VALUES (92, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/25', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:22.117071', 14);
INSERT INTO "public"."sys_oper_log" VALUES (93, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/22', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:36.155812', 42);
INSERT INTO "public"."sys_oper_log" VALUES (94, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/21', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-11 18:04:38.39641', 6);
INSERT INTO "public"."sys_oper_log" VALUES (95, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-12 10:03:47","delFlag":"0","params":{},"url":"https://www.zhihu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:03:47.853159', 9);
INSERT INTO "public"."sys_oper_log" VALUES (96, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/40', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:03:57.359071', 8);
INSERT INTO "public"."sys_oper_log" VALUES (97, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/36', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:04:10.220075', 13);
INSERT INTO "public"."sys_oper_log" VALUES (98, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-12 10:07:50","delFlag":"0","params":{},"url":"https://uguardsec.coding.net/p/public/iterations/210/issues/220"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:07:50.778058', 23);
INSERT INTO "public"."sys_oper_log" VALUES (99, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/41', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:08:17.994756', 15);
INSERT INTO "public"."sys_oper_log" VALUES (100, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:08:54","delFlag":"0","id":13,"name":"浏览器","params":{},"parentId":0,"sort":10}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:08:54.677057', 16);
INSERT INTO "public"."sys_oper_log" VALUES (101, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":13,"createTime":"2023-10-12 10:09:10","delFlag":"0","params":{},"url":"https://www.bing.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:09:10.882101', 5);
INSERT INTO "public"."sys_oper_log" VALUES (102, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":13,"createTime":"2023-10-12 10:09:38","delFlag":"0","params":{},"url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:09:38.636057', 1);
INSERT INTO "public"."sys_oper_log" VALUES (103, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":13,"categoryName":"浏览器","createTime":"2023-10-12 10:09:38","id":43,"image":"/profile/upload/2023/10/12/favicon_20231012100939A001.png","name":"百度","params":{},"updateTime":"2023-10-12 10:09:48","url":"https://www.baidu.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:09:48.520717', 7);
INSERT INTO "public"."sys_oper_log" VALUES (104, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":13,"createTime":"2023-10-12 10:10:32","delFlag":"0","params":{},"url":"https://www.google.com.hk/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:10:32.597065', 384);
INSERT INTO "public"."sys_oper_log" VALUES (105, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":13,"categoryName":"浏览器","createTime":"2023-10-12 10:10:32","id":44,"name":"谷歌","params":{},"updateTime":"2023-10-12 10:11:00","url":"https://www.google.com.hk/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:11:00.358897', 5);
INSERT INTO "public"."sys_oper_log" VALUES (107, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:13:02","delFlag":"0","id":15,"name":"前端","params":{},"parentId":14,"sort":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:13:02.14255', 6);
INSERT INTO "public"."sys_oper_log" VALUES (108, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:13:13","delFlag":"0","id":16,"name":"后端","params":{},"parentId":14,"sort":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:13:13.32938', 6);
INSERT INTO "public"."sys_oper_log" VALUES (109, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:13:30","delFlag":"0","id":17,"name":"网站","params":{},"parentId":0,"sort":10}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:13:30.101189', 7);
INSERT INTO "public"."sys_oper_log" VALUES (110, '神的孩子都在歌唱', 2, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.edit()', 'PUT', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:08:54","delFlag":"0","id":13,"name":"浏览器","params":{},"parentId":14,"sort":10,"updateTime":"2023-10-12 10:13:35"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:13:35.074763', 7);
INSERT INTO "public"."sys_oper_log" VALUES (111, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"createTime":"2023-10-12 10:14:38","delFlag":"0","params":{},"url":"https://element.eleme.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:14:38.462981', 2);
INSERT INTO "public"."sys_oper_log" VALUES (112, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"createTime":"2023-10-12 10:15:01","delFlag":"0","params":{},"url":"https://cn.vuejs.org/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:15:01.769401', 2);
INSERT INTO "public"."sys_oper_log" VALUES (113, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:15:01","id":46,"name":"Vue.js - 渐进式 JavaScript ","params":{},"updateTime":"2023-10-12 10:15:33","url":"https://cn.vuejs.org/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:15:33.53707', 8);
INSERT INTO "public"."sys_oper_log" VALUES (114, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:15:01","id":46,"name":"Vue.js - 渐进式 JavaScript 框架 | Vue.js","params":{},"updateTime":"2023-10-12 10:15:45","url":"https://cn.vuejs.org/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:15:45.307861', 8);
INSERT INTO "public"."sys_oper_log" VALUES (115, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:15:01","description":"渐进式 JavaScript 框架","id":46,"name":"Vue.js","params":{},"updateTime":"2023-10-12 10:16:28","url":"https://cn.vuejs.org/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:16:28.842012', 11);
INSERT INTO "public"."sys_oper_log" VALUES (116, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:14:38","description":"The world''s most popular Vue UI framework","id":45,"name":"Element ","params":{},"updateTime":"2023-10-12 10:16:39","url":"https://element.eleme.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:16:39.043224', 7);
INSERT INTO "public"."sys_oper_log" VALUES (117, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:14:38","description":"The world''s most popular","id":45,"name":"Element ","params":{},"updateTime":"2023-10-12 10:16:59","url":"https://element.eleme.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:16:59.0538', 6);
INSERT INTO "public"."sys_oper_log" VALUES (118, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":15,"categoryName":"前端","createTime":"2023-10-12 10:14:38","description":"The world''s most popular Vue UI framework","id":45,"name":"Element ","params":{},"updateTime":"2023-10-12 10:17:07","url":"https://element.eleme.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:17:07.912753', 7);
INSERT INTO "public"."sys_oper_log" VALUES (119, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:17:59","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:17:59.154668', 0);
INSERT INTO "public"."sys_oper_log" VALUES (120, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:19:20","delFlag":"0","params":{},"url":"http://www.redis.cn/commands.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:19:20.93321', 2);
INSERT INTO "public"."sys_oper_log" VALUES (121, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:19:49","delFlag":"0","params":{},"url":"https://www.runoob.com/python3/python3-tutorial.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:19:49.48906', 1);
INSERT INTO "public"."sys_oper_log" VALUES (122, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-12 10:20:33","delFlag":"0","id":18,"name":"常用网站","params":{},"parentId":14,"sort":15}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:20:33.665667', 5);
INSERT INTO "public"."sys_oper_log" VALUES (123, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:20:50","delFlag":"0","params":{},"url":"https://github.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:20:50.895486', 1);
INSERT INTO "public"."sys_oper_log" VALUES (124, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:21:23","delFlag":"0","params":{},"url":"https://www.runoob.com/postgresql/postgresql-tutorial.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:21:23.094047', 0);
INSERT INTO "public"."sys_oper_log" VALUES (125, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:21:40","delFlag":"0","params":{},"url":"https://www.runoob.com/docker/docker-tutorial.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:21:40.471222', 0);
INSERT INTO "public"."sys_oper_log" VALUES (126, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-12 10:26:09","delFlag":"0","params":{},"url":"https://www.infoq.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:26:09.994576', 0);
INSERT INTO "public"."sys_oper_log" VALUES (127, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"createTime":"2023-10-12 10:26:40","delFlag":"0","params":{},"url":"https://www.oschina.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:26:40.591228', 0);
INSERT INTO "public"."sys_oper_log" VALUES (128, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"categoryName":"博客网站","createTime":"2023-10-12 10:26:40","id":54,"name":"开源中国","params":{},"updateTime":"2023-10-12 10:26:56","url":"https://www.oschina.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:26:56.420903', 7);
INSERT INTO "public"."sys_oper_log" VALUES (129, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":12,"categoryName":"博客网站","createTime":"2023-10-12 10:26:09","description":"在线新闻/社区网站","id":53,"name":"infoQ","params":{},"updateTime":"2023-10-12 10:29:03","url":"https://www.infoq.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:29:03.123978', 6);
INSERT INTO "public"."sys_oper_log" VALUES (130, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":18,"categoryName":"后端","createTime":"2023-10-12 10:20:50","id":50,"name":"GitHub: Let’s build from here · GitHub","params":{},"updateTime":"2023-10-12 10:29:36","url":"https://github.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:29:36.410348', 7);
INSERT INTO "public"."sys_oper_log" VALUES (131, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-12 10:30:41","delFlag":"0","params":{},"url":"https://kafka.apachecn.org/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:30:41.490053', 0);
INSERT INTO "public"."sys_oper_log" VALUES (132, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":18,"categoryName":"常用网站","createTime":"2023-10-12 10:20:50","description":"Let’s build from here · GitHub","id":50,"name":"GitHub","params":{},"updateTime":"2023-10-12 10:32:09","url":"https://github.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:32:09.512591', 8);
INSERT INTO "public"."sys_oper_log" VALUES (133, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"categoryName":"后端","createTime":"2023-10-12 10:19:20","description":" Redis中国用户组（CRUG）","id":48,"name":"Redis命令中心（Redis commands）","params":{},"updateTime":"2023-10-12 10:32:45","url":"http://www.redis.cn/commands.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:32:45.833946', 5);
INSERT INTO "public"."sys_oper_log" VALUES (134, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"categoryName":"后端","createTime":"2023-10-12 10:17:59","description":"真正好用的Linux命令在线查询网站","id":47,"image":"/profile/upload/2023/10/12/favicon_20231012101759A002.png","name":"Linux命令大全(手册) ","params":{},"updateTime":"2023-10-12 10:32:59","url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-12 10:32:59.112171', 7);
INSERT INTO "public"."sys_oper_log" VALUES (135, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 17:31:21","delFlag":"0","params":{},"url":"https://uguardsec.coding.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 17:31:21.319064', 1);
INSERT INTO "public"."sys_oper_log" VALUES (136, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 17:39:24","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 17:39:24.907618', 0);
INSERT INTO "public"."sys_oper_log" VALUES (137, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 17:50:26","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 17:50:26.889312', 0);
INSERT INTO "public"."sys_oper_log" VALUES (138, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 18:00:06","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 18:00:06.324007', 0);
INSERT INTO "public"."sys_oper_log" VALUES (139, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 18:01:57","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 18:01:57.513062', 25);
INSERT INTO "public"."sys_oper_log" VALUES (140, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 18:03:20","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 18:03:20.883334', 1);
INSERT INTO "public"."sys_oper_log" VALUES (141, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"createTime":"2023-10-13 18:09:48","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-13 18:09:48.328062', 38);
INSERT INTO "public"."sys_oper_log" VALUES (142, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:16:16","delFlag":"0","params":{},"url":"https://www.csdn.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:16:16.344059', 1);
INSERT INTO "public"."sys_oper_log" VALUES (143, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/63', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:16:23.447149', 9);
INSERT INTO "public"."sys_oper_log" VALUES (144, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-15 21:16:48","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:16:48.544059', 0);
INSERT INTO "public"."sys_oper_log" VALUES (145, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/64', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:16:54.788074', 8);
INSERT INTO "public"."sys_oper_log" VALUES (146, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:19:11","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:19:11.494004', 3);
INSERT INTO "public"."sys_oper_log" VALUES (147, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:26:11","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:26:11.101151', 2);
INSERT INTO "public"."sys_oper_log" VALUES (148, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/66', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:30:42.014213', 27);
INSERT INTO "public"."sys_oper_log" VALUES (149, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:31:14","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:31:15.012062', 9);
INSERT INTO "public"."sys_oper_log" VALUES (150, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/65', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:37:26.502469', 23);
INSERT INTO "public"."sys_oper_log" VALUES (151, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:37:40","delFlag":"0","params":{},"url":"https://www.linuxcool.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:37:40.252169', 20);
INSERT INTO "public"."sys_oper_log" VALUES (152, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/67', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:37:50.231748', 8);
INSERT INTO "public"."sys_oper_log" VALUES (153, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/68', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:37:53.128943', 8);
INSERT INTO "public"."sys_oper_log" VALUES (154, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/62', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:38:00.732063', 6);
INSERT INTO "public"."sys_oper_log" VALUES (155, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/61,60,59,58', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:38:09.116846', 7);
INSERT INTO "public"."sys_oper_log" VALUES (156, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"categoryName":"网站","createTime":"2023-10-13 17:39:24","id":57,"image":"/profile/upload/2023/10/15/1607569674685_20231015213835A002.png","name":"验证码_哔哩哔哩","params":{},"updateTime":"2023-10-15 21:38:37","url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:38:37.084863', 6);
INSERT INTO "public"."sys_oper_log" VALUES (157, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":17,"categoryName":"网站","createTime":"2023-10-13 17:39:24","id":57,"image":"","name":"验证码_哔哩哔哩","params":{},"updateTime":"2023-10-15 21:38:47","url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:38:47.289441', 11);
INSERT INTO "public"."sys_oper_log" VALUES (158, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:39:01","delFlag":"0","name":"哔哩哔哩","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:39:01.056558', 2);
INSERT INTO "public"."sys_oper_log" VALUES (159, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:39:38","delFlag":"0","params":{},"url":"https://www.runoob.com/python3/python3-tutorial.html"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:39:38.760475', 1);
INSERT INTO "public"."sys_oper_log" VALUES (160, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:40:03","delFlag":"0","params":{},"url":"https://www.csdn.net/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:03.984506', 5);
INSERT INTO "public"."sys_oper_log" VALUES (161, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/71', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:14.97228', 6);
INSERT INTO "public"."sys_oper_log" VALUES (162, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/70', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:17.807292', 6);
INSERT INTO "public"."sys_oper_log" VALUES (163, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:40:29","delFlag":"0","params":{},"url":"https://element.eleme.cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:29.85312', 1);
INSERT INTO "public"."sys_oper_log" VALUES (164, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/72', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:36.092409', 6);
INSERT INTO "public"."sys_oper_log" VALUES (165, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/69', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:40:41.48224', 8);
INSERT INTO "public"."sys_oper_log" VALUES (166, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-15 21:41:53","delFlag":"0","image":"/profile/upload/2023/10/15/favicon_20231012100939A001_20231015214144A006.png","name":"baidu","params":{},"url":"baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:41:53.104866', 2);
INSERT INTO "public"."sys_oper_log" VALUES (167, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"categoryName":"公司网站","createTime":"2023-10-15 21:41:53","id":73,"image":"/profile/upload/2023/10/15/favicon_20231012100939A001_20231015214144A006.png","name":"baidu","params":{},"updateTime":"2023-10-15 21:42:15","url":"http://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:42:15.878063', 8);
INSERT INTO "public"."sys_oper_log" VALUES (168, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/73', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-15 21:42:29.69509', 5);
INSERT INTO "public"."sys_oper_log" VALUES (169, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-16 20:28:32","delFlag":"0","id":19,"name":"我的网站","params":{},"parentId":0,"sort":20}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 20:28:32.457838', 22);
INSERT INTO "public"."sys_oper_log" VALUES (170, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":19,"createTime":"2023-10-16 20:29:25","delFlag":"0","description":"百度","image":"/profile/upload/2023/10/16/favicon_20231012100939A001_20231016202924A007.png","name":"百度","params":{},"url":"http://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 20:29:25.939066', 0);
INSERT INTO "public"."sys_oper_log" VALUES (171, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-16 21:03:30","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 21:03:30.56806', 1);
INSERT INTO "public"."sys_oper_log" VALUES (172, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/75', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 21:03:35.41366', 5);
INSERT INTO "public"."sys_oper_log" VALUES (173, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"createTime":"2023-10-16 21:07:01","delFlag":"0","params":{},"url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 21:07:01.180066', 1);
INSERT INTO "public"."sys_oper_log" VALUES (174, '导航网站', 2, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.edit()', 'PUT', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":11,"categoryName":"公司网站","createTime":"2023-10-16 21:07:01","id":76,"image":"/profile/upload/2023/10/16/favicon_20231016210701A009.ico","name":"哔哩哔哩","params":{},"updateTime":"2023-10-16 21:07:16","url":"https://www.bilibili.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-16 21:07:16.038323', 6);
INSERT INTO "public"."sys_oper_log" VALUES (175, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/76', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-17 13:39:09.464706', 6);
INSERT INTO "public"."sys_oper_log" VALUES (176, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":16,"createTime":"2023-10-17 13:39:39","delFlag":"0","params":{},"url":"https://baomidou.com/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-17 13:39:39.784385', 1);
INSERT INTO "public"."sys_oper_log" VALUES (177, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2023-10-17 14:59:05","delFlag":"0","id":20,"name":"错题网站","params":{},"parentId":0,"sort":25}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-17 14:59:05.992495', 6);
INSERT INTO "public"."sys_oper_log" VALUES (178, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":20,"createTime":"2023-10-17 14:59:15","delFlag":"0","params":{},"url":"https://blog.csdn.net/liutongzhuang/article/details/121075541"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-17 14:59:15.16306', 1);
INSERT INTO "public"."sys_oper_log" VALUES (179, '神的孩子都在歌唱', 1, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.add()', 'POST', 1, 'admin', NULL, '/system/category', '127.0.0.1', '内网IP', '{"children":[],"createTime":"2024-02-06 15:12:59","delFlag":"0","id":21,"name":"vue","params":{},"parentId":15,"sort":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:12:59.961345', 4);
INSERT INTO "public"."sys_oper_log" VALUES (180, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":21,"createTime":"2024-02-06 15:13:43","delFlag":"0","params":{},"url":"https://cn.vuejs.org/guide/essentials/list.html#v-for-with-a-component"}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:13:43.575126', 2);
INSERT INTO "public"."sys_oper_log" VALUES (181, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":21,"createTime":"2024-02-06 15:14:35","delFlag":"0","params":{},"url":"https://uguardsec.coding.net/user"}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:14:35.131543', 0);
INSERT INTO "public"."sys_oper_log" VALUES (182, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/80', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:17:11.767038', 4);
INSERT INTO "public"."sys_oper_log" VALUES (183, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/79', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:17:31.482065', 4);
INSERT INTO "public"."sys_oper_log" VALUES (184, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":21,"createTime":"2024-02-06 15:17:43","delFlag":"0","params":{},"url":"http://www.baidu.com"}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:17:43.492553', 0);
INSERT INTO "public"."sys_oper_log" VALUES (185, '导航网站', 3, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/site/81', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:25:13.617161', 8);
INSERT INTO "public"."sys_oper_log" VALUES (186, '神的孩子都在歌唱', 3, 'com.ruoyi.web.controller.system.CyzNavigateCategoryController.remove()', 'DELETE', 1, 'admin', NULL, '/system/category/21', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-06 15:25:18.762211', 12);
INSERT INTO "public"."sys_oper_log" VALUES (187, '导航网站', 1, 'com.ruoyi.web.controller.system.CyzNavigateSiteController.add()', 'POST', 1, 'admin', NULL, '/system/site', '127.0.0.1', '内网IP', '{"categoryId":14,"createTime":"2024-02-21 14:09:21","delFlag":"0","params":{},"url":"https://www.elastic.co/cn/"}', '{"msg":"操作成功","code":200}', 0, NULL, '2024-02-21 14:09:21.258734', 0);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_post";
CREATE TABLE "public"."sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('sys_post_post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_post"."post_id" IS '岗位ID';
COMMENT ON COLUMN "public"."sys_post"."post_code" IS '岗位编码';
COMMENT ON COLUMN "public"."sys_post"."post_name" IS '岗位名称';
COMMENT ON COLUMN "public"."sys_post"."post_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_post"."status" IS '状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_post"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_post"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_post"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_post"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_post"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_post" IS '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "public"."sys_post" VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-05-26 18:56:28', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-05-26 18:56:28', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-05-26 18:56:28', '', NULL, '');
INSERT INTO "public"."sys_post" VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-05-26 18:56:28', 'admin', '2021-05-27 09:07:17.160973', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('sys_role_role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4 NOT NULL,
  "data_scope" char(1) COLLATE "pg_catalog"."default",
  "menu_check_strictly" bool,
  "dept_check_strictly" bool,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT 0,
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_key" IS '角色权限字符串';
COMMENT ON COLUMN "public"."sys_role"."role_sort" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_role"."data_scope" IS '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）';
COMMENT ON COLUMN "public"."sys_role"."menu_check_strictly" IS '菜单树选择项是否关联显示';
COMMENT ON COLUMN "public"."sys_role"."dept_check_strictly" IS '部门树选择项是否关联显示';
COMMENT ON COLUMN "public"."sys_role"."status" IS '角色状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_role"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_role" IS '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES (1, '超级管理员', 'admin', 1, '1', 't', 't', '0', '0', 'admin', '2021-05-26 18:56:28', '', NULL, '超级管理员');
INSERT INTO "public"."sys_role" VALUES (2, '普通角色', 'common', 2, '2', 'f', 'f', '0', '0', 'admin', '2021-05-26 18:56:28', 'admin', '2021-05-27 09:55:51.961721', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_dept";
CREATE TABLE "public"."sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_dept"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_dept"."dept_id" IS '部门ID';
COMMENT ON TABLE "public"."sys_role_dept" IS '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "public"."sys_role_dept" VALUES (2, 100);
INSERT INTO "public"."sys_role_dept" VALUES (2, 101);
INSERT INTO "public"."sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色ID';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单ID';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "public"."sys_role_menu" VALUES (2, 1);
INSERT INTO "public"."sys_role_menu" VALUES (2, 100);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1001);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1002);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1003);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1004);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1005);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1006);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1007);
INSERT INTO "public"."sys_role_menu" VALUES (2, 101);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1008);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1009);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1010);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1011);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1012);
INSERT INTO "public"."sys_role_menu" VALUES (2, 102);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1013);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1014);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1015);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1016);
INSERT INTO "public"."sys_role_menu" VALUES (2, 103);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1017);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1018);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1019);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1020);
INSERT INTO "public"."sys_role_menu" VALUES (2, 104);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1021);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1022);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1023);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1024);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1025);
INSERT INTO "public"."sys_role_menu" VALUES (2, 105);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1026);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1027);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1028);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1029);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1030);
INSERT INTO "public"."sys_role_menu" VALUES (2, 106);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1031);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1032);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1033);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1034);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1035);
INSERT INTO "public"."sys_role_menu" VALUES (2, 107);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1036);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1037);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1038);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1039);
INSERT INTO "public"."sys_role_menu" VALUES (2, 108);
INSERT INTO "public"."sys_role_menu" VALUES (2, 500);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1040);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1041);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1042);
INSERT INTO "public"."sys_role_menu" VALUES (2, 501);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1043);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1044);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1045);
INSERT INTO "public"."sys_role_menu" VALUES (2, 2);
INSERT INTO "public"."sys_role_menu" VALUES (2, 109);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1046);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1047);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1048);
INSERT INTO "public"."sys_role_menu" VALUES (2, 110);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1049);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1050);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1051);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1052);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1053);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1054);
INSERT INTO "public"."sys_role_menu" VALUES (2, 111);
INSERT INTO "public"."sys_role_menu" VALUES (2, 112);
INSERT INTO "public"."sys_role_menu" VALUES (2, 113);
INSERT INTO "public"."sys_role_menu" VALUES (2, 3);
INSERT INTO "public"."sys_role_menu" VALUES (2, 114);
INSERT INTO "public"."sys_role_menu" VALUES (2, 115);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1055);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1058);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1056);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1057);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1059);
INSERT INTO "public"."sys_role_menu" VALUES (2, 1060);
INSERT INTO "public"."sys_role_menu" VALUES (2, 116);
INSERT INTO "public"."sys_role_menu" VALUES (2, 4);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" int8 NOT NULL DEFAULT nextval('sys_user_user_id_seq'::regclass),
  "dept_id" int8,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" varchar(2) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "phonenumber" varchar(11) COLLATE "pg_catalog"."default",
  "sex" char(1) COLLATE "pg_catalog"."default",
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "login_ip" varchar(128) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user"."dept_id" IS '部门ID';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '用户账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '用户类型（00系统用户）';
COMMENT ON COLUMN "public"."sys_user"."email" IS '用户邮箱';
COMMENT ON COLUMN "public"."sys_user"."phonenumber" IS '手机号码';
COMMENT ON COLUMN "public"."sys_user"."sex" IS '用户性别（0男 1女 2未知）';
COMMENT ON COLUMN "public"."sys_user"."avatar" IS '头像地址';
COMMENT ON COLUMN "public"."sys_user"."password" IS '密码';
COMMENT ON COLUMN "public"."sys_user"."status" IS '帐号状态（0正常 1停用）';
COMMENT ON COLUMN "public"."sys_user"."del_flag" IS '删除标志（0代表存在 2代表删除）';
COMMENT ON COLUMN "public"."sys_user"."login_ip" IS '最后登录IP';
COMMENT ON COLUMN "public"."sys_user"."login_date" IS '最后登录时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_user" IS '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-05-26 18:56:28', 'admin', '2021-05-26 18:56:28', 'admin', '2021-05-27 09:55:37.595036', '测试员');
INSERT INTO "public"."sys_user" VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-02-21 14:08:17.441', 'admin', '2021-05-26 18:56:28', '', '2024-02-21 14:08:17.443723', '管理员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_post";
CREATE TABLE "public"."sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_post"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_post"."post_id" IS '岗位ID';
COMMENT ON TABLE "public"."sys_user_post" IS '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "public"."sys_user_post" VALUES (1, 1);
INSERT INTO "public"."sys_user_post" VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户ID';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色ID';
COMMENT ON TABLE "public"."sys_user_role" IS '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES (1, 1);
INSERT INTO "public"."sys_user_role" VALUES (2, 2);

-- ----------------------------
-- Function structure for find_in_set
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."find_in_set"(int8, varchar);
CREATE OR REPLACE FUNCTION "public"."find_in_set"(int8, varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
  STR ALIAS FOR $1;
  STRS ALIAS FOR $2;
  POS INTEGER;
  STATUS BOOLEAN;
BEGIN
	SELECT POSITION( ','||STR||',' IN ','||STRS||',') INTO POS;
	IF POS > 0 THEN
	  STATUS = TRUE;
	ELSE
	  STATUS = FALSE;
	END IF;
	RETURN STATUS; 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for substring_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."substring_index"(varchar, varchar, int4);
CREATE OR REPLACE FUNCTION "public"."substring_index"(varchar, varchar, int4)
  RETURNS "pg_catalog"."varchar" AS $BODY$
DECLARE
tokens varchar[];
length integer ;
indexnum integer;
BEGIN
tokens := pg_catalog.string_to_array($1, $2);
length := pg_catalog.array_upper(tokens, 1);
indexnum := length - ($3 * -1) + 1;
IF $3 >= 0 THEN
RETURN pg_catalog.array_to_string(tokens[1:$3], $2);
ELSE
RETURN pg_catalog.array_to_string(tokens[indexnum:length], $2);
END IF;
END;
$BODY$
  LANGUAGE plpgsql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- View structure for list_column
-- ----------------------------
DROP VIEW IF EXISTS "public"."list_column";
CREATE VIEW "public"."list_column" AS  SELECT c.relname AS table_name,
    a.attname AS column_name,
    d.description AS column_comment,
        CASE
            WHEN (a.attnotnull AND (con.conname IS NULL)) THEN 1
            ELSE 0
        END AS is_required,
        CASE
            WHEN (con.conname IS NOT NULL) THEN 1
            ELSE 0
        END AS is_pk,
    a.attnum AS sort,
        CASE
            WHEN ("position"(pg_get_expr(ad.adbin, ad.adrelid), ((((c.relname)::text || '_'::text) || (a.attname)::text) || '_seq'::text)) > 0) THEN 1
            ELSE 0
        END AS is_increment,
    btrim(
        CASE
            WHEN ((t.typelem <> (0)::oid) AND (t.typlen = '-1'::integer)) THEN 'ARRAY'::text
            ELSE
            CASE
                WHEN (t.typtype = 'd'::"char") THEN format_type(t.typbasetype, NULL::integer)
                ELSE format_type(a.atttypid, NULL::integer)
            END
        END, '"'::text) AS column_type
   FROM (((((pg_attribute a
     JOIN (pg_class c
     JOIN pg_namespace n ON ((c.relnamespace = n.oid))) ON ((a.attrelid = c.oid)))
     LEFT JOIN pg_description d ON (((d.objoid = c.oid) AND (a.attnum = d.objsubid))))
     LEFT JOIN pg_constraint con ON (((con.conrelid = c.oid) AND (a.attnum = ANY (con.conkey)))))
     LEFT JOIN pg_attrdef ad ON (((a.attrelid = ad.adrelid) AND (a.attnum = ad.adnum))))
     LEFT JOIN pg_type t ON ((a.atttypid = t.oid)))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (a.attnum > 0) AND (n.nspname = 'public'::name))
  ORDER BY c.relname, a.attnum;

-- ----------------------------
-- View structure for list_table
-- ----------------------------
DROP VIEW IF EXISTS "public"."list_table";
CREATE VIEW "public"."list_table" AS  SELECT c.relname AS table_name,
    obj_description(c.oid) AS table_comment,
    CURRENT_TIMESTAMP AS create_time,
    CURRENT_TIMESTAMP AS update_time
   FROM (pg_class c
     LEFT JOIN pg_namespace n ON ((n.oid = c.relnamespace)))
  WHERE ((c.relkind = ANY (ARRAY['r'::"char", 'p'::"char"])) AND (c.relname !~~ 'spatial_%'::text) AND (n.nspname = 'public'::name) AND (n.nspname <> ''::name));

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_navigate_category_id_seq"
OWNED BY "public"."cyz_navigate_category"."id";
SELECT setval('"public"."cyz_navigate_category_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cyz_navigate_site_id_seq"
OWNED BY "public"."cyz_navigate_site"."id";
SELECT setval('"public"."cyz_navigate_site_id_seq"', 83, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_column_column_id_seq"
OWNED BY "public"."gen_table_column"."column_id";
SELECT setval('"public"."gen_table_column_column_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gen_table_table_id_seq"
OWNED BY "public"."gen_table"."table_id";
SELECT setval('"public"."gen_table_table_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_config_config_id_seq"
OWNED BY "public"."sys_config"."config_id";
SELECT setval('"public"."sys_config_config_id_seq"', 101, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dept_dept_id_seq"
OWNED BY "public"."sys_dept"."dept_id";
SELECT setval('"public"."sys_dept_dept_id_seq"', 111, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_data_dict_code_seq"
OWNED BY "public"."sys_dict_data"."dict_code";
SELECT setval('"public"."sys_dict_data_dict_code_seq"', 30, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_dict_type_dict_id_seq"
OWNED BY "public"."sys_dict_type"."dict_id";
SELECT setval('"public"."sys_dict_type_dict_id_seq"', 12, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_job_id_seq"
OWNED BY "public"."sys_job"."job_id";
SELECT setval('"public"."sys_job_job_id_seq"', 5, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_job_log_job_log_id_seq"
OWNED BY "public"."sys_job_log"."job_log_id";
SELECT setval('"public"."sys_job_log_job_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_logininfor_info_id_seq"
OWNED BY "public"."sys_logininfor"."info_id";
SELECT setval('"public"."sys_logininfor_info_id_seq"', 71, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_menu_menu_id_seq"
OWNED BY "public"."sys_menu"."menu_id";
SELECT setval('"public"."sys_menu_menu_id_seq"', 2001, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_notice_notice_id_seq"
OWNED BY "public"."sys_notice"."notice_id";
SELECT setval('"public"."sys_notice_notice_id_seq"', 4, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_oper_log_oper_id_seq"
OWNED BY "public"."sys_oper_log"."oper_id";
SELECT setval('"public"."sys_oper_log_oper_id_seq"', 188, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_post_post_id_seq"
OWNED BY "public"."sys_post"."post_id";
SELECT setval('"public"."sys_post_post_id_seq"', 6, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_role_role_id_seq"
OWNED BY "public"."sys_role"."role_id";
SELECT setval('"public"."sys_role_role_id_seq"', 4, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_user_user_id_seq"
OWNED BY "public"."sys_user"."user_id";
SELECT setval('"public"."sys_user_user_id_seq"', 4, false);

-- ----------------------------
-- Primary Key structure for table cyz_navigate_category
-- ----------------------------
ALTER TABLE "public"."cyz_navigate_category" ADD CONSTRAINT "cyz_navigate_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_navigate_site
-- ----------------------------
ALTER TABLE "public"."cyz_navigate_site" ADD CONSTRAINT "cyz_navigate_site_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gen_table
-- ----------------------------
ALTER TABLE "public"."gen_table" ADD CONSTRAINT "gen_table_pkey" PRIMARY KEY ("table_id");

-- ----------------------------
-- Primary Key structure for table gen_table_column
-- ----------------------------
ALTER TABLE "public"."gen_table_column" ADD CONSTRAINT "gen_table_column_pkey" PRIMARY KEY ("column_id");

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "QRTZ_BLOB_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "public"."qrtz_calendars" ADD CONSTRAINT "QRTZ_CALENDARS_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "QRTZ_CRON_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_fired_triggers" ADD CONSTRAINT "QRTZ_FIRED_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "public"."qrtz_job_details" ADD CONSTRAINT "QRTZ_JOB_DETAILS_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "public"."qrtz_locks" ADD CONSTRAINT "QRTZ_LOCKS_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "public"."qrtz_paused_trigger_grps" ADD CONSTRAINT "QRTZ_PAUSED_TRIGGER_GRPS_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "public"."qrtz_scheduler_state" ADD CONSTRAINT "QRTZ_SCHEDULER_STATE_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "QRTZ_SIMPLE_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "QRTZ_SIMPROP_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "sched_name" ON "public"."qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "QRTZ_TRIGGERS_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "public"."sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "public"."sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE INDEX "dict_type" ON "public"."sys_dict_type" USING btree (
  "dict_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "public"."sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "public"."sys_job_log" ADD CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "public"."sys_logininfor" ADD CONSTRAINT "sys_logininfor_pkey" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "public"."sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "public"."sys_post" ADD CONSTRAINT "sys_post_pkey" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "public"."sys_role_dept" ADD CONSTRAINT "sys_role_dept_pkey" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pkey" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "public"."sys_user_post" ADD CONSTRAINT "sys_user_post_pkey" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD CONSTRAINT "QRTZ_BLOB_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD CONSTRAINT "QRTZ_CRON_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD CONSTRAINT "QRTZ_SIMPLE_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD CONSTRAINT "QRTZ_SIMPROP_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD CONSTRAINT "QRTZ_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "public"."qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
