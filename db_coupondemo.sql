/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.13-MariaDB : Database - db_coupondemo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `db_coupondemo`;

/*Table structure for table `tbl_coupon_discount` */

DROP TABLE IF EXISTS `tbl_coupon_discount`;

CREATE TABLE `tbl_coupon_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` varchar(11) NOT NULL DEFAULT '',
  `fixed_value` varchar(10) NOT NULL DEFAULT '0.00',
  `percent_value` varchar(10) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coupon_discount` */

/*Table structure for table `tbl_coupons` */

DROP TABLE IF EXISTS `tbl_coupons`;

CREATE TABLE `tbl_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(50) NOT NULL DEFAULT '',
  `descrp` varchar(150) NOT NULL DEFAULT '',
  `discount_type` varchar(1) NOT NULL DEFAULT '1',
  `start_date` varchar(30) NOT NULL DEFAULT '',
  `end_date` varchar(30) NOT NULL DEFAULT '',
  `min_cart_amount` varchar(30) NOT NULL DEFAULT '',
  `min_cart_item` varchar(5) NOT NULL DEFAULT '',
  `fixed_value` varchar(10) NOT NULL DEFAULT '',
  `percent_value` varchar(10) NOT NULL DEFAULT '',
  `created` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_coupons` */

insert  into `tbl_coupons`(`id`,`coupon_code`,`descrp`,`discount_type`,`start_date`,`end_date`,`min_cart_amount`,`min_cart_item`,`fixed_value`,`percent_value`,`created`,`status`) values 
(1,'FIXED10','10 dollar discount on total amount more than 50 dollars','1','','','50','1','10','0','1608192720',1),
(2,'PERCENT10','10 DOLLAR DISCOUNT ON TOTAL AMOUNT MORE THAN 100 DOLLARS','2','','','100','2','0','10','1608193129',1),
(3,'MIXED10','10 DOLLAR OR 10% DISCOUNT ON TOTAL AMOUNT MORE THAN 200 DOLLARS','3','','','200','3','0','10','1608193198',1),
(4,'REJECTED10','10 DOLLAR DISCOUNT ON TOTAL AMOUNT MORE THAN 1000 DOLLARS','3','','','1000','','0','10','1608193233',1);

/*Table structure for table `tbl_discount_type` */

DROP TABLE IF EXISTS `tbl_discount_type`;

CREATE TABLE `tbl_discount_type` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `discount_type` varchar(150) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_discount_type` */

insert  into `tbl_discount_type`(`id`,`discount_type`,`status`) values 
(1,'FIXED AMOUNT',1),
(2,'PERCENTAGE VALUE',1),
(3,'MIXED',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
