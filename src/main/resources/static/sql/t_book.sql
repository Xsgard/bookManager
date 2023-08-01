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

 Date: 01/08/2023 11:32:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(32, 2) NOT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish_date` date NOT NULL,
  `cover_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` tinyint(4) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES (1, '陪孩子终身成长', '樊登', 201.60, '中国友谊出版社', '2021-06-01', 'phzzscz.jpg', 0);
INSERT INTO `t_book` VALUES (2, '当你学会独处', '周国平', 46.00, '浙江人民出版社', '2020-01-01', 'dnxhdc.jpg', 0);
INSERT INTO `t_book` VALUES (3, '武汉见字如面', '***', 28.00, '武汉人民出版社', '2021-08-01', 'whjzrm.jpg', 0);
INSERT INTO `t_book` VALUES (118, '平凡的世界', '路遥', 35.60, '人民教育出版社', '2004-04-01', '111.jpg', 0);
INSERT INTO `t_book` VALUES (119, 'test', 'test', 1231.00, 'test', '2023-07-12', '2f404dc5-cb4c-4017-a716-abd87c899f84.jpg', 1);
INSERT INTO `t_book` VALUES (120, 'test', 'test', 124.00, 'test', '2023-07-20', 'test.jpg', 1);
INSERT INTO `t_book` VALUES (121, 'test', 'test', 12321.00, 'test', '2023-07-01', 'd7ce853f-2fa8-4d6f-b430-65cf1ceee1e5.jpg', 1);
INSERT INTO `t_book` VALUES (122, 'test', 'test', 1432.00, 'test', '2023-07-09', '31e9bfb0-5a91-4025-b42b-29567ea4afab.jpg', 1);
INSERT INTO `t_book` VALUES (123, 'test', 'test', 12341.00, 'test', '2023-07-07', '937b73f25933.jpg', 1);
INSERT INTO `t_book` VALUES (124, 'test', 'test', 12.00, 'test', '2023-07-08', 'a53ab403b4bf.jpg', 1);
INSERT INTO `t_book` VALUES (125, 'test222', '222', 222.00, '2222', '2023-06-30', '8f25edd24ed8.jpg', 1);
INSERT INTO `t_book` VALUES (126, 'dasdfas', 'dsa', 123.00, '人民教育出版社', '2023-07-18', 'c3ec79a834cd.jpg', 1);
INSERT INTO `t_book` VALUES (127, '平凡的世界', '路遥', 122.00, '人民教育出版社', '2023-07-13', '0add59eb-1409-4870-afe9-0307aef5bb39.jpg', 1);
INSERT INTO `t_book` VALUES (128, '活着', '余华', 70.60, '长江文艺出版社', '1993-03-01', '3e6db227-eb7d-44d5-8421-1cd5439c5a8b.jpg', 0);
INSERT INTO `t_book` VALUES (129, '复活', '列夫·托尔斯泰', 108.00, '人民文学出版社', '1979-01-01', '5c91015e-f6b0-4ad4-8aff-bdebb6cb6549.jpg', 0);
INSERT INTO `t_book` VALUES (130, '人间失格2', '太宰治', 70.60, '现代出版社', '2016-10-01', '77dd320a-c59a-4ebe-b1ce-ffca201c9078.jpg', 0);
INSERT INTO `t_book` VALUES (131, '老人与海2', '海明威', 50.80, '长江文艺出版社', '2023-07-03', '06c1090d-2566-4cf6-8a17-58a88b2032b0.jpg', 0);

SET FOREIGN_KEY_CHECKS = 1;
