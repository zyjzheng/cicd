-- --------------------------------------------------------
-- 主机:                           120.26.192.100
-- 服务器版本:                        5.7.9-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 db_hdi_sms 的数据库结构
DROP DATABASE IF EXISTS `db_hdi_sms`;
CREATE DATABASE IF NOT EXISTS `db_hdi_sms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdi_sms`;


-- 导出  表 db_hdi_sms.conn_test 结构
DROP TABLE IF EXISTS `conn_test`;
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdi_sms.sms_templates 结构
DROP TABLE IF EXISTS `sms_templates`;
CREATE TABLE IF NOT EXISTS `sms_templates` (
  `channel` bigint(20) NOT NULL AUTO_INCREMENT,
  `template` varchar(256) NOT NULL DEFAULT '' COMMENT '一天短信长度最大值是140个字节，请尽量保证生成的短信能一条信息发送',
  PRIMARY KEY (`channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert  into `sms_templates`(`channel`,`template`) values (1000001,'恒大积分验证码为%s，请在10分钟内使用，注意保密哦！'),(1000003,'亲爱的积分商城用户，您购买的%s的优惠券码为%s');
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
