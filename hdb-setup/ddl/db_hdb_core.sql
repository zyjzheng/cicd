CREATE SCHEMA IF NOT EXISTS `db_hdb_core`
  DEFAULT CHARACTER SET utf8
  COLLATE utf8_general_ci;
USE `db_hdb_core`;

DROP TABLE IF EXISTS `org_account_points`;
CREATE TABLE `org_account_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `org_desc` varchar(128) NOT NULL DEFAULT '' COMMENT '组织账户描述',
  `points_pool` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户积分池总量',
  `used_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户积分池使用量',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户盈利积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常商户, 2. 冻结商户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_org_account_id` (`org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心-组织账户积分表';

DROP TABLE IF EXISTS `user_account_points_00`;
CREATE TABLE `user_account_points_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_01`;
CREATE TABLE `user_account_points_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_02`;
CREATE TABLE `user_account_points_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_03`;
CREATE TABLE `user_account_points_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_04`;
CREATE TABLE `user_account_points_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_05`;
CREATE TABLE `user_account_points_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_06`;
CREATE TABLE `user_account_points_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_07`;
CREATE TABLE `user_account_points_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_08`;
CREATE TABLE `user_account_points_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_09`;
CREATE TABLE `user_account_points_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_10`;
CREATE TABLE `user_account_points_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_11`;
CREATE TABLE `user_account_points_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_12`;
CREATE TABLE `user_account_points_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_13`;
CREATE TABLE `user_account_points_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_14`;
CREATE TABLE `user_account_points_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_15`;
CREATE TABLE `user_account_points_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_16`;
CREATE TABLE `user_account_points_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_17`;
CREATE TABLE `user_account_points_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_18`;
CREATE TABLE `user_account_points_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_19`;
CREATE TABLE `user_account_points_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_20`;
CREATE TABLE `user_account_points_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_21`;
CREATE TABLE `user_account_points_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_22`;
CREATE TABLE `user_account_points_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_23`;
CREATE TABLE `user_account_points_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_24`;
CREATE TABLE `user_account_points_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_25`;
CREATE TABLE `user_account_points_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_26`;
CREATE TABLE `user_account_points_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_27`;
CREATE TABLE `user_account_points_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_28`;
CREATE TABLE `user_account_points_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_29`;
CREATE TABLE `user_account_points_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_30`;
CREATE TABLE `user_account_points_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `user_account_points_31`;
CREATE TABLE `user_account_points_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户拥有的积分余额',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户获取的总积分',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户花掉的总积分',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. 正常账户, 2. 冻结账户',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心用户账户积分表';

