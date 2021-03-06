/*
 Navicat MySQL Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 04/06/2019 00:10:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `big_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `little_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `change_date` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (232, '手把手教你用git', NULL, '<h3 id=\"git\">一、如何安装git</h3>\n<p>下载地址：<a href=\"https://git-scm.com/download/win\">https://git-scm.com/download/win</a><a>\n根据自己的电脑选择是32位的还是64位的。下载完后直接运行，之后一直next就好了。安装成功后，会有这样一个标志。\n<img src=\"http://localhost:3000/getimg?path=C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533919714.png\" alt=\"C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533919714.png\"></a></p><a>\n<h3 id=\"git-1\">二、如何使用git</h3>\n<p>（1）首先你要点进去https://github.com/这个网站，注册一个github账号。注册好之后，要记住邮箱和密码。\n<img src=\"http://localhost:3000/getimg?path=C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533966451.png\" alt=\"C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533966451.png\">\n（2） 打开之前的那个图标就是这样一个窗口，首先Git是分布式版本控制系统，所以需要填写用户名和邮箱作为一个标识，分别输入这两个命令，用户名和邮箱需要换成自己的。\n<img src=\"http://localhost:3000/getimg?path=C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559534001205.png\" alt=\"C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559534001205.png\"></p></a>', '2019-06-03 11:53:58', '2019-06-03 11:53:58', '一、如何安装git\n下载地址：https://git-scm.com/download/win\n根据自己的电脑选择是32位的还是64位的。下载完后直接运行，之后一直next就好了。安装成功后，会有这样一个标志。\n\n二、如何使用git\n（1）首先你要点进去https://github.com/这个网站，注册一个github账号。注册好之后，要记住邮箱和密码。\n\n（2） 打开之前的那个图标就是这样一个', NULL);
INSERT INTO `blog` VALUES (233, '欢迎使用Markdow编辑器', NULL, '预览', '2019-06-04 00:03:44', '2019-06-04 00:03:44', '预览', 'Java web');
INSERT INTO `blog` VALUES (234, '欢迎使用Markdow编辑器', NULL, '预览', '2019-06-04 00:03:57', '2019-06-04 00:03:57', '预览', 'Git');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `blog` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\21213.jpg');
INSERT INTO `picture` VALUES (2, NULL);
INSERT INTO `picture` VALUES (3, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (4, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (5, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\20150318160512-793572562.jpg');
INSERT INTO `picture` VALUES (6, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (7, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\20150318160512-793572562.jpg');
INSERT INTO `picture` VALUES (8, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (9, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (10, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (11, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (12, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (13, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (14, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (15, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (16, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (17, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (18, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (19, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\21213.jpg');
INSERT INTO `picture` VALUES (20, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (21, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\20150318160512-793572562.jpg');
INSERT INTO `picture` VALUES (22, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\20150318160512-793572562.jpg');
INSERT INTO `picture` VALUES (23, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\u=531411191,1848041474&fm=115&gp=0.jpg');
INSERT INTO `picture` VALUES (24, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\下载.jpg');
INSERT INTO `picture` VALUES (25, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (26, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\21213.jpg');
INSERT INTO `picture` VALUES (27, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\微信图片_20181130113146.jpg');
INSERT INTO `picture` VALUES (28, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (29, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (30, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\21213.jpg');
INSERT INTO `picture` VALUES (31, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\微信图片_20181025195056.jpg');
INSERT INTO `picture` VALUES (32, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\u=531411191,1848041474&fm=115&gp=0.jpg');
INSERT INTO `picture` VALUES (33, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\u=531411191,1848041474&fm=115&gp=0.jpg');
INSERT INTO `picture` VALUES (34, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\bigpic_source.jpg');
INSERT INTO `picture` VALUES (35, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559531469649.jpeg');
INSERT INTO `picture` VALUES (36, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559531480350.jpeg');
INSERT INTO `picture` VALUES (37, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533919714.png');
INSERT INTO `picture` VALUES (38, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559533966451.png');
INSERT INTO `picture` VALUES (39, 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\1559534001205.png');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'type.html',
  `type` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, 'Java web', 'type.html', 1);
INSERT INTO `type` VALUES (2, 'eclipse', 'type.html', 1);
INSERT INTO `type` VALUES (3, '数据库', 'type.html', 1);
INSERT INTO `type` VALUES (4, 'Git', 'type.html', 1);
INSERT INTO `type` VALUES (5, 'Python', 'type.html', 1);
INSERT INTO `type` VALUES (6, 'Node.js', 'type.html', 1);
INSERT INTO `type` VALUES (7, 'Vue.js', 'type.html', 1);
INSERT INTO `type` VALUES (8, '小程序', 'type.html', 1);
INSERT INTO `type` VALUES (9, '其他', 'type.html', 1);
INSERT INTO `type` VALUES (10, '收藏夹', 'type.html', 1);
INSERT INTO `type` VALUES (12, '聊天', 'chat.html', 1);
INSERT INTO `type` VALUES (13, '设置', 'settings.html', 1);

SET FOREIGN_KEY_CHECKS = 1;
