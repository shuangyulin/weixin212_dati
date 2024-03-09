-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm4l6z6
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm4l6z6`
--

/*!40000 DROP DATABASE IF EXISTS `ssm4l6z6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm4l6z6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm4l6z6`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1647156903230.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxitonggonggao`
--

DROP TABLE IF EXISTS `discussxitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647157047018 DEFAULT CHARSET=utf8 COMMENT='系统公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxitonggonggao`
--

LOCK TABLES `discussxitonggonggao` WRITE;
/*!40000 ALTER TABLE `discussxitonggonggao` DISABLE KEYS */;
INSERT INTO `discussxitonggonggao` VALUES (61,'2022-03-13 07:24:17',1,1,'用户名1','评论内容1','回复内容1'),(62,'2022-03-13 07:24:17',2,2,'用户名2','评论内容2','回复内容2'),(63,'2022-03-13 07:24:17',3,3,'用户名3','评论内容3','回复内容3'),(64,'2022-03-13 07:24:17',4,4,'用户名4','评论内容4','回复内容4'),(65,'2022-03-13 07:24:17',5,5,'用户名5','评论内容5','回复内容5'),(66,'2022-03-13 07:24:17',6,6,'用户名6','评论内容6','回复内容6'),(1647157047017,'2022-03-13 07:37:26',21,1647156959381,'001','分公司的水电费感受到分公司','得分公司的奉公守法');
/*!40000 ALTER TABLE `discussxitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647156768867 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2022-03-13 07:24:17','十万个为什么',60,1),(1647156768866,'2022-03-13 07:32:47','111',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647156881232 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2022-03-13 07:24:17',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1),(2,'2022-03-13 07:24:17',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2),(3,'2022-03-13 07:24:17',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3),(4,'2022-03-13 07:24:17',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4),(1647156806084,'2022-03-13 07:33:25',1647156768866,'111','大师分散公告都是否鬼地方个','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',20,'A','发给撒地方干啥的',0,1),(1647156843874,'2022-03-13 07:34:02',1647156768866,'111','发个十多个水电费干是','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',30,'A,B,C','工号教师复工后水电费',1,2),(1647156861478,'2022-03-13 07:34:21',1647156768866,'111','啥的法撒旦法撒旦','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','撒打算放大法师的法师',2,3),(1647156881231,'2022-03-13 07:34:40',1647156768866,'111','大撒旦法师打发是','[]',30,'111','梵蒂冈水电费感受到发',3,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647156994104 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1647156972354,'2022-03-13 07:36:12',1647156959381,NULL,1,'十万个为什么',1,'下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.蜜蜂\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.蜂鸟\",\"code\":\"C\",\"checked\":true}]',20,'C','蜂鸟',20,'C'),(1647156975668,'2022-03-13 07:36:15',1647156959381,NULL,1,'十万个为什么',2,'油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":true}]',20,'B','油着火后不可以用水扑灭',20,'B'),(1647156979129,'2022-03-13 07:36:18',1647156959381,NULL,1,'十万个为什么',3,'地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',0,'消费GV都是'),(1647156981819,'2022-03-13 07:36:21',1647156959381,NULL,1,'十万个为什么',4,'下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.猫\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.狗\",\"code\":\"C\",\"checked\":false}]',30,'A,B','狗不会流汗',30,'A,B'),(1647156986439,'2022-03-13 07:36:25',1647156959381,NULL,1647156768866,'111',1647156806084,'大师分散公告都是否鬼地方个','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.4\",\"code\":\"D\",\"checked\":false}]',20,'A','发给撒地方干啥的',20,'A'),(1647156988955,'2022-03-13 07:36:28',1647156959381,NULL,1647156768866,'111',1647156843874,'发个十多个水电费干是','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.4\",\"code\":\"D\",\"checked\":false}]',30,'A,B,C','工号教师复工后水电费',30,'A,B,C'),(1647156990330,'2022-03-13 07:36:30',1647156959381,NULL,1647156768866,'111',1647156861478,'啥的法撒旦法撒旦','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":true}]',20,'A','撒打算放大法师的法师',0,'B'),(1647156994103,'2022-03-13 07:36:33',1647156959381,NULL,1647156768866,'111',1647156881231,'大撒旦法师打发是','[]',30,'111','梵蒂冈水电费感受到发',30,'111');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','pv69m047gn9j6bpndvnv7ks92tuk7t7d','2022-03-13 07:31:18','2022-03-13 08:37:38'),(2,1647156959381,'001','yonghu','用户','j6kjf173tbzhbxezriujysc2z4k9zdnw','2022-03-13 07:36:03','2022-03-13 08:37:52');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-13 07:24:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaomingcheng` varchar(200) DEFAULT NULL COMMENT '公告名称',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `fabuneirong` longtext COMMENT '发布内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (21,'2022-03-13 07:24:17','双方各地方','2022-03-13','<p>按时发的发的发生的发大法撒旦法撒旦发<img src=\"http://localhost:8080/ssm4l6z6/upload/1647156711962.png\"></p>','upload/xitonggonggao_fengmian1.jpg'),(23,'2022-03-13 07:24:17','公告名称3','2022-03-13','发布内容3','upload/xitonggonggao_fengmian3.jpg'),(24,'2022-03-13 07:24:17','公告名称4','2022-03-13','发布内容4','upload/xitonggonggao_fengmian4.jpg'),(25,'2022-03-13 07:24:17','公告名称5','2022-03-13','发布内容5','upload/xitonggonggao_fengmian5.jpg'),(26,'2022-03-13 07:24:17','公告名称6','2022-03-13','发布内容6','upload/xitonggonggao_fengmian6.jpg');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647156959382 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-13 07:24:17','用户账号1','用户姓名1','123456','13823888881','邮箱1','男','upload/yonghu_touxiang1.jpg'),(12,'2022-03-13 07:24:17','用户账号2','用户姓名2','123456','13823888882','邮箱2','男','upload/yonghu_touxiang2.jpg'),(13,'2022-03-13 07:24:17','用户账号3','用户姓名3','123456','13823888883','邮箱3','男','upload/yonghu_touxiang3.jpg'),(14,'2022-03-13 07:24:17','用户账号4','用户姓名4','123456','13823888884','邮箱4','男','upload/yonghu_touxiang4.jpg'),(15,'2022-03-13 07:24:17','用户账号5','用户姓名5','123456','13823888885','邮箱5','男','upload/yonghu_touxiang5.jpg'),(16,'2022-03-13 07:24:17','用户账号6','用户姓名6','123456','13823888886','邮箱6','男','upload/yonghu_touxiang6.jpg'),(1647156959381,'2022-03-13 07:35:59','001','张三','001','13523523235','6216632632@qq.com','男','upload/1647157026203.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-14 15:44:48
