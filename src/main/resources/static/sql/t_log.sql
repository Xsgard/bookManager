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

 Date: 01/08/2023 11:32:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `requester` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求发起人',
  `request_uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求路径',
  `request_time` timestamp(0) NULL DEFAULT NULL COMMENT '请求时间',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '请求耗时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (1, '12321', 'www.baidu.com', '2023-07-29 16:28:21', 10);
INSERT INTO `t_log` VALUES (2, 'admin', '/book/list', '2023-07-29 15:15:09', 16977);
INSERT INTO `t_log` VALUES (3, '未登录', '/book/list', '2023-07-29 15:25:41', 5631);
INSERT INTO `t_log` VALUES (4, '未登录', '/book/list', '2023-07-29 15:26:18', 11527);
INSERT INTO `t_log` VALUES (5, '未登录', '/book/list', '2023-07-29 15:27:05', 6954);
INSERT INTO `t_log` VALUES (6, '未登录', '/book/list', '2023-07-29 15:28:09', 238);
INSERT INTO `t_log` VALUES (7, '未登录', '/book/list', '2023-07-29 15:28:12', 4);
INSERT INTO `t_log` VALUES (8, 'admin', '/book/list', '2023-07-29 16:04:29', 55);
INSERT INTO `t_log` VALUES (9, 'admin', '/book/list', '2023-07-29 16:05:57', 521);
INSERT INTO `t_log` VALUES (10, 'admin', '/book/list', '2023-07-29 16:07:23', 462);
INSERT INTO `t_log` VALUES (11, 'admin', '/book/list', '2023-07-29 16:08:36', 35);
INSERT INTO `t_log` VALUES (12, 'admin', '/book/list', '2023-07-29 16:09:17', 4);
INSERT INTO `t_log` VALUES (13, 'admin', '/book/list', '2023-07-29 16:09:26', 11);
INSERT INTO `t_log` VALUES (14, 'admin', '/book/list', '2023-07-29 16:10:40', 5);
INSERT INTO `t_log` VALUES (15, 'admin', '/book/list', '2023-07-29 16:11:51', 468);
INSERT INTO `t_log` VALUES (16, 'admin', '/book/list', '2023-07-29 16:12:03', 6);
INSERT INTO `t_log` VALUES (17, 'admin', '/book/list', '2023-07-29 16:13:13', 21);
INSERT INTO `t_log` VALUES (18, 'admin', '/book/list', '2023-07-29 16:17:34', 773);
INSERT INTO `t_log` VALUES (19, 'admin', '/book/list', '2023-07-29 16:32:55', 247);
INSERT INTO `t_log` VALUES (20, 'admin', '/book/list', '2023-07-29 16:33:46', 15);
INSERT INTO `t_log` VALUES (21, 'admin', '/book/list', '2023-07-29 16:33:49', 4);
INSERT INTO `t_log` VALUES (22, 'admin', '/book/list', '2023-07-29 16:33:50', 4);
INSERT INTO `t_log` VALUES (23, 'admin', '/book/toUpdate.do', '2023-07-29 16:33:55', 49);
INSERT INTO `t_log` VALUES (24, 'admin', '/book/list', '2023-07-29 16:34:26', 5);
INSERT INTO `t_log` VALUES (25, 'admin', '/book/list', '2023-07-31 08:53:17', 11);
INSERT INTO `t_log` VALUES (26, 'admin', '/book/list', '2023-07-31 09:42:43', 13);
INSERT INTO `t_log` VALUES (27, 'admin', '/book/list', '2023-07-31 09:45:21', 465);
INSERT INTO `t_log` VALUES (28, 'admin', '/book/list', '2023-07-31 10:21:13', 12);
INSERT INTO `t_log` VALUES (29, 'admin', '/book/list', '2023-07-31 10:24:16', 13);
INSERT INTO `t_log` VALUES (30, 'admin', '/book/list', '2023-07-31 11:00:06', 13);
INSERT INTO `t_log` VALUES (31, 'admin', '/book/list', '2023-07-31 11:00:10', 5);
INSERT INTO `t_log` VALUES (32, 'admin', '/book/list', '2023-07-31 11:00:27', 5);
INSERT INTO `t_log` VALUES (33, 'admin', '/book/list', '2023-07-31 11:00:29', 6);
INSERT INTO `t_log` VALUES (34, 'admin', '/log/search.do', '2023-07-31 11:05:07', 4568);
INSERT INTO `t_log` VALUES (35, 'admin', '/log/search.do', '2023-07-31 11:05:14', 2143);
INSERT INTO `t_log` VALUES (37, 'admin', '/log/search.do', '2023-07-31 11:05:24', 13991);
INSERT INTO `t_log` VALUES (39, 'admin', '/log/toLog', '2023-07-31 11:06:01', 13);
INSERT INTO `t_log` VALUES (40, 'admin', '/log/toLog', '2023-07-31 11:06:03', 8);
INSERT INTO `t_log` VALUES (41, 'admin', '/log/toLog', '2023-07-31 11:11:08', 246);
INSERT INTO `t_log` VALUES (42, 'admin', '/log/toLog', '2023-07-31 11:11:11', 10);
INSERT INTO `t_log` VALUES (43, 'admin', '/log/deleteSelect.do', '2023-07-31 11:11:16', 38);
INSERT INTO `t_log` VALUES (44, 'admin', '/log/toLog', '2023-07-31 11:11:17', 8);
INSERT INTO `t_log` VALUES (45, 'admin', '/log/toLog', '2023-07-31 11:11:19', 7);
INSERT INTO `t_log` VALUES (46, 'admin', '/log/deleteSelect.do', '2023-07-31 11:11:26', 15);
INSERT INTO `t_log` VALUES (47, 'admin', '/log/toLog', '2023-07-31 11:11:27', 7);
INSERT INTO `t_log` VALUES (48, 'admin', '/log/search.do', '2023-07-31 11:11:34', 21);
INSERT INTO `t_log` VALUES (49, 'admin', '/book/list', '2023-07-31 11:11:44', 13);
INSERT INTO `t_log` VALUES (50, 'admin', '/log/toLog', '2023-07-31 11:11:46', 5);
INSERT INTO `t_log` VALUES (51, 'admin', '/log/search.do', '2023-07-31 11:11:55', 3);
INSERT INTO `t_log` VALUES (52, 'admin', '/log/search.do', '2023-07-31 11:14:58', 88000);
INSERT INTO `t_log` VALUES (53, 'admin', '/log/search.do', '2023-07-31 11:16:42', 6990);
INSERT INTO `t_log` VALUES (55, 'admin', '/log/toLog', '2023-07-31 11:17:31', 3093);
INSERT INTO `t_log` VALUES (56, 'admin', '/log/toLog', '2023-07-31 11:17:44', 1721);
INSERT INTO `t_log` VALUES (57, 'admin', '/log/deleteSelect.do', '2023-07-31 11:17:54', 72);
INSERT INTO `t_log` VALUES (58, 'admin', '/log/toLog', '2023-07-31 11:17:55', 2190);
INSERT INTO `t_log` VALUES (59, 'admin', '/log/search.do', '2023-07-31 11:18:07', 22054);
INSERT INTO `t_log` VALUES (60, 'admin', '/log/search.do', '2023-07-31 11:18:32', 6260);
INSERT INTO `t_log` VALUES (61, 'admin', '/log/toLog', '2023-07-31 11:18:38', 1797);
INSERT INTO `t_log` VALUES (62, 'admin', '/user/logout', '2023-07-31 11:19:07', 28);
INSERT INTO `t_log` VALUES (63, '未登录', '/user/toLogin', '2023-07-31 11:19:08', 1);
INSERT INTO `t_log` VALUES (64, '未登录', '/user/checkCode', '2023-07-31 11:19:08', 507);
INSERT INTO `t_log` VALUES (65, '未登录', '/user/login', '2023-07-31 11:19:13', 170);
INSERT INTO `t_log` VALUES (66, 'admin', '/book/list', '2023-07-31 11:19:13', 19);
INSERT INTO `t_log` VALUES (67, 'admin', '/log/toLog', '2023-07-31 11:19:14', 1846);
INSERT INTO `t_log` VALUES (68, 'admin', '/log/search.do', '2023-07-31 11:19:25', 9418);
INSERT INTO `t_log` VALUES (69, 'admin', '/log/search.do', '2023-07-31 11:19:41', 1697);
INSERT INTO `t_log` VALUES (70, 'admin', '/log/search.do', '2023-07-31 11:19:47', 18723);
INSERT INTO `t_log` VALUES (71, 'admin', '/log/toLog', '2023-07-31 11:20:06', 2643);
INSERT INTO `t_log` VALUES (72, 'admin', '/log/toLog', '2023-07-31 11:23:14', 2558);
INSERT INTO `t_log` VALUES (73, 'admin', '/log/search.do', '2023-07-31 11:26:30', 2326);
INSERT INTO `t_log` VALUES (74, 'admin', '/log/toLog', '2023-07-31 11:51:03', 382);
INSERT INTO `t_log` VALUES (75, 'admin', '/log/toLog', '2023-07-31 11:51:03', 24);
INSERT INTO `t_log` VALUES (76, 'admin', '/error', '2023-07-31 11:51:04', 48);
INSERT INTO `t_log` VALUES (77, 'admin', '/error', '2023-07-31 11:51:03', 69);
INSERT INTO `t_log` VALUES (78, 'admin', '/log/search.do', '2023-07-31 11:51:08', 20);
INSERT INTO `t_log` VALUES (79, 'admin', '/log/search.do', '2023-07-31 11:51:20', 1);
INSERT INTO `t_log` VALUES (80, 'admin', '/error', '2023-07-31 11:51:20', 11);
INSERT INTO `t_log` VALUES (81, 'admin', '/error', '2023-07-31 11:52:18', 28);
INSERT INTO `t_log` VALUES (82, 'admin', '/log/toLog', '2023-07-31 11:52:22', 59);
INSERT INTO `t_log` VALUES (83, 'admin', '/error', '2023-07-31 11:52:23', 45);
INSERT INTO `t_log` VALUES (84, 'admin', '/log/toLog', '2023-07-31 11:52:27', 14);
INSERT INTO `t_log` VALUES (85, 'admin', '/error', '2023-07-31 11:52:27', 2);
INSERT INTO `t_log` VALUES (86, 'admin', '/log/toLog', '2023-07-31 11:52:29', 10);
INSERT INTO `t_log` VALUES (87, 'admin', '/error', '2023-07-31 11:52:29', 1);
INSERT INTO `t_log` VALUES (88, 'admin', '/log/toLog', '2023-07-31 11:52:30', 9);
INSERT INTO `t_log` VALUES (89, 'admin', '/error', '2023-07-31 11:52:30', 1);
INSERT INTO `t_log` VALUES (90, 'admin', '/log/toLog', '2023-07-31 11:52:32', 9);
INSERT INTO `t_log` VALUES (91, 'admin', '/error', '2023-07-31 11:52:32', 1);
INSERT INTO `t_log` VALUES (92, 'admin', '/log/search.do', '2023-07-31 11:52:34', 4);
INSERT INTO `t_log` VALUES (93, 'admin', '/log/toLog', '2023-07-31 11:52:34', 7);
INSERT INTO `t_log` VALUES (94, 'admin', '/error', '2023-07-31 11:52:34', 0);
INSERT INTO `t_log` VALUES (95, 'admin', '/log/search.do', '2023-07-31 11:52:42', 22);
INSERT INTO `t_log` VALUES (96, 'admin', '/error', '2023-07-31 11:52:50', 11);
INSERT INTO `t_log` VALUES (97, 'admin', '/log/search.do', '2023-07-31 11:52:56', 8);
INSERT INTO `t_log` VALUES (98, 'admin', '/error', '2023-07-31 11:52:56', 0);
INSERT INTO `t_log` VALUES (99, 'admin', '/log/search.do', '2023-07-31 11:53:57', 268);
INSERT INTO `t_log` VALUES (100, 'admin', '/error', '2023-07-31 11:53:58', 60);
INSERT INTO `t_log` VALUES (101, 'admin', '/log/search.do', '2023-07-31 11:54:07', 0);
INSERT INTO `t_log` VALUES (102, 'admin', '/log/toLog', '2023-07-31 11:54:07', 17);
INSERT INTO `t_log` VALUES (103, 'admin', '/error', '2023-07-31 11:54:07', 2);
INSERT INTO `t_log` VALUES (104, 'admin', '/log/search.do', '2023-07-31 11:54:38', 12);
INSERT INTO `t_log` VALUES (105, 'admin', '/log/search.do', '2023-07-31 11:54:47', 0);
INSERT INTO `t_log` VALUES (106, 'admin', '/log/toLog', '2023-07-31 11:54:47', 11);
INSERT INTO `t_log` VALUES (107, 'admin', '/error', '2023-07-31 11:54:47', 1);
INSERT INTO `t_log` VALUES (108, 'admin', '/book/list', '2023-07-31 11:54:53', 10);
INSERT INTO `t_log` VALUES (109, '未登录', '/user/logout', '2023-07-31 13:03:00', 12);
INSERT INTO `t_log` VALUES (110, '未登录', '/user/toLogin', '2023-07-31 13:03:00', 1);
INSERT INTO `t_log` VALUES (111, '未登录', '/user/checkCode', '2023-07-31 13:03:01', 307);
INSERT INTO `t_log` VALUES (112, '未登录', '/user/login', '2023-07-31 13:03:06', 59);
INSERT INTO `t_log` VALUES (113, '未登录', '/user/checkCode', '2023-07-31 13:03:06', 15);
INSERT INTO `t_log` VALUES (114, '未登录', '/user/login', '2023-07-31 13:03:10', 14);
INSERT INTO `t_log` VALUES (115, 'admin', '/book/list', '2023-07-31 13:03:10', 11);
INSERT INTO `t_log` VALUES (116, 'admin', '/book/add.do', '2023-07-31 13:04:37', 71);
INSERT INTO `t_log` VALUES (117, 'admin', '/book/list', '2023-07-31 13:04:38', 7);
INSERT INTO `t_log` VALUES (118, 'admin', '/book/add.do', '2023-07-31 13:06:34', 26);
INSERT INTO `t_log` VALUES (119, 'admin', '/book/list', '2023-07-31 13:06:35', 4);
INSERT INTO `t_log` VALUES (120, 'admin', '/book/add.do', '2023-07-31 13:10:47', 25);
INSERT INTO `t_log` VALUES (121, 'admin', '/book/list', '2023-07-31 13:10:48', 6);
INSERT INTO `t_log` VALUES (122, 'admin', '/user/logout', '2023-07-31 13:12:23', 0);
INSERT INTO `t_log` VALUES (123, '未登录', '/user/toLogin', '2023-07-31 13:12:23', 0);
INSERT INTO `t_log` VALUES (124, '未登录', '/user/checkCode', '2023-07-31 13:12:23', 7);
INSERT INTO `t_log` VALUES (125, '未登录', '/user/login', '2023-07-31 13:12:34', 11);
INSERT INTO `t_log` VALUES (126, '未登录', '/user/checkCode', '2023-07-31 13:12:34', 6);
INSERT INTO `t_log` VALUES (127, '未登录', '/user/login', '2023-07-31 13:12:44', 3);
INSERT INTO `t_log` VALUES (128, '未登录', '/user/checkCode', '2023-07-31 13:12:44', 5);
INSERT INTO `t_log` VALUES (129, '未登录', '/user/login', '2023-07-31 13:12:51', 8);
INSERT INTO `t_log` VALUES (130, 'admin', '/book/list', '2023-07-31 13:12:51', 2);
INSERT INTO `t_log` VALUES (131, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:06', 4);
INSERT INTO `t_log` VALUES (132, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:07', 4);
INSERT INTO `t_log` VALUES (133, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:09', 2);
INSERT INTO `t_log` VALUES (134, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:11', 3);
INSERT INTO `t_log` VALUES (135, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:14', 2);
INSERT INTO `t_log` VALUES (136, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:16', 3);
INSERT INTO `t_log` VALUES (137, 'admin', '/book/toUpdate.do', '2023-07-31 13:13:19', 2);
INSERT INTO `t_log` VALUES (138, 'admin', '/book/search.do', '2023-07-31 13:13:32', 7);
INSERT INTO `t_log` VALUES (139, 'admin', '/book/search.do', '2023-07-31 13:13:36', 3);
INSERT INTO `t_log` VALUES (140, 'admin', '/book/search.do', '2023-07-31 13:14:53', 227);
INSERT INTO `t_log` VALUES (141, 'admin', '/book/search.do', '2023-07-31 13:14:55', 0);
INSERT INTO `t_log` VALUES (142, 'admin', '/error', '2023-07-31 13:14:55', 17);
INSERT INTO `t_log` VALUES (143, 'admin', '/book/search.do', '2023-07-31 13:15:29', 26);
INSERT INTO `t_log` VALUES (144, 'admin', '/error', '2023-07-31 13:15:29', 17);
INSERT INTO `t_log` VALUES (145, 'admin', '/book/search.do', '2023-07-31 13:15:37', 41);
INSERT INTO `t_log` VALUES (146, 'admin', '/book/search.do', '2023-07-31 13:15:40', 0);
INSERT INTO `t_log` VALUES (147, 'admin', '/error', '2023-07-31 13:15:40', 8);
INSERT INTO `t_log` VALUES (148, 'admin', '/book/list', '2023-07-31 13:16:00', 231);
INSERT INTO `t_log` VALUES (149, 'admin', '/book/search.do', '2023-07-31 13:16:06', 24);
INSERT INTO `t_log` VALUES (150, 'admin', '/book/toUpdate.do', '2023-07-31 13:16:09', 41);
INSERT INTO `t_log` VALUES (151, 'admin', '/book/search.do', '2023-07-31 13:16:12', 1);
INSERT INTO `t_log` VALUES (152, 'admin', '/error', '2023-07-31 13:16:12', 16);
INSERT INTO `t_log` VALUES (153, 'admin', '/book/search.do', '2023-07-31 13:16:38', 202);
INSERT INTO `t_log` VALUES (154, 'admin', '/log/toLog', '2023-07-31 13:16:52', 33);
INSERT INTO `t_log` VALUES (155, 'admin', '/error', '2023-07-31 13:16:52', 35);
INSERT INTO `t_log` VALUES (156, 'admin', '/log/toLog', '2023-07-31 13:16:55', 18);
INSERT INTO `t_log` VALUES (157, 'admin', '/error', '2023-07-31 13:16:55', 1);
INSERT INTO `t_log` VALUES (158, 'admin', '/log/toLog', '2023-07-31 13:16:59', 13);
INSERT INTO `t_log` VALUES (159, 'admin', '/error', '2023-07-31 13:16:59', 1);
INSERT INTO `t_log` VALUES (160, 'admin', '/log/toLog', '2023-07-31 13:17:01', 12);
INSERT INTO `t_log` VALUES (161, 'admin', '/error', '2023-07-31 13:17:01', 1);
INSERT INTO `t_log` VALUES (162, 'admin', '/log/toLog', '2023-07-31 13:17:03', 9);
INSERT INTO `t_log` VALUES (163, 'admin', '/error', '2023-07-31 13:17:03', 1);
INSERT INTO `t_log` VALUES (164, 'admin', '/log/toLog', '2023-07-31 13:17:05', 8);
INSERT INTO `t_log` VALUES (165, 'admin', '/error', '2023-07-31 13:17:05', 1);
INSERT INTO `t_log` VALUES (166, 'admin', '/log/toLog', '2023-07-31 13:17:07', 6);
INSERT INTO `t_log` VALUES (167, 'admin', '/error', '2023-07-31 13:17:07', 0);
INSERT INTO `t_log` VALUES (168, 'admin', '/log/search.do', '2023-07-31 13:17:11', 18);
INSERT INTO `t_log` VALUES (169, 'admin', '/log/search.do', '2023-07-31 13:17:27', 5);
INSERT INTO `t_log` VALUES (170, 'admin', '/log/search.do', '2023-07-31 13:17:36', 4);
INSERT INTO `t_log` VALUES (171, 'admin', '/log/search.do', '2023-07-31 13:17:50', 2);
INSERT INTO `t_log` VALUES (172, 'admin', '/log/search.do', '2023-07-31 13:17:57', 0);
INSERT INTO `t_log` VALUES (173, 'admin', '/log/toLog', '2023-07-31 13:17:57', 7);
INSERT INTO `t_log` VALUES (174, 'admin', '/error', '2023-07-31 13:17:57', 1);
INSERT INTO `t_log` VALUES (175, 'admin', '/user/toLogin', '2023-07-31 13:32:41', 14);
INSERT INTO `t_log` VALUES (176, 'admin', '/user/checkCode', '2023-07-31 13:32:41', 759);
INSERT INTO `t_log` VALUES (177, 'admin', '/user/toRegister', '2023-07-31 13:32:49', 0);
INSERT INTO `t_log` VALUES (178, 'admin', '/user/register', '2023-07-31 13:33:08', 86);
INSERT INTO `t_log` VALUES (179, 'admin', '/user/checkCode', '2023-07-31 13:33:09', 77);
INSERT INTO `t_log` VALUES (180, 'admin', '/user/checkCode', '2023-07-31 13:33:19', 70);
INSERT INTO `t_log` VALUES (181, 'admin', '/user/checkCode', '2023-07-31 13:33:20', 11);
INSERT INTO `t_log` VALUES (182, 'admin', '/user/login', '2023-07-31 13:33:25', 246);
INSERT INTO `t_log` VALUES (183, 'aaaa', '/book/list', '2023-07-31 13:33:25', 23);
INSERT INTO `t_log` VALUES (184, 'aaaa', '/book/add.do', '2023-07-31 13:34:12', 194);
INSERT INTO `t_log` VALUES (185, 'aaaa', '/book/list', '2023-07-31 13:34:13', 11);
INSERT INTO `t_log` VALUES (186, 'aaaa', '/error', '2023-07-31 13:34:30', 39);
INSERT INTO `t_log` VALUES (187, 'aaaa', '/book/toUpdate.do', '2023-07-31 13:35:16', 9);
INSERT INTO `t_log` VALUES (188, 'aaaa', '/error', '2023-07-31 13:35:34', 2);
INSERT INTO `t_log` VALUES (189, 'aaaa', '/book/update.do', '2023-07-31 13:35:46', 19);
INSERT INTO `t_log` VALUES (190, 'aaaa', '/book/update.do', '2023-07-31 13:37:36', 42);
INSERT INTO `t_log` VALUES (191, 'aaaa', '/book/list', '2023-07-31 13:39:45', 21);
INSERT INTO `t_log` VALUES (192, 'aaaa', '/book/toUpdate.do', '2023-07-31 13:39:48', 6);
INSERT INTO `t_log` VALUES (193, 'aaaa', '/book/toUpdate.do', '2023-07-31 13:39:57', 5);
INSERT INTO `t_log` VALUES (194, 'aaaa', '/error', '2023-07-31 13:40:06', 6);
INSERT INTO `t_log` VALUES (195, 'aaaa', '/error', '2023-07-31 13:42:10', 85);
INSERT INTO `t_log` VALUES (196, 'aaaa', '/user/logout', '2023-07-31 13:42:30', 5);
INSERT INTO `t_log` VALUES (197, '未登录', '/user/toLogin', '2023-07-31 13:42:30', 1);
INSERT INTO `t_log` VALUES (198, '未登录', '/user/checkCode', '2023-07-31 13:42:31', 1247);
INSERT INTO `t_log` VALUES (199, '未登录', '/user/checkCode', '2023-07-31 13:42:33', 63);
INSERT INTO `t_log` VALUES (200, '未登录', '/user/checkCode', '2023-07-31 13:42:35', 70);
INSERT INTO `t_log` VALUES (201, '未登录', '/user/login', '2023-07-31 13:42:42', 264);
INSERT INTO `t_log` VALUES (202, 'admin', '/book/list', '2023-07-31 13:42:42', 26);
INSERT INTO `t_log` VALUES (203, 'admin', '/book/toUpdate.do', '2023-07-31 13:42:53', 24);
INSERT INTO `t_log` VALUES (204, 'admin', '/error', '2023-07-31 13:43:09', 2);
INSERT INTO `t_log` VALUES (205, 'admin', '/user/logout', '2023-07-31 13:45:38', 38);
INSERT INTO `t_log` VALUES (206, '未登录', '/user/toLogin', '2023-07-31 13:45:40', 0);
INSERT INTO `t_log` VALUES (207, '未登录', '/user/checkCode', '2023-07-31 13:45:40', 551);
INSERT INTO `t_log` VALUES (208, '未登录', '/user/login', '2023-07-31 13:45:48', 260);
INSERT INTO `t_log` VALUES (209, 'admin', '/book/list', '2023-07-31 13:45:48', 30);
INSERT INTO `t_log` VALUES (210, 'admin', '/book/toUpdate.do', '2023-07-31 13:45:52', 118);
INSERT INTO `t_log` VALUES (211, 'admin', '/error', '2023-07-31 13:46:01', 28);
INSERT INTO `t_log` VALUES (212, 'admin', '/user/logout', '2023-07-31 13:49:30', 33);
INSERT INTO `t_log` VALUES (213, '未登录', '/user/toLogin', '2023-07-31 13:49:31', 1);
INSERT INTO `t_log` VALUES (214, '未登录', '/user/checkCode', '2023-07-31 13:49:32', 1178);
INSERT INTO `t_log` VALUES (215, '未登录', '/user/checkCode', '2023-07-31 13:49:34', 13);
INSERT INTO `t_log` VALUES (216, '未登录', '/user/login', '2023-07-31 13:49:40', 171);
INSERT INTO `t_log` VALUES (217, 'admin', '/book/list', '2023-07-31 13:49:40', 38);
INSERT INTO `t_log` VALUES (218, 'admin', '/book/toUpdate.do', '2023-07-31 13:49:43', 89);
INSERT INTO `t_log` VALUES (219, 'admin', '/book/update.do', '2023-07-31 13:49:47', 66);
INSERT INTO `t_log` VALUES (220, 'admin', '/book/list', '2023-07-31 13:52:31', 61);
INSERT INTO `t_log` VALUES (221, 'admin', '/book/delete.do', '2023-07-31 13:52:36', 46);
INSERT INTO `t_log` VALUES (222, 'admin', '/book/list', '2023-07-31 13:52:37', 8);
INSERT INTO `t_log` VALUES (223, 'admin', '/book/deleteSelect.do', '2023-07-31 13:52:46', 63);
INSERT INTO `t_log` VALUES (224, 'admin', '/book/list', '2023-07-31 13:52:47', 6);
INSERT INTO `t_log` VALUES (225, 'admin', '/log/toLog', '2023-07-31 13:52:52', 45);
INSERT INTO `t_log` VALUES (226, 'admin', '/error', '2023-07-31 13:52:52', 22);
INSERT INTO `t_log` VALUES (227, 'admin', '/log/search.do', '2023-07-31 13:54:32', 67);
INSERT INTO `t_log` VALUES (228, 'admin', '/book/list', '2023-07-31 13:54:41', 8);
INSERT INTO `t_log` VALUES (229, 'admin', '/book/search.do', '2023-07-31 13:54:54', 33);
INSERT INTO `t_log` VALUES (230, 'admin', '/book/search.do', '2023-07-31 13:55:01', 8);
INSERT INTO `t_log` VALUES (231, 'admin', '/error', '2023-07-31 14:17:32', 122);
INSERT INTO `t_log` VALUES (232, 'admin', '/book/search.do', '2023-07-31 14:18:18', 66);
INSERT INTO `t_log` VALUES (233, 'admin', '/log/toLog', '2023-07-31 14:18:22', 74);
INSERT INTO `t_log` VALUES (234, 'admin', '/error', '2023-07-31 14:18:23', 3);
INSERT INTO `t_log` VALUES (235, 'admin', '/log/search.do', '2023-07-31 14:18:24', 1);
INSERT INTO `t_log` VALUES (236, 'admin', '/log/toLog', '2023-07-31 14:18:24', 41);
INSERT INTO `t_log` VALUES (237, 'admin', '/error', '2023-07-31 14:18:24', 2);
INSERT INTO `t_log` VALUES (238, 'admin', '/log/toLog', '2023-07-31 14:18:34', 27);
INSERT INTO `t_log` VALUES (239, 'admin', '/error', '2023-07-31 14:18:34', 2);
INSERT INTO `t_log` VALUES (240, 'admin', '/log/toLog', '2023-07-31 14:18:36', 17);
INSERT INTO `t_log` VALUES (241, 'admin', '/error', '2023-07-31 14:18:36', 1);
INSERT INTO `t_log` VALUES (242, 'admin', '/log/toLog', '2023-07-31 14:18:39', 16);
INSERT INTO `t_log` VALUES (243, 'admin', '/error', '2023-07-31 14:18:39', 1);
INSERT INTO `t_log` VALUES (244, '未登录', '/user/toLogin', '2023-07-31 18:48:40', 26);
INSERT INTO `t_log` VALUES (245, '未登录', '/user/checkCode', '2023-07-31 18:48:42', 667);
INSERT INTO `t_log` VALUES (246, '未登录', '/user/login', '2023-07-31 18:48:49', 166);
INSERT INTO `t_log` VALUES (247, 'admin', '/book/list', '2023-07-31 18:48:49', 32);
INSERT INTO `t_log` VALUES (248, 'admin', '/error', '2023-07-31 18:48:54', 123);
INSERT INTO `t_log` VALUES (249, 'admin', '/error', '2023-07-31 18:49:04', 6);
INSERT INTO `t_log` VALUES (250, 'admin', '/error', '2023-07-31 18:49:34', 2);
INSERT INTO `t_log` VALUES (251, 'admin', '/error', '2023-07-31 18:49:39', 2);
INSERT INTO `t_log` VALUES (252, 'admin', '/error', '2023-07-31 18:49:42', 4);
INSERT INTO `t_log` VALUES (253, 'admin', '/book/list', '2023-07-31 18:52:25', 392);
INSERT INTO `t_log` VALUES (254, 'admin', '/error', '2023-07-31 18:52:28', 93);
INSERT INTO `t_log` VALUES (255, 'admin', '/error', '2023-07-31 18:54:39', 136);
INSERT INTO `t_log` VALUES (256, '未登录', '/user/toLogin', '2023-07-31 18:55:42', 41);
INSERT INTO `t_log` VALUES (257, '未登录', '/user/toLogin', '2023-07-31 18:55:48', 1);
INSERT INTO `t_log` VALUES (258, '未登录', '/user/checkCode', '2023-07-31 18:55:48', 849);
INSERT INTO `t_log` VALUES (259, '未登录', '/user/login', '2023-07-31 18:55:53', 298);
INSERT INTO `t_log` VALUES (260, 'admin', '/book/list', '2023-07-31 18:55:54', 34);
INSERT INTO `t_log` VALUES (261, 'admin', '/error', '2023-07-31 18:55:59', 197);
INSERT INTO `t_log` VALUES (262, 'admin', '/book/list', '2023-07-31 18:56:04', 29);
INSERT INTO `t_log` VALUES (263, 'admin', '/error', '2023-07-31 19:00:16', 2);
INSERT INTO `t_log` VALUES (264, 'admin', '/error', '2023-07-31 19:00:21', 11);
INSERT INTO `t_log` VALUES (265, 'admin', '/error', '2023-07-31 19:04:55', 7);
INSERT INTO `t_log` VALUES (266, 'admin', '/book/list', '2023-07-31 19:13:08', 844);
INSERT INTO `t_log` VALUES (267, 'admin', '/book/add.do', '2023-07-31 19:13:21', 7522);
INSERT INTO `t_log` VALUES (268, 'admin', '/book/add.do', '2023-07-31 19:13:42', 4264);
INSERT INTO `t_log` VALUES (269, '未登录', '/user/toLogin', '2023-07-31 19:28:55', 14);
INSERT INTO `t_log` VALUES (270, '未登录', '/user/checkCode', '2023-07-31 19:28:56', 443);
INSERT INTO `t_log` VALUES (271, '未登录', '/user/checkCode', '2023-07-31 19:28:58', 21);
INSERT INTO `t_log` VALUES (272, '未登录', '/user/login', '2023-07-31 19:29:02', 115);
INSERT INTO `t_log` VALUES (273, 'admin', '/book/list', '2023-07-31 19:29:02', 21);
INSERT INTO `t_log` VALUES (274, 'admin', '/book/add.do', '2023-07-31 19:29:04', 195);
INSERT INTO `t_log` VALUES (275, 'admin', '/book/add.do', '2023-07-31 19:29:15', 8);
INSERT INTO `t_log` VALUES (276, 'admin', '/book/list', '2023-07-31 19:30:38', 377);
INSERT INTO `t_log` VALUES (277, 'admin', '/book/add.do', '2023-07-31 19:30:42', 199);
INSERT INTO `t_log` VALUES (278, 'admin', '/book/add.do', '2023-07-31 19:30:46', 3);
INSERT INTO `t_log` VALUES (279, 'admin', '/book/add.do', '2023-07-31 19:30:59', 9);
INSERT INTO `t_log` VALUES (280, 'admin', '/book/list', '2023-07-31 19:31:11', 12);
INSERT INTO `t_log` VALUES (281, 'admin', '/book/add.do', '2023-07-31 19:31:15', 2);
INSERT INTO `t_log` VALUES (282, 'admin', '/book/list', '2023-07-31 19:31:19', 6);
INSERT INTO `t_log` VALUES (283, 'admin', '/book/add.do', '2023-07-31 19:31:25', 3);
INSERT INTO `t_log` VALUES (284, 'admin', '/book/list', '2023-07-31 19:31:31', 5);
INSERT INTO `t_log` VALUES (285, 'admin', '/book/add.do', '2023-07-31 19:31:43', 7);

SET FOREIGN_KEY_CHECKS = 1;
