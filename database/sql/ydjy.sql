/*
 Navicat MySQL Data Transfer

 Source Server         : LocalHost
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : 127.0.0.1
 Source Database       : ydjy

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 11/30/2017 15:05:10 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_menu`
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null), ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null), ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null), ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null), ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null), ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null), ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null), ('8', '10', '9', '新闻情报', 'fa-file-text-o', 'intelligence', '2017-11-14 09:01:50', '2017-11-22 10:29:27'), ('9', '10', '10', '帮助文档', 'fa-book', 'help-doc', '2017-11-16 10:16:16', '2017-11-22 10:29:27'), ('10', '0', '8', '公告帮助', 'fa-copy', null, '2017-11-22 10:28:37', '2017-11-22 10:29:27'), ('11', '0', '0', '官网内容', 'fa-home', null, '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('12', '11', '0', '关于艺动', 'fa-info', 'introduction', '2017-11-30 06:57:08', '2017-11-30 06:57:08');
COMMIT;

-- ----------------------------
--  Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `input` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_operation_log`
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:32', '2017-11-23 06:46:32'), ('2', '1', 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:32', '2017-11-23 06:46:32'), ('3', '1', 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:37', '2017-11-23 06:46:37'), ('4', '2', 'admin', 'GET', '::1', '[]', '2017-11-23 06:46:45', '2017-11-23 06:46:45'), ('5', '1', 'admin', 'GET', '::1', '[]', '2017-11-30 06:56:08', '2017-11-30 06:56:08'), ('6', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:56:15', '2017-11-30 06:56:15'), ('7', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5b98\\u7f51\\u5185\\u5bb9\",\"icon\":\"fa-home\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\"}', '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('8', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('9', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"11\",\"title\":\"\\u5173\\u4e8e\\u827a\\u52a8\",\"icon\":\"fa-info\",\"uri\":\"introduction\",\"roles\":[\"1\",\"2\",null],\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\"}', '2017-11-30 06:57:08', '2017-11-30 06:57:08'), ('10', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:57:08', '2017-11-30 06:57:08'), ('11', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:57:11', '2017-11-30 06:57:11'), ('12', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:57:13', '2017-11-30 06:57:13'), ('13', '1', 'admin/introduction/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:57:17', '2017-11-30 06:57:17'), ('14', '1', 'admin/introduction/1/edit', 'GET', '::1', '[]', '2017-11-30 06:59:45', '2017-11-30 06:59:45'), ('15', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 06:59:49', '2017-11-30 06:59:49'), ('16', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:59:51', '2017-11-30 06:59:51'), ('17', '1', 'admin/introduction/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:59:52', '2017-11-30 06:59:52'), ('18', '1', 'admin/introduction', 'POST', '::1', '{\"summary\":\"\\u827a\\u52a8\\u6559\\u80b2\\uff0c\\u5168\\u79f0\\u4e1c\\u839e\\u5e02\\u827a\\u52a8\\u6559\\u80b2\\u6295\\u8d44\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u516c\\u53f8\\u6838\\u5fc3\\u56e2\\u961f\\u81ea2010\\u5e74\\u8d77\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u9879\\u76ee\\uff0c\\u5e76\\u4e8e2017\\u5e74\\u8fdb\\u884c\\u9879\\u76ee\\u67b6\\u6784\\u548c\\u6559\\u5b66\\u573a\\u5730\\u5347\\u7ea7\\uff0c\\u662f\\u901a\\u8fc7\\u4e1c\\u839e\\u5e02\\u6559\\u80b2\\u5c40\\u5ba1\\u6279\\u7684\\u6b63\\u89c4\\u6301\\u8bc1\\u8bfe\\u5916\\u827a\\u672f\\u57f9\\u8bad\\u670d\\u52a1\\u673a\\u6784\\u3002\",\"slogan\":\"\\u56e0\\u827a\\u800c\\u52a8 MOVING FOR ART\",\"status\":\"\\u542f\\u7528\",\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/introduction\",\"content\":\"<p>\\u76ee\\u524d\\uff0c\\u51ed\\u501f\\u7740\\u591a\\u5143\\u5316\\u7684\\u827a\\u672f\\u6559\\u80b2\\u8d44\\u6e90\\u4f18\\u52bf\\uff0c\\u6574\\u5408\\u8986\\u76d6\\u56fd\\u5185\\u5916\\u7684\\u827a\\u672f\\u5347\\u5b66\\u6e20\\u9053\\uff0c\\u827a\\u52a8\\u6559\\u80b2\\u7684\\u827a\\u672f\\u5347\\u5b66\\u4e13\\u6ce8\\u4e8e\\u4f20\\u5a92\\u827a\\u672f\\u548c\\u7f8e\\u672f\\u4e24\\u5927\\u8303\\u7574\\uff0c\\u670d\\u52a1\\u9879\\u76ee\\u5305\\u62ec\\uff1a\\u4f20\\u5a92\\u4f20\\u5a92\\u827a\\u8003\\u3001\\u7f8e\\u672f\\u827a\\u8003\\u3001\\u521d\\u4e2d\\u7f8e\\u672f\\u7279\\u957f\\u751f\\u3001\\u827a<\\/p><p style=\\\"white-space: normal;\\\">\\u672f\\u7559\\u5b66\\u3001\\u827a\\u672f\\u6e38\\u5b66\\u3001\\u56fd\\u9645\\u4ea4\\u6362\\u751f\\u3001\\u5916\\u8bed\\u57f9\\u8bad\\u7b49\\u3002<\\/p><p style=\\\"white-space: normal;\\\"><br\\/><\\/p><p style=\\\"white-space: normal;\\\">\\u4e3a\\u5e74\\u9f84\\u6bb5\\u4ece\\u521d\\u4e2d\\u5230\\u5927\\u5b66\\u7684\\u5b66\\u5458\\u5728\\u827a\\u672f\\u5347\\u5b66\\u7684\\u9053\\u8def\\u4e0a\\u63d0\\u4f9b\\u670d\\u52a1\\u548c\\u5e2e\\u52a9\\u3002\\u6211\\u4eec\\u5c0a\\u91cd\\u6bcf\\u4e00\\u4f4d\\u5b66\\u5458\\u7684\\u5174\\u8da3\\u53ca\\u827a\\u672f\\u5929\\u8d4b\\uff0c\\u9075\\u5faa\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u7684\\u4eba\\u624d\\u9009\\u62d4\\u673a\\u5236\\u548c\\u89c4\\u5f8b\\uff0c\\u5168\\u7a0b\\u4e3a\\u5b66\\u5458\\u5b9a\\u5236\\u51fa\\u6700\\u4f18\\u7684\\u827a\\u672f\\u5347\\u5b66\\u89c4\\u5212\\uff0c\\u529b\\u6c42\\u6210\\u4e3a\\u60a8\\u8003\\u53d6\\u7406\\u60f3\\u827a\\u672f\\u9662\\u6821\\u7684\\u5b9e\\u529b\\u62a4\\u822a\\u8005\\uff01<\\/p><p><br\\/><\\/p><p><br\\/><\\/p>\"}', '2017-11-30 07:01:13', '2017-11-30 07:01:13'), ('19', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 07:01:13', '2017-11-30 07:01:13'), ('20', '1', 'admin/introduction/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:01:28', '2017-11-30 07:01:28'), ('21', '1', 'admin/introduction/1', 'PUT', '::1', '{\"summary\":\"\\u827a\\u52a8\\u6559\\u80b2\\uff0c\\u5168\\u79f0\\u4e1c\\u839e\\u5e02\\u827a\\u52a8\\u6559\\u80b2\\u6295\\u8d44\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u516c\\u53f8\\u6838\\u5fc3\\u56e2\\u961f\\u81ea2010\\u5e74\\u8d77\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u9879\\u76ee\\uff0c\\u5e76\\u4e8e2017\\u5e74\\u8fdb\\u884c\\u9879\\u76ee\\u67b6\\u6784\\u548c\\u6559\\u5b66\\u573a\\u5730\\u5347\\u7ea7\\uff0c\\u662f\\u901a\\u8fc7\\u4e1c\\u839e\\u5e02\\u6559\\u80b2\\u5c40\\u5ba1\\u6279\\u7684\\u6b63\\u89c4\\u6301\\u8bc1\\u8bfe\\u5916\\u827a\\u672f\\u57f9\\u8bad\\u670d\\u52a1\\u673a\\u6784\\u3002\",\"slogan\":\"\\u56e0\\u827a\\u800c\\u52a8 MOVING FOR ART\",\"status\":\"\\u542f\\u7528\",\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/introduction\",\"content\":\"<p>\\u76ee\\u524d\\uff0c\\u51ed\\u501f\\u7740\\u591a\\u5143\\u5316\\u7684\\u827a\\u672f\\u6559\\u80b2\\u8d44\\u6e90\\u4f18\\u52bf\\uff0c\\u6574\\u5408\\u8986\\u76d6\\u56fd\\u5185\\u5916\\u7684\\u827a\\u672f\\u5347\\u5b66\\u6e20\\u9053\\uff0c\\u827a\\u52a8\\u6559\\u80b2\\u7684\\u827a\\u672f\\u5347\\u5b66\\u4e13\\u6ce8\\u4e8e\\u4f20\\u5a92\\u827a\\u672f\\u548c\\u7f8e\\u672f\\u4e24\\u5927\\u8303\\u7574\\uff0c\\u670d\\u52a1\\u9879\\u76ee\\u5305\\u62ec\\uff1a\\u4f20\\u5a92\\u4f20\\u5a92\\u827a\\u8003\\u3001\\u7f8e\\u672f\\u827a\\u8003\\u3001\\u521d\\u4e2d\\u7f8e\\u672f\\u7279\\u957f\\u751f\\u3001\\u827a\\u672f\\u7559\\u5b66\\u3001\\u827a\\u672f\\u6e38\\u5b66\\u3001\\u56fd\\u9645\\u4ea4\\u6362\\u751f\\u3001\\u5916\\u8bed\\u57f9\\u8bad\\u7b49\\u3002<\\/p><p style=\\\"white-space: normal;\\\"><br\\/><\\/p><p style=\\\"white-space: normal;\\\">\\u4e3a\\u5e74\\u9f84\\u6bb5\\u4ece\\u521d\\u4e2d\\u5230\\u5927\\u5b66\\u7684\\u5b66\\u5458\\u5728\\u827a\\u672f\\u5347\\u5b66\\u7684\\u9053\\u8def\\u4e0a\\u63d0\\u4f9b\\u670d\\u52a1\\u548c\\u5e2e\\u52a9\\u3002\\u6211\\u4eec\\u5c0a\\u91cd\\u6bcf\\u4e00\\u4f4d\\u5b66\\u5458\\u7684\\u5174\\u8da3\\u53ca\\u827a\\u672f\\u5929\\u8d4b\\uff0c\\u9075\\u5faa\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u7684\\u4eba\\u624d\\u9009\\u62d4\\u673a\\u5236\\u548c\\u89c4\\u5f8b\\uff0c\\u5168\\u7a0b\\u4e3a\\u5b66\\u5458\\u5b9a\\u5236\\u51fa\\u6700\\u4f18\\u7684\\u827a\\u672f\\u5347\\u5b66\\u89c4\\u5212\\uff0c\\u529b\\u6c42\\u6210\\u4e3a\\u60a8\\u8003\\u53d6\\u7406\\u60f3\\u827a\\u672f\\u9662\\u6821\\u7684\\u5b9e\\u529b\\u62a4\\u822a\\u8005\\uff01<\\/p><p><br\\/><\\/p><p><br\\/><\\/p>\"}', '2017-11-30 07:01:34', '2017-11-30 07:01:34'), ('22', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 07:01:34', '2017-11-30 07:01:34'), ('23', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"%23pjax-container\"}', '2017-11-30 07:02:36', '2017-11-30 07:02:36'), ('24', '1', 'admin/intelligence', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:41', '2017-11-30 07:02:41'), ('25', '1', 'admin/help-doc', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:42', '2017-11-30 07:02:42'), ('26', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:43', '2017-11-30 07:02:43');
COMMIT;

-- ----------------------------
--  Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_permissions`
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null), ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null), ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null), ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null), ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null), ('6', '新闻情报', 'intelligence', '', '/intelligence\r\n/intelligence/*', '2017-11-15 09:19:53', '2017-11-22 10:29:59'), ('7', '帮助文档', 'help-doc', '', '/help-doc\r\n/help-doc/*', '2017-11-16 10:15:10', '2017-11-16 10:15:10');
COMMIT;

-- ----------------------------
--  Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_role_menu`
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null), ('1', '8', null, null), ('2', '8', null, null), ('1', '9', null, null), ('2', '9', null, null), ('1', '10', null, null), ('2', '10', null, null), ('1', '11', null, null), ('2', '11', null, null), ('1', '12', null, null), ('2', '12', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_role_permissions`
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null), ('2', '3', null, null), ('2', '2', null, null), ('2', '4', null, null), ('2', '6', null, null), ('2', '7', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_role_users`
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null), ('2', '2', null, null), ('2', '3', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_roles`
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2017-11-14 07:39:59', '2017-11-14 07:39:59'), ('2', 'PM', 'project manager', '2017-11-15 09:18:10', '2017-11-15 09:18:10');
COMMIT;

-- ----------------------------
--  Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_users`
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$EJ7Cy34vDC2/wvJ31vrK6umnlnCSMY7EPxovVMRKtQKANCtDOIC/y', 'Administrator', null, '5jPVeIUhSau2uORSAtsk0XOTxQtZouAOYGWguMxP25BnbHyrmpT9S6yvkzja', '2017-11-14 07:39:59', '2017-11-14 08:08:26'), ('2', 'manager', '$2y$10$DWNpB0whICVQrqI02lseReSb2anr4XeM0205SsOFImLtsuOP.RzzK', 'manager', '', 'bIlOmHfR0QqS1othrNPGyDjIP6ahs8RQ0UbvkI5TyBLsW69vwJBByajw1RtG', '2017-11-15 09:15:19', '2017-11-22 10:25:24');
COMMIT;

-- ----------------------------
--  Table structure for `help_docs`
-- ----------------------------
DROP TABLE IF EXISTS `help_docs`;
CREATE TABLE `help_docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `focus_img_url` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` longtext,
  `author` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `intelligences`
-- ----------------------------
DROP TABLE IF EXISTS `intelligences`;
CREATE TABLE `intelligences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `focus_img_url` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` longtext,
  `author` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `introductions`
-- ----------------------------
DROP TABLE IF EXISTS `introductions`;
CREATE TABLE `introductions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `focus_img_url` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` longtext,
  `slogan` text,
  `author` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `introductions`
-- ----------------------------
BEGIN;
INSERT INTO `introductions` VALUES ('1', null, null, '艺动教育，全称东莞市艺动教育投资有限公司，公司核心团队自2010年起从事艺术教育项目，并于2017年进行项目架构和教学场地升级，是通过东莞市教育局审批的正规持证课外艺术培训服务机构。', '<p>目前，凭借着多元化的艺术教育资源优势，整合覆盖国内外的艺术升学渠道，艺动教育的艺术升学专注于传媒艺术和美术两大范畴，服务项目包括：传媒传媒艺考、美术艺考、初中美术特长生、艺术留学、艺术游学、国际交换生、外语培训等。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">为年龄段从初中到大学的学员在艺术升学的道路上提供服务和帮助。我们尊重每一位学员的兴趣及艺术天赋，遵循国内外各大艺术院校的人才选拔机制和规律，全程为学员定制出最优的艺术升学规划，力求成为您考取理想艺术院校的实力护航者！</p><p><br/></p><p><br/></p>', '因艺而动 MOVING FOR ART', null, '启用', '2017-11-30 07:01:13', '2017-11-30 07:01:34');
COMMIT;

-- ----------------------------
--  Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `migrations`
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1'), ('2', '2014_10_12_100000_create_password_resets_table', '1'), ('3', '2016_01_04_173148_create_admin_tables', '1');
COMMIT;

-- ----------------------------
--  Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
