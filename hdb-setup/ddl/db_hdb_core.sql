CREATE SCHEMA IF NOT EXISTS `db_hdb_core`
  DEFAULT CHARACTER SET utf8
  COLLATE utf8_general_ci;
USE `db_hdb_core`;

DROP TABLE IF EXISTS `user_account_points`;
CREATE TABLE `user_account_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ÓµÓÐµÄ»ý·ÖÓà¶î',
  `recved_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§»ñÈ¡µÄ×Ü»ý·Ö',
  `paied_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§»¨µôµÄ×Ü»ý·Ö',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£ÕË»§, 2. ¶³½áÕË»§',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄÓÃ»§ÕË»§»ý·Ö±í';

DROP TABLE IF EXISTS `org_account_points`;
CREATE TABLE `org_account_points` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `points_pool` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§»ý·Ö³Ø×ÜÁ¿',
  `used_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§»ý·Ö³ØÊ¹ÓÃÁ¿',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£ÉÌ»§, 2. ¶³½áÉÌ»§',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_org_account_id` (`org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ-×éÖ¯ÕË»§»ý·Ö±í';

DROP TABLE IF EXISTS `points_payment_00`;
CREATE TABLE `points_payment_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_01`;
CREATE TABLE `points_payment_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_02`;
CREATE TABLE `points_payment_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_03`;
CREATE TABLE `points_payment_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_04`;
CREATE TABLE `points_payment_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_05`;
CREATE TABLE `points_payment_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_06`;
CREATE TABLE `points_payment_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_07`;
CREATE TABLE `points_payment_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_08`;
CREATE TABLE `points_payment_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_09`;
CREATE TABLE `points_payment_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_10`;
CREATE TABLE `points_payment_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_11`;
CREATE TABLE `points_payment_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_12`;
CREATE TABLE `points_payment_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_13`;
CREATE TABLE `points_payment_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_14`;
CREATE TABLE `points_payment_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_15`;
CREATE TABLE `points_payment_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_16`;
CREATE TABLE `points_payment_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_17`;
CREATE TABLE `points_payment_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_18`;
CREATE TABLE `points_payment_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_19`;
CREATE TABLE `points_payment_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_20`;
CREATE TABLE `points_payment_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_21`;
CREATE TABLE `points_payment_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_22`;
CREATE TABLE `points_payment_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_23`;
CREATE TABLE `points_payment_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_24`;
CREATE TABLE `points_payment_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_25`;
CREATE TABLE `points_payment_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_26`;
CREATE TABLE `points_payment_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_27`;
CREATE TABLE `points_payment_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_28`;
CREATE TABLE `points_payment_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_29`;
CREATE TABLE `points_payment_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_30`;
CREATE TABLE `points_payment_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_payment_31`;
CREATE TABLE `points_payment_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `paid_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·ÖÊýÁ¿',
  `recv_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»¨·ÑµÄ»ý·Ö¶ÔÓ¦»ñÈ¡»ý·ÖµÄID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»¨·Ñ¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_00`;
