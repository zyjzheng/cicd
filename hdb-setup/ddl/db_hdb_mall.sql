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

-- 导出 db_hdb_mall 的数据库结构
DROP DATABASE IF EXISTS `db_hdb_mall`;
CREATE DATABASE IF NOT EXISTS `db_hdb_mall` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_mall`;




-- 导出  表 db_hdb_mall.inventory 结构
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '100001',
  `item_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 优惠券\n1 实物',
  `org_id` bigint(20) unsigned NOT NULL DEFAULT '100001',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_detail 结构
DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE IF NOT EXISTS `inventory_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '100001',
  `reserved_id` varchar(128) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL DEFAULT '0000000000000000000000000',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 表示未出售\n1 表示出售',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_reserved_id` (`reserved_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_inreserve 结构
DROP TABLE IF EXISTS `inventory_inreserve`;
CREATE TABLE IF NOT EXISTS `inventory_inreserve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reserved_id` varchar(128) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_reserved_id` (`reserved_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。


DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `org_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织ID',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '商品标题',
  `sub_title` varchar(128) NOT NULL DEFAULT '' COMMENT '商品副标题',
  `list_price` bigint NOT NULL DEFAULT '0' COMMENT '商品展示价格，原价或者市场价',
  `signature` char(32) NOT NULL DEFAULT '00000000000000000000000000000000' COMMENT '商品签名',
  `description` varchar(4096) NOT NULL DEFAULT '' COMMENT '商品详细描述',
  `cat_id` int NOT NULL DEFAULT '0' COMMENT '商品类目ID',
  `type` tinyint(2)  NOT NULL DEFAULT '0' COMMENT '商品类型, 1: 实物商品 2: 虚拟商品',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效：0.否,1.是',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_org_id` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000  DEFAULT CHARSET=utf8 COMMENT='商品主要信息表';

DROP TABLE IF EXISTS `item_image`;
CREATE TABLE `item_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'item ID',
  `image_base_url` varchar(128) NOT NULL DEFAULT '' COMMENT '商品原始url',
  `sequence` tinyint(4) NOT NULL DEFAULT '0' COMMENT '图片顺序,0为主图',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`, `sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=20000000  DEFAULT CHARSET=utf8 COMMENT='商品图片表';

DROP TABLE IF EXISTS `item_attribute`;
CREATE TABLE `item_attribute` (
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
  UNIQUE KEY `uk_item_id_name` (`item_id`, `name`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`, `sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=30000000  DEFAULT CHARSET=utf8 COMMENT='商品属性表';

DROP TABLE IF EXISTS `item_price`;
CREATE TABLE `item_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'item ID',
  `points_price` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品积分价格',
  `cash_price` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品现金价格',
  `sequence` tinyint(4) NOT NULL DEFAULT '0' COMMENT '价格显示顺序',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id_sequence` (`item_id`, `sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=40000000  DEFAULT CHARSET=utf8 COMMENT='商品价格表';