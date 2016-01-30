/*
SQLyog v10.2 
MySQL - 5.7.9-log : Database - db_hdb_sy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hdb_sy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_hdb_sy`;

/*Table structure for table `conn_test` */

DROP TABLE IF EXISTS `conn_test`;

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `conn_test` */

/*Table structure for table `sy_history` */

DROP TABLE IF EXISTS `sy_history`;

CREATE TABLE `sy_history` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT,
  `sy_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'honestId，溯源id',
  `company_id` int(10) NOT NULL DEFAULT '0' COMMENT '企业id',
  `company_name` varchar(64) NOT NULL DEFAULT '' COMMENT '企业名字',
  `pdId` int(10) NOT NULL DEFAULT '0' COMMENT '产品id',
  `pdName` varchar(64) NOT NULL DEFAULT '' COMMENT '产品名称',
  `pdCode` varchar(128) NOT NULL DEFAULT '' COMMENT '产品代码',
  `sy_detail` varchar(512) NOT NULL DEFAULT '' COMMENT '溯源具体信息，json',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '历史创建的时间',
  PRIMARY KEY (`id`),
  KEY `index_sy_id` (`sy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='扫码溯源历史纪录';

/*Data for the table `sy_history` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
