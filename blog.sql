/*
Navicat MySQL Data Transfer

Source Server         : chen
Source Server Version : 50134
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50134
File Encoding         : 65001

Date: 2019-06-01 17:49:51
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
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'Git使用教程', '', '<h3>1,git的安装</h3>2，git的使用', '2019-05-24 11:43:09', null, 'git');
INSERT INTO `blog` VALUES ('67', 'java学习第一天', '123', '<h3 id=\"\">标题三</h3>\n<p>1233455</p>\n<h5 id=\"111111\">111111</h5>\n<p>1111</p>', '2019-05-29 14:09:10', '2019-05-29 14:09:10', 'test');
INSERT INTO `blog` VALUES ('205', '手把手教你用git', '', '<h4 id=\"git\">一、如何安装git</h4>\n<p>下载地址：\nhttps://git-scm.com/download/win\n根据自己的电脑选择是32位的还是64位的。下载完后直接运行，之后一直next就好了。安装成功后，会有这样一个标志。</p>\n<h4 id=\"git-1\">二、如何使用git</h4>\n<p>（1）首先你要点进去https://github.com/这个网站，注册一个github账号。注册好之后，要记住邮箱和密码。</p>\n<p>（2） 打开之前的那个图标就是这样一个窗口，首先Git是分布式版本控制系统，所以需要填写用户名和邮箱作为一个标识，分别输入这两个命令，用户名和邮箱需要换成自己的。</p>\n<p>（3）  打开之前的那个图标就是这样一个窗口。现在比如我在我的C:/wamp/www/aaa有一个项目，我要对它进行管理怎么办呢。直接在控制台里面输入  cd   c:/wamp/www/aaa  之后你就会在aaa这个目录里面了。那如何对它进行管理呢。直接在控制台输入git  init</p>\n<p>之后你去查看aaa目录里面发现里面多了这样一个东西。</p>\n<p>这是一个隐藏文件夹，有点电脑看不见，是因为文件夹选项设置的隐藏文件不可见，这个去控制面板里的文件夹选择设置一下就好了。</p>\n<p>下面我们接着来操作，试着开始写我们的项目。</p>\n<p>首先我写一个首页叫index.html</p>', '2019-05-31 15:48:05', '2019-05-31 15:48:05', 'git');
INSERT INTO `blog` VALUES ('210', '欢迎使用Markdow编辑器', null, '<h4 id=\"11111\">11111</h4>\n<hr>\n<p>12313131313141231313131</p>', '2019-06-01 15:43:22', '2019-06-01 15:43:22', null);
INSERT INTO `blog` VALUES ('211', '欢迎使用Markdow编辑器', null, '<p>12313131</p>', '2019-06-01 15:46:44', '2019-06-01 15:46:44', null);

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', 'C:\\Users\\Administrator\\Desktop\\blog\\server\\static\\img\\21213.jpg');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `blog` int(11) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'Java web', '1111');
INSERT INTO `type` VALUES ('2', 'eclipse', '11');
INSERT INTO `type` VALUES ('3', '数据库', '11111');
INSERT INTO `type` VALUES ('4', 'Git', '1');
INSERT INTO `type` VALUES ('5', 'Python', '1111');
INSERT INTO `type` VALUES ('6', 'Node.js', null);
INSERT INTO `type` VALUES ('7', 'Vue.js', null);
INSERT INTO `type` VALUES ('8', '小程序', null);
INSERT INTO `type` VALUES ('9', '其他', null);
INSERT INTO `type` VALUES ('10', '收藏夹', null);
