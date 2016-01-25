CREATE SCHEMA IF NOT EXISTS `db_hdb_laba`
  DEFAULT CHARACTER SET utf8
    COLLATE utf8_general_ci;
    USE `db_hdb_laba`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for betting_records_00
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_00`;
CREATE TABLE `betting_records_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';


-- ----------------------------
-- Table structure for betting_records_01
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_01`;
CREATE TABLE `betting_records_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_02
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_02`;
CREATE TABLE `betting_records_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_03
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_03`;
CREATE TABLE `betting_records_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_04
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_04`;
CREATE TABLE `betting_records_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_05
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_05`;
CREATE TABLE `betting_records_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_06
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_06`;
CREATE TABLE `betting_records_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_07
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_07`;
CREATE TABLE `betting_records_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_08
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_08`;
CREATE TABLE `betting_records_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_09
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_09`;
CREATE TABLE `betting_records_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_10
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_10`;
CREATE TABLE `betting_records_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_11
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_11`;
CREATE TABLE `betting_records_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_12
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_12`;
CREATE TABLE `betting_records_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_13
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_13`;
CREATE TABLE `betting_records_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_14
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_14`;
CREATE TABLE `betting_records_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_15
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_15`;
CREATE TABLE `betting_records_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_16
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_16`;
CREATE TABLE `betting_records_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_17
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_17`;
CREATE TABLE `betting_records_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_18
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_18`;
CREATE TABLE `betting_records_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_19
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_19`;
CREATE TABLE `betting_records_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_20
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_20`;
CREATE TABLE `betting_records_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_21
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_21`;
CREATE TABLE `betting_records_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_22
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_22`;
CREATE TABLE `betting_records_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_23
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_23`;
CREATE TABLE `betting_records_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_24
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_24`;
CREATE TABLE `betting_records_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_25
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_25`;
CREATE TABLE `betting_records_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_26
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_26`;
CREATE TABLE `betting_records_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_27
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_27`;
CREATE TABLE `betting_records_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_28
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_28`;
CREATE TABLE `betting_records_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_29
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_29`;
CREATE TABLE `betting_records_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_30
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_30`;
CREATE TABLE `betting_records_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_records_31
-- ----------------------------
DROP TABLE IF EXISTS `betting_records_31`;
CREATE TABLE `betting_records_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `betting_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '投注积分数',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖积分数',
  `betting_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '投注时间',
  `attach_info` varchar(1024) NOT NULL DEFAULT '' COMMENT '记录附加信息',
  `prize_pool_id` varchar(50) NOT NULL DEFAULT '' COMMENT '奖池编号',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_TIME` (`user_id`,`betting_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拉霸记录表';

-- ----------------------------
-- Table structure for betting_rules
-- ----------------------------
DROP TABLE IF EXISTS `betting_rules`;
CREATE TABLE `betting_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `min_points_per_times` bigint(20) NOT NULL DEFAULT '0' COMMENT '单次投注积分下限',
  `max_points_per_times` bigint(20) NOT NULL DEFAULT '0' COMMENT '单次投注积分上限',
  `max_points_per_day` bigint(20) NOT NULL DEFAULT '0' COMMENT '单日投注积分上限',
  `float_points_sliding` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分增减粒度',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `creator` varchar(50) NOT NULL DEFAULT '' COMMENT '创建用户',
  `updater` varchar(50) NOT NULL DEFAULT '' COMMENT '更新用户',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活状态 0-未激活 1-已激活',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投注规则表';

-- ----------------------------
-- Records of betting_rules
-- ----------------------------
INSERT INTO `betting_rules` VALUES ('1', '10', '5000', '50000', '10', '1000-01-01 00:00:00', '2016-01-19 15:04:57', 'peter', '', '1', '0');

-- ----------------------------
-- Table structure for daily_rank_records
-- ----------------------------
DROP TABLE IF EXISTS `daily_rank_records`;
CREATE TABLE `daily_rank_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `rank_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '排行榜日期',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `winning_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '一天中奖总积分',
  `first_bet_time` datetime NOT NULL DEFAULT '9999-01-01 00:00:00' COMMENT '用户当日第一次拉霸时间',
  PRIMARY KEY (`id`),
  KEY `idx_date` (`rank_date`,`winning_points`,`first_bet_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日排行榜记录表';

-- ----------------------------
-- Table structure for game_notes
-- ----------------------------
DROP TABLE IF EXISTS `game_notes`;
CREATE TABLE `game_notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `game_notes` varchar(2000) NOT NULL DEFAULT '' COMMENT '游戏规则说明',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '创建用户',
  `update_user` varchar(50) NOT NULL DEFAULT '' COMMENT '更新用户',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活状态 0-未激活 1-已激活',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏规则说明表';

-- ----------------------------
-- Records of game_notes
-- ----------------------------
INSERT INTO `game_notes` VALUES ('1', '游戏规则如下：每人每天投注上限5000份，单次投注上限500份，单次投注下限10份，特等奖100倍积分返还，一等奖10倍，二等奖2倍', '1000-01-01 00:00:00', '2016-01-21 16:40:34', 'peter', '', '1', '0');

-- ----------------------------
-- Table structure for pointing_rules
-- ----------------------------
DROP TABLE IF EXISTS `pointing_rules`;
CREATE TABLE `pointing_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `special_prize_mpe` smallint(6) NOT NULL DEFAULT '0' COMMENT '特等奖积分倍数',
  `first_prize_mpe` smallint(6) NOT NULL DEFAULT '0' COMMENT '一等奖积分倍数',
  `second_prize_mpe` smallint(6) NOT NULL DEFAULT '0' COMMENT '二等奖积分倍数',
  `daily_first_plus` double NOT NULL DEFAULT '0' COMMENT '每日第一次中奖加成比例',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '创建用户',
  `update_user` varchar(50) NOT NULL DEFAULT '' COMMENT '更新用户',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活标志 0-未激活 1-已激活',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='返奖规则表';

-- ----------------------------
-- Records of pointing_rules
-- ----------------------------
INSERT INTO `pointing_rules` VALUES ('1', '100', '10', '2', '0.2', '1000-01-01 00:00:00', '2016-01-19 15:19:30', 'peter', '', '1', '0');

-- ----------------------------
-- Table structure for prize_pool_instances
-- ----------------------------
DROP TABLE IF EXISTS `prize_pool_instances`;
CREATE TABLE `prize_pool_instances` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '奖池ID',
  `pool_size` int(11) NOT NULL DEFAULT '0' COMMENT '奖池大小',
  `winning_rule_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '中奖规则编号',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `total_lottery_count` int(11) NOT NULL DEFAULT '0' COMMENT '总抽奖次数',
  `total_received_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '总收获分数',
  `total_paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '总发奖分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中奖奖池表';


-- ----------------------------
-- Table structure for winning_rules
-- ----------------------------
DROP TABLE IF EXISTS `winning_rules`;
CREATE TABLE `winning_rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `special_prize_count` int(11) NOT NULL DEFAULT '0' COMMENT '特等奖数',
  `first_prize_count` int(11) NOT NULL DEFAULT '0' COMMENT '一等奖数',
  `second_prize_count` int(11) NOT NULL DEFAULT '0' COMMENT '二等奖数',
  `prize_pool_size` int(11) NOT NULL DEFAULT '0' COMMENT '奖池大小',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '创建用户',
  `update_user` varchar(50) NOT NULL DEFAULT '' COMMENT '更新用户',
  `active_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '激活标志 0-未激活 1-已激活',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中奖规则设置表';

-- ----------------------------
-- Records of winning_rules
-- ----------------------------
INSERT INTO `winning_rules` VALUES ('1', '1', '5', '20000', '100000', '1000-01-01 00:00:00', '2016-01-19 15:15:46', 'peter', '', '1', '0');
