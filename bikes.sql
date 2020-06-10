/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : bikes

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-06-10 09:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` date DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '疫情影响发货时间', '尊敬的网上书城用户， 　　<br>\r\n　　为了让大家有更好的购物体验，3月25日起，当日达业务关小黑屋回炉升级！<br>具体开放时间请留意公告，感谢大家的支持与理解，祝大家购物愉快！<br>\r\n3月23日<br>\r\n传智播客 网上书城系统管理部<br>', '2020-05-11');
INSERT INTO `notice` VALUES ('2', '年货礼包兑换时间通知', '尊敬的网上书城用户：\r\n    非常抱歉，因为年后部分供应商工厂开工较晚，导致个别商品到货延迟。\r\n    基于此，15年年货礼包的兑换入口会延期到3月17日，请您在有效期内完成兑换。\r\n    以下礼包预计本周四，即3月12日到货。造成不便深表歉意，敬请谅解。', '2016-01-11');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `o_id` bigint(100) NOT NULL,
  `p_id` bigint(100) NOT NULL,
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`,`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('2', '12', '1');
INSERT INTO `orderitem` VALUES ('3', '3', '2');
INSERT INTO `orderitem` VALUES ('3', '9', '1');
INSERT INTO `orderitem` VALUES ('4', '7', '1');
INSERT INTO `orderitem` VALUES ('5', '4', '1');
INSERT INTO `orderitem` VALUES ('5', '14', '1');
INSERT INTO `orderitem` VALUES ('9', '2', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `o_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(20) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '18', '111', 'user', '15899999999', '1', '2020-06-04 06:00:47', '2');
INSERT INTO `orders` VALUES ('3', '26', '111', 'user', '15899999999', '1', '2020-06-04 06:03:49', '2');
INSERT INTO `orders` VALUES ('4', '44.5', 'ddwwq', 'user', '15899992222', '1', '2020-06-04 06:04:17', '2');
INSERT INTO `orders` VALUES ('5', '54', 'test', 'user', '15899992223', '1', '2020-06-04 06:35:11', '2');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `p_id` bigint(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(40) NOT NULL,
  `pnum` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'TCR ADV SL 18 DISC', '60', '山地车', '70', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('2', 'TCR ADV SL 17 DISC', '20', '公路车', '11', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('3', 'TCR ADV SL 16 DISC', '25', '软尾速降', '5', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('4', 'TCR ADV SL 15 DISC', '54', '电动车', '198', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('5', 'TCR ADV SL 14 DISC', '42', '电动车', '200', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('6', 'TCR ADV SL 13 DISC', '59', '电动车', '94', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('7', 'TCR ADV SL 12 DISC', '44.5', '电动车', '7', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('8', 'TCR ADV SL 11 DISC', '89', '软尾速降', '47', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('9', 'TCR ADV SL 10 DISC', '26', '软尾速降', '100', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('10', 'TCR ADV SL 9 DISC', '44.5', '软尾速降', '100', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('11', 'TCR ADV SL 8 DISC', '26', '山地车', '196', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('12', 'TCR ADV SL 7 DISC', '18', '山地车', '2', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('13', 'TCR ADV SL 6 DISC', '25', '山地车', '8', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('14', 'TCR ADV SL 5 DISC', '20', '公路车', '19', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('15', 'TCR ADV SL 4 DISC', '35', '公路车', '96', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('16', 'TCR ADV SL 3 DISC', '145', '公路车', '98', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('17', 'TCR ADV SL 2 DISC', '54', '公路车', '299', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('18', 'TCR ADV SL 1 DISC', '250', '山地车', '17', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR\r\n');
INSERT INTO `products` VALUES ('19', 'TCR ADV SL 0 DISC', '3999', '公路车', '999', '/productImg/bikes.jpg', 'NEW TCR 传骑，来自持续超越经典 只有TCR，能超越TCR');
INSERT INTO `products` VALUES ('25', 'test', '1', 'test', '1', '', 'test');
INSERT INTO `products` VALUES ('26', 'testte', '1111', 'test', '111', '/productImg/f2ecfb0f-e3fd-4f36-a014-f4dd6327861f.jpg', 'twtt');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `identity` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', 'admin', '1', '19', '2001-01-05 00:00:00', '2020-05-19 19:09:55', '1');
INSERT INTO `tb_user` VALUES ('2', 'user', 'user', 'user', '0', '-1', '2020-06-26 00:00:00', '2020-05-18 05:18:16', '0');
