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

-- 导出 db_hdb_qrf 的数据库结构
DROP DATABASE IF EXISTS `db_hdb_qrf`;
CREATE DATABASE IF NOT EXISTS `db_hdb_qrf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_qrf`;

DROP TABLE IF EXISTS `conn_test`;

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `qrf_code`;
CREATE TABLE `qrf_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `company_name` varchar(128) DEFAULT '0' COMMENT '合作伙伴',
  `is_scanned` char(1) NOT NULL DEFAULT 'N' COMMENT '是否已经被扫 Y 已扫 N 没扫',
  `total_scan` int(11) NOT NULL DEFAULT '0' COMMENT '扫码次数',
  `create_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8 COMMENT='二维码对应表';

DROP TABLE IF EXISTS `qrf_scan_transaction_00`;
CREATE TABLE `qrf_scan_transaction_00` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_01`;
CREATE TABLE `qrf_scan_transaction_01` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_02`;
CREATE TABLE `qrf_scan_transaction_02` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_03`;
CREATE TABLE `qrf_scan_transaction_03` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_04`;
CREATE TABLE `qrf_scan_transaction_04` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_05`;
CREATE TABLE `qrf_scan_transaction_05` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_06`;
CREATE TABLE `qrf_scan_transaction_06` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_07`;
CREATE TABLE `qrf_scan_transaction_07` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_08`;
CREATE TABLE `qrf_scan_transaction_08` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_09`;
CREATE TABLE `qrf_scan_transaction_09` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_10`;
CREATE TABLE `qrf_scan_transaction_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_11`;
CREATE TABLE `qrf_scan_transaction_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_12`;
CREATE TABLE `qrf_scan_transaction_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_13`;
CREATE TABLE `qrf_scan_transaction_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_14`;
CREATE TABLE `qrf_scan_transaction_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_15`;
CREATE TABLE `qrf_scan_transaction_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_16`;
CREATE TABLE `qrf_scan_transaction_16` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_17`;
CREATE TABLE `qrf_scan_transaction_17` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_18`;
CREATE TABLE `qrf_scan_transaction_18` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_19`;
CREATE TABLE `qrf_scan_transaction_19` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_20`;
CREATE TABLE `qrf_scan_transaction_20` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_21`;
CREATE TABLE `qrf_scan_transaction_21` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_22`;
CREATE TABLE `qrf_scan_transaction_22` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_23`;
CREATE TABLE `qrf_scan_transaction_23` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_24`;
CREATE TABLE `qrf_scan_transaction_24` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_25`;
CREATE TABLE `qrf_scan_transaction_25` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_26`;
CREATE TABLE `qrf_scan_transaction_26` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_27`;
CREATE TABLE `qrf_scan_transaction_27` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_28`;
CREATE TABLE `qrf_scan_transaction_28` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_29`;
CREATE TABLE `qrf_scan_transaction_29` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_30`;
CREATE TABLE `qrf_scan_transaction_30` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

DROP TABLE IF EXISTS `qrf_scan_transaction_31`;
CREATE TABLE `qrf_scan_transaction_31` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `core_transaction_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分交易id',
  `scan_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '扫码抽奖时间',
  `points` int(10) unsigned DEFAULT '0' COMMENT '扫码获取的积分数',
  `ip` varchar(255) DEFAULT '0' COMMENT '用户ip地址',
  `expire_date` date DEFAULT '2011-11-11' COMMENT '抽奖积分过期时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 处理中\n1: 表示处理成功\n2: 处理失败',
  PRIMARY KEY (`id`),
  KEY `idx_code` (`code`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131000000000 DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';
-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
