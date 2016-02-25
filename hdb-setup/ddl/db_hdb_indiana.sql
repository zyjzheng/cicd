DROP DATABASE IF EXISTS `db_hdb_indiana`;
CREATE DATABASE IF NOT EXISTS `db_hdb_indiana` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_indiana`;

DROP TABLE IF EXISTS `conn_test`;

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `indiana_activity_group`(
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`title` VARCHAR(256) NOT NULL COMMENT '活动标题',
	`create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `creator` VARCHAR(128) NOT NULL DEFAULT 'sys' COMMENT '创建者',
    `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `updater` VARCHAR(128) NOT NULL DEFAULT 'sys' COMMENT '更新者',
	`total_stage_quantity` INT(10) UNSIGNED NOT NULL COMMENT '总期数',
	`finished_stage_quantity` INT(10) UNSIGNED NOT NULL COMMENT '已完成期数',
	`item_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '商品id',
	`entry_point` INT(10) UNSIGNED NOT NULL COMMENT '最小投注点数',
	`entrant_count` INT(10) UNSIGNED NOT NULL COMMENT '参与注数',
	`status` INT(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动状态,0-未开始, 1-已开始, 2-已结束',
	`start_time` TIMESTAMP NOT NULL COMMENT '活动开始时间',
	`end_time` TIMESTAMP COMMENT '活动结束时间',
	`on_or_off` INT(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '活动上下架状态,0-下架, 1-上架',
	PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='夺宝活动组表';

CREATE TABLE `indiana_activity`(
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
	`end_time` datetime COMMENT '活动结束时间',
	`order_id` bigint(20) COMMENT '获奖订单ID',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=800000001 DEFAULT CHARSET=utf8 COMMENT='夺宝活动表';

CREATE TABLE `indiana_order`(
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
	`status` int(1) NOT NULL DEFAULT '0' COMMENT '订单状态,0-未中奖, 1-中奖',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60000000000 DEFAULT CHARSET=utf8 COMMENT='用户夺宝信息表';

ALTER TABLE `indiana_order` ADD INDEX idx_indiana_order_user_id  (`user_id`);
ALTER TABLE `indiana_order` ADD INDEX idx_indiana_order_activity_id  (`activity_id`);

CREATE TABLE `indiana_last_random_seed`(
	`activity_id` bigint(20) unsigned NOT NULL COMMENT '活动id',
	`user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
	`lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码', 
	`betting_time` bigint(20) NOT NULL COMMENT '下注时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='最后100个下注单时间表';

ALTER TABLE `indiana_last_random_seed` ADD INDEX idx_indiana_last_random_seed_lucky_number (`lucky_number`);
ALTER TABLE `indiana_last_random_seed` ADD INDEX idx_indiana_last_random_seed_activity_id (`activity_id`);

CREATE TABLE `indiana_order_item`(
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
	`activity_id` bigint(20) unsigned NOT NULL COMMENT '奖品id',
	`lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码', 
	`betting_time` bigint(20) NOT NULL COMMENT '下注时间',
	`order_id` bigint(20) unsigned NOT NULL COMMENT '投注单id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户下注信息表';

ALTER TABLE `indiana_order_item` ADD INDEX idx_indiana_order_item_activity_id (`activity_id`);
ALTER TABLE `indiana_order_item` ADD INDEX idx_indiana_order_item_order_id (`order_id`);


CREATE TABLE `indiana_number_pool` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`activity_id` bigint(20) unsigned NOT NULL COMMENT '奖品id',
	`lucky_number` int(10) unsigned NOT NULL COMMENT '幸运号码', 
	`status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '活动状态,0-未使用, 1-已使用',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号码池表';

ALTER TABLE `indiana_number_pool` ADD INDEX idx_indiana_number_pool_activity_id (`activity_id`);
ALTER TABLE `indiana_number_pool` ADD INDEX idx_indiana_number_pool_lucky_number (`lucky_number`);