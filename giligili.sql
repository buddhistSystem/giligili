/*
 Navicat Premium Data Transfer

 Source Server         : ali
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : rm-2zes869c0s98yg00foo.mysql.rds.aliyuncs.com:3306
 Source Schema         : giligili

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 24/03/2020 12:34:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `level` tinyint(1) NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '分类名称',
  `is_del` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1、未删除，-1已删除',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, NULL, 1, '推荐', 1, '0000-00-00 00:00:00', '2020-03-14 22:17:29', NULL, NULL);
INSERT INTO `category` VALUES (2, NULL, 1, '热门', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `category` VALUES (3, NULL, 1, '日漫', 1, '0000-00-00 00:00:00', '2020-03-18 16:21:59', NULL, NULL);
INSERT INTO `category` VALUES (4, NULL, 1, '国漫', 1, '0000-00-00 00:00:00', '2020-03-18 16:22:06', NULL, NULL);
INSERT INTO `category` VALUES (5, NULL, 1, '热血', 1, '0000-00-00 00:00:00', '2020-03-18 16:22:12', NULL, NULL);
INSERT INTO `category` VALUES (6, NULL, 1, '战斗', 1, '0000-00-00 00:00:00', '2020-03-18 16:22:19', NULL, NULL);
INSERT INTO `category` VALUES (7, NULL, 1, '日常', 1, '0000-00-00 00:00:00', '2020-03-18 16:22:22', NULL, NULL);
INSERT INTO `category` VALUES (8, NULL, 1, '穿越', 1, '0000-00-00 00:00:00', '2020-03-18 16:22:40', NULL, NULL);
INSERT INTO `category` VALUES (9, NULL, NULL, '爱情', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `comment_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `create_time` datetime(0) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `unlike_count` int(255) NOT NULL DEFAULT 0,
  `to_user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for swiper
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '链接地址',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '图片地址',
  `category_id` int(11) NOT NULL COMMENT '所属分类',
  `is_del` tinyint(1) NOT NULL DEFAULT 1,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES (1, '', 'http://112.74.59.132/swiper1.jpg', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `swiper` VALUES (2, '', 'http://112.74.59.132/swiper2.jpg', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `swiper` VALUES (3, '', 'http://112.74.59.132/swiper3.jpg', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_icon_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `is_del` tinyint(1) NULL DEFAULT 1,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', '123456', NULL, 1, NULL);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '标题',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `play_count` int(11) NOT NULL DEFAULT 0 COMMENT '播放数',
  `comment_count` int(11) NOT NULL DEFAULT 0 COMMENT '评论数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `category_id` int(11) NULL DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT 1,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu1.png', 'http://112.74.59.132/gaomu.mp4', 555, 15, '《擅长捉弄的高木同学》是由山本崇一朗于《月刊少年Sunday-mini》2号（《月刊少年Sunday》2013年7号的附录）上开始连载的漫画。作品于之后移籍至《月刊少年Sunday》2016年8月号上连载。', 9, 1, '2020-03-05 09:46:06', '2020-03-18 16:22:53', 1, NULL);
INSERT INTO `video` VALUES (2, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu1.png', 'http://112.74.59.132/gaomu.mp4', 64, 23, '', 9, 1, '2020-03-21 09:46:12', '2020-03-18 16:22:53', 1, NULL);
INSERT INTO `video` VALUES (3, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu2.png', 'http://112.74.59.132/gaomu.mp4', 200, 66, '', 9, 1, '2020-03-22 09:46:18', '2020-03-18 16:22:54', 1, NULL);
INSERT INTO `video` VALUES (4, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu3.png', 'http://112.74.59.132/gaomu.mp4', 167, 231, '', 9, 1, '2020-03-23 09:46:22', '2020-03-18 16:22:54', 1, NULL);
INSERT INTO `video` VALUES (5, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu4.png', 'http://112.74.59.132/gaomu.mp4', 2, 0, '', 9, 1, '2020-03-24 09:46:26', '2020-03-18 16:22:55', 1, NULL);
INSERT INTO `video` VALUES (6, '《擅长捉弄的高木同学》', '', 'http://112.74.59.132/gaomu5.png', 'http://112.74.59.132/gaomu.mp4', 15, 3, '', 9, 1, '2020-03-26 09:46:30', '2020-03-18 16:22:57', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
