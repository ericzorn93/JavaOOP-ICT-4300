# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.33)
# Database: ICT4300
# Generation Time: 2014-02-23 10:33:48 +0000
# ************************************************************
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
 
 
# Dump of table COST_TABLE
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `COST_TABLE`;
 
CREATE TABLE `COST_TABLE` (
`shipper` varchar(40) NOT NULL,
`min_size` double(6,2) NOT NULL,
`max_size` double(6,2) NOT NULL,
`max_weight` double(6,2) NOT NULL,
`time_frame` double(3,0) NOT NULL,
`cost_factor` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `COST_TABLE` WRITE;
/*!40000 ALTER TABLE `COST_TABLE` DISABLE KEYS */;
 
INSERT INTO `COST_TABLE` (`shipper`, `min_size`, `max_size`, `max_weight`, `time_frame`, `cost_factor`)
VALUES
('UPS',0.00,6.00,1.00,100,0.50),
('UPS',0.00,6.00,1.00,3,1.50),
('UPS',0.00,6.00,1.00,1,2.50),
('UPS',6.00,12.00,5.00,100,3.50),
('UPS',6.00,12.00,5.00,3,4.50),
('UPS',6.00,12.00,5.00,1,5.50),
('UPS',12.00,36.00,50.00,100,4.50),
('UPS',12.00,36.00,50.00,3,5.50),
('UPS',12.00,36.00,50.00,1,6.50),
('FEDEX',0.00,6.00,1.00,100,1.50),
('FEDEX',0.00,6.00,1.00,3,1.50),
('FEDEX',0.00,6.00,1.00,1,1.50),
('FEDEX',6.00,12.00,5.00,100,3.50),
('FEDEX',6.00,12.00,5.00,3,3.50),
('FEDEX',6.00,12.00,5.00,1,3.50),
('FEDEX',12.00,36.00,50.00,100,5.50),
('FEDEX',12.00,36.00,50.00,3,5.50),
('FEDEX',12.00,36.00,50.00,1,5.50),
('SHIPIT',12.00,60.00,100.00,100,5.50),
('SHIPIT',12.00,60.00,100.00,3,10.50),
('SHIPIT',12.00,60.00,100.00,1,15.50),
('SHIPIT',60.00,120.00,2000.00,100,10.00),
('SHIPIT',60.00,120.00,2000.00,3,12.00),
('SHIPIT',60.00,120.00,2000.00,1,15.00);
 
/*!40000 ALTER TABLE `COST_TABLE` ENABLE KEYS */;
UNLOCK TABLES;
 
 
# Dump of table CUSTOMERS
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `CUSTOMERS`;
 
CREATE TABLE `CUSTOMERS` (
`customer_id` double(8,0) NOT NULL,
`credit_rating` varchar(10) DEFAULT NULL,
`last_name` varchar(40) NOT NULL,
`first_name` varchar(40) DEFAULT NULL,
`title` varchar(40) DEFAULT NULL,
`organization_id` double(8,0) DEFAULT NULL,
`street` varchar(40) DEFAULT NULL,
`city` varchar(20) DEFAULT NULL,
`state` varchar(2) DEFAULT NULL,
`zip` double(5,0) DEFAULT NULL,
`comments` varchar(80) DEFAULT NULL,
PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
 
INSERT INTO `CUSTOMERS` (`customer_id`, `credit_rating`, `last_name`, `first_name`, `title`, `organization_id`, `street`, `city`, `state`, `zip`, `comments`)
VALUES
(0,'good','Lewis','Steve','buyer',103,'1435 Halerson Way','Santa Clara','CA',10634,''),
(1,'','Kramer','Kathleen','',0,'10634 Canyon Court','Cortez','CO',80634,''),
(2,'good','Smith','Tom','salesman',100,'4653 Forest View','Salt Lake City','UT',84106,''),
(3,'bad','Jones','Becky','owner',103,'1903 Centenial way','Denver','CO',84309,''),
(4,'excellent','Taylor','Kathy','',0,'43 Baker St','Pueblo','CO',80234,''),
(5,'','Obladd','David','owner',101,'930 Main','Colorado Springs','CO',80902,''),
(6,'good','Dennis','Mike','sales rep',103,'6492 Sandy Circle','Miami','FL',63498,''),
(7,'good','Peterson','Carole','',0,'4309 Oak','Bailey','CO',80103,''),
(8,'poor','Cohn','Jackie','owner',102,'1433 Seedy Side','Moab','UT',84322,''),
(9,'good','Sampson','Gerrie','clerk',104,'1999 Market','Silverton','CO',80333,''),
(10,'good','Holbrook','Donna','president',100,'10783 Back Bay','Oakland','CA',60298,'');
 
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;
 
 
# Dump of table INVOICES
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `INVOICES`;
 
CREATE TABLE `INVOICES` (
`invoice_id` double(8,0) NOT NULL,
`customer_id` double(8,0) NOT NULL,
`invoice_date` date DEFAULT NULL,
PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `INVOICES` WRITE;
/*!40000 ALTER TABLE `INVOICES` DISABLE KEYS */;
 
INSERT INTO `INVOICES` (`invoice_id`, `customer_id`, `invoice_date`)
VALUES
(0,103,'2001-01-01'),
(1,102,'2001-01-01'),
(2,101,'2001-01-04'),
(3,100,'2001-01-10'),
(4,109,'2001-01-10'),
(5,108,'2001-01-10'),
(6,107,'2001-01-15'),
(7,106,'2001-01-15'),
(8,105,'2001-01-22'),
(9,104,'2001-01-22'),
(10,105,'2001-01-22'),
(11,103,'2001-01-22'),
(12,107,'2001-01-25'),
(13,108,'2001-01-25'),
(14,107,'2001-01-26'),
(15,101,'2001-01-30'),
(16,102,'2001-01-30'),
(17,110,'2001-01-30'),
(18,102,'2001-01-30'),
(19,110,'2001-01-30');
 
/*!40000 ALTER TABLE `INVOICES` ENABLE KEYS */;
UNLOCK TABLES;
 
 
# Dump of table ORGANIZATIONS
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `ORGANIZATIONS`;
 
CREATE TABLE `ORGANIZATIONS` (
`organization_id` double(8,0) NOT NULL,
`name` varchar(40) NOT NULL,
`tax_code` varchar(15) DEFAULT NULL,
PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `ORGANIZATIONS` WRITE;
/*!40000 ALTER TABLE `ORGANIZATIONS` DISABLE KEYS */;
 
INSERT INTO `ORGANIZATIONS` (`organization_id`, `name`, `tax_code`)
VALUES
(0,'E*Books','USG32-98654'),
(1,'Mail Order Media','USG03-23097'),
(2,'Rocky Mtn E*tainment','CO6-9346'),
(3,'Mobile Media','CO9-5454'),
(4,'Sam Auto body and Media sales','CO9-6973');
 
/*!40000 ALTER TABLE `ORGANIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;
 
 
# Dump of table SHIPMENT_ITEMS
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `SHIPMENT_ITEMS`;
 
CREATE TABLE `SHIPMENT_ITEMS` (
`item_id` double(8,0) NOT NULL,
`shipment_id` double(8,0) NOT NULL,
`quantity` double(4,0) NOT NULL,
`description` varchar(40) DEFAULT NULL,
`height` double(6,2) DEFAULT NULL,
`width` double(6,2) DEFAULT NULL,
`weight` double(6,2) DEFAULT NULL,
`ship_cost` double(7,2) DEFAULT NULL,
PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `SHIPMENT_ITEMS` WRITE;
/*!40000 ALTER TABLE `SHIPMENT_ITEMS` DISABLE KEYS */;
 
INSERT INTO `SHIPMENT_ITEMS` (`item_id`, `shipment_id`, `quantity`, `description`, `height`, `width`, `weight`, `ship_cost`)
VALUES
(0,1,3,'Boxes',6.00,6.00,10.00,2.50),
(1,1,1,'Boxes',12.00,6.00,10.00,3.50),
(2,2,1,'Boxes',12.00,12.00,20.00,4.50),
(3,3,2,'Boxes',12.00,12.00,20.00,5.50),
(4,3,1,'Boxes',6.00,12.00,30.00,6.50),
(5,3,3,'Boxes',12.00,6.00,5.00,7.50),
(6,4,2,'Boxes',12.00,12.00,5.00,8.50),
(7,5,2,'Boxes',24.00,6.00,10.00,9.50),
(8,5,1,'Boxes',24.00,6.00,5.00,14.50),
(9,6,1,'Boxes',12.00,24.00,20.00,4.50),
(10,6,1,'Boxes',6.00,24.00,10.00,3.50),
(11,6,1,'Boxes',6.00,6.00,10.00,2.50),
(12,7,1,'Boxes',12.00,24.00,20.00,5.50),
(13,8,2,'Boxes',12.00,12.00,5.00,4.50),
(14,9,2,'Boxes',6.00,12.00,40.00,14.50),
(15,10,1,'Boxes',12.00,6.00,10.00,24.50),
(16,10,1,'Boxes',24.00,24.00,5.00,4.50),
(17,11,1,'Boxes',24.00,6.00,20.00,14.50),
(18,12,1,'Boxes',24.00,12.00,10.00,5.50),
(19,12,3,'Boxes',12.00,6.00,10.00,9.50),
(20,12,1,'Boxes',12.00,12.00,10.00,6.50),
(21,13,1,'Boxes',6.00,12.00,10.00,4.50),
(22,14,1,'Boxes',12.00,24.00,20.00,14.50),
(23,15,2,'Boxes',6.00,6.00,20.00,6.50),
(24,16,2,'Boxes',6.00,12.00,5.00,2.50),
(25,17,1,'Boxes',6.00,6.00,5.00,3.50),
(26,18,1,'Boxes',12.00,12.00,10.00,14.50),
(27,19,1,'Boxes',6.00,12.00,15.00,24.50),
(28,20,1,'Boxes',24.00,24.00,15.00,4.50),
(29,20,1,'Boxes',36.00,6.00,10.00,24.50);
 
/*!40000 ALTER TABLE `SHIPMENT_ITEMS` ENABLE KEYS */;
UNLOCK TABLES;
 
 
# Dump of table SHIPMENTS
# ------------------------------------------------------------
 
DROP TABLE IF EXISTS `SHIPMENTS`;
 
CREATE TABLE `SHIPMENTS` (
`shipment_id` double(8,0) NOT NULL DEFAULT '0',
`invoice_id` double(8,0) DEFAULT NULL,
`from_name` varchar(80) DEFAULT NULL,
`from_street` varchar(40) DEFAULT NULL,
`from_city` varchar(20) DEFAULT NULL,
`from_state` varchar(2) DEFAULT NULL,
`from_zip` double(5,0) DEFAULT NULL,
`to_name` varchar(80) DEFAULT NULL,
`to_street` varchar(40) DEFAULT NULL,
`to_city` varchar(20) DEFAULT NULL,
`to_state` varchar(2) DEFAULT NULL,
`to_zip` double(5,0) DEFAULT NULL,
`est_ship_date` date DEFAULT NULL,
`shipper` varchar(40) DEFAULT NULL,
`ship_cost` double(7,2) DEFAULT NULL,
`tracking_number` varchar(20) DEFAULT NULL,
`comments` varchar(80) DEFAULT NULL,
PRIMARY KEY (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
LOCK TABLES `SHIPMENTS` WRITE;
/*!40000 ALTER TABLE `SHIPMENTS` DISABLE KEYS */;
 
INSERT INTO `SHIPMENTS` (`shipment_id`, `invoice_id`, `from_name`, `from_street`, `from_city`, `from_state`, `from_zip`, `to_name`, `to_street`, `to_city`, `to_state`, `to_zip`, `est_ship_date`, `shipper`, `ship_cost`, `tracking_number`, `comments`)
VALUES
(0,1,'Bobs Books','3593 So Commerces St','Commerce City','CO',80132,'Lewis,Steve','1435 Halerson Way','Santa Clara','CA',10634,'2001-01-05','UPS',5.30,'',''),
(1,2,'Books R Us','10324 W 19th Ave','Colorado Springs','CO',80932,'Kramer,Kathleen','10634 Canyon Court','Cortez','CO',80634,'2001-01-05','UPS',5.30,'',''),
(2,3,'Books R Us','10324 W 19th Ave','Colorado Springs','CO',80932,'Smith,Tom','4653 Forest View','Salt Lake City','UT',84106,'2001-01-05','UPS',5.30,'',''),
(3,4,'Direct Video Distributors','5435 Ocean Drive','San Diego','CA',40499,'Jones,Becky','1903 Centenial way','Denver','CO',84309,'2001-01-10','UPS',5.30,'',''),
(4,5,'Media Wholesale','563 Pulp Drive','Portland','OR',98368,'Taylor,Kathy','43 Baker St','Pueblo','CO',80234,'2001-01-10','UPS',5.30,'',''),
(5,6,'Media Wholesale','563 Pulp Drive','Portland','OR',98368,'Obladd,David','930 Main','Colorado Springs','CO',80902,'2001-01-10','UPS',5.30,'',''),
(6,7,'Media Wholesale','563 Pulp Drive','Portland','OR',98368,'Dennis,Mike','6492 Sandy Circle','Miami','FL',63498,'2001-01-15','UPS',5.30,'',''),
(7,8,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Peterson,Carole','4309 Oak','Bailey','CO',80103,'2001-01-16','UPS',5.30,'',''),
(8,9,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Cohn,Jackie','1433 Seedy Side','Moab','UT',84322,'2001-01-16','UPS',5.30,'',''),
(9,10,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Sampson,Gerrie','1999 Market','Silverton','CO',80333,'2001-01-20','UPS',5.30,'',''),
(10,11,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Holbrook,Donna','10783 Back Bay','Oakland','CA',60298,'2001-01-20','UPS',5.30,'',''),
(11,12,'Direct Video Distributors','5435 Ocean Drive','San Diego','CA',40499,'Holbrook,Donna','10783 Back Bay','Oakland','CA',60298,'2001-02-05','UPS',5.30,'',''),
(12,13,'Direct Video Distributors','5435 Ocean Drive','San Diego','CA',40499,'Smith,Tom','4653 Forest View','Salt Lake City','UT',84106,'2001-02-05','UPS',5.30,'',''),
(13,14,'Bobs Books','3593 So Commerces St','Commerce City','CO',80132,'Smith,Tom','4653 Forest View','Salt Lake City','UT',84106,'2001-02-05','UPS',5.30,'',''),
(14,15,'Bobs Books','3593 So Commerces St','Commerce City','CO',80132,'Sampson,Gerrie','1999 Market','Silverton','CO',80333,'2001-02-05','UPS',5.30,'',''),
(15,16,'Bobs Books','3593 So Commerces St','Commerce City','CO',80132,'Holbrook,Donna','10783 Back Bay','Oakland','CA',60298,'2001-02-05','UPS',5.30,'',''),
(16,17,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Smith,Tom','4653 Forest View','Salt Lake City','UT',84106,'2001-02-05','UPS',5.30,'',''),
(17,18,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Holbrook,Donna','10783 Back Bay','Oakland','CA',60298,'2001-02-05','UPS',5.30,'',''),
(18,19,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Sampson,Gerrie','1999 Market','Silverton','CO',80333,'2001-02-05','UPS',5.30,'',''),
(19,20,'Turning a New Page','4069 Spring Court','Sand Creek','AZ',43310,'Smith,Tom','4653 Forest View','Salt Lake City','UT',84106,'2001-02-05','UPS',5.30,'','');
 
/*!40000 ALTER TABLE `SHIPMENTS` ENABLE KEYS */;
UNLOCK TABLES;
 
 
 
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;