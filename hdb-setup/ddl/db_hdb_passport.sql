DROP DATABASE IF EXISTS `db_hdb_passport`;
CREATE DATABASE IF NOT EXISTS `db_hdb_passport` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_passport`;

CREATE TABLE `passport_user_1` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=100000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_2` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=200000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_3` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=300000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_4` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=400000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_5` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=500000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_6` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=600000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_7` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=700000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_8` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=800000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_9` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=900000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_10` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1000000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_11` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1100000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_12` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1200000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_13` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1300000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_14` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1400000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_15` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1500000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_16` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1600000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_17` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1700000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_18` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1800000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_19` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1900000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_20` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2000000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_21` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2100000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_22` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2200000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_23` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2300000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_24` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2400000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_25` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2500000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_26` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2600000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_27` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2700000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_28` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2800000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_29` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2900000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_30` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3000000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_31` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3100000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';

CREATE TABLE `passport_user_32` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(36) NOT NULL DEFAULT '' COMMENT '�û���¼��',
  `password` VARCHAR(32) NOT NULL DEFAULT '' COMMENT '�û�����',
  `salt` VARCHAR(5) NOT NULL DEFAULT '' COMMENT 'salt',
  `telephone` VARCHAR(16) NOT NULL DEFAULT '' COMMENT '�ƶ��绰����',
  `email` VARCHAR(64) NOT NULL DEFAULT '' COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3200000000 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ';