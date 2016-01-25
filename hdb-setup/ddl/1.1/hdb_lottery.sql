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
  `on_time` datetime NOT NULL COMMENT '上架时间',
  `off_time` datetime NOT NULL COMMENT '下架时间',
  `draw_time` datetime NOT NULL COMMENT '开奖时间',
  `winnerNum` int(11) NOT NULL DEFAULT '1' COMMENT '中奖人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=800000030 DEFAULT CHARSET=utf8 COMMENT='抽奖活动表';

/*Table structure for table `lottery_order` */

CREATE TABLE `lottery_order` (
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
) ENGINE=InnoDB AUTO_INCREMENT=60001139585 DEFAULT CHARSET=utf8 COMMENT='抽奖订单表';