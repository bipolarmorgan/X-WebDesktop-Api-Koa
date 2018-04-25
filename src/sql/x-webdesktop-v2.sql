-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-25 15:30:39
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x-webdesktop-v2`
--
CREATE DATABASE IF NOT EXISTS `x-webdesktop-v2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `x-webdesktop-v2`;

-- --------------------------------------------------------

--
-- 表的结构 `platform_apps`
--

DROP TABLE IF EXISTS `platform_apps`;
CREATE TABLE `platform_apps` (
  `id` int(11) NOT NULL COMMENT '应用ID',
  `name` varchar(32) NOT NULL COMMENT '应用名称',
  `title` varchar(32) NOT NULL COMMENT '应用标题',
  `description` varchar(500) NOT NULL COMMENT '应用描述信息',
  `type` tinyint(1) NOT NULL COMMENT '类别：0默认应用 1普通应用',
  `user_type` tinyint(1) NOT NULL COMMENT '用户类别：0管理员 1普通用户',
  `publish` tinyint(1) NOT NULL COMMENT '状态：0 已导入未发布 1 已导入并发布',
  `category` varchar(200) NOT NULL COMMENT '分类ID：多个分类用英文逗号分割',
  `config` varchar(1000) NOT NULL COMMENT '应用默认配置信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用市场';

--
-- 转存表中的数据 `platform_apps`
--

INSERT INTO `platform_apps` (`id`, `name`, `title`, `description`, `type`, `user_type`, `publish`, `category`, `config`, `create_time`, `update_time`) VALUES
(1, 'AccountManagement', '账号管理', '用于管理系统的账号。', 0, 0, 1, '', '{"app":{"id":"","name":"AccountManagement","icon":"./static/apps/AccountManagement/logo.png","title":"账号管理","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-10 10:59:14', '2017-11-14 07:19:57'),
(2, 'ApplicationMarket', '应用市场', '搜罗所有应用。', 0, 1, 1, '', '{"app":{"id":"","name":"ApplicationMarket","icon":"./static/apps/ApplicationMarket/logo.png","title":"应用市场","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-10 10:59:51', '2017-11-14 07:20:04'),
(3, 'PersonalCenter', '个人中心', '个人中心包含用户的个人信息。', 0, 1, 1, '', '{"app":{"id":"","name":"PersonalCenter","icon":"./static/apps/PersonalCenter/logo.png","title":"个人中心","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-10 11:00:52', '2017-11-14 07:20:44'),
(4, 'SystemSetting', '系统设置', '平台系统设置。', 0, 1, 0, '', '{"app":{"id":"","name":"SystemSetting","icon":"./static/app.png","title":"系统设置","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-21 17:33:32', '2017-11-14 07:20:56'),
(5, 'TestInstall', '测试安装卸载', '测试安装卸载功能。', 0, 1, 0, '', '{"app":{"id":"","name":"TestInstall","icon":"./static/app.png","title":"测试安装卸载","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-21 17:33:32', '2017-11-14 07:20:56');

-- --------------------------------------------------------

--
-- 表的结构 `platform_apps_category`
--

DROP TABLE IF EXISTS `platform_apps_category`;
CREATE TABLE `platform_apps_category` (
  `id` int(11) NOT NULL COMMENT '应用分类ID',
  `name` varchar(32) NOT NULL COMMENT '应用分类名称',
  `title` varchar(32) NOT NULL COMMENT '应用分类标题',
  `description` varchar(500) NOT NULL COMMENT '应用分类描述',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '分类父ID：根分类ID为0',
  `icon` varchar(32) NOT NULL COMMENT '应用分类图标',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用分类';

--
-- 转存表中的数据 `platform_apps_category`
--

INSERT INTO `platform_apps_category` (`id`, `name`, `title`, `description`, `parent`, `icon`, `create_time`, `update_time`) VALUES
(1, 'all', '全部软件', '全部软件', 0, 'android-apps', '2018-04-23 00:00:00', '2018-04-23 00:00:00'),
(2, 'chat', '聊天软件', '聊天软件', 0, 'chatboxes', '2018-04-23 00:00:00', '2018-04-23 00:00:00'),
(3, 'office', '办公软件', '办公软件', 0, 'briefcase', '2018-04-23 00:00:00', '2018-04-23 00:00:00'),
(4, 'media', '影音娱乐', '影音娱乐', 0, 'music-note', '2018-04-23 00:00:00', '2018-04-23 00:00:00'),
(5, 'theme', '主题壁纸', '主题壁纸', 0, 'image', '2018-04-23 00:00:00', '2018-04-23 00:00:00'),
(6, 'other', '其他软件', '其他软件', 0, 'star', '2018-04-23 00:00:00', '2018-04-23 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `platform_config`
--

DROP TABLE IF EXISTS `platform_config`;
CREATE TABLE `platform_config` (
  `id` int(11) NOT NULL COMMENT '配置ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `config` varchar(500) NOT NULL COMMENT '平台配置信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台配置信息';

--
-- 转存表中的数据 `platform_config`
--

INSERT INTO `platform_config` (`id`, `user_id`, `config`, `create_time`, `update_time`) VALUES
(1, 1, '{"themes":{"name":"webDesktop","config":{}}}', '2017-07-13 16:10:58', '2017-07-13 16:10:58');

-- --------------------------------------------------------

--
-- 表的结构 `platform_users`
--

DROP TABLE IF EXISTS `platform_users`;
CREATE TABLE `platform_users` (
  `id` int(11) NOT NULL COMMENT '用户ID',
  `account` varchar(32) NOT NULL COMMENT '账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `type` tinyint(1) NOT NULL COMMENT '类型：0管理员 1普通用户',
  `status` tinyint(1) NOT NULL COMMENT '状态：0停用 1启用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `platform_users`
--

INSERT INTO `platform_users` (`id`, `account`, `password`, `name`, `type`, `status`, `create_time`, `update_time`) VALUES
(1, 'admin', 'ED5wLgc3Mnw=', '管理员', 0, 1, '2017-07-20 09:18:04', '2017-11-16 09:26:58');

-- --------------------------------------------------------

--
-- 表的结构 `platform_user_apps`
--

DROP TABLE IF EXISTS `platform_user_apps`;
CREATE TABLE `platform_user_apps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `app_id` int(11) NOT NULL COMMENT '应用ID',
  `app_name` varchar(32) NOT NULL COMMENT '应用名称',
  `app_title` varchar(32) NOT NULL COMMENT '应用标题',
  `app_description` varchar(500) NOT NULL COMMENT '应用描述信息',
  `app_type` tinyint(1) NOT NULL COMMENT '类别：0默认应用 1普通应用',
  `app_publish` tinyint(1) NOT NULL COMMENT '应用状态: 0 已导入未发布 1 已导入并发布',
  `app_category` varchar(200) NOT NULL COMMENT '分类ID：多个分类用英文逗号分割',
  `user_type` tinyint(1) NOT NULL COMMENT '用户类别：0 管理员 1 普通用户',
  `status` tinyint(1) NOT NULL COMMENT '状态：0 停用 1 启用',
  `private` tinyint(1) NOT NULL COMMENT '私有应用：0 否 1 是',
  `config` varchar(1000) NOT NULL COMMENT '应用配置信息',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户已安装应用信息表';

--
-- 转存表中的数据 `platform_user_apps`
--

INSERT INTO `platform_user_apps` (`id`, `user_id`, `app_id`, `app_name`, `app_title`, `app_description`, `app_type`, `app_publish`, `app_category`, `user_type`, `status`, `private`, `config`, `create_time`, `update_time`) VALUES
(1, 1, 1, 'AccountManagement', '账号管理', '用于管理系统的账号。', 0, 1, '', 0, 1, 0, '{"app":{"id":"","name":"AccountManagement","icon":"./static/apps/AccountManagement/logo.png","title":"账号管理","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-14 17:05:39', '2017-11-13 08:56:34'),
(2, 1, 2, 'ApplicationMarket', '应用市场', '搜罗所有应用。', 0, 1, '', 0, 1, 0, '{"app":{"id":"","name":"ApplicationMarket","icon":"./static/apps/ApplicationMarket/logo.png","title":"应用市场","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-14 17:06:06', '2017-11-13 08:56:47'),
(3, 1, 3, 'PersonalCenter', '个人中心', '个人中心包含用户的个人信息。', 0, 1, '', 0, 1, 0, '{"app":{"id":"","name":"PersonalCenter","icon":"./static/apps/PersonalCenter/logo.png","title":"个人中心","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2017-07-14 17:09:19', '2017-11-13 08:58:08'),
(4, 1, 4, 'SystemSetting', '系统设置', '平台系统设置。', 0, 0, '', 1, 1, 0, '{"app":{"id":"","name":"SystemSetting","icon":"./static/app.png","title":"系统设置","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2018-04-24 14:50:23', '2018-04-24 14:50:23'),
(6, 1, 5, 'TestInstall', '测试安装卸载', '测试安装卸载功能。', 0, 0, '', 1, 1, 0, '{"app":{"id":"","name":"TestInstall","icon":"./static/app.png","title":"测试安装卸载","x":0,"y":0,"index":""},"desktopIcon":{"style":{"left":"","top":""}},"window":{"size":"custom","status":"close","zIndex":600,"type":"modal","enableResize":["custom","small","min","max","middle","reset","close"],"style":{"width":"1000px","height":"800px","left":"calc(50% - 500px)","top":"calc(50% - 400px)"}},"taskBar":{"isPinned":true},"install":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}},"uninstall":{"window":{"size":"custom","status":"close","type":"modal","enableResize":["custom","close"],"style":{"width":"400px","height":"300px","left":"calc(50% - 200px)","top":"calc(50% - 150px)"}},"taskBar":{"isPinned":false}}}', '2018-04-25 15:29:31', '2018-04-25 15:29:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `platform_apps`
--
ALTER TABLE `platform_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_apps_category`
--
ALTER TABLE `platform_apps_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_config`
--
ALTER TABLE `platform_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_users`
--
ALTER TABLE `platform_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_user_apps`
--
ALTER TABLE `platform_user_apps`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `platform_apps`
--
ALTER TABLE `platform_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '应用ID', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `platform_apps_category`
--
ALTER TABLE `platform_apps_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '应用分类ID', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `platform_config`
--
ALTER TABLE `platform_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `platform_users`
--
ALTER TABLE `platform_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `platform_user_apps`
--
ALTER TABLE `platform_user_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
