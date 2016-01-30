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


CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8


-- 导出  表 db_hdb_mall.inventory 结构
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '100001' COMMENT '商品ID',
  `item_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 实物\n2 优惠券',
  `org_id` bigint(20) unsigned NOT NULL DEFAULT '100001'COMMENT '合作伙伴ID',
  `amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存数量',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '库存信息表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_detail 结构
DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE IF NOT EXISTS `inventory_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `item_id` bigint(20) NOT NULL DEFAULT '100001' COMMENT '商品ID',
  `reserved_id` varchar(128) NOT NULL DEFAULT '0' COMMENT '库存锁ID',
  `code` varchar(128) NOT NULL DEFAULT '0000000000000000000000000' COMMENT '券码',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 表示未出售\n1 表示出售',
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未删除\n1 删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_item_id_code` (`item_id`, `code`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_reserved_id` (`reserved_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '券码信息表';

-- 数据导出被取消选择。


-- 导出  表 db_hdb_mall.inventory_inreserve 结构
DROP TABLE IF EXISTS `inventory_inreserve`;
CREATE TABLE IF NOT EXISTS `inventory_inreserve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `reserved_id` varchar(128) NOT NULL DEFAULT '0' COMMENT '库存预留ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_reserved_id` (`reserved_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '库存锁信息表';

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

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
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
  `pay_success_time` datetime NULL COMMENT '成功支付的时间',
  `finish_time` datetime NULL COMMENT '完成订单的时间',
  `cancel_time` datetime NULL COMMENT '订单取消的时间',
  `reject_time` datetime NULL COMMENT '退单的时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建的时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改的时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_org_id` (`org_id`)
) ENGINE=InnoDB  AUTO_INCREMENT=1000000000  DEFAULT CHARSET=utf8 COMMENT '恒大积分商城订单记录';

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
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
) ENGINE=InnoDB  AUTO_INCREMENT=1000000000  DEFAULT CHARSET=utf8 COMMENT '恒大积分商城订单商品记录';


DROP TABLE IF EXISTS `order_payment`;
CREATE TABLE `order_payment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付id，自增',
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `payment_id` varchar(64) NOT NULL DEFAULT '' COMMENT '其他系统返回的支付id',
  `payment_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型',
  `payment_status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '记录支付的状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间',
  PRIMARY KEY (`id`),
  KEY `index_order_id` (`order_id`)
) ENGINE=InnoDB  AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8 COMMENT '恒大积分商城订单支付记录';