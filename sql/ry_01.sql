/*
 Navicat Premium Dump SQL

 Source Server         : ruoyi
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : localhost:3306
 Source Schema         : ry_01

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 24/09/2025 15:59:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int DEFAULT '1' COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `form_col_num`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 'ad_banner', '广告图管理表', NULL, NULL, 'AdBanner', 'crud', 'com.ruoyi.system', 'system', 'banner', '广告图管理', 'ruoyi', 0, '0', '/', NULL, 'admin', '2025-09-24 02:48:29', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (18, 2, 'id', '广告图ID', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (19, 2, 'title', '广告标题', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (20, 2, 'description', '广告描述', 'varchar(500)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (21, 2, 'image_url', '图片URL', 'varchar(500)', 'String', 'imageUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (22, 2, 'link_url', '链接URL', 'varchar(500)', 'String', 'linkUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (23, 2, 'position', '显示位置（首页轮播、侧边栏等）', 'varchar(50)', 'String', 'position', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (24, 2, 'sort_order', '排序号', 'int', 'Long', 'sortOrder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (25, 2, 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (26, 2, 'open_new_window', '新窗口打开（0否 1是）', 'char(1)', 'String', 'openNewWindow', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (27, 2, 'is_inner', '是否站内（0否 1是）', 'char(1)', 'String', 'isInner', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (28, 2, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (29, 2, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (30, 2, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (31, 2, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2025-09-24 02:48:29', '', NULL);
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (32, 2, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2025-09-24 02:48:29', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for lottery_result
-- ----------------------------
DROP TABLE IF EXISTS `lottery_result`;
CREATE TABLE `lottery_result` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `qihao` bigint NOT NULL COMMENT '期号',
  `term` bigint NOT NULL COMMENT '期数',
  `draw_time` bigint NOT NULL COMMENT '开奖时间戳',
  `next_draw_time` bigint DEFAULT NULL COMMENT '下期开奖时间戳',
  `draw_date` datetime NOT NULL COMMENT '开奖日期时间',
  `source` varchar(50) DEFAULT NULL COMMENT '数据来源',
  `first` int NOT NULL COMMENT '第一个数字',
  `second` int NOT NULL COMMENT '第二个数字',
  `third` int NOT NULL COMMENT '第三个数字',
  `num` json DEFAULT NULL COMMENT '开奖号码数组',
  `result` json DEFAULT NULL COMMENT '开奖结果数组',
  `next_keno_draw_time` int DEFAULT NULL COMMENT '下期Keno开奖时间',
  `zero_count` int DEFAULT '0' COMMENT '零的个数',
  `from_value` int DEFAULT '0' COMMENT 'from字段值',
  `daylight_saving` tinyint(1) DEFAULT '0' COMMENT '是否夏令时',
  `total_sum` int NOT NULL COMMENT '总和',
  `size_type` varchar(10) NOT NULL COMMENT '大小（大/小）',
  `odd_even_type` varchar(10) NOT NULL COMMENT '单双（单/双）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_qihao` (`qihao`),
  UNIQUE KEY `uk_term` (`term`),
  KEY `idx_draw_time` (`draw_time`),
  KEY `idx_draw_date` (`draw_date`),
  KEY `idx_source` (`source`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='开奖结果表';

-- ----------------------------
-- Records of lottery_result
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_ad_banner
-- ----------------------------
DROP TABLE IF EXISTS `sys_ad_banner`;
CREATE TABLE `sys_ad_banner` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '广告图ID',
  `title` varchar(100) NOT NULL COMMENT '广告标题',
  `description` varchar(500) DEFAULT NULL COMMENT '广告描述',
  `image_url` varchar(500) NOT NULL COMMENT '图片URL',
  `link_url` varchar(500) DEFAULT NULL COMMENT '链接URL',
  `position` varchar(50) NOT NULL COMMENT '显示位置（首页轮播、侧边栏等）',
  `sort_order` int DEFAULT '0' COMMENT '排序号',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `open_new_window` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '新窗口打开（0否 1是）',
  `is_inner` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否站内（0否 1是）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_position` (`position`),
  KEY `idx_status` (`status`),
  KEY `idx_sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='广告图管理表';

-- ----------------------------
-- Records of sys_ad_banner
-- ----------------------------
BEGIN;
INSERT INTO `sys_ad_banner` (`id`, `title`, `description`, `image_url`, `link_url`, `position`, `sort_order`, `status`, `open_new_window`, `is_inner`, `remark`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (6, 'demo', 'demo', 'http://localhost/profile/upload/2025/09/24/test_20250924144206A001.jpeg', 'http://www.baidu.com4', 'product_list', 1, '0', '0', '1', 'demo', 'admin', NULL, 'admin', NULL);
INSERT INTO `sys_ad_banner` (`id`, `title`, `description`, `image_url`, `link_url`, `position`, `sort_order`, `status`, `open_new_window`, `is_inner`, `remark`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (12, '首页轮播', '首页轮播', 'http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg', 'http://www.baidu.com', 'home_banner', 0, '0', '0', '1', '首页轮播', 'admin', NULL, 'admin', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-09-22 08:44:35', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '性别男');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '性别女');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '通知');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '公告');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, 1, '首页轮播', 'home_banner', 'ad_position', '', 'primary', 'Y', '0', 'admin', '2025-09-23 11:49:45', 'admin', '2025-09-24 01:05:11', '首页轮播广告位置');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, 2, '侧边栏', 'product_list', 'ad_position', '', 'info', 'N', '0', 'admin', '2025-09-23 11:49:45', '', NULL, '侧边栏广告位置');
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, 1, '是', '1', 'status_yes_no', NULL, 'success', 'Y', '0', 'admin', '2025-09-24 04:00:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, 2, '否', '0', 'status_yes_no', NULL, 'info', 'Y', '0', 'admin', '2025-09-24 04:00:54', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '广告位置', 'ad_position', '0', 'admin', '2025-09-23 11:49:39', '', NULL, '广告显示位置列表');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '状态是否', 'status_yes_no', '0', 'admin', '2025-09-24 04:00:04', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-09-22 08:44:35', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 08:49:28');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 13:20:08');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 13:20:25');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 13:23:58');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 13:24:10');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 13:28:44');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 13:28:52');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 13:30:03');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 13:37:56');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 13:40:49');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-22 14:06:46');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-22 14:07:02');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 00:20:21');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 06:19:51');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 07:30:34');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 07:44:22');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-23 07:49:19');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 07:49:24');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 07:56:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 08:01:08');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 10:59:33');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 11:09:16');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 11:22:40');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 11:34:45');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:04:01');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:06:30');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:12:14');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:20:32');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:32:10');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 12:53:45');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 13:03:22');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 13:21:12');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 13:24:30');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 13:43:05');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 14:22:03');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 14:24:03');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 14:26:18');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 16:24:23');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 16:29:06');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-23 16:29:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-23 16:36:06');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 16:37:16');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '密码输入错误1次', '2025-09-23 16:51:08');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 16:51:18');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 16:56:57');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:06:32');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:09:44');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '1', '验证码错误', '2025-09-23 17:16:09');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:19:14');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:24:02');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:38:58');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:48:56');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 17:52:38');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Mac OS X', '0', '登录成功', '2025-09-23 17:56:10');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 18:00:34');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 18:11:58');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 18:18:12');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 18:26:45');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 18:28:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:33:56');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:36:00');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:42:22');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:50:59');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:52:52');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-23 23:55:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:04:20');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:05:22');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:06:09');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-24 00:13:45');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:13:48');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:16:04');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:24:28');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:35:04');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 00:52:22');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 01:10:51');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:15:19');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:25:01');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:31:20');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:38:27');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:40:53');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:45:21');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-24 02:50:38');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:50:40');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:53:41');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 02:54:47');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-24 03:01:36');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:01:39');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-24 03:07:59');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:08:02');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:13:39');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:26:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:30:31');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:32:31');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:33:33');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:38:37');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:46:26');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 03:58:07');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 04:04:38');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 04:09:14');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 04:20:26');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '1', '验证码错误', '2025-09-24 04:34:06');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 04:34:08');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 04:39:10');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 05:01:38');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 05:19:29');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 05:39:13');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 05:44:02');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:06:25');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:13:35');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:17:29');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:34:10');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:38:55');
INSERT INTO `sys_logininfor` (`info_id`, `login_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `login_time`) VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', '0', '登录成功', '2025-09-24 06:41:46');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2025-09-22 08:44:35', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2025-09-22 08:44:35', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2025-09-22 08:44:35', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2025-09-22 08:44:35', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2025-09-22 08:44:35', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2025-09-22 08:44:35', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2025-09-22 08:44:35', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2025-09-22 08:44:35', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2025-09-22 08:44:35', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2025-09-22 08:44:35', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2025-09-22 08:44:35', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2025-09-22 08:44:35', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2025-09-22 08:44:35', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2025-09-22 08:44:35', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2025-09-22 08:44:35', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2025-09-22 08:44:35', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2025-09-22 08:44:35', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2025-09-22 08:44:35', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2025-09-22 08:44:35', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2025-09-22 08:44:35', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2025-09-22 08:44:35', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2025-09-22 08:44:35', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2025-09-22 08:44:35', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2000, '广告图管理', 1, 11, 'system/adbanner', 'menuItem', 'C', '0', '1', 'system:adbanner:view', '#', 'admin', '2025-09-23 11:02:49', 'admin', '2025-09-23 11:10:21', '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2001, '广告图查询', 2000, 1, '#', 'menuItem', 'F', '0', '1', 'system:adbanner:query', '#', 'admin', '2025-09-23 11:04:14', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2002, '广告图新增', 2000, 2, '#', 'menuItem', 'F', '0', '1', 'system:adbanner:add', '#', 'admin', '2025-09-23 11:04:37', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2003, '广告图修改', 2000, 3, '#', 'menuItem', 'F', '0', '1', 'system:adbanner:edit', '#', 'admin', '2025-09-23 11:05:00', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2004, '广告图删除', 2000, 4, '#', 'menuItem', 'F', '0', '1', 'system:adbanner:remove', '#', 'admin', '2025-09-23 11:05:22', '', NULL, '');
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `url`, `target`, `menu_type`, `visible`, `is_refresh`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2005, '广告图导出', 2000, 5, '#', 'menuItem', 'F', '0', '1', 'system:adbanner:export', '#', 'admin', '2025-09-23 11:05:42', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '管理员');
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, '若依开源框架介绍', '1', 0x3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE9A1B9E79BAEE4BB8BE7BB8D3C2F7370616E3E3C2F703E3C703E3C666F6E7420636F6C6F723D2223333333333333223E52756F5969E5BC80E6BA90E9A1B9E79BAEE698AFE4B8BAE4BC81E4B89AE794A8E688B7E5AE9AE588B6E79A84E5908EE58FB0E8849AE6898BE69EB6E6A186E69EB6EFBC8CE4B8BAE4BC81E4B89AE68993E980A0E79A84E4B880E7AB99E5BC8FE8A7A3E586B3E696B9E6A188EFBC8CE9998DE4BD8EE4BC81E4B89AE5BC80E58F91E68890E69CACEFBC8CE68F90E58D87E5BC80E58F91E69588E78E87E38082E4B8BBE8A681E58C85E68BACE794A8E688B7E7AEA1E79086E38081E8A792E889B2E7AEA1E79086E38081E983A8E997A8E7AEA1E79086E38081E88F9CE58D95E7AEA1E79086E38081E58F82E695B0E7AEA1E79086E38081E5AD97E585B8E7AEA1E79086E380813C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE5B297E4BD8DE7AEA1E790863C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E5AE9AE697B6E4BBBBE58AA13C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE380813C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE69C8DE58AA1E79B91E68EA7E38081E799BBE5BD95E697A5E5BF97E38081E6938DE4BD9CE697A5E5BF97E38081E4BBA3E7A081E7949FE68890E7AD89E58A9FE883BDE38082E585B6E4B8ADEFBC8CE8BF98E694AFE68C81E5A49AE695B0E68DAEE6BA90E38081E695B0E68DAEE69D83E99990E38081E59BBDE99985E58C96E380815265646973E7BC93E5AD98E38081446F636B6572E983A8E7BDB2E38081E6BB91E58AA8E9AA8CE8AF81E7A081E38081E7ACACE4B889E696B9E8AEA4E8AF81E799BBE5BD95E38081E58886E5B883E5BC8FE4BA8BE58AA1E380813C2F7370616E3E3C666F6E7420636F6C6F723D2223333333333333223EE58886E5B883E5BC8FE69687E4BBB6E5AD98E582A83C2F666F6E743E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE38081E58886E5BA93E58886E8A1A8E5A484E79086E7AD89E68A80E69CAFE789B9E782B9E380823C2F7370616E3E3C2F703E3C703E3C696D67207372633D2268747470733A2F2F666F727564612E67697465652E636F6D2F696D616765732F313730353033303538333937373430313635312F35656435646236615F313135313030342E706E6722207374796C653D2277696474683A20363470783B223E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A20726762283233302C20302C2030293B223EE5AE98E7BD91E58F8AE6BC94E7A4BA3C2F7370616E3E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE5AE98E7BD91E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F72756F79692E7669703C2F613E3C6120687265663D22687474703A2F2F72756F79692E76697022207461726765743D225F626C616E6B223E3C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE88BA5E4BE9DE69687E6A1A3E59CB0E59D80EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F646F632E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F646F632E72756F79692E7669703C2F613E3C62723E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E4B88DE58886E7A6BBE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F64656D6F2E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F64656D6F2E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E58886E7A6BBE78988E69CACE38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F7675652E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F7675652E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E5BEAEE69C8DE58AA1E78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F636C6F75642E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F636C6F75642E72756F79692E7669703C2F613E3C2F703E3C703E3C7370616E207374796C653D22636F6C6F723A207267622835312C2035312C203531293B223EE6BC94E7A4BAE59CB0E59D80E38090E7A7BBE58AA8E7ABAFE78988E38091EFBC9A266E6273703B3C2F7370616E3E3C6120687265663D22687474703A2F2F68352E72756F79692E76697022207461726765743D225F626C616E6B223E687474703A2F2F68352E72756F79692E7669703C2F613E3C2F703E3C703E3C6272207374796C653D22636F6C6F723A207267622834382C2034392C203531293B20666F6E742D66616D696C793A202671756F743B48656C766574696361204E6575652671756F743B2C2048656C7665746963612C20417269616C2C2073616E732D73657269663B20666F6E742D73697A653A20313270783B223E3C2F703E, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"广告图管理\"],\"url\":[\"system/adbanner/adbanner\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:view\"],\"orderNum\":[\"11\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:02:49', 30);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (101, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"广告图查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:query\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:04:14', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (102, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"广告图新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:add\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:04:37', 15);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"广告图修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:05:00', 11);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"广告图删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:05:22', 14);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (105, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"广告图导出\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:export\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:05:42', 15);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"广告图管理\"],\"url\":[\"system/adbanner\"],\"target\":[\"menuItem\"],\"perms\":[\"system:adbanner:view\"],\"orderNum\":[\"11\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:10:21', 30);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (107, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 11:39:50', 28);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (108, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 12:56:54', 63);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (109, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"demo\"],\"position\":[\"侧边栏\"],\"imageUrl\":[\"\"],\"linkUrl\":[\"http://www.baidu.com\"],\"sortOrder\":[\"0\"],\"description\":[\"劳斯莱斯\"],\"startTime\":[\"2025-08-19 00:00:00\"],\"endTime\":[\"2025-09-23 22:24:49\"],\"remark\":[\"aaaa\"],\"status\":[\"0\"],\"openNewWindow\":[\"1\"]}', NULL, 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'image_url\' doesn\'t have a default value\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.insertAdBanner-Inline\n### The error occurred while setting parameters\n### SQL: insert into ad_banner          ( title,             description,                          link_url,             position,             sort_order,             status,             start_time,             end_time,                          open_new_window,             remark,             create_by,             create_time )            values ( ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'image_url\' doesn\'t have a default value\n; Field \'image_url\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'image_url\' doesn\'t have a default value', '2025-09-23 14:24:51', 66);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (110, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"demo\"],\"position\":[\"首页轮播\"],\"imageUrl\":[\"111\"],\"linkUrl\":[\"http://www.baidu.com\"],\"sortOrder\":[\"1\"],\"description\":[\"劳斯莱斯\"],\"startTime\":[\"2025-08-19 00:00:00\"],\"endTime\":[\"2025-09-23 22:26:44\"],\"remark\":[\"aaaa\"],\"status\":[\"0\"],\"openNewWindow\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 14:26:46', 39);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (111, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"demo\"],\"position\":[\"首页轮播\"],\"imageUrl\":[\"111\"],\"linkUrl\":[\"http://www.baidu.com\"],\"sortOrder\":[\"1\"],\"description\":[\"劳斯莱斯\"],\"startTime\":[\"2025-08-19 00:00:00\"],\"endTime\":[\"2025-09-23 22:26:44\"],\"remark\":[\"aaaa\"],\"status\":[\"0\",\"0\"],\"openNewWindow\":[\"1\",\"1\"]}', '{\"msg\":\"新增广告图\'demo\'失败，广告标题已存在\",\"code\":500}', 0, NULL, '2025-09-23 14:26:55', 5);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (112, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 14:27:14', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (113, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/changeStatus', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 14:27:17', 10);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (114, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 16:37:29', 51);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (115, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 16:41:17', 11);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (116, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 16:51:39', 36);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ad_banner\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-23 23:34:17', 104);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (118, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"tt\"],\"description\":[\"tt\"],\"imageUrl\":[\"/profile/upload/2025/09/24/demo_20250924080643A001.jpg\"],\"linkUrl\":[\"tt\"],\"position\":[\"aa\"],\"sortOrder\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"clickCount\":[\"\"],\"openNewWindow\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 00:07:00', 36);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (119, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"title\":[\"tt\"],\"description\":[\"tt\"],\"imageUrl\":[\"/profile/upload/2025/09/24/demo_20250924080643A001.jpg\"],\"linkUrl\":[\"tt88\"],\"position\":[\"aa\"],\"sortOrder\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"clickCount\":[\"0\"],\"openNewWindow\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 00:52:40', 38);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (120, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"title\":[\"tt\"],\"description\":[\"tt\"],\"imageUrl\":[\"/profile/upload/2025/09/24/test_20250924085304A001.jpeg\"],\"linkUrl\":[\"tt88\"],\"position\":[\"aa\"],\"sortOrder\":[\"1\"],\"startTime\":[\"\"],\"endTime\":[\"\"],\"clickCount\":[\"0\"],\"openNewWindow\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 00:53:08', 14);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (121, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"100\"],\"dictLabel\":[\"首页轮播\"],\"dictValue\":[\"home_banner\"],\"dictType\":[\"ad_position\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"首页轮播广告位置\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 01:05:11', 10);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (122, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"aaa\"],\"position\":[\"home_banner\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924103841A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"isInner\":[\"1\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"0\"],\"status\":[\"1\"],\"description\":[\"8999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 02:39:01', 55);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (123, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"aaa\"],\"position\":[\"home_banner\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924104104A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"isInner\":[\"1\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"0\"],\"status\":[\"1\"],\"description\":[\"987698\"]}', '{\"msg\":\"新增广告图\'aaa\'失败，广告标题已存在\",\"code\":500}', 0, NULL, '2025-09-24 02:41:17', 47);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (124, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"aaa999\"],\"position\":[\"home_banner\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924104104A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"isInner\":[\"1\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"0\"],\"status\":[\"1\"],\"description\":[\"987698\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 02:41:29', 27);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (125, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 02:48:26', 41);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (126, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"ad_banner\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 02:48:29', 69);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (127, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"8888\"],\"description\":[\"888\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924105458A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"remark\":[\"8888\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 02:55:43', 65);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (128, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924103841A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 03:02:11', 61);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (129, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5,4,1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 03:02:33', 17);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (130, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7,8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 03:02:40', 15);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (131, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"FASFDS\"],\"description\":[\"FDSA\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924111408A001.jpg\"],\"linkUrl\":[\"AAA\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 03:14:13', 54);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (132, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924113936A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"\"],\"openNewWindow\":[\"\"],\"isInner\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 03:39:39', 47);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (133, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924113936A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"status\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.updateAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:39:46', 23);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (134, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924113936A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"status\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.updateAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:39:53', 13);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (135, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924113936A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"status\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.updateAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:40:02', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (136, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"765\"],\"description\":[\"765\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924114252A002.jpg\"],\"linkUrl\":[\"7564\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"remark\":[\"756476645\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.insertAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:43:00', 10);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (137, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"765\"],\"description\":[\"765\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924114252A002.jpg\"],\"linkUrl\":[\"7564\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"remark\":[\"756476645\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.insertAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:43:16', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (138, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"title\":[\"FASFDS\"],\"description\":[\"FDSA\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924111408A001.jpg\"],\"linkUrl\":[\"AAA\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"status\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.updateAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:46:39', 59);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (139, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"8999099\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924113936A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"N\"],\"isInner\":[\"Y\"],\"status\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \n### Error updating database.  Cause: java.lang.NumberFormatException: For input string: \"N\"\n### The error may exist in file [/Users/yingzi/IdeaProjects/bc_official_website/ruoyi-system/target/classes/mapper/system/AdBannerMapper.xml]\n### The error may involve com.ruoyi.system.mapper.AdBannerMapper.updateAdBanner\n### The error occurred while executing an update\n### Cause: java.lang.NumberFormatException: For input string: \"N\"', '2025-09-24 03:58:22', 53);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (140, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"状态是否\"],\"dictType\":[\"status_yes_no\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:00:04', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (141, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"是\"],\"dictValue\":[\"1\"],\"dictType\":[\"status_yes_no\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"success\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:00:33', 13);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (142, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"否\"],\"dictValue\":[\"0\"],\"dictType\":[\"status_yes_no\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"info\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:00:54', 14);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (143, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"99\"],\"description\":[\"99\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120455A001.jpg\"],\"linkUrl\":[\"999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:05:02', 48);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (144, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:07:15', 26);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (145, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"新窗口打开字段值必须为 Y 或 N\",\"code\":500}', 0, NULL, '2025-09-24 04:07:32', 9);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (146, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"新窗口打开字段值必须为 Y 或 N\",\"code\":500}', 0, NULL, '2025-09-24 04:07:37', 10);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (147, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:09:23', 55);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (148, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:09:28', 28);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (149, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:09:33', 15);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (150, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:09:43', 16);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (151, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"111\"],\"description\":[\"111\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"11\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:09:59', 26);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (152, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"1112\"],\"description\":[\"22\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"112\"],\"position\":[\"product_list\"],\"sortOrder\":[\"4\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:10:44', 22);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (153, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"1112\"],\"description\":[\"22\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"112\"],\"position\":[\"product_list\"],\"sortOrder\":[\"4\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:12:13', 17);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (154, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"11\"],\"title\":[\"1112\"],\"description\":[\"22\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924120704A002.jpg\"],\"linkUrl\":[\"112\"],\"position\":[\"product_list\"],\"sortOrder\":[\"4\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:12:41', 18);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (155, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:20:47', 61);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (156, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:30:47', 23);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (157, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:31:52', 25);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (158, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:34:23', 67);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (159, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:34:35', 19);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (160, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:34:46', 18);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (161, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:35:08', 26);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (162, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:35:17', 19);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (163, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:35:24', 22);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (164, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:35:29', 26);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (165, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:39:23', 54);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (166, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 04:39:29', 19);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (167, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9,10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:01:51', 56);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (168, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:02:00', 21);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (169, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa0\"],\"description\":[\"89990\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924132234A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"product_list\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:22:36', 54);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (170, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:22:41', 8);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (171, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"99999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:22:49', 25);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (172, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"99999999\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:22:56', 22);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (173, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"99999\"],\"description\":[\"999999\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:24:56', 26);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (174, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"首页轮播\"],\"description\":[\"首页轮播\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"9999999\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:25:29', 28);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (175, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"title\":[\"首页轮播\"],\"description\":[\"首页轮播\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"0\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"首页轮播\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 05:25:35', 23);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (176, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa04\"],\"description\":[\"899904\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924132234A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com4\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"1\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:06:51', 58);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (177, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa04\"],\"description\":[\"899904\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924132234A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com4\"],\"position\":[\"product_list\"],\"sortOrder\":[\"1\"],\"openNewWindow\":[\"1\"],\"isInner\":[\"0\"],\"status\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:07:03', 28);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (178, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa04\"],\"description\":[\"899904\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924132234A001.jpg\"],\"linkUrl\":[\"http://www.baidu.com4\"],\"position\":[\"product_list\"],\"sortOrder\":[\"1\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:15:12', 59);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (179, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"aaa04\"],\"description\":[\"899904\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924144206A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com4\"],\"position\":[\"product_list\"],\"sortOrder\":[\"1\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:42:07', 59);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (180, '广告图管理', 1, 'com.ruoyi.web.controller.system.AdBannerController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/add', '127.0.0.1', '内网IP', '{\"title\":[\"8675\"],\"description\":[\"8675\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/demo_20250924144229A002.jpg\"],\"linkUrl\":[\"67\"],\"position\":[\"home_banner\"],\"sortOrder\":[\"876\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:42:36', 28);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (181, '广告图管理', 3, 'com.ruoyi.web.controller.system.AdBannerController.remove()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:42:46', 15);
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `cost_time`) VALUES (182, '广告图管理', 2, 'com.ruoyi.web.controller.system.AdBannerController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/adbanner/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"title\":[\"demo\"],\"description\":[\"demo\"],\"imageUrl\":[\"http://localhost/profile/upload/2025/09/24/test_20250924144206A001.jpeg\"],\"linkUrl\":[\"http://www.baidu.com4\"],\"position\":[\"product_list\"],\"sortOrder\":[\"1\"],\"openNewWindow\":[\"0\"],\"isInner\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"demo\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2025-09-24 06:43:01', 17);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-09-22 08:44:35', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '超级管理员');
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2025-09-22 08:44:35', '', NULL, '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 100);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 101);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 3);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 100);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 101);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 102);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 103);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 104);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 105);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 106);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 107);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 108);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 109);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 110);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 111);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 112);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 113);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 114);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 115);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 116);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 500);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 501);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1000);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1001);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1002);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1003);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1004);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1005);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1006);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1007);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1008);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1009);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1010);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1011);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1012);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1013);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1014);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1015);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1016);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1017);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1018);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1019);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1020);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1021);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1022);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1023);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1024);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1025);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1026);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1027);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1028);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1029);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1030);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1031);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1032);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1033);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1034);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1035);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1036);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1037);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1038);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1039);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1040);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1041);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1042);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1043);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1044);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1045);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1046);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1047);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1048);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1049);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1050);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1051);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1052);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1053);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1054);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1055);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1056);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1057);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1058);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1059);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1060);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1061);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `login_name`, `user_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `salt`, `status`, `del_flag`, `login_ip`, `login_date`, `pwd_update_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2025/09/23/f01f7d9bf60849e880951c6364d655a7.png', 'adb60d0ba4ce5e2eb4cce31791b3168a', '663c74', '0', '0', '127.0.0.1', '2025-09-24 14:41:47', '2025-09-23 16:51:39', 'admin', '2025-09-22 08:44:35', '', '2025-09-23 16:51:39', '管理员');
INSERT INTO `sys_user` (`user_id`, `dept_id`, `login_name`, `user_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `salt`, `status`, `del_flag`, `login_ip`, `login_date`, `pwd_update_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', NULL, NULL, 'admin', '2025-09-22 08:44:35', '', NULL, '测试员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_online` (`sessionId`, `login_name`, `dept_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `start_timestamp`, `last_access_time`, `expire_time`) VALUES ('ee954cc6-b478-49b4-9144-c6c8d6f358ca', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 14', 'Mac OS X', 'on_line', '2025-09-24 10:15:16', '2025-09-24 14:42:52', 1800000);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
