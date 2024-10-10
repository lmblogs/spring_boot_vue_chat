/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : chat

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-03-26 22:23:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chat_friends
-- ----------------------------
DROP TABLE IF EXISTS `chat_friends`;
CREATE TABLE `chat_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) DEFAULT NULL COMMENT '用户id',
  `fuserid` varchar(64) DEFAULT NULL COMMENT '好友id',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of chat_friends
-- ----------------------------
INSERT INTO `chat_friends` VALUES ('1', '1571476959767947441', '1571476959767947449', '2019-12-01 17:14:56');
INSERT INTO `chat_friends` VALUES ('2', '1571476959767947449', '1571476959767947441', '2019-12-01 17:15:01');
INSERT INTO `chat_friends` VALUES ('3', '1571476959767947449', '1571476959767947427', '2019-12-01 17:24:04');
INSERT INTO `chat_friends` VALUES ('4', '1575254996716916627', '1571476959767947449', '2019-12-02 10:50:24');
INSERT INTO `chat_friends` VALUES ('5', '1571476959767947449', '1575254996716916627', '2019-12-02 10:50:29');
INSERT INTO `chat_friends` VALUES ('6', '1571476959767947427', '1571476959767947449', '2019-12-02 13:58:11');
INSERT INTO `chat_friends` VALUES ('7', '1571476959767947449', '1571476959767947427', '2019-12-02 13:58:11');
INSERT INTO `chat_friends` VALUES ('8', '1571476959767947427', '1571476959767947441', '2019-12-02 13:58:24');
INSERT INTO `chat_friends` VALUES ('9', '1571476959767947441', '1571476959767947427', '2019-12-02 13:58:24');
INSERT INTO `chat_friends` VALUES ('10', '1571476959767947441', '1575254996716916627', '2020-03-26 21:45:22');
INSERT INTO `chat_friends` VALUES ('11', '1575254996716916627', '1571476959767947441', '2020-03-26 21:45:22');

-- ----------------------------
-- Table structure for chat_msg
-- ----------------------------
DROP TABLE IF EXISTS `chat_msg`;
CREATE TABLE `chat_msg` (
  `senduserid` varchar(64) DEFAULT NULL COMMENT '发送者id',
  `reciveuserid` varchar(64) DEFAULT NULL COMMENT '接收者id',
  `sendtext` text COMMENT '发送内容',
  `sendtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `msgtype` varchar(64) DEFAULT NULL COMMENT '消息类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of chat_msg
-- ----------------------------
INSERT INTO `chat_msg` VALUES ('1571476959767947441', '1571476959767947449', '<p>你好</p>', '2020-03-26 22:19:35', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947449', '1571476959767947441', '你好啊', '2020-03-26 22:19:43', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947441', '1571476959767947449', 'hello world', '2020-03-26 22:19:57', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947441', '1571476959767947449', '<img src=\"http://localhost:8080/static/layui/images/face/36.gif\" alt=\"[酷]\">', '2020-03-26 22:20:03', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947449', '1571476959767947441', '<img src=\"http://localhost:8080/static/layui/images/face/5.gif\" alt=\"[挖鼻]\">', '2020-03-26 22:20:09', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947441', '1571476959767947449', '<img src=\"/pic/0de577a2da8d4202b2659f644145411a.png\" alt=\"undefined\">', '2020-03-26 22:20:26', '0');
INSERT INTO `chat_msg` VALUES ('1571476959767947449', '1571476959767947441', '<img src=\"/pic/c4cd234427584ad5b3735c12a9efa2ba.png\" alt=\"undefined\">', '2020-03-26 22:20:38', '0');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) DEFAULT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', '1571476959767947441', '123456', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `login` VALUES ('2', '1571476959767947449', '123457', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `login` VALUES ('3', '1571476959767947427', '123458', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `login` VALUES ('4', '1575254996716916627', '123459', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'uid',
  `userid` varchar(64) DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `usign` varchar(512) DEFAULT NULL,
  `uimg` varchar(512) DEFAULT '/pic/userdefaultimg.jpg' COMMENT '用户头像',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '1571476959767947441', '小A', '无冥冥之志者，无昭昭之明；无惛惛之事者，无赫赫之功。', '/pic/xa.png');
INSERT INTO `userinfo` VALUES ('2', '1571476959767947449', '小B', '与我捻熄灯，同我书半生。问我粥可温，同我立黄昏。', '/pic/xb.png');
INSERT INTO `userinfo` VALUES ('3', '1571476959767947427', '小C', '人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。', '/pic/xc.png');
INSERT INTO `userinfo` VALUES ('4', '1575254996716916627', '小D', '心之所向，素履以往，生如逆旅，一苇以航。', '/pic/xd.png');
