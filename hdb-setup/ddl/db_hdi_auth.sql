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

-- 导出 db_hdi_auth 的数据库结构
DROP DATABASE IF EXISTS `db_hdi_auth`;
CREATE DATABASE IF NOT EXISTS `db_hdi_auth` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdi_auth`;


-- 导出  表 db_hdi_auth.conn_test 结构
DROP TABLE IF EXISTS `conn_test`;
CREATE TABLE IF NOT EXISTS `conn_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.permission 结构
DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `expression` varchar(128) NOT NULL DEFAULT '' COMMENT '权限表达式',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '权限描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenantId_expression` (`tenant_id`,`expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.role 结构
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '角色名',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '角色描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenantid_rolename` (`tenant_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.role_permission 结构
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '权限ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_roleid_permissionid` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.tenant 结构
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE IF NOT EXISTS `tenant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '产品线名',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '产品线描述',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品线表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(128) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '登录密码',
  `salt` varchar(128) NOT NULL DEFAULT '' COMMENT '加密盐',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 数据导出被取消选择。


-- 导出  表 db_hdi_auth.user_role 结构
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '产品线ID',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0.否,1.是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_userid_roleid` (`tenant_id`,`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