CREATE TABLE `points_txn_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_01`;
CREATE TABLE `points_txn_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_02`;
CREATE TABLE `points_txn_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_03`;
CREATE TABLE `points_txn_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_04`;
CREATE TABLE `points_txn_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_05`;
CREATE TABLE `points_txn_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_06`;
CREATE TABLE `points_txn_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_07`;
CREATE TABLE `points_txn_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_08`;
CREATE TABLE `points_txn_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_09`;
CREATE TABLE `points_txn_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_10`;
CREATE TABLE `points_txn_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_11`;
CREATE TABLE `points_txn_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_12`;
CREATE TABLE `points_txn_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_13`;
CREATE TABLE `points_txn_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_14`;
CREATE TABLE `points_txn_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_15`;
CREATE TABLE `points_txn_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_16`;
CREATE TABLE `points_txn_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_17`;
CREATE TABLE `points_txn_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_18`;
CREATE TABLE `points_txn_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_19`;
CREATE TABLE `points_txn_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_20`;
CREATE TABLE `points_txn_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_21`;
CREATE TABLE `points_txn_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_22`;
CREATE TABLE `points_txn_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_23`;
CREATE TABLE `points_txn_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_24`;
CREATE TABLE `points_txn_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_25`;
CREATE TABLE `points_txn_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_26`;
CREATE TABLE `points_txn_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_27`;
CREATE TABLE `points_txn_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_28`;
CREATE TABLE `points_txn_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_29`;
CREATE TABLE `points_txn_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_30`;
CREATE TABLE `points_txn_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';

DROP TABLE IF EXISTS `points_txn_31`;
CREATE TABLE `points_txn_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `txn_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '»ý·ÖÁ÷Ë®¹ØÁªµÄ½»Ò×ID',
  `txn_channel` tinyint(2) NOT NULL DEFAULT '0' COMMENT '½»Ò×ÇþµÀ',
  `txn_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '½»Ò×ÀàÐÍ, 1: ×¬»ý·Ö, 0: »¨»ý·Ö',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `txn_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '½»Ò×»ý·ÖÊýÁ¿',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT '½»Ò×»ý·Ö¹ýÆÚÊ±¼ä£¬»¨»ý·Ö',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_txn_id_txn_channel` (`txn_id`,`txn_channel`),
  KEY `idx_user_account_id` (`user_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö½»Ò×¼ÇÂ¼';


DROP TABLE IF EXISTS `points_recv_00`;
CREATE TABLE `points_recv_00` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_01`;
CREATE TABLE `points_recv_01` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_02`;
CREATE TABLE `points_recv_02` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_03`;
CREATE TABLE `points_recv_03` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_04`;
CREATE TABLE `points_recv_04` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_05`;
CREATE TABLE `points_recv_05` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_06`;
CREATE TABLE `points_recv_06` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_07`;
CREATE TABLE `points_recv_07` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_08`;
CREATE TABLE `points_recv_08` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_09`;
CREATE TABLE `points_recv_09` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_10`;
CREATE TABLE `points_recv_10` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_11`;
CREATE TABLE `points_recv_11` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_12`;
CREATE TABLE `points_recv_12` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_13`;
CREATE TABLE `points_recv_13` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_14`;
CREATE TABLE `points_recv_14` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_15`;
CREATE TABLE `points_recv_15` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=250000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_16`;
CREATE TABLE `points_recv_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_17`;
CREATE TABLE `points_recv_17` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_18`;
CREATE TABLE `points_recv_18` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_19`;
CREATE TABLE `points_recv_19` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_20`;
CREATE TABLE `points_recv_20` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=300000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_21`;
CREATE TABLE `points_recv_21` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_22`;
CREATE TABLE `points_recv_22` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_23`;
CREATE TABLE `points_recv_23` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=330000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_24`;
CREATE TABLE `points_recv_24` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_25`;
CREATE TABLE `points_recv_25` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=350000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_26`;
CREATE TABLE `points_recv_26` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_27`;
CREATE TABLE `points_recv_27` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_28`;
CREATE TABLE `points_recv_28` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_29`;
CREATE TABLE `points_recv_29` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_30`;
CREATE TABLE `points_recv_30` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=400000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

DROP TABLE IF EXISTS `points_recv_31`;
CREATE TABLE `points_recv_31` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '×ÔÔöID',
  `user_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§ÕË»§ID',
  `org_account_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '×éÖ¯ÕË»§ID',
  `recv_points` bigint(20) NOT NULL DEFAULT '0' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖÊýÁ¿',
  `unused_points` bigint(20) NOT NULL DEFAULT '0' COMMENT '¸ÃÌõ»ý·Ö¼ÇÂ¼ÖÐ»¹Î´Ê¹ÓÃµÄ»ý·Ö',
  `expire_date` date NOT NULL DEFAULT '1000-01-01' COMMENT 'ÓÃ»§»ñµÃµÄ»ý·ÖµÄ¹ýÆÚÊ±¼ä',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1. Õý³£, 2...',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ÊÇ·ñÉ¾³ý£º0.·ñ,1.ÊÇ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '´´½¨Ê±¼ä',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '¸üÐÂÊ±¼ä',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_account_id_expire_date_org_account_id` (`user_account_id`,`expire_date`, `org_account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410000000000  DEFAULT CHARSET=utf8 COMMENT='ºã´ó»ý·ÖºËÐÄ»ý·Ö»ñÈ¡¼ÇÂ¼';

