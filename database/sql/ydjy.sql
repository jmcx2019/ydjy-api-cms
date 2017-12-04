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

 Date: 12/04/2017 14:31:33 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_menu`
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null), ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null), ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null), ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null), ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null), ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null), ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null), ('8', '10', '9', '新闻情报', 'fa-file-text-o', 'intelligence', '2017-11-14 09:01:50', '2017-11-22 10:29:27'), ('9', '10', '10', '帮助文档', 'fa-book', 'help-doc', '2017-11-16 10:16:16', '2017-11-22 10:29:27'), ('10', '0', '8', '公告帮助', 'fa-copy', null, '2017-11-22 10:28:37', '2017-11-22 10:29:27'), ('11', '0', '0', '官网内容', 'fa-home', null, '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('12', '11', '0', '关于艺动', 'fa-info', 'introduction', '2017-11-30 06:57:08', '2017-11-30 06:57:08'), ('13', '11', '0', '师资团队', 'fa-street-view', 'teacher', '2017-11-30 12:19:30', '2017-11-30 12:19:30'), ('14', '11', '0', '学员风采', 'fa-child', 'student', '2017-12-03 14:21:14', '2017-12-03 14:21:14'), ('15', '11', '0', '教学环境', 'fa-photo', 'classroom', '2017-12-04 06:04:44', '2017-12-04 06:04:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `admin_operation_log`
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:32', '2017-11-23 06:46:32'), ('2', '1', 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:32', '2017-11-23 06:46:32'), ('3', '1', 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-23 06:46:37', '2017-11-23 06:46:37'), ('4', '2', 'admin', 'GET', '::1', '[]', '2017-11-23 06:46:45', '2017-11-23 06:46:45'), ('5', '1', 'admin', 'GET', '::1', '[]', '2017-11-30 06:56:08', '2017-11-30 06:56:08'), ('6', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:56:15', '2017-11-30 06:56:15'), ('7', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"\\u5b98\\u7f51\\u5185\\u5bb9\",\"icon\":\"fa-home\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\"}', '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('8', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:56:38', '2017-11-30 06:56:38'), ('9', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"11\",\"title\":\"\\u5173\\u4e8e\\u827a\\u52a8\",\"icon\":\"fa-info\",\"uri\":\"introduction\",\"roles\":[\"1\",\"2\",null],\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\"}', '2017-11-30 06:57:08', '2017-11-30 06:57:08'), ('10', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:57:08', '2017-11-30 06:57:08'), ('11', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 06:57:11', '2017-11-30 06:57:11'), ('12', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:57:13', '2017-11-30 06:57:13'), ('13', '1', 'admin/introduction/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:57:17', '2017-11-30 06:57:17'), ('14', '1', 'admin/introduction/1/edit', 'GET', '::1', '[]', '2017-11-30 06:59:45', '2017-11-30 06:59:45'), ('15', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 06:59:49', '2017-11-30 06:59:49'), ('16', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:59:51', '2017-11-30 06:59:51'), ('17', '1', 'admin/introduction/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 06:59:52', '2017-11-30 06:59:52'), ('18', '1', 'admin/introduction', 'POST', '::1', '{\"summary\":\"\\u827a\\u52a8\\u6559\\u80b2\\uff0c\\u5168\\u79f0\\u4e1c\\u839e\\u5e02\\u827a\\u52a8\\u6559\\u80b2\\u6295\\u8d44\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u516c\\u53f8\\u6838\\u5fc3\\u56e2\\u961f\\u81ea2010\\u5e74\\u8d77\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u9879\\u76ee\\uff0c\\u5e76\\u4e8e2017\\u5e74\\u8fdb\\u884c\\u9879\\u76ee\\u67b6\\u6784\\u548c\\u6559\\u5b66\\u573a\\u5730\\u5347\\u7ea7\\uff0c\\u662f\\u901a\\u8fc7\\u4e1c\\u839e\\u5e02\\u6559\\u80b2\\u5c40\\u5ba1\\u6279\\u7684\\u6b63\\u89c4\\u6301\\u8bc1\\u8bfe\\u5916\\u827a\\u672f\\u57f9\\u8bad\\u670d\\u52a1\\u673a\\u6784\\u3002\",\"slogan\":\"\\u56e0\\u827a\\u800c\\u52a8 MOVING FOR ART\",\"status\":\"\\u542f\\u7528\",\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/introduction\",\"content\":\"<p>\\u76ee\\u524d\\uff0c\\u51ed\\u501f\\u7740\\u591a\\u5143\\u5316\\u7684\\u827a\\u672f\\u6559\\u80b2\\u8d44\\u6e90\\u4f18\\u52bf\\uff0c\\u6574\\u5408\\u8986\\u76d6\\u56fd\\u5185\\u5916\\u7684\\u827a\\u672f\\u5347\\u5b66\\u6e20\\u9053\\uff0c\\u827a\\u52a8\\u6559\\u80b2\\u7684\\u827a\\u672f\\u5347\\u5b66\\u4e13\\u6ce8\\u4e8e\\u4f20\\u5a92\\u827a\\u672f\\u548c\\u7f8e\\u672f\\u4e24\\u5927\\u8303\\u7574\\uff0c\\u670d\\u52a1\\u9879\\u76ee\\u5305\\u62ec\\uff1a\\u4f20\\u5a92\\u4f20\\u5a92\\u827a\\u8003\\u3001\\u7f8e\\u672f\\u827a\\u8003\\u3001\\u521d\\u4e2d\\u7f8e\\u672f\\u7279\\u957f\\u751f\\u3001\\u827a<\\/p><p style=\\\"white-space: normal;\\\">\\u672f\\u7559\\u5b66\\u3001\\u827a\\u672f\\u6e38\\u5b66\\u3001\\u56fd\\u9645\\u4ea4\\u6362\\u751f\\u3001\\u5916\\u8bed\\u57f9\\u8bad\\u7b49\\u3002<\\/p><p style=\\\"white-space: normal;\\\"><br\\/><\\/p><p style=\\\"white-space: normal;\\\">\\u4e3a\\u5e74\\u9f84\\u6bb5\\u4ece\\u521d\\u4e2d\\u5230\\u5927\\u5b66\\u7684\\u5b66\\u5458\\u5728\\u827a\\u672f\\u5347\\u5b66\\u7684\\u9053\\u8def\\u4e0a\\u63d0\\u4f9b\\u670d\\u52a1\\u548c\\u5e2e\\u52a9\\u3002\\u6211\\u4eec\\u5c0a\\u91cd\\u6bcf\\u4e00\\u4f4d\\u5b66\\u5458\\u7684\\u5174\\u8da3\\u53ca\\u827a\\u672f\\u5929\\u8d4b\\uff0c\\u9075\\u5faa\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u7684\\u4eba\\u624d\\u9009\\u62d4\\u673a\\u5236\\u548c\\u89c4\\u5f8b\\uff0c\\u5168\\u7a0b\\u4e3a\\u5b66\\u5458\\u5b9a\\u5236\\u51fa\\u6700\\u4f18\\u7684\\u827a\\u672f\\u5347\\u5b66\\u89c4\\u5212\\uff0c\\u529b\\u6c42\\u6210\\u4e3a\\u60a8\\u8003\\u53d6\\u7406\\u60f3\\u827a\\u672f\\u9662\\u6821\\u7684\\u5b9e\\u529b\\u62a4\\u822a\\u8005\\uff01<\\/p><p><br\\/><\\/p><p><br\\/><\\/p>\"}', '2017-11-30 07:01:13', '2017-11-30 07:01:13'), ('19', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 07:01:13', '2017-11-30 07:01:13'), ('20', '1', 'admin/introduction/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:01:28', '2017-11-30 07:01:28'), ('21', '1', 'admin/introduction/1', 'PUT', '::1', '{\"summary\":\"\\u827a\\u52a8\\u6559\\u80b2\\uff0c\\u5168\\u79f0\\u4e1c\\u839e\\u5e02\\u827a\\u52a8\\u6559\\u80b2\\u6295\\u8d44\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u516c\\u53f8\\u6838\\u5fc3\\u56e2\\u961f\\u81ea2010\\u5e74\\u8d77\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u9879\\u76ee\\uff0c\\u5e76\\u4e8e2017\\u5e74\\u8fdb\\u884c\\u9879\\u76ee\\u67b6\\u6784\\u548c\\u6559\\u5b66\\u573a\\u5730\\u5347\\u7ea7\\uff0c\\u662f\\u901a\\u8fc7\\u4e1c\\u839e\\u5e02\\u6559\\u80b2\\u5c40\\u5ba1\\u6279\\u7684\\u6b63\\u89c4\\u6301\\u8bc1\\u8bfe\\u5916\\u827a\\u672f\\u57f9\\u8bad\\u670d\\u52a1\\u673a\\u6784\\u3002\",\"slogan\":\"\\u56e0\\u827a\\u800c\\u52a8 MOVING FOR ART\",\"status\":\"\\u542f\\u7528\",\"_token\":\"tKIRuntB4UAutX1RNnxIVoGJJGfYlyCr1Dr4i49Z\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/introduction\",\"content\":\"<p>\\u76ee\\u524d\\uff0c\\u51ed\\u501f\\u7740\\u591a\\u5143\\u5316\\u7684\\u827a\\u672f\\u6559\\u80b2\\u8d44\\u6e90\\u4f18\\u52bf\\uff0c\\u6574\\u5408\\u8986\\u76d6\\u56fd\\u5185\\u5916\\u7684\\u827a\\u672f\\u5347\\u5b66\\u6e20\\u9053\\uff0c\\u827a\\u52a8\\u6559\\u80b2\\u7684\\u827a\\u672f\\u5347\\u5b66\\u4e13\\u6ce8\\u4e8e\\u4f20\\u5a92\\u827a\\u672f\\u548c\\u7f8e\\u672f\\u4e24\\u5927\\u8303\\u7574\\uff0c\\u670d\\u52a1\\u9879\\u76ee\\u5305\\u62ec\\uff1a\\u4f20\\u5a92\\u4f20\\u5a92\\u827a\\u8003\\u3001\\u7f8e\\u672f\\u827a\\u8003\\u3001\\u521d\\u4e2d\\u7f8e\\u672f\\u7279\\u957f\\u751f\\u3001\\u827a\\u672f\\u7559\\u5b66\\u3001\\u827a\\u672f\\u6e38\\u5b66\\u3001\\u56fd\\u9645\\u4ea4\\u6362\\u751f\\u3001\\u5916\\u8bed\\u57f9\\u8bad\\u7b49\\u3002<\\/p><p style=\\\"white-space: normal;\\\"><br\\/><\\/p><p style=\\\"white-space: normal;\\\">\\u4e3a\\u5e74\\u9f84\\u6bb5\\u4ece\\u521d\\u4e2d\\u5230\\u5927\\u5b66\\u7684\\u5b66\\u5458\\u5728\\u827a\\u672f\\u5347\\u5b66\\u7684\\u9053\\u8def\\u4e0a\\u63d0\\u4f9b\\u670d\\u52a1\\u548c\\u5e2e\\u52a9\\u3002\\u6211\\u4eec\\u5c0a\\u91cd\\u6bcf\\u4e00\\u4f4d\\u5b66\\u5458\\u7684\\u5174\\u8da3\\u53ca\\u827a\\u672f\\u5929\\u8d4b\\uff0c\\u9075\\u5faa\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u7684\\u4eba\\u624d\\u9009\\u62d4\\u673a\\u5236\\u548c\\u89c4\\u5f8b\\uff0c\\u5168\\u7a0b\\u4e3a\\u5b66\\u5458\\u5b9a\\u5236\\u51fa\\u6700\\u4f18\\u7684\\u827a\\u672f\\u5347\\u5b66\\u89c4\\u5212\\uff0c\\u529b\\u6c42\\u6210\\u4e3a\\u60a8\\u8003\\u53d6\\u7406\\u60f3\\u827a\\u672f\\u9662\\u6821\\u7684\\u5b9e\\u529b\\u62a4\\u822a\\u8005\\uff01<\\/p><p><br\\/><\\/p><p><br\\/><\\/p>\"}', '2017-11-30 07:01:34', '2017-11-30 07:01:34'), ('22', '1', 'admin/introduction', 'GET', '::1', '[]', '2017-11-30 07:01:34', '2017-11-30 07:01:34'), ('23', '1', 'admin', 'GET', '::1', '{\"_pjax\":\"%23pjax-container\"}', '2017-11-30 07:02:36', '2017-11-30 07:02:36'), ('24', '1', 'admin/intelligence', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:41', '2017-11-30 07:02:41'), ('25', '1', 'admin/help-doc', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:42', '2017-11-30 07:02:42'), ('26', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 07:02:43', '2017-11-30 07:02:43'), ('27', '1', 'admin', 'GET', '::1', '[]', '2017-11-30 12:18:08', '2017-11-30 12:18:08'), ('28', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 12:18:16', '2017-11-30 12:18:16'), ('29', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"11\",\"title\":\"\\u5e08\\u8d44\\u56e2\\u961f\",\"icon\":\"fa-street-view\",\"uri\":\"teacher\",\"roles\":[\"1\",\"2\",null],\"_token\":\"vbXGfArEdiEmanWOwAFxR9w46Cuk39WQBgXRhRQP\"}', '2017-11-30 12:19:30', '2017-11-30 12:19:30'), ('30', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 12:19:31', '2017-11-30 12:19:31'), ('31', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 12:19:34', '2017-11-30 12:19:34'), ('32', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-11-30 12:19:57', '2017-11-30 12:19:57'), ('33', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 12:19:59', '2017-11-30 12:19:59'), ('34', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-30 12:20:01', '2017-11-30 12:20:01'), ('35', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-11-30 12:20:37', '2017-11-30 12:20:37'), ('36', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-12-01 02:32:45', '2017-12-01 02:32:45'), ('37', '1', 'admin/auth/login', 'GET', '::1', '[]', '2017-12-01 02:33:17', '2017-12-01 02:33:17'), ('38', '1', 'admin', 'GET', '::1', '[]', '2017-12-01 02:33:21', '2017-12-01 02:33:21'), ('39', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 02:33:23', '2017-12-01 02:33:23'), ('40', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 02:33:24', '2017-12-01 02:33:24'), ('41', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-12-01 02:40:49', '2017-12-01 02:40:49'), ('42', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"Test\",\"position\":\"tEst\",\"title\":\"teSt\",\"description\":\"tesT\",\"status\":\"\\u542f\\u7528\",\"_token\":\"Vs2BN3jgjyGQYxihY4PCvJ9HQhR004eAw4W7WQFg\"}', '2017-12-01 02:41:23', '2017-12-01 02:41:23'), ('43', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-12-01 02:41:23', '2017-12-01 02:41:23'), ('44', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"Test\",\"position\":\"tEst\",\"title\":\"teSt\",\"description\":\"tesT\",\"status\":\"\\u542f\\u7528\",\"_token\":\"Vs2BN3jgjyGQYxihY4PCvJ9HQhR004eAw4W7WQFg\"}', '2017-12-01 02:42:26', '2017-12-01 02:42:26'), ('45', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 02:42:26', '2017-12-01 02:42:26'), ('46', '1', 'admin/teacher/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 02:43:10', '2017-12-01 02:43:10'), ('47', '1', 'admin/teacher/1', 'PUT', '::1', '{\"name\":\"Test\",\"position\":\"tEst\",\"title\":\"teSt\",\"description\":\"tesT\",\"status\":\"\\u542f\\u7528\",\"_token\":\"Vs2BN3jgjyGQYxihY4PCvJ9HQhR004eAw4W7WQFg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher\"}', '2017-12-01 02:43:29', '2017-12-01 02:43:29'), ('48', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 02:43:30', '2017-12-01 02:43:30'), ('49', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:45:10', '2017-12-01 03:45:10'), ('50', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:45:26', '2017-12-01 03:45:26'), ('51', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:46:00', '2017-12-01 03:46:00'), ('52', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:46:25', '2017-12-01 03:46:25'), ('53', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:46:45', '2017-12-01 03:46:45'), ('54', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 03:51:22', '2017-12-01 03:51:22'), ('55', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-12-01 06:36:23', '2017-12-01 06:36:23'), ('56', '1', 'admin/teacher/create', 'GET', '::1', '[]', '2017-12-01 06:36:24', '2017-12-01 06:36:24'), ('57', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"2\",\"position\":\"3\",\"title\":\"4\",\"description\":\"5\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\"}', '2017-12-01 06:36:32', '2017-12-01 06:36:32'), ('58', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 06:36:32', '2017-12-01 06:36:32'), ('59', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 06:36:54', '2017-12-01 06:36:54'), ('60', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"4\",\"position\":\"5\",\"title\":\"6\",\"description\":\"1\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher\"}', '2017-12-01 06:37:02', '2017-12-01 06:37:02'), ('61', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 06:37:03', '2017-12-01 06:37:03'), ('62', '1', 'admin', 'GET', '::1', '[]', '2017-12-01 07:22:03', '2017-12-01 07:22:03'), ('63', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:22:05', '2017-12-01 07:22:05'), ('64', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:23:50', '2017-12-01 07:23:50'), ('65', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:24:02', '2017-12-01 07:24:02'), ('66', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:24:04', '2017-12-01 07:24:04'), ('67', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:24:06', '2017-12-01 07:24:06'), ('68', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:24:14', '2017-12-01 07:24:14'), ('69', '1', 'admin/teacher/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:24:18', '2017-12-01 07:24:18'), ('70', '1', 'admin/teacher/1/edit', 'GET', '::1', '[]', '2017-12-01 07:26:58', '2017-12-01 07:26:58'), ('71', '1', 'admin/teacher/1', 'PUT', '::1', '{\"name\":\"Test\",\"position\":\"tEst\",\"title\":\"teSt\",\"description\":\"tesT\",\"view_level\":\"1\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\"}', '2017-12-01 07:27:04', '2017-12-01 07:27:04'), ('72', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:27:05', '2017-12-01 07:27:05'), ('73', '1', 'admin/teacher/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:27:08', '2017-12-01 07:27:08'), ('74', '1', 'admin/teacher/2', 'PUT', '::1', '{\"name\":\"2\",\"position\":\"3\",\"title\":\"4\",\"description\":\"5\",\"view_level\":\"0\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher\"}', '2017-12-01 07:27:11', '2017-12-01 07:27:11'), ('75', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:27:11', '2017-12-01 07:27:11'), ('76', '1', 'admin/teacher/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:27:12', '2017-12-01 07:27:12'), ('77', '1', 'admin/teacher/3', 'PUT', '::1', '{\"name\":\"4\",\"position\":\"5\",\"title\":\"6\",\"description\":\"1\",\"view_level\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher\"}', '2017-12-01 07:27:17', '2017-12-01 07:27:17'), ('78', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:27:17', '2017-12-01 07:27:17'), ('79', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:38:53', '2017-12-01 07:38:53'), ('80', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:39:14', '2017-12-01 07:39:14'), ('81', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:39:19', '2017-12-01 07:39:19'), ('82', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:39:29', '2017-12-01 07:39:29'), ('83', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:39:45', '2017-12-01 07:39:45'), ('84', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:40:09', '2017-12-01 07:40:09'), ('85', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:40:52', '2017-12-01 07:40:52'), ('86', '1', 'admin/teacher/3', 'PUT', '::1', '{\"name\":\"status\",\"value\":\"\\u505c\\u7528\",\"pk\":\"3\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2017-12-01 07:41:00', '2017-12-01 07:41:00'), ('87', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-01 07:41:02', '2017-12-01 07:41:02'), ('88', '1', 'admin/teacher/3', 'PUT', '::1', '{\"name\":\"status\",\"value\":\"\\u542f\\u7528\",\"pk\":\"3\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2017-12-01 07:41:05', '2017-12-01 07:41:05'), ('89', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:41:48', '2017-12-01 07:41:48'), ('90', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2017-12-01 07:41:49', '2017-12-01 07:41:49'), ('91', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 07:42:23', '2017-12-01 07:42:23'), ('92', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:19:38', '2017-12-01 08:19:38'), ('93', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:19:57', '2017-12-01 08:19:57'), ('94', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:20:02', '2017-12-01 08:20:02'), ('95', '1', 'admin/teacher/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:20:03', '2017-12-01 08:20:03'), ('96', '1', 'admin/teacher/1', 'PUT', '::1', '{\"name\":\"\\u6c64\\u8001\\u5e08\",\"position\":\"\\u6821\\u957f\",\"title\":\"\\u4e2d\\u5c71\\u5927\\u5b66\\u4e2d\\u6587\\u7cfb\\u7855\\u58eb\",\"description\":\"\\u81ea2009\\u5e74\\u5f00\\u59cb\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u5de5\\u4f5c\\uff0c\\u591a\\u5e74\\u79ef\\u7d2f\\u4e86\\u4e30\\u5bcc\\u7684\\u827a\\u672f\\u5347\\u5b66\\u8d44\\u6e90\\u53ca\\u57f9\\u8bad\\u673a\\u6784\\u8fd0\\u8425\\u7ecf\\u9a8c\\uff0c\\u76ee\\u524d\\u4e3a\\u6b62\\u5df2\\u57f9\\u517b\\u51fa\\u4e8c\\u5343\\u4f59\\u5b66\\u5458\\u8003\\u53d6\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u3002\",\"view_level\":\"1\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:23:42', '2017-12-01 08:23:42'), ('97', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:23:42', '2017-12-01 08:23:42'), ('98', '1', 'admin/teacher/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:24:01', '2017-12-01 08:24:01'), ('99', '1', 'admin/teacher/2', 'PUT', '::1', '{\"name\":\"\\u9ec4\\u8001\\u5e08\",\"position\":\"\\u6559\\u5b66\\u4e3b\\u7ba1\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e2d\\u592e\\u620f\\u5267\\u5b66\\u9662\",\"description\":\"\\u6709\\u4e30\\u5bcc\\u7684\\u4f20\\u5a92\\u827a\\u8003\\u6559\\u5b66\\u7ba1\\u7406\\u7ecf\\u9a8c\",\"view_level\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:24:34', '2017-12-01 08:24:34'), ('100', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:24:34', '2017-12-01 08:24:34'), ('101', '1', 'admin/teacher/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:24:58', '2017-12-01 08:24:58'), ('102', '1', 'admin/teacher/3', 'PUT', '::1', '{\"name\":\"\\u4e07\\u8001\\u5e08\",\"position\":\"\\u5f71\\u89c6\\u7f16\\u5bfc\\u8d44\\u6df1\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e0a\\u6d77\\u620f\\u5267\\u5b66\\u9662\",\"description\":\"\\u8d44\\u6df1\\u7535\\u89c6\\u680f\\u76ee\\u5bfc\\u6f14\",\"view_level\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:25:23', '2017-12-01 08:25:23'), ('103', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:25:24', '2017-12-01 08:25:24'), ('104', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:25:30', '2017-12-01 08:25:30'), ('105', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"\\u738b\\u8001\\u5e08\",\"position\":\"\\u64ad\\u97f3\\u4e0e\\u4e3b\\u6301\\u8d44\\u6df1\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e2d\\u56fd\\u4f20\\u5a92\\u5927\\u5b66\",\"description\":\"\\u7535\\u89c6\\u53f0\\u8282\\u76ee\\u4e3b\\u6301\\u4eba\",\"view_level\":\"3\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:26:09', '2017-12-01 08:26:09'), ('106', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:26:09', '2017-12-01 08:26:09'), ('107', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:26:29', '2017-12-01 08:26:29'), ('108', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"\\u5b59\\u8001\\u5e08\",\"position\":\"\\u8868\\u6f14\\u4e0e\\u53f0\\u8bcd\\u8bb2\\u5e08\",\"title\":\"\\u4e91\\u5357\\u827a\\u672f\\u5b66\\u9662\\u827a\\u672f\\u7855\\u58eb\",\"description\":\"\\u5927\\u5b66\\u8bb2\\u5e08\\uff0c\\u5177\\u6709\\u4e30\\u5bcc\\u821e\\u53f0\\u6f14\\u51fa\\u7ecf\\u9a8c\\u53ca\\u6559\\u5b66\\u7ecf\\u9a8c\",\"view_level\":\"3\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:26:59', '2017-12-01 08:26:59'), ('109', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:27:00', '2017-12-01 08:27:00'), ('110', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 08:27:23', '2017-12-01 08:27:23'), ('111', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"\\u9093\\u8001\\u5e08\",\"position\":\"\\u8d44\\u6df1\\u8868\\u6f14\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e0a\\u6d77\\u620f\\u5267\\u5b66\\u9662\\u8868\\u6f14\\u7cfb\",\"description\":null,\"view_level\":\"0\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 08:27:36', '2017-12-01 08:27:36'), ('112', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 08:27:37', '2017-12-01 08:27:37'), ('113', '1', 'admin/teacher/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:14:38', '2017-12-01 09:14:38'), ('114', '1', 'admin/teacher/1', 'PUT', '::1', '{\"name\":\"\\u6c64\\u8001\\u5e08\",\"position\":\"\\u6821\\u957f\",\"title\":\"\\u4e2d\\u5c71\\u5927\\u5b66\\u4e2d\\u6587\\u7cfb\\u7855\\u58eb\",\"description\":\"\\u81ea2009\\u5e74\\u5f00\\u59cb\\u4ece\\u4e8b\\u827a\\u672f\\u6559\\u80b2\\u5de5\\u4f5c\\uff0c\\u591a\\u5e74\\u79ef\\u7d2f\\u4e86\\u4e30\\u5bcc\\u7684\\u827a\\u672f\\u5347\\u5b66\\u8d44\\u6e90\\u53ca\\u57f9\\u8bad\\u673a\\u6784\\u8fd0\\u8425\\u7ecf\\u9a8c\\uff0c\\u76ee\\u524d\\u4e3a\\u6b62\\u5df2\\u57f9\\u517b\\u51fa\\u4e8c\\u5343\\u4f59\\u5b66\\u5458\\u8003\\u53d6\\u56fd\\u5185\\u5916\\u5404\\u5927\\u827a\\u672f\\u9662\\u6821\\u3002\",\"view_level\":\"1\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:14:45', '2017-12-01 09:14:45'), ('115', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:14:45', '2017-12-01 09:14:45'), ('116', '1', 'admin/teacher/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:14:52', '2017-12-01 09:14:52'), ('117', '1', 'admin/teacher/2', 'PUT', '::1', '{\"name\":\"\\u9ec4\\u8001\\u5e08\",\"position\":\"\\u6559\\u5b66\\u4e3b\\u7ba1\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e2d\\u592e\\u620f\\u5267\\u5b66\\u9662\",\"description\":\"\\u6709\\u4e30\\u5bcc\\u7684\\u4f20\\u5a92\\u827a\\u8003\\u6559\\u5b66\\u7ba1\\u7406\\u7ecf\\u9a8c\",\"view_level\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:14:59', '2017-12-01 09:14:59'), ('118', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:14:59', '2017-12-01 09:14:59'), ('119', '1', 'admin/teacher/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:01', '2017-12-01 09:15:01'), ('120', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:02', '2017-12-01 09:15:02'), ('121', '1', 'admin/teacher/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:04', '2017-12-01 09:15:04'), ('122', '1', 'admin/teacher/3', 'PUT', '::1', '{\"name\":\"\\u4e07\\u8001\\u5e08\",\"position\":\"\\u5f71\\u89c6\\u7f16\\u5bfc\\u8d44\\u6df1\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e0a\\u6d77\\u620f\\u5267\\u5b66\\u9662\",\"description\":\"\\u8d44\\u6df1\\u7535\\u89c6\\u680f\\u76ee\\u5bfc\\u6f14\",\"view_level\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:15:11', '2017-12-01 09:15:11'), ('123', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:15:11', '2017-12-01 09:15:11'), ('124', '1', 'admin/teacher/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:13', '2017-12-01 09:15:13'), ('125', '1', 'admin/teacher/4', 'PUT', '::1', '{\"name\":\"\\u738b\\u8001\\u5e08\",\"position\":\"\\u64ad\\u97f3\\u4e0e\\u4e3b\\u6301\\u8d44\\u6df1\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e2d\\u56fd\\u4f20\\u5a92\\u5927\\u5b66\",\"description\":\"\\u7535\\u89c6\\u53f0\\u8282\\u76ee\\u4e3b\\u6301\\u4eba\",\"view_level\":\"3\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:15:18', '2017-12-01 09:15:18'), ('126', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:15:18', '2017-12-01 09:15:18'), ('127', '1', 'admin/teacher/5/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:20', '2017-12-01 09:15:20'), ('128', '1', 'admin/teacher/5', 'PUT', '::1', '{\"name\":\"\\u5b59\\u8001\\u5e08\",\"position\":\"\\u8868\\u6f14\\u4e0e\\u53f0\\u8bcd\\u8bb2\\u5e08\",\"title\":\"\\u4e91\\u5357\\u827a\\u672f\\u5b66\\u9662\\u827a\\u672f\\u7855\\u58eb\",\"description\":\"\\u5927\\u5b66\\u8bb2\\u5e08\\uff0c\\u5177\\u6709\\u4e30\\u5bcc\\u821e\\u53f0\\u6f14\\u51fa\\u7ecf\\u9a8c\\u53ca\\u6559\\u5b66\\u7ecf\\u9a8c\",\"view_level\":\"3\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:15:24', '2017-12-01 09:15:24'), ('129', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:15:24', '2017-12-01 09:15:24'), ('130', '1', 'admin/teacher/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-01 09:15:26', '2017-12-01 09:15:26'), ('131', '1', 'admin/teacher/6', 'PUT', '::1', '{\"name\":\"\\u9093\\u8001\\u5e08\",\"position\":\"\\u8d44\\u6df1\\u8868\\u6f14\\u8bb2\\u5e08\",\"title\":\"\\u6bd5\\u4e1a\\u4e8e\\u4e0a\\u6d77\\u620f\\u5267\\u5b66\\u9662\\u8868\\u6f14\\u7cfb\",\"description\":null,\"view_level\":\"0\",\"status\":\"\\u542f\\u7528\",\"_token\":\"CmRZxusHCzL2rJvywa2eH9fZ5wlge9ZOkAMPwB3e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2017-12-01 09:15:30', '2017-12-01 09:15:30'), ('132', '1', 'admin/teacher', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-12-01 09:15:31', '2017-12-01 09:15:31'), ('133', '1', 'admin', 'GET', '::1', '[]', '2017-12-03 13:26:01', '2017-12-03 13:26:01'), ('134', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 13:26:09', '2017-12-03 13:26:09'), ('135', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 13:35:50', '2017-12-03 13:35:50'), ('136', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 13:46:53', '2017-12-03 13:46:53'), ('137', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-03 13:46:58', '2017-12-03 13:46:58'), ('138', '1', 'admin/teacher/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 13:47:00', '2017-12-03 13:47:00'), ('139', '1', 'admin/teacher', 'POST', '::1', '{\"name\":\"1\",\"position\":\"1\",\"title\":\"1\",\"description\":\"1\",\"view_level\":\"0\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/teacher\"}', '2017-12-03 13:47:17', '2017-12-03 13:47:17'), ('140', '1', 'admin/teacher', 'GET', '::1', '[]', '2017-12-03 13:47:17', '2017-12-03 13:47:17'), ('141', '1', 'admin/teacher/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 13:47:23', '2017-12-03 13:47:23'), ('142', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:05:39', '2017-12-03 14:05:39'), ('143', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:19:26', '2017-12-03 14:19:26'), ('144', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"11\",\"title\":\"\\u5b66\\u5458\\u98ce\\u91c7\",\"icon\":\"fa-child\",\"uri\":\"student\",\"roles\":[\"1\",\"2\",null],\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\"}', '2017-12-03 14:21:14', '2017-12-03 14:21:14'), ('145', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-12-03 14:21:14', '2017-12-03 14:21:14'), ('146', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-12-03 14:21:21', '2017-12-03 14:21:21'), ('147', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:21:26', '2017-12-03 14:21:26'), ('148', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:21:30', '2017-12-03 14:21:30'), ('149', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:21:32', '2017-12-03 14:21:32'), ('150', '1', 'admin/student/create', 'GET', '::1', '[]', '2017-12-03 14:24:27', '2017-12-03 14:24:27'), ('151', '1', 'admin/student/create', 'GET', '::1', '[]', '2017-12-03 14:25:16', '2017-12-03 14:25:16'), ('152', '1', 'admin/student/create', 'GET', '::1', '[]', '2017-12-03 14:26:56', '2017-12-03 14:26:56'), ('153', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:26:59', '2017-12-03 14:26:59'), ('154', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:26:59', '2017-12-03 14:26:59'), ('155', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:27:21', '2017-12-03 14:27:21'), ('156', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:28:56', '2017-12-03 14:28:56'), ('157', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:54:37', '2017-12-03 14:54:37'), ('158', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:56:07', '2017-12-03 14:56:07'), ('159', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 14:56:10', '2017-12-03 14:56:10'), ('160', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"123\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 14:56:20', '2017-12-03 14:56:20'), ('161', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:56:20', '2017-12-03 14:56:20'), ('162', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 14:56:41', '2017-12-03 14:56:41'), ('163', '1', 'admin', 'GET', '::1', '[]', '2017-12-03 15:11:40', '2017-12-03 15:11:40'), ('164', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:11:43', '2017-12-03 15:11:43'), ('165', '1', 'admin/student/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:11:46', '2017-12-03 15:11:46'), ('166', '1', 'admin/student/1', 'PUT', '::1', '{\"caption\":\"123\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:11:52', '2017-12-03 15:11:52'), ('167', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:11:52', '2017-12-03 15:11:52'), ('168', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:11:53', '2017-12-03 15:11:53'), ('169', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"2\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:01', '2017-12-03 15:12:01'), ('170', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:01', '2017-12-03 15:12:01'), ('171', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:02', '2017-12-03 15:12:02'), ('172', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"3\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:08', '2017-12-03 15:12:08'), ('173', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:09', '2017-12-03 15:12:09'), ('174', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:10', '2017-12-03 15:12:10'), ('175', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"4\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:16', '2017-12-03 15:12:16'), ('176', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:16', '2017-12-03 15:12:16'), ('177', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:17', '2017-12-03 15:12:17'), ('178', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"5\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:23', '2017-12-03 15:12:23'), ('179', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:23', '2017-12-03 15:12:23'), ('180', '1', 'admin/student/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:35', '2017-12-03 15:12:35'), ('181', '1', 'admin/student/4', 'PUT', '::1', '{\"caption\":\"4\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:40', '2017-12-03 15:12:40'), ('182', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:40', '2017-12-03 15:12:40'), ('183', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:42', '2017-12-03 15:12:42'), ('184', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"6\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:48', '2017-12-03 15:12:48'), ('185', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:48', '2017-12-03 15:12:48'), ('186', '1', 'admin/student/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-03 15:12:49', '2017-12-03 15:12:49'), ('187', '1', 'admin/student', 'POST', '::1', '{\"caption\":\"7\",\"status\":\"\\u542f\\u7528\",\"_token\":\"3mzgctomUDopdFW4OmSqBA6ibbBvNuob6qx8E10y\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/student\"}', '2017-12-03 15:12:55', '2017-12-03 15:12:55'), ('188', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-03 15:12:55', '2017-12-03 15:12:55'), ('189', '1', 'admin', 'GET', '::1', '[]', '2017-12-04 05:54:54', '2017-12-04 05:54:54'), ('190', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 05:55:06', '2017-12-04 05:55:06'), ('191', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 05:55:09', '2017-12-04 05:55:09'), ('192', '1', 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:02:59', '2017-12-04 06:02:59'), ('193', '1', 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"11\",\"title\":\"\\u6559\\u5b66\\u73af\\u5883\",\"icon\":\"fa-photo\",\"uri\":\"classroom\",\"roles\":[\"1\",\"2\",null],\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\"}', '2017-12-04 06:04:44', '2017-12-04 06:04:44'), ('194', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-12-04 06:04:44', '2017-12-04 06:04:44'), ('195', '1', 'admin/auth/menu', 'GET', '::1', '[]', '2017-12-04 06:04:46', '2017-12-04 06:04:46'), ('196', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:04:50', '2017-12-04 06:04:50'), ('197', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:04:52', '2017-12-04 06:04:52'), ('198', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"1\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:06:15', '2017-12-04 06:06:15'), ('199', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:06:15', '2017-12-04 06:06:15'), ('200', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:06:17', '2017-12-04 06:06:17'), ('201', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"2\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:06:22', '2017-12-04 06:06:22'), ('202', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:06:22', '2017-12-04 06:06:22'), ('203', '1', 'admin/classroom/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:06:40', '2017-12-04 06:06:40'), ('204', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:06:43', '2017-12-04 06:06:43'), ('205', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:08:47', '2017-12-04 06:08:47'), ('206', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:08:57', '2017-12-04 06:08:57'), ('207', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:09:01', '2017-12-04 06:09:01'), ('208', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:10:41', '2017-12-04 06:10:41'), ('209', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:10:44', '2017-12-04 06:10:44'), ('210', '1', 'admin/student', 'GET', '::1', '[]', '2017-12-04 06:10:58', '2017-12-04 06:10:58'), ('211', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:11:02', '2017-12-04 06:11:02'), ('212', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:11:03', '2017-12-04 06:11:03'), ('213', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:11:05', '2017-12-04 06:11:05'), ('214', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:12:23', '2017-12-04 06:12:23'), ('215', '1', 'admin/introduction', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:25', '2017-12-04 06:12:25'), ('216', '1', 'admin/teacher', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:27', '2017-12-04 06:12:27'), ('217', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:28', '2017-12-04 06:12:28'), ('218', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:29', '2017-12-04 06:12:29'), ('219', '1', 'admin/student', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:39', '2017-12-04 06:12:39'), ('220', '1', 'admin/classroom', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:52', '2017-12-04 06:12:52'), ('221', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:12:54', '2017-12-04 06:12:54'), ('222', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"3\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:13:00', '2017-12-04 06:13:00'), ('223', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:13:00', '2017-12-04 06:13:00'), ('224', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:13:01', '2017-12-04 06:13:01'), ('225', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"4\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:13:08', '2017-12-04 06:13:08'), ('226', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:13:08', '2017-12-04 06:13:08'), ('227', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:13:09', '2017-12-04 06:13:09'), ('228', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"5\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:13:15', '2017-12-04 06:13:15'), ('229', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:13:15', '2017-12-04 06:13:15'), ('230', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:13:16', '2017-12-04 06:13:16'), ('231', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"6\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u4e1c\\u839e\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:13:22', '2017-12-04 06:13:22'), ('232', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:13:22', '2017-12-04 06:13:22'), ('233', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:24:07', '2017-12-04 06:24:07'), ('234', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"1\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:24:19', '2017-12-04 06:24:19'), ('235', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:24:19', '2017-12-04 06:24:19'), ('236', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:24:20', '2017-12-04 06:24:20'), ('237', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"2\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:24:28', '2017-12-04 06:24:28'), ('238', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:24:28', '2017-12-04 06:24:28'), ('239', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:24:29', '2017-12-04 06:24:29'), ('240', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"3\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:24:41', '2017-12-04 06:24:41'), ('241', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:24:42', '2017-12-04 06:24:42'), ('242', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:24:43', '2017-12-04 06:24:43'), ('243', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"4\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:24:52', '2017-12-04 06:24:52'), ('244', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:24:52', '2017-12-04 06:24:52'), ('245', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:24:53', '2017-12-04 06:24:53'), ('246', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"5\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:24:59', '2017-12-04 06:24:59'), ('247', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:24:59', '2017-12-04 06:24:59'), ('248', '1', 'admin/classroom/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-04 06:25:00', '2017-12-04 06:25:00'), ('249', '1', 'admin/classroom', 'POST', '::1', '{\"caption\":\"6\",\"status\":\"\\u542f\\u7528\",\"location\":\"\\u5e7f\\u5dde\\u6821\\u533a\",\"_token\":\"WNHbzvUlJnaL19zfz3gpwlfsnbgUcZsyrrgzISau\",\"_previous_\":\"http:\\/\\/localhost\\/admin\\/classroom\"}', '2017-12-04 06:25:10', '2017-12-04 06:25:10'), ('250', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:25:11', '2017-12-04 06:25:11'), ('251', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:25:42', '2017-12-04 06:25:42'), ('252', '1', 'admin/classroom', 'GET', '::1', '[]', '2017-12-04 06:26:24', '2017-12-04 06:26:24');
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
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null), ('1', '8', null, null), ('2', '8', null, null), ('1', '9', null, null), ('2', '9', null, null), ('1', '10', null, null), ('2', '10', null, null), ('1', '11', null, null), ('2', '11', null, null), ('1', '12', null, null), ('2', '12', null, null), ('1', '13', null, null), ('2', '13', null, null), ('1', '14', null, null), ('2', '14', null, null), ('1', '15', null, null), ('2', '15', null, null);
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
--  Table structure for `classroom`
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `image` text,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `classroom`
-- ----------------------------
BEGIN;
INSERT INTO `classroom` VALUES ('1', '1', 'images/classrooms/7346c9d5324571083622c9d672b0414c.png', '东莞校区', '启用', '2017-12-04 06:06:15', '2017-12-04 06:06:15'), ('2', '2', 'images/classrooms/7ae0bb43eb170d74a6ec3e305ec207be.png', '东莞校区', '启用', '2017-12-04 06:06:22', '2017-12-04 06:06:22'), ('3', '3', 'images/classrooms/ed35e88060f2d7c678b5326fab001487.png', '东莞校区', '启用', '2017-12-04 06:13:00', '2017-12-04 06:13:00'), ('4', '4', 'images/classrooms/a0d32fcbce2c97ef10702f95a59ab53e.png', '东莞校区', '启用', '2017-12-04 06:13:08', '2017-12-04 06:13:08'), ('5', '5', 'images/classrooms/5e74716f3e6c3de7ad43352624a2fd8b.png', '东莞校区', '启用', '2017-12-04 06:13:15', '2017-12-04 06:13:15'), ('6', '6', 'images/classrooms/8aeb94249d943afe4ae4fb5bb5c18c85.png', '东莞校区', '启用', '2017-12-04 06:13:22', '2017-12-04 06:13:22'), ('7', '1', 'images/classrooms/276821a1ba79b866b297a57820b2ac0e.png', '广州校区', '启用', '2017-12-04 06:24:19', '2017-12-04 06:24:19'), ('8', '2', 'images/classrooms/12f73734f9e2061e8b8dc49c72b0a8ab.png', '广州校区', '启用', '2017-12-04 06:24:28', '2017-12-04 06:24:28'), ('9', '3', 'images/classrooms/f7c36f15ce82174f833c90db08b4f8b4.png', '广州校区', '启用', '2017-12-04 06:24:41', '2017-12-04 06:24:41'), ('10', '4', 'images/classrooms/9561336a637cee0bc8ff75800b3e7379.png', '广州校区', '启用', '2017-12-04 06:24:52', '2017-12-04 06:24:52'), ('11', '5', 'images/classrooms/212f2937cf5edb099624b574885eb273.png', '广州校区', '启用', '2017-12-04 06:24:59', '2017-12-04 06:24:59'), ('12', '6', 'images/classrooms/f6951e9aa0b86dafb57d422e5dfb698f.png', '广州校区', '启用', '2017-12-04 06:25:11', '2017-12-04 06:25:11');
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
--  Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `image` text,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `students`
-- ----------------------------
BEGIN;
INSERT INTO `students` VALUES ('1', '1', 'images/students/d4f4f67a9b3a29609d87e333dc3362d0.png', '启用', '2017-12-03 14:56:20', '2017-12-03 15:11:52'), ('2', '2', 'images/students/a7afe670a936829e7f094ce7f7c993c5.png', '启用', '2017-12-03 15:12:01', '2017-12-03 15:12:01'), ('3', '3', 'images/students/5531de089154cbf7a4256362df51dc8c.png', '启用', '2017-12-03 15:12:08', '2017-12-03 15:12:08'), ('4', '4', 'images/students/255da03782c5a013871e9e1f12218ac3.png', '启用', '2017-12-03 15:12:16', '2017-12-03 15:12:40'), ('5', '5', 'images/students/b74972211558a7d5acfe37abdd89c2a6.png', '启用', '2017-12-03 15:12:23', '2017-12-03 15:12:23'), ('6', '6', 'images/students/8c9165f99f166884921b2f289ee127ac.png', '启用', '2017-12-03 15:12:48', '2017-12-03 15:12:48'), ('7', '7', 'images/students/90b04f987fecc88da6e198b4a21fedb4.png', '启用', '2017-12-03 15:12:55', '2017-12-03 15:12:55');
COMMIT;

-- ----------------------------
--  Table structure for `teachers`
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar` text,
  `position` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `view_level` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `teachers`
