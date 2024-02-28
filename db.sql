/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqg0db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqg0db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqg0db`;

/*Table structure for table `caipinpinglun` */

DROP TABLE IF EXISTS `caipinpinglun`;

CREATE TABLE `caipinpinglun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618670687782 DEFAULT CHARSET=utf8 COMMENT='菜品评论';

/*Data for the table `caipinpinglun` */

insert  into `caipinpinglun`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`zhanghao`,`xingming`,`pingfen`,`pingjianeirong`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-17 22:41:45','菜品编号1','菜品名称1','菜系1','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian1.jpg','账号1','姓名1','5','评价内容1','是','',1),(72,'2021-04-17 22:41:45','菜品编号2','菜品名称2','菜系2','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian2.jpg','账号2','姓名2','5','评价内容2','是','',2),(73,'2021-04-17 22:41:45','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian3.jpg','账号3','姓名3','5','评价内容3','是','',3),(74,'2021-04-17 22:41:45','菜品编号4','菜品名称4','菜系4','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian4.jpg','账号4','姓名4','5','评价内容4','是','',4),(75,'2021-04-17 22:41:45','菜品编号5','菜品名称5','菜系5','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian5.jpg','账号5','姓名5','5','评价内容5','是','',5),(76,'2021-04-17 22:41:45','菜品编号6','菜品名称6','菜系6','http://localhost:8080/ssmqg0db/upload/caipinpinglun_tupian6.jpg','账号6','姓名6','5','评价内容6','是','',6),(1618670687781,'2021-04-17 22:44:46','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian3.jpg','1','1','4','这里写订单用完后的评论，管理员也就是商家审核后可以进行一次回复','','',1618670623161);

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `kouweipianhao` varchar(200) DEFAULT NULL COMMENT '口味偏好',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`shuliang`,`danjia`,`kouweipianhao`,`jianjie`) values (31,'2021-04-17 22:41:45','菜品编号1','菜品名称1','菜系1','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian1.jpg',1,1,'口味偏好1','简介1'),(32,'2021-04-17 22:41:45','菜品编号2','菜品名称2','菜系2','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian2.jpg',2,2,'口味偏好2','简介2'),(33,'2021-04-17 22:41:45','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian3.jpg',2,3,'口味偏好3','简介3'),(34,'2021-04-17 22:41:45','菜品编号4','菜品名称4','菜系4','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian4.jpg',4,4,'口味偏好4','简介4'),(35,'2021-04-17 22:41:45','菜品编号5','菜品名称5','菜系5','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian5.jpg',5,5,'口味偏好5','简介5'),(36,'2021-04-17 22:41:45','菜品编号6','菜品名称6','菜系6','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian6.jpg',6,6,'口味偏好6','简介6');

/*Table structure for table `caixi` */

DROP TABLE IF EXISTS `caixi`;

CREATE TABLE `caixi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜系';

/*Data for the table `caixi` */

insert  into `caixi`(`id`,`addtime`,`caixi`) values (21,'2021-04-17 22:41:45','菜系1'),(22,'2021-04-17 22:41:45','菜系2'),(23,'2021-04-17 22:41:45','菜系3'),(24,'2021-04-17 22:41:45','菜系4'),(25,'2021-04-17 22:41:45','菜系5'),(26,'2021-04-17 22:41:45','菜系6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqg0db/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmqg0db/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmqg0db/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-17 22:41:45',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-04-17 22:41:45',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-04-17 22:41:45',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-04-17 22:41:45',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-04-17 22:41:45',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-04-17 22:41:45',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='关于我们';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-17 22:41:45','标题1','简介1','http://localhost:8080/ssmqg0db/upload/news_picture1.jpg','内容1'),(92,'2021-04-17 22:41:45','标题2','简介2','http://localhost:8080/ssmqg0db/upload/news_picture2.jpg','内容2'),(93,'2021-04-17 22:41:45','标题3','简介3','http://localhost:8080/ssmqg0db/upload/news_picture3.jpg','内容3'),(94,'2021-04-17 22:41:45','标题4','简介4','http://localhost:8080/ssmqg0db/upload/news_picture4.jpg','内容4'),(95,'2021-04-17 22:41:45','标题5','简介5','http://localhost:8080/ssmqg0db/upload/news_picture5.jpg','内容5'),(96,'2021-04-17 22:41:45','标题6','简介6','http://localhost:8080/ssmqg0db/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618670623161,'1','yonghu','用户','hnae0titchakr4xhliikcma0b84yhjuw','2021-04-17 22:43:48','2021-04-17 23:43:49');

/*Table structure for table `tuikuanxinxi` */

DROP TABLE IF EXISTS `tuikuanxinxi`;

CREATE TABLE `tuikuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `shenqingyuanyin` varchar(200) NOT NULL COMMENT '申请原因',
  `tuikuanjindu` varchar(200) DEFAULT NULL COMMENT '退款进度',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='退款信息';

/*Data for the table `tuikuanxinxi` */

insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`xiadanshijian`,`zhuohao`,`shenqingshijian`,`shenqingyuanyin`,`tuikuanjindu`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-17 22:41:45','订单编号1','菜品编号1','菜品名称1','菜系1','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian1.jpg','下单时间1','桌号1','2021-04-17 22:41:45','申请原因1','未退款','账号1','姓名1','是','',1),(62,'2021-04-17 22:41:45','订单编号2','菜品编号2','菜品名称2','菜系2','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian2.jpg','下单时间2','桌号2','2021-04-17 22:41:45','申请原因2','未退款','账号2','姓名2','是','',2),(63,'2021-04-17 22:41:45','订单编号3','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian3.jpg','下单时间3','桌号3','2021-04-17 22:41:45','申请原因3','未退款','账号3','姓名3','是','',3),(64,'2021-04-17 22:41:45','订单编号4','菜品编号4','菜品名称4','菜系4','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian4.jpg','下单时间4','桌号4','2021-04-17 22:41:45','申请原因4','未退款','账号4','姓名4','是','',4),(65,'2021-04-17 22:41:45','订单编号5','菜品编号5','菜品名称5','菜系5','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian5.jpg','下单时间5','桌号5','2021-04-17 22:41:45','申请原因5','未退款','账号5','姓名5','是','',5),(66,'2021-04-17 22:41:45','订单编号6','菜品编号6','菜品名称6','菜系6','http://localhost:8080/ssmqg0db/upload/tuikuanxinxi_tupian6.jpg','下单时间6','桌号6','2021-04-17 22:41:45','申请原因6','未退款','账号6','姓名6','是','',6);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 22:41:45');

/*Table structure for table `wodedingdan` */

DROP TABLE IF EXISTS `wodedingdan`;

CREATE TABLE `wodedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618670643763 DEFAULT CHARSET=utf8 COMMENT='我的订单';

/*Data for the table `wodedingdan` */

insert  into `wodedingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`danjia`,`shuliang`,`zongjine`,`xiadanshijian`,`zhanghao`,`xingming`,`zhuohao`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-04-17 22:41:45','订单编号1','菜品编号1','菜品名称1','菜系1','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian1.jpg',1,1,'总金额1','2021-04-17 22:41:45','账号1','姓名1','桌号1','是','','未支付',1),(42,'2021-04-17 22:41:45','订单编号2','菜品编号2','菜品名称2','菜系2','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian2.jpg',2,2,'总金额2','2021-04-17 22:41:45','账号2','姓名2','桌号2','是','','未支付',2),(43,'2021-04-17 22:41:45','订单编号3','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian3.jpg',3,3,'总金额3','2021-04-17 22:41:45','账号3','姓名3','桌号3','是','','未支付',3),(44,'2021-04-17 22:41:45','订单编号4','菜品编号4','菜品名称4','菜系4','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian4.jpg',4,4,'总金额4','2021-04-17 22:41:45','账号4','姓名4','桌号4','是','','未支付',4),(45,'2021-04-17 22:41:45','订单编号5','菜品编号5','菜品名称5','菜系5','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian5.jpg',5,5,'总金额5','2021-04-17 22:41:45','账号5','姓名5','桌号5','是','','未支付',5),(46,'2021-04-17 22:41:45','订单编号6','菜品编号6','菜品名称6','菜系6','http://localhost:8080/ssmqg0db/upload/wodedingdan_tupian6.jpg',6,6,'总金额6','2021-04-17 22:41:45','账号6','姓名6','桌号6','是','','未支付',6),(1618670643762,'2021-04-17 22:44:03','1618670638144','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmqg0db/upload/caipinxinxi_tupian3.jpg',3,1,'3','2021-04-17 22:43:58','1','1','桌号1','','','',1618670623161);

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `xiaoshouliang` int(11) DEFAULT NULL COMMENT '销售量',
  `zonglirun` int(11) DEFAULT NULL COMMENT '总利润',
  `tongjishijian` varchar(200) DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`tupian`,`caixi`,`xiaoshouliang`,`zonglirun`,`tongjishijian`) values (81,'2021-04-17 22:41:45','菜品编号1','菜品名称1','图片1','菜系1',1,1,'周'),(82,'2021-04-17 22:41:45','菜品编号2','菜品名称2','图片2','菜系2',2,2,'周'),(83,'2021-04-17 22:41:45','菜品编号3','菜品名称3','图片3','菜系3',3,3,'周'),(84,'2021-04-17 22:41:45','菜品编号4','菜品名称4','图片4','菜系4',4,4,'周'),(85,'2021-04-17 22:41:45','菜品编号5','菜品名称5','图片5','菜系5',5,5,'周'),(86,'2021-04-17 22:41:45','菜品编号6','菜品名称6','图片6','菜系6',6,6,'周');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618670623162 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-17 22:41:45','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-17 22:41:45','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-17 22:41:45','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-17 22:41:45','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-17 22:41:45','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-17 22:41:45','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmqg0db/upload/yonghu_zhaopian6.jpg'),(1618670623161,'2021-04-17 22:43:43','1','1','1','男',NULL,NULL,NULL,NULL);

/*Table structure for table `zhuohao` */

DROP TABLE IF EXISTS `zhuohao`;

CREATE TABLE `zhuohao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='桌号';

/*Data for the table `zhuohao` */

insert  into `zhuohao`(`id`,`addtime`,`zhuohao`) values (51,'2021-04-17 22:41:45','桌号1'),(52,'2021-04-17 22:41:45','桌号2'),(53,'2021-04-17 22:41:45','桌号3'),(54,'2021-04-17 22:41:45','桌号4'),(55,'2021-04-17 22:41:45','桌号5'),(56,'2021-04-17 22:41:45','桌号6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
