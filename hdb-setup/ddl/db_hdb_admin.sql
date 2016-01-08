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
DROP DATABASE IF EXISTS `db_hdb_admin`;
CREATE DATABASE IF NOT EXISTS `db_hdb_admin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_admin`;


DROP TABLE IF EXISTS `admin_delivery`;
CREATE TABLE IF NOT EXISTS `admin_delivery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单类型：1.积分兑换，2.夺宝订单',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发货状态：0.未发货, 1.已发货',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `delivery_id` varchar(50) DEFAULT NULL COMMENT '快递单号',
  `create_by` varchar(50) NOT NULL DEFAULT '系统' COMMENT '发货单创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(50) NOT NULL DEFAULT '系统' COMMENT '发货单更新者',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_id_order_type` (`order_id`,`order_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发货单表';

DROP TABLE IF EXISTS `admin_instock`;
CREATE TABLE IF NOT EXISTS `admin_instock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `csv_file` varchar(255) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `finish_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `total_no` int(11) NOT NULL DEFAULT '0',
  `failed_no` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
