\/*
SQLyog v10.2 
MySQL - 5.6.27 : Database - db_hdi_sms
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hdi_sms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_hdi_sms`;

/*Table structure for table `conn_test` */

DROP TABLE IF EXISTS `conn_test`;

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `conn_test` */

/*Table structure for table `sms_account` */

DROP TABLE IF EXISTS `sms_account`;

CREATE TABLE `sms_account` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `company_no` varchar(20) NOT NULL COMMENT '企业编号',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sms_account` */

insert  into `sms_account`(`id`,`company_no`,`username`,`password`) values (1,'228723','haz_hddc','P@ssw0rd'),(2,'229442','hz_hdhlw','P@ssw0rd'),(3,'229443','hz_hdhlw2','P@ssw0rd');

/*Table structure for table `sms_templates` */

DROP TABLE IF EXISTS `sms_templates`;

CREATE TABLE `sms_templates` (
  `channel` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '通道id',
  `template` varchar(256) NOT NULL DEFAULT '' COMMENT '一天短信长度最大值是140个字节，请尽量保证生成的短信能一条信息发送',
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT '通道对应的账户id',
  PRIMARY KEY (`channel`)
) ENGINE=InnoDB AUTO_INCREMENT=1000111 DEFAULT CHARSET=utf8;

/*Data for the table `sms_templates` */

insert  into `sms_templates`(`channel`,`template`,`account_id`) values (1000001,'恒大积分验证码为%s，请在10分钟内使用，注意保密哦！',1),(1000003,'亲爱的积分商城用户，您购买的%s的优惠券码为%s',2),(1000110,'%s',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
