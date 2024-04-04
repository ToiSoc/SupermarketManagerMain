show databases;

create database `smt_home`;

use smt_home;

drop database `supermaket_home`;


DROP TABLE IF EXISTS `ckin`;
CREATE TABLE IF NOT EXISTS `ckin` (
  `inid` int(7) NOT NULL AUTO_INCREMENT,
  `proid` int(7) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) unsigned DEFAULT 100,
  `indate` date DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`inid`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `ckin`;
INSERT INTO `ckin` (`inid`, `proid`, `pname`, `num`, `indate`, `marks`) VALUES
	(121, 1260300, '苹果', 100, '2019-04-27', NULL),
	(122, 1260300, '苹果', 10000, '2019-04-27', NULL),
	(123, 5287527, '瓜子', 100, '2019-05-01', NULL),
	(124, 5287527, '瓜子', 100, '2019-05-02', NULL),
	(125, 8556504, '绿萝', 100, '2019-05-02', NULL),
	(126, 241677, '怡宝矿泉水', 100, '2019-05-12', NULL),
	(127, 241677, '怡宝矿泉水', 20, '2019-05-12', NULL),
	(128, 241677, '怡宝矿泉水', 100, '2019-05-12', NULL),
	(129, 241677, '怡宝矿泉水', 130, '2019-06-10', NULL),
	(130, 241677, '怡宝矿泉水', 11, '2019-06-10', NULL);



DROP TABLE IF EXISTS `ckretire`;
CREATE TABLE IF NOT EXISTS `ckretire` (
  `inid` int(8) NOT NULL AUTO_INCREMENT,
  `proid` int(8) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) DEFAULT NULL,
  `indate` date DEFAULT NULL,
  `retdate` date DEFAULT NULL,
  `reason` varchar(1000) DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`inid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



DELETE FROM `ckretire`;
INSERT INTO `ckretire` (`inid`, `proid`, `pname`, `num`, `indate`, `retdate`, `reason`, `marks`) VALUES
	(121, 1260300, '苹果', 100, NULL, '2020-09-18', NULL, ''),
	(123, 5287527, '瓜子', 100, NULL, '2019-05-11', NULL, '');



DROP TABLE IF EXISTS `cusretire`;
CREATE TABLE IF NOT EXISTS `cusretire` (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) DEFAULT NULL,
  `num` int(25) DEFAULT NULL,
  `total` double(25,3) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `retdate` date DEFAULT NULL,
  `reason` varchar(1000) DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



DELETE FROM `cusretire`;
INSERT INTO `cusretire` (`saleid`, `proid`, `pname`, `price`, `num`, `total`, `saledate`, `retdate`, `reason`, `marks`) VALUES
	(3718799, 1260300, '苹果', NULL, 10, NULL, NULL, '2019-04-12', NULL, ''),
	(5595579, 1260300, '苹果', NULL, 6, NULL, NULL, '2019-04-19', NULL, '');



DROP TABLE IF EXISTS `custom`;
CREATE TABLE IF NOT EXISTS `custom` (
  `cusid` int(25) NOT NULL,
  `cusname` varchar(25) NOT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `person` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `emali` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



DELETE FROM `custom`;
INSERT INTO `custom` (`cusid`, `cusname`, `tel`, `person`, `address`, `emali`) VALUES
	(5, '张三', '13345678910', '张三', '北京市', '123@qq.com');




DROP TABLE IF EXISTS `kcxx`;
CREATE TABLE IF NOT EXISTS `kcxx` (
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `num` int(25) DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `kcxx`;
INSERT INTO `kcxx` (`proid`, `pname`, `num`, `marks`) VALUES
	(241677, '怡宝矿泉水', 270, '11'),
	(1260300, '苹果', 13, '张三'),
	(5287527, '瓜子', 100, ''),
	(8556504, '绿萝', 100, NULL);



DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `managerid` varchar(25) NOT NULL,
  `managername` varchar(25) NOT NULL,
  `card` varchar(25) NOT NULL,
  `sex` varchar(25) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `stafftype` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  PRIMARY KEY (`managerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



DELETE FROM `manager`;
INSERT INTO `manager` (`managerid`, `managername`, `card`, `sex`, `tel`, `stafftype`, `pwd`) VALUES
	('999', '管理员', '11111111', '男', '123456789', '管理员', 'admin');



DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `proid` int(25) NOT NULL AUTO_INCREMENT,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) NOT NULL,
  `inprice` double(25,3) DEFAULT NULL,
  `prodate` date DEFAULT NULL,
  `reledate` date DEFAULT NULL,
  `supname` varchar(25) DEFAULT NULL,
  `protype` varchar(25) DEFAULT NULL,
  `unit` varchar(25) DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=8556505 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `product`;
INSERT INTO `product` (`proid`, `pname`, `price`, `inprice`, `prodate`, `reledate`, `supname`, `protype`, `unit`, `marks`) VALUES
	(241677, '怡宝矿泉水', 2.000, 1.000, '2019-01-01', '2019-05-08', '怡宝', '矿泉水', '瓶', ''),
	(1260300, '苹果', 23.000, 17.000, '2019-01-01', '2019-11-15', '百果园', '水果', '斤', ''),
	(5287527, '瓜子', 5.000, 3.000, '2019-04-05', '2019-07-26', '恰恰', '零食', '袋', ''),
	(8556504, '绿萝', 12.000, 7.000, '2019-05-17', '2019-05-25', '花鸟市场', '绿植盆栽', '盆', '');



DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `saleid` int(25) NOT NULL,
  `proid` int(25) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `price` double(25,3) DEFAULT NULL,
  `num` int(25) DEFAULT NULL,
  `total` varchar(25) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `cusname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cusid` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `marks` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `sale`;
INSERT INTO `sale` (`saleid`, `proid`, `pname`, `price`, `num`, `total`, `saledate`, `cusname`, `cusid`, `marks`) VALUES
	(30579, 1260300, '苹果', 23.000, 600, '13800.0', NULL, '5', '5', ''),
	(3007323, 241677, '怡宝矿泉水', 2.000, 69, '138.0', NULL, 'hbh', '20', ''),
	(3718799, 1260300, '苹果', 23.000, 5, '115.0', NULL, '10', '324', '1'),
	(5595579, 1260300, '苹果', 23.000, 12, '276.0', NULL, '10', '2312', ''),
	(6556276, 1260300, '苹果', 23.000, 9400, '216200.0', NULL, '张三', '5', '张三'),
	(8749456, 241677, '怡宝矿泉水', 2.000, 12, '24.0', NULL, 'hbh', '134', ''),
	(9092816, 241677, '怡宝矿泉水', 2.000, 20, '40.0', NULL, 'hbh', '12', ''),
	(9841755, 1260300, '苹果', 23.000, 2, '46.0', NULL, '1', '2', '');



DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` varchar(25) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `card` varchar(25) NOT NULL,
  `sex` varchar(25) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `stafftype` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `staff`;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`staffid`, `staffname`, `card`, `sex`, `tel`, `stafftype`, `pwd`) VALUES
	('001', '张三', '111', '男', '11111', '普通员工', '123456'),
	('002', '李四', '222', '男', '22222', '普通员工', '123456'),
	('003', '王五', '333', '男', '33333', '普通员工', '123456'),
	('004', '赵六', '444', '男', '444444', '普通员工', '123456');



DROP TABLE IF EXISTS `supply`;
CREATE TABLE IF NOT EXISTS `supply` (
  `supid` int(25) NOT NULL AUTO_INCREMENT,
  `suppname` varchar(25) NOT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `person` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `emali` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `supply`;

INSERT INTO `supply` (`supid`, `suppname`, `tel`, `person`, `address`, `emali`) VALUES
	(16, '百果园', '13517064592', '某总', '吉安永新', '3078343267@qq.com'),
	(17, '恰恰', '13517064592', '贺天', '吉安永新', '3078343267@qq.com'),
	(18, '花鸟市场', NULL, NULL, NULL, NULL),
	(19, '怡宝', NULL, NULL, NULL, NULL);



DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `protypeid` int(25) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(25) NOT NULL,
  PRIMARY KEY (`protypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DELETE FROM `type`;
INSERT INTO `type` (`protypeid`, `typename`) VALUES
	(26, '水果'),
	(27, '零食'),
	(28, '绿植盆栽'),
	(29, '矿泉水');



DROP TRIGGER IF EXISTS `tg1`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `tg1` AFTER INSERT ON `product` FOR EACH ROW begin 
set @flag3=(SELECT count(*)  from ckin where proid=NEW.proid);
if(@flag3=0)
THEN
INSERT into ckin(proid,pname,indate) VALUES (NEW.proid,NEW.pname,now());
end if;

set @flag4=(SELECT count(*)  from kcxx where proid=NEW.proid);
if(@flag4=0)
THEN
INSERT INTO kcxx(proid,pname,num) VALUES (NEW.proid,NEW.pname,100);
end if;

set @flag=(select COUNT(*) FROM type where typename=NEW.protype);
if(@flag=0)
then
INSERT INTO type(typename) VALUES(NEW.protype);
end if;

set @flag2=(SELECT count(*)  from supply where suppname=NEW.supname);
if(@flag2=0)
THEN
INSERT INTO supply(suppname) VALUES (NEW.supname);
end if;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;



DROP TRIGGER IF EXISTS `th`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `th` AFTER INSERT ON `ckretire` FOR EACH ROW BEGIN
UPDATE kcxx set num=num-new.num where proid=new.proid;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;



DROP TRIGGER IF EXISTS `xgjhxx`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `xgjhxx` AFTER UPDATE ON `ckin` FOR EACH ROW begin
UPDATE kcxx set num=num+new.num-old.num where proid=new.proid;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;



DROP TRIGGER IF EXISTS `xglb`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `xglb` AFTER UPDATE ON `type` FOR EACH ROW begin
update product set protype=new.typename where protype=old.typename;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;



DROP TRIGGER IF EXISTS `xgth`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `xgth` AFTER UPDATE ON `ckretire` FOR EACH ROW BEGIN
update kcxx set num=num+old.num-new.num where proid=new.proid;
end//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


