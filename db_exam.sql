
SHOW VARIABLES LIKE 'character\_set\_%';



CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_exam` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_exam`;





CREATE TABLE `tb_lesson` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(60) DEFAULT NULL,
  `JoinTime` DATETIME DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;



INSERT  INTO `tb_lesson`(`ID`,`Name`,`JoinTime`) VALUES (4,'数据库原理','2015-12-01 00:00:00'),(5,'计算机文化基础','2015-12-01 00:00:00'),(8,'计算机专业英语','2015-12-01 00:00:00'),(29,'嵌入式系统','2015-12-02 00:00:00'),(31,'物联网体系结构','2015-12-05 00:00:00'),(33,'接口与通信技术','2015-12-02 10:29:10');




CREATE TABLE `tb_manager` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) DEFAULT NULL,
  `PWD` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



INSERT  INTO `tb_manager`(`ID`,`name`,`PWD`) VALUES (1,'admin','admin'),(2,'tf111','tf111');




CREATE TABLE `tb_questions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `subject` VARCHAR(50) DEFAULT NULL,
  `type` CHAR(6) DEFAULT NULL,
  `joinTime` DATETIME DEFAULT NULL,
  `lessonId` INT(11) DEFAULT NULL,
  `taoTiId` INT(11) DEFAULT NULL,
  `optionA` VARCHAR(50) DEFAULT NULL,
  `optionB` VARCHAR(50) DEFAULT NULL,
  `optionC` VARCHAR(50) DEFAULT NULL,
  `optionD` VARCHAR(50) DEFAULT NULL,
  `answer` VARCHAR(10) DEFAULT NULL,
  `note` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;



INSERT  INTO `tb_questions`(`id`,`subject`,`type`,`joinTime`,`lessonId`,`taoTiId`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`,`note`) VALUES (37,'数据库原理的老师是谁？','单选题','2015-12-01 01:00:00',5,10,'常赞杰','陈利平','姜平','以上都不是','B','空'),(39,'网络营销的发展经历几个阶段？','单选题','2015-12-01 00:00:00',29,17,'2个','3个','5个','6个','C','空'),(40,'Internet提供的基本服务有哪些？','多选题','2015-12-01 00:00:00',29,17,'E-mail','FTP','Telnet','WWW','A,B,C,D','空'),(48,'EPROM代表什么？','单选题','2015-12-01 00:00:00',8,19,'可编程存储器','可擦可编程存储器','只读存储器','可擦可编程只读存储器','D',''),(49,'对于WWW的正确解释有哪些？','多选题','2015-12-01 00:00:00',8,19,'全球网','万维网','局域网','World Wide Web的缩写','A,B,D','');





CREATE TABLE `tb_student` (
  `ID` VARCHAR(16) DEFAULT NULL,
  `name` VARCHAR(20) DEFAULT NULL,
  `pwd` VARCHAR(20) DEFAULT NULL,
  `sex` VARCHAR(2) DEFAULT NULL,
  `joinTime` DATETIME DEFAULT NULL,
  `question` VARCHAR(50) DEFAULT NULL,
  `answer` VARCHAR(50) DEFAULT NULL,
  `profession` VARCHAR(30) DEFAULT NULL,
  `cardNo` VARCHAR(18) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;



INSERT  INTO `tb_student`(`ID`,`name`,`pwd`,`sex`,`joinTime`,`question`,`answer`,`profession`,`cardNo`) VALUES ('CN20151201000001','王大锤','111','男','2015-12-01 00:00:00','birthday','717','广告学','220198302********'),('CN20151201000002','何小花','111','女','2015-12-01 00:00:00','birthday','1','计算机应用软件','220198007********'),('CN20151225000005','戴小超','111111','女','2015-12-01 00:00:00','我最喜欢的颜色','蓝灰色','计算机应用软件','220104************'),('CN20151229000006','熊时雨','000','男','2015-12-01 00:00:00','你好','你好','公司管理','20020'),('CN20151229000007','朱培','111111','男','2015-12-01 00:00:00','你好','你好','编程','52200');





CREATE TABLE `tb_sturesult` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `stuId` VARCHAR(16) DEFAULT NULL,
  `whichLesson` VARCHAR(60) DEFAULT NULL,
  `resSingle` INT(11) DEFAULT NULL,
  `resMore` INT(11) DEFAULT NULL,
  `resTotal` INT(11) DEFAULT NULL,
  `joinTime` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;



INSERT  INTO `tb_sturesult`(`id`,`stuId`,`whichLesson`,`resSingle`,`resMore`,`resTotal`,`joinTime`) VALUES (1,'CN20151201000002','计算机专业英语',50,30,80,'2015-12-01 00:00:00'),(2,'CN20151201000001','物联网体系结构',0,20,20,'2015-12-01 00:00:00'),(4,'CN20151201000001','数据库原理',20,30,50,'2013-01-01 00:00:00'),(12,'CN20151201000001','计算机专业英语',40,60,100,'2015-12-01 00:00:00'),(14,'CN20151225000005','嵌入式系统',40,0,40,'2015-12-01 00:00:00'),(29,'CN20151201000002','接口与通信技术',40,60,100,'2015-12-01 00:00:00'),(30,'CN20151229000006','数据库原理',40,60,100,'2015-12-01 00:00:00'),(37,'CN20151229000007','计算机文化基础',0,0,0,'2015-12-01 00:00:00'),(38,'CN20151229000007','数据库原理',40,60,100,'2015-12-01 00:00:00'),(39,'CN20151229000006','嵌入式系统',0,0,0,'2015-12-01 00:00:00'),(40,'CN20151201000001','数据库原理',0,0,NULL,NULL),(41,'CN20151201000002','接口与通信技术',0,0,NULL,'2015-12-02 11:43:15'),(42,'CN20151201000002','计算机文化基础',40,0,40,'2015-12-02 13:10:12');





CREATE TABLE `tb_taoti` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) DEFAULT NULL,
  `LessonID` INT(11) DEFAULT NULL,
  `JoinTime` DATETIME DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;



INSERT  INTO `tb_taoti`(`ID`,`Name`,`LessonID`,`JoinTime`) VALUES (10,'2015数据库期末考试',5,'2015-01-01 00:00:00'),(17,'2015年嵌入式期末考试题',29,'2015-12-01 00:00:00'),(19,'2015年物联网体系结构考试题',8,'2015-12-01 00:00:00'),(20,'接口与通信期末考试题',31,'2015-12-01 00:00:00');


