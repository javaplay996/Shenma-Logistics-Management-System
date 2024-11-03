/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmbgp63
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmbgp63` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmbgp63`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (101,'2021-04-12 13:47:21',1,1,'提问1','回复1',1),(102,'2021-04-12 13:47:21',2,2,'提问2','回复2',2),(103,'2021-04-12 13:47:21',3,3,'提问3','回复3',3),(104,'2021-04-12 13:47:21',4,4,'提问4','回复4',4),(105,'2021-04-12 13:47:21',5,5,'提问5','回复5',5),(106,'2021-04-12 13:47:21',6,6,'提问6','回复6',6);

/*Table structure for table `cheliangjiaotongguanli` */

DROP TABLE IF EXISTS `cheliangjiaotongguanli`;

CREATE TABLE `cheliangjiaotongguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangleixing` varchar(200) DEFAULT NULL COMMENT '车辆类型',
  `cheliangshuliang` int(11) DEFAULT NULL COMMENT '车辆数量',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `jiashirenyuan` varchar(200) DEFAULT NULL COMMENT '驾驶人员',
  `xiangqing` longtext COMMENT '详情',
  `shiyongqingkuang` longtext COMMENT '使用情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='车辆交通管理';

/*Data for the table `cheliangjiaotongguanli` */

insert  into `cheliangjiaotongguanli`(`id`,`addtime`,`cheliangleixing`,`cheliangshuliang`,`mingcheng`,`jiashirenyuan`,`xiangqing`,`shiyongqingkuang`) values (71,'2021-04-12 13:47:21','车辆类型1',1,'名称1','驾驶人员1','详情1','使用情况1'),(72,'2021-04-12 13:47:21','车辆类型2',2,'名称2','驾驶人员2','详情2','使用情况2'),(73,'2021-04-12 13:47:21','车辆类型3',3,'名称3','驾驶人员3','详情3','使用情况3'),(74,'2021-04-12 13:47:21','车辆类型4',4,'名称4','驾驶人员4','详情4','使用情况4'),(75,'2021-04-12 13:47:21','车辆类型5',5,'名称5','驾驶人员5','详情5','使用情况5'),(76,'2021-04-12 13:47:21','车辆类型6',6,'名称6','驾驶人员6','详情6','使用情况6');

/*Table structure for table `cheliangjiaotongleixing` */

DROP TABLE IF EXISTS `cheliangjiaotongleixing`;

CREATE TABLE `cheliangjiaotongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='车辆交通类型';

/*Data for the table `cheliangjiaotongleixing` */

insert  into `cheliangjiaotongleixing`(`id`,`addtime`,`leixing`) values (81,'2021-04-12 13:47:21','类型1'),(82,'2021-04-12 13:47:21','类型2'),(83,'2021-04-12 13:47:21','类型3'),(84,'2021-04-12 13:47:21','类型4'),(85,'2021-04-12 13:47:21','类型5'),(86,'2021-04-12 13:47:21','类型6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmbgp63/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmbgp63/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmbgp63/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanguanli` */

DROP TABLE IF EXISTS `dingdanguanli`;

CREATE TABLE `dingdanguanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowutupian` varchar(200) DEFAULT NULL COMMENT '货物图片',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `dingdanbeizhu` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `xiadanriqi` varchar(200) DEFAULT NULL COMMENT '下单日期',
  `peisongriqi` date DEFAULT NULL COMMENT '配送日期',
  `dingdanzhuangtai` varchar(200) NOT NULL COMMENT '订单状态',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='订单管理';

/*Data for the table `dingdanguanli` */

insert  into `dingdanguanli`(`id`,`addtime`,`dingdanbianhao`,`huowumingcheng`,`huowutupian`,`huowuleixing`,`shuliang`,`zongjiage`,`dingdanbeizhu`,`xiadanriqi`,`peisongriqi`,`dingdanzhuangtai`,`zhanghao`,`xingming`,`shouji`,`shouhuodizhi`) values (41,'2021-04-12 13:47:21','订单编号1','货物名称1','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian1.jpg','货物类型1',1,1,'订单备注1','下单日期1','2021-04-12','配送中','账号1','姓名1','13823888881','收货地址1'),(42,'2021-04-12 13:47:21','订单编号2','货物名称2','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian2.jpg','货物类型2',2,2,'订单备注2','下单日期2','2021-04-12','配送中','账号2','姓名2','13823888882','收货地址2'),(43,'2021-04-12 13:47:21','订单编号3','货物名称3','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian3.jpg','货物类型3',3,3,'订单备注3','下单日期3','2021-04-12','配送中','账号3','姓名3','13823888883','收货地址3'),(44,'2021-04-12 13:47:21','订单编号4','货物名称4','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian4.jpg','货物类型4',4,4,'订单备注4','下单日期4','2021-04-12','配送中','账号4','姓名4','13823888884','收货地址4'),(45,'2021-04-12 13:47:21','订单编号5','货物名称5','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian5.jpg','货物类型5',5,5,'订单备注5','下单日期5','2021-04-12','配送中','账号5','姓名5','13823888885','收货地址5'),(46,'2021-04-12 13:47:21','订单编号6','货物名称6','http://localhost:8080/ssmbgp63/upload/dingdanguanli_huowutupian6.jpg','货物类型6',6,6,'订单备注6','下单日期6','2021-04-12','配送中','账号6','姓名6','13823888886','收货地址6');

