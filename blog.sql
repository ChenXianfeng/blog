/*
Navicat MySQL Data Transfer

Source Server         : chen
Source Server Version : 50134
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50134
File Encoding         : 65001

Date: 2019-05-30 17:22:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `big_title` varchar(255) DEFAULT NULL,
  `little_title` varchar(255) DEFAULT NULL,
  `context` text,
  `create_date` datetime DEFAULT NULL,
  `change_date` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'Git使用教程', '', '<h3>1,git的安装</h3>2，git的使用', '2019-05-24 11:43:09', null, 'git');
INSERT INTO `blog` VALUES ('67', 'java学习第一天', '123', '<h3 id=\"\">标题三</h3>\n<p>1233455</p>\n<h5 id=\"111111\">111111</h5>\n<p>1111</p>', '2019-05-29 14:09:10', '2019-05-29 14:09:10', 'test');
INSERT INTO `blog` VALUES ('84', '13', '13', '<p>123</p>', '2019-05-30 16:15:07', '2019-05-30 16:15:07', null);
INSERT INTO `blog` VALUES ('85', '1', '', '', '2019-05-30 16:18:56', '2019-05-30 16:18:56', null);
INSERT INTO `blog` VALUES ('86', '1', '', '', '2019-05-30 16:21:49', '2019-05-30 16:21:49', null);
INSERT INTO `blog` VALUES ('87', '123', '', '', '2019-05-30 17:04:58', '2019-05-30 17:04:58', null);
INSERT INTO `blog` VALUES ('88', '1312', '', '', '2019-05-30 17:06:11', '2019-05-30 17:06:11', null);
INSERT INTO `blog` VALUES ('89', '123', '', '', '2019-05-30 17:08:13', '2019-05-30 17:08:13', null);
INSERT INTO `blog` VALUES ('90', '123', '', '', '2019-05-30 17:13:52', '2019-05-30 17:13:52', null);
INSERT INTO `blog` VALUES ('91', '132', '', '', '2019-05-30 17:14:33', '2019-05-30 17:14:33', null);
INSERT INTO `blog` VALUES ('92', '123131', '', '<p>13</p>', '2019-05-30 17:15:08', '2019-05-30 17:15:08', null);
INSERT INTO `blog` VALUES ('93', '123', '', '', '2019-05-30 17:15:19', '2019-05-30 17:15:19', null);
INSERT INTO `blog` VALUES ('94', '12313', '', '', '2019-05-30 17:15:59', '2019-05-30 17:15:59', null);
INSERT INTO `blog` VALUES ('95', '123', '', '', '2019-05-30 17:16:56', '2019-05-30 17:16:56', null);
INSERT INTO `blog` VALUES ('96', '12313', '', '<p>1321313</p>', '2019-05-30 17:17:10', '2019-05-30 17:17:10', null);
INSERT INTO `blog` VALUES ('97', '111', '', '', '2019-05-30 17:18:15', '2019-05-30 17:18:15', null);
INSERT INTO `blog` VALUES ('98', '11', '', '', '2019-05-30 17:19:29', '2019-05-30 17:19:29', null);

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
