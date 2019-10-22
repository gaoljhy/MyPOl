

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 shop.shop_admin 结构
DROP TABLE IF EXISTS `shop_admin`;
CREATE TABLE IF NOT EXISTS `shop_admin` (
  `adminid` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `userpwd` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `tel` varchar(45) default NULL,
  `usertype` int(11) default NULL,
  `lastlogindate` datetime default NULL,
  `createdate` datetime default NULL,
  `lastloginip` varchar(45) default NULL,
  `logincount` int(11) default NULL,
  `adminqx` mediumtext,
  PRIMARY KEY  (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_admin 的数据：1 rows
DELETE FROM `shop_admin`;
/*!40000 ALTER TABLE `shop_admin` DISABLE KEYS */;
INSERT INTO `shop_admin` (`adminid`, `username`, `userpwd`, `email`, `tel`, `usertype`, `lastlogindate`, `createdate`, `lastloginip`, `logincount`, `adminqx`) VALUES
	(1, 'admin', '7fef6171469e80d32c0559f88b377245', '', '', 2, '2017-08-15 10:36:45', '2017-08-15 10:36:45', '', 0, '');
/*!40000 ALTER TABLE `shop_admin` ENABLE KEYS */;

-- 导出  表 shop.shop_favorite 结构
DROP TABLE IF EXISTS `shop_favorite`;
CREATE TABLE IF NOT EXISTS `shop_favorite` (
  `fid` int(11) NOT NULL auto_increment,
  `uid` int(11) default '0',
  `productid` int(11) default '0',
  `productxml` mediumtext,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_favorite 的数据：0 rows
DELETE FROM `shop_favorite`;
/*!40000 ALTER TABLE `shop_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_favorite` ENABLE KEYS */;

-- 导出  表 shop.shop_link 结构
DROP TABLE IF EXISTS `shop_link`;
CREATE TABLE IF NOT EXISTS `shop_link` (
  `linkid` int(11) NOT NULL auto_increment,
  `linkname` varchar(45) default '0',
  `linkurl` varchar(200) default '0',
  `includepic` varchar(200) default '0',
  `possymbol` varchar(45) default '0',
  `createtime` datetime default NULL,
  `orderno` int(11) default '0',
  PRIMARY KEY  (`linkid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_link 的数据：3 rows
DELETE FROM `shop_link`;
/*!40000 ALTER TABLE `shop_link` DISABLE KEYS */;
INSERT INTO `shop_link` (`linkid`, `linkname`, `linkurl`, `includepic`, `possymbol`, `createtime`, `orderno`) VALUES
	(4, 'first！', 'http://xxx.com', '/vshop/images/b1.jpg', '首页幻灯片', '2017-09-10 20:27:04', 3),
	(5, 'secondry', 'http://xxx.com', '/vshop/images/b2.jpg', '首页幻灯片', '2017-09-10 20:27:20', 6),
	(6, 'three', 'http://xxx.com', '/vshop/images/b3.jpg', '首页幻灯片', '2017-09-10 20:27:34', 9);
/*!40000 ALTER TABLE `shop_link` ENABLE KEYS */;

-- 导出  表 shop.shop_order 结构
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE IF NOT EXISTS `shop_order` (
  `orderid` int(11) NOT NULL auto_increment,
  `orderno` varchar(50) default NULL,
  `uid` int(11) default NULL,
  `customername` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `orderstatus` int(11) default NULL,
  `deliverstatus` int(11) default NULL,
  `createtime` datetime default NULL,
  `orderxml` mediumtext,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_order 的数据：6 rows
DELETE FROM `shop_order`;

/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;

-- 导出  表 shop.shop_product 结构
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE IF NOT EXISTS `shop_product` (
  `productid` int(11) NOT NULL auto_increment,
  `productname` varchar(50) default NULL,
  `includepicpath` varchar(50) default NULL,
  `productpics` mediumtext,
  `productcode` int(11) default NULL,
  `description` mediumtext,
  `specification` mediumtext,
  `salecount` int(11) default NULL,
  `hits` int(11) default NULL,
  `productcount` int(11) default NULL,
  `price` decimal(10,2) default NULL,
  `itemprice` varchar(500) default NULL,
  `categoryid` int(11) default NULL,
  `createtime` datetime default NULL,
  `iscommend` tinyint(4) default NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_product 的数据：2 rows
DELETE FROM `shop_product`;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`productid`, `productname`, `includepicpath`, `productpics`, `productcode`, `description`, `specification`, `salecount`, `hits`, `productcount`, `price`, `itemprice`, `categoryid`, `createtime`, `iscommend`) VALUES
	(18, '商城系统', '/data/image/20171127/20171127225705_5110.jpg', '/data/pic/201711/27/201711272257227766.jpg|/data/pic/201711/27/201711272257229412.jpg|/data/pic/201711/27/201711272257229672.jpg', 1, '', '基于ASP.NET平台的商城系统', 3, 0, 9999, 1280.00, '', 1, '2017-11-27 22:59:04', 1),
	(19, '产品安装套餐包', '/data/image/20171127/20171127230003_8039.jpg', '/data/pic/201711/27/201711272300123044.jpg', 1, '', '此价格包括服务器环境配置，产品安装服务', 3, 0, 9999, 1000.00, '', 2, '2017-11-27 23:00:58', 1);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;

-- 导出  表 shop.shop_productcategory 结构
DROP TABLE IF EXISTS `shop_productcategory`;
CREATE TABLE IF NOT EXISTS `shop_productcategory` (
  `categoryid` int(11) NOT NULL auto_increment,
  `categoryname` varchar(50) default NULL,
  `orderid` int(11) default NULL,
  `parentid` int(11) default NULL,
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_productcategory 的数据：3 rows
DELETE FROM `shop_productcategory`;
/*!40000 ALTER TABLE `shop_productcategory` DISABLE KEYS */;
INSERT INTO `shop_productcategory` (`categoryid`, `categoryname`, `orderid`, `parentid`) VALUES
	(1, '商城解决方案', 1, 0),
	(2, '技术升级服务', 3, 0),
	(3, '定制开发服务', 5, 0);
/*!40000 ALTER TABLE `shop_productcategory` ENABLE KEYS */;

-- 导出  表 shop.shop_user 结构
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE IF NOT EXISTS `shop_user` (
  `uid` int(11) NOT NULL auto_increment,
  `nickname` varchar(50) default NULL,
  `openid` varchar(50) default NULL,
  `fullname` varchar(50) default NULL,
  `sex` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `headpicurl` varchar(255) default NULL,
  `jbnum` int(11) default NULL,
  `jfnum` int(11) default NULL,
  `createdate` datetime default NULL,
  `fromuid` int(11) default NULL,
  `usertype` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  shop.shop_user 的数据：1 rows
DELETE FROM `shop_user`;
/*!40000 ALTER TABLE `shop_user` DISABLE KEYS */;
INSERT INTO `shop_user` (`uid`, `nickname`, `openid`, `fullname`, `sex`, `tel`, `address`, `headpicurl`, `jbnum`, `jfnum`, `createdate`, `fromuid`, `usertype`) VALUES
	(1, 'shop', 'dfdflkdlfkdlfkdl', 'shop测试', '男', '123456789', 'shop.com', '/data/image/20170909/20170909002152_1302.jpg', 0, 0, '2017-09-09 00:00:00', 0, 1);
/*!40000 ALTER TABLE `shop_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
