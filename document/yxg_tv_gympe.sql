/*
 Navicat Premium Data Transfer

 Source Server         : tabtu
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : yxg_tv_gympe

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 02/09/2018 18:28:52 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tv_athlete`
-- ----------------------------
DROP TABLE IF EXISTS `tv_athlete`;
CREATE TABLE `tv_athlete` (
  `athlete_id` int(11) NOT NULL AUTO_INCREMENT,
  `communication` smallint(6) NOT NULL,
  `focus_level` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `physical` smallint(6) NOT NULL,
  `psychological` smallint(6) NOT NULL,
  `team_spirit` smallint(6) NOT NULL,
  `technical` smallint(6) NOT NULL,
  `weight` smallint(6) NOT NULL,
  PRIMARY KEY (`athlete_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_athlete`
-- ----------------------------
BEGIN;
INSERT INTO `tv_athlete` VALUES ('1', '2', '4', '165', '9', '4', '7', '5', '49');
COMMIT;

-- ----------------------------
--  Table structure for `tv_athlete_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_athlete_club`;
CREATE TABLE `tv_athlete_club` (
  `athlete_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  KEY `FK6m2j7tj2f6r976cqs5ollfakp` (`club_id`),
  KEY `FKpjfwsi664imey35j78x0781ym` (`athlete_id`),
  CONSTRAINT `FK6m2j7tj2f6r976cqs5ollfakp` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`club_id`),
  CONSTRAINT `FKpjfwsi664imey35j78x0781ym` FOREIGN KEY (`athlete_id`) REFERENCES `tv_athlete` (`athlete_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_athlete_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_athlete_club` VALUES ('1', '4'), ('1', '3');
COMMIT;

-- ----------------------------
--  Table structure for `tv_category`
-- ----------------------------
DROP TABLE IF EXISTS `tv_category`;
CREATE TABLE `tv_category` (
  `cate_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` smallint(6) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_category`
-- ----------------------------
BEGIN;
INSERT INTO `tv_category` VALUES ('1', '综合', '0'), ('2', '球类', '0'), ('3', '棋牌', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tv_city`
-- ----------------------------
DROP TABLE IF EXISTS `tv_city`;
CREATE TABLE `tv_city` (
  `city_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` smallint(6) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_city`
-- ----------------------------
BEGIN;
INSERT INTO `tv_city` VALUES ('1', '贵阳', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tv_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_club`;
CREATE TABLE `tv_club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `is_school` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `sort` smallint(6) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `club_district` int(11) DEFAULT NULL,
  PRIMARY KEY (`club_id`),
  KEY `FK9s3krkkuj07el69euv0h0r0a6` (`club_district`),
  CONSTRAINT `FK9s3krkkuj07el69euv0h0r0a6` FOREIGN KEY (`club_district`) REFERENCES `tv_district` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_club` VALUES ('1', '金仓路5号', '2018-02-09 17:15:40', null, b'1', '贵阳实验二中', null, '0', '(0851)86622267', '2018-02-09 17:16:16', '1'), ('2', '中华北路100号', '2018-02-09 17:16:35', null, b'1', '贵阳七中中北校区', null, '1', '(0851)86504014', '2018-02-09 17:16:49', '1'), ('3', '北京路27号', '2018-02-09 17:17:14', null, b'0', '贵阳海伦青少年篮球俱乐部', null, '0', null, '2018-02-09 17:17:36', '1'), ('4', '体育运动训练馆', '2018-02-09 17:18:36', null, b'0', '贵州米丘青少年体育运动俱乐部', null, '1', null, '2018-02-09 17:18:41', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_coach`
-- ----------------------------
DROP TABLE IF EXISTS `tv_coach`;
CREATE TABLE `tv_coach` (
  `coach_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_coach`
-- ----------------------------
BEGIN;
INSERT INTO `tv_coach` VALUES ('1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_coach_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_coach_club`;
CREATE TABLE `tv_coach_club` (
  `coach_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  KEY `FKd2lyvayhc0d8mnwhqmwks96f1` (`club_id`),
  KEY `FKo4vi5fqxsqxblx9acqi8eqhel` (`coach_id`),
  CONSTRAINT `FKd2lyvayhc0d8mnwhqmwks96f1` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`club_id`),
  CONSTRAINT `FKo4vi5fqxsqxblx9acqi8eqhel` FOREIGN KEY (`coach_id`) REFERENCES `tv_coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_coach_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_coach_club` VALUES ('1', '1'), ('1', '3');
COMMIT;

-- ----------------------------
--  Table structure for `tv_district`
-- ----------------------------
DROP TABLE IF EXISTS `tv_district`;
CREATE TABLE `tv_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` smallint(6) NOT NULL,
  `district_city` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  KEY `FK8e5rl3fp3tmi318cofdan4r9w` (`district_city`),
  CONSTRAINT `FK8e5rl3fp3tmi318cofdan4r9w` FOREIGN KEY (`district_city`) REFERENCES `tv_city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_district`
-- ----------------------------
BEGIN;
INSERT INTO `tv_district` VALUES ('1', '云岩区', '0', '1'), ('2', '南明区', '1', '1'), ('3', '花溪区', '2', '1'), ('4', '乌当区', '3', '1'), ('5', '白云区', '4', '1'), ('6', '观山湖区', '5', '1'), ('7', '贵安新区', '6', '1'), ('8', '开阳县', '7', '1'), ('9', '息烽县', '8', '1'), ('10', '修文县', '9', '1'), ('11', '清镇市', '10', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_interest`
-- ----------------------------
DROP TABLE IF EXISTS `tv_interest`;
CREATE TABLE `tv_interest` (
  `interest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rate` int(11) DEFAULT NULL,
  `interest_sport` smallint(6) DEFAULT NULL,
  `interest_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`interest_id`),
  KEY `FKa3k2khshgyohg3pe6tny3sf0k` (`interest_sport`),
  KEY `FKekide5gcd2mfksky3tt28lx1e` (`interest_user`),
  CONSTRAINT `FKa3k2khshgyohg3pe6tny3sf0k` FOREIGN KEY (`interest_sport`) REFERENCES `tv_sport` (`sport_id`),
  CONSTRAINT `FKekide5gcd2mfksky3tt28lx1e` FOREIGN KEY (`interest_user`) REFERENCES `tv_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_log`
-- ----------------------------
DROP TABLE IF EXISTS `tv_log`;
CREATE TABLE `tv_log` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `lgtime` datetime NOT NULL,
  `operation` varchar(255) NOT NULL,
  `lg_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`logid`),
  KEY `FK6ud1k450cwiid0vklmm79qrrk` (`lg_user`),
  CONSTRAINT `FK6ud1k450cwiid0vklmm79qrrk` FOREIGN KEY (`lg_user`) REFERENCES `tv_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_message`
-- ----------------------------
DROP TABLE IF EXISTS `tv_message`;
CREATE TABLE `tv_message` (
  `receiver` bigint(20) NOT NULL,
  `receivetime` datetime NOT NULL,
  `sender` bigint(20) NOT NULL,
  `sendtime` datetime NOT NULL,
  `isread` bit(1) NOT NULL,
  `text` text,
  PRIMARY KEY (`receiver`,`receivetime`,`sender`,`sendtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_news`
-- ----------------------------
DROP TABLE IF EXISTS `tv_news`;
CREATE TABLE `tv_news` (
  `news_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` text,
  `title` varchar(255) NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `tv_qualification`;
CREATE TABLE `tv_qualification` (
  `qualification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_qualification`
-- ----------------------------
BEGIN;
INSERT INTO `tv_qualification` VALUES ('1', '贵阳市教练资格证', null);
COMMIT;

-- ----------------------------
--  Table structure for `tv_referee`
-- ----------------------------
DROP TABLE IF EXISTS `tv_referee`;
CREATE TABLE `tv_referee` (
  `referee_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`referee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_referee`
-- ----------------------------
BEGIN;
INSERT INTO `tv_referee` VALUES ('1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_referee_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_referee_club`;
CREATE TABLE `tv_referee_club` (
  `referee_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  KEY `FK8eyk8pwg619n7onk6paetvtxa` (`club_id`),
  KEY `FK5c6ot5df0cfruxueqpmpuks7f` (`referee_id`),
  CONSTRAINT `FK5c6ot5df0cfruxueqpmpuks7f` FOREIGN KEY (`referee_id`) REFERENCES `tv_referee` (`referee_id`),
  CONSTRAINT `FK8eyk8pwg619n7onk6paetvtxa` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_referee_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_referee_club` VALUES ('1', '2'), ('1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_referee_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `tv_referee_qualification`;
CREATE TABLE `tv_referee_qualification` (
  `referee_id` int(11) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  KEY `FK8fywryfl17ch3l67jomc2421x` (`club_id`),
  KEY `FK4diij5s55ed174fkxcmv3mmoa` (`referee_id`),
  CONSTRAINT `FK4diij5s55ed174fkxcmv3mmoa` FOREIGN KEY (`referee_id`) REFERENCES `tv_referee` (`referee_id`),
  CONSTRAINT `FK8fywryfl17ch3l67jomc2421x` FOREIGN KEY (`club_id`) REFERENCES `tv_qualification` (`qualification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_referee_qualification`
-- ----------------------------
BEGIN;
INSERT INTO `tv_referee_qualification` VALUES ('1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_sport`
-- ----------------------------
DROP TABLE IF EXISTS `tv_sport`;
CREATE TABLE `tv_sport` (
  `sport_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` smallint(6) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `sport_category` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`sport_id`),
  UNIQUE KEY `UK_h6vgpgh78ohmgsk0x9qe12h9m` (`name`),
  KEY `FKhbnwi3wasdtuv65aggx2r48pv` (`sport_category`),
  CONSTRAINT `FKhbnwi3wasdtuv65aggx2r48pv` FOREIGN KEY (`sport_category`) REFERENCES `tv_category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_sport`
-- ----------------------------
BEGIN;
INSERT INTO `tv_sport` VALUES ('1', '中长跑', 'running', '0', 'tv_running', '1'), ('2', '足球', 'soccer', '0', 'tv_soccer', '2'), ('3', '篮球', 'basketball', '0', 'tv_basketball', '2'), ('4', '网球', 'tennis', '0', 'tv_tennis', '2'), ('5', '射击', 'shotting', '0', 'tv_shotting', '1'), ('6', '竞走', 'walking', '0', 'tv_walking', '1'), ('7', '游泳', 'swimming', '0', 'tv_swimming', '2'), ('8', '射箭', 'archery', '0', 'tv_archery', '1'), ('9', '摔跤', 'wrestling', '0', 'tv_wrestling', '1'), ('10', '短跨', 'sprinter', '0', 'tv_sprinter', '1'), ('11', '乒乓球', 'tabletennis', '0', 'tv_tabletennis', '2'), ('12', '高尔夫', 'golf', '0', 'tv_golf', '2'), ('13', '羽毛球', 'badminton', '0', 'tv_badminton', '2'), ('14', '国际象棋', 'chess', '0', 'tv_chess', '3'), ('15', '中国象棋', 'chinesechess', '0', 'tv_chinesechess', '3'), ('16', '围棋', 'weiqi', '0', 'tv_weiqi', '3');
COMMIT;

-- ----------------------------
--  Table structure for `tv_user`
-- ----------------------------
DROP TABLE IF EXISTS `tv_user`;
CREATE TABLE `tv_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birth` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `introduction` text,
  `last_modify_time` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_athlete` int(11) DEFAULT NULL,
  `user_coach` int(11) DEFAULT NULL,
  `user_referee` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_6y8fqd8enunuwu9uc08sul63` (`email`),
  UNIQUE KEY `UK_5c3cvrjy84wl8el0jxy90pnxq` (`username`),
  KEY `FK11yrfsbngy3c8ih535b38s4ah` (`user_athlete`),
  KEY `FKj7g835r7hroj5wn9nuyx1wmmq` (`user_coach`),
  KEY `FKqhkjtc3jovijykuxbyy4226r4` (`user_referee`),
  CONSTRAINT `FK11yrfsbngy3c8ih535b38s4ah` FOREIGN KEY (`user_athlete`) REFERENCES `tv_athlete` (`athlete_id`),
  CONSTRAINT `FK8bti0egrce05nn70jkw5qk75h` FOREIGN KEY (`user_referee`) REFERENCES `tv_coach` (`coach_id`),
  CONSTRAINT `FKj7g835r7hroj5wn9nuyx1wmmq` FOREIGN KEY (`user_coach`) REFERENCES `tv_coach` (`coach_id`),
  CONSTRAINT `FKqhkjtc3jovijykuxbyy4226r4` FOREIGN KEY (`user_referee`) REFERENCES `tv_referee` (`referee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_user`
-- ----------------------------
BEGIN;
INSERT INTO `tv_user` VALUES ('1', '1984-02-09 00:00:00', '2018-02-09 17:21:27', 'tml@qq.com', b'1', null, '2018-02-09 17:21:37', '唐曼丽', '123', 'tml.png', 'tml', '1', null, null), ('2', '1992-08-12 00:00:00', '2018-02-09 17:29:13', 'ccy@qq.com', b'1', null, '2018-02-09 17:29:42', '陈春燕', '123', null, 'ccy', null, '1', null), ('3', '1983-04-14 00:00:00', '2018-02-09 17:30:18', 'wsw@qq.com', b'1', null, '2018-02-09 17:30:35', '魏社委', '123', null, 'wsw', null, null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_user_sport`
-- ----------------------------
DROP TABLE IF EXISTS `tv_user_sport`;
CREATE TABLE `tv_user_sport` (
  `user_id` bigint(20) NOT NULL,
  `sport_id` smallint(6) NOT NULL,
  KEY `FK2kofbmwd9hxdp74hsi3s4hdet` (`sport_id`),
  KEY `FKkexk2ckuh2hxvbt2tajx9i2jg` (`user_id`),
  CONSTRAINT `FK2kofbmwd9hxdp74hsi3s4hdet` FOREIGN KEY (`sport_id`) REFERENCES `tv_sport` (`sport_id`),
  CONSTRAINT `FKkexk2ckuh2hxvbt2tajx9i2jg` FOREIGN KEY (`user_id`) REFERENCES `tv_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_user_sport`
-- ----------------------------
BEGIN;
INSERT INTO `tv_user_sport` VALUES ('1', '1'), ('1', '12'), ('2', '4'), ('2', '9'), ('2', '8'), ('3', '4');
COMMIT;

-- ----------------------------
--  Table structure for `tv_venues`
-- ----------------------------
DROP TABLE IF EXISTS `tv_venues`;
CREATE TABLE `tv_venues` (
  `venue_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `venues_district` int(11) DEFAULT NULL,
  PRIMARY KEY (`venue_id`),
  KEY `FK15m21l5ghfa2mphbmi4qtaabj` (`venues_district`),
  CONSTRAINT `FK15m21l5ghfa2mphbmi4qtaabj` FOREIGN KEY (`venues_district`) REFERENCES `tv_district` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_venues`
-- ----------------------------
BEGIN;
INSERT INTO `tv_venues` VALUES ('2', '北京路27号', '2018-02-09 17:10:07', '六广门体育场', null, '1'), ('3', '宝山北路116号', '2018-02-09 17:11:29', '师大体育活动中心', '(0851)86726111', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_vnews`
-- ----------------------------
DROP TABLE IF EXISTS `tv_vnews`;
CREATE TABLE `tv_vnews` (
  `vnews_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `picture` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `update_date` datetime NOT NULL,
  `vnews_venues` int(11) DEFAULT NULL,
  PRIMARY KEY (`vnews_id`),
  KEY `FKc142gbrlya43ot47sf7tge303` (`vnews_venues`),
  CONSTRAINT `FKc142gbrlya43ot47sf7tge303` FOREIGN KEY (`vnews_venues`) REFERENCES `tv_venues` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