/*Table structure for table `huowufenlei` */

DROP TABLE IF EXISTS `huowufenlei`;

CREATE TABLE `huowufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='货物分类';

/*Data for the table `huowufenlei` */

insert  into `huowufenlei`(`id`,`addtime`,`fenlei`) values (31,'2021-04-12 13:47:21','分类1'),(32,'2021-04-12 13:47:21','分类2'),(33,'2021-04-12 13:47:21','分类3'),(34,'2021-04-12 13:47:21','分类4'),(35,'2021-04-12 13:47:21','分类5'),(36,'2021-04-12 13:47:21','分类6');

/*Table structure for table `huowuxinxi` */

DROP TABLE IF EXISTS `huowuxinxi`;

CREATE TABLE `huowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowumingcheng` varchar(200) NOT NULL COMMENT '货物名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shoujia` int(11) NOT NULL COMMENT '售价',
  `jinjia` int(11) NOT NULL COMMENT '进价',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `hejijine` int(11) DEFAULT NULL COMMENT '合计金额',
  `guanliyuan` varchar(200) DEFAULT NULL COMMENT '管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='货物信息';

/*Data for the table `huowuxinxi` */

insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`fenlei`,`tupian`,`guige`,`pinpai`,`shoujia`,`jinjia`,`shuliang`,`hejijine`,`guanliyuan`) values (21,'2021-04-12 13:47:21','货物名称1','分类1','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian1.jpg','规格1','品牌1',1,1,1,1,'管理员1'),(22,'2021-04-12 13:47:21','货物名称2','分类2','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian2.jpg','规格2','品牌2',2,2,2,2,'管理员2'),(23,'2021-04-12 13:47:21','货物名称3','分类3','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian3.jpg','规格3','品牌3',3,3,3,3,'管理员3'),(24,'2021-04-12 13:47:21','货物名称4','分类4','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian4.jpg','规格4','品牌4',4,4,4,4,'管理员4'),(25,'2021-04-12 13:47:21','货物名称5','分类5','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian5.jpg','规格5','品牌5',5,5,5,5,'管理员5'),(26,'2021-04-12 13:47:21','货物名称6','分类6','http://localhost:8080/ssmbgp63/upload/huowuxinxi_tupian6.jpg','规格6','品牌6',6,6,6,6,'管理员6');

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='物流咨询';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-12 13:47:21','标题1','简介1','http://localhost:8080/ssmbgp63/upload/news_picture1.jpg','内容1'),(112,'2021-04-12 13:47:21','标题2','简介2','http://localhost:8080/ssmbgp63/upload/news_picture2.jpg','内容2'),(113,'2021-04-12 13:47:21','标题3','简介3','http://localhost:8080/ssmbgp63/upload/news_picture3.jpg','内容3'),(114,'2021-04-12 13:47:21','标题4','简介4','http://localhost:8080/ssmbgp63/upload/news_picture4.jpg','内容4'),(115,'2021-04-12 13:47:21','标题5','简介5','http://localhost:8080/ssmbgp63/upload/news_picture5.jpg','内容5'),(116,'2021-04-12 13:47:21','标题6','简介6','http://localhost:8080/ssmbgp63/upload/news_picture6.jpg','内容6');

/*Table structure for table `peisongyuan` */

DROP TABLE IF EXISTS `peisongyuan`;

