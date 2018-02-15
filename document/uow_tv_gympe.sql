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

 Date: 02/12/2018 22:38:56 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_club`
-- ----------------------------
BEGIN;
INSERT INTO `tv_club` VALUES ('1', '金仓路5号', '2018-02-09 17:15:40', null, '贵阳实验二中', null, b'1', '0', '0851-86622267', '2018-02-12 18:35:23', '1'), ('2', '中华北路100号', '2018-02-09 17:16:35', null, '贵阳七中中北校区', null, b'1', '1', '{0851}86504014', '2018-02-12 18:35:23', '1'), ('3', '北京路27号', '2018-02-09 17:17:14', null, '贵阳海伦青少年篮球俱乐部', null, b'0', '0', null, '2018-02-12 18:35:23', '1'), ('4', '体育运动训练馆', '2018-02-09 17:18:36', null, '贵州米丘青少年体育运动俱乐部', null, b'0', '1', null, '2018-02-12 18:35:23', '1');
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
  `receivetime` datetime NOT NULL,
  `sender` varchar(255) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` text,
  `title` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_sport`
-- ----------------------------
BEGIN;
INSERT INTO `tv_sport` VALUES ('1', '中长跑', 'running', '100', 'tv_running', '1'), ('2', '足球', 'soccer', '201', 'tv_soccer', '2'), ('3', '篮球', 'basketball', '202', 'tv_basketball', '2'), ('4', '网球', 'tennis', '200', 'tv_tennis', '2'), ('5', '射击', 'shotting', '102', 'tv_shotting', '1'), ('6', '竞走', 'walking', '103', 'tv_walking', '1'), ('7', '游泳', 'swimming', '104', 'tv_swimming', '1'), ('8', '射箭', 'archery', '105', 'tv_archery', '1'), ('9', '摔跤', 'wrestling', '106', 'tv_wrestling', '1'), ('10', '短跨', 'sprinter', '107', 'tv_sprinter', '1'), ('11', '乒乓球', 'tabletennis', '203', 'tv_tabletennis', '2'), ('12', '高尔夫', 'golf', '204', 'tv_golf', '2'), ('13', '羽毛球', 'badminton', '205', 'tv_badminton', '2'), ('14', '国际象棋', 'chess', '301', 'tv_chess', '3'), ('15', '中国象棋', 'chinesechess', '300', 'tv_chinesechess', '3'), ('16', '围棋', 'weiqi', '302', 'tv_weiqi', '3');
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
INSERT INTO `tv_user` VALUES ('40288087618c5f6501618c5f7b200000', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '陈春燕', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'ccy', '1', null, null), ('40288087618c5f6501618c5f7b2c0001', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '唐曼丽', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'tml', null, '1', null), ('40288087618c5f6501618c5f7b300002', null, '2018-02-12 18:35:23', null, b'1', b'0', null, '魏社委', 'c5f5e695f9cdcc340fbdaa5886b660e2', null, null, '2018-02-12 18:35:23', 'wsw', null, null, '1'), ('40288087618c5f6501618c5f7b350003', '1989-02-05 00:00:00', '2018-02-12 18:35:23', 'i@tabtu.cn', b'1', b'0', '我就是我不同寻常的烟火', 'Tab Tu', 'c5f5e695f9cdcc340fbdaa5886b660e2', 'http://img1.imgtn.bdimg.com/it/u=1515168944,3919490421&fm=27&gp=0.jpg', '2265267799', '2018-02-12 18:35:23', 'tab', '2', '2', '2');
COMMIT;

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
  PRIMARY KEY (`id`),
  KEY `FKffau2h092irw5i24yg2i24fg8` (`venues_district`),
  CONSTRAINT `FKffau2h092irw5i24yg2i24fg8` FOREIGN KEY (`venues_district`) REFERENCES `tv_district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_venue`
-- ----------------------------
BEGIN;
INSERT INTO `tv_venue` VALUES ('1', '北京路27号', '2018-02-09 17:10:07', '六广门体育场', null, null, '1', '0', '0'), ('2', '宝山北路116号', '2018-02-09 17:11:29', '师大体育活动中心', null, '{0851}86726111', '1', '0', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tv_vnews`
-- ----------------------------
BEGIN;
INSERT INTO `tv_vnews` VALUES ('1', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '从前有只猪', '2018-02-10 17:07:09', '1'), ('2', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '这是新闻标题', '2018-02-12 16:58:27', '1'), ('3', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '天下新闻', '2018-02-07 16:59:02', '2'), ('4', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '运动馆新闻新闻', '2018-02-02 16:59:34', '2'), ('5', '<html><title>从前有只猪</title><p>ppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材查看更多唯美图片情侣头像笑话QQ大杂烩起名网QQ个性符号大全音乐发烧友YY粉丝网gif频道男女频道黑旗频道情侣网名频道签名字频道 微信头像表情皮肤手机壁纸唯美图片理财赚钱邪恶漫画男生女生配娱乐百科情侣网名个性签名QQ群名备注笑话大全\\t视频发烧友YY粉丝网起名网QQ素材520QQ下载频道欢迎来到桌面天空! 手机用户请访问：http://m.desksky.net网站地图手机阅读收藏本站桌面天空首页…酒井SAKAIppt背景图片素材,ppt背景图片素材边框,篮球ppt背景图片素材性别：女　来自：云南省 曲靖市 会泽县　分数: 50 影响：人正文…寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么寂寞伤感QQ非主流空间背景图片素材、自欺欺人真的有那么好受么五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.五彩绚丽的QQ个性空间背景图片素材、暖暖的喜欢的，淡淡的说爱的.七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、七彩艳丽的QQ空间背景图片素材、如果诚实，爱情就不会流泪、精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真精美高清QQ非主流空间背景图片素材、平平淡淡就好，简简单单才真qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用qq聊天对话框背景图片素材，qq聊天对话框怎么用卡通好看的透明皮杜图片素材卡通好看的透明皮杜图片素材超给力的非主流女生文字图片素材超给力的非主流女生文字图片素材精致的美 可爱图片素材,唯美日本动漫SD娃娃精致的美 可爱图片素材,唯美日本动漫SD娃娃一意孤行 意境图片素材,唯美伤感意境美图一意孤行 意境图片素材,唯美伤感意境美图黑夜精灵 意境图片素材,唯美意境灯具美图黑夜精灵 意境图片素材,唯美意境灯具美图唯美意境 意境图片素材 会发光的蘑菇唯美意境 意境图片素材 会发光的蘑菇梦醒时分 意境图片素材,唯美意境美图梦醒时分 意境图片素材,唯美意境美图一花一世界,意境图片素材一花一世界,意境图片素材唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤唯美女生背影伤感图片 意境图片素材 你的背影读出忧伤简约文字图片素材 qq皮肤唯美意境图片 超喜欢简约文字图片素材 qq皮肤唯美意境图片 超喜欢情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片情感生活图片素材；安静的小生活,芭蕾舞唯美意境图片怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材怀念的唯美的感觉 婚纱唯美意境图片 优雅意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材帆布鞋上曾经记录的青春岁月,意境图片素材lomo意境图片素材 意境图片唯美 极品恋物lomo意境图片素材 意境图片唯美 极品恋物梦中的你拥有一头迷人的长发,意境图片素材梦中的你拥有一头迷人的长发,意境图片素材谁的青春 意境图片素材 没有浅浅的瘀青谁的青春 意境图片素材 没有浅浅的瘀青心里暖暖的整个被治愈,小清新图片素材心里暖暖的整个被治愈,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材瓶子里都是爱你的秘密,小清新图片素材向阳向暖,小清新图片素材,未曾离开向阳向暖,小清新图片素材,未曾离开为了等你,小清新图片素材,我错过了等我的人为了等你,小清新图片素材,我错过了等我的人幸福的力量,小清新图片素材幸福的力量,小清新图片素材青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话青春活力个性QQ女生头像图片素材 女生颓废头像 她满心欢喜的跟你说了心里话透明头像图片素材透明头像图片素材qq透明头像图片素材qq透明头像图片素材ppt背景图片素材边框 是多少35453感恩ppt背景图片素材边框母亲唯美图片感恩母亲唯美图片1P*篮球背景图片素材35794...篮球ppt背景图片素材 怎么样1656qq头像无字女生背影ppt背景图片素材qq头像无字女生背影2P*ppt背景图片素材883091...ppt背景图片素材边框 是多少604男生背影ppt背景图片素材边框头像男生背影头像3P*ppt图片素材边框882039...ppt背景图片素材 怎么样18245唯美ppt背景图片素材意境伤感大全唯美意境伤感大全4P*篮球ppt图片素材848266...ppt背景图片素材边框 是多少21322唯篮球ppt背景图片素材美旗袍kb艺术唯美旗袍kb艺术5P*背景图片素材21747...ppt背景图片素材边框有知道的吗38ppt背景图片素材边框YY接待语大全，YY接待语设计模板，YY接待词YY接待语大全，YY接待语设计模板，YY接待词6P*篮球图片素材501370...篮球ppt背景图片素材 怎么样8078曾经拥有的不要忘ppt背景图片素材记,已经得到的更加珍惜曾经拥有的不要忘记,已经得到的更加珍惜7P*图片素材边框565368...ppt背景图片素材边框 是多少12824唯美ppt背景图片素材边框气质微信女名字唯美气质微信女名字8P*ppt背景边框13262...ppt背景图片素材 怎么样672超萌篮球ppt背景图片素材头像超萌头像9P*ppt图片素材882107...ppt背景图片素材边框有知道的吗8077惟一可以永恒的,篮球ppt背景图片素材只有那些曾经发生的过往惟一可以永恒的,只有那些曾经发生的过往10P*篮球ppt背景565369...ppt背景图片素材有知道的吗9562qq女生吃醋篮球ppt背景图片素材带字头像,qq头像女生可爱qq女生吃醋带字头像,qq头像女生可爱11P*背景边框450...ppt背景图片素材边框有知道的吗1812ppt背景图片素材成熟男人背影qq头像成熟男人背影qq头像12P*篮球背景2265...ppt背景图片素材 是多少共1页/30条记录唯美背景图片素材唯美背景图片素材唯美ppt背景图片素材唯美ppt背景图片素材唯美花背景图片素材唯美花背景图片素材唯美木板背景图片素材唯美木板背景图片素材唯美风景背景图片素材唯美风景背景图片素材ps唯美背景图片素材ps唯美背景图片素材简洁唯美背景图片素材简洁唯美背景图片素材抠图唯美背景图片素材抠图唯美背景图片素材旅游背景图片素材唯美旅游背景图片素材唯美唯美照片背景图片素材唯美照片背景图片素材唯美女生背景图片素材唯美女生背景图片素材纯色唯美背景图片素材纯色唯美背景图片素材唯美背景图片素材大全唯美背景图片素材大全背景图片素材背景图片素材桌面背景图片素材桌面背景图片素材ppt背景图片素材库ppt背景图片素材库qq空间背景图片素材qq空间背景图片素材ppt背景图片素材ppt背景图片素材课件背景图片素材课件背景图片素材淘宝店背景图片素材淘宝店背景图片素材幻灯片背景图片素材幻灯片背景图片素材ps背景图片素材ps背景图片素材网页背景图片素材网页背景图片素材风景背景图片素材风景背景图片素材淘宝背景图片素材淘宝背景图片素材手机背景图片素材手机背景图片素材婚礼背景图片素材婚礼背景图片素材促销背景图片素材促销背景图片素材手绘背景图片素材手绘背景图片素材淘宝装修背景图片素材淘宝装修背景图片素材热门排行</p><img src=\'http://www.sinaimg.cn/dy/slidenews/68_img/2015_19/57328_91116_828528.jpg\'></img><p>最近更新你可能感兴趣的文章大美女的真情告白_谜语大全及答案-猜谜语及答案我是大王了可爱卡通QQ头像黑白卡通人物头像,简约卡通头像最新的QQ心情话语 孤单拖着记忆支离破碎长发可爱美女头像图片大全 高清下载书里的心形，总有一处是安静成功是逼出来的qq头像男灰色,头像男生灰色qq头像女生时尚<br /><br /><br /><br />小孩子唯美头像可爱个性你可能感兴趣的专题非主流帅哥背影非主流苛苛夏季服饰霸气另类女生头像qq飞车2014年7月回归用户网址智能家居qq群赚钱方法娜美桌面壁纸战争学院yy开黑频道西门yy直播风力发电动态图片其他人在看关于我们|站内地图|百度地图| 本网部分内容由程序自动从网上自动收集，如广告和内容涉及钱·财，谨防上·当受·骗！如发现不适内容，联系站务QQ:100365-5790#qq.com处理，谢谢合作！CopyRight © 2015-2016 http://www.desksky.net All Rights Reserved. 桂ICP备13004044号</p><img src=\'http://meitu.qqzong.com/uploads/allimg/c140830/14093Y1IQF-1AT55.jpg\'></img></html>', 'http://meitu.qqzong.com/uploads/allimg/c140830/14093YN492640-103044.jpg', '就不告诉你', '2018-02-12 16:59:59', '2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
