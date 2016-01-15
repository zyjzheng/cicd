/*
Navicat MySQL Data Transfer

Source Server         : 恒大微分平台【DEV】
Source Server Version : 50709
Source Host           : 120.26.192.100:3306
Source Database       : db_hdb_ffactivity

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-01-12 18:24:08
*/

DROP DATABASE IF EXISTS `db_hdb_ffactivity`;
CREATE DATABASE IF NOT EXISTS `db_hdb_ffactivity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_hdb_ffactivity`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Records of conn_test
-- ----------------------------

-- ----------------------------
-- Table structure for ff_activity
-- ----------------------------
DROP TABLE IF EXISTS `ff_activity`;
CREATE TABLE `ff_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ac_name` varchar(200) NOT NULL DEFAULT '' COMMENT '活动名',
  `ac_desc` varchar(2000) NOT NULL DEFAULT '' COMMENT '活动描述',
  `ac_type` varchar(20) NOT NULL DEFAULT '' COMMENT '活动类型:一物一码（FFAC|S|YWYM）有效期活动码(FFAC|M|YXQM)',
  `ac_code` varchar(100) NOT NULL DEFAULT '' COMMENT '活动编码',
  `ac_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '活动状态 0-未开始 1-进行中 2-已结束',
  `manage_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '运维管理状态：0-已下线 1-已上线',
  `begin_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动开始时间',
  `finish_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动结束时间',
  `max_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分最大值',
  `min_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分最小值',
  `avg_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分平均值',
  `ff_count` int(11) NOT NULL DEFAULT '1' COMMENT '扫码次数上限',
  `points_expire_date` date NOT NULL DEFAULT '2999-01-01' COMMENT '积分过期日期',
  `total_gen_points` int(11) NOT NULL DEFAULT '0' COMMENT '已产生的积分总数',
  `partner_id` varchar(50) NOT NULL DEFAULT '' COMMENT '合作伙伴编号',
  `product_id` varchar(500) NOT NULL DEFAULT '' COMMENT '产品编号',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '活动更新时间',
  `create_user` varchar(50) NOT NULL DEFAULT '' COMMENT '活动创建人',
  `update_user` varchar(50) NOT NULL DEFAULT '' COMMENT '活动更新人',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标志 1-已删除 0-未删除',
  PRIMARY KEY (`id`),
  KEY `udx_activity_code` (`ac_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='活动表';

-- ----------------------------
-- Table structure for wxhb_open_records
-- ----------------------------
DROP TABLE IF EXISTS `wxhb_open_records`;
CREATE TABLE `wxhb_open_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hb_id` varchar(200) NOT NULL DEFAULT '' COMMENT '红包ID=[扫码流水]:[红包活动码]',
  `wx_unionid` varchar(100) NOT NULL DEFAULT '0' COMMENT '拆红包微信用户ID',
  `opened_count` int(11) NOT NULL DEFAULT '1' COMMENT '拆红包次数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_hongbaoid` (`hb_id`,`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='微信红包拆奖记录表';


-- ----------------------------
-- Table structure for ywym_scan_records
-- ----------------------------
DROP TABLE IF EXISTS `ywym_scan_records`;
CREATE TABLE `ywym_scan_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ywym_code` varchar(100) NOT NULL DEFAULT '' COMMENT '一物一码CODE',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '扫码用户ID',
  `scanned_count` int(11) NOT NULL DEFAULT '1' COMMENT '扫码次数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_ywymcode` (`ywym_code`,`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一物一码抽分记录表';

-- ----------------------------
-- Records of ywym_scan_records
-- ----------------------------

-- ----------------------------
-- Table structure for yxqm_scan_records
-- ----------------------------
DROP TABLE IF EXISTS `yxqm_scan_records`;
CREATE TABLE `yxqm_scan_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `yxqm_code` varchar(100) NOT NULL DEFAULT '' COMMENT '有效期码',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `scanned_count` int(11) NOT NULL DEFAULT '1' COMMENT '扫码次数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_yxqmcode` (`yxqm_code`,`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='有效期码抽分记录表';

