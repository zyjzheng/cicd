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
-- 正在导出表  db_hdi_auth.conn_test 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `conn_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `conn_test` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.permission 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`id`, `tenant_id`, `expression`, `description`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000000, 10000003, 'query', '查询', 0, '2015-12-23 16:07:49', '2015-12-23 16:07:49'),
  (10000001, 10000003, 'update', '更新', 0, '2015-12-23 16:07:49', '2015-12-23 16:07:49'),
  (10000004, 10000002, 'http://api.hengda.com/auth/add', '添加', 0, '2015-12-24 13:01:13', '2015-12-28 09:49:12'),
  (10000005, 10000002, 'delete', '删除', 0, '2015-12-27 19:58:55', '2015-12-27 19:58:55'),
  (10000006, 10000004, 'service:hdb_item:create_item', '创建商品', 0, '2015-12-28 10:43:27', '2015-12-28 10:43:27'),
  (10000007, 10000004, 'service:hdb_item:audit_item', '审核商品', 0, '2015-12-28 10:44:37', '2015-12-28 10:44:37'),
  (10000008, 10000004, 'service:hdb_item:query_item', '查询商品', 0, '2015-12-28 10:46:14', '2015-12-28 10:46:14'),
  (10000009, 10000004, 'url:hdb.hengda.com/item/create', '创建商品', 0, '2015-12-28 10:47:03', '2015-12-28 10:49:02'),
  (10000010, 10000004, 'url:hdb.hengda.com/item/audit', '审核商品', 0, '2015-12-28 10:47:22', '2015-12-28 10:49:28'),
  (10000011, 10000004, 'url:hdb.hengda.com/item/query', '查询商品', 0, '2015-12-28 10:47:38', '2015-12-28 10:49:49'),
  (10000023, 10000005, 'url:1:sys', '系统管理', 0, '2016-01-05 09:34:46', '2016-01-05 09:34:46'),
  (10000024, 10000005, 'url:1:xw', '新闻模块', 0, '2016-01-05 09:35:20', '2016-01-05 09:35:20'),
  (10000025, 10000005, 'url:1:sq', '社区模块', 0, '2016-01-05 09:35:36', '2016-01-05 09:35:36'),
  (10000026, 10000005, 'url:2:/sys/user/main.do', '用户管理', 0, '2016-01-05 09:36:11', '2016-01-05 09:36:11'),
  (10000027, 10000005, 'url:2:/sys/role/main.do', '角色管理', 0, '2016-01-05 09:36:53', '2016-01-05 09:36:53'),
  (10000028, 10000005, 'url:2:/sys/menu/main.do', '菜单管理', 0, '2016-01-05 09:37:20', '2016-01-05 09:37:20'),
  (10000029, 10000005, 'url:2:/xw/evnRiv/main.do', '新闻事件河', 0, '2016-01-05 09:37:38', '2016-01-05 09:37:38'),
  (10000030, 10000005, 'url:2:/xw/evnComn/main.do', '媒体评论累计', 0, '2016-01-05 09:37:58', '2016-01-05 09:37:58'),
  (10000031, 10000005, 'url:2:/xw/comnMap/main.do', '评论地图', 0, '2016-01-05 09:38:26', '2016-01-05 09:38:26'),
  (10000032, 10000005, 'url:2:/sq/attaRate/main.do', '舆情关注度', 0, '2016-01-05 09:38:45', '2016-01-05 09:38:45'),
  (10000033, 10000005, 'url:2:/sq/rateDis/main.do', '舆情偏向分布', 0, '2016-01-05 09:39:05', '2016-01-05 09:39:05'),
  (10000034, 10000005, 'url:2:/sq/opinL/main.do', '舆情列表', 0, '2016-01-05 09:39:26', '2016-01-05 09:39:26'),
  (10000035, 10000005, 'url:2:/wb/contAnal/main.do', '博文分析', 0, '2016-01-05 09:39:43', '2016-01-05 09:39:43'),
  (10000036, 10000005, 'url:2:/wb/fsFt/main.do', '官方粉丝特征', 0, '2016-01-05 09:40:13', '2016-01-05 09:40:13'),
  (10000037, 10000005, 'url:1:wb', '微博模块', 0, '2016-01-05 09:42:37', '2016-01-05 09:42:37');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.role 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `tenant_id`, `name`, `description`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000002, 10000002, 'customer', '普通用户', 0, '2015-12-17 15:00:46', '2015-12-17 15:00:46'),
  (10000003, 10000003, 'customer2', '普通用户', 0, '2015-12-21 17:06:04', '2015-12-21 17:06:04'),
  (10000013, 10000003, 'customer4', '普通用户', 0, '2015-12-24 09:36:12', '2015-12-28 10:13:08'),
  (10000016, 10000003, 'customer6', '普通用户', 0, '2015-12-24 10:02:10', '2015-12-24 10:54:09'),
  (10000021, 10000003, 'customer5', '普通用户', 0, '2015-12-24 11:27:19', '2015-12-27 19:54:12'),
  (10000022, 10000003, 'customer7', '普通用户', 0, '2015-12-24 11:38:55', '2015-12-27 19:52:41'),
  (10000024, 10000003, 'customer8', '普通用户', 0, '2015-12-24 11:41:04', '2016-01-08 14:54:48'),
  (10000025, 10000001, '管理员', '描述', 0, '2015-12-24 14:55:11', '2015-12-24 14:55:11'),
  (10000026, 10000004, 'admin', '超级管理员', 0, '2015-12-28 10:33:29', '2015-12-28 10:33:29'),
  (10000027, 10000004, 'user', '普通用户', 0, '2015-12-28 10:34:00', '2015-12-28 10:34:00'),
  (10000028, 10000004, 'guest', '游客用户', 0, '2015-12-28 10:34:24', '2015-12-28 11:21:27'),
  (10000029, 10000005, 'sysadmin', '超级管理员', 0, '2016-01-04 18:05:58', '2016-01-04 18:05:58'),
  (10000030, 10000005, 'normal', '普通用户', 0, '2016-01-04 18:06:33', '2016-01-04 18:06:33');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.role_permission 的数据：~30 rows (大约)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000000, 10000003, 10000000, 0, '2015-12-23 16:10:20', '2015-12-23 16:10:20'),
  (10000001, 10000003, 10000001, 0, '2015-12-23 16:10:20', '2015-12-23 16:10:20'),
  (10000002, 10000002, 10000004, 0, '2015-12-23 16:10:20', '2015-12-28 09:50:01'),
  (10000003, 10000026, 10000006, 0, '2015-12-28 10:52:39', '2015-12-28 10:52:39'),
  (10000004, 10000026, 10000007, 0, '2015-12-28 10:53:05', '2015-12-28 10:53:05'),
  (10000005, 10000026, 10000008, 0, '2015-12-28 10:53:15', '2015-12-28 10:53:15'),
  (10000006, 10000026, 10000009, 0, '2015-12-28 10:53:23', '2015-12-28 10:53:23'),
  (10000007, 10000026, 10000010, 0, '2015-12-28 10:53:38', '2015-12-28 10:53:38'),
  (10000008, 10000026, 10000011, 0, '2015-12-28 10:53:42', '2015-12-28 10:53:42'),
  (10000009, 10000027, 10000006, 0, '2015-12-28 10:54:49', '2015-12-28 10:54:49'),
  (10000010, 10000027, 10000008, 0, '2015-12-28 10:54:59', '2015-12-28 10:54:59'),
  (10000011, 10000027, 10000009, 0, '2015-12-28 10:55:09', '2015-12-28 10:55:09'),
  (10000012, 10000027, 10000011, 0, '2015-12-28 10:55:18', '2015-12-28 10:55:18'),
  (10000013, 10000028, 10000008, 0, '2015-12-28 10:56:06', '2015-12-28 10:56:06'),
  (10000014, 10000028, 10000011, 0, '2015-12-28 10:56:14', '2015-12-28 10:56:14'),
  (10000026, 10000029, 10000023, 0, '2016-01-05 09:47:03', '2016-01-05 09:47:03'),
  (10000027, 10000029, 10000026, 0, '2016-01-05 09:47:43', '2016-01-05 09:47:43'),
  (10000028, 10000029, 10000027, 0, '2016-01-05 09:47:53', '2016-01-05 09:47:53'),
  (10000029, 10000029, 10000028, 0, '2016-01-05 09:48:01', '2016-01-05 09:48:01'),
  (10000030, 10000030, 10000024, 0, '2016-01-05 09:48:25', '2016-01-05 09:48:25'),
  (10000031, 10000030, 10000029, 0, '2016-01-05 09:50:28', '2016-01-05 09:50:28'),
  (10000032, 10000030, 10000030, 0, '2016-01-05 09:50:38', '2016-01-05 09:50:38'),
  (10000033, 10000030, 10000031, 0, '2016-01-05 09:50:48', '2016-01-05 09:50:48'),
  (10000034, 10000030, 10000025, 0, '2016-01-05 09:50:58', '2016-01-05 09:50:58'),
  (10000035, 10000030, 10000032, 0, '2016-01-05 09:51:06', '2016-01-05 09:51:06'),
  (10000036, 10000030, 10000033, 0, '2016-01-05 09:51:14', '2016-01-05 09:51:14'),
  (10000037, 10000030, 10000034, 0, '2016-01-05 09:51:21', '2016-01-05 09:51:21'),
  (10000038, 10000030, 10000037, 0, '2016-01-05 09:51:30', '2016-01-05 09:51:30'),
  (10000039, 10000030, 10000035, 0, '2016-01-05 09:51:39', '2016-01-05 09:51:39'),
  (10000040, 10000030, 10000036, 0, '2016-01-05 09:51:46', '2016-01-05 09:51:46');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.tenant 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` (`id`, `name`, `description`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000001, '冰泉', 'sdfsfsa', 1, '2015-12-15 19:38:08', '2015-12-23 19:18:55'),
  (10000002, '粮油', 'oil', 0, '2015-12-17 14:09:58', '2015-12-17 14:09:58'),
  (10000003, '大米', 'rice', 0, '2015-12-21 16:43:39', '2015-12-21 17:03:03'),
  (10000004, 'hdi', '权限', 0, '2015-12-28 10:31:45', '2015-12-28 10:31:45'),
  (10000005, 'eview', 'eview', 0, '2016-01-04 18:03:53', '2016-01-04 18:03:53');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.user 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `salt`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000004, 'admin', '123456', '123455', 1, '2015-12-15 19:22:15', '2015-12-23 19:18:55'),
  (10000005, 'customer', 'hdi-auth43bbd9fa$HOXHvlCa1tlKRx4ctH2451', 'hdi-auth43bbd9fa-5f79-4f76-a8b7-e2f85a5c9ed0', 0, '2015-12-17 12:33:39', '2015-12-17 12:33:39'),
  (10000006, 'vistor', 'hdi-auth6a4cc813$VWl6m8CxtPPgXpdoAzJ8f/', 'hdi-auth6a4cc813-8da7-4e84-8b64-a1ff111c3446', 0, '2015-12-21 16:09:40', '2015-12-21 16:09:40'),
  (10000008, 'admin2', 'hdi-authe38885d8$Qe8EfR4DrRWRB/xTfzH7e1', 'hdi-authe38885d8-59bb-4631-bb54-5c92edb72249', 0, '2015-12-21 16:11:09', '2015-12-21 16:17:32'),
  (10000009, 'hdi_admin', 'hdi-auth7a57c7df$4XHxzlLPd4hQHTbq3zkKP0', 'hdi-auth7a57c7df-7ed1-408c-bfa3-7183848343d5', 0, '2015-12-28 10:28:39', '2015-12-28 10:28:39'),
  (10000010, 'hdi_user', 'hdi-auth1b247076$sNJxhjtJ22BGtV.qTclbW.', 'hdi-auth1b247076-fe07-47f6-b9de-9e5ee212dfa2', 0, '2015-12-28 10:28:59', '2015-12-28 10:28:59'),
  (10000011, 'hdi_guest', 'hdi-authe5d8bc41$x.xdbek7yE/5J/VCRnV9W0', 'hdi-authe5d8bc41-acea-4520-a621-4535b85dee94', 0, '2015-12-28 10:29:08', '2015-12-28 10:29:08'),
  (10000012, 'user1', 'hdi-authfb1bce7e$s7kOng/AXxnJ8y8Bk78RH.', 'hdi-authfb1bce7e-0197-46b3-8199-411673f969d2', 0, '2016-01-04 18:02:01', '2016-01-04 18:02:01'),
  (10000013, 'user2', 'hdi-auth091a536b$e8i/H/MXzr3NJfC3VKRfS.', 'hdi-auth091a536b-adad-4219-a0dd-9a42e73eb5e5', 0, '2016-01-04 18:02:27', '2016-01-04 18:02:27');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 正在导出表  db_hdi_auth.user_role 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `tenant_id`, `delete_flag`, `create_time`, `update_time`) VALUES
  (10000001, 10000005, 10000002, 10000002, 0, '2015-12-17 15:04:48', '2015-12-17 18:38:18'),
  (10000002, 10000008, 10000003, 10000003, 0, '2015-12-21 17:32:31', '2015-12-21 17:32:31'),
  (10000004, 10000005, 10000000, 10000001, 0, '2015-12-23 19:18:56', '2015-12-28 09:52:05'),
  (10000005, 10000009, 10000026, 10000004, 0, '2015-12-28 10:38:27', '2015-12-28 10:38:27'),
  (10000006, 10000010, 10000027, 10000004, 0, '2015-12-28 10:39:20', '2015-12-28 10:39:20'),
  (10000007, 10000011, 10000028, 10000004, 0, '2015-12-28 10:39:39', '2015-12-28 10:39:39'),
  (10000008, 10000012, 10000029, 10000005, 0, '2016-01-04 18:08:06', '2016-01-04 18:08:06'),
  (10000009, 10000012, 10000030, 10000005, 0, '2016-01-04 18:09:16', '2016-01-04 18:09:16'),
  (10000010, 10000013, 10000029, 10000005, 0, '2016-01-04 18:09:28', '2016-01-04 18:09:28'),
  (10000011, 0, 10000000, 10000001, 0, '2016-01-08 14:14:19', '2016-01-08 14:14:19');


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
