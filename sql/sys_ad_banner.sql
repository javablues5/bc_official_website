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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='广告图管理表';

-- ----------------------------
-- 初始化广告图数据
-- ----------------------------

INSERT INTO `sys_ad_banner` (`id`, `title`, `description`, `image_url`, `link_url`, `position`, `sort_order`, `status`, `open_new_window`, `is_inner`, `remark`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1, '首页轮播', '首页轮播', 'http://localhost/profile/upload/2025/09/24/demo_20250924122039A001.jpg', 'http://www.baidu.com', 'home_banner', 0, '0', '0', '1', '首页轮播', 'admin', NULL, 'admin', NULL);
INSERT INTO `sys_ad_banner` (`id`, `title`, `description`, `image_url`, `link_url`, `position`, `sort_order`, `status`, `open_new_window`, `is_inner`, `remark`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (2, 'demo', 'demo', 'http://localhost/profile/upload/2025/09/24/demo_20250924132234A001.jpg', 'http://www.baidu.com4', 'product_list', 1, '0', '0', '1', '', 'admin', NULL, 'admin', NULL);
