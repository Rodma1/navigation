/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.47
 Source Server Type    : PostgreSQL
 Source Server Version : 160003
 Source Host           : 192.168.1.47:5432
 Source Catalog        : navigation
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160003
 File Encoding         : 65001

 Date: 29/07/2024 21:47:18
*/


-- ----------------------------
-- Table structure for cyz_navigate_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_navigate_category";
CREATE TABLE "public"."cyz_navigate_category" (
  "id" "pg_catalog"."int8" NOT NULL DEFAULT nextval('cyz_navigate_category_id_seq'::regclass),
  "parent_id" "pg_catalog"."int8",
  "sort" "pg_catalog"."int4",
  "name" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "icon" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default"
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
  "id" "pg_catalog"."int8" NOT NULL DEFAULT nextval('cyz_navigate_site_id_seq'::regclass),
  "category_id" "pg_catalog"."int8",
  "name" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "image" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "description" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "url" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "create_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "update_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default"
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
-- Table structure for cyz_article
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article";
CREATE TABLE "public"."cyz_article" (
  "url" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "name" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "state" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default",
  "category_id" "pg_catalog"."int4",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default",
  "create_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "update_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "id" "pg_catalog"."int4" NOT NULL DEFAULT nextval('cyz_article_id_seq'::regclass)
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
-- Table structure for cyz_article_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_article_category";
CREATE TABLE "public"."cyz_article_category" (
  "name" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default",
  "create_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "update_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "id" "pg_catalog"."int4" NOT NULL DEFAULT nextval('cyz_article_category_id_seq'::regclass),
  "sort" "pg_catalog"."int4"
)
;
COMMENT ON COLUMN "public"."cyz_article_category"."name" IS '类别名称';
COMMENT ON COLUMN "public"."cyz_article_category"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_article_category"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_article_category"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_article_category"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_article_category"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_article_category"."sort" IS '排序';

-- ----------------------------
-- Records of cyz_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for cyz_memory
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_memory";
CREATE TABLE "public"."cyz_memory" (
  "content" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default",
  "create_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "update_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "category" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "parent_class" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "image" "pg_catalog"."varchar" COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."cyz_memory"."content" IS '内容';
COMMENT ON COLUMN "public"."cyz_memory"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_memory"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_memory"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_memory"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_memory"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_memory"."category" IS '类别';
COMMENT ON COLUMN "public"."cyz_memory"."parent_class" IS '父类';
COMMENT ON COLUMN "public"."cyz_memory"."image" IS '图片';

-- ----------------------------
-- Records of cyz_memory
-- ----------------------------

-- ----------------------------
-- Table structure for cyz_phrases
-- ----------------------------
DROP TABLE IF EXISTS "public"."cyz_phrases";
CREATE TABLE "public"."cyz_phrases" (
  "sentence" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "create_time" "pg_catalog"."timestamp",
  "update_time" "pg_catalog"."timestamp",
  "del_flag" "pg_catalog"."bpchar" COLLATE "pg_catalog"."default",
  "create_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "update_by" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "category" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "rank" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "parent_class" "pg_catalog"."varchar" COLLATE "pg_catalog"."default",
  "id" "pg_catalog"."int4" NOT NULL DEFAULT nextval('cyz_phrases_id_seq'::regclass)
)
;
COMMENT ON COLUMN "public"."cyz_phrases"."sentence" IS '句子';
COMMENT ON COLUMN "public"."cyz_phrases"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."cyz_phrases"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."cyz_phrases"."del_flag" IS '删除标志(0代表存在 1代表删除)';
COMMENT ON COLUMN "public"."cyz_phrases"."create_by" IS '创建者';
COMMENT ON COLUMN "public"."cyz_phrases"."update_by" IS '更新者';
COMMENT ON COLUMN "public"."cyz_phrases"."category" IS '类别';
COMMENT ON COLUMN "public"."cyz_phrases"."rank" IS '推荐等级';
COMMENT ON COLUMN "public"."cyz_phrases"."parent_class" IS '父类';

-- ----------------------------
-- Records of cyz_phrases
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cyz_article
-- ----------------------------
ALTER TABLE "public"."cyz_article" ADD CONSTRAINT "cyz_article_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_article_category
-- ----------------------------
ALTER TABLE "public"."cyz_article_category" ADD CONSTRAINT "cyz_article_category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cyz_phrases
-- ----------------------------
ALTER TABLE "public"."cyz_phrases" ADD CONSTRAINT "cyz_phrases_pkey" PRIMARY KEY ("id");
