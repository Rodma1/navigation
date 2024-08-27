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

 Date: 29/07/2024 21:43:50
*/

ALTER TABLE publisher_authorize ADD COLUMN id SERIAL PRIMARY KEY;
ALTER TABLE publisher_authorize ADD COLUMN description TEXT;
