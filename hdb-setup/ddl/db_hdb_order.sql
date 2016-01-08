DROP DATABASE IF EXISTS `db_hdb_order`;
CREATE DATABASE IF NOT EXISTS `db_hdb_order` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_order`;

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