DROP TABLE IF EXISTS `points_payment_00`;
CREATE TABLE `points_payment_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_01`;
CREATE TABLE `points_payment_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_02`;
CREATE TABLE `points_payment_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_03`;
CREATE TABLE `points_payment_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_04`;
CREATE TABLE `points_payment_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_05`;
CREATE TABLE `points_payment_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_06`;
CREATE TABLE `points_payment_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_07`;
CREATE TABLE `points_payment_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_08`;
CREATE TABLE `points_payment_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_09`;
CREATE TABLE `points_payment_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_10`;
CREATE TABLE `points_payment_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_11`;
CREATE TABLE `points_payment_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_12`;
CREATE TABLE `points_payment_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_13`;
CREATE TABLE `points_payment_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_14`;
CREATE TABLE `points_payment_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_15`;
CREATE TABLE `points_payment_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_16`;
CREATE TABLE `points_payment_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_17`;
CREATE TABLE `points_payment_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_18`;
CREATE TABLE `points_payment_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_19`;
CREATE TABLE `points_payment_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_20`;
CREATE TABLE `points_payment_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_21`;
CREATE TABLE `points_payment_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_22`;
CREATE TABLE `points_payment_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_23`;
CREATE TABLE `points_payment_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_24`;
CREATE TABLE `points_payment_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_25`;
CREATE TABLE `points_payment_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_26`;
CREATE TABLE `points_payment_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_27`;
CREATE TABLE `points_payment_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_28`;
CREATE TABLE `points_payment_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_29`;
CREATE TABLE `points_payment_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_30`;
CREATE TABLE `points_payment_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_payment_31`;
CREATE TABLE `points_payment_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户账户ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '组织账户ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分数量',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户花费的积分对应获取积分的ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分花费记录';

DROP TABLE IF EXISTS `points_txn_00`;
CREATE TABLE `points_txn_00` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_01`;
CREATE TABLE `points_txn_01` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_02`;
CREATE TABLE `points_txn_02` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_03`;
CREATE TABLE `points_txn_03` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_04`;
CREATE TABLE `points_txn_04` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_05`;
CREATE TABLE `points_txn_05` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_06`;
CREATE TABLE `points_txn_06` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_07`;
CREATE TABLE `points_txn_07` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_08`;
CREATE TABLE `points_txn_08` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_09`;
CREATE TABLE `points_txn_09` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_10`;
CREATE TABLE `points_txn_10` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_11`;
CREATE TABLE `points_txn_11` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_12`;
CREATE TABLE `points_txn_12` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_13`;
CREATE TABLE `points_txn_13` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_14`;
CREATE TABLE `points_txn_14` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_15`;
CREATE TABLE `points_txn_15` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_16`;
CREATE TABLE `points_txn_16` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_17`;
CREATE TABLE `points_txn_17` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_18`;
CREATE TABLE `points_txn_18` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_19`;
CREATE TABLE `points_txn_19` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_20`;
CREATE TABLE `points_txn_20` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_21`;
CREATE TABLE `points_txn_21` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_22`;
CREATE TABLE `points_txn_22` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_23`;
CREATE TABLE `points_txn_23` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_24`;
CREATE TABLE `points_txn_24` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_25`;
CREATE TABLE `points_txn_25` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_26`;
CREATE TABLE `points_txn_26` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_27`;
CREATE TABLE `points_txn_27` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_28`;
CREATE TABLE `points_txn_28` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_29`;
CREATE TABLE `points_txn_29` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_30`;
CREATE TABLE `points_txn_30` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';

DROP TABLE IF EXISTS `points_txn_31`;
CREATE TABLE `points_txn_31` (
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
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分交易记录';


DROP TABLE IF EXISTS `points_recv_00`;
CREATE TABLE `points_recv_00` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_01`;
CREATE TABLE `points_recv_01` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_02`;
CREATE TABLE `points_recv_02` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_03`;
CREATE TABLE `points_recv_03` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_04`;
CREATE TABLE `points_recv_04` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_05`;
CREATE TABLE `points_recv_05` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_06`;
CREATE TABLE `points_recv_06` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_07`;
CREATE TABLE `points_recv_07` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_08`;
CREATE TABLE `points_recv_08` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_09`;
CREATE TABLE `points_recv_09` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_10`;
CREATE TABLE `points_recv_10` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_11`;
CREATE TABLE `points_recv_11` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_12`;
CREATE TABLE `points_recv_12` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_13`;
CREATE TABLE `points_recv_13` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_14`;
CREATE TABLE `points_recv_14` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_15`;
CREATE TABLE `points_recv_15` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_16`;
CREATE TABLE `points_recv_16` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_17`;
CREATE TABLE `points_recv_17` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_18`;
CREATE TABLE `points_recv_18` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_19`;
CREATE TABLE `points_recv_19` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_20`;
CREATE TABLE `points_recv_20` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_21`;
CREATE TABLE `points_recv_21` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_22`;
CREATE TABLE `points_recv_22` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_23`;
CREATE TABLE `points_recv_23` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_24`;
CREATE TABLE `points_recv_24` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_25`;
CREATE TABLE `points_recv_25` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_26`;
CREATE TABLE `points_recv_26` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_27`;
CREATE TABLE `points_recv_27` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_28`;
CREATE TABLE `points_recv_28` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_29`;
CREATE TABLE `points_recv_29` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_30`;
CREATE TABLE `points_recv_30` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';

DROP TABLE IF EXISTS `points_recv_31`;
CREATE TABLE `points_recv_31` (
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
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='恒大积分核心积分获取记录';


	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(1001, '恒大冰泉', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(1002, '恒大地产', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(1003, '恒大粮油', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(1004, '恒大乳业', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(10001, '恒大互联网积分兑换', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(10002, '恒大互联网积分抽奖', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(10003, '恒大互联网积分猜球', 10000000000000, 0);
	
INSERT INTO `org_account_points` (`org_account_id`, `org_desc`, `points_pool`, `used_points`) VALUES
	(10004, '恒大互联网积分拉霸', 10000000000000, 0);
