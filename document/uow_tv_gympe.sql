/*
 Navicat Premium Data Transfer

 Source Server         : tabtu
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : uow_tv_gympe

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 03/27/2018 21:14:10 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tv_activity`
-- ----------------------------
DROP TABLE IF EXISTS `tv_activity`;
CREATE TABLE `tv_activity` (
  `id` varchar(255) NOT NULL,
  `content` text,
  `count` int(11) NOT NULL,
  `enddate` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `startdate` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `avaliable` bit(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_activity`
-- ----------------------------
BEGIN;
INSERT INTO `tv_activity` VALUES ('40288087618c5f6501618c5f7b200000', 'njmmp', '300', '2018-03-27 00:28:17', '003.jpg', '54.23', '2018-03-24 00:28:29', 'Downtown Basketball Match', b'1', '9'), ('40288087618c5f6501618c5f7b200012', 'awoeignaowignoin', '40', '2018-03-24 00:29:06', '10612 Sport images19.jpg', '346.23', '2018-02-24 00:29:14', 'Tennis Competition', b'1', '1'), ('40288087618c5f6501618c5f7b200043', 'awrgawgserh', '200', '2018-03-07 00:29:40', 'Boring sport illustrative.jpg', '21.32', '2018-02-28 00:29:54', 'Windsor Public School Football Competition', b'1', '4'), ('40288087618c5f6501618c5f7b200074', null, '100', '2018-02-27 00:29:40', 'cogfunding1-1200x675.jpg', '0', '2018-02-21 00:29:54', 'Outdoor Club Party', b'1', '0'), ('40288087618c5f6501618c5f7b200105', null, '55', '2018-03-17 00:29:40', 'fh_hero_1024x684.jpg', '13.55', '2018-03-08 00:29:54', 'Camping Group', b'1', '0'), ('40288087618c5f6501618c5f7b200136', null, '80', '2018-03-27 00:28:17', 'jonny-wilkinson.JPG', '20.22', '2018-03-21 00:28:29', 'Fire Alarm System Reporting', b'1', '0'), ('40288087618c5f6501618c5f7b200167', null, '11', '2018-03-07 00:29:40', 'r0_9_1017_583_w1200_h678_fmax.jpg', '15.11', '2018-03-28 00:29:54', 'Riverside Walking Competition', b'1', '0'), ('40288087618c5f6501618c5f7b200198', null, '76', '2018-02-24 00:29:06', 'rROHYUm8aAXdjCzzW2GreZ5h2WDAUrkToUxd0kCcAO0ZXC8rQrroSO9oDV6JW9wWDz5XDb7q0w3sBG4aXjyagPgkS3xoW25Y1xEaTM8n-E2uUnQ.jpg', '15', '2018-03-24 00:28:29', 'Indoor Tennis Party', b'1', '0'), ('40288087618c5f6501618c5f7b200229', null, '12', '2018-02-24 00:29:06', 'sportsrec_signoff_fitness_tracker_activity_tracker-1.jpg', '100', '2018-02-28 00:29:54', 'Red Wine Sale', b'1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tv_activity_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_activity_club`;
CREATE TABLE `tv_activity_club` (
  `activity_id` varchar(255) NOT NULL,
  `club_id` int(11) NOT NULL,
  KEY `FKrl6yv0igwbwvuck07fhe6js5i` (`club_id`),
  KEY `FK4hsx2tle8rel8mbk55ia7j7e0` (`activity_id`),
  CONSTRAINT `FK4hsx2tle8rel8mbk55ia7j7e0` FOREIGN KEY (`activity_id`) REFERENCES `tv_activity` (`id`),
  CONSTRAINT `FKrl6yv0igwbwvuck07fhe6js5i` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_activity_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_activity_club` VALUES ('40288087618c5f6501618c5f7b200000', '2'), ('40288087618c5f6501618c5f7b200000', '5'), ('40288087618c5f6501618c5f7b200000', '10'), ('40288087618c5f6501618c5f7b200012', '2'), ('40288087618c5f6501618c5f7b200012', '1'), ('40288087618c5f6501618c5f7b200012', '11'), ('40288087618c5f6501618c5f7b200012', '9'), ('40288087618c5f6501618c5f7b200043', '2'), ('40288087618c5f6501618c5f7b200043', '6'), ('40288087618c5f6501618c5f7b200012', '20'), ('40288087618c5f6501618c5f7b200012', '2'), ('40288087618c5f6501618c5f7b200043', '3'), ('40288087618c5f6501618c5f7b200074', '4'), ('40288087618c5f6501618c5f7b200105', '5'), ('40288087618c5f6501618c5f7b200136', '6'), ('40288087618c5f6501618c5f7b200167', '7'), ('40288087618c5f6501618c5f7b200198', '8'), ('40288087618c5f6501618c5f7b200229', '9'), ('40288087618c5f6501618c5f7b200000', '10'), ('40288087618c5f6501618c5f7b200012', '11'), ('40288087618c5f6501618c5f7b200043', '12'), ('40288087618c5f6501618c5f7b200074', '13'), ('40288087618c5f6501618c5f7b200105', '14'), ('40288087618c5f6501618c5f7b200136', '15'), ('40288087618c5f6501618c5f7b200167', '16'), ('40288087618c5f6501618c5f7b200198', '17'), ('40288087618c5f6501618c5f7b200229', '18'), ('40288087618c5f6501618c5f7b200000', '19'), ('40288087618c5f6501618c5f7b200000', '11'), ('40288087618c5f6501618c5f7b200012', '13'), ('40288087618c5f6501618c5f7b200043', '15'), ('40288087618c5f6501618c5f7b200074', '16'), ('40288087618c5f6501618c5f7b200105', '17'), ('40288087618c5f6501618c5f7b200136', '18'), ('40288087618c5f6501618c5f7b200167', '19'), ('40288087618c5f6501618c5f7b200198', '20'), ('40288087618c5f6501618c5f7b200229', '1'), ('40288087618c5f6501618c5f7b200000', '2'), ('40288087618c5f6501618c5f7b200012', '3'), ('40288087618c5f6501618c5f7b200043', '4'), ('40288087618c5f6501618c5f7b200074', '5'), ('40288087618c5f6501618c5f7b200105', '6'), ('40288087618c5f6501618c5f7b200136', '7'), ('40288087618c5f6501618c5f7b200167', '8'), ('40288087618c5f6501618c5f7b200198', '9'), ('40288087618c5f6501618c5f7b200229', '10'), ('40288087618c5f6501618c5f7b200000', '11'), ('40288087618c5f6501618c5f7b200012', '12'), ('40288087618c5f6501618c5f7b200043', '13'), ('40288087618c5f6501618c5f7b200074', '14'), ('40288087618c5f6501618c5f7b200105', '15'), ('40288087618c5f6501618c5f7b200136', '16'), ('40288087618c5f6501618c5f7b200167', '17'), ('40288087618c5f6501618c5f7b200198', '18'), ('40288087618c5f6501618c5f7b200229', '19'), ('40288087618c5f6501618c5f7b200000', '20'), ('40288087618c5f6501618c5f7b200012', '1'), ('40288087618c5f6501618c5f7b200043', '2'), ('40288087618c5f6501618c5f7b200074', '3'), ('40288087618c5f6501618c5f7b200105', '4'), ('40288087618c5f6501618c5f7b200136', '5'), ('40288087618c5f6501618c5f7b200167', '6'), ('40288087618c5f6501618c5f7b200198', '7'), ('40288087618c5f6501618c5f7b200229', '8'), ('40288087618c5f6501618c5f7b200000', '9'), ('40288087618c5f6501618c5f7b200012', '10'), ('40288087618c5f6501618c5f7b200043', '11'), ('40288087618c5f6501618c5f7b200074', '12');
COMMIT;

-- ----------------------------
--  Table structure for `tv_activity_user`
-- ----------------------------
DROP TABLE IF EXISTS `tv_activity_user`;
CREATE TABLE `tv_activity_user` (
  `id` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ispaid` bit(1) NOT NULL,
  `pdate` datetime DEFAULT NULL,
  `acts_activity` varchar(255) DEFAULT NULL,
  `acts_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs5dt9sjtepmknqtpjw8gct9s5` (`acts_activity`),
  KEY `FKql3y377fwv5m8hiknq0q5wcwu` (`acts_user`),
  CONSTRAINT `FKql3y377fwv5m8hiknq0q5wcwu` FOREIGN KEY (`acts_user`) REFERENCES `tv_user` (`id`),
  CONSTRAINT `FKs5dt9sjtepmknqtpjw8gct9s5` FOREIGN KEY (`acts_activity`) REFERENCES `tv_activity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_activity_venue`
-- ----------------------------
DROP TABLE IF EXISTS `tv_activity_venue`;
CREATE TABLE `tv_activity_venue` (
  `activity_id` varchar(255) NOT NULL,
  `venue_id` int(11) NOT NULL,
  KEY `FKrkj9ct86tvljpaoweub5xx3tx` (`venue_id`),
  KEY `FKlpdu1pg0jbx8t2ngftcdr0fc4` (`activity_id`),
  CONSTRAINT `FKlpdu1pg0jbx8t2ngftcdr0fc4` FOREIGN KEY (`activity_id`) REFERENCES `tv_activity` (`id`),
  CONSTRAINT `FKrkj9ct86tvljpaoweub5xx3tx` FOREIGN KEY (`venue_id`) REFERENCES `tv_venue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_activity_venue`
-- ----------------------------
BEGIN;
INSERT INTO `tv_activity_venue` VALUES ('40288087618c5f6501618c5f7b200000', '1'), ('40288087618c5f6501618c5f7b200000', '2'), ('40288087618c5f6501618c5f7b200043', '3'), ('40288087618c5f6501618c5f7b200074', '4'), ('40288087618c5f6501618c5f7b200105', '5'), ('40288087618c5f6501618c5f7b200136', '6'), ('40288087618c5f6501618c5f7b200167', '7'), ('40288087618c5f6501618c5f7b200198', '8'), ('40288087618c5f6501618c5f7b200229', '9'), ('40288087618c5f6501618c5f7b200000', '10'), ('40288087618c5f6501618c5f7b200012', '11'), ('40288087618c5f6501618c5f7b200043', '12'), ('40288087618c5f6501618c5f7b200074', '13'), ('40288087618c5f6501618c5f7b200105', '14'), ('40288087618c5f6501618c5f7b200136', '15'), ('40288087618c5f6501618c5f7b200167', '16'), ('40288087618c5f6501618c5f7b200198', '17'), ('40288087618c5f6501618c5f7b200229', '18'), ('40288087618c5f6501618c5f7b200000', '19'), ('40288087618c5f6501618c5f7b200012', '20'), ('40288087618c5f6501618c5f7b200000', '15'), ('40288087618c5f6501618c5f7b200012', '16'), ('40288087618c5f6501618c5f7b200043', '17'), ('40288087618c5f6501618c5f7b200074', '18'), ('40288087618c5f6501618c5f7b200105', '19'), ('40288087618c5f6501618c5f7b200136', '20'), ('40288087618c5f6501618c5f7b200167', '1'), ('40288087618c5f6501618c5f7b200198', '2'), ('40288087618c5f6501618c5f7b200229', '3'), ('40288087618c5f6501618c5f7b200000', '4'), ('40288087618c5f6501618c5f7b200012', '5'), ('40288087618c5f6501618c5f7b200043', '6'), ('40288087618c5f6501618c5f7b200074', '7'), ('40288087618c5f6501618c5f7b200105', '8'), ('40288087618c5f6501618c5f7b200136', '9'), ('40288087618c5f6501618c5f7b200167', '10'), ('40288087618c5f6501618c5f7b200198', '11'), ('40288087618c5f6501618c5f7b200229', '12'), ('40288087618c5f6501618c5f7b200000', '13'), ('40288087618c5f6501618c5f7b200012', '14'), ('40288087618c5f6501618c5f7b200043', '15'), ('40288087618c5f6501618c5f7b200074', '16'), ('40288087618c5f6501618c5f7b200105', '17'), ('40288087618c5f6501618c5f7b200136', '18'), ('40288087618c5f6501618c5f7b200167', '19'), ('40288087618c5f6501618c5f7b200198', '20'), ('40288087618c5f6501618c5f7b200229', '1'), ('40288087618c5f6501618c5f7b200000', '2'), ('40288087618c5f6501618c5f7b200012', '3'), ('40288087618c5f6501618c5f7b200043', '4'), ('40288087618c5f6501618c5f7b200074', '5'), ('40288087618c5f6501618c5f7b200105', '6'), ('40288087618c5f6501618c5f7b200136', '7'), ('40288087618c5f6501618c5f7b200167', '8'), ('40288087618c5f6501618c5f7b200198', '9'), ('40288087618c5f6501618c5f7b200229', '10'), ('40288087618c5f6501618c5f7b200000', '11'), ('40288087618c5f6501618c5f7b200012', '12'), ('40288087618c5f6501618c5f7b200043', '13'), ('40288087618c5f6501618c5f7b200074', '14');
COMMIT;

-- ----------------------------
--  Table structure for `tv_athlete`
-- ----------------------------
DROP TABLE IF EXISTS `tv_athlete`;
CREATE TABLE `tv_athlete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `communication` int(11) NOT NULL,
  `gender` bit(1) NOT NULL,
  `height` int(11) NOT NULL,
  `physical` int(11) NOT NULL,
  `psychological` int(11) NOT NULL,
  `technical` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `focuslevel` int(11) NOT NULL,
  `teamspirit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_athlete`
-- ----------------------------
BEGIN;
INSERT INTO `tv_athlete` VALUES ('1', '4', b'0', '165', '5', '4', '4', '45', '3', '2'), ('2', '5', b'1', '171', '5', '5', '5', '55', '5', '5');
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
  CONSTRAINT `FK6m2j7tj2f6r976cqs5ollfakp` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`id`),
  CONSTRAINT `FKpjfwsi664imey35j78x0781ym` FOREIGN KEY (`athlete_id`) REFERENCES `tv_athlete` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_athlete_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_athlete_club` VALUES ('1', '3'), ('1', '2'), ('2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_category`
-- ----------------------------
DROP TABLE IF EXISTS `tv_category`;
CREATE TABLE `tv_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_category`
-- ----------------------------
BEGIN;
INSERT INTO `tv_category` VALUES ('1', '综合', '0'), ('2', '球类', '1'), ('3', '棋牌', '2');
COMMIT;

-- ----------------------------
--  Table structure for `tv_city`
-- ----------------------------
DROP TABLE IF EXISTS `tv_city`;
CREATE TABLE `tv_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_city`
-- ----------------------------
BEGIN;
INSERT INTO `tv_city` VALUES ('1', '贵阳', '0'), ('2', 'Windsor', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_club`;
CREATE TABLE `tv_club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `school` bit(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `updatedate` datetime NOT NULL,
  `club_district` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9s3krkkuj07el69euv0h0r0a6` (`club_district`),
  CONSTRAINT `FK9s3krkkuj07el69euv0h0r0a6` FOREIGN KEY (`club_district`) REFERENCES `tv_district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_club` VALUES ('1', '金仓路5号', '2018-02-09 17:15:40', 'It is also where new recruits will come for orientation and background processes went applying to the Detroit Police Department.', '贵阳实验二中', '10404307_859010977487239_1389906261434969559_n.jpg', b'1', '0', '0851-86622267', '2018-02-12 18:35:23', '1'), ('2', '中华北路100号', '2018-02-09 17:16:35', 'Republican or Democrat doesn\'t matter they are both mafias who should all be kicked out of office.', '贵阳七中中北校区', '88358311.jpg', b'1', '1', '{0851}86504014', '2018-02-12 18:35:23', '1'), ('3', '北京路27号', '2018-02-09 17:17:14', 'Perfect service! Best location!', '贵阳海伦青少年篮球俱乐部', 'A5a.jpg', b'0', '0', '(519) 253-3000', '2018-02-12 18:35:23', '1'), ('4', '体育运动训练馆', '2018-02-09 17:18:36', 'Maybe other people had a more positive experience than I had, but the woman who helped me was upright rude and very court with me.', '贵州米丘青少年体育运动俱乐部', 'burton_cummings_about.jpg', b'0', '1', '0851-86622267', '2018-02-12 18:35:23', '1'), ('5', '401 Sunset Ave, Windsor, ON N9B 3P4', '2018-02-20 23:25:41', 'She\'s pure garbage and talks out both sides of her mouth. I swear, anything you talk to this woman about is what YOU want to hear because your opinion doesn\'t matter with her. Can\'t wait for this toad to go back to her swamp.', 'University of Windsor', 'center-750x389.jpg', b'1', '0', '(519) 253-3000', '2018-02-20 23:26:57', '12'), ('6', '2555 College Ave, Windsor, ON N9B 2Z5', '2018-02-20 23:27:25', 'The amount was counted and confirmed and the money given back to me.', 'Human Kinetics', 'csm_Features_90_bd13915fad.jpg', b'1', '4', '(519) 254-4389', '2018-02-20 23:27:36', '12'), ('7', '1275 Campbell, Windsor, ON N9B 3M7', '2018-02-20 23:27:55', 'Senator Stabenow, are you voting the issues or party lines on the budget, immigration and shutdown?', 'West Gate Public School', 'HG_4_-_Credit_Bruce_Zinger_543_349_s_c1.jpg', b'1', '2', '(519) 252-7729', '2018-02-20 23:28:01', '12'), ('8', '811 Dougall Ave, Windsor, ON N9A 4R2', '2018-02-20 23:28:37', 'Republican or Democrat doesn\'t matter they are both mafias who should all be kicked out of office. Stabenow voted for the lying wars we are in now so she should be thrown out immediately as a war criminal.', 'Dougall Ave. Public School', 'IMG_0658-e1369675762465.jpg', b'1', '1', '(519) 254-4389', '2018-02-20 23:28:35', '12'), ('9', '775 Capitol St, Windsor, ON N8X 5E3', '2018-02-20 23:28:56', 'My parents\' first time in the States. ', 'Our Lady of Perpetual Help Catholic Elementary School', 'photo_ci_concerthall11.jpg.size-custom-crop.1086x0.jpg', b'1', '3', '(519) 966-1293', '2018-02-20 23:29:14', '12'), ('10', '1530 Langlois Ave, Windsor, ON N8X 4M2', '2018-02-20 23:30:11', 'No one cares about truck driver waiting in x ray 1 to 2 hour very slow and equipment too old never know anytime break down and ty shut down line don’t care about you been in line hours and hours. Don’t understand driver feeling treat you like like animals', 'Player\'s Sports Club', 'QeR7iHh4Nbd5RJsImro9KifsEtT8Ai9k-1024x768.jpg', b'0', '0', '(519) 256-6202', '2018-02-20 23:30:28', '12'), ('11', '2 Memorial Drive, Windsor, ON N8X 5C8', '2018-02-20 23:31:28', 'Super Pleasant people but none of their phone numbers work so you can\'t get a hold of them before you go to cross the border.', 'Windsor Lawn Bowling Club', 'RMG-0531-550x325.jpg', b'0', '1', '(519) 253-7860', '2018-02-20 23:31:26', '12'), ('12', 'RR 3 LCD 3, Windsor, ON N9A 6Z6', '2018-02-20 23:32:05', 'The border guard who takes care of costume/ blue eyed. Rudest border guard ever. ', 'Croatia Sport Club', 'venue_hire_new_0.JPG', b'1', '2', '(519) 966-1423\n(519) 966-1423', '2018-02-20 23:32:16', '14'), ('13', '780 Huron Church Rd, Windsor, ON N9C 2K2', '2018-02-20 23:32:05', 'I declared to the custom officers $10000 entering the US. I went into the office to count the money. The amount was counted and confirmed and the money given', 'Canada Border Services Agency', 'venue-2.jpg', b'0', '0', '(519) 254-4389', '2018-02-20 23:32:16', '12'), ('14', '4819 8th Concession Road, Maidstone, ON N0R 1K0', '2018-02-20 23:32:05', 'Old staffs there are very cold to the minorities but when a local customer approaches, they change their tunes immediately.', 'Senator Debbie Stabenow', 'venue-innsofbanff.jpg', b'0', '0', '(519) 253-7860', '2018-02-20 23:32:16', '14'), ('15', '378 Brock St, Windsor, ON N9C 5S7', '2018-02-20 23:32:05', 'Corrupt to the max! They don\'t fix the potholes in the roads. When your car gets damaged from their lack of road maintenance they don\'t want to pay up. Your tax payer dollars at work!', 'Windsor Jail', 'wedding-space.jpg', b'1', '0', '(519) 966-1423\r(519) 966-1423', '2018-02-20 23:32:16', '12'), ('16', ' 719 Griswold St #700, Detroit, MI 48226, USA', '2018-02-20 23:32:05', 'Well although only read it it three weeks ago I’ve been coming to the Public Safety headquarters for about three years now on and off. ', 'Michigan Department of Transportation', 'IMG_0658-e1369675762465.jpg', b'1', '0', '(519) 252-7729', '2018-02-20 23:32:16', '12'), ('17', 'Bank of Commerce Building, 100 Ouellette Ave #503, Windsor, ON N9A', '2018-02-20 23:32:05', 'There is not really an extensive search when you come into the building but you will have to take off all metal items and place them in a bucket as you walk through the metal detectors', 'Detroit Public Safety Headquarters', 'photo_ci_concerthall11.jpg.size-custom-crop.1086x0.jpg', b'1', '0', '(519) 966-1423\r(519) 966-1423', '2018-02-20 23:32:16', '12'), ('18', '1675 Wyandotte St W, Windsor, ON N9B 1H0', '2018-02-20 23:32:05', 'Worst homicide division ever! No return calls. ', 'South West Detention Centre', 'QeR7iHh4Nbd5RJsImro9KifsEtT8Ai9k-1024x768.jpg', b'1', '0', '(519) 252-7729', '2018-02-20 23:32:16', '12'), ('19', '719 Griswold St #700, Detroit, MI 48226, USA', '2018-02-20 23:32:05', 'Left numerous messages trying to find out about my daughters death from March 29', 'US Internal Revenue Service', 'RMG-0531-550x325.jpg', b'1', '0', '(519) 253-3000', '2018-02-20 23:32:16', '12'), ('20', '1060 W Fort St, Detroit, MI 48226, USA', '2018-02-20 23:32:05', 'No wonder Detroit is the way it is. Thanks for the support for a grieving mother!', 'Detroit City Hall', 'venue_hire_new_0.JPG', b'1', '0', '(519) 966-1293', '2018-02-20 23:32:16', '12');
COMMIT;

-- ----------------------------
--  Table structure for `tv_cnews`
-- ----------------------------
DROP TABLE IF EXISTS `tv_cnews`;
CREATE TABLE `tv_cnews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `cnews_club` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK98e6o5tfto4ft923p7my1ma0x` (`cnews_club`),
  CONSTRAINT `FK98e6o5tfto4ft923p7my1ma0x` FOREIGN KEY (`cnews_club`) REFERENCES `tv_club` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_cnews`
-- ----------------------------
BEGIN;
INSERT INTO `tv_cnews` VALUES ('1', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '1'), ('2', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '2'), ('3', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '3'), ('4', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '4'), ('5', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '5'), ('6', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '6'), ('7', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '7'), ('8', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '8'), ('9', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '9'), ('10', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '10'), ('11', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '11'), ('12', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '12'), ('13', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '13'), ('14', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '14'), ('15', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '15'), ('16', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '16'), ('17', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '17'), ('18', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '18'), ('19', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '19'), ('20', '1', '1', 'Created Profile', '2018-03-14 20:24:14', '20');
COMMIT;

-- ----------------------------
--  Table structure for `tv_coach`
-- ----------------------------
DROP TABLE IF EXISTS `tv_coach`;
CREATE TABLE `tv_coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_coach`
-- ----------------------------
BEGIN;
INSERT INTO `tv_coach` VALUES ('1'), ('2');
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
  CONSTRAINT `FKd2lyvayhc0d8mnwhqmwks96f1` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`id`),
  CONSTRAINT `FKo4vi5fqxsqxblx9acqi8eqhel` FOREIGN KEY (`coach_id`) REFERENCES `tv_coach` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_coach_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_coach_club` VALUES ('1', '1'), ('1', '4'), ('2', '1');
COMMIT;

-- ----------------------------
--  Table structure for `tv_district`
-- ----------------------------
DROP TABLE IF EXISTS `tv_district`;
CREATE TABLE `tv_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `district_city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8e5rl3fp3tmi318cofdan4r9w` (`district_city`),
  CONSTRAINT `FK8e5rl3fp3tmi318cofdan4r9w` FOREIGN KEY (`district_city`) REFERENCES `tv_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_district`
-- ----------------------------
BEGIN;
INSERT INTO `tv_district` VALUES ('1', '云岩区', '0', '1'), ('2', '南明区', '1', '1'), ('3', '花溪区', '2', '1'), ('4', '乌当区', '3', '1'), ('5', '白云区', '4', '1'), ('6', '观山湖区', '5', '1'), ('7', '贵安新区', '6', '1'), ('8', '开阳县', '7', '1'), ('9', '息烽县', '8', '1'), ('10', '修文县', '9', '1'), ('11', '清镇市', '10', '1'), ('12', 'Windsor', '0', '2'), ('13', 'Tecumseh', '1', '2'), ('14', 'LaSalle', '2', '2'), ('15', 'Essex', '4', '2'), ('16', 'Amherstburg', '5', '2'), ('17', 'Kingsville', '6', '2'), ('18', 'Leamington', '7', '2');
COMMIT;

-- ----------------------------
--  Table structure for `tv_interest`
-- ----------------------------
DROP TABLE IF EXISTS `tv_interest`;
CREATE TABLE `tv_interest` (
  `id` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `interest_sport` int(11) DEFAULT NULL,
  `interest_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa3k2khshgyohg3pe6tny3sf0k` (`interest_sport`),
  KEY `FKekide5gcd2mfksky3tt28lx1e` (`interest_user`),
  CONSTRAINT `FKa3k2khshgyohg3pe6tny3sf0k` FOREIGN KEY (`interest_sport`) REFERENCES `tv_sport` (`id`),
  CONSTRAINT `FKekide5gcd2mfksky3tt28lx1e` FOREIGN KEY (`interest_user`) REFERENCES `tv_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_log`
-- ----------------------------
DROP TABLE IF EXISTS `tv_log`;
CREATE TABLE `tv_log` (
  `id` varchar(255) NOT NULL,
  `lgtime` datetime NOT NULL,
  `operation` varchar(255) NOT NULL,
  `lg_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ud1k450cwiid0vklmm79qrrk` (`lg_user`),
  CONSTRAINT `FK6ud1k450cwiid0vklmm79qrrk` FOREIGN KEY (`lg_user`) REFERENCES `tv_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_message`
-- ----------------------------
DROP TABLE IF EXISTS `tv_message`;
CREATE TABLE `tv_message` (
  `receiver` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `sendtime` datetime NOT NULL,
  `isread` bit(1) NOT NULL,
  `text` text,
  `logtime` datetime DEFAULT NULL,
  PRIMARY KEY (`receiver`,`sender`,`sendtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_message`
-- ----------------------------
BEGIN;
INSERT INTO `tv_message` VALUES ('40288087618c5f6501618c5f7b200000', '40288087618c5f6501618c5f7b350003', '2018-02-20 18:27:57', b'0', 'abcdefg', '2018-02-20 18:27:57'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-20 18:28:33', b'0', 'abcdefg1234567', '2018-02-20 18:28:33'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 14:34:52', b'0', 'kkkk', '2018-02-23 14:34:52'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 14:34:58', b'0', 'kkkk', '2018-02-23 14:34:58'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 14:44:38', b'0', 'wobushizhu', '2018-02-23 14:44:38'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 14:58:04', b'0', 'ooookkkkkk', '2018-02-23 14:58:04'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:01:26', b'0', 'ninininini', '2018-02-23 15:01:26'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:02:32', b'0', '123456', '2018-02-23 15:02:32'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:18:36', b'0', 'sdsdsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', '2018-02-23 15:18:36'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:29:17', b'0', '11111111', '2018-02-23 15:29:17'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:31:37', b'0', '123456789', '2018-02-23 15:31:37'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:32:47', b'0', '2222222211', '2018-02-23 15:32:47'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:37:24', b'0', '222', '2018-02-23 15:37:24'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:38:52', b'0', '5555', '2018-02-23 15:38:52'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:40:28', b'0', '333', '2018-02-23 15:40:28'), ('40288087618c5f6501618c5f7b2c0001', '40288087618c5f6501618c5f7b350003', '2018-02-24 00:57:56', b'0', '455', '2018-02-24 00:57:56'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 14:42:55', b'0', 'nishizhuma', '2018-02-23 14:42:55'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:07:38', b'0', '6666666', '2018-02-23 15:07:38'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:12:30', b'0', '00000000000000000000000000000000000000000000000000000000000', '2018-02-23 15:12:30'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:19:52', b'0', '21', '2018-02-23 15:19:52'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:24:36', b'0', '223', '2018-02-23 15:24:36'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 15:30:25', b'0', '332212121', '2018-02-23 15:30:25'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 16:09:02', b'0', '444', '2018-02-23 16:09:02'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 16:11:03', b'0', '1', '2018-02-23 16:11:03'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 22:29:15', b'0', '123456', '2018-02-23 22:29:15'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 22:52:49', b'0', '333444555', '2018-02-23 22:52:49'), ('40288087618c5f6501618c5f7b300002', '40288087618c5f6501618c5f7b350003', '2018-02-23 22:54:27', b'0', 'llll', '2018-02-23 22:54:27'), ('40288087618c5f6501618c5f7b350003', '40288087618c5f6501618c5f7b350003', '2018-02-20 18:28:52', b'1', 'abcdefg1234567', '2018-02-20 18:28:52'), ('40288087618c5f6501618c5f7b350003', '40288087618c5f6501618c5f7b350003', '2018-02-23 23:09:04', b'1', '35', '2018-02-23 23:09:04'), ('40288087618c5f6501618c5f7b350003', '40288087618c5f6501618c5f7b350003', '2018-02-24 00:57:43', b'1', '2356', '2018-02-24 00:57:43'), ('40288087618c5f6501618c5f7b350003', '40288087618c5f6501618c5f7b350003', '2018-02-25 14:52:35', b'1', 'hdhsixhdv', '2018-02-25 14:52:35');
COMMIT;

-- ----------------------------
--  Table structure for `tv_news`
-- ----------------------------
DROP TABLE IF EXISTS `tv_news`;
CREATE TABLE `tv_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` text,
  `title` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `home` bit(1) NOT NULL,
  `news_city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcbexn8hqpqjr6g9orblmvm7vs` (`news_city`),
  CONSTRAINT `FKcbexn8hqpqjr6g9orblmvm7vs` FOREIGN KEY (`news_city`) REFERENCES `tv_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_news`
-- ----------------------------
BEGIN;
INSERT INTO `tv_news` VALUES ('9', 'Jupp Heynckes admitted Domagoj Vida\'s early dismissal was a key factor as Bayern Munich thrashed Besiktas 5-0 in the first leg of their Champions League last-16 tie on Tuesday.\n\nThomas Muller and Robert Lewandowski each scored twice for Bayern, while Kingsley Coman was also on target as their 14th successive win in all competitions moved Heynckes\' side to the brink of the quarter-finals for the seventh straight season.\n\nBesiktas went through the group stages unbeaten but their task in Bavaria became all the more difficult when last man Vida upended Lewandowski outside the box in the 16th minute.', 'Jupp Heynckes says Bayern Munich given helping hand by Besiktas red', '2018-02-20 23:39:27', 'Windsor Star', 'http://e0.365dm.com/18/02/16-9/20/skysports-bayern-munich-besiktas-thomas-muller_4236329.jpg?20180220210112', b'1', '1'), ('10', 'Nick Dougherty and Wayne Riley join Josh Antmann out on location for a special edition of the Sky Sports Golf podcast, coming to you from the Honda Classic at PGA National.\n\nThe trio discuss the big talking points from around the world of golf, in a week where Bubba Watson returned to the winner’s circle at the Genesis Open and Joost Luiten took the title in Oman.\n\nAfter the controversy of slow play returned during the final round at Riviera, the panel go through some of the possible options to speed up the sport and also share their views of golf ball technology.\n\nFowler claimed a four-shot win in last year\'s Honda Classic\nFowler claimed a four-shot win in last year\'s Honda Classic\nThe pundits reveal their picks for this week\'s event in Florida and the Commercial Bank Qatar Masters on the European Tour, as well as answer the best of the tweets sent into @SkySportsGolf.', 'Sky Sports Golf podcast: Slow play, modern courses and Honda preview', '2018-02-20 23:41:36', 'Sky Sports Golf', 'http://e0.365dm.com/17/07/16-9/20/skysports-sky-sports-golf-podcast-epic-callway_4004579.jpg?20170718124129', b'1', '1'), ('11', 'Bayern Munich equalled their longest winning streak with a 5-0 victory over 10-man Besiktas in the Champions League last-16 first leg at the Allianz Arena.\n\nA bright start by the Turkish side was halted when Domagoj Vida was sent off for bringing down Robert Lewandowski, but the visitors hung on until a minute from half-time as Thomas Muller slotted in from close range.\n\nBayern racked up 35 shots to Besiktas\' five and their dominance was reflected with goals in the second period, doubling their lead within seven minutes of the restart as Lewandowski played a lovely one-two with Muller before squaring for Kingsley Coman to sweep into the far corner.', 'Bayern Munich 5-0 Besiktas: Bayern cruise in Champions League last-16 first leg', '2018-02-20 23:42:35', 'Ron Walker', 'http://e1.365dm.com/18/02/16-9/20/skysports-robert-lewandowski-bayern-munich-besiktas_4236363.jpg?20180220213609', b'0', '1'), ('12', 'It was 2-0 Predators at 9:35 of the first. Josi’s wrist shot squeezed through the legs of Wings defenceman Niklas Kronwall and landed right in front of Nashville centre Kyle Turris, who tucked the puck past Howard. It was the first goal by Turris since Jan. 30, ending a nine-game drought.\n\n\nThe Red Wings got on the board at 10:12 of the second as Athanasiou slipped behind the Nashville defence, took a pass from Dylan Larkin and beat Saros with a stick-side deke move. It was Athanasiou’s first goal in 12 games.\n\nThe Predators increased their margin to 3-1 4:50 into the third period. The puck skipped over the stick of Wings defenceman Jonathan Ericsson, allowing Arvidsson to get in alone and snap a shot by Howard on the stick side.\n\nDetroit pulled within a goal at 7:54 of the third. From a goalmouth scramble, Tatar jammed a loose puck past Saros.\n\nNOTES: The Red Wings recalled G Jared Coreau from AHL Grand Rapids to replace G Petr Mrazek, traded Monday to Philadelphia. … Red Wings D Mike Green missed his third straight game due to an upper-body injury. … The Predators are 5-1-1 in the second game of back to backs this season.', 'Arvidsson lifts Predators to 3-2 win over Red Wings', '2018-02-20 23:43:55', 'Windsor Star', 'http://e2.365dm.com/18/02/16-9/20/skysports-ovrebo-chelsea-barcelona_4235047.jpg?20180219102345', b'0', '2'), ('13', 'The trio discussed Chelsea\'s 1-1 draw with Barcelona in the Champions League on Tuesday night and what the result means for Antonio Conte.\n\nThey also discussed Paul Pogba and whether the Manchester United midfielder should return for their Champions League clash with Sevilla on Wednesday.', 'LISTEN: The Debate - February 20: Ian Wright and Dennis Wise', '2018-02-20 23:45:45', null, 'http://e0.365dm.com/17/08/16-9/20/skysports-the-debate-show-page_4068765.jpg?20170808135637', b'0', '1'), ('14', 'Ernesto Valverde declared himself \"happy\" after Barcelona claimed a 1-1 draw at Chelsea in the first leg of their Champions League last-16 tie on Tuesday.\n\nBarca looked as though they were heading for defeat at Stamford Bridge after Willian struck the opening goal in the 62nd minute.\n\nBut Lionel Messi pounced on a mistake from Andreas Christensen to score an away goal for Barca with 15 minutes of the game remaining.\n\n', 'Ernesto Valverde says Barcelona goal \'significant\' in draw at Chelsea in Champions League', '2018-02-20 23:46:23', null, 'http://e2.365dm.com/18/02/16-9/20/skysports-luis-suarez-barcelona-chelsea-barcelona-suarez_4236456.jpg?20180220224435', b'0', '2'), ('15', 'The match finished 1-1 with an Andres Iniesta equaliser sending Barcelona to the final on away goals after a scoreless first tie at the Nou Camp.\n\nThe Norwegian official turned down four Chelsea penalty appeals on the night, the most contentious a Dani Alves foul on Florent Malouda in the penalty area which resulted in a free-kick outside the box, rather than a spot-kick.', 'Referee Tom Henning Ovrebo admits to errors in Chelsea vs Barcelona in 2009 Champions League', '2018-02-20 23:47:14', null, 'http://e2.365dm.com/18/02/16-9/20/skysports-ovrebo-chelsea-barcelona_4235047.jpg?20180219102345', b'1', '2'), ('16', 'Evans, who was one of four West Brom players to release a statement apologising for breaking a club curfew during their break in Barcelona this week, was still handed a starting berth at The Hawthorns.\n\nGareth Barry was the only other member of the quartet to start the match. Goalkeeper Boaz Myhill was named among West Brom\'s substitutes but Jake Livermore was absent due to injury.', 'Alan Pardew stripped Jonny Evans of West Brom captaincy to \'make a statement\'', '2018-02-20 23:47:56', 'Pete Hall at The Hawthorns', 'http://e0.365dm.com/18/02/16-9/20/skysports-jonny-evans-west-brom_4233793.jpg?20180217180958', b'1', '2'), ('17', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'Alan Pardew feels he is the right man to keep West Brom up', '2018-02-20 23:49:29', 'Tab', 'http://e2.365dm.com/18/02/16-9/20/skysports-alan-pardew-pardew-west-brom-west-brom_4233051.jpg?20180216171401', b'0', '1'), ('18', 'New Barnsley head coach Jose Morais lost his first game in charge as Burton won 2-1 at Oakwell with first-half goals from Jamie Allen and Jacob Davenport.\n\nBarnsley applied strong pressure in the second half but they were restricted to a solitary goal, scored by Daniel Pinillos. The result ended Burton\'s run of seven games without a win and saw them climb off the bottom of the Sky Bet Championship, going above Barnsley.\n\nAllen struck inside the first minute, beating goalkeeper Nick Townsend with a fine effort from around 25 yards. It was Allen\'s first goal for Burton since arriving from Rochdale in the summer.\n\nENGLISH CHAMPIONSHIP - WED 21, 19:45\nREQUEST-A-BET\nIPSWICH V CARDIFF\nCARDIFF TO SCORE 1+ GOALS AND 4+ CARDIFF CORNERS\n8/13\n3+ CORNERS EACH TEAM AND 10+ BOOKING POINTS EACH TEAM\n8/11\nOVER 1.5 GOALS AND 10+ BOOKING POINTS EACH TEAM\n10/11\n4+ CORNERS IN EACH HALF\n10/11\nOVER 1.5 GOALS AND 9+ MATCH CORNERS\n1/1\n1+ CORNERS EACH TEAM IN EACH HALF AND 10+ BOOKING POINTS EACH TEAM\n1/1\nIPSWICH TO SCORE 1+ GOALS AND 4+ IPSWICH CORNERS\n1/1\nBTTS AND 3+ CORNERS EACH TEAM\n6/4\nOVER 1.5 GOALS, 3+ CORNERS EACH TEAM AND 30+ MATCH BOOKING PTS\n7/4\n5+ CORNERS IN EACH HALF\n2/1\nCARDIFF TO SCORE 2+ GOALS AND 5+ CARDIFF CORNERS\n5/2\nOVER 2.5 GOALS, 8+ MATCH CORNERS AND 10+ BOOKING POINTS EACH TEAM\n5/2\nA GOAL IN EACH HALF AND 4+ CORNERS IN EACH HALF\n5/2\nBTTS AND 4+ CORNERS EACH TEAM\n11/4\nBTTS, 1+ CORNERS EACH TEAM IN EACH HALF AND 10+ BOOKING POINTS EACH TEAM\n3/1\nCARDIFF TO SCORE 2+ GOALS AND 20+ IPSWICH BOOKING PTS\n7/2\nCARDIFF TO WIN AND 7+ CARDIFF CORNERS\n9/2\nIPSWICH TO SCORE 2+ GOALS AND 20+ CARDIFF BOOKING PTS\n9/2\n4+ CORNERS EACH TEAM AND 20+ BOOKING POINTS EACH TEAM\n9/2\nBTTS AND 20+ BOOKING POINTS EACH TEAM\n9/2\nA GOAL IN EACH HALF AND 5+ CORNERS IN EACH HALF\n5/1\nCARDIFF TO SCORE 2+ GOALS AND 7+ CARDIFF CORNERS\n11/2\nIPSWICH TO SCORE 2+ GOALS AND 5+ IPSWICH CORNERS\n11/2\nCARDIFF TO SCORE 2+ GOALS, 5+ CARDIFF CORNERS AND 20+ IPSWICH BOOKING PTS\n6/1\nBTTS, 1+ CORNERS EACH TEAM IN EACH HALF AND 20+ BOOKING POINTS EACH TEAM\n15/2\n5+ CORNERS EACH TEAM AND 20+ BOOKING POINTS EACH TEAM\n8/1\n7+ IPSWICH CORNERS AND 30+ CARDIFF BOOKING POINTS\n9/1\n7+ CARDIFF CORNERS AND 30+ IPSWICH BOOKING POINTS\n9/1\nIPSWICH TO SCORE 2+ GOALS, 5+ IPSWICH CORNERS AND 20+ CARDIFF BOOKING PTS\n9/1\nBTTS, 4+ CORNERS EACH TEAM AND 20+ BOOKING POINTS EACH TEAM\n9/1\nIPSWICH TO SCORE 2+ GOALS AND 7+ IPSWICH CORNERS\n12/1\nBTTS, 5+ CORNERS EACH TEAM AND 20+ BOOKING POINTS EACH TEAM\n16/1\nIPSWICH TO WIN, BTTS ‐ NO AND 5+ CORNERS EACH TEAM\n16/1\nCARDIFF TO SCORE 3+ GOALS, 6+ CARDIFF CORNERS AND 20+ IPSWICH BOOKING PTS\n20/1\nBTTS, 2+ CORNERS EACH TEAM IN EACH HALF AND 20+ BOOKING POINTS EACH TEAM\n22/1\nCARDIFF TO WIN, BTTS, 12+ MATCH CORNERS AND 50+ MATCH BOOKING POINTS\n33/1\nIPSWICH TO SCORE 3+ GOALS, 6+ IPSWICH CORNERS AND 20+ CARDIFF BOOKING PTS\n40/1\nIPSWICH TO WIN, BTTS, 12+ MATCH CORNERS AND 50+ MATCH BOOKING POINTS\n50/1\n6+ CORNERS EACH TEAM AND 30+ BOOKING POINTS EACH TEAM\n50/1\nOVER 3.5 GOALS AND 7+ CORNERS EACH TEAM\n50/1\nOVER 4.5 GOALS, 15+ MATCH CORNERS AND 70+ MATCH BOOKING PTS\n400/1\n£10 FREE BET. NO DEPOSIT REQUIRED\n\n\nBurton\'s record signing Liam Boyce, who was making his full debut for the club, then shot wide following a Davenport free-kick. Barnsley\'s Joe Williams put a long-range effort wide after receiving the ball from Oliver McBurnie.\n\nWhen Barnsley skipper Andy Yiadom crossed the ball into area, aiming for the head of Liam Lindsay, goalkeeper Stephen Bywater was alert to the danger, safely gathering the ball.\n\nThere was a reprieve for the hosts when Hope Akpan handled the ball as he threatened to find a way through the centre of the Barnsley defence after being put through by Martin Samuelsen.\n\nBurton increased their lead in first-half stoppage time when Davenport floated his free-kick over the defensive wall and into the top left-hand corner of Townsend\'s net.\n\nMatt Mills had a shot blocked and Lucas Akins was forced to hack the ball clear in the box as Barnsley made a promising start to the second half. Bywater was then called into action, saving Adam Hammill\'s angled shot.\n\nAt the other end, a Davenport free-kick was met by Samuelsen, who headed over.\n\nBarnsley striker Tom Bradshaw was pulled back as he threatened to break clear through the centre with Tom Naylor perhaps fortunate to escape with a yellow card. The resulting free-kick, taken by Gary Gardner, was well saved by Bywater, diving to his right.\n\nWith Bywater off his line, Naylor then made a crucial block to divert McBurnie\'s goal-bound effort. Barnsley went close to scoring when Mamadou Thiam\'s corner was met by Mills whose header hit the bar.\n\nThe pressure applied by the home side paid off in the 75th minute when Yiadom played the ball to Pinillos whose low and driven effort beat Bywater with the aid of a deflection.\n\nBarnsley continued to press late on and had the ball in the net in stoppage time, but the effort was ruled out. They have now won just once in their last 18 outings and are without a win in seven games.\n\nThe managers\nJose Morais: \"It was a very good performance in the second half and I really believe that we\'re in a good direction and we will achieve what we want. There are players with quality enough to change the situation that we are in. The less good thing was that we conceded two goals in the first half. We gave space to the opponents and we weren\'t effective enough to have control and create chances in the first half.\n\n\"The first goal was a shot from distance which was difficult for the goalkeeper to save. It was hard for our boys to go into the break losing 2-0, but we changed our intentions and had more belief.\"\n\nBurton first-team coach Andy Garner: \"We deserved it tonight, especially with the first-half performance. We are absolutely delighted with the result. It was a game of two halves. We knew there would be a response in the second half and 45 minutes was a long time hanging in there. It was total bombardment, but thankfully we got the three points.\n\n\"Perhaps they were a little shocked at how well we played in the first 15 minutes. That\'s as good as we\'ve played for a long, long time. Ever since the Reading game, when we were diabolical, we\'ve put some good results together. We couldn\'t get any lower after the Reading game.\n\n\"There are a few in the mix at the bottom now. There are a few twitching, that\'s for sure.\"', 'Barnsley 1-2 Burton: Jose Morais loses first Tykes games', '2018-02-20 23:50:21', 'PA Sport', 'http://e2.365dm.com/18/02/16-9/20/skysports-ovrebo-chelsea-barcelona_4235047.jpg?20180219102345', b'0', '2');
COMMIT;

-- ----------------------------
--  Table structure for `tv_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `tv_qualification`;
CREATE TABLE `tv_qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_qualification`
-- ----------------------------
BEGIN;
INSERT INTO `tv_qualification` VALUES ('1', '贵州省特级裁判员', null);
COMMIT;

-- ----------------------------
--  Table structure for `tv_referee`
-- ----------------------------
DROP TABLE IF EXISTS `tv_referee`;
CREATE TABLE `tv_referee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_referee`
-- ----------------------------
BEGIN;
INSERT INTO `tv_referee` VALUES ('1'), ('2');
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
  CONSTRAINT `FK5c6ot5df0cfruxueqpmpuks7f` FOREIGN KEY (`referee_id`) REFERENCES `tv_referee` (`id`),
  CONSTRAINT `FK8eyk8pwg619n7onk6paetvtxa` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_referee_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_referee_club` VALUES ('1', '3'), ('1', '2'), ('2', '4');
COMMIT;

-- ----------------------------
--  Table structure for `tv_referee_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `tv_referee_qualification`;
CREATE TABLE `tv_referee_qualification` (
  `referee_id` int(11) NOT NULL,
  `qualification_id` int(11) NOT NULL,
  KEY `FK1g53xhc9rrbhg8ij0wqdas6tr` (`qualification_id`),
  KEY `FK4diij5s55ed174fkxcmv3mmoa` (`referee_id`),
  CONSTRAINT `FK1g53xhc9rrbhg8ij0wqdas6tr` FOREIGN KEY (`qualification_id`) REFERENCES `tv_qualification` (`id`),
  CONSTRAINT `FK4diij5s55ed174fkxcmv3mmoa` FOREIGN KEY (`referee_id`) REFERENCES `tv_referee` (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `sport_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h6vgpgh78ohmgsk0x9qe12h9m` (`name`),
  KEY `FKhbnwi3wasdtuv65aggx2r48pv` (`sport_category`),
  CONSTRAINT `FKhbnwi3wasdtuv65aggx2r48pv` FOREIGN KEY (`sport_category`) REFERENCES `tv_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_sport`
-- ----------------------------
BEGIN;
INSERT INTO `tv_sport` VALUES ('1', '中长跑', 'running', '100', 'tv_running', '1'), ('2', '足球', 'soccer', '201', 'tv_soccer', '2'), ('3', '篮球', 'basketball', '202', 'tv_basketball', '2'), ('4', '网球', 'tennis', '200', 'tv_tennis', '2'), ('5', '射击', 'shotting', '102', 'tv_shotting', '1'), ('6', '竞走', 'walking', '103', 'tv_walking', '1'), ('7', '游泳', 'swimming', '104', 'tv_swimming', '1'), ('8', '射箭', 'archery', '105', 'tv_archery', '1'), ('9', '摔跤', 'wrestling', '106', 'tv_wrestling', '1'), ('10', '短跨', 'sprinter', '107', 'tv_sprinter', '1'), ('11', '乒乓球', 'tabletennis', '203', 'tv_tabletennis', '2'), ('12', '高尔夫', 'golf', '204', 'tv_golf', '2'), ('13', '羽毛球', 'badminton', '205', 'tv_badminton', '2'), ('14', '国际象棋', 'chess', '301', 'tv_chess', '3'), ('15', '中国象棋', 'chinesechess', '300', 'tv_chinesechess', '3'), ('16', '围棋', 'weiqi', '302', 'tv_weiqi', '3'), ('17', '保龄球', 'bowling', '206', 'tv_bowling', '2');
COMMIT;

-- ----------------------------
--  Table structure for `tv_user`
-- ----------------------------
DROP TABLE IF EXISTS `tv_user`;
CREATE TABLE `tv_user` (
  `id` varchar(255) NOT NULL,
  `birth` datetime DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `gender` bit(1) NOT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_athlete` int(11) DEFAULT NULL,
  `user_coach` int(11) DEFAULT NULL,
  `user_referee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6y8fqd8enunuwu9uc08sul63` (`email`),
  UNIQUE KEY `UK_mrs2ax77g4fb3c2ebn5d8efp8` (`telephone`),
  UNIQUE KEY `UK_kpv49u2tam174agmm4dxbeps6` (`username`),
  KEY `FK11yrfsbngy3c8ih535b38s4ah` (`user_athlete`),
  KEY `FKj7g835r7hroj5wn9nuyx1wmmq` (`user_coach`),
  KEY `FKqhkjtc3jovijykuxbyy4226r4` (`user_referee`),
  CONSTRAINT `FK11yrfsbngy3c8ih535b38s4ah` FOREIGN KEY (`user_athlete`) REFERENCES `tv_athlete` (`id`),
  CONSTRAINT `FKj7g835r7hroj5wn9nuyx1wmmq` FOREIGN KEY (`user_coach`) REFERENCES `tv_coach` (`id`),
  CONSTRAINT `FKqhkjtc3jovijykuxbyy4226r4` FOREIGN KEY (`user_referee`) REFERENCES `tv_referee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_user`
-- ----------------------------
BEGIN;
INSERT INTO `tv_user` VALUES ('40288087618c5f6501618c5f7b200000', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '陈春燕', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'ccy', '1', null, null), ('40288087618c5f6501618c5f7b2c0001', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '唐曼丽', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'tml', null, '1', null), ('40288087618c5f6501618c5f7b300002', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '魏社委', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'wsw', null, null, '1'), ('40288087618c5f6501618c5f7b350003', '1989-02-05 00:00:00', '2018-02-12 18:35:23', 'i@tabtu.cn', b'1', b'0', '我就是我不同寻常的烟火', 'Tab Tu', 'c5f5e695f9cdcc340fbdaa5886b660e2', 'http://img1.imgtn.bdimg.com/it/u=1515168944,3919490421&fm=27&gp=0.jpg', '2265267799', '2018-02-12 18:35:23', 'tab', '2', '2', '2'), ('4028808761af90620161af944d330000', null, '2018-02-19 14:39:47', null, b'1', b'0', null, null, '3b9f75680314c6a00ec444636ee4283b', null, '18108510010', '2018-02-19 14:39:47', null, null, null, null), ('4028808761b4b9560161b4ca13f60000', null, '2018-02-20 14:56:38', null, b'1', b'0', null, null, 'c5f5e695f9cdcc340fbdaa5886b660e2', null, '1234', '2018-02-20 14:56:38', null, null, null, null), ('4028808761f3f8a80161f3f922d60000', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'David', '4028808761f3f8a80161f3f922d60000', null, null, '2018-03-04 21:24:06', 'david', null, null, null), ('4028808761f3f8a80161f3f923050001', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Aaron', '4028808761f3f8a80161f3f923050001', null, null, '2018-03-04 21:24:06', 'aaron', null, null, null), ('4028808761f3f8a80161f3f9230c0002', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Abbott', '4028808761f3f8a80161f3f9230c0002', null, null, '2018-03-04 21:24:06', 'abbott', null, null, null), ('4028808761f3f8a80161f3f923100003', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Leonard', '4028808761f3f8a80161f3f923100003', null, null, '2018-03-04 21:24:06', 'leonard', null, null, null), ('4028808761f3f8a80161f3f923140004', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Emma', '4028808761f3f8a80161f3f923140004', null, null, '2018-03-04 21:24:06', 'emma', null, null, null), ('4028808761f3f8a80161f3f923180005', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Gloria', '4028808761f3f8a80161f3f923180005', null, null, '2018-03-04 21:24:06', 'gloria', null, null, null), ('4028808761f3f8a80161f3f9231d0006', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Jessie', '4028808761f3f8a80161f3f9231d0006', null, null, '2018-03-04 21:24:06', 'jessie', null, null, null), ('4028808761f3f8a80161f3f923220007', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Anne', '4028808761f3f8a80161f3f923220007', null, null, '2018-03-04 21:24:06', 'anne', null, null, null), ('4028808761f3f8a80161f3f923260008', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Bella', '4028808761f3f8a80161f3f923260008', null, null, '2018-03-04 21:24:06', 'bella', null, null, null), ('4028808761f3f8a80161f3f9232b0009', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Sophia', '4028808761f3f8a80161f3f9232b0009', null, null, '2018-03-04 21:24:06', 'sophia', null, null, null), ('4028808761f3f8a80161f3f92330000a', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Lambert', '4028808761f3f8a80161f3f92330000a', null, null, '2018-03-04 21:24:06', 'lambert', null, null, null), ('4028808761f3f8a80161f3f92334000b', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Larson', '4028808761f3f8a80161f3f92334000b', null, null, '2018-03-04 21:24:06', 'larson', null, null, null), ('4028808761f3f8a80161f3f92337000c', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Lucas', '4028808761f3f8a80161f3f92337000c', null, null, '2018-03-04 21:24:06', 'lucas', null, null, null), ('4028808761f3f8a80161f3f9233b000d', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Liam', '4028808761f3f8a80161f3f9233b000d', null, null, '2018-03-04 21:24:06', 'liam', null, null, null), ('4028808761f3f8a80161f3f9233f000e', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Babur', '4028808761f3f8a80161f3f9233f000e', null, null, '2018-03-04 21:24:06', 'babur', null, null, null), ('4028808761f3f8a80161f3f92344000f', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Baker', '4028808761f3f8a80161f3f92344000f', null, null, '2018-03-04 21:24:06', 'baker', null, null, null), ('4028808761f3f8a80161f3f923480010', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Calvert', '4028808761f3f8a80161f3f923480010', null, null, '2018-03-04 21:24:06', 'calvert', null, null, null), ('4028808761f3f8a80161f3f9234c0011', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Campbell', '4028808761f3f8a80161f3f9234c0011', null, null, '2018-03-04 21:24:06', 'campbell', null, null, null), ('4028808761f3f8a80161f3f9234f0012', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Carson', '4028808761f3f8a80161f3f9234f0012', null, null, '2018-03-04 21:24:06', 'carlson', null, null, null), ('4028808761f3f8a80161f3f923530013', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Carroll', '4028808761f3f8a80161f3f923530013', null, null, '2018-03-04 21:24:06', 'carroll', null, null, null), ('4028808761f3f8a80161f3f923560014', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Daniel', '4028808761f3f8a80161f3f923560014', null, null, '2018-03-04 21:24:06', 'daniel', null, null, null), ('4028808761f3f8a80161f3f923590015', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Danny', '4028808761f3f8a80161f3f923590015', null, null, '2018-03-04 21:24:06', 'danny', null, null, null), ('4028808761f3f8a80161f3f9235d0016', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Farrar', '4028808761f3f8a80161f3f9235d0016', null, null, '2018-03-04 21:24:06', 'farrar', null, null, null), ('4028808761f3f8a80161f3f923600017', null, '2018-03-04 21:24:06', null, b'1', b'0', null, 'Felton', '4028808761f3f8a80161f3f923600017', null, null, '2018-03-04 21:24:06', 'felton', null, null, null), ('4028808761f3f8a80161f3f923640018', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Ferdinand', '4028808761f3f8a80161f3f923640018', null, null, '2018-03-04 21:24:07', 'ferdinand', null, null, null), ('4028808761f3f8a80161f3f923680019', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Halley', '4028808761f3f8a80161f3f923680019', null, null, '2018-03-04 21:24:07', 'halley', null, null, null), ('4028808761f3f8a80161f3f9236b001a', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Hank', '4028808761f3f8a80161f3f9236b001a', null, null, '2018-03-04 21:24:07', 'hank', null, null, null), ('4028808761f3f8a80161f3f9236f001b', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Hanson', '4028808761f3f8a80161f3f9236f001b', null, null, '2018-03-04 21:24:07', 'hanson', null, null, null), ('4028808761f3f8a80161f3f92372001c', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Hamilton', '4028808761f3f8a80161f3f92372001c', null, null, '2018-03-04 21:24:07', 'hamilton', null, null, null), ('4028808761f3f8a80161f3f92376001d', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Ivy', '4028808761f3f8a80161f3f92376001d', null, null, '2018-03-04 21:24:07', 'ivy', null, null, null), ('4028808761f3f8a80161f3f92379001e', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Jacoson', '4028808761f3f8a80161f3f92379001e', null, null, '2018-03-04 21:24:07', 'jackson', null, null, null), ('4028808761f3f8a80161f3f9237d001f', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Jake', '4028808761f3f8a80161f3f9237d001f', null, null, '2018-03-04 21:24:07', 'jake', null, null, null), ('4028808761f3f8a80161f3f923800020', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'James', '4028808761f3f8a80161f3f923800020', null, null, '2018-03-04 21:24:07', 'james', null, null, null), ('4028808761f3f8a80161f3f923840021', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Jarrett', '4028808761f3f8a80161f3f923840021', null, null, '2018-03-04 21:24:07', 'jarrett', null, null, null), ('4028808761f3f8a80161f3f923870022', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Ken', '4028808761f3f8a80161f3f923870022', null, null, '2018-03-04 21:24:07', 'ken', null, null, null), ('4028808761f3f8a80161f3f9238a0023', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Kendrick', '4028808761f3f8a80161f3f9238a0023', null, null, '2018-03-04 21:24:07', 'kendrick', null, null, null), ('4028808761f3f8a80161f3f9238d0024', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Mac', '4028808761f3f8a80161f3f9238d0024', null, null, '2018-03-04 21:24:07', 'mac', null, null, null), ('4028808761f3f8a80161f3f923910025', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Magee', '4028808761f3f8a80161f3f923910025', null, null, '2018-03-04 21:24:07', 'magee', null, null, null), ('4028808761f3f8a80161f3f923940026', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Malcom', '4028808761f3f8a80161f3f923940026', null, null, '2018-03-04 21:24:07', 'malcom', null, null, null), ('4028808761f3f8a80161f3f923970027', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Nash', '4028808761f3f8a80161f3f923970027', null, null, '2018-03-04 21:24:07', 'nash', null, null, null), ('4028808761f3f8a80161f3f9239a0028', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Nathaniel', '4028808761f3f8a80161f3f9239a0028', null, null, '2018-03-04 21:24:07', 'nathaniel', null, null, null), ('4028808761f3f8a80161f3f9239d0029', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Napoleon', '4028808761f3f8a80161f3f9239d0029', null, null, '2018-03-04 21:24:07', 'napoleon', null, null, null), ('4028808761f3f8a80161f3f923a1002a', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Owen', '4028808761f3f8a80161f3f923a1002a', null, null, '2018-03-04 21:24:07', 'owen', null, null, null), ('4028808761f3f8a80161f3f923a4002b', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Una', '4028808761f3f8a80161f3f923a4002b', null, null, '2018-03-04 21:24:07', 'una', null, null, null), ('4028808761f3f8a80161f3f923a7002c', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Tony', '4028808761f3f8a80161f3f923a7002c', null, null, '2018-03-04 21:24:07', 'tony', null, null, null), ('4028808761f3f8a80161f3f923aa002d', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Parrish', '4028808761f3f8a80161f3f923aa002d', null, null, '2018-03-04 21:24:07', 'parrish', null, null, null), ('4028808761f3f8a80161f3f923ad002e', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Palmer', '4028808761f3f8a80161f3f923ad002e', null, null, '2018-03-04 21:24:07', 'palmer', null, null, null), ('4028808761f3f8a80161f3f923b0002f', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Quentin', '4028808761f3f8a80161f3f923b0002f', null, null, '2018-03-04 21:24:07', 'quentin', null, null, null), ('4028808761f3f8a80161f3f923b30030', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Randall', '4028808761f3f8a80161f3f923b30030', null, null, '2018-03-04 21:24:07', 'randall', null, null, null), ('4028808761f3f8a80161f3f923b80031', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Randolph', '4028808761f3f8a80161f3f923b80031', null, null, '2018-03-04 21:24:07', 'randolph', null, null, null), ('4028808761f3f8a80161f3f923bb0032', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Sammie', '4028808761f3f8a80161f3f923bb0032', null, null, '2018-03-04 21:24:07', 'sammie', null, null, null), ('4028808761f3f8a80161f3f923be0033', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Sanderson', '4028808761f3f8a80161f3f923be0033', null, null, '2018-03-04 21:24:07', 'sanderson', null, null, null), ('4028808761f3f8a80161f3f923c80034', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Vivian', '4028808761f3f8a80161f3f923c80034', null, null, '2018-03-04 21:24:07', 'vivian', null, null, null), ('4028808761f3f8a80161f3f923ce0035', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Walker', '4028808761f3f8a80161f3f923ce0035', null, null, '2018-03-04 21:24:07', 'walker', null, null, null), ('4028808761f3f8a80161f3f923d30036', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Walton', '4028808761f3f8a80161f3f923d30036', null, null, '2018-03-04 21:24:07', 'walton', null, null, null), ('4028808761f3f8a80161f3f923d90037', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Warner', '4028808761f3f8a80161f3f923d90037', null, null, '2018-03-04 21:24:07', 'warner', null, null, null), ('4028808761f3f8a80161f3f923e10038', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Xavier', '4028808761f3f8a80161f3f923e10038', null, null, '2018-03-04 21:24:07', 'xavier', null, null, null), ('4028808761f3f8a80161f3f923e50039', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Yates', '4028808761f3f8a80161f3f923e50039', null, null, '2018-03-04 21:24:07', 'yates', null, null, null), ('4028808761f3f8a80161f3f923e8003a', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Zachary', '4028808761f3f8a80161f3f923e8003a', null, null, '2018-03-04 21:24:07', 'zachary', null, null, null), ('4028808761f3f8a80161f3f923ed003b', null, '2018-03-04 21:24:07', null, b'1', b'0', null, 'Zack', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-03-04 21:24:07', 'zack', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `tv_user_club`
-- ----------------------------
DROP TABLE IF EXISTS `tv_user_club`;
CREATE TABLE `tv_user_club` (
  `user_id` varchar(255) NOT NULL,
  `club_id` int(11) NOT NULL,
  KEY `FKpyk3uhtqnwg5n8myhfnmtyyvo` (`club_id`),
  KEY `FK5jkpwwx529v553r3fg1m3pmqm` (`user_id`),
  CONSTRAINT `FK5jkpwwx529v553r3fg1m3pmqm` FOREIGN KEY (`user_id`) REFERENCES `tv_user` (`id`),
  CONSTRAINT `FKpyk3uhtqnwg5n8myhfnmtyyvo` FOREIGN KEY (`club_id`) REFERENCES `tv_club` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_user_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_user_club` VALUES ('40288087618c5f6501618c5f7b350003', '2'), ('40288087618c5f6501618c5f7b350003', '1'), ('40288087618c5f6501618c5f7b350003', '3'), ('40288087618c5f6501618c5f7b2c0001', '3'), ('40288087618c5f6501618c5f7b200000', '1'), ('40288087618c5f6501618c5f7b200000', '4'), ('4028808761f3f8a80161f3f922d60000', '3');
COMMIT;

-- ----------------------------
--  Table structure for `tv_user_follow`
-- ----------------------------
DROP TABLE IF EXISTS `tv_user_follow`;
CREATE TABLE `tv_user_follow` (
  `user_id` varchar(255) NOT NULL,
  `follow_id` varchar(255) NOT NULL,
  KEY `FKl86scfety75sesii2on49hikr` (`follow_id`),
  KEY `FKt1p85p2ec69fv0pgkmo7ssu96` (`user_id`),
  CONSTRAINT `FKl86scfety75sesii2on49hikr` FOREIGN KEY (`follow_id`) REFERENCES `tv_user` (`id`),
  CONSTRAINT `FKt1p85p2ec69fv0pgkmo7ssu96` FOREIGN KEY (`user_id`) REFERENCES `tv_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tv_venue`
-- ----------------------------
DROP TABLE IF EXISTS `tv_venue`;
CREATE TABLE `tv_venue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `venues_district` int(11) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKffau2h092irw5i24yg2i24fg8` (`venues_district`),
  CONSTRAINT `FKffau2h092irw5i24yg2i24fg8` FOREIGN KEY (`venues_district`) REFERENCES `tv_district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_venue`
-- ----------------------------
BEGIN;
INSERT INTO `tv_venue` VALUES ('1', '北京路27号', '2018-02-09 17:10:07', '六广门体育场', null, null, '1', '0', '0', null), ('2', '宝山北路116号', '2018-02-09 17:11:29', '师大体育活动中心', null, '{0851}86726111', '1', '0', '0', null), ('3', '5881 Malden Rd, Windsor, ON N9H 1S5', '2018-02-20 23:05:22', 'Punch Gym', '', '(519) 969-0922', '14', '0', '0', 'punchgym.ca'), ('4', '6020 Malden Rd, Windsor, ON N9H 1S8', '2018-02-20 23:09:17', 'Anytime Fitness', '', '(519) 966-8882', '14', '0', '0', 'anytimefitness.com'), ('5', '5841 Malden Rd, Windsor, ON N9H 1S3', '2018-02-20 23:10:06', 'LaSalle Fitness', '', '(519) 969-9113', '14', '0', '0', 'lasallefitness.com'), ('6', '1820 Front Rd, LaSalle, ON N9J', '2018-02-20 23:12:17', 'Beachwalk Family Fitness', '', '(519) 734-6789', '14', '0', '0', 'beachwalkfitness.com'), ('7', '1440 Huron Church Rd Unit 5, Windsor, ON N9C 2L1', '2018-02-20 23:13:49', 'Fit4Less', '', '(519) 254-8775', '12', '0', '0', 'fit4less.ca'), ('8', '2491 Dougall Ave, Windsor, ON N8X 1T3', '2018-02-20 23:14:56', 'Absolute Fitness For Women', '', '(519) 253-9919', '12', '0', '0', 'absolutefitness.ca'), ('9', '215 Eugenie St W, Windsor, ON N8X 2X7', '2018-02-20 23:16:50', 'PURE Fitness Health & Training Studio', '', '(519) 966-4747', '12', '0', '0', 'pure-fitness.ca'), ('10', '2520 Ouellette Avenue, Windsor, ON N8X 1L7', '2018-02-20 23:17:41', 'Pro Fitness Studio', '', '(519) 258-2822', '12', '0', '0', 'profitnesswindsor.com'), ('11', '534 Charles St, Windsor, ON N8X 3G3', '2018-02-20 23:18:20', 'King Performance Systems', '', '(226) 348-9991', '12', '0', '0', 'kingperformancesystems.com'), ('12', 'Geraedts Dr, Windsor, ON N9G 2E4', '2018-02-20 23:20:09', 'St. Clair College SportsPlex', '', '(519) 966-1656', '12', '0', '0', 'stclaircollege.ca'), ('13', '3920 Dougall Ave, Windsor, ON N9E 1S6', '2018-02-20 23:22:23', 'GoodLife Fitness Centres', '', '(519) 969-3761', '12', '0', '0', 'goodlifefitness.com'), ('14', '227 Sandwich St S, Amherstburg, ON N9V 2A3\n\n', '2018-02-20 23:23:42', 'The Garage Gym', '', '(519) 564-9046', '16', '0', '0', 'thegaragegym.net'), ('15', '88 Talbot St E, Leamington, ON N8H 1L3', '2018-02-20 23:24:33', 'Leamington Fitness', '', '(519) 325-0909', '18', '0', '0', 'leamingtonfitness.com'), ('16', '220 W Congress St, Detroit, MI 48226, USA', '2018-02-20 23:22:23', 'Department of Justice', '1024px-PS_721_Spec_Ed_jeh.JPG', '(519) 258-2822', '18', '0', '0', null), ('17', '150 Goyeau St, Windsor, ON N9A 6J5', '2018-02-20 23:23:42', 'Windsor Police Service', 'Caswell-web.jpg', '(519) 253-9919', '18', '0', '0', null), ('18', '401 Ouellette Ave, Windsor, ON N9A 4K0', '2018-02-20 23:24:33', 'Canada Post', 'DSC_8581-e14569482498931.jpg', '(519) 258-6111', '12', '0', '0', null), ('19', '400 City Hall Square E Unit 205, Windsor, ON N9A 7K6', '2018-02-20 23:23:42', 'ServiceOntario', 'Moore-Deseg-Nation-3-img.jpg', '(519) 966-8882', '12', '0', '0', null), ('20', '401 Sunset Ave, Windsor, ON N9B 3P4', '2018-02-20 23:24:33', 'University of Windsor', 'school-013.jpg', '(519) 325-0909', '12', '0', '0', 'uwindsor.ca');
COMMIT;

-- ----------------------------
--  Table structure for `tv_venue_sport`
-- ----------------------------
DROP TABLE IF EXISTS `tv_venue_sport`;
CREATE TABLE `tv_venue_sport` (
  `venue_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  KEY `FK2qkmuofep4tos022b6uvt8eg2` (`sport_id`),
  KEY `FK5esq3ie1hos5hvfrpgpe05ot9` (`venue_id`),
  CONSTRAINT `FK2qkmuofep4tos022b6uvt8eg2` FOREIGN KEY (`sport_id`) REFERENCES `tv_sport` (`id`),
  CONSTRAINT `FK5esq3ie1hos5hvfrpgpe05ot9` FOREIGN KEY (`venue_id`) REFERENCES `tv_venue` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_venue_sport`
-- ----------------------------
BEGIN;
INSERT INTO `tv_venue_sport` VALUES ('1', '4'), ('1', '5'), ('1', '6'), ('1', '8'), ('1', '3'), ('2', '12'), ('2', '9'), ('2', '8'), ('2', '13');
COMMIT;

-- ----------------------------
--  Table structure for `tv_vnews`
-- ----------------------------
DROP TABLE IF EXISTS `tv_vnews`;
CREATE TABLE `tv_vnews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `vnews_venues` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjdrphayk0l0mw0iysqadpid8p` (`vnews_venues`),
  CONSTRAINT `FKjdrphayk0l0mw0iysqadpid8p` FOREIGN KEY (`vnews_venues`) REFERENCES `tv_venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_vnews`
-- ----------------------------
BEGIN;
INSERT INTO `tv_vnews` VALUES ('1', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '从前有只猪', '2018-02-10 17:07:09', '1'), ('2', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '这是新闻标题', '2018-02-12 16:58:27', '1'), ('3', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '天下新闻', '2018-02-07 16:59:02', '2'), ('4', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '运动馆新闻新闻', '2018-02-02 16:59:34', '2'), ('5', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '就不告诉你', '2018-02-12 16:59:59', '2'), ('21', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '1'), ('22', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '2'), ('23', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '3'), ('24', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '4'), ('25', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '5'), ('26', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '6'), ('27', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '7'), ('28', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '8'), ('29', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '9'), ('30', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '10'), ('31', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '11'), ('32', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '12'), ('33', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '13'), ('34', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '14'), ('35', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '15'), ('36', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '16'), ('37', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '17'), ('38', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '18'), ('39', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '19'), ('40', '', 'pic', 'Created Venue', '2018-02-22 16:59:59', '20');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
