CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hdb_lottery` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_hdb_lottery`;

DROP TABLE IF EXISTS `conn_test`;

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `lottery_activity` */

CREATE TABLE `lottery_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(256) NOT NULL COMMENT '活动标题',
  `description` varchar(2048) NOT NULL COMMENT '活动简介',
  `item_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `entry_point` int(10) unsigned NOT NULL COMMENT '最小投注点数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动状态,0-草稿, 1-上架, 2-未开始, 3-已开始, 4-已结束（未抽奖）, 5-未发奖（已抽奖）, 6-已发奖, 7-下架',
  `start_time` datetime NOT NULL COMMENT '活动开始时间',
  `betting_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经投注人数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '创建者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updater` varchar(128) NOT NULL DEFAULT 'sys' COMMENT '更新者',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  `on_time` datetime DEFAULT NULL COMMENT '上架时间',
  `off_time` datetime DEFAULT NULL COMMENT '下架时间',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `winner_num` int(11) NOT NULL DEFAULT '1' COMMENT '中奖人数',
    PRIMARY KEY (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=800000030 DEFAULT CHARSET=utf8 COMMENT='抽奖活动表';

/*Table structure for table `lottery_order` */

CREATE TABLE `lottery_order_00` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_01` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_02` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_03` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_04` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';


CREATE TABLE `lottery_order_05` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_06` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_07` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_08` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_09` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_10` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_11` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_12` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_13` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_14` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_15` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_16` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_17` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_18` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_19` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_20` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_21` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_22` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_23` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_24` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_25` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_26` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_27` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_28` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_29` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_30` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';

CREATE TABLE `lottery_order_31` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(32) NOT NULL COMMENT '订单编号(年月日+uuid)',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
  `quantity` bigint(20) unsigned NOT NULL COMMENT '下单数量',
  `create_time` datetime NOT NULL COMMENT '下单时间',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分流水ID',
  `user_ip_address` varchar(128) DEFAULT '' COMMENT 'IP地址',
  `user_ip_location` varchar(1024) DEFAULT '' COMMENT 'IP地址对应地址',
  `user_address` varchar(1024) DEFAULT '' COMMENT '发货地址',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态, 0-未开奖, 1-未中奖, 2-中奖',
  `entry_point` int(10) DEFAULT NULL COMMENT '单笔注数',
  `entrant_count` int(11) DEFAULT NULL COMMENT '参与人数',
  PRIMARY KEY (`id`),
  KEY `idx_lottery_order_user_id` (`user_id`),
  KEY `idx_lottery_order_activity_id` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31000000001 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';


CREATE TABLE `lottery_winner` (
  `order_id` bigint(20) unsigned NOT NULL COMMENT '订单ID',
  `activity_id` bigint(20) unsigned NOT NULL COMMENT '活动ID',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `activity_title` varchar(256) DEFAULT NULL COMMENT '活动标题',
  `user_phone` varchar(128) DEFAULT '' COMMENT '手机号',
  `draw_time` datetime DEFAULT NULL COMMENT '开奖时间',
  PRIMARY KEY (`order_id`,`activity_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中奖列表';

CREATE TABLE `conn_test` (
  `a` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

