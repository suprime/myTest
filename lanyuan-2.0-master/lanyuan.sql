/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : lanyuan

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-11-18 09:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aaa
-- ----------------------------
DROP TABLE IF EXISTS `aaa`;
CREATE TABLE `aaa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(20) NOT NULL,
  `wa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aaa
-- ----------------------------
INSERT INTO `aaa` VALUES ('1', '3', '200');

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'root', 'Y6nw6nu5gFB5a2SehUgYRQ==', '0', '根账号', '1', '2014-11-12 09:44:36', '0');
INSERT INTO `account` VALUES ('33', '00', 'root', null, '00', '1', '2014-10-27 18:23:25', '0');
INSERT INTO `account` VALUES ('34', 'test', '4QrcOUm6Wau+VuBX8g+IPg==', null, 'test', '1', '2014-04-16 11:42:41', '0');

-- ----------------------------
-- Table structure for acc_role
-- ----------------------------
DROP TABLE IF EXISTS `acc_role`;
CREATE TABLE `acc_role` (
  `acc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`acc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acc_role
-- ----------------------------
INSERT INTO `acc_role` VALUES ('1', '2');
INSERT INTO `acc_role` VALUES ('1', '3');
INSERT INTO `acc_role` VALUES ('1', '4');
INSERT INTO `acc_role` VALUES ('33', '3');
INSERT INTO `acc_role` VALUES ('34', '2');
INSERT INTO `acc_role` VALUES ('34', '3');
INSERT INTO `acc_role` VALUES ('35', '2');
INSERT INTO `acc_role` VALUES ('37', '1');
INSERT INTO `acc_role` VALUES ('37', '2');
INSERT INTO `acc_role` VALUES ('37', '3');
INSERT INTO `acc_role` VALUES ('40', '3');

-- ----------------------------
-- Table structure for dic
-- ----------------------------
DROP TABLE IF EXISTS `dic`;
CREATE TABLE `dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeId` int(11) DEFAULT NULL,
  `dicKey` varchar(20) DEFAULT NULL,
  `dicName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic
-- ----------------------------
INSERT INTO `dic` VALUES ('1', '1', 'res_directory', '目录', '目录');
INSERT INTO `dic` VALUES ('2', '1', 'res_menu', '菜单', '菜单');
INSERT INTO `dic` VALUES ('3', '1', 'res_btn', '按扭', '按扭');

-- ----------------------------
-- Table structure for dic_type
-- ----------------------------
DROP TABLE IF EXISTS `dic_type`;
CREATE TABLE `dic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeKey` varchar(20) DEFAULT NULL,
  `dicTypeName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dic_type
-- ----------------------------
INSERT INTO `dic_type` VALUES ('1', 'res_type', '菜单类型', '菜单类型是目录,菜单,按扭,');
INSERT INTO `dic_type` VALUES ('2', '2', '2', '2');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2796 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1497', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:17');
INSERT INTO `log` VALUES ('1498', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-19 03:16:20');
INSERT INTO `log` VALUES ('1499', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:23');
INSERT INTO `log` VALUES ('1500', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-19 03:16:25');
INSERT INTO `log` VALUES ('1501', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:34');
INSERT INTO `log` VALUES ('1502', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:36:20');
INSERT INTO `log` VALUES ('1503', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:36:35');
INSERT INTO `log` VALUES ('1504', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.76.233', '2014-01-19 06:36:48');
INSERT INTO `log` VALUES ('1505', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:01');
INSERT INTO `log` VALUES ('1506', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:14');
INSERT INTO `log` VALUES ('1507', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:37:27');
INSERT INTO `log` VALUES ('1508', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:39');
INSERT INTO `log` VALUES ('1509', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:47');
INSERT INTO `log` VALUES ('1510', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:37:57');
INSERT INTO `log` VALUES ('1511', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:07');
INSERT INTO `log` VALUES ('1512', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:17');
INSERT INTO `log` VALUES ('1513', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:38:27');
INSERT INTO `log` VALUES ('1514', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:38:39');
INSERT INTO `log` VALUES ('1515', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:47');
INSERT INTO `log` VALUES ('1516', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:38:57');
INSERT INTO `log` VALUES ('1517', null, 'ProductServiceImpl', 'updateLookNuns', '15', '66.249.64.45', '2014-01-19 06:39:07');
INSERT INTO `log` VALUES ('1518', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:39:17');
INSERT INTO `log` VALUES ('1519', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:39:26');
INSERT INTO `log` VALUES ('1520', null, 'ProductServiceImpl', 'updateLookNuns', '16', '66.249.64.44', '2014-01-19 06:39:37');
INSERT INTO `log` VALUES ('1521', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:56:19');
INSERT INTO `log` VALUES ('1522', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:58:42');
INSERT INTO `log` VALUES ('1523', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:58:46');
INSERT INTO `log` VALUES ('1524', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:59:14');
INSERT INTO `log` VALUES ('1525', 'admin', '用户管理', 'updateUserRates', '0', '117.80.237.139', '2014-01-19 12:01:16');
INSERT INTO `log` VALUES ('1526', 'admin', 'ArticleServiceImpl', 'modify', '0', '117.80.237.139', '2014-01-19 12:05:21');
INSERT INTO `log` VALUES ('1527', 'ttzf', '用户管理', 'add', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `log` VALUES ('1528', 'ttzf', '角色管理', 'saveUserRole', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `log` VALUES ('1529', 'ttzf', '用户管理', 'saveUserRates', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `log` VALUES ('1530', 'admin', '用户管理', 'delete', '78', '114.218.106.175', '2014-01-19 18:47:52');
INSERT INTO `log` VALUES ('1531', 'admin', '用户管理', 'add', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `log` VALUES ('1532', 'admin', '角色管理', 'saveUserRole', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `log` VALUES ('1533', 'admin', '用户管理', 'saveUserRates', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `log` VALUES ('1534', 'admin', '用户管理', 'modify', '16', '114.218.106.175', '2014-01-19 18:50:06');
INSERT INTO `log` VALUES ('1535', 'admin', '用户管理', 'updateUserRates', '0', '114.218.106.175', '2014-01-19 18:50:24');
INSERT INTO `log` VALUES ('1536', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 03:13:13');
INSERT INTO `log` VALUES ('1537', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 06:50:19');
INSERT INTO `log` VALUES ('1538', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-20 09:14:20');
INSERT INTO `log` VALUES ('1539', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-20 13:02:58');
INSERT INTO `log` VALUES ('1540', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-20 21:07:41');
INSERT INTO `log` VALUES ('1541', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 21:41:20');
INSERT INTO `log` VALUES ('1542', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-20 23:50:15');
INSERT INTO `log` VALUES ('1543', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 01:58:44');
INSERT INTO `log` VALUES ('1544', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-01-21 02:11:17');
INSERT INTO `log` VALUES ('1545', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 02:12:50');
INSERT INTO `log` VALUES ('1546', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 02:40:51');
INSERT INTO `log` VALUES ('1547', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 06:12:47');
INSERT INTO `log` VALUES ('1548', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 06:16:31');
INSERT INTO `log` VALUES ('1549', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.114', '2014-01-21 07:01:14');
INSERT INTO `log` VALUES ('1550', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.179', '2014-01-21 07:09:56');
INSERT INTO `log` VALUES ('1551', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.145', '2014-01-21 07:17:57');
INSERT INTO `log` VALUES ('1552', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.180', '2014-01-21 07:25:18');
INSERT INTO `log` VALUES ('1553', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 07:32:52');
INSERT INTO `log` VALUES ('1554', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.94', '2014-01-21 07:33:20');
INSERT INTO `log` VALUES ('1555', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.78', '2014-01-21 07:42:01');
INSERT INTO `log` VALUES ('1556', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.70', '2014-01-21 07:48:43');
INSERT INTO `log` VALUES ('1557', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.77', '2014-01-21 08:00:04');
INSERT INTO `log` VALUES ('1558', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.83', '2014-01-21 08:06:46');
INSERT INTO `log` VALUES ('1559', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.76', '2014-01-21 08:14:07');
INSERT INTO `log` VALUES ('1560', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.180', '2014-01-21 08:30:50');
INSERT INTO `log` VALUES ('1561', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.113', '2014-01-21 08:40:11');
INSERT INTO `log` VALUES ('1562', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.75', '2014-01-21 08:54:54');
INSERT INTO `log` VALUES ('1563', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.73', '2014-01-21 09:03:35');
INSERT INTO `log` VALUES ('1564', null, 'ProductServiceImpl', 'updateLookNuns', '16', '220.181.108.148', '2014-01-21 09:12:57');
INSERT INTO `log` VALUES ('1565', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.103', '2014-01-21 09:21:38');
INSERT INTO `log` VALUES ('1566', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.147', '2014-01-21 09:28:19');
INSERT INTO `log` VALUES ('1567', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.155', '2014-01-21 09:43:43');
INSERT INTO `log` VALUES ('1568', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.74', '2014-01-21 09:55:04');
INSERT INTO `log` VALUES ('1569', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.79', '2014-01-21 10:01:45');
INSERT INTO `log` VALUES ('1570', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.45', '2014-01-21 10:30:30');
INSERT INTO `log` VALUES ('1571', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.107', '2014-01-21 10:43:12');
INSERT INTO `log` VALUES ('1572', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 10:47:34');
INSERT INTO `log` VALUES ('1573', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.100', '2014-01-21 10:49:54');
INSERT INTO `log` VALUES ('1574', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 11:31:22');
INSERT INTO `log` VALUES ('1575', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-21 14:07:12');
INSERT INTO `log` VALUES ('1576', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 14:24:32');
INSERT INTO `log` VALUES ('1577', 'admin', '用户管理', 'add', '0', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `log` VALUES ('1578', 'admin', '角色管理', 'saveUserRole', '32', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `log` VALUES ('1579', 'admin', '用户管理', 'saveUserRates', '0', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `log` VALUES ('1580', 'admin', '用户管理', 'modify', '0', '114.218.105.157', '2014-01-21 14:32:55');
INSERT INTO `log` VALUES ('1581', 'admin', '用户管理', 'updateUserRates', '0', '114.218.105.157', '2014-01-21 14:33:09');
INSERT INTO `log` VALUES ('1582', '14745767163', '用户管理', 'modify', '0', '122.159.142.9', '2014-01-21 14:37:07');
INSERT INTO `log` VALUES ('1583', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 15:08:04');
INSERT INTO `log` VALUES ('1584', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 17:52:31');
INSERT INTO `log` VALUES ('1585', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 19:24:25');
INSERT INTO `log` VALUES ('1586', 'admin', '用户管理', 'add', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `log` VALUES ('1587', 'admin', '角色管理', 'saveUserRole', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `log` VALUES ('1588', 'admin', '用户管理', 'saveUserRates', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `log` VALUES ('1589', 'admin', '用户管理', 'modify', '16', '114.218.105.157', '2014-01-21 20:53:48');
INSERT INTO `log` VALUES ('1590', 'admin', '用户管理', 'updateUserRates', '0', '114.218.105.157', '2014-01-21 20:54:05');
INSERT INTO `log` VALUES ('1591', '18361939190', '用户管理', 'modify', '0', '180.106.102.251', '2014-01-21 20:59:00');
INSERT INTO `log` VALUES ('1592', '18361939190', '用户管理', 'modify', '0', '180.106.102.251', '2014-01-21 20:59:02');
INSERT INTO `log` VALUES ('1593', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 03:25:31');
INSERT INTO `log` VALUES ('1594', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 05:20:42');
INSERT INTO `log` VALUES ('1595', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 07:36:13');
INSERT INTO `log` VALUES ('1596', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 07:43:15');
INSERT INTO `log` VALUES ('1597', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 11:30:14');
INSERT INTO `log` VALUES ('1598', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-22 13:06:23');
INSERT INTO `log` VALUES ('1599', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 17:09:24');
INSERT INTO `log` VALUES ('1600', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 17:46:01');
INSERT INTO `log` VALUES ('1601', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-01-22 19:46:03');
INSERT INTO `log` VALUES ('1602', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 20:27:16');
INSERT INTO `log` VALUES ('1603', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 21:18:06');
INSERT INTO `log` VALUES ('1604', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 03:27:34');
INSERT INTO `log` VALUES ('1605', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 08:56:53');
INSERT INTO `log` VALUES ('1606', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 10:53:03');
INSERT INTO `log` VALUES ('1607', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.73', '2014-01-23 12:12:43');
INSERT INTO `log` VALUES ('1608', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.73', '2014-01-23 12:23:06');
INSERT INTO `log` VALUES ('1609', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-01-23 13:45:24');
INSERT INTO `log` VALUES ('1610', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 14:11:18');
INSERT INTO `log` VALUES ('1611', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-23 14:28:53');
INSERT INTO `log` VALUES ('1612', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 17:57:58');
INSERT INTO `log` VALUES ('1613', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 19:39:16');
INSERT INTO `log` VALUES ('1614', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 22:16:19');
INSERT INTO `log` VALUES ('1615', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-23 23:12:15');
INSERT INTO `log` VALUES ('1616', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 23:19:39');
INSERT INTO `log` VALUES ('1617', null, 'ProductServiceImpl', 'updateLookNuns', '16', '101.226.166.253', '2014-01-24 01:19:55');
INSERT INTO `log` VALUES ('1618', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.253', '2014-01-24 01:19:56');
INSERT INTO `log` VALUES ('1619', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.253', '2014-01-24 01:19:59');
INSERT INTO `log` VALUES ('1620', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.20', '2014-01-24 02:38:12');
INSERT INTO `log` VALUES ('1621', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-24 07:29:18');
INSERT INTO `log` VALUES ('1622', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-01-24 09:01:16');
INSERT INTO `log` VALUES ('1623', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 09:32:45');
INSERT INTO `log` VALUES ('1624', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.178', '2014-01-24 10:07:20');
INSERT INTO `log` VALUES ('1625', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 12:10:20');
INSERT INTO `log` VALUES ('1626', null, 'ProductServiceImpl', 'updateLookNuns', '0', '38.100.21.62', '2014-01-24 12:14:25');
INSERT INTO `log` VALUES ('1627', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 15:02:16');
INSERT INTO `log` VALUES ('1628', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 15:22:39');
INSERT INTO `log` VALUES ('1629', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 16:26:36');
INSERT INTO `log` VALUES ('1630', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 19:36:56');
INSERT INTO `log` VALUES ('1631', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 20:02:17');
INSERT INTO `log` VALUES ('1632', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-24 20:22:27');
INSERT INTO `log` VALUES ('1633', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.97', '2014-01-24 20:27:47');
INSERT INTO `log` VALUES ('1634', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 23:46:07');
INSERT INTO `log` VALUES ('1635', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 23:48:55');
INSERT INTO `log` VALUES ('1636', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.91', '2014-01-25 00:08:40');
INSERT INTO `log` VALUES ('1637', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 01:22:06');
INSERT INTO `log` VALUES ('1638', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.91', '2014-01-25 04:06:00');
INSERT INTO `log` VALUES ('1639', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 04:10:39');
INSERT INTO `log` VALUES ('1640', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 04:46:12');
INSERT INTO `log` VALUES ('1641', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 05:24:24');
INSERT INTO `log` VALUES ('1642', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.34', '2014-01-25 07:42:21');
INSERT INTO `log` VALUES ('1643', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-25 08:35:10');
INSERT INTO `log` VALUES ('1644', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.105', '2014-01-25 09:41:21');
INSERT INTO `log` VALUES ('1645', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.91', '2014-01-25 09:55:30');
INSERT INTO `log` VALUES ('1646', null, 'ProductServiceImpl', 'updateLookNuns', '15', '5.10.83.15', '2014-01-25 10:56:34');
INSERT INTO `log` VALUES ('1647', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.45', '2014-01-25 11:29:03');
INSERT INTO `log` VALUES ('1648', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.91', '2014-01-25 11:40:48');
INSERT INTO `log` VALUES ('1649', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 11:46:36');
INSERT INTO `log` VALUES ('1650', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.41', '2014-01-25 11:47:44');
INSERT INTO `log` VALUES ('1651', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.93', '2014-01-25 13:03:39');
INSERT INTO `log` VALUES ('1652', 'admin', '用户管理', 'modify', '0', '123.151.136.168', '2014-01-25 14:38:31');
INSERT INTO `log` VALUES ('1653', 'admin', '用户管理', 'updateUserRates', '0', '123.151.136.168', '2014-01-25 14:38:46');
INSERT INTO `log` VALUES ('1654', 'admin', '用户管理', 'delete', '125', '123.151.136.168', '2014-01-25 14:41:29');
INSERT INTO `log` VALUES ('1655', 'admin', '用户管理', 'add', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `log` VALUES ('1656', 'admin', '角色管理', 'saveUserRole', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `log` VALUES ('1657', 'admin', '用户管理', 'saveUserRates', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `log` VALUES ('1658', 'admin', '用户管理', 'modify', '0', '123.151.136.168', '2014-01-25 14:41:59');
INSERT INTO `log` VALUES ('1659', 'admin', '用户管理', 'updateUserRates', '0', '123.151.136.168', '2014-01-25 14:59:04');
INSERT INTO `log` VALUES ('1660', 'admin', '用户管理', 'saveUserRates', '0', '123.151.136.168', '2014-01-25 14:59:28');
INSERT INTO `log` VALUES ('1661', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 15:01:24');
INSERT INTO `log` VALUES ('1662', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.116', '2014-01-25 15:15:20');
INSERT INTO `log` VALUES ('1663', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 18:12:43');
INSERT INTO `log` VALUES ('1664', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.171', '2014-01-25 19:57:02');
INSERT INTO `log` VALUES ('1665', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 20:59:59');
INSERT INTO `log` VALUES ('1666', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 21:48:20');
INSERT INTO `log` VALUES ('1667', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-25 23:48:41');
INSERT INTO `log` VALUES ('1668', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.22', '2014-01-26 00:41:56');
INSERT INTO `log` VALUES ('1669', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-01-26 02:08:44');
INSERT INTO `log` VALUES ('1670', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-26 03:03:08');
INSERT INTO `log` VALUES ('1671', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-01-26 06:06:16');
INSERT INTO `log` VALUES ('1672', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.66', '2014-01-26 06:30:37');
INSERT INTO `log` VALUES ('1673', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.229', '2014-01-26 07:15:40');
INSERT INTO `log` VALUES ('1674', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.228', '2014-01-26 07:15:40');
INSERT INTO `log` VALUES ('1675', null, 'ProductServiceImpl', 'updateLookNuns', '16', '101.226.169.230', '2014-01-26 07:15:43');
INSERT INTO `log` VALUES ('1676', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.216', '2014-01-26 07:20:03');
INSERT INTO `log` VALUES ('1677', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.217', '2014-01-26 07:20:03');
INSERT INTO `log` VALUES ('1678', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.176', '2014-01-26 07:21:44');
INSERT INTO `log` VALUES ('1679', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.174', '2014-01-26 07:21:44');
INSERT INTO `log` VALUES ('1680', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.163', '2014-01-26 07:21:44');
INSERT INTO `log` VALUES ('1681', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.161', '2014-01-26 07:21:44');
INSERT INTO `log` VALUES ('1682', null, 'ProductServiceImpl', 'updateLookNuns', '16', '182.118.20.185', '2014-01-26 07:21:47');
INSERT INTO `log` VALUES ('1683', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.170', '2014-01-26 07:21:47');
INSERT INTO `log` VALUES ('1684', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.174', '2014-01-26 07:21:50');
INSERT INTO `log` VALUES ('1685', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.184', '2014-01-26 07:21:50');
INSERT INTO `log` VALUES ('1686', null, 'ProductServiceImpl', 'updateLookNuns', '15', '101.226.169.218', '2014-01-26 07:24:48');
INSERT INTO `log` VALUES ('1687', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.220', '2014-01-26 07:24:48');
INSERT INTO `log` VALUES ('1688', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.221', '2014-01-26 07:24:48');
INSERT INTO `log` VALUES ('1689', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.221', '2014-01-26 07:24:51');
INSERT INTO `log` VALUES ('1690', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.220', '2014-01-26 07:24:51');
INSERT INTO `log` VALUES ('1691', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.218', '2014-01-26 07:27:08');
INSERT INTO `log` VALUES ('1692', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.221', '2014-01-26 07:27:08');
INSERT INTO `log` VALUES ('1693', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-26 07:53:11');
INSERT INTO `log` VALUES ('1694', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.46', '2014-01-26 08:09:24');
INSERT INTO `log` VALUES ('1695', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-26 11:04:20');
INSERT INTO `log` VALUES ('1696', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-26 11:30:38');
INSERT INTO `log` VALUES ('1697', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-26 14:01:47');
INSERT INTO `log` VALUES ('1698', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-26 19:37:23');
INSERT INTO `log` VALUES ('1699', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-26 21:45:18');
INSERT INTO `log` VALUES ('1700', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.64', '2014-01-27 01:50:44');
INSERT INTO `log` VALUES ('1701', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-27 03:11:04');
INSERT INTO `log` VALUES ('1702', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-27 03:48:51');
INSERT INTO `log` VALUES ('1703', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-27 04:51:38');
INSERT INTO `log` VALUES ('1704', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-27 08:12:17');
INSERT INTO `log` VALUES ('1705', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-27 08:35:23');
INSERT INTO `log` VALUES ('1706', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-01-27 09:08:36');
INSERT INTO `log` VALUES ('1707', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-27 12:11:35');
INSERT INTO `log` VALUES ('1708', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-27 16:51:12');
INSERT INTO `log` VALUES ('1709', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-27 17:13:20');
INSERT INTO `log` VALUES ('1710', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-27 17:51:16');
INSERT INTO `log` VALUES ('1711', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-27 20:02:22');
INSERT INTO `log` VALUES ('1712', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:26:18');
INSERT INTO `log` VALUES ('1713', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:26:29');
INSERT INTO `log` VALUES ('1714', null, 'ProductServiceImpl', 'updateLookNuns', '16', '66.249.64.36', '2014-01-27 20:26:41');
INSERT INTO `log` VALUES ('1715', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:26:53');
INSERT INTO `log` VALUES ('1716', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:27:11');
INSERT INTO `log` VALUES ('1717', null, 'ProductServiceImpl', 'updateLookNuns', '16', '66.249.64.38', '2014-01-27 20:27:22');
INSERT INTO `log` VALUES ('1718', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:27:37');
INSERT INTO `log` VALUES ('1719', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.38', '2014-01-27 20:28:06');
INSERT INTO `log` VALUES ('1720', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:28:28');
INSERT INTO `log` VALUES ('1721', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:28:39');
INSERT INTO `log` VALUES ('1722', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:28:57');
INSERT INTO `log` VALUES ('1723', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:29:14');
INSERT INTO `log` VALUES ('1724', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:29:31');
INSERT INTO `log` VALUES ('1725', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-27 20:29:48');
INSERT INTO `log` VALUES ('1726', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:30:04');
INSERT INTO `log` VALUES ('1727', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-27 20:30:22');
INSERT INTO `log` VALUES ('1728', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-28 08:25:01');
INSERT INTO `log` VALUES ('1729', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-28 08:47:54');
INSERT INTO `log` VALUES ('1730', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.208', '2014-01-28 21:22:25');
INSERT INTO `log` VALUES ('1731', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.207', '2014-01-28 21:22:29');
INSERT INTO `log` VALUES ('1732', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.209', '2014-01-28 21:22:29');
INSERT INTO `log` VALUES ('1733', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-01-29 09:11:57');
INSERT INTO `log` VALUES ('1734', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-29 17:59:30');
INSERT INTO `log` VALUES ('1735', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-29 19:43:05');
INSERT INTO `log` VALUES ('1736', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:17');
INSERT INTO `log` VALUES ('1737', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:22');
INSERT INTO `log` VALUES ('1738', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:25');
INSERT INTO `log` VALUES ('1739', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:34');
INSERT INTO `log` VALUES ('1740', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:35');
INSERT INTO `log` VALUES ('1741', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:37');
INSERT INTO `log` VALUES ('1742', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:38');
INSERT INTO `log` VALUES ('1743', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:42');
INSERT INTO `log` VALUES ('1744', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:27:58');
INSERT INTO `log` VALUES ('1745', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:28:11');
INSERT INTO `log` VALUES ('1746', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:28:14');
INSERT INTO `log` VALUES ('1747', null, 'ProductServiceImpl', 'updateLookNuns', '0', '96.225.77.163', '2014-01-29 20:28:26');
INSERT INTO `log` VALUES ('1748', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.23', '2014-01-29 21:42:21');
INSERT INTO `log` VALUES ('1749', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.24', '2014-01-29 21:42:28');
INSERT INTO `log` VALUES ('1750', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-29 23:50:48');
INSERT INTO `log` VALUES ('1751', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-30 08:06:51');
INSERT INTO `log` VALUES ('1752', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-30 08:53:42');
INSERT INTO `log` VALUES ('1753', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-30 09:13:22');
INSERT INTO `log` VALUES ('1754', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-30 12:05:57');
INSERT INTO `log` VALUES ('1755', null, 'ProductServiceImpl', 'updateLookNuns', '0', '109.3.146.130', '2014-01-30 23:54:06');
INSERT INTO `log` VALUES ('1756', null, 'ProductServiceImpl', 'updateLookNuns', '0', '109.3.146.130', '2014-01-30 23:54:08');
INSERT INTO `log` VALUES ('1757', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:46:52');
INSERT INTO `log` VALUES ('1758', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:46:55');
INSERT INTO `log` VALUES ('1759', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:46:59');
INSERT INTO `log` VALUES ('1760', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:02');
INSERT INTO `log` VALUES ('1761', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:05');
INSERT INTO `log` VALUES ('1762', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:08');
INSERT INTO `log` VALUES ('1763', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:11');
INSERT INTO `log` VALUES ('1764', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:15');
INSERT INTO `log` VALUES ('1765', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:18');
INSERT INTO `log` VALUES ('1766', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:22');
INSERT INTO `log` VALUES ('1767', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:25');
INSERT INTO `log` VALUES ('1768', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:28');
INSERT INTO `log` VALUES ('1769', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:32');
INSERT INTO `log` VALUES ('1770', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:35');
INSERT INTO `log` VALUES ('1771', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:38');
INSERT INTO `log` VALUES ('1772', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:42');
INSERT INTO `log` VALUES ('1773', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:45');
INSERT INTO `log` VALUES ('1774', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:49');
INSERT INTO `log` VALUES ('1775', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:53');
INSERT INTO `log` VALUES ('1776', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:47:56');
INSERT INTO `log` VALUES ('1777', null, 'ProductServiceImpl', 'updateLookNuns', '15', '162.210.196.129', '2014-01-31 10:47:59');
INSERT INTO `log` VALUES ('1778', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:48:02');
INSERT INTO `log` VALUES ('1779', null, 'ProductServiceImpl', 'updateLookNuns', '0', '162.210.196.129', '2014-01-31 10:48:05');
INSERT INTO `log` VALUES ('1780', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.208', '2014-01-31 16:40:27');
INSERT INTO `log` VALUES ('1781', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.207', '2014-01-31 16:40:31');
INSERT INTO `log` VALUES ('1782', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.245', '2014-01-31 16:43:18');
INSERT INTO `log` VALUES ('1783', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.245', '2014-01-31 16:43:18');
INSERT INTO `log` VALUES ('1784', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.242', '2014-01-31 16:43:18');
INSERT INTO `log` VALUES ('1785', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.244', '2014-01-31 16:43:18');
INSERT INTO `log` VALUES ('1786', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.244', '2014-01-31 16:43:18');
INSERT INTO `log` VALUES ('1787', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.241', '2014-01-31 16:43:21');
INSERT INTO `log` VALUES ('1788', null, 'ProductServiceImpl', 'updateLookNuns', '16', '182.118.25.242', '2014-01-31 16:43:21');
INSERT INTO `log` VALUES ('1789', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.241', '2014-01-31 16:46:47');
INSERT INTO `log` VALUES ('1790', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.239', '2014-01-31 16:46:47');
INSERT INTO `log` VALUES ('1791', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.241', '2014-01-31 16:46:47');
INSERT INTO `log` VALUES ('1792', null, 'ProductServiceImpl', 'updateLookNuns', '15', '101.226.166.240', '2014-01-31 16:46:50');
INSERT INTO `log` VALUES ('1793', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.203', '2014-01-31 16:51:27');
INSERT INTO `log` VALUES ('1794', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.202', '2014-01-31 16:51:27');
INSERT INTO `log` VALUES ('1795', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.205', '2014-01-31 16:51:27');
INSERT INTO `log` VALUES ('1796', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.201', '2014-01-31 16:51:27');
INSERT INTO `log` VALUES ('1797', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.205', '2014-01-31 16:51:27');
INSERT INTO `log` VALUES ('1798', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.202', '2014-01-31 16:51:31');
INSERT INTO `log` VALUES ('1799', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.201', '2014-01-31 16:51:31');
INSERT INTO `log` VALUES ('1800', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:20:12');
INSERT INTO `log` VALUES ('1801', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:21:51');
INSERT INTO `log` VALUES ('1802', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:23:02');
INSERT INTO `log` VALUES ('1803', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:25:02');
INSERT INTO `log` VALUES ('1804', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:26:52');
INSERT INTO `log` VALUES ('1805', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:27:42');
INSERT INTO `log` VALUES ('1806', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:29:18');
INSERT INTO `log` VALUES ('1807', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:30:24');
INSERT INTO `log` VALUES ('1808', null, 'ProductServiceImpl', 'updateLookNuns', '15', '192.187.115.114', '2014-02-01 02:31:42');
INSERT INTO `log` VALUES ('1809', null, 'ProductServiceImpl', 'updateLookNuns', '15', '192.187.115.114', '2014-02-01 02:32:56');
INSERT INTO `log` VALUES ('1810', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:34:00');
INSERT INTO `log` VALUES ('1811', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:35:04');
INSERT INTO `log` VALUES ('1812', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:36:16');
INSERT INTO `log` VALUES ('1813', null, 'ProductServiceImpl', 'updateLookNuns', '16', '192.187.115.114', '2014-02-01 02:43:30');
INSERT INTO `log` VALUES ('1814', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:44:52');
INSERT INTO `log` VALUES ('1815', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:46:11');
INSERT INTO `log` VALUES ('1816', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:47:10');
INSERT INTO `log` VALUES ('1817', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:48:38');
INSERT INTO `log` VALUES ('1818', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:49:55');
INSERT INTO `log` VALUES ('1819', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:51:04');
INSERT INTO `log` VALUES ('1820', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:51:36');
INSERT INTO `log` VALUES ('1821', null, 'ProductServiceImpl', 'updateLookNuns', '0', '192.187.115.114', '2014-02-01 02:51:52');
INSERT INTO `log` VALUES ('1822', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.29', '2014-02-01 04:58:03');
INSERT INTO `log` VALUES ('1823', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.97', '2014-02-01 05:27:03');
INSERT INTO `log` VALUES ('1824', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.115', '2014-02-01 05:57:03');
INSERT INTO `log` VALUES ('1825', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.100', '2014-02-01 06:27:03');
INSERT INTO `log` VALUES ('1826', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.28', '2014-02-01 06:57:03');
INSERT INTO `log` VALUES ('1827', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.139', '2014-02-01 07:57:03');
INSERT INTO `log` VALUES ('1828', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.84', '2014-02-01 08:27:03');
INSERT INTO `log` VALUES ('1829', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.179', '2014-02-01 09:27:03');
INSERT INTO `log` VALUES ('1830', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.114', '2014-02-01 09:57:03');
INSERT INTO `log` VALUES ('1831', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.101', '2014-02-01 10:57:03');
INSERT INTO `log` VALUES ('1832', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.15', '2014-02-01 11:27:03');
INSERT INTO `log` VALUES ('1833', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.146', '2014-02-01 12:27:03');
INSERT INTO `log` VALUES ('1834', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.82', '2014-02-01 12:57:03');
INSERT INTO `log` VALUES ('1835', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.55', '2014-02-01 13:27:03');
INSERT INTO `log` VALUES ('1836', null, 'ProductServiceImpl', 'updateLookNuns', '15', '123.125.71.13', '2014-02-01 13:57:03');
INSERT INTO `log` VALUES ('1837', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.101', '2014-02-01 14:27:03');
INSERT INTO `log` VALUES ('1838', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.101', '2014-02-01 15:27:03');
INSERT INTO `log` VALUES ('1839', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.32', '2014-02-01 15:57:03');
INSERT INTO `log` VALUES ('1840', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-01 17:06:19');
INSERT INTO `log` VALUES ('1841', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.102', '2014-02-01 17:27:03');
INSERT INTO `log` VALUES ('1842', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-01 17:52:20');
INSERT INTO `log` VALUES ('1843', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.79', '2014-02-01 17:57:03');
INSERT INTO `log` VALUES ('1844', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.50', '2014-02-01 18:27:03');
INSERT INTO `log` VALUES ('1845', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-01 19:45:54');
INSERT INTO `log` VALUES ('1846', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.47', '2014-02-01 20:27:03');
INSERT INTO `log` VALUES ('1847', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.139', '2014-02-01 21:21:53');
INSERT INTO `log` VALUES ('1848', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-01 22:07:48');
INSERT INTO `log` VALUES ('1849', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-02-01 22:49:31');
INSERT INTO `log` VALUES ('1850', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-01 23:03:47');
INSERT INTO `log` VALUES ('1851', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 00:56:28');
INSERT INTO `log` VALUES ('1852', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 03:12:28');
INSERT INTO `log` VALUES ('1853', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 03:19:50');
INSERT INTO `log` VALUES ('1854', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-02 03:32:31');
INSERT INTO `log` VALUES ('1855', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-02 04:01:44');
INSERT INTO `log` VALUES ('1856', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.70', '2014-02-02 04:23:57');
INSERT INTO `log` VALUES ('1857', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 06:31:35');
INSERT INTO `log` VALUES ('1858', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-02 07:10:16');
INSERT INTO `log` VALUES ('1859', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 07:31:37');
INSERT INTO `log` VALUES ('1860', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 08:57:39');
INSERT INTO `log` VALUES ('1861', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 10:00:40');
INSERT INTO `log` VALUES ('1862', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 10:03:49');
INSERT INTO `log` VALUES ('1863', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 12:17:19');
INSERT INTO `log` VALUES ('1864', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 12:27:11');
INSERT INTO `log` VALUES ('1865', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 13:13:12');
INSERT INTO `log` VALUES ('1866', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 14:29:09');
INSERT INTO `log` VALUES ('1867', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 14:36:43');
INSERT INTO `log` VALUES ('1868', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.214.8', '2014-02-02 14:40:30');
INSERT INTO `log` VALUES ('1869', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 16:48:29');
INSERT INTO `log` VALUES ('1870', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-02 17:05:23');
INSERT INTO `log` VALUES ('1871', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 17:14:57');
INSERT INTO `log` VALUES ('1872', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-02 19:49:08');
INSERT INTO `log` VALUES ('1873', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-02 23:28:39');
INSERT INTO `log` VALUES ('1874', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 02:22:11');
INSERT INTO `log` VALUES ('1875', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-03 02:59:20');
INSERT INTO `log` VALUES ('1876', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.36', '2014-02-03 03:16:14');
INSERT INTO `log` VALUES ('1877', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 05:14:51');
INSERT INTO `log` VALUES ('1878', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 05:54:36');
INSERT INTO `log` VALUES ('1879', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 06:07:11');
INSERT INTO `log` VALUES ('1880', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-03 07:47:30');
INSERT INTO `log` VALUES ('1881', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 08:52:53');
INSERT INTO `log` VALUES ('1882', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-03 11:34:57');
INSERT INTO `log` VALUES ('1883', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 11:51:13');
INSERT INTO `log` VALUES ('1884', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 11:54:23');
INSERT INTO `log` VALUES ('1885', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 12:06:22');
INSERT INTO `log` VALUES ('1886', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.176', '2014-02-03 12:29:37');
INSERT INTO `log` VALUES ('1887', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 13:56:59');
INSERT INTO `log` VALUES ('1888', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 13:59:00');
INSERT INTO `log` VALUES ('1889', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.70', '2014-02-03 14:43:23');
INSERT INTO `log` VALUES ('1890', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.104', '2014-02-03 14:44:19');
INSERT INTO `log` VALUES ('1891', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.80', '2014-02-03 15:41:58');
INSERT INTO `log` VALUES ('1892', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 15:58:31');
INSERT INTO `log` VALUES ('1893', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 15:59:47');
INSERT INTO `log` VALUES ('1894', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 18:39:04');
INSERT INTO `log` VALUES ('1895', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 18:40:20');
INSERT INTO `log` VALUES ('1896', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-03 18:42:36');
INSERT INTO `log` VALUES ('1897', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.14', '2014-02-03 20:10:05');
INSERT INTO `log` VALUES ('1898', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.40', '2014-02-03 20:24:05');
INSERT INTO `log` VALUES ('1899', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-03 20:46:38');
INSERT INTO `log` VALUES ('1900', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-03 21:16:12');
INSERT INTO `log` VALUES ('1901', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-03 21:20:01');
INSERT INTO `log` VALUES ('1902', null, 'ProductServiceImpl', 'updateLookNuns', '31', '183.60.215.4', '2014-02-03 21:24:42');
INSERT INTO `log` VALUES ('1903', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 00:24:51');
INSERT INTO `log` VALUES ('1904', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.10', '2014-02-04 00:35:52');
INSERT INTO `log` VALUES ('1905', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 01:11:54');
INSERT INTO `log` VALUES ('1906', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 01:19:52');
INSERT INTO `log` VALUES ('1907', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 01:37:33');
INSERT INTO `log` VALUES ('1908', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 02:36:36');
INSERT INTO `log` VALUES ('1909', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.41', '2014-02-04 02:50:11');
INSERT INTO `log` VALUES ('1910', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 03:25:14');
INSERT INTO `log` VALUES ('1911', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 03:41:20');
INSERT INTO `log` VALUES ('1912', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 03:57:24');
INSERT INTO `log` VALUES ('1913', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 05:14:03');
INSERT INTO `log` VALUES ('1914', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 06:07:02');
INSERT INTO `log` VALUES ('1915', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.10', '2014-02-04 06:40:58');
INSERT INTO `log` VALUES ('1916', null, 'ProductServiceImpl', 'updateLookNuns', '16', '95.108.157.252', '2014-02-04 06:46:17');
INSERT INTO `log` VALUES ('1917', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.45', '2014-02-04 07:08:56');
INSERT INTO `log` VALUES ('1918', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 07:11:19');
INSERT INTO `log` VALUES ('1919', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 07:29:55');
INSERT INTO `log` VALUES ('1920', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 07:29:59');
INSERT INTO `log` VALUES ('1921', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-04 08:07:52');
INSERT INTO `log` VALUES ('1922', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 09:43:30');
INSERT INTO `log` VALUES ('1923', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 10:13:51');
INSERT INTO `log` VALUES ('1924', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 10:27:07');
INSERT INTO `log` VALUES ('1925', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 10:39:07');
INSERT INTO `log` VALUES ('1926', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 10:49:51');
INSERT INTO `log` VALUES ('1927', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 11:07:31');
INSERT INTO `log` VALUES ('1928', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 11:17:14');
INSERT INTO `log` VALUES ('1929', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 11:20:09');
INSERT INTO `log` VALUES ('1930', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 11:24:30');
INSERT INTO `log` VALUES ('1931', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-04 11:29:27');
INSERT INTO `log` VALUES ('1932', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.10', '2014-02-04 11:42:36');
INSERT INTO `log` VALUES ('1933', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 12:11:03');
INSERT INTO `log` VALUES ('1934', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 13:08:11');
INSERT INTO `log` VALUES ('1935', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.41', '2014-02-04 15:25:38');
INSERT INTO `log` VALUES ('1936', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-04 15:37:50');
INSERT INTO `log` VALUES ('1937', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 16:07:32');
INSERT INTO `log` VALUES ('1938', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.10', '2014-02-04 16:36:53');
INSERT INTO `log` VALUES ('1939', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 17:02:18');
INSERT INTO `log` VALUES ('1940', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.15', '2014-02-04 17:52:12');
INSERT INTO `log` VALUES ('1941', null, 'ProductServiceImpl', 'updateLookNuns', '32', '183.60.212.158', '2014-02-04 20:07:10');
INSERT INTO `log` VALUES ('1942', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-04 20:08:07');
INSERT INTO `log` VALUES ('1943', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 20:11:20');
INSERT INTO `log` VALUES ('1944', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 20:16:24');
INSERT INTO `log` VALUES ('1945', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 20:27:21');
INSERT INTO `log` VALUES ('1946', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 21:51:29');
INSERT INTO `log` VALUES ('1947', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-04 21:54:59');
INSERT INTO `log` VALUES ('1948', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-04 23:14:56');
INSERT INTO `log` VALUES ('1949', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.100', '2014-02-05 00:36:52');
INSERT INTO `log` VALUES ('1950', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 00:50:55');
INSERT INTO `log` VALUES ('1951', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 01:12:07');
INSERT INTO `log` VALUES ('1952', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-05 01:27:55');
INSERT INTO `log` VALUES ('1953', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.45', '2014-02-05 02:24:02');
INSERT INTO `log` VALUES ('1954', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 02:41:22');
INSERT INTO `log` VALUES ('1955', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 04:04:48');
INSERT INTO `log` VALUES ('1956', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-05 04:39:28');
INSERT INTO `log` VALUES ('1957', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-05 05:16:05');
INSERT INTO `log` VALUES ('1958', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 06:36:46');
INSERT INTO `log` VALUES ('1959', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 07:05:19');
INSERT INTO `log` VALUES ('1960', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 07:46:15');
INSERT INTO `log` VALUES ('1961', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 08:15:28');
INSERT INTO `log` VALUES ('1962', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 08:46:45');
INSERT INTO `log` VALUES ('1963', null, 'ProductServiceImpl', 'updateLookNuns', '16', '95.108.157.252', '2014-02-05 09:06:38');
INSERT INTO `log` VALUES ('1964', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:06:43');
INSERT INTO `log` VALUES ('1965', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:06:49');
INSERT INTO `log` VALUES ('1966', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:07:33');
INSERT INTO `log` VALUES ('1967', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:09:02');
INSERT INTO `log` VALUES ('1968', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:09:07');
INSERT INTO `log` VALUES ('1969', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:09:11');
INSERT INTO `log` VALUES ('1970', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:09:15');
INSERT INTO `log` VALUES ('1971', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:13:37');
INSERT INTO `log` VALUES ('1972', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:13:58');
INSERT INTO `log` VALUES ('1973', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:22');
INSERT INTO `log` VALUES ('1974', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:40');
INSERT INTO `log` VALUES ('1975', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:44');
INSERT INTO `log` VALUES ('1976', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-05 09:14:48');
INSERT INTO `log` VALUES ('1977', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:51');
INSERT INTO `log` VALUES ('1978', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:54');
INSERT INTO `log` VALUES ('1979', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:14:58');
INSERT INTO `log` VALUES ('1980', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-05 09:15:01');
INSERT INTO `log` VALUES ('1981', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 09:22:54');
INSERT INTO `log` VALUES ('1982', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 11:00:57');
INSERT INTO `log` VALUES ('1983', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 11:10:03');
INSERT INTO `log` VALUES ('1984', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 12:06:31');
INSERT INTO `log` VALUES ('1985', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-02-05 13:30:13');
INSERT INTO `log` VALUES ('1986', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.95', '2014-02-05 14:53:35');
INSERT INTO `log` VALUES ('1987', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 17:10:42');
INSERT INTO `log` VALUES ('1988', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.74.85', '2014-02-05 18:24:54');
INSERT INTO `log` VALUES ('1989', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-05 21:26:38');
INSERT INTO `log` VALUES ('1990', null, 'ProductServiceImpl', 'updateLookNuns', '62', '183.60.212.158', '2014-02-05 21:35:41');
INSERT INTO `log` VALUES ('1991', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 21:57:08');
INSERT INTO `log` VALUES ('1992', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-05 22:11:51');
INSERT INTO `log` VALUES ('1993', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.10', '2014-02-05 22:37:27');
INSERT INTO `log` VALUES ('1994', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 23:00:32');
INSERT INTO `log` VALUES ('1995', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 23:01:30');
INSERT INTO `log` VALUES ('1996', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-05 23:10:03');
INSERT INTO `log` VALUES ('1997', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-05 23:26:07');
INSERT INTO `log` VALUES ('1998', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-05 23:42:57');
INSERT INTO `log` VALUES ('1999', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-02-06 00:07:57');
INSERT INTO `log` VALUES ('2000', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-06 00:17:23');
INSERT INTO `log` VALUES ('2001', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.14', '2014-02-06 02:11:29');
INSERT INTO `log` VALUES ('2002', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-06 02:40:27');
INSERT INTO `log` VALUES ('2003', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-06 02:59:40');
INSERT INTO `log` VALUES ('2004', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-06 03:09:48');
INSERT INTO `log` VALUES ('2005', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-06 03:15:04');
INSERT INTO `log` VALUES ('2006', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 03:41:14');
INSERT INTO `log` VALUES ('2007', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 03:50:46');
INSERT INTO `log` VALUES ('2008', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 04:00:15');
INSERT INTO `log` VALUES ('2009', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 04:28:53');
INSERT INTO `log` VALUES ('2010', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 04:38:20');
INSERT INTO `log` VALUES ('2011', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 04:47:58');
INSERT INTO `log` VALUES ('2012', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 05:14:01');
INSERT INTO `log` VALUES ('2013', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 05:23:21');
INSERT INTO `log` VALUES ('2014', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 05:23:50');
INSERT INTO `log` VALUES ('2015', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 05:32:45');
INSERT INTO `log` VALUES ('2016', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-02-06 05:35:51');
INSERT INTO `log` VALUES ('2017', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 05:42:49');
INSERT INTO `log` VALUES ('2018', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 06:06:11');
INSERT INTO `log` VALUES ('2019', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 07:24:04');
INSERT INTO `log` VALUES ('2020', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 07:29:31');
INSERT INTO `log` VALUES ('2021', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-06 07:29:45');
INSERT INTO `log` VALUES ('2022', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 07:29:53');
INSERT INTO `log` VALUES ('2023', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 08:17:04');
INSERT INTO `log` VALUES ('2024', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 08:43:41');
INSERT INTO `log` VALUES ('2025', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-06 08:57:00');
INSERT INTO `log` VALUES ('2026', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-06 08:59:00');
INSERT INTO `log` VALUES ('2027', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 11:35:09');
INSERT INTO `log` VALUES ('2028', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 12:45:12');
INSERT INTO `log` VALUES ('2029', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 13:24:30');
INSERT INTO `log` VALUES ('2030', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 13:46:22');
INSERT INTO `log` VALUES ('2031', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-06 14:56:55');
INSERT INTO `log` VALUES ('2032', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.162', '2014-02-06 18:29:19');
INSERT INTO `log` VALUES ('2033', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 20:21:03');
INSERT INTO `log` VALUES ('2034', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-06 20:41:44');
INSERT INTO `log` VALUES ('2035', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-06 21:26:19');
INSERT INTO `log` VALUES ('2036', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 01:42:52');
INSERT INTO `log` VALUES ('2037', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-07 03:43:51');
INSERT INTO `log` VALUES ('2038', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 04:08:53');
INSERT INTO `log` VALUES ('2039', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 05:15:51');
INSERT INTO `log` VALUES ('2040', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 06:41:59');
INSERT INTO `log` VALUES ('2041', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 07:35:09');
INSERT INTO `log` VALUES ('2042', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 09:05:16');
INSERT INTO `log` VALUES ('2043', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 09:18:19');
INSERT INTO `log` VALUES ('2044', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 09:26:22');
INSERT INTO `log` VALUES ('2045', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 09:27:37');
INSERT INTO `log` VALUES ('2046', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 12:17:14');
INSERT INTO `log` VALUES ('2047', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 14:21:15');
INSERT INTO `log` VALUES ('2048', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-07 14:29:39');
INSERT INTO `log` VALUES ('2049', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-07 16:04:28');
INSERT INTO `log` VALUES ('2050', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 17:15:53');
INSERT INTO `log` VALUES ('2051', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 19:09:56');
INSERT INTO `log` VALUES ('2052', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.108', '2014-02-07 19:19:49');
INSERT INTO `log` VALUES ('2053', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 19:49:59');
INSERT INTO `log` VALUES ('2054', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-07 21:04:31');
INSERT INTO `log` VALUES ('2055', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.53', '2014-02-07 22:53:29');
INSERT INTO `log` VALUES ('2056', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-07 23:38:31');
INSERT INTO `log` VALUES ('2057', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 00:22:21');
INSERT INTO `log` VALUES ('2058', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 00:44:54');
INSERT INTO `log` VALUES ('2059', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 03:06:51');
INSERT INTO `log` VALUES ('2060', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-08 03:17:49');
INSERT INTO `log` VALUES ('2061', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-08 04:44:01');
INSERT INTO `log` VALUES ('2062', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-08 06:59:41');
INSERT INTO `log` VALUES ('2063', null, 'ProductServiceImpl', 'updateLookNuns', '31', '95.108.157.252', '2014-02-08 07:36:02');
INSERT INTO `log` VALUES ('2064', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 07:52:07');
INSERT INTO `log` VALUES ('2065', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 07:54:46');
INSERT INTO `log` VALUES ('2066', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 08:06:02');
INSERT INTO `log` VALUES ('2067', null, 'ProductServiceImpl', 'updateLookNuns', '63', '183.60.212.158', '2014-02-08 08:25:21');
INSERT INTO `log` VALUES ('2068', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 08:35:59');
INSERT INTO `log` VALUES ('2069', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 08:39:08');
INSERT INTO `log` VALUES ('2070', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 09:04:34');
INSERT INTO `log` VALUES ('2071', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 09:06:59');
INSERT INTO `log` VALUES ('2072', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-08 09:16:28');
INSERT INTO `log` VALUES ('2073', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 09:29:02');
INSERT INTO `log` VALUES ('2074', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 09:29:36');
INSERT INTO `log` VALUES ('2075', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 09:34:55');
INSERT INTO `log` VALUES ('2076', null, 'ProductServiceImpl', 'updateLookNuns', '16', '95.108.157.252', '2014-02-08 09:48:06');
INSERT INTO `log` VALUES ('2077', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 09:48:21');
INSERT INTO `log` VALUES ('2078', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 09:48:25');
INSERT INTO `log` VALUES ('2079', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.115', '2014-02-08 09:50:15');
INSERT INTO `log` VALUES ('2080', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 09:52:42');
INSERT INTO `log` VALUES ('2081', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 10:06:38');
INSERT INTO `log` VALUES ('2082', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 10:28:02');
INSERT INTO `log` VALUES ('2083', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 10:46:04');
INSERT INTO `log` VALUES ('2084', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 10:51:12');
INSERT INTO `log` VALUES ('2085', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 11:24:40');
INSERT INTO `log` VALUES ('2086', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 11:32:31');
INSERT INTO `log` VALUES ('2087', null, 'ProductServiceImpl', 'updateLookNuns', '266', '95.108.157.252', '2014-02-08 11:54:10');
INSERT INTO `log` VALUES ('2088', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 12:25:56');
INSERT INTO `log` VALUES ('2089', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 12:45:51');
INSERT INTO `log` VALUES ('2090', 'admin', '用户管理', 'add', '0', '115.238.253.235', '2014-02-08 13:28:13');
INSERT INTO `log` VALUES ('2091', 'admin', '角色管理', 'saveUserRole', '0', '115.238.253.235', '2014-02-08 13:28:13');
INSERT INTO `log` VALUES ('2092', 'admin', '用户管理', 'saveUserRates', '0', '115.238.253.235', '2014-02-08 13:28:13');
INSERT INTO `log` VALUES ('2093', 'admin', '用户管理', 'modify', '0', '115.238.253.235', '2014-02-08 13:28:30');
INSERT INTO `log` VALUES ('2094', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.235', '2014-02-08 13:29:20');
INSERT INTO `log` VALUES ('2095', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 14:14:46');
INSERT INTO `log` VALUES ('2096', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.212.158', '2014-02-08 14:41:53');
INSERT INTO `log` VALUES ('2097', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-08 15:25:20');
INSERT INTO `log` VALUES ('2098', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-02-08 15:25:27');
INSERT INTO `log` VALUES ('2099', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 16:03:24');
INSERT INTO `log` VALUES ('2100', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 16:05:51');
INSERT INTO `log` VALUES ('2101', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 16:49:46');
INSERT INTO `log` VALUES ('2102', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 17:36:15');
INSERT INTO `log` VALUES ('2103', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 17:36:20');
INSERT INTO `log` VALUES ('2104', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 17:36:43');
INSERT INTO `log` VALUES ('2105', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-08 17:36:55');
INSERT INTO `log` VALUES ('2106', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 19:37:07');
INSERT INTO `log` VALUES ('2107', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 19:52:27');
INSERT INTO `log` VALUES ('2108', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 20:16:12');
INSERT INTO `log` VALUES ('2109', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 22:18:11');
INSERT INTO `log` VALUES ('2110', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-08 22:26:48');
INSERT INTO `log` VALUES ('2111', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-08 22:27:14');
INSERT INTO `log` VALUES ('2112', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-08 22:33:09');
INSERT INTO `log` VALUES ('2113', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-08 23:23:13');
INSERT INTO `log` VALUES ('2114', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 01:43:54');
INSERT INTO `log` VALUES ('2115', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-09 02:19:49');
INSERT INTO `log` VALUES ('2116', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 03:06:48');
INSERT INTO `log` VALUES ('2117', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 03:13:24');
INSERT INTO `log` VALUES ('2118', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 03:41:22');
INSERT INTO `log` VALUES ('2119', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 04:15:43');
INSERT INTO `log` VALUES ('2120', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 05:08:25');
INSERT INTO `log` VALUES ('2121', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 05:16:43');
INSERT INTO `log` VALUES ('2122', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 05:29:47');
INSERT INTO `log` VALUES ('2123', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 06:24:36');
INSERT INTO `log` VALUES ('2124', null, 'ProductServiceImpl', 'updateLookNuns', '16', '95.108.157.252', '2014-02-09 06:28:03');
INSERT INTO `log` VALUES ('2125', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 06:30:28');
INSERT INTO `log` VALUES ('2126', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 07:02:40');
INSERT INTO `log` VALUES ('2127', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 09:12:23');
INSERT INTO `log` VALUES ('2128', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.214.8', '2014-02-09 10:02:49');
INSERT INTO `log` VALUES ('2129', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 10:57:20');
INSERT INTO `log` VALUES ('2130', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 11:07:21');
INSERT INTO `log` VALUES ('2131', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 11:09:46');
INSERT INTO `log` VALUES ('2132', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 13:27:26');
INSERT INTO `log` VALUES ('2133', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 14:07:22');
INSERT INTO `log` VALUES ('2134', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 14:49:23');
INSERT INTO `log` VALUES ('2135', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 16:21:24');
INSERT INTO `log` VALUES ('2136', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 16:21:49');
INSERT INTO `log` VALUES ('2137', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 16:40:47');
INSERT INTO `log` VALUES ('2138', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 16:57:02');
INSERT INTO `log` VALUES ('2139', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-09 17:05:22');
INSERT INTO `log` VALUES ('2140', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 18:15:45');
INSERT INTO `log` VALUES ('2141', null, 'ProductServiceImpl', 'updateLookNuns', '16', '182.118.22.209', '2014-02-09 18:44:08');
INSERT INTO `log` VALUES ('2142', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.22.210', '2014-02-09 18:44:08');
INSERT INTO `log` VALUES ('2143', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.22.207', '2014-02-09 18:44:12');
INSERT INTO `log` VALUES ('2144', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-09 18:49:05');
INSERT INTO `log` VALUES ('2145', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 19:26:49');
INSERT INTO `log` VALUES ('2146', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 20:19:31');
INSERT INTO `log` VALUES ('2147', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 20:44:28');
INSERT INTO `log` VALUES ('2148', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 20:51:30');
INSERT INTO `log` VALUES ('2149', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 21:05:27');
INSERT INTO `log` VALUES ('2150', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 21:43:54');
INSERT INTO `log` VALUES ('2151', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 22:04:48');
INSERT INTO `log` VALUES ('2152', null, 'ProductServiceImpl', 'updateLookNuns', '16', '95.108.157.252', '2014-02-09 22:20:42');
INSERT INTO `log` VALUES ('2153', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-09 22:28:03');
INSERT INTO `log` VALUES ('2154', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 23:30:18');
INSERT INTO `log` VALUES ('2155', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-09 23:44:59');
INSERT INTO `log` VALUES ('2156', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 00:43:05');
INSERT INTO `log` VALUES ('2157', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 00:57:20');
INSERT INTO `log` VALUES ('2158', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 00:58:06');
INSERT INTO `log` VALUES ('2159', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 01:05:20');
INSERT INTO `log` VALUES ('2160', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 01:52:18');
INSERT INTO `log` VALUES ('2161', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 01:59:34');
INSERT INTO `log` VALUES ('2162', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 01:59:51');
INSERT INTO `log` VALUES ('2163', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 02:03:17');
INSERT INTO `log` VALUES ('2164', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 02:26:10');
INSERT INTO `log` VALUES ('2165', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 02:33:48');
INSERT INTO `log` VALUES ('2166', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 03:11:00');
INSERT INTO `log` VALUES ('2167', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 03:16:03');
INSERT INTO `log` VALUES ('2168', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 03:23:39');
INSERT INTO `log` VALUES ('2169', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 04:52:03');
INSERT INTO `log` VALUES ('2170', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 04:58:49');
INSERT INTO `log` VALUES ('2171', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 05:32:11');
INSERT INTO `log` VALUES ('2172', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 05:57:35');
INSERT INTO `log` VALUES ('2173', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 06:05:18');
INSERT INTO `log` VALUES ('2174', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 06:14:08');
INSERT INTO `log` VALUES ('2175', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 06:19:15');
INSERT INTO `log` VALUES ('2176', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-10 06:42:52');
INSERT INTO `log` VALUES ('2177', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 07:31:03');
INSERT INTO `log` VALUES ('2178', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 09:07:28');
INSERT INTO `log` VALUES ('2179', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 11:31:39');
INSERT INTO `log` VALUES ('2180', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 11:36:46');
INSERT INTO `log` VALUES ('2181', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 11:38:08');
INSERT INTO `log` VALUES ('2182', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 11:39:16');
INSERT INTO `log` VALUES ('2183', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 12:33:29');
INSERT INTO `log` VALUES ('2184', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-02-10 13:02:25');
INSERT INTO `log` VALUES ('2185', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 14:54:21');
INSERT INTO `log` VALUES ('2186', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 16:03:54');
INSERT INTO `log` VALUES ('2187', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 16:34:48');
INSERT INTO `log` VALUES ('2188', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 18:05:38');
INSERT INTO `log` VALUES ('2189', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 18:30:14');
INSERT INTO `log` VALUES ('2190', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 18:52:55');
INSERT INTO `log` VALUES ('2191', '18626246726', 'PayServiceImpl', 'add', '16', '58.52.134.14', '2014-02-10 19:08:24');
INSERT INTO `log` VALUES ('2192', '18626246726', '用户管理', 'modify', '16', '58.52.134.14', '2014-02-10 19:08:24');
INSERT INTO `log` VALUES ('2193', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 21:13:37');
INSERT INTO `log` VALUES ('2194', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 21:56:14');
INSERT INTO `log` VALUES ('2195', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 23:21:30');
INSERT INTO `log` VALUES ('2196', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-10 23:22:20');
INSERT INTO `log` VALUES ('2197', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-10 23:35:24');
INSERT INTO `log` VALUES ('2198', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-10 23:58:24');
INSERT INTO `log` VALUES ('2199', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-11 00:19:08');
INSERT INTO `log` VALUES ('2200', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 01:27:11');
INSERT INTO `log` VALUES ('2201', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 01:53:18');
INSERT INTO `log` VALUES ('2202', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 02:13:29');
INSERT INTO `log` VALUES ('2203', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 02:15:42');
INSERT INTO `log` VALUES ('2204', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.36', '2014-02-11 02:35:52');
INSERT INTO `log` VALUES ('2205', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-02-11 03:06:49');
INSERT INTO `log` VALUES ('2206', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.24', '2014-02-11 04:01:39');
INSERT INTO `log` VALUES ('2207', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.212.158', '2014-02-11 04:38:39');
INSERT INTO `log` VALUES ('2208', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 04:54:58');
INSERT INTO `log` VALUES ('2209', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 06:41:10');
INSERT INTO `log` VALUES ('2210', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 07:03:47');
INSERT INTO `log` VALUES ('2211', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-11 08:44:11');
INSERT INTO `log` VALUES ('2212', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-11 08:59:06');
INSERT INTO `log` VALUES ('2213', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 09:13:44');
INSERT INTO `log` VALUES ('2214', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.99', '2014-02-11 09:33:45');
INSERT INTO `log` VALUES ('2215', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-11 11:58:03');
INSERT INTO `log` VALUES ('2216', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 15:03:48');
INSERT INTO `log` VALUES ('2217', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.214.8', '2014-02-11 15:20:14');
INSERT INTO `log` VALUES ('2218', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 16:36:39');
INSERT INTO `log` VALUES ('2219', null, 'ProductServiceImpl', 'updateLookNuns', '31', '183.60.212.158', '2014-02-11 16:55:46');
INSERT INTO `log` VALUES ('2220', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.3', '2014-02-11 17:02:13');
INSERT INTO `log` VALUES ('2221', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 17:53:36');
INSERT INTO `log` VALUES ('2222', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 19:37:07');
INSERT INTO `log` VALUES ('2223', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 19:55:31');
INSERT INTO `log` VALUES ('2224', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.214.8', '2014-02-11 20:07:03');
INSERT INTO `log` VALUES ('2225', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-11 21:05:31');
INSERT INTO `log` VALUES ('2226', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-11 23:43:17');
INSERT INTO `log` VALUES ('2227', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.238', '2014-02-12 00:27:46');
INSERT INTO `log` VALUES ('2228', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.233', '2014-02-12 00:27:46');
INSERT INTO `log` VALUES ('2229', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-12 00:28:10');
INSERT INTO `log` VALUES ('2230', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 00:29:21');
INSERT INTO `log` VALUES ('2231', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.235', '2014-02-12 00:30:39');
INSERT INTO `log` VALUES ('2232', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.202', '2014-02-12 00:34:12');
INSERT INTO `log` VALUES ('2233', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.202', '2014-02-12 00:34:12');
INSERT INTO `log` VALUES ('2234', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.202', '2014-02-12 00:34:17');
INSERT INTO `log` VALUES ('2235', null, 'ProductServiceImpl', 'updateLookNuns', '16', '182.118.20.223', '2014-02-12 00:34:17');
INSERT INTO `log` VALUES ('2236', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.220', '2014-02-12 00:34:22');
INSERT INTO `log` VALUES ('2237', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.221', '2014-02-12 00:34:22');
INSERT INTO `log` VALUES ('2238', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.221', '2014-02-12 00:34:29');
INSERT INTO `log` VALUES ('2239', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.223', '2014-02-12 00:34:29');
INSERT INTO `log` VALUES ('2240', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.202', '2014-02-12 00:34:39');
INSERT INTO `log` VALUES ('2241', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.22.206', '2014-02-12 00:34:39');
INSERT INTO `log` VALUES ('2242', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.22.209', '2014-02-12 00:34:39');
INSERT INTO `log` VALUES ('2243', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.199', '2014-02-12 00:37:06');
INSERT INTO `log` VALUES ('2244', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.201', '2014-02-12 00:37:06');
INSERT INTO `log` VALUES ('2245', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.200', '2014-02-12 00:37:06');
INSERT INTO `log` VALUES ('2246', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.198', '2014-02-12 00:37:10');
INSERT INTO `log` VALUES ('2247', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.200', '2014-02-12 00:37:10');
INSERT INTO `log` VALUES ('2248', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.197', '2014-02-12 00:37:10');
INSERT INTO `log` VALUES ('2249', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.200', '2014-02-12 00:37:12');
INSERT INTO `log` VALUES ('2250', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.197', '2014-02-12 00:37:12');
INSERT INTO `log` VALUES ('2251', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.198', '2014-02-12 00:37:15');
INSERT INTO `log` VALUES ('2252', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 02:33:03');
INSERT INTO `log` VALUES ('2253', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.44', '2014-02-12 02:56:10');
INSERT INTO `log` VALUES ('2254', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.36', '2014-02-12 04:23:56');
INSERT INTO `log` VALUES ('2255', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 05:11:43');
INSERT INTO `log` VALUES ('2256', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 05:37:40');
INSERT INTO `log` VALUES ('2257', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-12 05:51:15');
INSERT INTO `log` VALUES ('2258', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 05:58:03');
INSERT INTO `log` VALUES ('2259', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-02-12 05:58:47');
INSERT INTO `log` VALUES ('2260', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 07:04:33');
INSERT INTO `log` VALUES ('2261', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.99', '2014-02-12 07:58:48');
INSERT INTO `log` VALUES ('2262', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-12 08:17:12');
INSERT INTO `log` VALUES ('2263', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 08:24:23');
INSERT INTO `log` VALUES ('2264', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-12 09:30:54');
INSERT INTO `log` VALUES ('2265', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-12 10:07:38');
INSERT INTO `log` VALUES ('2266', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.59', '2014-02-12 10:43:21');
INSERT INTO `log` VALUES ('2267', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 11:14:30');
INSERT INTO `log` VALUES ('2268', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-12 11:17:06');
INSERT INTO `log` VALUES ('2269', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-12 11:23:41');
INSERT INTO `log` VALUES ('2270', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 11:54:06');
INSERT INTO `log` VALUES ('2271', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.49', '2014-02-12 11:59:18');
INSERT INTO `log` VALUES ('2272', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.214.8', '2014-02-12 13:47:25');
INSERT INTO `log` VALUES ('2273', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-12 15:07:51');
INSERT INTO `log` VALUES ('2274', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 16:02:32');
INSERT INTO `log` VALUES ('2275', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-12 16:41:37');
INSERT INTO `log` VALUES ('2276', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 17:57:47');
INSERT INTO `log` VALUES ('2277', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 18:44:20');
INSERT INTO `log` VALUES ('2278', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-12 19:11:05');
INSERT INTO `log` VALUES ('2279', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 19:17:05');
INSERT INTO `log` VALUES ('2280', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 19:17:54');
INSERT INTO `log` VALUES ('2281', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 19:29:04');
INSERT INTO `log` VALUES ('2282', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-12 19:47:56');
INSERT INTO `log` VALUES ('2283', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-12 22:21:58');
INSERT INTO `log` VALUES ('2284', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-12 22:25:17');
INSERT INTO `log` VALUES ('2285', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 00:35:26');
INSERT INTO `log` VALUES ('2286', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-02-13 01:48:14');
INSERT INTO `log` VALUES ('2287', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 01:49:10');
INSERT INTO `log` VALUES ('2288', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 02:06:23');
INSERT INTO `log` VALUES ('2289', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 02:13:03');
INSERT INTO `log` VALUES ('2290', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 02:29:42');
INSERT INTO `log` VALUES ('2291', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 02:37:10');
INSERT INTO `log` VALUES ('2292', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 02:38:02');
INSERT INTO `log` VALUES ('2293', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 02:46:33');
INSERT INTO `log` VALUES ('2294', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.36', '2014-02-13 03:09:31');
INSERT INTO `log` VALUES ('2295', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 03:12:08');
INSERT INTO `log` VALUES ('2296', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-13 03:46:53');
INSERT INTO `log` VALUES ('2297', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.49', '2014-02-13 03:52:36');
INSERT INTO `log` VALUES ('2298', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.53', '2014-02-13 04:55:43');
INSERT INTO `log` VALUES ('2299', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:24:23');
INSERT INTO `log` VALUES ('2300', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:47:42');
INSERT INTO `log` VALUES ('2301', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:48:07');
INSERT INTO `log` VALUES ('2302', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:48:19');
INSERT INTO `log` VALUES ('2303', null, 'ProductServiceImpl', 'updateLookNuns', '15', '95.108.157.252', '2014-02-13 05:48:28');
INSERT INTO `log` VALUES ('2304', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:48:35');
INSERT INTO `log` VALUES ('2305', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:49:11');
INSERT INTO `log` VALUES ('2306', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:49:36');
INSERT INTO `log` VALUES ('2307', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:50:06');
INSERT INTO `log` VALUES ('2308', null, 'ProductServiceImpl', 'updateLookNuns', '0', '95.108.157.252', '2014-02-13 05:50:41');
INSERT INTO `log` VALUES ('2309', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.15', '2014-02-13 05:57:54');
INSERT INTO `log` VALUES ('2310', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.15', '2014-02-13 06:15:12');
INSERT INTO `log` VALUES ('2311', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.24', '2014-02-13 07:14:24');
INSERT INTO `log` VALUES ('2312', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.58', '2014-02-13 07:39:55');
INSERT INTO `log` VALUES ('2313', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 07:50:35');
INSERT INTO `log` VALUES ('2314', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 07:50:46');
INSERT INTO `log` VALUES ('2315', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 07:59:25');
INSERT INTO `log` VALUES ('2316', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-13 07:59:57');
INSERT INTO `log` VALUES ('2317', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 08:32:50');
INSERT INTO `log` VALUES ('2318', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.3', '2014-02-13 08:36:13');
INSERT INTO `log` VALUES ('2319', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:19:21');
INSERT INTO `log` VALUES ('2320', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:19:49');
INSERT INTO `log` VALUES ('2321', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:20:17');
INSERT INTO `log` VALUES ('2322', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:20:26');
INSERT INTO `log` VALUES ('2323', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:20:40');
INSERT INTO `log` VALUES ('2324', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:20:51');
INSERT INTO `log` VALUES ('2325', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:21:02');
INSERT INTO `log` VALUES ('2326', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:21:14');
INSERT INTO `log` VALUES ('2327', 'admin', '用户管理', 'updateUserRates', '16', '115.238.253.224', '2014-02-13 10:21:27');
INSERT INTO `log` VALUES ('2328', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.224', '2014-02-13 10:21:53');
INSERT INTO `log` VALUES ('2329', 'admin', '用户管理', 'updateUserRates', '16', '115.238.253.224', '2014-02-13 10:22:07');
INSERT INTO `log` VALUES ('2330', 'admin', '用户管理', 'modify', '0', '115.238.253.224', '2014-02-13 10:22:50');
INSERT INTO `log` VALUES ('2331', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.58', '2014-02-13 11:02:43');
INSERT INTO `log` VALUES ('2332', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.53', '2014-02-13 11:19:11');
INSERT INTO `log` VALUES ('2333', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.56', '2014-02-13 11:30:27');
INSERT INTO `log` VALUES ('2334', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 12:16:23');
INSERT INTO `log` VALUES ('2335', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 12:22:56');
INSERT INTO `log` VALUES ('2336', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 12:58:32');
INSERT INTO `log` VALUES ('2337', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 13:33:58');
INSERT INTO `log` VALUES ('2338', '18626246726', '用户管理', 'add', '0', '58.52.134.11', '2014-02-13 13:44:17');
INSERT INTO `log` VALUES ('2339', '18626246726', '角色管理', 'saveUserRole', '0', '58.52.134.11', '2014-02-13 13:44:17');
INSERT INTO `log` VALUES ('2340', '18626246726', '用户管理', 'saveUserRates', '0', '58.52.134.11', '2014-02-13 13:44:17');
INSERT INTO `log` VALUES ('2341', '18626246726', '用户管理', 'modify', '0', '58.52.134.11', '2014-02-13 13:44:46');
INSERT INTO `log` VALUES ('2342', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.33', '2014-02-13 14:03:04');
INSERT INTO `log` VALUES ('2343', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 15:23:18');
INSERT INTO `log` VALUES ('2344', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.24', '2014-02-13 16:37:02');
INSERT INTO `log` VALUES ('2345', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-13 19:09:16');
INSERT INTO `log` VALUES ('2346', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-13 19:13:15');
INSERT INTO `log` VALUES ('2347', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 21:12:50');
INSERT INTO `log` VALUES ('2348', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 21:24:50');
INSERT INTO `log` VALUES ('2349', '13405677391', 'PayServiceImpl', 'add', '78', '121.239.37.161', '2014-02-13 21:28:32');
INSERT INTO `log` VALUES ('2350', '13405677391', '用户管理', 'modify', '16', '121.239.37.161', '2014-02-13 21:28:32');
INSERT INTO `log` VALUES ('2351', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-13 23:11:26');
INSERT INTO `log` VALUES ('2352', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 02:22:24');
INSERT INTO `log` VALUES ('2353', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 03:58:38');
INSERT INTO `log` VALUES ('2354', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 07:03:13');
INSERT INTO `log` VALUES ('2355', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.227', '2014-02-14 07:15:41');
INSERT INTO `log` VALUES ('2356', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.232', '2014-02-14 07:15:41');
INSERT INTO `log` VALUES ('2357', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.234', '2014-02-14 07:15:41');
INSERT INTO `log` VALUES ('2358', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.250', '2014-02-14 07:16:04');
INSERT INTO `log` VALUES ('2359', null, 'ProductServiceImpl', 'updateLookNuns', '15', '101.226.167.251', '2014-02-14 07:16:07');
INSERT INTO `log` VALUES ('2360', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.228', '2014-02-14 07:17:12');
INSERT INTO `log` VALUES ('2361', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.231', '2014-02-14 07:17:12');
INSERT INTO `log` VALUES ('2362', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.227', '2014-02-14 07:17:12');
INSERT INTO `log` VALUES ('2363', null, 'ProductServiceImpl', 'updateLookNuns', '15', '101.226.168.234', '2014-02-14 07:17:15');
INSERT INTO `log` VALUES ('2364', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.229', '2014-02-14 07:17:15');
INSERT INTO `log` VALUES ('2365', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.168.231', '2014-02-14 07:17:18');
INSERT INTO `log` VALUES ('2366', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.243', '2014-02-14 07:20:42');
INSERT INTO `log` VALUES ('2367', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.242', '2014-02-14 07:20:46');
INSERT INTO `log` VALUES ('2368', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.241', '2014-02-14 07:20:46');
INSERT INTO `log` VALUES ('2369', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.245', '2014-02-14 07:20:50');
INSERT INTO `log` VALUES ('2370', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.25.242', '2014-02-14 07:20:50');
INSERT INTO `log` VALUES ('2371', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.238', '2014-02-14 07:23:21');
INSERT INTO `log` VALUES ('2372', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.185', '2014-02-14 07:33:52');
INSERT INTO `log` VALUES ('2373', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.187', '2014-02-14 07:33:52');
INSERT INTO `log` VALUES ('2374', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.186', '2014-02-14 07:33:52');
INSERT INTO `log` VALUES ('2375', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-02-14 08:25:10');
INSERT INTO `log` VALUES ('2376', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 10:14:10');
INSERT INTO `log` VALUES ('2377', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 12:51:33');
INSERT INTO `log` VALUES ('2378', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 13:59:35');
INSERT INTO `log` VALUES ('2379', null, '用户管理', 'add', '0', '223.203.208.50', '2014-02-14 14:55:50');
INSERT INTO `log` VALUES ('2380', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 15:39:01');
INSERT INTO `log` VALUES ('2381', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.234', '2014-02-14 15:48:43');
INSERT INTO `log` VALUES ('2382', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.234', '2014-02-14 15:48:52');
INSERT INTO `log` VALUES ('2383', 'admin', '用户管理', 'modify', '0', '115.238.253.234', '2014-02-14 15:53:15');
INSERT INTO `log` VALUES ('2384', 'admin', '用户管理', 'modify', '0', '115.238.253.234', '2014-02-14 15:53:57');
INSERT INTO `log` VALUES ('2385', 'admin', '用户管理', 'modify', '0', '115.238.253.234', '2014-02-14 15:54:05');
INSERT INTO `log` VALUES ('2386', 'admin', '用户管理', 'delete', '0', '115.238.253.234', '2014-02-14 15:54:43');
INSERT INTO `log` VALUES ('2387', 'admin', '用户管理', 'updateUserRates', '0', '115.238.253.234', '2014-02-14 15:57:04');
INSERT INTO `log` VALUES ('2388', '18626246726', '用户管理', 'modify', '0', '58.52.134.11', '2014-02-14 16:07:12');
INSERT INTO `log` VALUES ('2389', '15162636211', '用户管理', 'modify', '16', '58.52.134.11', '2014-02-14 16:07:40');
INSERT INTO `log` VALUES ('2390', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 17:40:38');
INSERT INTO `log` VALUES ('2391', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 17:56:29');
INSERT INTO `log` VALUES ('2392', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 18:29:07');
INSERT INTO `log` VALUES ('2393', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-14 18:56:49');
INSERT INTO `log` VALUES ('2394', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 18:59:49');
INSERT INTO `log` VALUES ('2395', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-02-14 19:34:27');
INSERT INTO `log` VALUES ('2396', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 21:17:25');
INSERT INTO `log` VALUES ('2397', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-14 21:23:36');
INSERT INTO `log` VALUES ('2398', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-14 22:06:20');
INSERT INTO `log` VALUES ('2399', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-02-14 23:57:09');
INSERT INTO `log` VALUES ('2400', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-15 02:16:08');
INSERT INTO `log` VALUES ('2401', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.220', '2014-02-15 02:47:42');
INSERT INTO `log` VALUES ('2402', null, 'ProductServiceImpl', 'updateLookNuns', '16', '101.226.167.219', '2014-02-15 02:47:45');
INSERT INTO `log` VALUES ('2403', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.244', '2014-02-15 02:50:06');
INSERT INTO `log` VALUES ('2404', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.244', '2014-02-15 02:50:06');
INSERT INTO `log` VALUES ('2405', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.246', '2014-02-15 02:50:06');
INSERT INTO `log` VALUES ('2406', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.207', '2014-02-15 02:53:16');
INSERT INTO `log` VALUES ('2407', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.214', '2014-02-15 02:53:16');
INSERT INTO `log` VALUES ('2408', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.208', '2014-02-15 02:53:16');
INSERT INTO `log` VALUES ('2409', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.209', '2014-02-15 02:53:19');
INSERT INTO `log` VALUES ('2410', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.207', '2014-02-15 02:53:19');
INSERT INTO `log` VALUES ('2411', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.210', '2014-02-15 02:53:23');
INSERT INTO `log` VALUES ('2412', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.212', '2014-02-15 02:53:23');
INSERT INTO `log` VALUES ('2413', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.21.204', '2014-02-15 02:53:27');
INSERT INTO `log` VALUES ('2414', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.21.206', '2014-02-15 02:53:27');
INSERT INTO `log` VALUES ('2415', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.213', '2014-02-15 02:53:28');
INSERT INTO `log` VALUES ('2416', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-15 02:55:47');
INSERT INTO `log` VALUES ('2417', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.212.158', '2014-02-15 03:22:03');
INSERT INTO `log` VALUES ('2418', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-15 03:54:12');
INSERT INTO `log` VALUES ('2419', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-15 05:13:01');
INSERT INTO `log` VALUES ('2420', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.214.8', '2014-02-15 05:31:07');
INSERT INTO `log` VALUES ('2421', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-15 08:07:26');
INSERT INTO `log` VALUES ('2422', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-15 09:25:30');
INSERT INTO `log` VALUES ('2423', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-15 11:08:50');
INSERT INTO `log` VALUES ('2424', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-02-15 12:13:02');
INSERT INTO `log` VALUES ('2425', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-15 12:44:56');
INSERT INTO `log` VALUES ('2426', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-02-15 12:54:32');
INSERT INTO `log` VALUES ('2427', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-02-15 14:49:32');
INSERT INTO `log` VALUES ('2428', '18626246726', 'PayServiceImpl', 'add', '0', '115.238.241.196', '2014-02-15 15:22:25');
INSERT INTO `log` VALUES ('2429', '18626246726', '用户管理', 'modify', '0', '115.238.241.196', '2014-02-15 15:22:25');
INSERT INTO `log` VALUES ('2430', 'super', '用户管理', 'add', '4', '0:0:0:0:0:0:0:1', '2014-02-15 15:41:15');
INSERT INTO `log` VALUES ('2431', 'super', '角色管理', 'saveUserRole', '24', '0:0:0:0:0:0:0:1', '2014-02-15 15:41:16');
INSERT INTO `log` VALUES ('2432', 'super', '用户管理', 'saveUserRates', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:41:16');
INSERT INTO `log` VALUES ('2433', 'lanyuan', 'PayServiceImpl', 'add', '12', '0:0:0:0:0:0:0:1', '2014-02-15 15:43:24');
INSERT INTO `log` VALUES ('2434', 'lanyuan', '用户管理', 'modify', '11', '0:0:0:0:0:0:0:1', '2014-02-15 15:43:24');
INSERT INTO `log` VALUES ('2435', 'lanyuan', 'PayMentServiceImpl', 'addBenefit', '6', '0:0:0:0:0:0:0:1', '2014-02-15 15:43:24');
INSERT INTO `log` VALUES ('2436', 'lanyuan', '用户管理', 'add', '7', '0:0:0:0:0:0:0:1', '2014-02-15 15:55:27');
INSERT INTO `log` VALUES ('2437', 'lanyuan', '角色管理', 'saveUserRole', '4', '0:0:0:0:0:0:0:1', '2014-02-15 15:55:27');
INSERT INTO `log` VALUES ('2438', 'lanyuan', '用户管理', 'saveUserRates', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:55:28');
INSERT INTO `log` VALUES ('2439', 'ab', 'PayServiceImpl', 'add', '3', '0:0:0:0:0:0:0:1', '2014-02-15 15:56:26');
INSERT INTO `log` VALUES ('2440', 'ab', '用户管理', 'modify', '8', '0:0:0:0:0:0:0:1', '2014-02-15 15:56:26');
INSERT INTO `log` VALUES ('2441', 'ab', 'PayMentServiceImpl', 'addBenefit', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:56:26');
INSERT INTO `log` VALUES ('2442', 'super', '用户管理', 'saveUserRates', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:57:31');
INSERT INTO `log` VALUES ('2443', 'lanyuan', '用户管理', 'saveUserRates', '1', '0:0:0:0:0:0:0:1', '2014-02-15 15:58:38');
INSERT INTO `log` VALUES ('2444', 'ab', 'PayServiceImpl', 'add', '1', '0:0:0:0:0:0:0:1', '2014-02-15 15:59:00');
INSERT INTO `log` VALUES ('2445', 'ab', '用户管理', 'modify', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:59:00');
INSERT INTO `log` VALUES ('2446', 'ab', 'PayMentServiceImpl', 'addBenefit', '2', '0:0:0:0:0:0:0:1', '2014-02-15 15:59:00');
INSERT INTO `log` VALUES ('2447', 'super', '用户管理', 'delete', '13', '0:0:0:0:0:0:0:1', '2014-02-15 16:53:02');
INSERT INTO `log` VALUES ('2448', 'super', '用户管理', 'delete', '9', '0:0:0:0:0:0:0:1', '2014-02-15 16:53:43');
INSERT INTO `log` VALUES ('2449', 'fhl', '用户管理', 'saveUserRates', '2', '0:0:0:0:0:0:0:1', '2014-02-25 14:49:22');
INSERT INTO `log` VALUES ('2450', 'ttzf', 'ProductServiceImpl', 'updateLookNuns', '39', '0:0:0:0:0:0:0:1', '2014-02-26 14:45:07');
INSERT INTO `log` VALUES ('2451', 'fhl', '用户管理', 'modify', '4', '127.0.0.1', '2014-03-05 12:55:38');
INSERT INTO `log` VALUES ('2452', 'fhl', '用户管理', 'modify', '4', '127.0.0.1', '2014-03-05 12:55:52');
INSERT INTO `log` VALUES ('2453', 'fhl', '用户管理', 'saveUserRates', '2', '127.0.0.1', '2014-03-05 12:56:19');
INSERT INTO `log` VALUES ('2454', 'fhl', '用户管理', 'add', '121', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:07');
INSERT INTO `log` VALUES ('2455', 'fhl', '角色管理', 'saveUserRole', '85', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:08');
INSERT INTO `log` VALUES ('2456', 'fhl', '用户管理', 'saveUserRates', '21', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:08');
INSERT INTO `log` VALUES ('2457', 'fhl', '用户管理', 'saveUserRates', '139', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:26');
INSERT INTO `log` VALUES ('2458', 'fhl', '用户管理', 'delete', '98', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:35');
INSERT INTO `log` VALUES ('2459', 'fhl', '用户管理', 'delete', '13', '0:0:0:0:0:0:0:1', '2014-03-05 18:10:35');
INSERT INTO `log` VALUES ('2460', 'fhl', '用户管理', 'delete', '1', '0:0:0:0:0:0:0:1', '2014-03-05 18:16:15');
INSERT INTO `log` VALUES ('2461', 'fhl', '用户管理', 'delete', '1', '0:0:0:0:0:0:0:1', '2014-03-05 18:16:15');
INSERT INTO `log` VALUES ('2462', 'fhl', '用户管理', 'add', '89', '0:0:0:0:0:0:0:1', '2014-03-05 18:20:14');
INSERT INTO `log` VALUES ('2463', 'fhl', '角色管理', 'saveUserRole', '5', '0:0:0:0:0:0:0:1', '2014-03-05 18:20:15');
INSERT INTO `log` VALUES ('2464', 'fhl', '用户管理', 'saveUserRates', '10', '0:0:0:0:0:0:0:1', '2014-03-05 18:20:15');
INSERT INTO `log` VALUES ('2465', 'fhl', '用户管理', 'saveUserRates', '2', '0:0:0:0:0:0:0:1', '2014-03-05 18:20:56');
INSERT INTO `log` VALUES ('2466', 'fhl', '用户管理', 'delete', '3', '0:0:0:0:0:0:0:1', '2014-03-05 18:21:02');
INSERT INTO `log` VALUES ('2467', 'fhl', '用户管理', 'delete', '2', '0:0:0:0:0:0:0:1', '2014-03-05 18:21:02');
INSERT INTO `log` VALUES ('2468', 'fhl', '用户管理', 'delete', '12', '0:0:0:0:0:0:0:1', '2014-03-05 18:21:26');
INSERT INTO `log` VALUES ('2469', 'fhl', '用户管理', 'delete', '11', '0:0:0:0:0:0:0:1', '2014-03-05 18:21:26');
INSERT INTO `log` VALUES ('2470', 'root', 'ResourcesServiceImpl', 'delete', '2', '183.233.189.114', '2014-05-09 17:01:23');
INSERT INTO `log` VALUES ('2471', 'root', 'DicTypeServiceImpl', 'update', '3', '111.204.254.38', '2014-05-10 15:33:17');
INSERT INTO `log` VALUES ('2472', 'root', 'RolesServiceImpl', 'addAccRole', '2', '221.172.102.136', '2014-05-10 20:20:34');
INSERT INTO `log` VALUES ('2473', 'root', 'ResourcesServiceImpl', 'addRoleRes', '4', '221.172.102.136', '2014-05-10 20:23:55');
INSERT INTO `log` VALUES ('2474', 'root', 'RolesServiceImpl', 'addAccRole', '2', '61.235.13.24', '2014-05-12 15:59:33');
INSERT INTO `log` VALUES ('2475', 'root', 'RolesServiceImpl', 'addAccRole', '2', '61.235.13.24', '2014-05-12 15:59:34');
INSERT INTO `log` VALUES ('2476', 'root', 'RolesServiceImpl', 'addAccRole', '1', '61.235.13.24', '2014-05-12 15:59:34');
INSERT INTO `log` VALUES ('2477', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '22', '60.176.145.233', '2014-05-13 08:18:45');
INSERT INTO `log` VALUES ('2478', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '19', '60.176.145.233', '2014-05-13 08:18:46');
INSERT INTO `log` VALUES ('2479', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '19', '60.176.145.233', '2014-05-13 08:18:47');
INSERT INTO `log` VALUES ('2480', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '18', '60.176.145.233', '2014-05-13 08:18:47');
INSERT INTO `log` VALUES ('2481', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '21', '60.247.77.252', '2014-05-13 10:06:50');
INSERT INTO `log` VALUES ('2482', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '21', '60.247.77.252', '2014-05-13 10:06:51');
INSERT INTO `log` VALUES ('2483', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '18', '118.144.130.194', '2014-05-13 13:38:00');
INSERT INTO `log` VALUES ('2484', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '18', '180.77.17.205', '2014-05-13 14:00:11');
INSERT INTO `log` VALUES ('2485', 'root', 'AccountServiceImpl', 'add', '1', '119.48.75.22', '2014-05-13 16:53:54');
INSERT INTO `log` VALUES ('2486', 'root', 'RolesServiceImpl', 'add', '1', '119.48.75.22', '2014-05-13 16:55:25');
INSERT INTO `log` VALUES ('2487', 'root', 'ResourcesServiceImpl', 'addRoleRes', '18', '119.48.75.22', '2014-05-13 16:55:42');
INSERT INTO `log` VALUES ('2488', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '17', '218.2.227.162', '2014-05-14 09:06:23');
INSERT INTO `log` VALUES ('2489', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '18', '218.2.227.162', '2014-05-14 09:06:24');
INSERT INTO `log` VALUES ('2490', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '18', '218.2.227.162', '2014-05-14 09:06:29');
INSERT INTO `log` VALUES ('2491', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '17', '218.2.227.162', '2014-05-14 09:06:30');
INSERT INTO `log` VALUES ('2492', 'root', 'ResourcesServiceImpl', 'add', '8', '14.145.181.245', '2014-05-15 11:43:43');
INSERT INTO `log` VALUES ('2493', 'root', 'ResourcesServiceImpl', 'update', '1', '14.145.181.245', '2014-05-15 11:49:29');
INSERT INTO `log` VALUES ('2494', 'root', 'UserLoginServiceImpl', 'add', '101', '127.0.0.1', '2014-05-23 16:26:05');
INSERT INTO `log` VALUES ('2495', 'root', 'UserLoginServiceImpl', 'add', '27', '127.0.0.1', '2014-05-23 16:51:27');
INSERT INTO `log` VALUES ('2496', 'root', 'UserLoginServiceImpl', 'add', '38', '127.0.0.1', '2014-05-23 17:29:26');
INSERT INTO `log` VALUES ('2497', 'root', 'RolesServiceImpl', 'addAccRole', '71', '127.0.0.1', '2014-05-23 17:30:20');
INSERT INTO `log` VALUES ('2498', 'root', 'RolesServiceImpl', 'addAccRole', '164', '127.0.0.1', '2014-05-23 17:31:38');
INSERT INTO `log` VALUES ('2499', 'root', 'UserLoginServiceImpl', 'add', '80', '127.0.0.1', '2014-05-24 23:24:19');
INSERT INTO `log` VALUES ('2500', 'root', 'RolesServiceImpl', 'add', '3', '127.0.0.1', '2014-05-24 23:24:46');
INSERT INTO `log` VALUES ('2501', 'root', 'RolesServiceImpl', 'delete', '49', '127.0.0.1', '2014-05-24 23:24:50');
INSERT INTO `log` VALUES ('2502', 'root', 'RolesServiceImpl', 'addAccRole', '4', '127.0.0.1', '2014-05-24 23:25:03');
INSERT INTO `log` VALUES ('2503', 'root', 'RolesServiceImpl', 'delete', '2', '127.0.0.1', '2014-05-24 23:25:22');
INSERT INTO `log` VALUES ('2504', 'root', 'UserLoginServiceImpl', 'add', '15', '115.231.107.51', '2014-05-25 01:26:48');
INSERT INTO `log` VALUES ('2505', 'root', 'UserLoginServiceImpl', 'add', '31', '112.90.231.38', '2014-05-25 09:35:24');
INSERT INTO `log` VALUES ('2506', 'root', 'UserLoginServiceImpl', 'add', '31', '58.253.216.230', '2014-05-25 10:17:13');
INSERT INTO `log` VALUES ('2507', 'root', 'UserLoginServiceImpl', 'add', '15', '112.90.231.36', '2014-05-25 23:15:03');
INSERT INTO `log` VALUES ('2508', 'root', 'UserLoginServiceImpl', 'add', '15', '112.94.196.150', '2014-05-25 23:15:57');
INSERT INTO `log` VALUES ('2509', 'root', 'UserLoginServiceImpl', 'add', '16', '183.233.189.114', '2014-05-26 08:55:30');
INSERT INTO `log` VALUES ('2510', 'root', 'UserLoginServiceImpl', 'add', '32', '125.46.146.58', '2014-05-26 13:11:51');
INSERT INTO `log` VALUES ('2511', 'root', 'UserLoginServiceImpl', 'add', '32', '183.233.189.114', '2014-05-26 14:11:30');
INSERT INTO `log` VALUES ('2512', 'root', 'UserLoginServiceImpl', 'add', '32', '183.233.189.114', '2014-05-27 15:47:48');
INSERT INTO `log` VALUES ('2513', 'root', 'UserLoginServiceImpl', 'add', '62', '183.233.189.114', '2014-05-28 09:37:34');
INSERT INTO `log` VALUES ('2514', 'root', 'UserLoginServiceImpl', 'add', '31', '183.233.189.114', '2014-05-29 18:40:32');
INSERT INTO `log` VALUES ('2515', 'root', 'UserLoginServiceImpl', 'add', '31', '183.233.189.114', '2014-05-30 10:55:34');
INSERT INTO `log` VALUES ('2516', 'root', 'UserLoginServiceImpl', 'add', '31', '183.233.189.114', '2014-05-30 11:26:57');
INSERT INTO `log` VALUES ('2517', 'root', 'UserLoginServiceImpl', 'add', '0', '58.254.168.29', '2014-06-08 09:51:30');
INSERT INTO `log` VALUES ('2518', 'root', 'UserLoginServiceImpl', 'add', '16', '36.251.188.137', '2014-06-08 10:13:07');
INSERT INTO `log` VALUES ('2519', 'root', 'UserLoginServiceImpl', 'add', '16', '58.254.168.29', '2014-06-08 11:25:40');
INSERT INTO `log` VALUES ('2520', 'root', 'UserLoginServiceImpl', 'add', '16', '180.169.9.130', '2014-06-08 13:31:16');
INSERT INTO `log` VALUES ('2521', 'root', 'UserLoginServiceImpl', 'add', '0', '36.251.188.137', '2014-06-08 13:35:39');
INSERT INTO `log` VALUES ('2522', 'root', 'UserLoginServiceImpl', 'add', '0', '120.82.94.166', '2014-06-08 13:38:35');
INSERT INTO `log` VALUES ('2523', 'lanyuan', 'UserLoginServiceImpl', 'add', '15', '116.234.99.133', '2014-06-08 13:41:39');
INSERT INTO `log` VALUES ('2524', 'root', 'UserLoginServiceImpl', 'add', '0', '60.55.42.44', '2014-06-08 14:35:39');
INSERT INTO `log` VALUES ('2525', 'root', 'UserLoginServiceImpl', 'add', '0', '218.88.6.114', '2014-06-08 14:35:42');
INSERT INTO `log` VALUES ('2526', 'root', 'UserLoginServiceImpl', 'add', '0', '58.20.233.115', '2014-06-08 14:46:33');
INSERT INTO `log` VALUES ('2527', 'root', 'UserLoginServiceImpl', 'add', '31', '58.251.229.52', '2014-06-08 15:08:13');
INSERT INTO `log` VALUES ('2528', 'root', 'UserLoginServiceImpl', 'add', '0', '221.223.238.232', '2014-06-08 15:17:02');
INSERT INTO `log` VALUES ('2529', 'root', 'UserLoginServiceImpl', 'add', '0', '58.249.67.196', '2014-06-08 15:36:04');
INSERT INTO `log` VALUES ('2530', 'root', 'UserLoginServiceImpl', 'add', '0', '59.42.9.212', '2014-06-08 15:46:58');
INSERT INTO `log` VALUES ('2531', 'root', 'UserLoginServiceImpl', 'add', '0', '221.238.82.210', '2014-06-08 15:58:13');
INSERT INTO `log` VALUES ('2532', 'root', 'UserLoginServiceImpl', 'add', '31', '58.20.233.115', '2014-06-08 17:05:35');
INSERT INTO `log` VALUES ('2533', 'root', 'UserLoginServiceImpl', 'add', '47', '222.128.184.174', '2014-06-08 17:10:59');
INSERT INTO `log` VALUES ('2534', 'root', 'UserLoginServiceImpl', 'add', '47', '114.82.60.227', '2014-06-08 18:32:20');
INSERT INTO `log` VALUES ('2535', 'root', 'UserLoginServiceImpl', 'add', '0', '58.254.168.29', '2014-06-08 18:48:58');
INSERT INTO `log` VALUES ('2536', 'root', 'UserLoginServiceImpl', 'add', '0', '58.48.17.219', '2014-06-08 18:51:57');
INSERT INTO `log` VALUES ('2537', 'lanyuan', 'UserLoginServiceImpl', 'add', '0', '58.20.238.211', '2014-06-08 19:00:41');
INSERT INTO `log` VALUES ('2538', 'root', 'UserLoginServiceImpl', 'add', '0', '111.204.254.35', '2014-06-08 19:02:17');
INSERT INTO `log` VALUES ('2539', 'root', 'UserLoginServiceImpl', 'add', '47', '139.206.5.244', '2014-06-08 19:57:06');
INSERT INTO `log` VALUES ('2540', 'root', 'UserLoginServiceImpl', 'add', '15', '118.249.45.149', '2014-06-08 20:32:55');
INSERT INTO `log` VALUES ('2541', 'root', 'UserLoginServiceImpl', 'add', '0', '120.82.94.166', '2014-06-08 20:46:35');
INSERT INTO `log` VALUES ('2542', 'root', 'UserLoginServiceImpl', 'add', '0', '58.48.17.219', '2014-06-08 20:47:24');
INSERT INTO `log` VALUES ('2543', 'root', 'UserLoginServiceImpl', 'add', '31', '36.251.188.137', '2014-06-08 23:33:54');
INSERT INTO `log` VALUES ('2544', 'root', 'RolesServiceImpl', 'addAccRole', '16', '36.251.188.137', '2014-06-08 23:36:56');
INSERT INTO `log` VALUES ('2545', 'root', 'ResourcesServiceImpl', 'addRoleRes', '62', '36.251.188.137', '2014-06-08 23:37:26');
INSERT INTO `log` VALUES ('2546', 'root', 'UserLoginServiceImpl', 'add', '31', '218.19.190.244', '2014-06-09 08:39:08');
INSERT INTO `log` VALUES ('2547', 'root', 'UserLoginServiceImpl', 'add', '15', '118.144.130.194', '2014-06-09 08:55:16');
INSERT INTO `log` VALUES ('2548', 'root', 'UserLoginServiceImpl', 'add', '16', '118.144.130.194', '2014-06-09 09:23:45');
INSERT INTO `log` VALUES ('2549', 'root', 'UserLoginServiceImpl', 'add', '15', '183.32.167.219', '2014-06-09 09:25:39');
INSERT INTO `log` VALUES ('2550', 'root', 'UserLoginServiceImpl', 'add', '16', '183.32.167.219', '2014-06-09 09:27:04');
INSERT INTO `log` VALUES ('2551', 'root', 'UserLoginServiceImpl', 'add', '16', '58.251.146.199', '2014-06-09 09:56:19');
INSERT INTO `log` VALUES ('2552', 'root', 'UserLoginServiceImpl', 'add', '0', '202.118.67.226', '2014-06-09 10:16:42');
INSERT INTO `log` VALUES ('2553', 'root', 'UserLoginServiceImpl', 'add', '0', '106.38.250.220', '2014-06-09 10:51:09');
INSERT INTO `log` VALUES ('2554', 'root', 'UserLoginServiceImpl', 'add', '15', '106.38.250.220', '2014-06-09 10:51:09');
INSERT INTO `log` VALUES ('2555', 'root', 'UserLoginServiceImpl', 'add', '15', '183.37.220.113', '2014-06-09 14:21:16');
INSERT INTO `log` VALUES ('2556', 'root', 'UserLoginServiceImpl', 'add', '0', '183.37.220.113', '2014-06-09 14:24:52');
INSERT INTO `log` VALUES ('2557', 'root', 'UserLoginServiceImpl', 'add', '16', '222.161.208.41', '2014-06-09 19:34:34');
INSERT INTO `log` VALUES ('2558', 'root', 'UserLoginServiceImpl', 'add', '47', '125.120.230.193', '2014-06-10 08:04:35');
INSERT INTO `log` VALUES ('2559', 'root', 'UserLoginServiceImpl', 'add', '16', '58.20.49.162', '2014-06-10 08:11:39');
INSERT INTO `log` VALUES ('2560', 'root', 'UserLoginServiceImpl', 'add', '15', '111.20.101.114', '2014-06-10 09:02:01');
INSERT INTO `log` VALUES ('2561', 'root', 'UserLoginServiceImpl', 'add', '0', '182.148.112.217', '2014-06-10 09:16:48');
INSERT INTO `log` VALUES ('2562', 'admin', 'UserLoginServiceImpl', 'add', '0', '182.148.112.217', '2014-06-10 09:19:53');
INSERT INTO `log` VALUES ('2563', 'root', 'UserLoginServiceImpl', 'add', '15', '222.129.50.16', '2014-06-10 09:53:19');
INSERT INTO `log` VALUES ('2564', 'root', 'UserLoginServiceImpl', 'add', '125', '123.235.17.134', '2014-06-10 11:30:45');
INSERT INTO `log` VALUES ('2565', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '110', '123.235.17.134', '2014-06-10 11:33:49');
INSERT INTO `log` VALUES ('2566', 'root', 'RolesServiceImpl', 'addAccRole', '15', '123.235.17.134', '2014-06-10 11:38:45');
INSERT INTO `log` VALUES ('2567', 'root', 'UserLoginServiceImpl', 'add', '63', '112.112.17.170', '2014-06-10 12:40:59');
INSERT INTO `log` VALUES ('2568', 'root', 'UserLoginServiceImpl', 'add', '31', '101.95.114.210', '2014-06-10 13:47:00');
INSERT INTO `log` VALUES ('2569', 'admin', 'UserLoginServiceImpl', 'add', '16', '124.207.116.226', '2014-06-10 14:30:11');
INSERT INTO `log` VALUES ('2570', 'root', 'UserLoginServiceImpl', 'add', '16', '118.186.2.176', '2014-06-10 14:40:47');
INSERT INTO `log` VALUES ('2571', 'root', 'AccountServiceImpl', 'add', '16', '118.186.2.176', '2014-06-10 14:43:05');
INSERT INTO `log` VALUES ('2572', 'admin', 'UserLoginServiceImpl', 'add', '32', '115.152.68.151', '2014-06-10 16:18:08');
INSERT INTO `log` VALUES ('2573', 'root', 'UserLoginServiceImpl', 'add', '15', '218.88.110.36', '2014-06-10 16:36:09');
INSERT INTO `log` VALUES ('2574', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '188', '218.88.110.36', '2014-06-10 16:36:46');
INSERT INTO `log` VALUES ('2575', 'root', 'UserLoginServiceImpl', 'add', '15', '221.123.160.249', '2014-06-11 09:34:29');
INSERT INTO `log` VALUES ('2576', 'root', 'UserLoginServiceImpl', 'add', '15', '221.123.160.250', '2014-06-11 11:04:57');
INSERT INTO `log` VALUES ('2577', 'root', 'UserLoginServiceImpl', 'add', '16', '221.123.160.250', '2014-06-11 11:34:23');
INSERT INTO `log` VALUES ('2578', 'root', 'UserLoginServiceImpl', 'add', '16', '120.82.94.166', '2014-06-11 12:13:51');
INSERT INTO `log` VALUES ('2579', 'root', 'UserLoginServiceImpl', 'add', '16', '120.82.94.166', '2014-06-11 12:45:55');
INSERT INTO `log` VALUES ('2580', 'admin', 'UserLoginServiceImpl', 'add', '15', '110.184.139.165', '2014-06-11 12:54:59');
INSERT INTO `log` VALUES ('2581', 'lanyuan', 'UserLoginServiceImpl', 'add', '31', '202.114.47.61', '2014-06-11 16:01:58');
INSERT INTO `log` VALUES ('2582', 'root', 'UserLoginServiceImpl', 'add', '63', '120.82.94.166', '2014-06-11 22:14:45');
INSERT INTO `log` VALUES ('2583', 'root', 'ResourcesServiceImpl', 'add', '0', '120.82.94.166', '2014-06-11 22:15:39');
INSERT INTO `log` VALUES ('2584', 'root', 'ResourcesServiceImpl', 'update', '0', '120.82.94.166', '2014-06-11 22:17:00');
INSERT INTO `log` VALUES ('2585', 'root', 'ResourcesServiceImpl', 'update', '0', '120.82.94.166', '2014-06-11 22:17:26');
INSERT INTO `log` VALUES ('2586', 'root', 'ResourcesServiceImpl', 'update', '15', '120.82.94.166', '2014-06-11 22:17:45');
INSERT INTO `log` VALUES ('2587', 'root', 'ResourcesServiceImpl', 'update', '15', '120.82.94.166', '2014-06-11 22:18:01');
INSERT INTO `log` VALUES ('2588', 'root', 'ResourcesServiceImpl', 'update', '0', '120.82.94.166', '2014-06-11 22:18:31');
INSERT INTO `log` VALUES ('2589', 'root', 'ResourcesServiceImpl', 'delete', '15', '120.82.94.166', '2014-06-11 22:18:48');
INSERT INTO `log` VALUES ('2590', 'root', 'UserLoginServiceImpl', 'add', '188', '120.82.94.166', '2014-06-11 22:43:57');
INSERT INTO `log` VALUES ('2591', 'root', 'UserLoginServiceImpl', 'add', '31', '120.82.94.166', '2014-06-11 22:43:58');
INSERT INTO `log` VALUES ('2592', 'root', 'UserLoginServiceImpl', 'add', '16', '222.221.222.219', '2014-06-12 11:57:58');
INSERT INTO `log` VALUES ('2593', 'admin', 'UserLoginServiceImpl', 'add', '15', '61.183.207.250', '2014-06-12 17:47:00');
INSERT INTO `log` VALUES ('2594', 'lanyuan', 'UserLoginServiceImpl', 'add', '47', '1.30.213.223', '2014-06-12 20:09:50');
INSERT INTO `log` VALUES ('2595', 'lanyuan', 'UserLoginServiceImpl', 'add', '31', '1.30.213.223', '2014-06-12 21:21:08');
INSERT INTO `log` VALUES ('2596', 'lanyuan', 'RolesServiceImpl', 'addAccRole', '32', '1.30.213.223', '2014-06-12 21:23:15');
INSERT INTO `log` VALUES ('2597', 'lanyuan', 'RolesServiceImpl', 'addAccRole', '0', '1.30.213.223', '2014-06-12 21:23:47');
INSERT INTO `log` VALUES ('2598', 'root', 'UserLoginServiceImpl', 'add', '15', '183.247.11.167', '2014-06-12 21:26:16');
INSERT INTO `log` VALUES ('2599', 'lanyuan', 'UserLoginServiceImpl', 'add', '16', '1.30.213.223', '2014-06-12 22:15:43');
INSERT INTO `log` VALUES ('2600', 'lanyuan', 'UserLoginServiceImpl', 'add', '15', '202.99.241.164', '2014-06-13 08:26:22');
INSERT INTO `log` VALUES ('2601', 'lanyuan', 'UserLoginServiceImpl', 'add', '0', '202.99.241.161', '2014-06-13 08:36:45');
INSERT INTO `log` VALUES ('2602', 'lanyuan', 'UserLoginServiceImpl', 'add', '15', '202.99.241.161', '2014-06-13 08:41:48');
INSERT INTO `log` VALUES ('2603', 'lanyuan', 'UserLoginServiceImpl', 'add', '15', '202.99.241.164', '2014-06-13 08:54:56');
INSERT INTO `log` VALUES ('2604', 'lanyuan', 'UserLoginServiceImpl', 'add', '16', '202.99.241.164', '2014-06-13 09:42:58');
INSERT INTO `log` VALUES ('2605', 'root', 'UserLoginServiceImpl', 'add', '16', '202.99.241.164', '2014-06-13 09:49:43');
INSERT INTO `log` VALUES ('2606', 'root', 'UserLoginServiceImpl', 'add', '15', '202.99.241.161', '2014-06-13 09:51:24');
INSERT INTO `log` VALUES ('2607', 'root', 'UserLoginServiceImpl', 'add', '0', '202.99.241.163', '2014-06-13 09:51:49');
INSERT INTO `log` VALUES ('2608', 'root', 'UserLoginServiceImpl', 'add', '47', '202.99.241.165', '2014-06-13 09:51:57');
INSERT INTO `log` VALUES ('2609', 'root', 'UserLoginServiceImpl', 'add', '0', '202.99.241.161', '2014-06-13 09:52:47');
INSERT INTO `log` VALUES ('2610', 'root', 'RolesServiceImpl', 'addAccRole', '16', '202.99.241.163', '2014-06-13 10:06:19');
INSERT INTO `log` VALUES ('2611', 'root', 'UserLoginServiceImpl', 'add', '15', '202.99.241.161', '2014-06-13 10:19:50');
INSERT INTO `log` VALUES ('2612', 'lanyuan', 'UserLoginServiceImpl', 'add', '16', '222.185.143.75', '2014-06-13 11:37:21');
INSERT INTO `log` VALUES ('2613', 'root', 'UserLoginServiceImpl', 'add', '15', '203.88.36.67', '2014-06-13 14:21:18');
INSERT INTO `log` VALUES ('2614', 'root', 'UserLoginServiceImpl', 'add', '16', '202.99.241.161', '2014-06-13 15:19:09');
INSERT INTO `log` VALUES ('2615', 'root', 'UserLoginServiceImpl', 'add', '0', '1.28.193.143', '2014-06-13 15:24:46');
INSERT INTO `log` VALUES ('2616', 'root', 'UserLoginServiceImpl', 'add', '0', '202.99.241.164', '2014-06-13 15:29:45');
INSERT INTO `log` VALUES ('2617', 'root', 'AccountServiceImpl', 'add', '0', '202.99.241.164', '2014-06-13 15:31:42');
INSERT INTO `log` VALUES ('2618', 'root', 'AccountServiceImpl', 'update', '15', '202.99.241.164', '2014-06-13 15:31:59');
INSERT INTO `log` VALUES ('2619', 'root', 'UserLoginServiceImpl', 'add', '0', '202.99.241.164', '2014-06-13 15:38:16');
INSERT INTO `log` VALUES ('2620', 'root', 'UserLoginServiceImpl', 'add', '15', '119.40.54.82', '2014-06-13 15:38:23');
INSERT INTO `log` VALUES ('2621', 'root', 'UserLoginServiceImpl', 'add', '0', '110.184.139.165', '2014-06-13 15:39:24');
INSERT INTO `log` VALUES ('2622', 'root', 'UserLoginServiceImpl', 'add', '16', '202.118.67.226', '2014-06-13 15:40:11');
INSERT INTO `log` VALUES ('2623', 'root', 'UserLoginServiceImpl', 'add', '0', '114.242.14.218', '2014-06-13 15:41:10');
INSERT INTO `log` VALUES ('2624', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '63', '110.184.139.165', '2014-06-13 15:42:23');
INSERT INTO `log` VALUES ('2625', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '78', '110.184.139.165', '2014-06-13 15:42:25');
INSERT INTO `log` VALUES ('2626', 'root', 'RolesServiceImpl', 'addAccRole', '0', '110.184.139.165', '2014-06-13 15:44:18');
INSERT INTO `log` VALUES ('2627', 'root', 'UserLoginServiceImpl', 'add', '16', '124.160.216.54', '2014-06-14 12:00:13');
INSERT INTO `log` VALUES ('2628', 'root', 'UserLoginServiceImpl', 'add', '32', '113.103.67.195', '2014-06-14 21:27:44');
INSERT INTO `log` VALUES ('2629', 'root', 'RolesServiceImpl', 'addAccRole', '16', '113.103.67.195', '2014-06-14 21:28:49');
INSERT INTO `log` VALUES ('2630', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '156', '113.103.67.195', '2014-06-14 21:29:30');
INSERT INTO `log` VALUES ('2631', 'root', 'UserLoginServiceImpl', 'add', '0', '120.82.94.166', '2014-06-15 08:02:30');
INSERT INTO `log` VALUES ('2632', 'root', 'UserLoginServiceImpl', 'add', '16', '120.82.94.166', '2014-06-15 08:02:44');
INSERT INTO `log` VALUES ('2633', 'admin', 'UserLoginServiceImpl', 'add', '0', '111.161.17.65', '2014-06-15 08:10:23');
INSERT INTO `log` VALUES ('2634', 'root', 'UserLoginServiceImpl', 'add', '15', '123.114.139.185', '2014-06-15 09:32:35');
INSERT INTO `log` VALUES ('2635', 'root', 'UserLoginServiceImpl', 'add', '0', '123.114.139.185', '2014-06-15 09:36:26');
INSERT INTO `log` VALUES ('2636', 'root', 'UserLoginServiceImpl', 'add', '15', '218.29.231.254', '2014-06-16 10:20:08');
INSERT INTO `log` VALUES ('2637', 'root', 'UserLoginServiceImpl', 'add', '16', '211.142.27.46', '2014-06-16 12:13:26');
INSERT INTO `log` VALUES ('2638', 'root', 'AccountServiceImpl', 'add', '0', '211.142.27.46', '2014-06-16 12:21:22');
INSERT INTO `log` VALUES ('2639', 'root', 'RolesServiceImpl', 'addAccRole', '0', '211.142.27.46', '2014-06-16 12:22:01');
INSERT INTO `log` VALUES ('2640', 'root', 'RolesServiceImpl', 'addAccRole', '0', '211.142.27.46', '2014-06-16 12:22:38');
INSERT INTO `log` VALUES ('2641', 'root', 'RolesServiceImpl', 'addAccRole', '16', '211.142.27.46', '2014-06-16 12:22:52');
INSERT INTO `log` VALUES ('2642', 'root', 'UserLoginServiceImpl', 'add', '16', '183.248.177.87', '2014-06-16 12:52:29');
INSERT INTO `log` VALUES ('2643', 'root', 'UserLoginServiceImpl', 'add', '47', '183.16.164.175', '2014-06-16 20:58:55');
INSERT INTO `log` VALUES ('2644', 'root', 'UserLoginServiceImpl', 'add', '31', '110.19.38.104', '2014-06-16 22:22:06');
INSERT INTO `log` VALUES ('2645', 'admin', 'UserLoginServiceImpl', 'add', '15', '123.116.90.13', '2014-06-17 08:42:18');
INSERT INTO `log` VALUES ('2646', 'root', 'UserLoginServiceImpl', 'add', '0', '218.19.190.244', '2014-06-17 08:48:22');
INSERT INTO `log` VALUES ('2647', 'root', 'UserLoginServiceImpl', 'add', '0', '106.120.122.130', '2014-06-17 08:49:18');
INSERT INTO `log` VALUES ('2648', 'root', 'UserLoginServiceImpl', 'add', '16', '183.248.177.87', '2014-06-17 09:12:01');
INSERT INTO `log` VALUES ('2649', 'admin', 'UserLoginServiceImpl', 'add', '16', '58.17.241.32', '2014-06-17 09:21:36');
INSERT INTO `log` VALUES ('2650', 'root', 'UserLoginServiceImpl', 'add', '0', '61.154.14.122', '2014-06-17 09:26:28');
INSERT INTO `log` VALUES ('2651', 'admin', 'UserLoginServiceImpl', 'add', '16', '101.95.114.210', '2014-06-17 09:26:58');
INSERT INTO `log` VALUES ('2652', 'admin', 'UserLoginServiceImpl', 'add', '0', '106.37.187.134', '2014-06-17 09:28:02');
INSERT INTO `log` VALUES ('2653', 'admin', 'UserLoginServiceImpl', 'add', '0', '183.3.209.216', '2014-06-17 09:28:11');
INSERT INTO `log` VALUES ('2654', 'admin', 'RolesServiceImpl', 'addAccRole', '15', '183.3.209.216', '2014-06-17 09:29:07');
INSERT INTO `log` VALUES ('2655', 'admin', 'UserLoginServiceImpl', 'add', '0', '183.3.209.216', '2014-06-17 09:30:03');
INSERT INTO `log` VALUES ('2656', 'root', 'UserLoginServiceImpl', 'add', '0', '61.148.243.148', '2014-06-17 09:53:19');
INSERT INTO `log` VALUES ('2657', 'root', 'UserLoginServiceImpl', 'add', '16', '61.148.243.148', '2014-06-17 09:54:40');
INSERT INTO `log` VALUES ('2658', 'root', 'UserLoginServiceImpl', 'add', '0', '61.148.243.148', '2014-06-17 09:55:32');
INSERT INTO `log` VALUES ('2659', 'root', 'UserLoginServiceImpl', 'add', '0', '61.148.243.148', '2014-06-17 09:55:32');
INSERT INTO `log` VALUES ('2660', 'root', 'UserLoginServiceImpl', 'add', '16', '221.123.160.250', '2014-06-17 11:14:22');
INSERT INTO `log` VALUES ('2661', 'root', 'UserLoginServiceImpl', 'add', '0', '211.97.15.158', '2014-06-17 12:50:55');
INSERT INTO `log` VALUES ('2662', 'root', 'UserLoginServiceImpl', 'add', '47', '210.56.193.18', '2014-06-17 13:32:41');
INSERT INTO `log` VALUES ('2663', 'root', 'UserLoginServiceImpl', 'add', '16', '183.32.178.216', '2014-06-17 13:53:19');
INSERT INTO `log` VALUES ('2664', 'root', 'ResourcesServiceImpl', 'addRoleRes', '110', '210.56.193.18', '2014-06-17 13:54:34');
INSERT INTO `log` VALUES ('2665', 'root', 'UserLoginServiceImpl', 'add', '0', '203.88.36.67', '2014-06-17 14:08:58');
INSERT INTO `log` VALUES ('2666', 'root', 'UserLoginServiceImpl', 'add', '15', '118.144.130.194', '2014-06-17 14:30:18');
INSERT INTO `log` VALUES ('2667', 'root', 'UserLoginServiceImpl', 'add', '0', '118.144.130.194', '2014-06-17 14:30:18');
INSERT INTO `log` VALUES ('2668', 'root', 'UserLoginServiceImpl', 'add', '16', '202.99.241.161', '2014-06-19 10:20:07');
INSERT INTO `log` VALUES ('2669', 'root', 'UserLoginServiceImpl', 'add', '0', '113.200.66.114', '2014-06-19 10:22:56');
INSERT INTO `log` VALUES ('2670', 'root', 'UserLoginServiceImpl', 'add', '31', '218.80.246.2', '2014-06-20 10:04:36');
INSERT INTO `log` VALUES ('2671', 'root', 'UserLoginServiceImpl', 'add', '31', '218.80.246.2', '2014-06-20 11:21:37');
INSERT INTO `log` VALUES ('2672', 'root', 'UserLoginServiceImpl', 'add', '31', '218.80.246.2', '2014-06-20 12:53:53');
INSERT INTO `log` VALUES ('2673', 'root', 'UserLoginServiceImpl', 'add', '16', '221.179.161.83', '2014-06-20 17:04:42');
INSERT INTO `log` VALUES ('2674', 'root', 'UserLoginServiceImpl', 'add', '0', '58.211.183.162', '2014-06-20 17:12:48');
INSERT INTO `log` VALUES ('2675', 'root', 'UserLoginServiceImpl', 'add', '16', '59.252.178.4', '2014-06-21 13:35:57');
INSERT INTO `log` VALUES ('2676', 'root', 'UserLoginServiceImpl', 'add', '32', '124.202.190.87', '2014-06-22 11:33:47');
INSERT INTO `log` VALUES ('2677', 'root', 'UserLoginServiceImpl', 'add', '62', '112.5.237.248', '2014-06-22 16:28:40');
INSERT INTO `log` VALUES ('2678', 'root', 'UserLoginServiceImpl', 'add', '31', '14.150.166.23', '2014-06-22 16:28:42');
INSERT INTO `log` VALUES ('2679', 'root', 'UserLoginServiceImpl', 'add', '0', '123.122.155.200', '2014-06-22 16:34:24');
INSERT INTO `log` VALUES ('2680', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '78', '112.5.237.248', '2014-06-22 16:35:51');
INSERT INTO `log` VALUES ('2681', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '63', '112.5.237.248', '2014-06-22 16:35:52');
INSERT INTO `log` VALUES ('2682', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '93', '112.5.237.248', '2014-06-22 16:35:52');
INSERT INTO `log` VALUES ('2683', 'root', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 16:40:52');
INSERT INTO `log` VALUES ('2684', 'root', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 16:45:33');
INSERT INTO `log` VALUES ('2685', 'root', 'DicTypeServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 16:51:47');
INSERT INTO `log` VALUES ('2686', 'root', 'UserLoginServiceImpl', 'add', '0', '183.247.7.189', '2014-06-22 16:54:56');
INSERT INTO `log` VALUES ('2687', 'root', 'AccountServiceImpl', 'update', '16', '112.5.237.248', '2014-06-22 16:54:58');
INSERT INTO `log` VALUES ('2688', 'root', 'RolesServiceImpl', 'addAccRole', '16', '112.5.237.248', '2014-06-22 16:56:20');
INSERT INTO `log` VALUES ('2689', 'root', 'UserLoginServiceImpl', 'add', '0', '183.247.7.189', '2014-06-22 16:56:57');
INSERT INTO `log` VALUES ('2690', 'lanyuan', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 16:57:05');
INSERT INTO `log` VALUES ('2691', 'root', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 17:05:24');
INSERT INTO `log` VALUES ('2692', 'root', 'UserLoginServiceImpl', 'add', '16', '118.114.86.146', '2014-06-22 17:21:32');
INSERT INTO `log` VALUES ('2693', 'root', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 17:40:28');
INSERT INTO `log` VALUES ('2694', 'root', 'ResourcesServiceImpl', 'add', '16', '112.5.237.248', '2014-06-22 17:44:21');
INSERT INTO `log` VALUES ('2695', 'root', 'UserLoginServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 17:44:40');
INSERT INTO `log` VALUES ('2696', 'root', 'UserLoginServiceImpl', 'add', '0', '123.122.155.200', '2014-06-22 17:47:41');
INSERT INTO `log` VALUES ('2697', 'root', 'UserLoginServiceImpl', 'add', '0', '123.122.155.200', '2014-06-22 17:47:41');
INSERT INTO `log` VALUES ('2698', 'root', 'UserLoginServiceImpl', 'add', '31', '112.5.237.248', '2014-06-22 17:47:42');
INSERT INTO `log` VALUES ('2699', 'root', 'ResourcesServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:47:49');
INSERT INTO `log` VALUES ('2700', 'root', 'ResourcesServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:47:49');
INSERT INTO `log` VALUES ('2701', 'root', 'ResourcesServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:47:49');
INSERT INTO `log` VALUES ('2702', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2703', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2704', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2705', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2706', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2707', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2708', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2709', 'root', 'ResourcesServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2710', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2711', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2712', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2713', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2714', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2715', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2716', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:50');
INSERT INTO `log` VALUES ('2717', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2718', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2719', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2720', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2721', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2722', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2723', 'root', 'ResourcesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2724', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2725', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2726', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2727', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2728', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2729', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2730', 'root', 'ResourcesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:47:51');
INSERT INTO `log` VALUES ('2731', 'root', 'DicServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:48:50');
INSERT INTO `log` VALUES ('2732', 'root', 'DicServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:48:50');
INSERT INTO `log` VALUES ('2733', 'root', 'DicServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:48:50');
INSERT INTO `log` VALUES ('2734', 'root', 'DicTypeServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:49:06');
INSERT INTO `log` VALUES ('2735', 'root', 'DicTypeServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:49:06');
INSERT INTO `log` VALUES ('2736', 'root', 'AccountServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:49:42');
INSERT INTO `log` VALUES ('2737', 'root', 'AccountServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:49:42');
INSERT INTO `log` VALUES ('2738', 'root', 'AccountServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:49:43');
INSERT INTO `log` VALUES ('2739', 'root', 'AccountServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:49:43');
INSERT INTO `log` VALUES ('2740', 'root', 'AccountServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:49:43');
INSERT INTO `log` VALUES ('2741', 'root', 'AccountServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:49:43');
INSERT INTO `log` VALUES ('2742', 'root', 'RolesServiceImpl', 'delete', '16', '123.122.155.200', '2014-06-22 17:49:56');
INSERT INTO `log` VALUES ('2743', 'root', 'RolesServiceImpl', 'delete', '15', '123.122.155.200', '2014-06-22 17:49:56');
INSERT INTO `log` VALUES ('2744', 'root', 'RolesServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:49:56');
INSERT INTO `log` VALUES ('2745', 'root', 'AccountServiceImpl', 'delete', '0', '123.122.155.200', '2014-06-22 17:50:03');
INSERT INTO `log` VALUES ('2746', 'root', 'ResourcesServiceImpl', 'add', '0', '112.5.237.248', '2014-06-22 17:50:26');
INSERT INTO `log` VALUES ('2747', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '16', '112.5.237.248', '2014-06-22 17:50:47');
INSERT INTO `log` VALUES ('2748', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '16', '112.5.237.248', '2014-06-22 17:50:49');
INSERT INTO `log` VALUES ('2749', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '0', '112.5.237.248', '2014-06-22 17:50:50');
INSERT INTO `log` VALUES ('2750', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '0', '112.5.237.248', '2014-06-22 17:50:50');
INSERT INTO `log` VALUES ('2751', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '0', '112.5.237.248', '2014-06-22 17:50:50');
INSERT INTO `log` VALUES ('2752', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '0', '112.5.237.248', '2014-06-22 17:50:50');
INSERT INTO `log` VALUES ('2753', 'root', 'ResourcesServiceImpl', 'updateSortOrder', '0', '112.5.237.248', '2014-06-22 17:50:51');
INSERT INTO `log` VALUES ('2754', 'root', 'UserLoginServiceImpl', 'add', '4', '127.0.0.1', '2014-07-14 13:48:51');
INSERT INTO `log` VALUES ('2755', 'root', 'RolesServiceImpl', 'add', '2', '127.0.0.1', '2014-07-14 13:49:10');
INSERT INTO `log` VALUES ('2756', 'root', 'RolesServiceImpl', 'delete', '61', '127.0.0.1', '2014-07-14 13:49:16');
INSERT INTO `log` VALUES ('2757', 'root', 'RolesServiceImpl', 'addAccRole', '6', '127.0.0.1', '2014-07-14 13:49:47');
INSERT INTO `log` VALUES ('2758', 'root', 'RolesServiceImpl', 'addAccRole', '9', '127.0.0.1', '2014-07-14 13:50:02');
INSERT INTO `log` VALUES ('2759', 'root', 'RolesServiceImpl', 'addAccRole', '7', '127.0.0.1', '2014-07-14 13:50:41');
INSERT INTO `log` VALUES ('2760', 'root', 'UserLoginServiceImpl', 'add', '3', '127.0.0.1', '2014-07-14 14:13:59');
INSERT INTO `log` VALUES ('2761', 'root', 'RolesServiceImpl', 'addAccRole', '58', '127.0.0.1', '2014-07-14 14:14:23');
INSERT INTO `log` VALUES ('2762', 'root', 'UserLoginServiceImpl', 'add', '6', '127.0.0.1', '2014-07-14 14:21:47');
INSERT INTO `log` VALUES ('2763', 'root', 'UserLoginServiceImpl', 'add', '4', '127.0.0.1', '2014-07-15 18:28:52');
INSERT INTO `log` VALUES ('2764', 'root', 'ResourcesServiceImpl', 'add', '19', '127.0.0.1', '2014-07-15 18:29:29');
INSERT INTO `log` VALUES ('2765', 'root', 'ResourcesServiceImpl', 'delete', '7', '127.0.0.1', '2014-07-15 18:29:33');
INSERT INTO `log` VALUES ('2766', 'root', 'UserLoginServiceImpl', 'add', '421', '127.0.0.1', '2014-07-26 11:24:19');
INSERT INTO `log` VALUES ('2767', 'root', 'UserLoginServiceImpl', 'add', '37', '127.0.0.1', '2014-07-26 11:42:18');
INSERT INTO `log` VALUES ('2768', 'root', 'UserLoginServiceImpl', 'add', '14', '127.0.0.1', '2014-07-26 11:48:37');
INSERT INTO `log` VALUES ('2769', 'root', 'UserLoginServiceImpl', 'add', '40', '127.0.0.1', '2014-07-26 11:55:36');
INSERT INTO `log` VALUES ('2770', 'root', 'UserLoginServiceImpl', 'add', '14', '127.0.0.1', '2014-07-26 12:04:00');
INSERT INTO `log` VALUES ('2771', 'root', 'UserLoginServiceImpl', 'add', '13', '127.0.0.1', '2014-07-26 12:04:38');
INSERT INTO `log` VALUES ('2772', 'root', 'UserLoginServiceImpl', 'add', '35', '127.0.0.1', '2014-07-26 12:15:39');
INSERT INTO `log` VALUES ('2773', 'root', 'UserLoginServiceImpl', 'add', '122', '127.0.0.1', '2014-07-26 14:27:30');
INSERT INTO `log` VALUES ('2774', 'root', 'UserLoginServiceImpl', 'add', '101', '127.0.0.1', '2014-07-27 20:50:39');
INSERT INTO `log` VALUES ('2775', 'root', 'UserLoginServiceImpl', 'add', '217', '127.0.0.1', '2014-10-21 10:24:05');
INSERT INTO `log` VALUES ('2776', 'root', 'UserLoginServiceImpl', 'add', '3', '127.0.0.1', '2014-10-21 10:33:13');
INSERT INTO `log` VALUES ('2777', 'root', 'UserLoginServiceImpl', 'add', '3', '127.0.0.1', '2014-10-21 10:38:56');
INSERT INTO `log` VALUES ('2778', 'root', 'UserLoginServiceImpl', 'add', '99', '127.0.0.1', '2014-10-21 16:11:31');
INSERT INTO `log` VALUES ('2779', '无法获取登录用户信息！', 'UserLoginServiceImpl', 'add', '23', '127.0.0.1', '2014-10-21 18:01:58');
INSERT INTO `log` VALUES ('2780', 'sam', 'UserLoginServiceImpl', 'add', '216', '127.0.0.1', '2014-10-29 14:33:16');
INSERT INTO `log` VALUES ('2781', 'root', 'UserLoginServiceImpl', 'add', '151', null, '2014-10-29 20:12:09');
INSERT INTO `log` VALUES ('2782', 'root', 'UserLoginServiceImpl', 'add', '17', null, '2014-10-29 20:15:42');
INSERT INTO `log` VALUES ('2783', '00', 'UserLoginServiceImpl', 'add', '15', null, '2014-10-29 20:17:58');
INSERT INTO `log` VALUES ('2784', '00', 'UserLoginServiceImpl', 'add', '19', null, '2014-10-29 20:19:54');
INSERT INTO `log` VALUES ('2785', 'root', 'UserLoginServiceImpl', 'add', '114', null, '2014-10-30 09:51:27');
INSERT INTO `log` VALUES ('2786', '00', 'UserLoginServiceImpl', 'add', '1', null, '2014-10-30 09:52:06');
INSERT INTO `log` VALUES ('2787', '00', 'UserLoginServiceImpl', 'add', '13', null, '2014-10-30 10:14:52');
INSERT INTO `log` VALUES ('2788', '00', 'UserLoginServiceImpl', 'add', '19', null, '2014-10-30 10:15:30');
INSERT INTO `log` VALUES ('2789', '00', 'UserLoginServiceImpl', 'add', '15', null, '2014-10-30 10:20:23');
INSERT INTO `log` VALUES ('2790', '00', 'UserLoginServiceImpl', 'add', '22', null, '2014-10-30 10:24:50');
INSERT INTO `log` VALUES ('2791', '00', 'UserLoginServiceImpl', 'add', '18', null, '2014-10-30 10:39:17');
INSERT INTO `log` VALUES ('2792', '00', 'UserLoginServiceImpl', 'add', '25', null, '2014-10-30 11:06:11');
INSERT INTO `log` VALUES ('2793', '00', 'UserLoginServiceImpl', 'add', '17', null, '2014-10-30 11:12:55');
INSERT INTO `log` VALUES ('2794', '00', 'UserLoginServiceImpl', 'add', '192', null, '2014-10-30 16:39:12');
INSERT INTO `log` VALUES ('2795', '00', 'UserLoginServiceImpl', 'add', '48', null, '2014-10-30 18:57:50');

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('2', '1', '管理员', 'admin', '管理系统权限');
INSERT INTO `ly_role` VALUES ('3', '1', '普通角色', 'simple', '普通角色');
INSERT INTO `ly_role` VALUES ('4', '1', '根账号', 'root', '拥有所有权限1');

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '0', '系统基础管理');
INSERT INTO `resources` VALUES ('2', '账号管理', '1', 'account', '1', '/background/account/list.html', '1', '账号管理');
INSERT INTO `resources` VALUES ('3', '角色管理', '1', 'role', '1', '/background/role/list.html', '5', '角色管理');
INSERT INTO `resources` VALUES ('4', '菜单管理', '1', 'resources', '1', '/background/resources/list.html', '10', '菜单查询');
INSERT INTO `resources` VALUES ('5', '新增账号', '2', 'account_add', '2', '/background/account/addUI.html', '2', '新增账号');
INSERT INTO `resources` VALUES ('6', '修改账号', '2', 'account_edit', '2', '/background/account/editUI.html', '3', '修改账号');
INSERT INTO `resources` VALUES ('7', '删除账号', '2', 'account_delete', '2', '/background/account/deleteById.html', '4', '删除账号');
INSERT INTO `resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/background/role/addUI.html', '6', '部门/科组的新增');
INSERT INTO `resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/background/role/editUI.html', '7', '部门/科组的修改');
INSERT INTO `resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/background/role/delete.html', '8', '部门/科组的删除');
INSERT INTO `resources` VALUES ('11', '角色授权', '3', 'role_perss', '2', '/background/menu/permissions.html', '9', '菜单授权');
INSERT INTO `resources` VALUES ('12', '数据字典管理', '0', 'dic_manager', '0', 'dic_manager', '22', '数据字典管理');
INSERT INTO `resources` VALUES ('13', '字典类型', '12', 'dic_type', '1', '/background/dicType/list.html', '26', '字典类型');
INSERT INTO `resources` VALUES ('14', '字典维护', '12', 'dic', '1', '/background/dic/list.html', '23', '字典维护');
INSERT INTO `resources` VALUES ('16', '修改字典', '14', 'dic_edit', '2', '/background/dic/editUI.html', '24', '修改字典');
INSERT INTO `resources` VALUES ('17', '删除字典', '14', 'dic_delete', '2', '/background/dic/delete.html', '25', '删除字典');
INSERT INTO `resources` VALUES ('18', '新增字典类型', '13', 'dicType_add', '2', '/background/dicType/addUI.html', '27', '新增字典类型');
INSERT INTO `resources` VALUES ('19', '修改字典类型', '13', 'dicType_edit', '2', '/background/dicType/editUI.html', '28', '修改字典类型');
INSERT INTO `resources` VALUES ('20', '删除字典类型', '13', 'dicType_delete', '2', '/background/dicType/delete.html', '29', '删除字典类型');
INSERT INTO `resources` VALUES ('31', '服务器配置管理', '0', 'server', '0', 'server', '14', '服务器配置管理');
INSERT INTO `resources` VALUES ('32', '预警设置', '31', 'ser_warn', '1', '/background/serverInfo/forecast.html', '15', '预警设置');
INSERT INTO `resources` VALUES ('33', '状态列表', '31', 'ser_list', '1', '/background/serverInfo/list.html', '16', '状态列表');
INSERT INTO `resources` VALUES ('34', '服务器状态', '31', 'ser_statu', '1', '/background/serverInfo/show.html', '17', '服务器状态');
INSERT INTO `resources` VALUES ('35', '登陆信息管理', '0', 'login', '0', 'login', '18', '登陆信息管理');
INSERT INTO `resources` VALUES ('36', '用户登录记录', '35', 'log_list', '1', '/background/userLoginList/query.html', '19', '用户登录记录');
INSERT INTO `resources` VALUES ('37', '操作日志管理', '0', 'log', '0', 'log', '20', '操作日志管理');
INSERT INTO `resources` VALUES ('38', '日志查询', '37', 'log', '1', '/background/log/list.html', '21', '日志查询');
INSERT INTO `resources` VALUES ('39', '新增菜单资源', '4', 'resources_add', '2', '/background/resources/addUI.html', '11', '新增菜单资源');
INSERT INTO `resources` VALUES ('40', '修改菜单资源', '4', 'resources_edit', '2', '/background/resources/editUI.html', '12', '修改菜单资源');
INSERT INTO `resources` VALUES ('41', '删除菜单资源', '4', 'resources_delete', '2', '/background/resources/delete.html', '13', '删除菜单资源');

-- ----------------------------
-- Table structure for res_roles
-- ----------------------------
DROP TABLE IF EXISTS `res_roles`;
CREATE TABLE `res_roles` (
  `role_id` int(11) NOT NULL,
  `resc_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_roles
-- ----------------------------
INSERT INTO `res_roles` VALUES ('4', '1');
INSERT INTO `res_roles` VALUES ('4', '2');
INSERT INTO `res_roles` VALUES ('4', '3');
INSERT INTO `res_roles` VALUES ('4', '4');
INSERT INTO `res_roles` VALUES ('4', '5');
INSERT INTO `res_roles` VALUES ('4', '6');
INSERT INTO `res_roles` VALUES ('4', '7');
INSERT INTO `res_roles` VALUES ('4', '8');
INSERT INTO `res_roles` VALUES ('4', '9');
INSERT INTO `res_roles` VALUES ('4', '10');
INSERT INTO `res_roles` VALUES ('4', '11');
INSERT INTO `res_roles` VALUES ('4', '12');
INSERT INTO `res_roles` VALUES ('4', '13');
INSERT INTO `res_roles` VALUES ('4', '14');
INSERT INTO `res_roles` VALUES ('4', '16');
INSERT INTO `res_roles` VALUES ('4', '17');
INSERT INTO `res_roles` VALUES ('4', '18');
INSERT INTO `res_roles` VALUES ('4', '19');
INSERT INTO `res_roles` VALUES ('4', '20');
INSERT INTO `res_roles` VALUES ('4', '31');
INSERT INTO `res_roles` VALUES ('4', '32');
INSERT INTO `res_roles` VALUES ('4', '33');
INSERT INTO `res_roles` VALUES ('4', '34');
INSERT INTO `res_roles` VALUES ('4', '35');
INSERT INTO `res_roles` VALUES ('4', '36');
INSERT INTO `res_roles` VALUES ('4', '37');
INSERT INTO `res_roles` VALUES ('4', '38');
INSERT INTO `res_roles` VALUES ('4', '39');
INSERT INTO `res_roles` VALUES ('4', '40');
INSERT INTO `res_roles` VALUES ('4', '41');

-- ----------------------------
-- Table structure for server_info
-- ----------------------------
DROP TABLE IF EXISTS `server_info`;
CREATE TABLE `server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server_info
-- ----------------------------
INSERT INTO `server_info` VALUES ('10', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('11', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('12', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('13', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('14', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('15', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('16', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('17', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('18', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('19', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('21', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('31', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('41', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `server_info` VALUES ('51', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');

-- ----------------------------
-- Table structure for userloginlist
-- ----------------------------
DROP TABLE IF EXISTS `userloginlist`;
CREATE TABLE `userloginlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userloginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userloginlist
-- ----------------------------
INSERT INTO `userloginlist` VALUES ('1', '1', 'root', '2014-05-23 16:26:05', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('2', '1', 'root', '2014-05-23 16:51:27', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('3', '1', 'root', '2014-05-23 17:29:26', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('4', '1', 'root', '2014-05-24 23:24:19', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('5', '1', 'root', '2014-05-25 01:26:48', '115.231.107.51');
INSERT INTO `userloginlist` VALUES ('6', '1', 'root', '2014-05-25 09:35:24', '112.90.231.38');
INSERT INTO `userloginlist` VALUES ('7', '1', 'root', '2014-05-25 10:17:13', '58.253.216.230');
INSERT INTO `userloginlist` VALUES ('8', '1', 'root', '2014-05-25 23:15:03', '112.90.231.36');
INSERT INTO `userloginlist` VALUES ('9', '1', 'root', '2014-05-25 23:15:57', '112.94.196.150');
INSERT INTO `userloginlist` VALUES ('10', '1', 'root', '2014-05-26 08:55:30', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('11', '1', 'root', '2014-05-26 13:11:51', '125.46.146.58');
INSERT INTO `userloginlist` VALUES ('12', '1', 'root', '2014-05-26 14:11:30', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('13', '1', 'root', '2014-05-27 15:47:48', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('14', '1', 'root', '2014-05-28 09:37:34', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('15', '1', 'root', '2014-05-29 18:40:32', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('16', '1', 'root', '2014-05-30 10:55:34', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('17', '1', 'root', '2014-05-30 11:26:57', '183.233.189.114');
INSERT INTO `userloginlist` VALUES ('18', '1', 'root', '2014-06-08 09:51:30', '58.254.168.29');
INSERT INTO `userloginlist` VALUES ('19', '1', 'root', '2014-06-08 10:13:07', '36.251.188.137');
INSERT INTO `userloginlist` VALUES ('20', '1', 'root', '2014-06-08 11:25:40', '58.254.168.29');
INSERT INTO `userloginlist` VALUES ('21', '1', 'root', '2014-06-08 13:31:16', '180.169.9.130');
INSERT INTO `userloginlist` VALUES ('22', '1', 'root', '2014-06-08 13:35:39', '36.251.188.137');
INSERT INTO `userloginlist` VALUES ('23', '1', 'root', '2014-06-08 13:38:35', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('24', '35', 'lanyuan', '2014-06-08 13:41:39', '116.234.99.133');
INSERT INTO `userloginlist` VALUES ('25', '1', 'root', '2014-06-08 14:35:39', '60.55.42.44');
INSERT INTO `userloginlist` VALUES ('26', '1', 'root', '2014-06-08 14:35:42', '218.88.6.114');
INSERT INTO `userloginlist` VALUES ('27', '1', 'root', '2014-06-08 14:46:33', '58.20.233.115');
INSERT INTO `userloginlist` VALUES ('28', '1', 'root', '2014-06-08 15:08:13', '58.251.229.52');
INSERT INTO `userloginlist` VALUES ('29', '1', 'root', '2014-06-08 15:17:02', '221.223.238.232');
INSERT INTO `userloginlist` VALUES ('30', '1', 'root', '2014-06-08 15:36:04', '58.249.67.196');
INSERT INTO `userloginlist` VALUES ('31', '1', 'root', '2014-06-08 15:46:58', '59.42.9.212');
INSERT INTO `userloginlist` VALUES ('32', '1', 'root', '2014-06-08 15:58:13', '221.238.82.210');
INSERT INTO `userloginlist` VALUES ('33', '1', 'root', '2014-06-08 17:05:34', '58.20.233.115');
INSERT INTO `userloginlist` VALUES ('34', '1', 'root', '2014-06-08 17:10:59', '222.128.184.174');
INSERT INTO `userloginlist` VALUES ('35', '1', 'root', '2014-06-08 18:32:20', '114.82.60.227');
INSERT INTO `userloginlist` VALUES ('36', '1', 'root', '2014-06-08 18:48:58', '58.254.168.29');
INSERT INTO `userloginlist` VALUES ('37', '1', 'root', '2014-06-08 18:51:57', '58.48.17.219');
INSERT INTO `userloginlist` VALUES ('38', '35', 'lanyuan', '2014-06-08 19:00:41', '58.20.238.211');
INSERT INTO `userloginlist` VALUES ('39', '1', 'root', '2014-06-08 19:02:17', '111.204.254.35');
INSERT INTO `userloginlist` VALUES ('40', '1', 'root', '2014-06-08 19:57:06', '139.206.5.244');
INSERT INTO `userloginlist` VALUES ('41', '1', 'root', '2014-06-08 20:32:55', '118.249.45.149');
INSERT INTO `userloginlist` VALUES ('42', '1', 'root', '2014-06-08 20:46:35', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('43', '1', 'root', '2014-06-08 20:47:24', '58.48.17.219');
INSERT INTO `userloginlist` VALUES ('44', '1', 'root', '2014-06-08 23:33:53', '36.251.188.137');
INSERT INTO `userloginlist` VALUES ('45', '1', 'root', '2014-06-09 08:39:08', '218.19.190.244');
INSERT INTO `userloginlist` VALUES ('46', '1', 'root', '2014-06-09 08:55:16', '118.144.130.194');
INSERT INTO `userloginlist` VALUES ('47', '1', 'root', '2014-06-09 09:23:45', '118.144.130.194');
INSERT INTO `userloginlist` VALUES ('48', '1', 'root', '2014-06-09 09:25:39', '183.32.167.219');
INSERT INTO `userloginlist` VALUES ('49', '1', 'root', '2014-06-09 09:27:04', '183.32.167.219');
INSERT INTO `userloginlist` VALUES ('50', '1', 'root', '2014-06-09 09:56:19', '58.251.146.199');
INSERT INTO `userloginlist` VALUES ('51', '1', 'root', '2014-06-09 10:16:42', '202.118.67.226');
INSERT INTO `userloginlist` VALUES ('52', '1', 'root', '2014-06-09 10:51:09', '106.38.250.220');
INSERT INTO `userloginlist` VALUES ('53', '1', 'root', '2014-06-09 10:51:09', '106.38.250.220');
INSERT INTO `userloginlist` VALUES ('54', '1', 'root', '2014-06-09 14:21:16', '183.37.220.113');
INSERT INTO `userloginlist` VALUES ('55', '1', 'root', '2014-06-09 14:24:52', '183.37.220.113');
INSERT INTO `userloginlist` VALUES ('56', '1', 'root', '2014-06-09 19:34:34', '222.161.208.41');
INSERT INTO `userloginlist` VALUES ('57', '1', 'root', '2014-06-10 08:04:35', '125.120.230.193');
INSERT INTO `userloginlist` VALUES ('58', '1', 'root', '2014-06-10 08:11:39', '58.20.49.162');
INSERT INTO `userloginlist` VALUES ('59', '1', 'root', '2014-06-10 09:02:01', '111.20.101.114');
INSERT INTO `userloginlist` VALUES ('60', '1', 'root', '2014-06-10 09:16:48', '182.148.112.217');
INSERT INTO `userloginlist` VALUES ('61', '33', 'admin', '2014-06-10 09:19:53', '182.148.112.217');
INSERT INTO `userloginlist` VALUES ('62', '1', 'root', '2014-06-10 09:53:19', '222.129.50.16');
INSERT INTO `userloginlist` VALUES ('63', '1', 'root', '2014-06-10 11:30:45', '123.235.17.134');
INSERT INTO `userloginlist` VALUES ('64', '1', 'root', '2014-06-10 12:40:59', '112.112.17.170');
INSERT INTO `userloginlist` VALUES ('65', '1', 'root', '2014-06-10 13:46:59', '101.95.114.210');
INSERT INTO `userloginlist` VALUES ('66', '33', 'admin', '2014-06-10 14:30:11', '124.207.116.226');
INSERT INTO `userloginlist` VALUES ('67', '1', 'root', '2014-06-10 14:40:47', '118.186.2.176');
INSERT INTO `userloginlist` VALUES ('68', '33', 'admin', '2014-06-10 16:18:08', '115.152.68.151');
INSERT INTO `userloginlist` VALUES ('69', '1', 'root', '2014-06-10 16:36:09', '218.88.110.36');
INSERT INTO `userloginlist` VALUES ('70', '1', 'root', '2014-06-11 09:34:29', '221.123.160.249');
INSERT INTO `userloginlist` VALUES ('71', '1', 'root', '2014-06-11 11:04:56', '221.123.160.250');
INSERT INTO `userloginlist` VALUES ('72', '1', 'root', '2014-06-11 11:34:23', '221.123.160.250');
INSERT INTO `userloginlist` VALUES ('73', '1', 'root', '2014-06-11 12:13:51', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('74', '1', 'root', '2014-06-11 12:45:55', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('75', '33', 'admin', '2014-06-11 12:54:59', '110.184.139.165');
INSERT INTO `userloginlist` VALUES ('76', '35', 'lanyuan', '2014-06-11 16:01:58', '202.114.47.61');
INSERT INTO `userloginlist` VALUES ('77', '1', 'root', '2014-06-11 22:14:45', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('78', '1', 'root', '2014-06-11 22:43:57', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('79', '1', 'root', '2014-06-11 22:43:58', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('80', '1', 'root', '2014-06-12 11:57:58', '222.221.222.219');
INSERT INTO `userloginlist` VALUES ('81', '33', 'admin', '2014-06-12 17:47:00', '61.183.207.250');
INSERT INTO `userloginlist` VALUES ('82', '35', 'lanyuan', '2014-06-12 20:09:50', '1.30.213.223');
INSERT INTO `userloginlist` VALUES ('83', '35', 'lanyuan', '2014-06-12 21:21:08', '1.30.213.223');
INSERT INTO `userloginlist` VALUES ('84', '1', 'root', '2014-06-12 21:26:16', '183.247.11.167');
INSERT INTO `userloginlist` VALUES ('85', '35', 'lanyuan', '2014-06-12 22:15:43', '1.30.213.223');
INSERT INTO `userloginlist` VALUES ('86', '35', 'lanyuan', '2014-06-13 08:26:22', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('87', '35', 'lanyuan', '2014-06-13 08:36:45', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('88', '35', 'lanyuan', '2014-06-13 08:41:48', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('89', '35', 'lanyuan', '2014-06-13 08:54:56', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('90', '35', 'lanyuan', '2014-06-13 09:42:58', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('91', '1', 'root', '2014-06-13 09:49:43', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('92', '1', 'root', '2014-06-13 09:51:24', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('93', '1', 'root', '2014-06-13 09:51:49', '202.99.241.163');
INSERT INTO `userloginlist` VALUES ('94', '1', 'root', '2014-06-13 09:51:57', '202.99.241.165');
INSERT INTO `userloginlist` VALUES ('95', '1', 'root', '2014-06-13 09:52:47', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('96', '1', 'root', '2014-06-13 10:19:50', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('97', '35', 'lanyuan', '2014-06-13 11:37:21', '222.185.143.75');
INSERT INTO `userloginlist` VALUES ('98', '1', 'root', '2014-06-13 14:21:18', '203.88.36.67');
INSERT INTO `userloginlist` VALUES ('99', '1', 'root', '2014-06-13 15:19:09', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('100', '1', 'root', '2014-06-13 15:24:46', '1.28.193.143');
INSERT INTO `userloginlist` VALUES ('101', '1', 'root', '2014-06-13 15:29:45', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('102', '1', 'root', '2014-06-13 15:38:16', '202.99.241.164');
INSERT INTO `userloginlist` VALUES ('103', '1', 'root', '2014-06-13 15:38:23', '119.40.54.82');
INSERT INTO `userloginlist` VALUES ('104', '1', 'root', '2014-06-13 15:39:24', '110.184.139.165');
INSERT INTO `userloginlist` VALUES ('105', '1', 'root', '2014-06-13 15:40:11', '202.118.67.226');
INSERT INTO `userloginlist` VALUES ('106', '1', 'root', '2014-06-13 15:41:10', '114.242.14.218');
INSERT INTO `userloginlist` VALUES ('107', '1', 'root', '2014-06-14 12:00:13', '124.160.216.54');
INSERT INTO `userloginlist` VALUES ('108', '1', 'root', '2014-06-14 21:27:44', '113.103.67.195');
INSERT INTO `userloginlist` VALUES ('109', '1', 'root', '2014-06-15 08:02:30', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('110', '1', 'root', '2014-06-15 08:02:44', '120.82.94.166');
INSERT INTO `userloginlist` VALUES ('111', '33', 'admin', '2014-06-15 08:10:23', '111.161.17.65');
INSERT INTO `userloginlist` VALUES ('112', '1', 'root', '2014-06-15 09:32:35', '123.114.139.185');
INSERT INTO `userloginlist` VALUES ('113', '1', 'root', '2014-06-15 09:36:26', '123.114.139.185');
INSERT INTO `userloginlist` VALUES ('114', '1', 'root', '2014-06-16 10:20:08', '218.29.231.254');
INSERT INTO `userloginlist` VALUES ('115', '1', 'root', '2014-06-16 12:13:26', '211.142.27.46');
INSERT INTO `userloginlist` VALUES ('116', '1', 'root', '2014-06-16 12:52:29', '183.248.177.87');
INSERT INTO `userloginlist` VALUES ('117', '1', 'root', '2014-06-16 20:58:55', '183.16.164.175');
INSERT INTO `userloginlist` VALUES ('118', '1', 'root', '2014-06-16 22:22:06', '110.19.38.104');
INSERT INTO `userloginlist` VALUES ('119', '33', 'admin', '2014-06-17 08:42:18', '123.116.90.13');
INSERT INTO `userloginlist` VALUES ('120', '1', 'root', '2014-06-17 08:48:22', '218.19.190.244');
INSERT INTO `userloginlist` VALUES ('121', '1', 'root', '2014-06-17 08:49:18', '106.120.122.130');
INSERT INTO `userloginlist` VALUES ('122', '1', 'root', '2014-06-17 09:12:01', '183.248.177.87');
INSERT INTO `userloginlist` VALUES ('123', '33', 'admin', '2014-06-17 09:21:36', '58.17.241.32');
INSERT INTO `userloginlist` VALUES ('124', '1', 'root', '2014-06-17 09:26:28', '61.154.14.122');
INSERT INTO `userloginlist` VALUES ('125', '33', 'admin', '2014-06-17 09:26:58', '101.95.114.210');
INSERT INTO `userloginlist` VALUES ('126', '33', 'admin', '2014-06-17 09:28:02', '106.37.187.134');
INSERT INTO `userloginlist` VALUES ('127', '33', 'admin', '2014-06-17 09:28:11', '183.3.209.216');
INSERT INTO `userloginlist` VALUES ('128', '33', 'admin', '2014-06-17 09:30:03', '183.3.209.216');
INSERT INTO `userloginlist` VALUES ('129', '1', 'root', '2014-06-17 09:53:19', '61.148.243.148');
INSERT INTO `userloginlist` VALUES ('130', '1', 'root', '2014-06-17 09:54:40', '61.148.243.148');
INSERT INTO `userloginlist` VALUES ('131', '1', 'root', '2014-06-17 09:55:32', '61.148.243.148');
INSERT INTO `userloginlist` VALUES ('132', '1', 'root', '2014-06-17 09:55:32', '61.148.243.148');
INSERT INTO `userloginlist` VALUES ('133', '1', 'root', '2014-06-17 11:14:22', '221.123.160.250');
INSERT INTO `userloginlist` VALUES ('134', '1', 'root', '2014-06-17 12:50:55', '211.97.15.158');
INSERT INTO `userloginlist` VALUES ('135', '1', 'root', '2014-06-17 13:32:41', '210.56.193.18');
INSERT INTO `userloginlist` VALUES ('136', '1', 'root', '2014-06-17 13:53:19', '183.32.178.216');
INSERT INTO `userloginlist` VALUES ('137', '1', 'root', '2014-06-17 14:08:58', '203.88.36.67');
INSERT INTO `userloginlist` VALUES ('138', '1', 'root', '2014-06-17 14:30:18', '118.144.130.194');
INSERT INTO `userloginlist` VALUES ('139', '1', 'root', '2014-06-17 14:30:18', '118.144.130.194');
INSERT INTO `userloginlist` VALUES ('140', '1', 'root', '2014-06-19 10:20:07', '202.99.241.161');
INSERT INTO `userloginlist` VALUES ('141', '1', 'root', '2014-06-19 10:22:55', '113.200.66.114');
INSERT INTO `userloginlist` VALUES ('142', '1', 'root', '2014-06-20 10:04:36', '218.80.246.2');
INSERT INTO `userloginlist` VALUES ('143', '1', 'root', '2014-06-20 11:21:37', '218.80.246.2');
INSERT INTO `userloginlist` VALUES ('144', '1', 'root', '2014-06-20 12:53:53', '218.80.246.2');
INSERT INTO `userloginlist` VALUES ('145', '1', 'root', '2014-06-20 17:04:42', '221.179.161.83');
INSERT INTO `userloginlist` VALUES ('146', '1', 'root', '2014-06-20 17:12:48', '58.211.183.162');
INSERT INTO `userloginlist` VALUES ('147', '1', 'root', '2014-06-21 13:35:57', '59.252.178.4');
INSERT INTO `userloginlist` VALUES ('148', '1', 'root', '2014-06-22 11:33:47', '124.202.190.87');
INSERT INTO `userloginlist` VALUES ('149', '1', 'root', '2014-06-22 16:28:39', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('150', '1', 'root', '2014-06-22 16:28:42', '14.150.166.23');
INSERT INTO `userloginlist` VALUES ('151', '1', 'root', '2014-06-22 16:34:24', '123.122.155.200');
INSERT INTO `userloginlist` VALUES ('152', '1', 'root', '2014-06-22 16:40:52', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('153', '1', 'root', '2014-06-22 16:45:33', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('154', '1', 'root', '2014-06-22 16:54:56', '183.247.7.189');
INSERT INTO `userloginlist` VALUES ('155', '1', 'root', '2014-06-22 16:56:57', '183.247.7.189');
INSERT INTO `userloginlist` VALUES ('156', '35', 'lanyuan', '2014-06-22 16:57:05', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('157', '1', 'root', '2014-06-22 17:05:24', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('158', '1', 'root', '2014-06-22 17:21:32', '118.114.86.146');
INSERT INTO `userloginlist` VALUES ('159', '1', 'root', '2014-06-22 17:40:28', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('160', '1', 'root', '2014-06-22 17:44:40', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('161', '1', 'root', '2014-06-22 17:47:41', '123.122.155.200');
INSERT INTO `userloginlist` VALUES ('162', '1', 'root', '2014-06-22 17:47:41', '123.122.155.200');
INSERT INTO `userloginlist` VALUES ('163', '1', 'root', '2014-06-22 17:47:42', '112.5.237.248');
INSERT INTO `userloginlist` VALUES ('164', '1', 'root', '2014-07-14 13:48:51', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('165', '1', 'root', '2014-07-14 14:13:59', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('166', '1', 'root', '2014-07-14 14:21:47', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('167', '1', 'root', '2014-07-15 18:28:52', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('168', '1', 'root', '2014-07-26 11:24:18', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('169', '1', 'root', '2014-07-26 11:42:18', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('170', '1', 'root', '2014-07-26 11:48:37', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('171', '1', 'root', '2014-07-26 11:55:36', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('172', '1', 'root', '2014-07-26 12:04:00', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('173', '1', 'root', '2014-07-26 12:04:38', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('174', '1', 'root', '2014-07-26 12:15:39', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('175', '1', 'root', '2014-07-26 14:27:30', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('176', '1', 'root', '2014-07-27 20:50:39', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('177', '1', 'root', '2014-10-21 10:24:05', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('178', '1', 'root', '2014-10-21 10:33:13', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('179', '1', 'root', '2014-10-21 10:38:56', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('180', '1', 'root', '2014-10-21 16:11:31', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('181', '1', 'root', '2014-10-21 18:01:58', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('182', '1', 'root', '2014-10-29 14:33:16', null);
INSERT INTO `userloginlist` VALUES ('183', '1', 'root', '2014-10-29 20:12:08', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('184', '1', 'root', '2014-10-29 20:15:42', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('185', '1', 'root', '2014-10-29 20:17:58', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('186', '33', '00', '2014-10-29 20:19:54', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('187', '1', 'root', '2014-10-30 09:51:27', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('188', '33', '00', '2014-10-30 09:52:06', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('189', '33', '00', '2014-10-30 10:14:52', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('190', '33', '00', '2014-10-30 10:15:30', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('191', '33', '00', '2014-10-30 10:20:23', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('192', '33', '00', '2014-10-30 10:24:50', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('193', '33', '00', '2014-10-30 10:39:17', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('194', '33', '00', '2014-10-30 11:06:11', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('195', '33', '00', '2014-10-30 11:12:55', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('196', '33', '00', '2014-10-30 16:39:11', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('197', '33', '00', '2014-10-30 18:57:50', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('198', '1', 'root', '2014-11-12 09:45:36', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('199', '1', 'root', '2014-11-12 09:57:57', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('200', '1', 'root', '2014-11-12 11:22:00', '127.0.0.1');
INSERT INTO `userloginlist` VALUES ('201', '1', 'root', '2014-11-12 12:24:31', '0:0:0:0:0:0:0:1');
INSERT INTO `userloginlist` VALUES ('202', '1', 'root', '2014-11-12 12:26:49', '0:0:0:0:0:0:0:1');
INSERT INTO `userloginlist` VALUES ('203', '1', 'root', '2014-11-12 12:28:33', '0:0:0:0:0:0:0:1');
INSERT INTO `userloginlist` VALUES ('204', '1', 'root', '2014-11-12 12:32:02', '0:0:0:0:0:0:0:1');
INSERT INTO `userloginlist` VALUES ('205', '1', 'root', '2014-11-17 11:08:30', '0:0:0:0:0:0:0:1');