-- ----------------------------
BEGIN;
INSERT INTO `teachers` VALUES ('1', '汤老师', 'images/teachers/516a69060c2dd5abea1a09163ca8275a.png', '校长', '中山大学中文系硕士', '自2009年开始从事艺术教育工作，多年积累了丰富的艺术升学资源及培训机构运营经验，目前为止已培养出二千余学员考取国内外各大艺术院校。', '1', '启用', '2017-12-01 02:42:26', '2017-12-01 09:14:45'), ('2', '黄老师', 'images/teachers/cca6c21ad8a39a24dcd4b354ef56b35d.png', '教学主管', '毕业于中央戏剧学院', '有丰富的传媒艺考教学管理经验', '2', '启用', '2017-12-01 06:36:32', '2017-12-01 09:14:59'), ('3', '万老师', 'images/teachers/c347060a50e8b919385c6e2998a61f2b.png', '影视编导资深讲师', '毕业于上海戏剧学院', '资深电视栏目导演', '2', '启用', '2017-12-01 06:37:02', '2017-12-01 09:15:11'), ('4', '王老师', 'images/teachers/23306b9613cd0c6dd2feaeed5273ac2d.png', '播音与主持资深讲师', '毕业于中国传媒大学', '电视台节目主持人', '3', '启用', '2017-12-01 08:26:09', '2017-12-01 09:15:18'), ('5', '孙老师', 'images/teachers/1e9f1e35766cb18d659e86c0dd93930e.png', '表演与台词讲师', '云南艺术学院艺术硕士', '大学讲师，具有丰富舞台演出经验及教学经验', '3', '启用', '2017-12-01 08:26:59', '2017-12-01 09:15:24'), ('6', '邓老师', 'images/teachers/d14341a741b66b130f86bf81b81a0ac9.png', '资深表演讲师', '毕业于上海戏剧学院表演系', null, '0', '启用', '2017-12-01 08:27:36', '2017-12-01 09:15:30');
COMMIT;

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
