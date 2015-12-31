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

-- 导出 db_hdb_admin 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_admin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_admin`;


-- 导出  表 db_hdb_admin.admin_instock 结构
CREATE TABLE IF NOT EXISTS `admin_instock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `csv_file` varchar(255) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `finish_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `total_no` int(11) NOT NULL DEFAULT '0',
  `failed_no` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_admin.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出 db_hdb_core 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_core` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_core`;


-- 导出  表 db_hdb_core.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.org_account_points 结构
CREATE TABLE IF NOT EXISTS `org_account_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `points_pool` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户积分池总量',
  `used_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户积分池使用量',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常商户, 2. 冻结商户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_org_account_id` (`org_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心-组织账户积分表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_00 结构
CREATE TABLE IF NOT EXISTS `points_payment_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_01 结构
CREATE TABLE IF NOT EXISTS `points_payment_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_02 结构
CREATE TABLE IF NOT EXISTS `points_payment_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_03 结构
CREATE TABLE IF NOT EXISTS `points_payment_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_04 结构
CREATE TABLE IF NOT EXISTS `points_payment_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_05 结构
CREATE TABLE IF NOT EXISTS `points_payment_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_06 结构
CREATE TABLE IF NOT EXISTS `points_payment_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_07 结构
CREATE TABLE IF NOT EXISTS `points_payment_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_08 结构
CREATE TABLE IF NOT EXISTS `points_payment_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_09 结构
CREATE TABLE IF NOT EXISTS `points_payment_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_10 结构
CREATE TABLE IF NOT EXISTS `points_payment_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_11 结构
CREATE TABLE IF NOT EXISTS `points_payment_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_12 结构
CREATE TABLE IF NOT EXISTS `points_payment_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_13 结构
CREATE TABLE IF NOT EXISTS `points_payment_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_14 结构
CREATE TABLE IF NOT EXISTS `points_payment_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_15 结构
CREATE TABLE IF NOT EXISTS `points_payment_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_16 结构
CREATE TABLE IF NOT EXISTS `points_payment_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_17 结构
CREATE TABLE IF NOT EXISTS `points_payment_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_18 结构
CREATE TABLE IF NOT EXISTS `points_payment_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_19 结构
CREATE TABLE IF NOT EXISTS `points_payment_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_20 结构
CREATE TABLE IF NOT EXISTS `points_payment_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_21 结构
CREATE TABLE IF NOT EXISTS `points_payment_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_22 结构
CREATE TABLE IF NOT EXISTS `points_payment_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_23 结构
CREATE TABLE IF NOT EXISTS `points_payment_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_24 结构
CREATE TABLE IF NOT EXISTS `points_payment_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_25 结构
CREATE TABLE IF NOT EXISTS `points_payment_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_26 结构
CREATE TABLE IF NOT EXISTS `points_payment_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_27 结构
CREATE TABLE IF NOT EXISTS `points_payment_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_28 结构
CREATE TABLE IF NOT EXISTS `points_payment_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_29 结构
CREATE TABLE IF NOT EXISTS `points_payment_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_30 结构
CREATE TABLE IF NOT EXISTS `points_payment_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_payment_31 结构
CREATE TABLE IF NOT EXISTS `points_payment_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_recv_id` (`recv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_00 结构
CREATE TABLE IF NOT EXISTS `points_recv_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_01 结构
CREATE TABLE IF NOT EXISTS `points_recv_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_02 结构
CREATE TABLE IF NOT EXISTS `points_recv_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_03 结构
CREATE TABLE IF NOT EXISTS `points_recv_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_04 结构
CREATE TABLE IF NOT EXISTS `points_recv_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_05 结构
CREATE TABLE IF NOT EXISTS `points_recv_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_06 结构
CREATE TABLE IF NOT EXISTS `points_recv_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_07 结构
CREATE TABLE IF NOT EXISTS `points_recv_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_08 结构
CREATE TABLE IF NOT EXISTS `points_recv_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_09 结构
CREATE TABLE IF NOT EXISTS `points_recv_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_10 结构
CREATE TABLE IF NOT EXISTS `points_recv_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_11 结构
CREATE TABLE IF NOT EXISTS `points_recv_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_12 结构
CREATE TABLE IF NOT EXISTS `points_recv_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_13 结构
CREATE TABLE IF NOT EXISTS `points_recv_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_14 结构
CREATE TABLE IF NOT EXISTS `points_recv_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_15 结构
CREATE TABLE IF NOT EXISTS `points_recv_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_16 结构
CREATE TABLE IF NOT EXISTS `points_recv_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_17 结构
CREATE TABLE IF NOT EXISTS `points_recv_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_18 结构
CREATE TABLE IF NOT EXISTS `points_recv_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_19 结构
CREATE TABLE IF NOT EXISTS `points_recv_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_20 结构
CREATE TABLE IF NOT EXISTS `points_recv_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_21 结构
CREATE TABLE IF NOT EXISTS `points_recv_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_22 结构
CREATE TABLE IF NOT EXISTS `points_recv_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_23 结构
CREATE TABLE IF NOT EXISTS `points_recv_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_24 结构
CREATE TABLE IF NOT EXISTS `points_recv_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_25 结构
CREATE TABLE IF NOT EXISTS `points_recv_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_26 结构
CREATE TABLE IF NOT EXISTS `points_recv_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_27 结构
CREATE TABLE IF NOT EXISTS `points_recv_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_28 结构
CREATE TABLE IF NOT EXISTS `points_recv_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_29 结构
CREATE TABLE IF NOT EXISTS `points_recv_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_30 结构
CREATE TABLE IF NOT EXISTS `points_recv_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_recv_31 结构
CREATE TABLE IF NOT EXISTS `points_recv_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户获得的积分数量',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '该条积分记录中还未使用的积分',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '用户获得的积分的过期时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`,`org_account_id`),
  KEY `idx_org_account_id` (`org_account_id`),
  KEY `idx_unused_points` (`unused_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_00 结构
CREATE TABLE IF NOT EXISTS `points_txn_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_01 结构
CREATE TABLE IF NOT EXISTS `points_txn_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_02 结构
CREATE TABLE IF NOT EXISTS `points_txn_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_03 结构
CREATE TABLE IF NOT EXISTS `points_txn_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_04 结构
CREATE TABLE IF NOT EXISTS `points_txn_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_05 结构
CREATE TABLE IF NOT EXISTS `points_txn_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_06 结构
CREATE TABLE IF NOT EXISTS `points_txn_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_07 结构
CREATE TABLE IF NOT EXISTS `points_txn_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_08 结构
CREATE TABLE IF NOT EXISTS `points_txn_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_09 结构
CREATE TABLE IF NOT EXISTS `points_txn_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_10 结构
CREATE TABLE IF NOT EXISTS `points_txn_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_11 结构
CREATE TABLE IF NOT EXISTS `points_txn_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_12 结构
CREATE TABLE IF NOT EXISTS `points_txn_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_13 结构
CREATE TABLE IF NOT EXISTS `points_txn_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_14 结构
CREATE TABLE IF NOT EXISTS `points_txn_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_15 结构
CREATE TABLE IF NOT EXISTS `points_txn_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_16 结构
CREATE TABLE IF NOT EXISTS `points_txn_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_17 结构
CREATE TABLE IF NOT EXISTS `points_txn_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_18 结构
CREATE TABLE IF NOT EXISTS `points_txn_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_19 结构
CREATE TABLE IF NOT EXISTS `points_txn_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_20 结构
CREATE TABLE IF NOT EXISTS `points_txn_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_21 结构
CREATE TABLE IF NOT EXISTS `points_txn_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_22 结构
CREATE TABLE IF NOT EXISTS `points_txn_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_23 结构
CREATE TABLE IF NOT EXISTS `points_txn_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_24 结构
CREATE TABLE IF NOT EXISTS `points_txn_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_25 结构
CREATE TABLE IF NOT EXISTS `points_txn_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_26 结构
CREATE TABLE IF NOT EXISTS `points_txn_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_27 结构
CREATE TABLE IF NOT EXISTS `points_txn_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_28 结构
CREATE TABLE IF NOT EXISTS `points_txn_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_29 结构
CREATE TABLE IF NOT EXISTS `points_txn_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_30 结构
CREATE TABLE IF NOT EXISTS `points_txn_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.points_txn_31 结构
CREATE TABLE IF NOT EXISTS `points_txn_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水关联的交易ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易渠道',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '交易类型, 1: 赚积分, 0: 花积分',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '交易积分数量',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '交易积分过期时间，花积分',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id_org_account_id_expire_date` (`user_account_id`,`org_account_id`,`expire_date`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_core.user_account_points 结构
CREATE TABLE IF NOT EXISTS `user_account_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

-- 数据导出被取消选择。


-- 导出 db_hdb_ffactivity 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_ffactivity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_ffactivity`;


-- 导出  表 db_hdb_ffactivity.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_ffactivity.ff_activity 结构
CREATE TABLE IF NOT EXISTS `ff_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_name` varchar(100) NOT NULL DEFAULT '' COMMENT '活动名',
  `ac_desc` varchar(2000) NOT NULL DEFAULT '' COMMENT '活动描述',
  `ac_type` varchar(20) NOT NULL DEFAULT '' COMMENT '活动类型:一物一码（FFAC|S|YWYM）有效期活动码(FFAC|M|YXQM)',
  `ac_code` varchar(100) NOT NULL DEFAULT '' COMMENT '活动编码',
  `ac_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '活动状态 0-未开始 1-进行中 2-已结束',
  `begin_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '活动开始时间',
  `finish_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动结束时间',
  `max_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分最大值',
  `min_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分最小值',
  `avg_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分平均值',
  `points_expire_date` date NOT NULL DEFAULT '2999-01-01' COMMENT '积分过期日期',
  `total_gen_points` int(11) NOT NULL DEFAULT '0' COMMENT '已产生的积分总数',
  `partner_id` varchar(50) NOT NULL DEFAULT '' COMMENT '合作伙伴编号',
  `product_id` varchar(50) NOT NULL DEFAULT '' COMMENT '产品编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动更新时间',
  `terminate_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '下线时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '活动创建人',
  `update_user` varchar(50) NOT NULL DEFAULT '' COMMENT '活动更新人',
  `terminate_user` varchar(255) NOT NULL DEFAULT '' COMMENT '下线用户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志 1-已删除 0-未删除',
  PRIMARY KEY (`id`),
  KEY `udx_activity_code` (`ac_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_ffactivity.ff_activity_old 结构
CREATE TABLE IF NOT EXISTS `ff_activity_old` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `partner_id` int(10) unsigned DEFAULT '0' COMMENT '合作伙伴id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '活动分类id',
  `name` varchar(64) NOT NULL DEFAULT '0' COMMENT '抽奖活动名字',
  `descr` varchar(2000) NOT NULL COMMENT '活动说明',
  `start_date` date NOT NULL DEFAULT '2015-01-01' COMMENT '活动开始时间',
  `end_date` date NOT NULL DEFAULT '2015-01-01' COMMENT '活动结束时间',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '已经发分数量',
  `priority` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '活动优先级',
  `rule_ff_region_start` int(11) NOT NULL DEFAULT '0' COMMENT '微分范围开始',
  `rule_ff_region_end` int(11) NOT NULL DEFAULT '0' COMMENT '微分范围结束',
  `rule_ff_avg` int(11) NOT NULL DEFAULT '0' COMMENT '微分平均值',
  `prod_id` varchar(64) NOT NULL DEFAULT '0' COMMENT '产品ID',
  `activity_type` varchar(128) NOT NULL DEFAULT '1' COMMENT '活动码类型 1一物一码',
  `point_expired_time` date NOT NULL DEFAULT '2015-01-01' COMMENT '积分过期时间',
  `active_flag` char(1) NOT NULL DEFAULT 'N' COMMENT '是否激活',
  `multi_scan_flag` char(1) NOT NULL DEFAULT 'N' COMMENT '是否允许重复扫码',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updater` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '更新者',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '活动编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发分活动表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_ffactivity.ff_partner 结构
CREATE TABLE IF NOT EXISTS `ff_partner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL DEFAULT '0' COMMENT '合作伙伴名字',
  `contact_phone` varchar(64) NOT NULL DEFAULT '0' COMMENT '合作伙伴联系电话',
  `contact_address` varchar(256) NOT NULL DEFAULT '0' COMMENT '合作伙伴联系地址',
  `contact_post` varchar(32) NOT NULL DEFAULT '0' COMMENT '合作伙伴联系邮编',
  `descrption` varchar(1024) DEFAULT NULL COMMENT '合作伙伴描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动合作伙伴表';

-- 数据导出被取消选择。


-- 导出 db_hdb_indiana 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_indiana` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_hdb_indiana`;


-- 导出  表 db_hdb_indiana.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_activity 结构
CREATE TABLE IF NOT EXISTS `indiana_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sequence` int(10) unsigned NOT NULL COMMENT '活动期数',
  `group_id` bigint(20) unsigned NOT NULL COMMENT '活动组id',
  `item_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `entry_point` int(10) unsigned NOT NULL COMMENT '最小投注点数',
  `entrant_count` int(10) unsigned NOT NULL COMMENT '参与注数',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动状态,0-未开始, 1-已开始, 2-已结束, 3-未发奖, 4-已发奖',
  `start_time` datetime NOT NULL COMMENT '活动开始时间',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '中奖用户id',
  `winner_betting_quantity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'winner投注数',
  `number_all` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '数值A',
  `betting_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经投注数',
  `lucky_number` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '中奖幸运号码',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updater` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '更新者',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='夺宝活动表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_activity_group 结构
CREATE TABLE IF NOT EXISTS `indiana_activity_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(256) NOT NULL COMMENT '活动标题',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updater` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '更新者',
  `total_stage_quantity` int(10) unsigned NOT NULL COMMENT '总期数',
  `finished_stage_quantity` int(10) unsigned NOT NULL COMMENT '已完成期数',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `entry_point` int(10) unsigned NOT NULL COMMENT '最小投注点数',
  `entrant_count` int(10) unsigned NOT NULL COMMENT '参与注数',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动状态,0-未开始, 1-已开始, 2-已结束',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `on_or_off` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动上下架状态,0-下架, 1-上架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='夺宝活动组表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_last_random_seed 结构
CREATE TABLE IF NOT EXISTS `indiana_last_random_seed` (
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码',
  `betting_time` bigint(20) NOT NULL COMMENT '下注时间',
  KEY `idx_indiana_last_random_seed_lucky_number` (`lucky_number`),
  KEY `idx_indiana_last_random_seed_activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='最后100个下注单时间表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_number_pool 结构
CREATE TABLE IF NOT EXISTS `indiana_number_pool` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '奖品id',
  `lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动状态,0-未使用, 1-已使用',
  PRIMARY KEY (`id`),
  KEY `idx_indiana_number_pool_activity_id` (`activity_id`),
  KEY `idx_indiana_number_pool_lucky_number` (`lucky_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码池表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_order 结构
CREATE TABLE IF NOT EXISTS `indiana_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '奖品id',
  `unit_point` bigint(20) unsigned NOT NULL COMMENT '单位分数',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `success_item_quantity` bigint(20) unsigned NOT NULL COMMENT '成功购买数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `user_email` varchar(256) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `user_name` varchar(256) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_phone` varchar(128) NOT NULL DEFAULT '' COMMENT '手机号',
  `user_ip_location` varchar(1024) NOT NULL DEFAULT '' COMMENT '地址',
  `user_address` varchar(1024) NOT NULL DEFAULT '' COMMENT '地址',
  PRIMARY KEY (`id`),
  KEY `idx_indiana_order_user_id` (`user_id`),
  KEY `idx_indiana_order_activity_id` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户夺宝信息表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_indiana.indiana_order_item 结构
CREATE TABLE IF NOT EXISTS `indiana_order_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '奖品id',
  `lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码',
  `betting_time` bigint(20) NOT NULL COMMENT '下注时间',
  `order_id` bigint(20) unsigned NOT NULL COMMENT '投注单id',
  PRIMARY KEY (`id`),
  KEY `idx_indiana_order_item_activity_id` (`activity_id`),
  KEY `idx_indiana_order_item_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户下注信息表';

-- 数据导出被取消选择。


-- 导出 db_hdb_mall 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_mall` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_mall`;


-- 导出  表 db_hdb_mall.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory 结构
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '100001',
  `item_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 优惠券\n1 实物',
  `org_id` bigint(20) unsigned NOT NULL DEFAULT '100001',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `update_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_detail 结构
CREATE TABLE IF NOT EXISTS `inventory_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '100001',
  `reserved_id` varchar(128) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL DEFAULT '0000000000000000000000000',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 表示未出售\n1 表示出售',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  `update_time` datetime NOT NULL DEFAULT '2011-11-11 11:11:11',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_inreserve 结构
CREATE TABLE IF NOT EXISTS `inventory_inreserve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reserved_id` varchar(128) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.item 结构
CREATE TABLE IF NOT EXISTS `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `org_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织ID',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '商品标题',
  `sub_title` varchar(128) NOT NULL DEFAULT '' COMMENT '商品副标题',
  `list_price` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品展示价格，原价或者市场价',
  `signature` char(32) NOT NULL DEFAULT '00000000000000000000000000000000' COMMENT '商品签名',
  `description` varchar(4096) NOT NULL DEFAULT '' COMMENT '商品详细描述',
  `cat_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品类目ID',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '商品类型, 1: 实物商品 2: 虚拟商品',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效：0.否,1.是',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品主要信息表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.item_attribute 结构
CREATE TABLE IF NOT EXISTS `item_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'item ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '商品属性名称',
  `value` varchar(32) NOT NULL DEFAULT '' COMMENT '商品属性值',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '属性类型, 1: item属性, 2: 关键属性, 3: 销售属性',
  `sequence` tinyint(4) NOT NULL DEFAULT '0' COMMENT '属性显示顺序',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id_name` (`item_id`,`name`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.item_image 结构
CREATE TABLE IF NOT EXISTS `item_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'item ID',
  `image_base_url` varchar(128) NOT NULL DEFAULT '' COMMENT '商品原始url',
  `sequence` tinyint(4) NOT NULL DEFAULT '0' COMMENT '图片顺序,0为主图',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.item_price 结构
CREATE TABLE IF NOT EXISTS `item_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'item ID',
  `points_price` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品积分价格',
  `cash_price` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品现金价格',
  `sequence` tinyint(4) NOT NULL DEFAULT '0' COMMENT '价格显示顺序',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`,`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品价格表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.orders 结构
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `order_id` varchar(64) NOT NULL DEFAULT '' COMMENT '订单自定义id',
  `order_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '订单类型.兑换订单:1',
  `order_status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态,创建成功为0；订单完成：2；订单无效：3；',
  `device_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '设备类型.H5:1;android:2;ios:3',
  `address_snapshot` varchar(512) NOT NULL DEFAULT '{}' COMMENT '送货地址镜像',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `org_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `real_cost` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单花费的货币金额',
  `real_point_cost` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单花费的积分数额',
  `pay_success_time` datetime DEFAULT NULL COMMENT '成功支付的时间',
  `finish_time` datetime DEFAULT NULL COMMENT '完成订单的时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '订单取消的时间',
  `reject_time` datetime DEFAULT NULL COMMENT '退单的时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建的时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改的时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分商城订单记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.order_item 结构
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单子项id',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `item_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `item_title` varchar(128) NOT NULL DEFAULT '' COMMENT '商品描述',
  `item_real_price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品花费货币金额',
  `item_point_price` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品花费积分数额',
  `item_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型',
  `item_order_status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '订单中商品的状态，创建成功为0；订单完成：2；',
  `item_external` varchar(3096) NOT NULL DEFAULT '' COMMENT '商品的扩展信息',
  `item_image_url` varchar(512) NOT NULL DEFAULT '' COMMENT '商品主图的url',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间',
  PRIMARY KEY (`id`),
  KEY `index_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分商城订单商品记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.order_payment 结构
CREATE TABLE IF NOT EXISTS `order_payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付id，自增',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `payment_id` varchar(64) NOT NULL DEFAULT '' COMMENT '其他系统返回的支付id',
  `payment_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型',
  `payment_status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '记录支付的状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间',
  PRIMARY KEY (`id`),
  KEY `index_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='恒大积分商城订单支付记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.upload_detail 结构
CREATE TABLE IF NOT EXISTS `upload_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statu` varchar(2) NOT NULL,
  `amount` int(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `source` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出 db_hdb_passport 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_passport` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_passport`;


-- 导出  表 db_hdb_passport.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_1 结构
CREATE TABLE IF NOT EXISTS `passport_user_1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_10 结构
CREATE TABLE IF NOT EXISTS `passport_user_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_11 结构
CREATE TABLE IF NOT EXISTS `passport_user_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_12 结构
CREATE TABLE IF NOT EXISTS `passport_user_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_13 结构
CREATE TABLE IF NOT EXISTS `passport_user_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_14 结构
CREATE TABLE IF NOT EXISTS `passport_user_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_15 结构
CREATE TABLE IF NOT EXISTS `passport_user_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_16 结构
CREATE TABLE IF NOT EXISTS `passport_user_16` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_17 结构
CREATE TABLE IF NOT EXISTS `passport_user_17` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_18 结构
CREATE TABLE IF NOT EXISTS `passport_user_18` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_19 结构
CREATE TABLE IF NOT EXISTS `passport_user_19` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_2 结构
CREATE TABLE IF NOT EXISTS `passport_user_2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_20 结构
CREATE TABLE IF NOT EXISTS `passport_user_20` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_21 结构
CREATE TABLE IF NOT EXISTS `passport_user_21` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_22 结构
CREATE TABLE IF NOT EXISTS `passport_user_22` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_23 结构
CREATE TABLE IF NOT EXISTS `passport_user_23` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_24 结构
CREATE TABLE IF NOT EXISTS `passport_user_24` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_25 结构
CREATE TABLE IF NOT EXISTS `passport_user_25` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_26 结构
CREATE TABLE IF NOT EXISTS `passport_user_26` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_27 结构
CREATE TABLE IF NOT EXISTS `passport_user_27` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_28 结构
CREATE TABLE IF NOT EXISTS `passport_user_28` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_29 结构
CREATE TABLE IF NOT EXISTS `passport_user_29` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_3 结构
CREATE TABLE IF NOT EXISTS `passport_user_3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_30 结构
CREATE TABLE IF NOT EXISTS `passport_user_30` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_31 结构
CREATE TABLE IF NOT EXISTS `passport_user_31` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_32 结构
CREATE TABLE IF NOT EXISTS `passport_user_32` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_4 结构
CREATE TABLE IF NOT EXISTS `passport_user_4` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_5 结构
CREATE TABLE IF NOT EXISTS `passport_user_5` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_6 结构
CREATE TABLE IF NOT EXISTS `passport_user_6` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_7 结构
CREATE TABLE IF NOT EXISTS `passport_user_7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_8 结构
CREATE TABLE IF NOT EXISTS `passport_user_8` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_passport.passport_user_9 结构
CREATE TABLE IF NOT EXISTS `passport_user_9` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `salt` varchar(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- 数据导出被取消选择。


-- 导出 db_hdb_qrf 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_qrf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_qrf`;


-- 导出  表 db_hdb_qrf.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.dubbo_invoke 结构
CREATE TABLE IF NOT EXISTS `dubbo_invoke` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `invoke_date` date NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `consumer` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT '',
  `invoke_time` bigint(20) DEFAULT NULL,
  `success` int(11) DEFAULT NULL,
  `failure` int(11) DEFAULT NULL,
  `elapsed` int(11) DEFAULT NULL,
  `concurrent` int(11) DEFAULT NULL,
  `max_elapsed` int(11) DEFAULT NULL,
  `max_concurrent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_service` (`service`) USING BTREE,
  KEY `index_method` (`method`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_code 结构
CREATE TABLE IF NOT EXISTS `qrf_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) NOT NULL DEFAULT '0' COMMENT '活动码',
  `company_name` varchar(128) DEFAULT '0' COMMENT '合作伙伴',
  `is_scanned` char(1) NOT NULL DEFAULT 'N' COMMENT '是否已经被扫 Y 已扫 N 没扫',
  `total_scan` int(11) NOT NULL DEFAULT '0' COMMENT '扫码次数',
  `create_time` datetime DEFAULT '2011-11-11 11:11:11' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二维码对应表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_00 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_00` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_01 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_01` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_02 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_02` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_03 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_03` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_04 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_04` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_05 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_05` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_06 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_06` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_07 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_07` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_08 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_08` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_09 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_09` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_10 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_10` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_11 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_11` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_12 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_12` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_13 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_13` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_14 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_14` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_15 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_15` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_16 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_16` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_17 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_17` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_18 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_18` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_19 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_19` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_20 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_20` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_21 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_21` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_22 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_22` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_23 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_23` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_24 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_24` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_25 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_25` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_26 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_26` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_27 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_27` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_28 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_28` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_29 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_29` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_30 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_30` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_qrf.qrf_scan_transaction_31 结构
CREATE TABLE IF NOT EXISTS `qrf_scan_transaction_31` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扫码抽奖记录';

-- 数据导出被取消选择。


-- 导出 db_hdb_uc 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdb_uc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_uc`;


-- 导出  表 db_hdb_uc.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_uc.sys_areas 结构
CREATE TABLE IF NOT EXISTS `sys_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '市编码',
  `area_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '区（县）编码',
  `area_name` varchar(50) NOT NULL DEFAULT '--' COMMENT '区（县）名',
  `area_name_en` varchar(100) NOT NULL DEFAULT '--' COMMENT '区（县）英文名',
  `location` varchar(50) NOT NULL DEFAULT '--' COMMENT '坐标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_area_code` (`area_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区（县）表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_uc.sys_cities 结构
CREATE TABLE IF NOT EXISTS `sys_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '省编码',
  `city_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '市编码',
  `city_name` varchar(50) NOT NULL DEFAULT '--' COMMENT '市名称',
  `city_name_en` varchar(100) NOT NULL DEFAULT '--' COMMENT '市英文名',
  `location` varchar(50) NOT NULL DEFAULT '--' COMMENT '坐标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_uc.sys_provinces 结构
CREATE TABLE IF NOT EXISTS `sys_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `province_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '省编码',
  `province_name` varchar(50) NOT NULL DEFAULT '--' COMMENT '省名',
  `province_name_en` varchar(100) NOT NULL DEFAULT '--' COMMENT '省英文名',
  `display_order` smallint(6) NOT NULL DEFAULT '999' COMMENT '显示顺序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_province_code` (`province_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省份表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_uc.user_address 结构
CREATE TABLE IF NOT EXISTS `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `address_code` varchar(32) NOT NULL DEFAULT '--' COMMENT '地址编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `name` varchar(50) NOT NULL DEFAULT '--' COMMENT '收货人姓名',
  `telephone` varchar(20) NOT NULL DEFAULT '--' COMMENT '收货人电话',
  `province_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '省编码',
  `city_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '市编码',
  `area_code` varchar(6) NOT NULL DEFAULT '--' COMMENT '区（县）编码',
  `pca_full_name` varchar(100) NOT NULL DEFAULT '--' COMMENT '省市区聚合名称，如安徽省合肥市肥西县，上海上海市黄浦区',
  `detail_address` varchar(500) NOT NULL DEFAULT '--' COMMENT '详细地址',
  `postcode` varchar(6) NOT NULL DEFAULT '--' COMMENT '邮政编码',
  `location` varchar(50) NOT NULL DEFAULT '--' COMMENT '坐标（用以在地图上标记收货地址）',
  `formatted_address` varchar(1024) NOT NULL DEFAULT '--' COMMENT '格式化的地址数据（大数据用）',
  `default_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否默认地址 1-是 0-否',
  `delete_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `udx_address_code` (`address_code`),
  KEY `idx_address_userid` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收货地址信息';

-- 数据导出被取消选择。


-- 导出 db_hdi_auth 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_hdi_auth` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdi_auth`;


-- 导出  表 db_hdi_auth.conn_test 结构
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.permission 结构
CREATE TABLE IF NOT EXISTS `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `expression` varchar(128) NOT NULL DEFAULT '' COMMENT '权限表达式',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '权限描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenantId_expression` (`tenant_id`,`expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.role 结构
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '角色名',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '角色描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenantid_rolename` (`tenant_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.role_permission 结构
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_roleid_permissionid` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.tenant 结构
CREATE TABLE IF NOT EXISTS `tenant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '产品线名',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '产品线描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品线表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(128) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '登录密码',
  `salt` varchar(128) NOT NULL DEFAULT '' COMMENT '加密盐',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.user_role 结构
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_userid_roleid` (`tenant_id`,`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
