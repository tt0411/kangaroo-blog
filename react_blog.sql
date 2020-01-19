/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : react_blog

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-01-19 15:46:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `article_content` longtext NOT NULL,
  `introduce` text,
  `addTime` int(11) DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `part_count` int(11) DEFAULT '0',
  `article_content_html` longtext,
  `introduce_html` text,
  `isTop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('57', '2', '66666', '# 第一篇文章', 'qqqqqqqqqqqqqq', '1578844800', '1054', '0', '<a id=\"toc11\" href=\"#toc11\" class=\"anchor-fix\"><h1>第一篇文章</h1></a>\n', '<p>qqqqqqqqqqqqqq</p>\n', '1');
INSERT INTO `article` VALUES ('58', '1', '2121', '快乐啦', '212', '1579363200', '1029', '0', '<p>快乐啦</p>\n', '<p>212</p>\n', '0');

-- ----------------------------
-- Table structure for bibidao
-- ----------------------------
DROP TABLE IF EXISTS `bibidao`;
CREATE TABLE `bibidao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bibidao
-- ----------------------------
INSERT INTO `bibidao` VALUES ('4', '程序员到底学什么语言好', 'https://www.bilibili.com/video/av73559188', 'http://newimg.jspang.com/bbd03.jpg', '0');
INSERT INTO `bibidao` VALUES ('12', '2019年前端大事回顾', 'https://www.bilibili.com/video/av79321463', 'http://newimg.jspang.com/bbd10.jpg', '0');
INSERT INTO `bibidao` VALUES ('2', '大胖逼逼叨01-如何高效学习新编程技术', 'https://www.bilibili.com/video/av71198525', 'http://newimg.jspang.com/bbd01.jpg', '0');
INSERT INTO `bibidao` VALUES ('3', '大胖逼逼叨02-三招提高代码质量', 'https://www.bilibili.com/video/av71895773', 'http://newimg.jspang.com/bbd02.jpg', '0');
INSERT INTO `bibidao` VALUES ('11', '三招提高代码质量', 'https://www.bilibili.com/video/av71895773', 'http://newimg.jspang.com/bbd02.jpg', '0');
INSERT INTO `bibidao` VALUES ('7', '12年程序员感悟编程的意义', 'https://www.bilibili.com/video/av76092987', 'http://newimg.jspang.com/bbd06.jpg', '0');
INSERT INTO `bibidao` VALUES ('8', '大胆预测明年软件开发趋势', 'https://www.bilibili.com/video/av76812128', 'http://newimg.jspang.com/bbd07.jpg', '0');
INSERT INTO `bibidao` VALUES ('9', '如何布置桌面提高编码效率', 'https://www.bilibili.com/video/av77639437', 'http://newimg.jspang.com/bbd08.jpg', '0');
INSERT INTO `bibidao` VALUES ('10', '程序员通关阿里面试全攻略', 'https://www.bilibili.com/video/av78596180', 'http://newimg.jspang.com/bbd09.jpg', '0');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '前端', '1', 'file');
INSERT INTO `type` VALUES ('2', '随笔', '2', 'message');