CREATE TABLE `peisongyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peisongyuanbianhao` varchar(200) DEFAULT NULL COMMENT '配送员编号',
  `peisongyuanxingming` varchar(200) NOT NULL COMMENT '配送员姓名',
  `peisongyuandianhua` varchar(200) DEFAULT NULL COMMENT '配送员电话',
  `peisongyuanzhaopian` varchar(200) DEFAULT NULL COMMENT '配送员照片',
  `peisongyuanzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送员状态',
  `shangbanshijian` varchar(200) NOT NULL COMMENT '上班时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='配送员';

/*Data for the table `peisongyuan` */

insert  into `peisongyuan`(`id`,`addtime`,`peisongyuanbianhao`,`peisongyuanxingming`,`peisongyuandianhua`,`peisongyuanzhaopian`,`peisongyuanzhuangtai`,`shangbanshijian`,`beizhu`) values (91,'2021-04-12 13:47:21','配送员编号1','配送员姓名1','配送员电话1','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian1.jpg','在职','上班时间1','备注1'),(92,'2021-04-12 13:47:21','配送员编号2','配送员姓名2','配送员电话2','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian2.jpg','在职','上班时间2','备注2'),(93,'2021-04-12 13:47:21','配送员编号3','配送员姓名3','配送员电话3','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian3.jpg','在职','上班时间3','备注3'),(94,'2021-04-12 13:47:21','配送员编号4','配送员姓名4','配送员电话4','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian4.jpg','在职','上班时间4','备注4'),(95,'2021-04-12 13:47:21','配送员编号5','配送员姓名5','配送员电话5','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian5.jpg','在职','上班时间5','备注5'),(96,'2021-04-12 13:47:21','配送员编号6','配送员姓名6','配送员电话6','http://localhost:8080/ssmbgp63/upload/peisongyuan_peisongyuanzhaopian6.jpg','在职','上班时间6','备注6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-12 13:47:21');

/*Table structure for table `wuliuluxianfenpei` */

DROP TABLE IF EXISTS `wuliuluxianfenpei`;

CREATE TABLE `wuliuluxianfenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luxianmingcheng` varchar(200) NOT NULL COMMENT '路线名称',
  `luxianfenlei` varchar(200) DEFAULT NULL COMMENT '路线分类',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `cheliang` varchar(200) DEFAULT NULL COMMENT '车辆',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `peisongyuanbianhao` varchar(200) DEFAULT NULL COMMENT '配送员编号',
  `peisongyuandianhua` varchar(200) DEFAULT NULL COMMENT '配送员电话',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='物流路线分配';

/*Data for the table `wuliuluxianfenpei` */

insert  into `wuliuluxianfenpei`(`id`,`addtime`,`luxianmingcheng`,`luxianfenlei`,`fuzeren`,`cheliang`,`peisongyuanxingming`,`peisongyuanbianhao`,`peisongyuandianhua`,`shangbanshijian`) values (61,'2021-04-12 13:47:21','路线名称1','路线分类1','负责人1','车辆1','配送员姓名1','配送员编号1','配送员电话1','上班时间1'),(62,'2021-04-12 13:47:21','路线名称2','路线分类2','负责人2','车辆2','配送员姓名2','配送员编号2','配送员电话2','上班时间2'),(63,'2021-04-12 13:47:21','路线名称3','路线分类3','负责人3','车辆3','配送员姓名3','配送员编号3','配送员电话3','上班时间3'),(64,'2021-04-12 13:47:21','路线名称4','路线分类4','负责人4','车辆4','配送员姓名4','配送员编号4','配送员电话4','上班时间4'),(65,'2021-04-12 13:47:21','路线名称5','路线分类5','负责人5','车辆5','配送员姓名5','配送员编号5','配送员电话5','上班时间5'),(66,'2021-04-12 13:47:21','路线名称6','路线分类6','负责人6','车辆6','配送员姓名6','配送员编号6','配送员电话6','上班时间6');

/*Table structure for table `wuliuzhuizong` */

DROP TABLE IF EXISTS `wuliuzhuizong`;

CREATE TABLE `wuliuzhuizong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `yunshuzhuangtai` varchar(200) DEFAULT NULL COMMENT '运输状态',
  `yunshuzhong` longtext COMMENT '运输中',
  `yunshuluxian` varchar(200) DEFAULT NULL COMMENT '运输路线',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='物流追踪';

/*Data for the table `wuliuzhuizong` */

insert  into `wuliuzhuizong`(`id`,`addtime`,`dingdanbianhao`,`yunshuzhuangtai`,`yunshuzhong`,`yunshuluxian`,`zhanghao`,`xingming`,`shouhuodizhi`) values (51,'2021-04-12 13:47:21','订单编号1','待发货','运输中1','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian1.jpg','账号1','姓名1','收货地址1'),(52,'2021-04-12 13:47:21','订单编号2','待发货','运输中2','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian2.jpg','账号2','姓名2','收货地址2'),(53,'2021-04-12 13:47:21','订单编号3','待发货','运输中3','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian3.jpg','账号3','姓名3','收货地址3'),(54,'2021-04-12 13:47:21','订单编号4','待发货','运输中4','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian4.jpg','账号4','姓名4','收货地址4'),(55,'2021-04-12 13:47:21','订单编号5','待发货','运输中5','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian5.jpg','账号5','姓名5','收货地址5'),(56,'2021-04-12 13:47:21','订单编号6','待发货','运输中6','http://localhost:8080/ssmbgp63/upload/wuliuzhuizong_yunshuluxian6.jpg','账号6','姓名6','收货地址6');

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
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `shouhuodizhi` longtext COMMENT '收货地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`shouhuodizhi`) values (11,'2021-04-12 13:47:21','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian1.jpg','收货地址1'),(12,'2021-04-12 13:47:21','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian2.jpg','收货地址2'),(13,'2021-04-12 13:47:21','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian3.jpg','收货地址3'),(14,'2021-04-12 13:47:21','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian4.jpg','收货地址4'),(15,'2021-04-12 13:47:21','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian5.jpg','收货地址5'),(16,'2021-04-12 13:47:21','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmbgp63/upload/yonghu_zhaopian6.jpg','收货地址6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
