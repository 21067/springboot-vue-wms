
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '货名',
  `storage` int NOT NULL COMMENT '仓库',
  `goods_type` int NOT NULL DEFAULT '0' COMMENT '分类',
  `count` int DEFAULT NULL COMMENT '数量',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '分类名',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int NOT NULL,
  `menu_code` varchar(8) DEFAULT NULL COMMENT '菜单编码',
  `menu_name` varchar(16) DEFAULT NULL COMMENT '菜单名字',
  `menu_level` varchar(2) DEFAULT NULL COMMENT '菜单级别',
  `menu_parent_code` varchar(8) DEFAULT NULL COMMENT '菜单的父code',
  `menu_click` varchar(16) DEFAULT NULL COMMENT '点击触发的数',
  `menu_right` varchar(8) DEFAULT NULL COMMENT '权限 0超级管理员，1表示管理员，2表示普通用户，可以用近号组合使用',
  `menu_component` varchar(280) DEFAULT NULL,
  `menu_icon` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods` int NOT NULL COMMENT '货品id',
  `user_id` int DEFAULT NULL COMMENT '取货人/补货人',
  `admin_id` int DEFAULT NULL COMMENT '操作人id',
  `count` int DEFAULT NULL COMMENT '数量',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '仓库名',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '璐﹀彿',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍚嶅瓧',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀵嗙爜',
  `age` int DEFAULT NULL COMMENT '骞撮緞',
  `sex` int DEFAULT NULL COMMENT '鎬у埆',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鐢佃瘽',
  `role_id` int DEFAULT '2',
  `is_valid` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=744366082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

