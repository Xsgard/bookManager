/*
 Navicat Premium Data Transfer

 Source Server         : MySQL【8】
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3308
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 01/08/2023 11:32:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 0,
  `real_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_date` timestamp(0) NULL DEFAULT NULL,
  `last_login_date` timestamp(0) NULL DEFAULT NULL,
  `avatar_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE,
  UNIQUE INDEX `mobile_phone`(`mobile_phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (12, 'admin', '123456', '18544734688', 0, '超级管理员', '2020-05-27 11:54:12', NULL, '2023-07-31 19:29:02', NULL);
INSERT INTO `t_user` VALUES (13, 'asg0rd', '123456', NULL, 0, 'asg0rd', '2023-07-28 13:21:18', '2023-07-28 13:21:21', '2023-07-29 14:44:53', NULL);
INSERT INTO `t_user` VALUES (15, 'aaaa', '123456', NULL, 0, 'aaaa', '2023-07-31 13:33:08', '2023-07-31 13:33:08', '2023-07-31 13:33:25', NULL);

SET FOREIGN_KEY_CHECKS = 1;
