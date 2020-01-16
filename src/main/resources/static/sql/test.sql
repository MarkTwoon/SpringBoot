/*
 Navicat Premium Data Transfer

 Source Server         : tg
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 16/01/2020 08:57:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_test`;
CREATE TABLE `tb_test`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AGE` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_test
-- ----------------------------
INSERT INTO `tb_test` VALUES (1, 'green', 20);
INSERT INTO `tb_test` VALUES (2, 'orange', 21);
INSERT INTO `tb_test` VALUES (3, 'lll', 23);
INSERT INTO `tb_test` VALUES (4, 'kkk', 24);
INSERT INTO `tb_test` VALUES (5, 'ggg', 25);

SET FOREIGN_KEY_CHECKS = 1;
