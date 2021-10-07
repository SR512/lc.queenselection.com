/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.17-MariaDB : Database - db_queenselection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_queenselection` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_queenselection`;

/*Table structure for table `attribute_size` */

DROP TABLE IF EXISTS `attribute_size`;

CREATE TABLE `attribute_size` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `attribute_size` */

insert  into `attribute_size`(`id`,`size`,`created_at`,`updated_at`) values 
(1,'XL','2021-08-23 08:17:57','2021-08-23 08:17:57'),
(3,'S','2021-08-23 08:18:30','2021-08-23 08:18:30'),
(4,'M','2021-08-23 08:18:37','2021-08-23 08:18:37'),
(5,'L','2021-08-23 08:19:31','2021-08-23 08:19:31'),
(6,'XXL','2021-08-23 08:19:52','2021-08-23 08:19:52'),
(7,'XXXL','2021-08-23 08:20:03','2021-08-23 08:26:46');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_mobile_number_unique` (`mobile_number`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`first_name`,`last_name`,`email`,`mobile_number`,`date_of_birth`,`date_of_anniversary`,`address`,`city`,`pin_code`,`status`,`created_at`,`updated_at`) values 
(52,'Kibo','Clemons','dydijuwava@mailinator.com','1111111111','2021-09-15','2014-01-20','Do dolores praesenti','Laboriosam est maxi','2',0,'2021-09-20 10:21:22','2021-09-20 10:21:22'),
(58,'adsdsad','sdsadsad',NULL,'2222222222',NULL,NULL,NULL,NULL,NULL,0,'2021-10-06 06:09:54','2021-10-06 06:09:54');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_anniversary` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` enum('SALARIED','COMMISSION','BOTH') COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_percentage` decimal(8,2) DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_mobile_number_unique` (`mobile_number`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`first_name`,`last_name`,`gender`,`email`,`mobile_number`,`date_of_birth`,`date_of_anniversary`,`address`,`city`,`pin_code`,`job_type`,`commission_percentage`,`salary`,`commission`,`created_at`,`updated_at`) values 
(1,'Sanjay','Makwana','MALE','itplanet99@gmail.com','7405512512','2021-09-21','2021-08-18','Hasanwadi 2 nr pipaliya hall Rajkot 360002','Rajkot','360002','BOTH',3.00,'25000','NO','2021-08-25 05:55:13','2021-08-25 06:19:59'),
(3,'Hedda','Stevens','FEMALE','kyqufawys@mailinator.com','1111111111','2021-09-21','1974-04-06','Fugiat anim ad sed i','Voluptatum asperiore','222222','COMMISSION',3.00,NULL,'NO','2021-08-25 06:22:26','2021-08-25 06:22:43'),
(4,'Sanjay','makwana','MALE',NULL,'7405512513',NULL,NULL,'sddsdsadsad','sadsadsadsad','360002','SALARIED',NULL,'10000','NO','2021-10-06 06:15:49','2021-10-06 06:15:49');

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `expenses_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses` */

insert  into `expenses`(`id`,`expenses_name`,`date`,`amount`,`created_at`,`updated_at`) values 
(3,'Demo','2021-10-06','200','2021-09-12 10:15:45','2021-09-12 10:15:45'),
(4,'nmbbnmbnm','2021-10-06','3400','2021-09-12 10:16:01','2021-09-12 10:16:01');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `invoices` */

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `discount_type` enum('FLAT','%') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_value` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `paid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` enum('CASH','CHEQUE','CARD','ONLINE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_type` enum('CUSTOMER','SELLER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CUSTOMER',
  `status` enum('PARTIALLY_PAID','UNPAID','PENDING','CANCELLED','PAID') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `invoices` */

insert  into `invoices`(`id`,`product_id`,`employee_id`,`name`,`email`,`mobile`,`invoicedate`,`duedate`,`items`,`subtotal`,`tax`,`discount_type`,`discount`,`discount_value`,`amount`,`paid`,`due`,`note`,`method`,`invoice_type`,`status`,`created_at`,`updated_at`) values 
(9,1,1,'Kibo Clemons','dydijuwava@mailinator.com','1111111111','2021-10-06','2021-09-20','[{\"name\":\"Product 1\",\"product_id\":\"13\",\"size\":\"XL\",\"size_id\":\"31\",\"descr\":null,\"quantity\":\"2\",\"cost\":\"299\",\"price\":\"598\"},{\"name\":\"product 2\",\"product_id\":\"14\",\"size\":\"L\",\"size_id\":\"34\",\"descr\":null,\"quantity\":\"4\",\"cost\":\"319\",\"price\":\"1276\"},{\"name\":\"product 3\",\"product_id\":\"15\",\"size\":\"S\",\"size_id\":\"38\",\"descr\":null,\"quantity\":\"2\",\"cost\":\"420\",\"price\":\"840\"}]',2714.00,5.00,'FLAT',850.00,850.00,2000.00,'2000','-0','asasa','CASH','CUSTOMER','PARTIALLY_PAID','2021-09-20 10:41:57','2021-09-22 10:45:22'),
(10,1,NULL,'demo','itplanet99@gmail.com','7777777777','2021-10-06','2021-09-20','[{\"name\":\"Product 1\",\"product_id\":\"13\",\"size\":\"XL\",\"size_id\":\"31\",\"descr\":null,\"quantity\":\"20\",\"cost\":\"2\",\"price\":\"40\"},{\"name\":\"product 2\",\"product_id\":\"14\",\"size\":\"L\",\"size_id\":\"34\",\"descr\":null,\"quantity\":\"1\",\"cost\":\"10\",\"price\":\"10\"}]',50.00,5.00,NULL,NULL,0.00,53.00,'50','3','asas','CASH','SELLER','PARTIALLY_PAID','2021-09-20 10:52:08','2021-09-20 10:52:08'),
(11,1,NULL,'aasasasas','asasasasasas@ffdfd.com','7777777777','2021-10-06','2021-09-20','[{\"name\":\"Product 1\",\"product_id\":\"13\",\"size\":\"XL\",\"size_id\":\"31\",\"descr\":null,\"quantity\":\"20\",\"cost\":\"300\",\"price\":\"6000\"}]',6000.00,5.00,NULL,NULL,0.00,6300.00,'200','6100',NULL,'CASH','SELLER','UNPAID','2021-09-20 10:54:48','2021-09-20 10:54:48'),
(12,1,1,'Kibo Clemons',NULL,'1111111111','2021-10-06','2021-10-06','[{\"name\":\"Product 1\",\"product_id\":\"13\",\"size\":\"XL\",\"size_id\":\"31\",\"descr\":null,\"quantity\":\"1\",\"cost\":\"299\",\"price\":\"299\"}]',299.00,5.00,NULL,NULL,0.00,314.00,'300','14',NULL,'CASH','CUSTOMER','PARTIALLY_PAID','2021-10-06 06:16:44','2021-10-06 06:16:44');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2021_07_30_160134_create_customers_table',1),
(5,'2021_08_10_111743_create_products_table',1),
(6,'2021_08_10_112604_create_employees_table',1),
(7,'2021_08_10_113904_create_expenses_table',1),
(8,'2021_08_23_065227_create_stocks_table',1),
(9,'2021_08_23_065528_create_attributes_table',1),
(10,'2021_08_25_065128_create_invoices_table',2),
(11,'2021_08_25_094211_create_payments_table',2),
(12,'2021_09_12_060609_add_column_invoice_type_invoice',3),
(15,'2021_09_12_065822_create_settings_table',4);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `payment_date` date NOT NULL,
  `amount` date NOT NULL,
  `method` enum('CASH','CHEQUE','CARD','ONLINE') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_invoice_id_foreign` (`invoice_id`),
  CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `payments` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','DEACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`product_name`,`serial_number`,`status`,`created_at`,`updated_at`) values 
(13,'Product 1','QS47699','ACTIVE','2021-08-23 11:10:00','2021-08-23 11:10:00'),
(14,'product 2','QS26827','ACTIVE','2021-08-23 11:10:22','2021-08-23 11:10:22'),
(15,'product 3','QS8264','ACTIVE','2021-08-23 11:10:59','2021-08-23 11:10:59');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`site_logo`,`name`,`mobile`,`email`,`address`,`gst`,`created_at`,`updated_at`) values 
(1,'Q8JEXqqliqRRoYgdh50iKSrQkKJ4LKLQiqfuTf5v.jpg','Queen selection','1234567891','Queenselection04@gmail.com','Shop no 1-2-3 first floor,\r\nBalaji complex,Opp canal chwokdi,\r\nRavapar road Morbi-363 641','24EDZPD9033E1ZC','2021-09-12 08:19:25','2021-09-12 08:46:34');

/*Table structure for table `stocks` */

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `attribute_size_id` bigint(20) unsigned NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_product_id_foreign` (`product_id`),
  CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `stocks` */

insert  into `stocks`(`id`,`product_id`,`attribute_size_id`,`quantity`,`min_quantity`,`purchase_price`,`price`,`purchased_date`,`created_at`,`updated_at`) values 
(31,13,1,'48','10','299','299','2021-08-23 11:10:00','2021-08-23 11:10:00','2021-10-06 06:16:44'),
(32,13,5,'3','10','382','382','2021-08-23 11:10:00','2021-08-23 11:10:00','2021-08-23 11:10:00'),
(33,13,7,'1','10','76','76','2021-08-23 11:10:00','2021-08-23 11:10:00','2021-08-23 11:10:00'),
(34,14,5,'52','10','319','319','2021-08-23 11:10:22','2021-08-23 11:10:22','2021-09-20 10:52:08'),
(35,14,5,'179','10','902','902','2021-08-23 11:10:22','2021-08-23 11:10:22','2021-08-23 11:10:22'),
(36,14,6,'603','10','987','987','2021-08-23 11:10:22','2021-08-23 11:10:22','2021-08-23 11:10:22'),
(37,15,5,'992','10','226','226','2021-08-23 11:10:59','2021-08-23 11:10:59','2021-08-23 11:10:59'),
(38,15,3,'489','10','420','420','2021-08-23 11:10:59','2021-08-23 11:10:59','2021-09-20 10:41:57'),
(39,15,7,'270','10','724','724','2021-08-23 11:10:59','2021-08-23 11:10:59','2021-08-23 11:10:59'),
(40,15,6,'671','10','1000','1000','2021-08-23 11:10:59','2021-08-23 11:10:59','2021-08-23 11:10:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin','itplanet99@gmail.com',NULL,'$2y$10$HBQ9WmpvAoT4sgsk.GOKHOnzlR2QG9iWqVvDl3m/2xbHy9bA6SYsS',NULL,'2021-08-23 07:51:52','2021-08-23 07:51:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
