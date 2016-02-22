#dabase ===>db_hdb_riskcontrol

CREATE TABLE `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `phone_blacklist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone_num` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `ban_reason_code` varchar(100) NOT NULL DEFAULT '' COMMENT '原因代码',
  `ban_start_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '开始时间',
  `ban_end_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '结束时间',
  `ban_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '禁止方式 0-auto 1-manual',
  `creator` varchar(100) NOT NULL DEFAULT 'system' COMMENT '录入用户',
  `create_time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '创建时间',
  `remark` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_phone` (`phone_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机号黑名单';
