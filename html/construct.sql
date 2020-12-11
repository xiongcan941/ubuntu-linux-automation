-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-03-26  
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- 数据库： `member`
--
CREATE DATABASE IF NOT EXISTS `member` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `member`;
 
-- --------------------------------------------------------
 
--
-- 表的结构 `member`
--
-- 创建时间： 2019-03-25  
--
 
CREATE TABLE `member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `truename` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `authority` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
--
-- 表的关系 `member`:
--
 
--
-- 转存表中的数据 `member`
--
 
INSERT INTO `member` (`id`, `username`, `password`, `question`, `answer`, `truename`, `sex`, `address`, `tel`, `qq`, `email`, `authority`) VALUES
(8, 'admin', '123', '2', '清华大学湖心分校', '管理员', '男', '白银市', '13899000099', '55555', 'admin@11.com', '0'),
(9, 'zhang1', '234', '1', '平川一中', '张得熊', '男', '平川区', '13800000000', '12345', 'zhang@qq.com', '0');
 
--
-- 转储表的索引
--
 
--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);
 
--
-- 在导出的表使用AUTO_INCREMENT
--
 
--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
