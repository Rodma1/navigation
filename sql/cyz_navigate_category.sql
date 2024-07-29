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
