/*
Navicat MySQL Data Transfer

Source Server         : mrduan
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : rbac

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-07-27 20:55:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '查看用户', '', '14');
INSERT INTO `permission` VALUES ('2', '添加用户', null, '14');
INSERT INTO `permission` VALUES ('3', '编辑用户', null, '14');
INSERT INTO `permission` VALUES ('4', '删除用户', null, '14');
INSERT INTO `permission` VALUES ('5', '查看角色', null, '15');
INSERT INTO `permission` VALUES ('6', '添加角色', null, '15');
INSERT INTO `permission` VALUES ('7', '编辑角色', null, '15');
INSERT INTO `permission` VALUES ('8', '删除角色', null, '15');
INSERT INTO `permission` VALUES ('9', '查看权限', null, '16');
INSERT INTO `permission` VALUES ('10', '添加权限', null, '16');
INSERT INTO `permission` VALUES ('11', '编辑权限', null, '16');
INSERT INTO `permission` VALUES ('12', '删除权限', null, '16');
INSERT INTO `permission` VALUES ('13', '菜单管理', null, '0');
INSERT INTO `permission` VALUES ('14', '用户管理', null, '13');
INSERT INTO `permission` VALUES ('15', '角色管理', null, '13');
INSERT INTO `permission` VALUES ('16', '权限管理', null, '13');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '管理员');
INSERT INTO `role` VALUES ('2', '经理', '111');
INSERT INTO `role` VALUES ('3', '主管', '111');
INSERT INTO `role` VALUES ('4', '组长', '222');
INSERT INTO `role` VALUES ('5', '员工', '111');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rid` int NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p_rid` (`rid`),
  KEY `r_pid` (`pid`),
  CONSTRAINT `p_rid` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_pid` FOREIGN KEY (`pid`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');
INSERT INTO `role_permission` VALUES ('5', '1', '5');
INSERT INTO `role_permission` VALUES ('6', '1', '6');
INSERT INTO `role_permission` VALUES ('7', '1', '7');
INSERT INTO `role_permission` VALUES ('8', '1', '8');
INSERT INTO `role_permission` VALUES ('9', '1', '9');
INSERT INTO `role_permission` VALUES ('10', '1', '10');
INSERT INTO `role_permission` VALUES ('11', '1', '11');
INSERT INTO `role_permission` VALUES ('12', '1', '12');
INSERT INTO `role_permission` VALUES ('13', '1', '13');
INSERT INTO `role_permission` VALUES ('14', '1', '14');
INSERT INTO `role_permission` VALUES ('15', '1', '15');
INSERT INTO `role_permission` VALUES ('16', '1', '16');
INSERT INTO `role_permission` VALUES ('17', '2', '14');
INSERT INTO `role_permission` VALUES ('18', '2', '15');
INSERT INTO `role_permission` VALUES ('19', '2', '16');
INSERT INTO `role_permission` VALUES ('20', '2', '1');
INSERT INTO `role_permission` VALUES ('21', '2', '2');
INSERT INTO `role_permission` VALUES ('22', '2', '3');
INSERT INTO `role_permission` VALUES ('23', '2', '4');
INSERT INTO `role_permission` VALUES ('24', '2', '5');
INSERT INTO `role_permission` VALUES ('25', '2', '6');
INSERT INTO `role_permission` VALUES ('26', '2', '7');
INSERT INTO `role_permission` VALUES ('27', '2', '8');
INSERT INTO `role_permission` VALUES ('31', '2', '12');
INSERT INTO `role_permission` VALUES ('32', '2', '13');
INSERT INTO `role_permission` VALUES ('33', '3', '13');
INSERT INTO `role_permission` VALUES ('34', '3', '14');
INSERT INTO `role_permission` VALUES ('35', '3', '15');
INSERT INTO `role_permission` VALUES ('36', '3', '1');
INSERT INTO `role_permission` VALUES ('37', '3', '2');
INSERT INTO `role_permission` VALUES ('38', '3', '3');
INSERT INTO `role_permission` VALUES ('39', '3', '4');
INSERT INTO `role_permission` VALUES ('40', '3', '5');
INSERT INTO `role_permission` VALUES ('41', '4', '13');
INSERT INTO `role_permission` VALUES ('42', '4', '14');
INSERT INTO `role_permission` VALUES ('43', '4', '1');
INSERT INTO `role_permission` VALUES ('44', '4', '2');
INSERT INTO `role_permission` VALUES ('45', '4', '3');
INSERT INTO `role_permission` VALUES ('46', '5', '13');
INSERT INTO `role_permission` VALUES ('47', '5', '14');
INSERT INTO `role_permission` VALUES ('48', '5', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '管理员，拥有一切权限');
INSERT INTO `user` VALUES ('2', 'harry', '123456', '111');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
