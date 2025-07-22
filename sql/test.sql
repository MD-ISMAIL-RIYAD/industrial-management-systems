-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;


--
-- Definition of table `core_academy_admissions`
--

DROP TABLE IF EXISTS `core_academy_admissions`;
CREATE TABLE `core_academy_admissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_student_id` int(10) unsigned NOT NULL,
  `academy_batch_id` int(10) unsigned NOT NULL,
  `academy_section_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_admissions`
--

/*!40000 ALTER TABLE `core_academy_admissions` DISABLE KEYS */;
INSERT INTO `core_academy_admissions` (`id`,`academy_student_id`,`academy_batch_id`,`academy_section_id`,`created_at`,`roll`) VALUES 
 (1,1,1,2,'2025-03-19 15:20:06',2);
/*!40000 ALTER TABLE `core_academy_admissions` ENABLE KEYS */;


--
-- Definition of table `core_academy_batches`
--

DROP TABLE IF EXISTS `core_academy_batches`;
CREATE TABLE `core_academy_batches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `current_class_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_batches`
--

/*!40000 ALTER TABLE `core_academy_batches` DISABLE KEYS */;
INSERT INTO `core_academy_batches` (`id`,`name`,`current_class_id`) VALUES 
 (1,'Batch1',1),
 (2,'Batch2',2);
/*!40000 ALTER TABLE `core_academy_batches` ENABLE KEYS */;


--
-- Definition of table `core_academy_classes`
--

DROP TABLE IF EXISTS `core_academy_classes`;
CREATE TABLE `core_academy_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_classes`
--

/*!40000 ALTER TABLE `core_academy_classes` DISABLE KEYS */;
INSERT INTO `core_academy_classes` (`id`,`name`) VALUES 
 (1,'KG'),
 (2,'ONE'),
 (3,'TWO'),
 (4,'THREE'),
 (5,'FOUR'),
 (6,'FIVE');
/*!40000 ALTER TABLE `core_academy_classes` ENABLE KEYS */;


--
-- Definition of table `core_academy_exam_types`
--

DROP TABLE IF EXISTS `core_academy_exam_types`;
CREATE TABLE `core_academy_exam_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_exam_types`
--

/*!40000 ALTER TABLE `core_academy_exam_types` DISABLE KEYS */;
INSERT INTO `core_academy_exam_types` (`id`,`name`) VALUES 
 (1,'MCQ'),
 (2,'CT');
/*!40000 ALTER TABLE `core_academy_exam_types` ENABLE KEYS */;


--
-- Definition of table `core_academy_invoice_details`
--

DROP TABLE IF EXISTS `core_academy_invoice_details`;
CREATE TABLE `core_academy_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `unit` int(10) unsigned DEFAULT NULL,
  `vat` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoice_details`
--

/*!40000 ALTER TABLE `core_academy_invoice_details` DISABLE KEYS */;
INSERT INTO `core_academy_invoice_details` (`id`,`invoice_id`,`service_id`,`price`,`discount`,`unit`,`vat`) VALUES 
 (1,1,1,343,3,3,1),
 (2,1,2,343,0,1,0);
/*!40000 ALTER TABLE `core_academy_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_academy_invoices`
--

DROP TABLE IF EXISTS `core_academy_invoices`;
CREATE TABLE `core_academy_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `paid_total` float DEFAULT NULL,
  `previous_due` float DEFAULT NULL,
  `payment_term_id` int(10) unsigned DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoices`
--

/*!40000 ALTER TABLE `core_academy_invoices` DISABLE KEYS */;
INSERT INTO `core_academy_invoices` (`id`,`student_id`,`created_at`,`updated_at`,`invoice_total`,`discount`,`paid_total`,`previous_due`,`payment_term_id`,`vat`) VALUES 
 (1,1,'2025-04-01 00:00:00','2025-04-01 00:00:00',223,0,0,0,1,0);
/*!40000 ALTER TABLE `core_academy_invoices` ENABLE KEYS */;


--
-- Definition of table `core_academy_money_receipt_details`
--

DROP TABLE IF EXISTS `core_academy_money_receipt_details`;
CREATE TABLE `core_academy_money_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `fee` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_money_receipt_details`
--

/*!40000 ALTER TABLE `core_academy_money_receipt_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_money_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_academy_money_receipts`
--

DROP TABLE IF EXISTS `core_academy_money_receipts`;
CREATE TABLE `core_academy_money_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` varchar(45) NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_money_receipts`
--

/*!40000 ALTER TABLE `core_academy_money_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_money_receipts` ENABLE KEYS */;


--
-- Definition of table `core_academy_periods`
--

DROP TABLE IF EXISTS `core_academy_periods`;
CREATE TABLE `core_academy_periods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_periods`
--

/*!40000 ALTER TABLE `core_academy_periods` DISABLE KEYS */;
INSERT INTO `core_academy_periods` (`id`,`name`,`time`) VALUES 
 (1,'1st Period','( 9:00 AM - 9:45 AM)'),
 (2,'2nd Period','( 9:45 AM - 10:30 AM)'),
 (3,'3rd Period','( 10:30 AM - 11:15 AM)'),
 (4,'4th Period','( 11:15 AM - 12:00 PM)');
/*!40000 ALTER TABLE `core_academy_periods` ENABLE KEYS */;


--
-- Definition of table `core_academy_results`
--

DROP TABLE IF EXISTS `core_academy_results`;
CREATE TABLE `core_academy_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_student_id` int(10) unsigned NOT NULL,
  `academy_subject_id` int(10) unsigned NOT NULL,
  `academy_term_id` int(10) unsigned NOT NULL,
  `academy_exam_type_id` int(10) unsigned NOT NULL,
  `mark` float NOT NULL,
  `fullmark` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_results`
--

/*!40000 ALTER TABLE `core_academy_results` DISABLE KEYS */;
INSERT INTO `core_academy_results` (`id`,`academy_student_id`,`academy_subject_id`,`academy_term_id`,`academy_exam_type_id`,`mark`,`fullmark`) VALUES 
 (1,1,1,1,1,20,50),
 (2,1,2,1,1,28,50),
 (3,1,3,1,1,40,50),
 (4,1,4,1,1,32,50),
 (5,1,5,1,1,46,50),
 (6,2,1,1,1,45,50),
 (7,2,2,1,1,36,50),
 (8,2,4,1,1,44,50),
 (9,1,1,2,1,70,100);
/*!40000 ALTER TABLE `core_academy_results` ENABLE KEYS */;


--
-- Definition of table `core_academy_routines`
--

DROP TABLE IF EXISTS `core_academy_routines`;
CREATE TABLE `core_academy_routines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_class_id` int(10) unsigned NOT NULL,
  `academy_subject_id` int(10) unsigned NOT NULL,
  `academy_teacher_id` int(10) unsigned NOT NULL,
  `day` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_routines`
--

/*!40000 ALTER TABLE `core_academy_routines` DISABLE KEYS */;
INSERT INTO `core_academy_routines` (`id`,`academy_class_id`,`academy_subject_id`,`academy_teacher_id`,`day`,`time`) VALUES 
 (1,1,3,3,'SUN','( 9:00 AM - 9:45 AM)'),
 (2,1,2,2,'SUN','( 9:00 AM - 9:45 AM)'),
 (3,1,3,1,'MON','( 9:00 AM - 9:45 AM)');
/*!40000 ALTER TABLE `core_academy_routines` ENABLE KEYS */;


--
-- Definition of table `core_academy_sections`
--

DROP TABLE IF EXISTS `core_academy_sections`;
CREATE TABLE `core_academy_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_sections`
--

/*!40000 ALTER TABLE `core_academy_sections` DISABLE KEYS */;
INSERT INTO `core_academy_sections` (`id`,`name`) VALUES 
 (1,'A'),
 (2,'B');
/*!40000 ALTER TABLE `core_academy_sections` ENABLE KEYS */;


--
-- Definition of table `core_academy_services`
--

DROP TABLE IF EXISTS `core_academy_services`;
CREATE TABLE `core_academy_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_services`
--

/*!40000 ALTER TABLE `core_academy_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_services` ENABLE KEYS */;


--
-- Definition of table `core_academy_students`
--

DROP TABLE IF EXISTS `core_academy_students`;
CREATE TABLE `core_academy_students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) NOT NULL,
  `academy_batch_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` date DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_students`
--

/*!40000 ALTER TABLE `core_academy_students` DISABLE KEYS */;
INSERT INTO `core_academy_students` (`id`,`name`,`fathers_name`,`mothers_name`,`academy_batch_id`,`created_at`,`dob`,`photo`,`contact_no`,`address`) VALUES 
 (1,'Jahidul Islam','Habibur Rahama','Najma Akter',2,'2025-03-20 09:42:13','2000-03-19','1.jpg','45435436565','Rampura'),
 (2,'Abdur Rahim','Abdur Karam','Fatema Akter',1,'2025-03-20 09:41:33','2001-01-01','student-jpg.jpg','34242343','NA');
/*!40000 ALTER TABLE `core_academy_students` ENABLE KEYS */;


--
-- Definition of table `core_academy_subjects`
--

DROP TABLE IF EXISTS `core_academy_subjects`;
CREATE TABLE `core_academy_subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_subjects`
--

/*!40000 ALTER TABLE `core_academy_subjects` DISABLE KEYS */;
INSERT INTO `core_academy_subjects` (`id`,`name`) VALUES 
 (1,'Bengali'),
 (2,'English'),
 (3,'Mathematics'),
 (4,'Science'),
 (5,'Islamic Studies'),
 (6,'Social Science');
/*!40000 ALTER TABLE `core_academy_subjects` ENABLE KEYS */;


--
-- Definition of table `core_academy_teachers`
--

DROP TABLE IF EXISTS `core_academy_teachers`;
CREATE TABLE `core_academy_teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_teachers`
--

/*!40000 ALTER TABLE `core_academy_teachers` DISABLE KEYS */;
INSERT INTO `core_academy_teachers` (`id`,`name`,`contact_no`,`position`) VALUES 
 (1,'Md. Hassan','324324324','Asst. Teacher'),
 (2,'Md. Sabbir Ahmed','3432432','Teacher'),
 (3,'Md. Hamid','334324','Headmaster'),
 (4,'Md. Kamruzzaman','34324324','Asst. Teacher');
/*!40000 ALTER TABLE `core_academy_teachers` ENABLE KEYS */;


--
-- Definition of table `core_academy_terms`
--

DROP TABLE IF EXISTS `core_academy_terms`;
CREATE TABLE `core_academy_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_terms`
--

/*!40000 ALTER TABLE `core_academy_terms` DISABLE KEYS */;
INSERT INTO `core_academy_terms` (`id`,`name`) VALUES 
 (1,'Mid Term'),
 (2,'Final');
/*!40000 ALTER TABLE `core_academy_terms` ENABLE KEYS */;


--
-- Definition of table `core_assets`
--

DROP TABLE IF EXISTS `core_assets`;
CREATE TABLE `core_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `purchased_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_assets`
--

/*!40000 ALTER TABLE `core_assets` DISABLE KEYS */;
INSERT INTO `core_assets` (`id`,`name`,`price`,`purchased_at`) VALUES 
 (1,'Computer',50000,'2025-01-01 00:00:00'),
 (2,'Laptop',60000,'2025-01-01 00:00:00');
/*!40000 ALTER TABLE `core_assets` ENABLE KEYS */;


--
-- Definition of table `core_bom_details`
--

DROP TABLE IF EXISTS `core_bom_details`;
CREATE TABLE `core_bom_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bom_id` int(10) unsigned NOT NULL DEFAULT 0,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` varchar(45) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_bom_details`
--

/*!40000 ALTER TABLE `core_bom_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_bom_details` ENABLE KEYS */;


--
-- Definition of table `core_booking_details`
--

DROP TABLE IF EXISTS `core_booking_details`;
CREATE TABLE `core_booking_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_booking_details`
--

/*!40000 ALTER TABLE `core_booking_details` DISABLE KEYS */;
INSERT INTO `core_booking_details` (`id`,`booking_id`,`room_id`,`from_date`,`to_date`,`price`) VALUES 
 (1,1,1,'2024-02-10','2024-02-11',500),
 (2,6,2,'2024-05-01','2024-05-03',500),
 (3,6,1,'2024-05-01','2024-05-03',2000),
 (4,7,2,'2024-05-29','2024-05-30',500),
 (5,7,1,'2024-05-29','2024-05-30',2000);
/*!40000 ALTER TABLE `core_booking_details` ENABLE KEYS */;


--
-- Definition of table `core_bookings`
--

DROP TABLE IF EXISTS `core_bookings`;
CREATE TABLE `core_bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `order_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `remark` text DEFAULT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_bookings`
--

/*!40000 ALTER TABLE `core_bookings` DISABLE KEYS */;
INSERT INTO `core_bookings` (`id`,`created_at`,`order_total`,`paid_total`,`remark`,`customer_id`) VALUES 
 (1,'2024-05-22 00:00:00',1000,1000,'Test',7),
 (2,'2024-05-24 00:00:00',700,700,'Test Update Api',3),
 (3,'2024-05-25 00:00:00',3544,3544,'Test',2),
 (4,'2024-05-23 00:00:00',500,500,'Test Api',3),
 (5,'0000-00-00 00:00:00',446,446,'Test',2),
 (6,'0000-00-00 00:00:00',344,455,'test',1),
 (7,'0000-00-00 00:00:00',5000,2000,'NT',1);
/*!40000 ALTER TABLE `core_bookings` ENABLE KEYS */;


--
-- Definition of table `core_books`
--

DROP TABLE IF EXISTS `core_books`;
CREATE TABLE `core_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `price` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_books`
--

/*!40000 ALTER TABLE `core_books` DISABLE KEYS */;
INSERT INTO `core_books` (`id`,`name`,`price`) VALUES 
 (1,'poets','210'),
 (2,'Kazi Nazrul Islam poetry','300');
/*!40000 ALTER TABLE `core_books` ENABLE KEYS */;


--
-- Definition of table `core_cache`
--

DROP TABLE IF EXISTS `core_cache`;
CREATE TABLE `core_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_cache`
--

/*!40000 ALTER TABLE `core_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache` ENABLE KEYS */;


--
-- Definition of table `core_cache_locks`
--

DROP TABLE IF EXISTS `core_cache_locks`;
CREATE TABLE `core_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_cache_locks`
--

/*!40000 ALTER TABLE `core_cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache_locks` ENABLE KEYS */;


--
-- Definition of table `core_car_categories`
--

DROP TABLE IF EXISTS `core_car_categories`;
CREATE TABLE `core_car_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_car_categories`
--

/*!40000 ALTER TABLE `core_car_categories` DISABLE KEYS */;
INSERT INTO `core_car_categories` (`id`,`name`,`description`) VALUES 
 (1,'Premium','laxarious');
/*!40000 ALTER TABLE `core_car_categories` ENABLE KEYS */;


--
-- Definition of table `core_car_expenses`
--

DROP TABLE IF EXISTS `core_car_expenses`;
CREATE TABLE `core_car_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `core_car_expenses_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `core_cars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_car_expenses`
--

/*!40000 ALTER TABLE `core_car_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_car_expenses` ENABLE KEYS */;


--
-- Definition of table `core_car_users`
--

DROP TABLE IF EXISTS `core_car_users`;
CREATE TABLE `core_car_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff','customer') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_car_users`
--

/*!40000 ALTER TABLE `core_car_users` DISABLE KEYS */;
INSERT INTO `core_car_users` (`id`,`name`,`email`,`password`,`role`,`created_at`,`updated_at`) VALUES 
 (1,'Dola','dola@gmail.com','$2y$12$AagzrVPChSt6fUsZg7vtNOwQt3PzSzU8qmK9ZwMbc2M/MyFgSAxa2','customer','2025-06-30 09:49:59','2025-06-30 09:49:59');
/*!40000 ALTER TABLE `core_car_users` ENABLE KEYS */;


--
-- Definition of table `core_cars`
--

DROP TABLE IF EXISTS `core_cars`;
CREATE TABLE `core_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `license_plate` varchar(50) DEFAULT NULL,
  `status` enum('available','rented','maintenance') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_per_day` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_plate` (`license_plate`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `core_cars_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `core_car_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_cars`
--

/*!40000 ALTER TABLE `core_cars` DISABLE KEYS */;
INSERT INTO `core_cars` (`id`,`name`,`category_id`,`license_plate`,`status`,`image`,`price_per_day`,`created_at`) VALUES 
 (1,'Premio',1,'Dhaka-120','available','1751280564.jpg','5000','2025-06-30 16:49:24');
/*!40000 ALTER TABLE `core_cars` ENABLE KEYS */;


--
-- Definition of table `core_cattle_categories`
--

DROP TABLE IF EXISTS `core_cattle_categories`;
CREATE TABLE `core_cattle_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattle_categories`
--

/*!40000 ALTER TABLE `core_cattle_categories` DISABLE KEYS */;
INSERT INTO `core_cattle_categories` (`id`,`name`) VALUES 
 (1,'Cow'),
 (2,'Goat');
/*!40000 ALTER TABLE `core_cattle_categories` ENABLE KEYS */;


--
-- Definition of table `core_cattles`
--

DROP TABLE IF EXISTS `core_cattles`;
CREATE TABLE `core_cattles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `color` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) unsigned DEFAULT NULL,
  `cattle_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattles`
--

/*!40000 ALTER TABLE `core_cattles` DISABLE KEYS */;
INSERT INTO `core_cattles` (`id`,`name`,`region`,`dob`,`color`,`description`,`photo`,`gender`,`cattle_category_id`) VALUES 
 (2,'Black and White','Indian','2021-05-07','White','','2.webp',1,2),
 (3,'BlackCow','Indian','2021-05-07','Black','','3.jpeg',1,1),
 (19,'Goat 25','Deshi','2024-05-01','Red','','19.png',0,1),
 (24,'Goat 25','Deshi','2021-05-07','Red','Test','1-925-webp.webp',1,2);
/*!40000 ALTER TABLE `core_cattles` ENABLE KEYS */;


--
-- Definition of table `core_company`
--

DROP TABLE IF EXISTS `core_company`;
CREATE TABLE `core_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `bin` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_company`
--

/*!40000 ALTER TABLE `core_company` DISABLE KEYS */;
INSERT INTO `core_company` (`id`,`name`,`mobile`,`bin`,`email`,`website`,`city`,`area`,`street_address`,`post_code`,`inactive`,`logo`) VALUES 
 (1,'OYELI FASHION','432523432','3423423432','oyeili@gmail.com','www.oyelibd.com','Dhaka','Mirpur','Building: 21, Road: 12, Block: A','1219',0,'1.png'),
 (2,'IBN SINA','34234',NULL,'ibnsina@gmail.com','ibnsina.com','Dhaka','Dhanmondi','Building: 21, Road: 12, Block: A','2012',0,'2.png');
/*!40000 ALTER TABLE `core_company` ENABLE KEYS */;


--
-- Definition of table `core_contact_categories`
--

DROP TABLE IF EXISTS `core_contact_categories`;
CREATE TABLE `core_contact_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contact_categories`
--

/*!40000 ALTER TABLE `core_contact_categories` DISABLE KEYS */;
INSERT INTO `core_contact_categories` (`id`,`name`) VALUES 
 (1,'Family'),
 (2,'Relative'),
 (3,'Friend'),
 (4,'Student');
/*!40000 ALTER TABLE `core_contact_categories` ENABLE KEYS */;


--
-- Definition of table `core_contacts`
--

DROP TABLE IF EXISTS `core_contacts`;
CREATE TABLE `core_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_category_id` int(10) unsigned NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contacts`
--

/*!40000 ALTER TABLE `core_contacts` DISABLE KEYS */;
INSERT INTO `core_contacts` (`id`,`name`,`contact_category_id`,`contact_no`,`email`) VALUES 
 (1,'Mehedi',4,'01797993131','mehedihasandb0@gmail.com'),
 (2,'Jahid',1,'3423423','jahid1@yahoo.com');
/*!40000 ALTER TABLE `core_contacts` ENABLE KEYS */;


--
-- Definition of table `core_courier_branchs`
--

DROP TABLE IF EXISTS `core_courier_branchs`;
CREATE TABLE `core_courier_branchs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_branchs`
--

/*!40000 ALTER TABLE `core_courier_branchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_branchs` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcel_history`
--

DROP TABLE IF EXISTS `core_courier_parcel_history`;
CREATE TABLE `core_courier_parcel_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parcel_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcel_history`
--

/*!40000 ALTER TABLE `core_courier_parcel_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcel_history` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcel_statuses`
--

DROP TABLE IF EXISTS `core_courier_parcel_statuses`;
CREATE TABLE `core_courier_parcel_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcel_statuses`
--

/*!40000 ALTER TABLE `core_courier_parcel_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcel_statuses` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcels`
--

DROP TABLE IF EXISTS `core_courier_parcels`;
CREATE TABLE `core_courier_parcels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `receiver_id` int(10) unsigned NOT NULL,
  `weight` float NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `is_csc` tinyint(1) NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `vehical_id` int(10) unsigned NOT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `remark` text DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcels`
--

/*!40000 ALTER TABLE `core_courier_parcels` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcels` ENABLE KEYS */;


--
-- Definition of table `core_courier_receivers`
--

DROP TABLE IF EXISTS `core_courier_receivers`;
CREATE TABLE `core_courier_receivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_receivers`
--

/*!40000 ALTER TABLE `core_courier_receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_receivers` ENABLE KEYS */;


--
-- Definition of table `core_courier_senders`
--

DROP TABLE IF EXISTS `core_courier_senders`;
CREATE TABLE `core_courier_senders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_senders`
--

/*!40000 ALTER TABLE `core_courier_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_senders` ENABLE KEYS */;


--
-- Definition of table `core_courier_shipments`
--

DROP TABLE IF EXISTS `core_courier_shipments`;
CREATE TABLE `core_courier_shipments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_shipments`
--

/*!40000 ALTER TABLE `core_courier_shipments` DISABLE KEYS */;
INSERT INTO `core_courier_shipments` (`id`,`name`) VALUES 
 (1,'Morning'),
 (2,'Evening'),
 (3,'Night');
/*!40000 ALTER TABLE `core_courier_shipments` ENABLE KEYS */;


--
-- Definition of table `core_courier_types`
--

DROP TABLE IF EXISTS `core_courier_types`;
CREATE TABLE `core_courier_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_types`
--

/*!40000 ALTER TABLE `core_courier_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_types` ENABLE KEYS */;


--
-- Definition of table `core_courier_vehicle_types`
--

DROP TABLE IF EXISTS `core_courier_vehicle_types`;
CREATE TABLE `core_courier_vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_vehicle_types`
--

/*!40000 ALTER TABLE `core_courier_vehicle_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_vehicle_types` ENABLE KEYS */;


--
-- Definition of table `core_courier_vehicles`
--

DROP TABLE IF EXISTS `core_courier_vehicles`;
CREATE TABLE `core_courier_vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `driver_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_vehicles`
--

/*!40000 ALTER TABLE `core_courier_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_vehicles` ENABLE KEYS */;


--
-- Definition of table `core_customers`
--

DROP TABLE IF EXISTS `core_customers`;
CREATE TABLE `core_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_customers`
--

/*!40000 ALTER TABLE `core_customers` DISABLE KEYS */;
INSERT INTO `core_customers` (`id`,`name`,`mobile`,`email`,`created_at`,`updated_at`,`address`,`photo`) VALUES 
 (1,'Tanmoy','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (3,'Niyamot','3434343','niyamot@yahoo.com','2023-12-05 16:27:19','2023-12-05 16:27:19','Mirpur','3.png'),
 (6,'Jahidul Islam','34324324','mehedihasandb0@gmail.com','2023-12-05 16:28:16','2023-12-05 16:28:16','333','beetroot-hummus-23bae4e-jpg.jpg'),
 (7,'Jahidul2','34324324','mehedihasandb0@gmail.com','2023-12-05 16:43:59','2023-12-05 16:43:59','343','7.jpg'),
 (8,'Mehedi3','34324324','mehedihasandb0@gmail.com','2023-12-05 16:31:09','2023-12-05 16:31:09','','34324324.jpg'),
 (9,'Sabbir Ahmed','34343434','sabbir3@gmail.com','2023-12-30 15:30:13','2023-12-30 15:30:13','NA',NULL),
 (10,'Abdur Rahman','35443434','abrahman@gmail.com','2023-12-30 15:32:00','2023-12-30 15:32:00','Rampua',NULL),
 (12,'Mahedi Hassanere','9433442sfds','mah3edi@gmail.com','2023-12-30 15:59:14','2023-12-30 15:59:14','NA',NULL),
 (15,'Siam','44444444','siam@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (21,'Laiju','123456778','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (25,'abc','0000','abc@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (28,'Md Salman Aisur Rahman','019886131','salman@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (29,'Atiquer Rahman','098563146','Atiqur@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (30,'razib','1222222','razijb@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (31,'','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (32,'Al AMin','96354965','Alamin@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (33,'Rahul ','8797446','Rahul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (34,'Laiju','98754324','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (35,'Engr. Naiiyem Hossain','12555555','naiyem@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `core_customers` ENABLE KEYS */;


--
-- Definition of table `core_deliveries`
--

DROP TABLE IF EXISTS `core_deliveries`;
CREATE TABLE `core_deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_at` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `shipper_id` int(10) unsigned NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivery_status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_deliveries`
--

/*!40000 ALTER TABLE `core_deliveries` DISABLE KEYS */;
INSERT INTO `core_deliveries` (`id`,`create_at`,`order_id`,`person_id`,`shipper_id`,`shipped_at`,`delivery_status_id`) VALUES 
 (1,'2025-04-12 00:00:00',43,1,1,'2025-04-12 00:00:00',1),
 (2,'2025-04-12 00:00:00',43,1,1,'2025-04-12 00:00:00',1),
 (3,'2025-04-12 00:00:00',45,1,1,'2025-04-12 00:00:00',1);
/*!40000 ALTER TABLE `core_deliveries` ENABLE KEYS */;


--
-- Definition of table `core_delivery_details`
--

DROP TABLE IF EXISTS `core_delivery_details`;
CREATE TABLE `core_delivery_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(45) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_details`
--

/*!40000 ALTER TABLE `core_delivery_details` DISABLE KEYS */;
INSERT INTO `core_delivery_details` (`id`,`delivery_id`,`product_id`,`qty`,`price`) VALUES 
 (1,'1',56,'1',500),
 (2,'2',56,'1',500),
 (3,'3',56,'13',500);
/*!40000 ALTER TABLE `core_delivery_details` ENABLE KEYS */;


--
-- Definition of table `core_delivery_status`
--

DROP TABLE IF EXISTS `core_delivery_status`;
CREATE TABLE `core_delivery_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_status`
--

/*!40000 ALTER TABLE `core_delivery_status` DISABLE KEYS */;
INSERT INTO `core_delivery_status` (`id`,`name`) VALUES 
 (1,'In transit'),
 (2,'Shipped');
/*!40000 ALTER TABLE `core_delivery_status` ENABLE KEYS */;


--
-- Definition of table `core_departments`
--

DROP TABLE IF EXISTS `core_departments`;
CREATE TABLE `core_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_departments`
--

/*!40000 ALTER TABLE `core_departments` DISABLE KEYS */;
INSERT INTO `core_departments` (`id`,`code`,`name`) VALUES 
 (1,'10','Accounts'),
 (2,'20','IT'),
 (3,'30','HR'),
 (4,'40','Sales and Marketing');
/*!40000 ALTER TABLE `core_departments` ENABLE KEYS */;


--
-- Definition of table `core_districts`
--

DROP TABLE IF EXISTS `core_districts`;
CREATE TABLE `core_districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `division_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_districts`
--

/*!40000 ALTER TABLE `core_districts` DISABLE KEYS */;
INSERT INTO `core_districts` (`id`,`name`,`division_id`) VALUES 
 (1,'Narayangang',1),
 (2,'Nonakhali',3),
 (3,'Feni',3),
 (4,'Tingile',1),
 (5,'Gajipur',1),
 (6,'Potuakhali',2),
 (7,'Dhaka',1);
/*!40000 ALTER TABLE `core_districts` ENABLE KEYS */;


--
-- Definition of table `core_divisions`
--

DROP TABLE IF EXISTS `core_divisions`;
CREATE TABLE `core_divisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_divisions`
--

/*!40000 ALTER TABLE `core_divisions` DISABLE KEYS */;
INSERT INTO `core_divisions` (`id`,`name`) VALUES 
 (1,'Dhaka'),
 (2,'Borishal'),
 (3,'Chottrogram');
/*!40000 ALTER TABLE `core_divisions` ENABLE KEYS */;


--
-- Definition of table `core_driver_assignments`
--

DROP TABLE IF EXISTS `core_driver_assignments`;
CREATE TABLE `core_driver_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `core_driver_assignments_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `core_drivers` (`id`),
  CONSTRAINT `core_driver_assignments_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `core_bookings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_driver_assignments`
--

/*!40000 ALTER TABLE `core_driver_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_driver_assignments` ENABLE KEYS */;


--
-- Definition of table `core_driver_payments`
--

DROP TABLE IF EXISTS `core_driver_payments`;
CREATE TABLE `core_driver_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `assignment_id` (`assignment_id`),
  CONSTRAINT `core_driver_payments_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `core_drivers` (`id`),
  CONSTRAINT `core_driver_payments_ibfk_2` FOREIGN KEY (`assignment_id`) REFERENCES `core_driver_assignments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_driver_payments`
--

/*!40000 ALTER TABLE `core_driver_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_driver_payments` ENABLE KEYS */;


--
-- Definition of table `core_drivers`
--

DROP TABLE IF EXISTS `core_drivers`;
CREATE TABLE `core_drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `license_file` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_drivers`
--

/*!40000 ALTER TABLE `core_drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_drivers` ENABLE KEYS */;


--
-- Definition of table `core_ecom_coupons`
--

DROP TABLE IF EXISTS `core_ecom_coupons`;
CREATE TABLE `core_ecom_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon` varchar(45) NOT NULL,
  `percent_b2b` double NOT NULL,
  `percent_b2c` double NOT NULL,
  `percent_m` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ecom_coupons`
--

/*!40000 ALTER TABLE `core_ecom_coupons` DISABLE KEYS */;
INSERT INTO `core_ecom_coupons` (`id`,`coupon`,`percent_b2b`,`percent_b2c`,`percent_m`,`start_date`,`end_date`,`created_at`) VALUES 
 (1,'AX353',5,3,4,'2025-04-09 00:00:00','2025-04-30 00:00:00','2025-04-09 11:06:25');
/*!40000 ALTER TABLE `core_ecom_coupons` ENABLE KEYS */;


--
-- Definition of table `core_ecom_used_coupons`
--

DROP TABLE IF EXISTS `core_ecom_used_coupons`;
CREATE TABLE `core_ecom_used_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL,
  `used_at` datetime NOT NULL,
  `percent_given` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ecom_used_coupons`
--

/*!40000 ALTER TABLE `core_ecom_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_ecom_used_coupons` ENABLE KEYS */;


--
-- Definition of table `core_expenses`
--

DROP TABLE IF EXISTS `core_expenses`;
CREATE TABLE `core_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_expenses`
--

/*!40000 ALTER TABLE `core_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_expenses` ENABLE KEYS */;


--
-- Definition of table `core_failed_jobs`
--

DROP TABLE IF EXISTS `core_failed_jobs`;
CREATE TABLE `core_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_failed_jobs`
--

/*!40000 ALTER TABLE `core_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_failed_jobs` ENABLE KEYS */;


--
-- Definition of table `core_hms_appointments`
--

DROP TABLE IF EXISTS `core_hms_appointments`;
CREATE TABLE `core_hms_appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `appointment_at` datetime NOT NULL,
  `cc` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_appointments`
--

/*!40000 ALTER TABLE `core_hms_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hms_appointments` ENABLE KEYS */;


--
-- Definition of table `core_hms_consultants`
--

DROP TABLE IF EXISTS `core_hms_consultants`;
CREATE TABLE `core_hms_consultants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hms_department_id` int(10) unsigned NOT NULL,
  `designation` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_consultants`
--

/*!40000 ALTER TABLE `core_hms_consultants` DISABLE KEYS */;
INSERT INTO `core_hms_consultants` (`id`,`name`,`hms_department_id`,`designation`) VALUES 
 (1,'Dr. Moshaidul Islam',1,'MBBS'),
 (2,'Jahidul Islam',2,'Prof.');
/*!40000 ALTER TABLE `core_hms_consultants` ENABLE KEYS */;


--
-- Definition of table `core_hms_departments`
--

DROP TABLE IF EXISTS `core_hms_departments`;
CREATE TABLE `core_hms_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_departments`
--

/*!40000 ALTER TABLE `core_hms_departments` DISABLE KEYS */;
INSERT INTO `core_hms_departments` (`id`,`name`) VALUES 
 (1,'Medicine'),
 (2,'ENT');
/*!40000 ALTER TABLE `core_hms_departments` ENABLE KEYS */;


--
-- Definition of table `core_hms_invoice_detials`
--

DROP TABLE IF EXISTS `core_hms_invoice_detials`;
CREATE TABLE `core_hms_invoice_detials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `unit` float NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_invoice_detials`
--

/*!40000 ALTER TABLE `core_hms_invoice_detials` DISABLE KEYS */;
INSERT INTO `core_hms_invoice_detials` (`id`,`invoice_id`,`service_id`,`unit`,`price`,`discount`,`vat`) VALUES 
 (1,3,1,1,1000,0,0),
 (2,3,2,1,2000,0,0),
 (3,4,1,1,1000,0,0),
 (4,4,2,1,2000,0,0),
 (5,5,2,1,3000,0,0),
 (6,5,3,1,6000,0,0),
 (7,6,2,1,3000,0,0),
 (8,6,3,1,6000,0,0);
/*!40000 ALTER TABLE `core_hms_invoice_detials` ENABLE KEYS */;


--
-- Definition of table `core_hms_invoices`
--

DROP TABLE IF EXISTS `core_hms_invoices`;
CREATE TABLE `core_hms_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `invoice_total` float DEFAULT NULL,
  `paid_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `previous_due` float DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_invoices`
--

/*!40000 ALTER TABLE `core_hms_invoices` DISABLE KEYS */;
INSERT INTO `core_hms_invoices` (`id`,`patient_id`,`remark`,`created_at`,`invoice_total`,`paid_total`,`discount`,`vat`,`payment_term`,`previous_due`,`updated_at`) VALUES 
 (1,0,'','0000-00-00 00:00:00',0,0,0,0,'',0,'0000-00-00 00:00:00'),
 (2,0,'','0000-00-00 00:00:00',0,0,0,0,'',0,'0000-00-00 00:00:00'),
 (3,1,'Na','2025-01-10 00:00:00',399,399,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (4,1,'Na','2025-01-10 00:00:00',399,399,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (5,0,'Na','0000-00-00 00:00:00',9000,9000,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (6,0,'Na','0000-00-00 00:00:00',9000,9000,0,0,'CASH',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_hms_invoices` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicine_categories`
--

DROP TABLE IF EXISTS `core_hms_medicine_categories`;
CREATE TABLE `core_hms_medicine_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_categories`
--

/*!40000 ALTER TABLE `core_hms_medicine_categories` DISABLE KEYS */;
INSERT INTO `core_hms_medicine_categories` (`id`,`name`) VALUES 
 (1,'Antibiotic'),
 (2,'Vitamin'),
 (3,'Painkiller'),
 (4,'Antacids');
/*!40000 ALTER TABLE `core_hms_medicine_categories` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicine_types`
--

DROP TABLE IF EXISTS `core_hms_medicine_types`;
CREATE TABLE `core_hms_medicine_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_types`
--

/*!40000 ALTER TABLE `core_hms_medicine_types` DISABLE KEYS */;
INSERT INTO `core_hms_medicine_types` (`id`,`name`) VALUES 
 (1,'Tab'),
 (2,'Inj'),
 (3,'Syr'),
 (4,'Cap');
/*!40000 ALTER TABLE `core_hms_medicine_types` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicines`
--

DROP TABLE IF EXISTS `core_hms_medicines`;
CREATE TABLE `core_hms_medicines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hms_medicine_category_id` int(10) unsigned NOT NULL,
  `hms_medicine_type_id` int(10) unsigned NOT NULL,
  `generic_name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicines`
--

/*!40000 ALTER TABLE `core_hms_medicines` DISABLE KEYS */;
INSERT INTO `core_hms_medicines` (`id`,`name`,`hms_medicine_category_id`,`hms_medicine_type_id`,`generic_name`,`description`) VALUES 
 (1,'Napa 500mg',4,1,'Paracitamal','Na'),
 (2,'Seclo 20mg',3,4,'Antacid','Na'),
 (3,'Tabib',2,3,'IBN SINA','None');
/*!40000 ALTER TABLE `core_hms_medicines` ENABLE KEYS */;


--
-- Definition of table `core_hms_patients`
--

DROP TABLE IF EXISTS `core_hms_patients`;
CREATE TABLE `core_hms_patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `mob_ext` int(10) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `profession` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_patients`
--

/*!40000 ALTER TABLE `core_hms_patients` DISABLE KEYS */;
INSERT INTO `core_hms_patients` (`id`,`name`,`mobile`,`dob`,`mob_ext`,`gender`,`profession`) VALUES 
 (1,'Jahidul Islam','038403423','2000-01-01',1,1,'student'),
 (2,'Jamuna','034343345','2023-01-02',1,1,'na'),
 (3,'Abdur Rahman','23432432','2000-01-20',1,1,'Student'),
 (4,'Laiju Akter ','01701010','2020-02-03',0,1,'Business');
/*!40000 ALTER TABLE `core_hms_patients` ENABLE KEYS */;


--
-- Definition of table `core_hms_prescription_details`
--

DROP TABLE IF EXISTS `core_hms_prescription_details`;
CREATE TABLE `core_hms_prescription_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) unsigned NOT NULL,
  `medicine_id` int(10) unsigned NOT NULL,
  `dose` varchar(20) NOT NULL,
  `days` double NOT NULL,
  `suggestion` text NOT NULL,
  `medicine_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_prescription_details`
--

/*!40000 ALTER TABLE `core_hms_prescription_details` DISABLE KEYS */;
INSERT INTO `core_hms_prescription_details` (`id`,`prescription_id`,`medicine_id`,`dose`,`days`,`suggestion`,`medicine_name`) VALUES 
 (1,2,1,'0+0+1',1,'after meal','Napa 500mg'),
 (2,2,2,'1+1+1',3,'after meal','Seclo 20mg'),
 (3,3,1,'0+0+1',1,'dfg','Napa 500mg'),
 (4,4,1,'1+0+0',2,'Test','Napa 500mg'),
 (5,4,2,'1+1+1',3,'Test','Seclo 20mg'),
 (6,5,1,'0+1+0',2,'433','1-Napa 500mg'),
 (7,6,1,'1+0+1',2,'433','1-Napa 500mg'),
 (8,6,1,'0+1+1',3,'433','1-Napa 500mg'),
 (9,7,1,'0+0+1',1,'','1-Napa 500mg'),
 (10,7,2,'1+0+1',1,'ddd','2-Seclo 20mg'),
 (11,8,1,'0+0+1',1,'test','1-Napa 500mg'),
 (12,8,1,'0+0+1',1,'test','1-Napa 500mg'),
 (13,9,1,'0+0+1',1,'test','1-Napa 500mg'),
 (14,9,1,'0+0+1',1,'test','1-Napa 500mg');
/*!40000 ALTER TABLE `core_hms_prescription_details` ENABLE KEYS */;


--
-- Definition of table `core_hms_prescriptions`
--

DROP TABLE IF EXISTS `core_hms_prescriptions`;
CREATE TABLE `core_hms_prescriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `consultant_id` int(10) unsigned NOT NULL,
  `cc` text NOT NULL,
  `rf` text NOT NULL,
  `investigation` text NOT NULL,
  `advice` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_prescriptions`
--

/*!40000 ALTER TABLE `core_hms_prescriptions` DISABLE KEYS */;
INSERT INTO `core_hms_prescriptions` (`id`,`patient_id`,`consultant_id`,`cc`,`rf`,`investigation`,`advice`) VALUES 
 (1,2,1,'Fiver','NA','x-ray','advice'),
 (2,2,1,'Cough','NA','X-RAY, Blood Test','Visit after 1 week'),
 (3,3,1,'Cold','RDD','Blood','Test'),
 (4,1,1,'Cold','BA','Blood Test','Tst'),
 (5,3,1,'','','','');
/*!40000 ALTER TABLE `core_hms_prescriptions` ENABLE KEYS */;


--
-- Definition of table `core_hms_service_categories`
--

DROP TABLE IF EXISTS `core_hms_service_categories`;
CREATE TABLE `core_hms_service_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_service_categories`
--

/*!40000 ALTER TABLE `core_hms_service_categories` DISABLE KEYS */;
INSERT INTO `core_hms_service_categories` (`id`,`name`) VALUES 
 (1,'Pathology'),
 (2,'Hospital'),
 (3,'Therapy');
/*!40000 ALTER TABLE `core_hms_service_categories` ENABLE KEYS */;


--
-- Definition of table `core_hms_services`
--

DROP TABLE IF EXISTS `core_hms_services`;
CREATE TABLE `core_hms_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_services`
--

/*!40000 ALTER TABLE `core_hms_services` DISABLE KEYS */;
INSERT INTO `core_hms_services` (`id`,`name`,`price`,`discount`,`vat`,`category_id`) VALUES 
 (1,'X-Ray',1000,0,0,1),
 (2,'ECG',3000,0,0,1),
 (3,'MRI',6000,0,0,2);
/*!40000 ALTER TABLE `core_hms_services` ENABLE KEYS */;


--
-- Definition of table `core_hotel_beds`
--

DROP TABLE IF EXISTS `core_hotel_beds`;
CREATE TABLE `core_hotel_beds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_beds`
--

/*!40000 ALTER TABLE `core_hotel_beds` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_beds` ENABLE KEYS */;


--
-- Definition of table `core_hotel_booking_details`
--

DROP TABLE IF EXISTS `core_hotel_booking_details`;
CREATE TABLE `core_hotel_booking_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) unsigned NOT NULL,
  `bed_id` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `book_from` datetime NOT NULL,
  `book_to` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_booking_details`
--

/*!40000 ALTER TABLE `core_hotel_booking_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_booking_details` ENABLE KEYS */;


--
-- Definition of table `core_hotel_bookings`
--

DROP TABLE IF EXISTS `core_hotel_bookings`;
CREATE TABLE `core_hotel_bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `booking_date` datetime NOT NULL,
  `paid_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_bookings`
--

/*!40000 ALTER TABLE `core_hotel_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_bookings` ENABLE KEYS */;


--
-- Definition of table `core_hotel_receipts`
--

DROP TABLE IF EXISTS `core_hotel_receipts`;
CREATE TABLE `core_hotel_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `booking_id` int(10) unsigned NOT NULL,
  `receipt_total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_receipts`
--

/*!40000 ALTER TABLE `core_hotel_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_receipts` ENABLE KEYS */;


--
-- Definition of table `core_hotel_receipts_details`
--

DROP TABLE IF EXISTS `core_hotel_receipts_details`;
CREATE TABLE `core_hotel_receipts_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receipt_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `bed_id` int(10) unsigned NOT NULL,
  `book_from` datetime DEFAULT NULL,
  `book_to` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_receipts_details`
--

/*!40000 ALTER TABLE `core_hotel_receipts_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_receipts_details` ENABLE KEYS */;


--
-- Definition of table `core_hotels`
--

DROP TABLE IF EXISTS `core_hotels`;
CREATE TABLE `core_hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotels`
--

/*!40000 ALTER TABLE `core_hotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotels` ENABLE KEYS */;


--
-- Definition of table `core_hr_attendace_methods`
--

DROP TABLE IF EXISTS `core_hr_attendace_methods`;
CREATE TABLE `core_hr_attendace_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_attendace_methods`
--

/*!40000 ALTER TABLE `core_hr_attendace_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_attendace_methods` ENABLE KEYS */;


--
-- Definition of table `core_hr_attendances`
--

DROP TABLE IF EXISTS `core_hr_attendances`;
CREATE TABLE `core_hr_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `att_datetime` datetime NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_attendances`
--

/*!40000 ALTER TABLE `core_hr_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_attendances` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_application_status`
--

DROP TABLE IF EXISTS `core_hr_leave_application_status`;
CREATE TABLE `core_hr_leave_application_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_application_status`
--

/*!40000 ALTER TABLE `core_hr_leave_application_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_application_status` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_applications`
--

DROP TABLE IF EXISTS `core_hr_leave_applications`;
CREATE TABLE `core_hr_leave_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `reason_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_applications`
--

/*!40000 ALTER TABLE `core_hr_leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_applications` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_categories`
--

DROP TABLE IF EXISTS `core_hr_leave_categories`;
CREATE TABLE `core_hr_leave_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_categories`
--

/*!40000 ALTER TABLE `core_hr_leave_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_categories` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_configs`
--

DROP TABLE IF EXISTS `core_hr_leave_configs`;
CREATE TABLE `core_hr_leave_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_configs`
--

/*!40000 ALTER TABLE `core_hr_leave_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_configs` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_transactions`
--

DROP TABLE IF EXISTS `core_hr_leave_transactions`;
CREATE TABLE `core_hr_leave_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_transactions`
--

/*!40000 ALTER TABLE `core_hr_leave_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_transactions` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_configs`
--

DROP TABLE IF EXISTS `core_hr_payroll_configs`;
CREATE TABLE `core_hr_payroll_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `payroll_item_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_configs`
--

/*!40000 ALTER TABLE `core_hr_payroll_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_configs` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_invoice_details`
--

DROP TABLE IF EXISTS `core_hr_payroll_invoice_details`;
CREATE TABLE `core_hr_payroll_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_invoice_details`
--

/*!40000 ALTER TABLE `core_hr_payroll_invoice_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_invoices`
--

DROP TABLE IF EXISTS `core_hr_payroll_invoices`;
CREATE TABLE `core_hr_payroll_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `billed_at` datetime NOT NULL,
  `invoice_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_invoices`
--

/*!40000 ALTER TABLE `core_hr_payroll_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_invoices` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_item_types`
--

DROP TABLE IF EXISTS `core_hr_payroll_item_types`;
CREATE TABLE `core_hr_payroll_item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_item_types`
--

/*!40000 ALTER TABLE `core_hr_payroll_item_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_item_types` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_items`
--

DROP TABLE IF EXISTS `core_hr_payroll_items`;
CREATE TABLE `core_hr_payroll_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_items`
--

/*!40000 ALTER TABLE `core_hr_payroll_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_items` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_receipt_details`
--

DROP TABLE IF EXISTS `core_hr_payroll_receipt_details`;
CREATE TABLE `core_hr_payroll_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receipt_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_receipt_details`
--

/*!40000 ALTER TABLE `core_hr_payroll_receipt_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_receipts`
--

DROP TABLE IF EXISTS `core_hr_payroll_receipts`;
CREATE TABLE `core_hr_payroll_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `receipt_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_receipts`
--

/*!40000 ALTER TABLE `core_hr_payroll_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_receipts` ENABLE KEYS */;


--
-- Definition of table `core_hr_person_shifts`
--

DROP TABLE IF EXISTS `core_hr_person_shifts`;
CREATE TABLE `core_hr_person_shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `shift_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_person_shifts`
--

/*!40000 ALTER TABLE `core_hr_person_shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_person_shifts` ENABLE KEYS */;


--
-- Definition of table `core_hr_shifts`
--

DROP TABLE IF EXISTS `core_hr_shifts`;
CREATE TABLE `core_hr_shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `from_time` datetime NOT NULL,
  `to_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_shifts`
--

/*!40000 ALTER TABLE `core_hr_shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_shifts` ENABLE KEYS */;


--
-- Definition of table `core_invoice_details`
--

DROP TABLE IF EXISTS `core_invoice_details`;
CREATE TABLE `core_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `qty` float NOT NULL,
  `discount` float NOT NULL,
  `vat` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoice_details`
--

/*!40000 ALTER TABLE `core_invoice_details` DISABLE KEYS */;
INSERT INTO `core_invoice_details` (`id`,`invoice_id`,`product_id`,`price`,`qty`,`discount`,`vat`) VALUES 
 (1,5,1,299,3,0,0),
 (2,5,2,399,2,0,0),
 (3,6,50,100,1,0,0),
 (4,6,17,200,1,0,0),
 (5,7,50,467,1,0,0),
 (6,8,17,100,1,0,0),
 (7,9,56,100,4,0,0),
 (8,9,47,200,4,0,0),
 (9,11,47,3444,1,0,0),
 (10,11,52,3444,1,0,0),
 (11,13,52,544,1,0,0),
 (12,13,47,655,1,0,0),
 (13,15,47,655,1,0,0),
 (14,17,46,100,1,0,0),
 (15,17,52,20000,1,0,0),
 (16,19,47,100,1,0,0),
 (17,19,50,100,1,0,0),
 (18,21,17,5500,1,0,0),
 (19,21,47,100,1,0,0),
 (20,22,1,299,3,0,0),
 (21,22,2,399,2,0,0),
 (22,24,17,5500,1,0,0),
 (23,26,46,100,1,0,0),
 (24,26,50,100,1,0,0),
 (25,0,17,5500,1,0,0),
 (26,0,47,100,1,0,0),
 (27,27,17,5500,1,0,0),
 (28,27,47,100,1,0,0),
 (29,33,50,100,1,0,0),
 (30,34,46,100,1,0,0),
 (31,35,47,100,1,0,0),
 (32,35,50,100,1,0,0);
/*!40000 ALTER TABLE `core_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_invoices`
--

DROP TABLE IF EXISTS `core_invoices`;
CREATE TABLE `core_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `previous_due` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoices`
--

/*!40000 ALTER TABLE `core_invoices` DISABLE KEYS */;
INSERT INTO `core_invoices` (`id`,`customer_id`,`created_at`,`remark`,`payment_term`,`updated_at`,`invoice_total`,`paid_total`,`previous_due`) VALUES 
 (1,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (2,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (3,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (4,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (5,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (6,1,'0000-00-00 00:00:00','Na','','0000-00-00 00:00:00',0,0,0),
 (7,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',0,0,0),
 (8,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',100,100,0),
 (9,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1200,1200,0),
 (10,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (11,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',6888,6888,0),
 (12,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (13,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1199,1199,0),
 (15,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',655,655,0),
 (17,1,'2025-05-06 00:00:00','Na','CASH','2025-05-06 00:00:00',20100,20100,0),
 (18,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (19,8,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (20,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (21,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',5800,5800,0),
 (22,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (23,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (24,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11300,11300,0),
 (25,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (26,0,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (27,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (28,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (29,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (30,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (31,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (32,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (33,6,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',500,500,0),
 (34,10,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',100,100,0),
 (35,9,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0);
/*!40000 ALTER TABLE `core_invoices` ENABLE KEYS */;


--
-- Definition of table `core_job_batches`
--

DROP TABLE IF EXISTS `core_job_batches`;
CREATE TABLE `core_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_job_batches`
--

/*!40000 ALTER TABLE `core_job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_job_batches` ENABLE KEYS */;


--
-- Definition of table `core_jobs`
--

DROP TABLE IF EXISTS `core_jobs`;
CREATE TABLE `core_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_jobs`
--

/*!40000 ALTER TABLE `core_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_jobs` ENABLE KEYS */;


--
-- Definition of table `core_manufacturers`
--

DROP TABLE IF EXISTS `core_manufacturers`;
CREATE TABLE `core_manufacturers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_manufacturers`
--

/*!40000 ALTER TABLE `core_manufacturers` DISABLE KEYS */;
INSERT INTO `core_manufacturers` (`id`,`name`) VALUES 
 (1,'APCL'),
 (2,'ISL'),
 (3,'IDB');
/*!40000 ALTER TABLE `core_manufacturers` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_details`
--

DROP TABLE IF EXISTS `core_mfg_bom_details`;
CREATE TABLE `core_mfg_bom_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bom_id` int(10) unsigned NOT NULL DEFAULT 0,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` decimal(10,0) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_bom_details`
--

/*!40000 ALTER TABLE `core_mfg_bom_details` DISABLE KEYS */;
INSERT INTO `core_mfg_bom_details` (`id`,`bom_id`,`item_id`,`unit_id`,`qty`,`created_at`,`updated_at`,`price`) VALUES 
 (1,4,0,1,'779',NULL,NULL,377),
 (2,4,0,3,'662',NULL,NULL,501),
 (3,5,0,2,'95',NULL,NULL,747),
 (4,5,0,1,'861',NULL,NULL,893),
 (5,6,0,1,'306',NULL,NULL,806),
 (6,6,0,2,'939',NULL,NULL,796),
 (7,7,0,2,'856',NULL,NULL,124),
 (8,7,0,3,'772',NULL,NULL,861);
/*!40000 ALTER TABLE `core_mfg_bom_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_finished_goods`
--

DROP TABLE IF EXISTS `core_mfg_bom_finished_goods`;
CREATE TABLE `core_mfg_bom_finished_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_bom_finished_goods`
--

/*!40000 ALTER TABLE `core_mfg_bom_finished_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_bom_finished_goods` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_raw_materials`
--

DROP TABLE IF EXISTS `core_mfg_bom_raw_materials`;
CREATE TABLE `core_mfg_bom_raw_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  `bom_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_bom_raw_materials`
--

/*!40000 ALTER TABLE `core_mfg_bom_raw_materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_bom_raw_materials` ENABLE KEYS */;


--
-- Definition of table `core_mfg_boms`
--

DROP TABLE IF EXISTS `core_mfg_boms`;
CREATE TABLE `core_mfg_boms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bom_no` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT '',
  `product_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` varchar(45) NOT NULL,
  `labour_cost` float NOT NULL DEFAULT 0,
  `unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_boms`
--

/*!40000 ALTER TABLE `core_mfg_boms` DISABLE KEYS */;
INSERT INTO `core_mfg_boms` (`id`,`bom_no`,`name`,`product_id`,`qty`,`labour_cost`,`unit_id`) VALUES 
 (1,'100','T-Shirt',1,'100',2000,0),
 (2,'343','BM-3',47,'3',45,0),
 (3,'3532','BM93',47,'34',432,0),
 (4,'#BOM-03533','Xantha Beard',0,'0',29,0),
 (5,'#BOM-03533','Oliver Pace',0,'0',18,0),
 (6,'#BOM-03533','Jack Howard',0,'0',20,0),
 (7,'#BOM-03533','Rhea Murray',0,'0',99,0);
/*!40000 ALTER TABLE `core_mfg_boms` ENABLE KEYS */;


--
-- Definition of table `core_mfg_customers`
--

DROP TABLE IF EXISTS `core_mfg_customers`;
CREATE TABLE `core_mfg_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_customers`
--

/*!40000 ALTER TABLE `core_mfg_customers` DISABLE KEYS */;
INSERT INTO `core_mfg_customers` (`id`,`name`,`mobile`,`email`,`created_at`,`updated_at`,`address`,`photo`) VALUES 
 (1,'Tanmoy','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (3,'Niyamot','3434343','niyamot@yahoo.com','2023-12-05 16:27:19','2023-12-05 16:27:19','Mirpur','3.png'),
 (6,'Jahidul Islam','34324324','mehedihasandb0@gmail.com','2023-12-05 16:28:16','2023-12-05 16:28:16','333','beetroot-hummus-23bae4e-jpg.jpg'),
 (7,'Jahidul2','34324324','mehedihasandb0@gmail.com','2023-12-05 16:43:59','2023-12-05 16:43:59','343','7.jpg'),
 (8,'Mehedi3','34324324','mehedihasandb0@gmail.com','2023-12-05 16:31:09','2023-12-05 16:31:09','','34324324.jpg'),
 (9,'Sabbir Ahmed','34343434','sabbir3@gmail.com','2023-12-30 15:30:13','2023-12-30 15:30:13','NA',NULL),
 (10,'Abdur Rahman','35443434','abrahman@gmail.com','2023-12-30 15:32:00','2023-12-30 15:32:00','Rampua',NULL),
 (12,'Mahedi Hassanere','9433442sfds','mah3edi@gmail.com','2023-12-30 15:59:14','2023-12-30 15:59:14','NA',NULL),
 (15,'Siam','44444444','siam@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (21,'Laiju','123456778','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (25,'abc','0000','abc@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (28,'Md Salman Aisur Rahman','019886131','salman@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (29,'Atiquer Rahman','098563146','Atiqur@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (30,'razib','1222222','razijb@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (31,'','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (32,'Al AMin','96354965','Alamin@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (33,'Rahul ','8797446','Rahul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (34,'Laiju','98754324','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (35,'Engr. Naiiyem Hossain','12555555','naiyem@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `core_mfg_customers` ENABLE KEYS */;


--
-- Definition of table `core_mfg_departments`
--

DROP TABLE IF EXISTS `core_mfg_departments`;
CREATE TABLE `core_mfg_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_departments`
--

/*!40000 ALTER TABLE `core_mfg_departments` DISABLE KEYS */;
INSERT INTO `core_mfg_departments` (`id`,`code`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'10','Accounts',NULL,NULL),
 (2,'20','IT',NULL,NULL),
 (3,'30','HR',NULL,NULL),
 (4,'40','Sales and Marketing',NULL,NULL),
 (5,'45','Production','2025-07-21 05:16:30','2025-07-21 05:16:30'),
 (6,'50','Production Order','2025-07-21 05:17:35','2025-07-21 05:17:35'),
 (7,'15','Machine dep.','2025-07-21 05:18:28','2025-07-21 05:18:28');
/*!40000 ALTER TABLE `core_mfg_departments` ENABLE KEYS */;


--
-- Definition of table `core_mfg_employees`
--

DROP TABLE IF EXISTS `core_mfg_employees`;
CREATE TABLE `core_mfg_employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `role` varchar(45) NOT NULL DEFAULT '',
  `department_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_employees`
--

/*!40000 ALTER TABLE `core_mfg_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_employees` ENABLE KEYS */;


--
-- Definition of table `core_mfg_inventory_levels`
--

DROP TABLE IF EXISTS `core_mfg_inventory_levels`;
CREATE TABLE `core_mfg_inventory_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `warehouse_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_inventory_levels`
--

/*!40000 ALTER TABLE `core_mfg_inventory_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_inventory_levels` ENABLE KEYS */;


--
-- Definition of table `core_mfg_inventory_movement`
--

DROP TABLE IF EXISTS `core_mfg_inventory_movement`;
CREATE TABLE `core_mfg_inventory_movement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `movement_type` enum('IN','OUT') NOT NULL,
  `quantity` int(11) NOT NULL,
  `movement_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `core_mfg_inventory_movement_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_inventory_movement`
--

/*!40000 ALTER TABLE `core_mfg_inventory_movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_inventory_movement` ENABLE KEYS */;


--
-- Definition of table `core_mfg_inventory_transactions`
--

DROP TABLE IF EXISTS `core_mfg_inventory_transactions`;
CREATE TABLE `core_mfg_inventory_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trx_type` varchar(45) NOT NULL DEFAULT '',
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` decimal(10,0) NOT NULL DEFAULT 0,
  `source_type` varchar(45) NOT NULL DEFAULT '',
  `source_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_inventory_transactions`
--

/*!40000 ALTER TABLE `core_mfg_inventory_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_inventory_transactions` ENABLE KEYS */;


--
-- Definition of table `core_mfg_invoice_detials`
--

DROP TABLE IF EXISTS `core_mfg_invoice_detials`;
CREATE TABLE `core_mfg_invoice_detials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `unit` float NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_invoice_detials`
--

/*!40000 ALTER TABLE `core_mfg_invoice_detials` DISABLE KEYS */;
INSERT INTO `core_mfg_invoice_detials` (`id`,`invoice_id`,`service_id`,`unit`,`price`,`discount`,`vat`) VALUES 
 (1,3,1,1,1000,0,0),
 (2,3,2,1,2000,0,0),
 (3,4,1,1,1000,0,0),
 (4,4,2,1,2000,0,0),
 (5,5,2,1,3000,0,0),
 (6,5,3,1,6000,0,0),
 (7,6,2,1,3000,0,0),
 (8,6,3,1,6000,0,0);
/*!40000 ALTER TABLE `core_mfg_invoice_detials` ENABLE KEYS */;


--
-- Definition of table `core_mfg_invoices`
--

DROP TABLE IF EXISTS `core_mfg_invoices`;
CREATE TABLE `core_mfg_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `previous_due` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_invoices`
--

/*!40000 ALTER TABLE `core_mfg_invoices` DISABLE KEYS */;
INSERT INTO `core_mfg_invoices` (`id`,`customer_id`,`created_at`,`remark`,`payment_term`,`updated_at`,`invoice_total`,`paid_total`,`previous_due`) VALUES 
 (1,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (2,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (3,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (4,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (5,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (6,1,'0000-00-00 00:00:00','Na','','0000-00-00 00:00:00',0,0,0),
 (7,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',0,0,0),
 (8,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',100,100,0),
 (9,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1200,1200,0),
 (10,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (11,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',6888,6888,0),
 (12,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (13,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1199,1199,0),
 (15,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',655,655,0),
 (17,1,'2025-05-06 00:00:00','Na','CASH','2025-05-06 00:00:00',20100,20100,0),
 (18,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (19,8,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (20,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (21,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',5800,5800,0),
 (22,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (23,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (24,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11300,11300,0),
 (25,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (26,0,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (27,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (28,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (29,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (30,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (31,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (32,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (33,6,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',500,500,0),
 (34,10,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',100,100,0),
 (35,9,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0);
/*!40000 ALTER TABLE `core_mfg_invoices` ENABLE KEYS */;


--
-- Definition of table `core_mfg_items`
--

DROP TABLE IF EXISTS `core_mfg_items`;
CREATE TABLE `core_mfg_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_type` enum('raw','semi_finished','finished') NOT NULL DEFAULT 'raw',
  `unit_id` int(10) unsigned NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_code` (`item_code`),
  KEY `idx_unit_id` (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_items`
--

/*!40000 ALTER TABLE `core_mfg_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_items` ENABLE KEYS */;


--
-- Definition of table `core_mfg_jobs`
--

DROP TABLE IF EXISTS `core_mfg_jobs`;
CREATE TABLE `core_mfg_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_mfg_jobs`
--

/*!40000 ALTER TABLE `core_mfg_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_jobs` ENABLE KEYS */;


--
-- Definition of table `core_mfg_machine`
--

DROP TABLE IF EXISTS `core_mfg_machine`;
CREATE TABLE `core_mfg_machine` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `machine_name` varchar(100) NOT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL,
  `status` enum('active','inactive','maintenance','decommissioned') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_mfg_machine`
--

/*!40000 ALTER TABLE `core_mfg_machine` DISABLE KEYS */;
INSERT INTO `core_mfg_machine` (`id`,`machine_name`,`unit_id`,`status`,`created_at`,`updated_at`) VALUES 
 (1,'Cutting Machine A',1,'active','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (2,'Mixing Machine B',2,'maintenance','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (3,'Packing Machine C',1,'active','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (4,'Welding Machine D',3,'inactive','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (5,'Sealing Machine E',2,'decommissioned','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (6,'Filling Machine F',1,'active','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (7,'Drying Machine G',3,'maintenance','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (8,'Grinding Machine H',2,'active','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (9,'Sorting Machine I',1,'inactive','2025-07-21 12:58:41','2025-07-21 12:58:41'),
 (10,'Labeling Machine J',3,'active','2025-07-21 12:58:41','2025-07-21 12:58:41');
/*!40000 ALTER TABLE `core_mfg_machine` ENABLE KEYS */;


--
-- Definition of table `core_mfg_manufacturers`
--

DROP TABLE IF EXISTS `core_mfg_manufacturers`;
CREATE TABLE `core_mfg_manufacturers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_manufacturers`
--

/*!40000 ALTER TABLE `core_mfg_manufacturers` DISABLE KEYS */;
INSERT INTO `core_mfg_manufacturers` (`id`,`name`,`contact`) VALUES 
 (2,'ISL','2345454'),
 (3,'IDB','9390033'),
 (5,'APCL','23432432');
/*!40000 ALTER TABLE `core_mfg_manufacturers` ENABLE KEYS */;


--
-- Definition of table `core_mfg_money_receipt_details`
--

DROP TABLE IF EXISTS `core_mfg_money_receipt_details`;
CREATE TABLE `core_mfg_money_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money_receipt_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `vat` float NOT NULL,
  `discount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_money_receipt_details`
--

/*!40000 ALTER TABLE `core_mfg_money_receipt_details` DISABLE KEYS */;
INSERT INTO `core_mfg_money_receipt_details` (`id`,`money_receipt_id`,`product_id`,`price`,`qty`,`vat`,`discount`) VALUES 
 (1,1,36,100,1,0,0),
 (2,7,0,2500,2,0,0),
 (3,7,0,180,1,0,0),
 (4,7,0,999,1,0,0),
 (5,8,36,2500,1,0,0),
 (6,25,0,180,2,0,0),
 (7,25,0,999,1,0,0),
 (8,26,46,180,2,0,0),
 (9,26,47,999,1,0,0),
 (10,27,46,180,2,0,0),
 (11,27,47,999,1,0,0),
 (12,28,46,180,2,0,0),
 (13,28,47,999,1,0,0),
 (14,29,46,180,2,0,0),
 (15,29,47,999,1,0,0),
 (16,31,1,299,3,0,0),
 (17,31,2,399,2,0,0),
 (18,32,50,2000,0,0,0),
 (19,33,50,200,1,0,0),
 (20,34,50,200,1,0,0),
 (21,34,84,400,1,0,0),
 (22,35,50,300,1,0,0),
 (23,35,55,300,1,0,0),
 (24,36,87,200,1,0,0),
 (25,36,62,100,3,0,0),
 (26,37,50,355,1,0,0),
 (27,37,82,355,3,0,0),
 (28,38,57,300000,1,0,0),
 (29,39,50,323,1,0,0),
 (30,40,50,333,1,0,0);
/*!40000 ALTER TABLE `core_mfg_money_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_money_receipts`
--

DROP TABLE IF EXISTS `core_mfg_money_receipts`;
CREATE TABLE `core_mfg_money_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `receipt_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_money_receipts`
--

/*!40000 ALTER TABLE `core_mfg_money_receipts` DISABLE KEYS */;
INSERT INTO `core_mfg_money_receipts` (`id`,`created_at`,`updated_at`,`customer_id`,`remark`,`receipt_total`,`discount`,`vat`) VALUES 
 (28,'2024-01-03 13:07:18','2024-01-03 13:07:18',1,'',1426.95,NULL,NULL),
 (29,'2024-01-03 13:09:58','2024-01-03 13:09:58',1,'',1426.95,NULL,NULL),
 (30,'2025-04-12 18:42:59','2025-04-12 18:42:59',1,'Na',199,NULL,NULL),
 (31,'2025-04-12 18:45:44','2025-04-12 18:45:44',1,'Na',199,NULL,NULL),
 (32,'2025-04-13 09:03:47','2025-04-13 09:03:47',1,'Na',0,NULL,NULL),
 (33,'2025-04-13 09:08:55','2025-04-13 09:08:55',1,'Na',0,NULL,NULL),
 (34,'2025-04-13 09:09:46','2025-04-13 09:09:46',1,'Na',0,NULL,NULL),
 (35,'2025-04-13 09:11:19','2025-04-13 09:11:19',1,'Na',0,NULL,NULL),
 (36,'2025-04-13 10:14:53','2025-04-13 10:14:53',10,'Na',0,NULL,NULL),
 (37,'2025-04-13 12:36:04','2025-04-13 12:36:04',1,'Na',0,NULL,NULL),
 (38,'2025-04-13 13:43:22','2025-04-13 13:43:22',8,'Na',0,NULL,NULL),
 (39,'2025-04-13 18:26:18','2025-04-13 18:26:18',1,'Na',1000,NULL,NULL),
 (40,'2025-04-13 18:27:34','2025-04-13 18:27:34',1,'Na',333,NULL,NULL);
/*!40000 ALTER TABLE `core_mfg_money_receipts` ENABLE KEYS */;


--
-- Definition of table `core_mfg_order_details`
--

DROP TABLE IF EXISTS `core_mfg_order_details`;
CREATE TABLE `core_mfg_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_order_details`
--

/*!40000 ALTER TABLE `core_mfg_order_details` DISABLE KEYS */;
INSERT INTO `core_mfg_order_details` (`id`,`order_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (2,1,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (3,2,18,4,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (4,2,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (5,3,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (6,3,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (7,4,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (8,4,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (9,5,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (10,14,18,1,30,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (11,14,17,1,15,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (12,15,18,1,40,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (13,15,17,2,16,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (14,16,28,1,5000,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (15,16,29,1,342,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (16,17,29,1,342,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (17,17,28,1,5000,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (18,17,20,1,110,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (19,18,28,10,5000,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42'),
 (20,19,30,1,7999,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (21,19,31,1,4444,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (22,19,20,1,110,0,0,'2022-01-08 09:05:55','2022-01-08 09:05:55'),
 (23,20,29,1,342,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (24,20,20,1,110,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (25,20,30,1,7999,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (26,20,32,1,5555,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (27,21,29,1,342,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (28,21,28,1,5000,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (29,21,31,1,4444,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (30,21,32,2,5555,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (31,21,30,1,7999,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (32,21,20,1,110,0,0,'2022-01-08 09:07:28','2022-01-08 09:07:28'),
 (40,25,18,1,180,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (41,25,17,1,2500,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (42,26,18,1,180,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (43,26,17,1,2500,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (44,32,17,1,100,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03'),
 (45,33,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (46,34,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (47,35,17,5,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (48,36,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (49,37,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (50,37,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (51,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (52,40,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (53,40,0,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (54,40,0,1,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (55,40,0,1,1500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (56,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (57,40,0,1,50,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (58,40,0,1,10000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (59,40,0,1,12000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (60,40,0,1,450,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (61,40,0,1,23,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (62,40,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (63,40,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (64,40,0,1,850,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (65,40,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (66,40,0,1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (67,41,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (68,41,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (69,42,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (70,42,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (71,42,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (72,42,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (73,42,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (74,43,56,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (75,44,56,3,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (76,45,56,13,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (77,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (78,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_mfg_order_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_orders`
--

DROP TABLE IF EXISTS `core_mfg_orders`;
CREATE TABLE `core_mfg_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text DEFAULT NULL,
  `order_total` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT 1,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `table_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_orders`
--

/*!40000 ALTER TABLE `core_mfg_orders` DISABLE KEYS */;
INSERT INTO `core_mfg_orders` (`id`,`customer_id`,`order_date`,`delivery_date`,`shipping_address`,`order_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`,`table_id`) VALUES 
 (2,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (3,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (4,2,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (5,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (6,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,'',2,0,0,'2023-12-05 17:54:41','2023-12-05 17:54:41',0),
 (7,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,NULL,NULL,'2021-12-14 07:02:07','2021-12-14 07:02:07',0),
 (8,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:03:51','2021-12-14 07:03:51',0),
 (9,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:05:32','2021-12-14 07:05:32',0),
 (10,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:06:21','2021-12-14 07:06:21',0),
 (11,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:07:13','2021-12-14 07:07:13',0),
 (12,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:10:25','2021-12-14 07:10:25',0),
 (13,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:13:06','2021-12-14 07:13:06',0),
 (14,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27',0),
 (15,3,'2021-12-15 00:00:00','2021-12-15 00:00:00','Rampura',0,0,'Testing',1,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59',0),
 (16,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11',0),
 (17,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37',0),
 (18,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42',0),
 (19,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54',0),
 (20,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',3,0,0,'2023-12-05 18:07:44','2023-12-05 18:07:44',0),
 (21,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',4,0,0,'2023-12-05 18:06:48','2023-12-05 18:06:48',0),
 (22,8,'2023-12-24 00:00:00','2023-12-24 00:00:00','Mohammadpur',1636.95,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (23,1,'2023-12-27 00:00:00','2023-12-27 00:00:00','Rampura, Banasree',1426.95,0,'Na',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (24,4,'2024-01-03 00:00:00','2024-01-03 00:00:00','Dhanmondi, Dhaka',12304.95,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (25,1,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34',0),
 (26,2,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15',0),
 (27,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-05-12 11:46:43','2024-05-12 11:46:43',0),
 (28,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:18','2024-05-12 11:48:18',0),
 (29,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:50','2024-05-12 11:48:50',0),
 (30,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:54','2024-05-12 11:48:54',0),
 (31,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:57','2024-05-12 11:48:57',0),
 (32,1,'2024-05-14 00:00:00','2024-05-14 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03',0),
 (33,2,'2025-03-06 00:00:00','2025-03-06 00:00:00','',2625,0,'NA',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (34,2,'2025-03-10 00:00:00','2025-03-10 00:00:00','',21000,0,'Test3ddd',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (35,6,'2025-03-15 00:00:00','2025-03-15 00:00:00','',13125,0,'Test44444',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (36,3,'2025-03-17 00:00:00','2025-03-17 00:00:00','',2625,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (37,10,'2025-03-19 00:00:00','2025-03-19 00:00:00','',23625,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (38,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (39,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (40,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',60308.78,0,'ECommerce',1,1865.22,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (41,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',2910,0,'ECommerce',1,90,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (42,1,'2025-04-10 00:00:00','2025-04-10 00:00:00','Shipping address',9991.97,0,'ECommerce',1,309.03,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (43,3,'2025-04-10 00:00:00','2025-04-10 00:00:00','',525,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (44,0,'2025-04-10 00:00:00','1970-01-01 00:00:00','',1575,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (45,1,'2025-04-12 00:00:00','2025-04-12 00:00:00','',6825,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (46,1,'2025-04-19 00:00:00','2025-04-19 00:00:00','Shipping address',17460,0,'ECommerce',1,540,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `core_mfg_orders` ENABLE KEYS */;


--
-- Definition of table `core_mfg_positions`
--

DROP TABLE IF EXISTS `core_mfg_positions`;
CREATE TABLE `core_mfg_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `grade` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_positions`
--

/*!40000 ALTER TABLE `core_mfg_positions` DISABLE KEYS */;
INSERT INTO `core_mfg_positions` (`id`,`name`,`grade`,`department_id`) VALUES 
 (1,'Programmer',6,2),
 (2,'System Analyst',3,1);
/*!40000 ALTER TABLE `core_mfg_positions` ENABLE KEYS */;


--
-- Definition of table `core_mfg_product_category`
--

DROP TABLE IF EXISTS `core_mfg_product_category`;
CREATE TABLE `core_mfg_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_section_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_product_category`
--

/*!40000 ALTER TABLE `core_mfg_product_category` DISABLE KEYS */;
INSERT INTO `core_mfg_product_category` (`id`,`name`,`product_section_id`,`created_at`,`updated_at`) VALUES 
 (2,'Vegetables',3,'2022-01-11 12:46:24',NULL),
 (3,'Fish',3,'2022-01-11 12:46:24',NULL),
 (4,'Drugs',3,'2022-01-11 12:46:24',NULL),
 (6,'Computers, Tablets & Laptops',1,'2022-01-11 12:46:24',NULL),
 (7,'Mobile Phone',1,'2022-01-11 12:46:24',NULL),
 (8,'Sound & Vision',1,'2022-01-11 12:46:24',NULL),
 (9,'Women\'s',2,'2022-01-11 12:46:24',NULL),
 (10,'Men\'s',2,'2022-01-11 12:46:24',NULL),
 (11,'Kids',2,'2022-01-11 12:46:24',NULL),
 (12,'Cosmatics',4,'2022-01-11 12:46:24',NULL),
 (13,'T-Shirt',4,'2025-06-26 12:16:37','2025-06-26 06:16:37');
/*!40000 ALTER TABLE `core_mfg_product_category` ENABLE KEYS */;


--
-- Definition of table `core_mfg_product_categorys`
--

DROP TABLE IF EXISTS `core_mfg_product_categorys`;
CREATE TABLE `core_mfg_product_categorys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_section_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_product_categorys`
--

/*!40000 ALTER TABLE `core_mfg_product_categorys` DISABLE KEYS */;
INSERT INTO `core_mfg_product_categorys` (`id`,`name`,`product_section_id`,`created_at`,`updated_at`) VALUES 
 (2,'Vegetables',3,'2022-01-11 12:46:24',NULL),
 (3,'Fish',3,'2022-01-11 12:46:24',NULL),
 (4,'Drugs',3,'2022-01-11 12:46:24',NULL),
 (6,'Computers, Tablets & Laptops',1,'2022-01-11 12:46:24',NULL),
 (7,'Mobile Phone',1,'2022-01-11 12:46:24',NULL),
 (8,'Sound & Vision',1,'2022-01-11 12:46:24',NULL),
 (9,'Women\'s',2,'2022-01-11 12:46:24',NULL),
 (10,'Men\'s',2,'2022-01-11 12:46:24',NULL),
 (11,'Kids',2,'2022-01-11 12:46:24',NULL),
 (12,'Cosmatics',4,'2022-01-11 12:46:24',NULL),
 (13,'T-Shirt',4,'2025-06-26 12:16:37','2025-06-26 06:16:37');
/*!40000 ALTER TABLE `core_mfg_product_categorys` ENABLE KEYS */;


--
-- Definition of table `core_mfg_product_sections`
--

DROP TABLE IF EXISTS `core_mfg_product_sections`;
CREATE TABLE `core_mfg_product_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_product_sections`
--

/*!40000 ALTER TABLE `core_mfg_product_sections` DISABLE KEYS */;
INSERT INTO `core_mfg_product_sections` (`id`,`name`) VALUES 
 (1,'Electronices'),
 (2,'Clothings'),
 (3,'Food and Beverages'),
 (4,'Health & Beauty'),
 (5,'Sports & Leisure'),
 (6,'Books & Entertainments');
/*!40000 ALTER TABLE `core_mfg_product_sections` ENABLE KEYS */;


--
-- Definition of table `core_mfg_product_types`
--

DROP TABLE IF EXISTS `core_mfg_product_types`;
CREATE TABLE `core_mfg_product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_product_types`
--

/*!40000 ALTER TABLE `core_mfg_product_types` DISABLE KEYS */;
INSERT INTO `core_mfg_product_types` (`id`,`name`) VALUES 
 (1,'Finished Goods'),
 (2,'Raw Materials'),
 (3,'Consumable Materials');
/*!40000 ALTER TABLE `core_mfg_product_types` ENABLE KEYS */;


--
-- Definition of table `core_mfg_product_units`
--

DROP TABLE IF EXISTS `core_mfg_product_units`;
CREATE TABLE `core_mfg_product_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_product_units`
--

/*!40000 ALTER TABLE `core_mfg_product_units` DISABLE KEYS */;
INSERT INTO `core_mfg_product_units` (`id`,`name`,`photo`,`icon`) VALUES 
 (1,'Electronics',NULL,NULL),
 (2,'Grocery',NULL,NULL);
/*!40000 ALTER TABLE `core_mfg_product_units` ENABLE KEYS */;


--
-- Definition of table `core_mfg_production_details`
--

DROP TABLE IF EXISTS `core_mfg_production_details`;
CREATE TABLE `core_mfg_production_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_production_details`
--

/*!40000 ALTER TABLE `core_mfg_production_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_production_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_production_order_items`
--

DROP TABLE IF EXISTS `core_mfg_production_order_items`;
CREATE TABLE `core_mfg_production_order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_order_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` decimal(10,0) NOT NULL DEFAULT 0,
  `issued_dty` decimal(10,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_production_order_items`
--

/*!40000 ALTER TABLE `core_mfg_production_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_production_order_items` ENABLE KEYS */;


--
-- Definition of table `core_mfg_production_orders`
--

DROP TABLE IF EXISTS `core_mfg_production_orders`;
CREATE TABLE `core_mfg_production_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT 0,
  `order_no` decimal(10,0) NOT NULL DEFAULT 0,
  `planned_qty` decimal(10,0) NOT NULL DEFAULT 0,
  `scheduled_dates` datetime DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_production_orders`
--

/*!40000 ALTER TABLE `core_mfg_production_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_production_orders` ENABLE KEYS */;


--
-- Definition of table `core_mfg_productions`
--

DROP TABLE IF EXISTS `core_mfg_productions`;
CREATE TABLE `core_mfg_productions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL,
  `machine_id` bigint(20) unsigned DEFAULT NULL,
  `warhouse_id` bigint(20) unsigned DEFAULT NULL,
  `uom_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('planned','in_progress','completed','halted','cancelled') DEFAULT 'planned',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_mfg_productions`
--

/*!40000 ALTER TABLE `core_mfg_productions` DISABLE KEYS */;
INSERT INTO `core_mfg_productions` (`id`,`product_id`,`unit_id`,`machine_id`,`warhouse_id`,`uom_id`,`created_at`,`updated_at`,`status`) VALUES 
 (1,101,1,5,2,3,'2025-07-21 12:52:00','2025-07-21 12:52:00','planned'),
 (2,102,2,6,2,3,'2025-07-21 12:52:00','2025-07-21 12:52:00','in_progress'),
 (3,103,1,7,1,3,'2025-07-21 12:52:00','2025-07-21 12:52:00','completed'),
 (4,104,3,8,3,2,'2025-07-21 12:52:00','2025-07-21 12:52:00','halted'),
 (5,105,2,9,1,1,'2025-07-21 12:52:00','2025-07-21 12:52:00','cancelled'),
 (6,106,3,5,3,4,'2025-07-21 12:52:00','2025-07-21 12:52:00','planned'),
 (7,107,1,6,2,2,'2025-07-21 12:52:00','2025-07-21 12:52:00','in_progress'),
 (8,108,2,7,1,3,'2025-07-21 12:52:00','2025-07-21 12:52:00','completed'),
 (9,109,1,8,3,2,'2025-07-21 12:52:00','2025-07-21 12:52:00','planned'),
 (10,110,2,9,2,1,'2025-07-21 12:52:00','2025-07-21 12:52:00','halted');
/*!40000 ALTER TABLE `core_mfg_productions` ENABLE KEYS */;


--
-- Definition of table `core_mfg_products`
--

DROP TABLE IF EXISTS `core_mfg_products`;
CREATE TABLE `core_mfg_products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `offer_price` double DEFAULT NULL,
  `manufacturer_id` int(10) NOT NULL DEFAULT 0,
  `regular_price` double NOT NULL DEFAULT 0,
  `bom_id` int(10) unsigned zerofill DEFAULT NULL,
  `product_category_id` int(10) unsigned NOT NULL DEFAULT 0,
  `product_section_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_brand` tinyint(1) DEFAULT 0,
  `uom_id` int(10) unsigned NOT NULL DEFAULT 0,
  `weight` float DEFAULT NULL,
  `barcode` varchar(45) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `product_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  `product_unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_products`
--

/*!40000 ALTER TABLE `core_mfg_products` DISABLE KEYS */;
INSERT INTO `core_mfg_products` (`id`,`name`,`offer_price`,`manufacturer_id`,`regular_price`,`bom_id`,`product_category_id`,`product_section_id`,`is_featured`,`is_brand`,`uom_id`,`weight`,`barcode`,`created_at`,`updated_at`,`product_type_id`,`product_unit_id`) VALUES 
 (17,'Brown Borka',5500,1,1,0000000017,1,1,1,1,1,0,'294394','0000-00-00 00:00:00','2025-04-28 12:08:58',1,1),
 (46,'Shirt4',100,1,1,0000000046,1,1,1,1,1,0,'294394','2025-04-08 11:56:43','2025-04-28 12:05:52',1,1),
 (47,'Juta44',100,1,1,0000000047,1,1,0,0,1,200,'294394','2025-04-08 15:30:20','2025-04-28 12:06:07',1,1),
 (50,'Apple4rrr',100,1,1,0000000050,1,1,0,1,1,0,'294394','2025-03-10 15:42:45','2025-04-28 12:06:27',1,1),
 (52,'Oppo a3x',20000,1,23000,0000000000,7,1,1,1,1,3,'3434','2025-03-10 15:44:24','2025-03-10 15:44:24',2,1);
/*!40000 ALTER TABLE `core_mfg_products` ENABLE KEYS */;


--
-- Definition of table `core_mfg_purchase_details`
--

DROP TABLE IF EXISTS `core_mfg_purchase_details`;
CREATE TABLE `core_mfg_purchase_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_purchase_details`
--

/*!40000 ALTER TABLE `core_mfg_purchase_details` DISABLE KEYS */;
INSERT INTO `core_mfg_purchase_details` (`id`,`purchase_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,50,200,0,0,NULL,NULL),
 (2,1,18,30,250,0,0,NULL,NULL),
 (3,2,17,20,210,0,0,NULL,NULL),
 (4,2,40,70,240,0,0,NULL,NULL),
 (5,3,39,10,202,0,0,NULL,NULL),
 (6,4,40,30,300,0,0,NULL,NULL),
 (7,10,1,4,200,0,0,NULL,NULL),
 (8,15,18,1,180,0,0,NULL,NULL),
 (9,15,50,1,345,0,0,NULL,NULL),
 (10,15,17,1,2500,0,0,NULL,NULL),
 (11,16,50,1,345,0,0,NULL,NULL),
 (12,16,17,1,2500,0,0,NULL,NULL),
 (13,17,17,14,2500,0,0,NULL,NULL),
 (14,17,50,15,345,0,0,NULL,NULL),
 (15,50,52,6,19000,0,0,NULL,NULL),
 (16,51,17,3,4000,0,0,NULL,NULL),
 (17,51,52,1,4000,0,0,NULL,NULL),
 (18,52,56,100,20,0,0,NULL,NULL),
 (19,53,56,10,300,0,0,NULL,NULL),
 (20,54,46,604,174,83,87,'2025-07-12 05:57:35','2025-07-12 05:57:35'),
 (21,54,52,265,605,27,68,'2025-07-12 05:57:35','2025-07-12 05:57:35'),
 (22,55,46,604,174,83,87,'2025-07-12 05:58:38','2025-07-12 05:58:38'),
 (23,55,52,265,605,27,68,'2025-07-12 05:58:38','2025-07-12 05:58:38'),
 (24,56,46,587,36,16,57,'2025-07-12 06:04:54','2025-07-12 06:04:54'),
 (25,56,17,261,305,83,94,'2025-07-12 06:04:54','2025-07-12 06:04:54'),
 (26,57,52,420,771,8,97,'2025-07-12 06:06:56','2025-07-12 06:06:56'),
 (27,57,47,247,995,28,22,'2025-07-12 06:06:56','2025-07-12 06:06:56'),
 (28,58,17,728,851,72,16,'2025-07-12 06:37:42','2025-07-12 06:37:42'),
 (29,58,17,46,882,52,25,'2025-07-12 06:37:42','2025-07-12 06:37:42'),
 (30,59,52,388,627,90,69,'2025-07-12 06:38:07','2025-07-12 06:38:07'),
 (31,59,47,296,48,50,10,'2025-07-12 06:38:07','2025-07-12 06:38:07'),
 (32,60,50,390,841,93,30,'2025-07-12 06:42:53','2025-07-12 06:42:53'),
 (33,60,47,293,542,8,99,'2025-07-12 06:42:53','2025-07-12 06:42:53'),
 (34,60,47,636,963,34,94,'2025-07-12 06:42:53','2025-07-12 06:42:53'),
 (35,61,46,725,372,11,29,'2025-07-12 06:43:29','2025-07-12 06:43:29'),
 (36,61,52,140,796,13,22,'2025-07-12 06:43:29','2025-07-12 06:43:29'),
 (37,62,47,79,397,61,13,'2025-07-12 06:58:00','2025-07-12 06:58:00'),
 (38,63,17,253,656,96,49,'2025-07-13 03:23:15','2025-07-13 03:23:15'),
 (39,63,47,112,964,68,37,'2025-07-13 03:23:15','2025-07-13 03:23:15'),
 (40,64,46,604,174,83,87,'2025-07-13 05:06:37','2025-07-13 05:06:37'),
 (41,64,52,265,605,27,68,'2025-07-13 05:06:37','2025-07-13 05:06:37'),
 (42,65,50,409,334,91,73,'2025-07-15 03:45:02','2025-07-15 03:45:02'),
 (43,65,46,990,386,27,79,'2025-07-15 03:45:02','2025-07-15 03:45:02'),
 (44,66,47,709,24,18,100,'2025-07-16 05:52:04','2025-07-16 05:52:04'),
 (45,67,47,709,24,18,100,'2025-07-16 05:53:05','2025-07-16 05:53:05'),
 (46,68,47,709,24,18,100,'2025-07-16 05:53:35','2025-07-16 05:53:35'),
 (47,69,47,709,24,18,100,'2025-07-16 05:54:50','2025-07-16 05:54:50'),
 (48,70,47,709,24,18,100,'2025-07-16 05:55:35','2025-07-16 05:55:35'),
 (49,70,46,462,208,2,42,'2025-07-16 05:55:35','2025-07-16 05:55:35'),
 (50,71,46,984,33,43,68,'2025-07-16 05:58:35','2025-07-16 05:58:35'),
 (51,71,52,549,893,77,40,'2025-07-16 05:58:35','2025-07-16 05:58:35'),
 (52,72,17,462,773,56,38,'2025-07-16 06:03:01','2025-07-16 06:03:01'),
 (53,73,17,462,773,56,38,'2025-07-16 06:10:40','2025-07-16 06:10:40'),
 (54,73,46,604,348,93,56,'2025-07-16 06:10:40','2025-07-16 06:10:40'),
 (55,73,50,935,191,34,27,'2025-07-16 06:10:40','2025-07-16 06:10:40'),
 (56,74,1,475,206,43,39,'2025-07-17 06:20:27','2025-07-17 06:20:27'),
 (57,75,7,127,528,20,31,'2025-07-17 06:50:49','2025-07-17 06:50:49'),
 (58,75,9,878,279,89,65,'2025-07-17 06:50:49','2025-07-17 06:50:49'),
 (59,76,2,172,542,94,11,'2025-07-17 07:04:10','2025-07-17 07:04:10'),
 (60,77,2,172,542,94,11,'2025-07-17 07:04:54','2025-07-17 07:04:54'),
 (61,78,10,905,382,65,19,'2025-07-17 07:05:58','2025-07-17 07:05:58'),
 (62,78,7,588,886,45,12,'2025-07-17 07:05:58','2025-07-17 07:05:58'),
 (63,79,6,695,326,73,97,'2025-07-21 03:39:26','2025-07-21 03:39:26'),
 (64,79,6,242,330,60,80,'2025-07-21 03:39:26','2025-07-21 03:39:26'),
 (65,80,1,539,311,8,5,'2025-07-21 03:45:41','2025-07-21 03:45:41'),
 (66,80,6,225,734,76,63,'2025-07-21 03:45:41','2025-07-21 03:45:41'),
 (67,81,8,603,434,75,55,'2025-07-21 04:41:55','2025-07-21 04:41:55'),
 (68,81,4,446,865,31,84,'2025-07-21 04:41:55','2025-07-21 04:41:55'),
 (69,82,3,242,398,25,89,'2025-07-21 04:47:52','2025-07-21 04:47:52'),
 (70,82,9,242,398,25,89,'2025-07-21 04:47:52','2025-07-21 04:47:52'),
 (71,82,5,242,398,25,89,'2025-07-21 04:47:52','2025-07-21 04:47:52'),
 (72,82,2,756,82,82,40,'2025-07-21 04:47:52','2025-07-21 04:47:52');
/*!40000 ALTER TABLE `core_mfg_purchase_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_purchase_stocks`
--

DROP TABLE IF EXISTS `core_mfg_purchase_stocks`;
CREATE TABLE `core_mfg_purchase_stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(10) unsigned NOT NULL DEFAULT 0,
  `item_id` int(10) unsigned NOT NULL DEFAULT 0,
  `warehouse_id` int(10) unsigned NOT NULL DEFAULT 0,
  `unit_id` int(10) unsigned NOT NULL DEFAULT 0,
  `qty` varchar(45) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_purchase_stocks`
--

/*!40000 ALTER TABLE `core_mfg_purchase_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_purchase_stocks` ENABLE KEYS */;


--
-- Definition of table `core_mfg_purchases`
--

DROP TABLE IF EXISTS `core_mfg_purchases`;
CREATE TABLE `core_mfg_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(10) unsigned NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text NOT NULL,
  `purchase_total` double NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_purchases`
--

/*!40000 ALTER TABLE `core_mfg_purchases` DISABLE KEYS */;
INSERT INTO `core_mfg_purchases` (`id`,`supplier_id`,`purchase_date`,`delivery_date`,`shipping_address`,`purchase_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`) VALUES 
 (60,15,'2025-07-12 00:00:00','2013-04-22 00:00:00','Occaecat dignissimos',486682,486682,'Dignissimos labore e',1,86,0,'2025-07-12 06:42:53','2025-07-12 06:42:53'),
 (61,36,'2025-07-12 00:00:00','2013-11-04 00:00:00','Ex non irure eaque e',381100,381100,'Magni aperiam eius d',1,13,0,'2025-07-12 06:43:29','2025-07-12 06:43:29'),
 (62,1,'2025-07-12 00:00:00','1983-07-11 00:00:00','Perspiciatis atque',31400,31400,'Veniam minim ipsam',1,11,0,'2025-07-12 06:58:00','2025-07-12 06:58:00'),
 (63,4,'2025-07-13 00:00:00','1983-09-19 00:00:00','Officia nesciunt do',274000,274000,'Saepe aliquam nihil',1,14,0,'2025-07-13 03:23:15','2025-07-13 03:23:15'),
 (64,10,'2025-07-13 00:00:00','1982-04-05 00:00:00','Fugiat minima molli',264646,264646,NULL,1,NULL,0,'2025-07-13 05:06:37','2025-07-13 05:06:37'),
 (65,1,'2025-07-15 00:00:00','1994-06-19 00:00:00','Enim sit est volupt',518700,518700,'Est ab culpa corpori',1,12,0,'2025-07-15 03:45:02','2025-07-15 03:45:02'),
 (66,21,'2025-07-16 00:00:00','2016-01-19 00:00:00','Dolores soluta repud',112940,112940,'Suscipit temporibus',1,50,0,'2025-07-16 05:52:04','2025-07-16 05:52:04'),
 (67,21,'2025-07-16 00:00:00','2016-01-19 00:00:00','Dolores soluta repud',112940,112940,'Suscipit temporibus',1,50,0,'2025-07-16 05:53:05','2025-07-16 05:53:05'),
 (68,21,'2025-07-16 00:00:00','2016-01-19 00:00:00','Dolores soluta repud',112940,112940,'Suscipit temporibus',1,50,0,'2025-07-16 05:53:35','2025-07-16 05:53:35'),
 (69,21,'2025-07-16 00:00:00','2016-01-19 00:00:00','Dolores soluta repud',112940,112940,'Suscipit temporibus',1,50,0,'2025-07-16 05:54:50','2025-07-16 05:54:50'),
 (70,21,'2025-07-16 00:00:00','2016-01-19 00:00:00','Dolores soluta repud',112940,112940,'Suscipit temporibus',1,50,0,'2025-07-16 05:55:35','2025-07-16 05:55:35'),
 (71,22,'2025-07-16 00:00:00','2015-01-27 00:00:00','Perspiciatis volupt',522741,522741,'Eius culpa pariatur',1,0,0,'2025-07-16 05:58:35','2025-07-16 05:58:35'),
 (72,15,'2025-07-16 00:00:00','2020-03-28 00:00:00','Quas quisquam commod',-84,-84,'Dolore deleniti est',1,84,0,'2025-07-16 06:03:01','2025-07-16 06:03:01'),
 (73,24,'2025-07-16 00:00:00','1998-04-11 00:00:00','Ad earum aute eos l',745900,745900,'Eaque delectus mini',1,65,0,'2025-07-16 06:10:40','2025-07-16 06:10:40'),
 (74,24,'2025-07-17 00:00:00','1995-09-02 00:00:00','Itaque occaecat duis',97534,97534,'Eum deserunt est odi',1,320,0,'2025-07-17 06:20:27','2025-07-17 06:20:27'),
 (75,36,'2025-07-17 00:00:00','2024-08-14 00:00:00','Nulla accusantium es',312001,312001,'Facilis laboris sapi',1,30,0,'2025-07-17 06:50:49','2025-07-17 06:50:49'),
 (76,24,'2025-07-17 00:00:00','2000-03-25 00:00:00','Ad ut elit sed est',675040,675040,'Recusandae Cupidata',1,980,0,'2025-07-17 07:04:10','2025-07-17 07:04:10'),
 (77,24,'2025-07-17 00:00:00','2000-03-25 00:00:00','Ad ut elit sed est',675040,675040,'Recusandae Cupidata',1,980,0,'2025-07-17 07:04:53','2025-07-17 07:04:53'),
 (78,15,'2025-07-17 00:00:00','1993-03-17 00:00:00','Vel debitis debitis',345691,345691,'At magna aut laudant',1,65,0,'2025-07-17 07:05:58','2025-07-17 07:05:58'),
 (79,10,'2025-07-21 00:00:00','2014-11-25 00:00:00','Adipisicing veritati',306300,306300,'Nulla nisi facere ni',1,86,0,'2025-07-21 03:39:25','2025-07-21 03:39:25'),
 (80,15,'2025-07-21 00:00:00','1990-01-20 00:00:00','Exercitationem quae',167582,167582,'Amet et ex eligendi',1,50,0,'2025-07-21 03:45:41','2025-07-21 03:45:41'),
 (81,15,'2025-07-21 00:00:00','2017-08-27 00:00:00','Qui lorem officiis s',647387,647387,'Id perspiciatis et',1,72,0,'2025-07-21 04:41:55','2025-07-21 04:41:55'),
 (82,1,'2025-07-21 00:00:00','1989-05-06 00:00:00','In inventore autem e',350770,350770,'Quia ut minus at des',1,20,0,'2025-07-21 04:47:52','2025-07-21 04:47:52');
/*!40000 ALTER TABLE `core_mfg_purchases` ENABLE KEYS */;


--
-- Definition of table `core_mfg_raw_materials`
--

DROP TABLE IF EXISTS `core_mfg_raw_materials`;
CREATE TABLE `core_mfg_raw_materials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_mfg_raw_materials`
--

/*!40000 ALTER TABLE `core_mfg_raw_materials` DISABLE KEYS */;
INSERT INTO `core_mfg_raw_materials` (`id`,`name`,`code`,`description`,`unit_id`,`category_id`,`created_at`,`updated_at`) VALUES 
 (1,'Sugar','RM-SUG-001','Granulated white sugar used as a sweetener.',1,1,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (2,'Wheat Flour','RM-WFL-002','Refined wheat flour for baking.',1,2,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (3,'Milk Powder','RM-MIL-003','Dehydrated milk used in dairy-based products.',1,3,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (4,'Citric Acid','RM-CIT-004','Acidulant used in beverages and preservation.',1,4,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (5,'Vanilla Essence','RM-VAN-005','Flavoring agent used in desserts and beverages.',2,5,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (6,'Salt','RM-SAL-006','Common salt for seasoning and preservation.',1,1,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (7,'Cocoa Powder','RM-COC-007','Used in chocolate-flavored products.',1,6,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (8,'Yeast','RM-YES-008','Used for fermentation in baking and brewing.',1,7,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (9,'Vegetable Oil','RM-OIL-009','Sunflower oil for frying and processing.',2,2,'2025-07-16 13:11:31','2025-07-16 13:11:31'),
 (10,'Sodium Benzoate','RM-SOD-010','Preservative used in beverages.',1,4,'2025-07-16 13:11:31','2025-07-16 13:11:31');
/*!40000 ALTER TABLE `core_mfg_raw_materials` ENABLE KEYS */;


--
-- Definition of table `core_mfg_sales_invoices`
--

DROP TABLE IF EXISTS `core_mfg_sales_invoices`;
CREATE TABLE `core_mfg_sales_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) DEFAULT 0.00,
  `tax` decimal(12,2) DEFAULT 0.00,
  `grand_total` decimal(12,2) NOT NULL,
  `status` enum('draft','approved','paid','cancelled') DEFAULT 'draft',
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_sales_invoices`
--

/*!40000 ALTER TABLE `core_mfg_sales_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_sales_invoices` ENABLE KEYS */;


--
-- Definition of table `core_mfg_services`
--

DROP TABLE IF EXISTS `core_mfg_services`;
CREATE TABLE `core_mfg_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `regular_price` float DEFAULT 0,
  `offer_price` float DEFAULT 0,
  `icon` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_services`
--

/*!40000 ALTER TABLE `core_mfg_services` DISABLE KEYS */;
INSERT INTO `core_mfg_services` (`id`,`name`,`category_id`,`description`,`regular_price`,`offer_price`,`icon`,`inactive`,`photo`) VALUES 
 (1,'Software Quality Assurance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863121.png'),
 (2,'Software forensic',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863180.png'),
 (3,'Database Migration',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863362.png'),
 (4,'Setup Own Hosting',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863484.png'),
 (5,'Cloud Backup Service',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greate',0,0,NULL,0,'1548862800.png'),
 (6,'Software Upgrade and Maintenance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863512.png'),
 (7,'Incredibly Responsive',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-laptop v-icon\"></i>',0,NULL),
 (8,'Fully Customizible',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-leaf v-icon\"></i>',0,NULL),
 (9,'Interactive Elements',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-scissors v-icon\"></i>',0,NULL);
/*!40000 ALTER TABLE `core_mfg_services` ENABLE KEYS */;


--
-- Definition of table `core_mfg_sessions`
--

DROP TABLE IF EXISTS `core_mfg_sessions`;
CREATE TABLE `core_mfg_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_sessions_user_id_index` (`user_id`),
  KEY `core_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_mfg_sessions`
--

/*!40000 ALTER TABLE `core_mfg_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_sessions` ENABLE KEYS */;


--
-- Definition of table `core_mfg_statuses`
--

DROP TABLE IF EXISTS `core_mfg_statuses`;
CREATE TABLE `core_mfg_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL COMMENT 'e.g., production, purchase, sales, inventory',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_statuses`
--

/*!40000 ALTER TABLE `core_mfg_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_statuses` ENABLE KEYS */;


--
-- Definition of table `core_mfg_stock_adjustment_details`
--

DROP TABLE IF EXISTS `core_mfg_stock_adjustment_details`;
CREATE TABLE `core_mfg_stock_adjustment_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_stock_adjustment_details`
--

/*!40000 ALTER TABLE `core_mfg_stock_adjustment_details` DISABLE KEYS */;
INSERT INTO `core_mfg_stock_adjustment_details` (`id`,`adjustment_id`,`product_id`,`qty`,`price`) VALUES 
 (1,2,20,5,400),
 (2,3,20,50,400),
 (3,4,28,70,6650),
 (4,4,20,30,300);
/*!40000 ALTER TABLE `core_mfg_stock_adjustment_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_stock_adjustment_types`
--

DROP TABLE IF EXISTS `core_mfg_stock_adjustment_types`;
CREATE TABLE `core_mfg_stock_adjustment_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `factor` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_stock_adjustment_types`
--

/*!40000 ALTER TABLE `core_mfg_stock_adjustment_types` DISABLE KEYS */;
INSERT INTO `core_mfg_stock_adjustment_types` (`id`,`name`,`factor`) VALUES 
 (1,'Is Outdated',-1),
 (2,'Is Damaged',-1),
 (3,'Material Missing',-1),
 (4,'Product Is Obsolete',-1),
 (5,'Existing Inventory',1),
 (6,'Fixed/Found Inventory',1);
/*!40000 ALTER TABLE `core_mfg_stock_adjustment_types` ENABLE KEYS */;


--
-- Definition of table `core_mfg_stock_adjustments`
--

DROP TABLE IF EXISTS `core_mfg_stock_adjustments`;
CREATE TABLE `core_mfg_stock_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) unsigned NOT NULL,
  `remark` text NOT NULL,
  `adjustment_type_id` int(10) unsigned NOT NULL,
  `werehouse_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_stock_adjustments`
--

/*!40000 ALTER TABLE `core_mfg_stock_adjustments` DISABLE KEYS */;
INSERT INTO `core_mfg_stock_adjustments` (`id`,`adjustment_at`,`user_id`,`remark`,`adjustment_type_id`,`werehouse_id`) VALUES 
 (1,'2021-12-28 00:00:00',1,'ddd',2,1),
 (2,'2021-12-28 00:00:00',1,'ddd',2,1),
 (3,'2021-12-28 00:00:00',1,'ddddfd',6,1),
 (4,'2021-12-28 00:00:00',1,'NA',6,2);
/*!40000 ALTER TABLE `core_mfg_stock_adjustments` ENABLE KEYS */;


--
-- Definition of table `core_mfg_stocks`
--

DROP TABLE IF EXISTS `core_mfg_stocks`;
CREATE TABLE `core_mfg_stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `transaction_type_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warehouse_id` int(10) unsigned NOT NULL,
  `product_type` varchar(45) NOT NULL DEFAULT '',
  `product_name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_stocks`
--

/*!40000 ALTER TABLE `core_mfg_stocks` DISABLE KEYS */;
INSERT INTO `core_mfg_stocks` (`id`,`product_id`,`qty`,`transaction_type_id`,`remark`,`created_at`,`warehouse_id`,`product_type`,`product_name`) VALUES 
 (54,10,0,1,'At magna aut laudant','2025-07-17 13:09:50',1,'Raw Materials','Sodium Benzoate'),
 (55,7,588,1,'At magna aut laudant','2025-07-17 07:05:58',1,'Raw Materials','Cocoa Powder'),
 (56,6,695,1,'Nulla nisi facere ni','2025-07-21 03:39:26',1,'Raw Materials','Salt'),
 (57,6,242,1,'Nulla nisi facere ni','2025-07-21 03:39:26',1,'Raw Materials','Salt'),
 (58,50,85,59,'Dolor quis corrupti','2025-07-21 09:40:19',3,'Reprehenderit volupt','Chiquita Cardenas'),
 (59,1,539,1,'Amet et ex eligendi','2025-07-21 03:45:41',1,'Raw Materials','Sugar'),
 (60,6,225,1,'Amet et ex eligendi','2025-07-21 03:45:41',1,'Raw Materials','Salt'),
 (61,8,603,1,'Id perspiciatis et','2025-07-21 04:41:55',1,'Raw Materials','Yeast'),
 (62,4,446,1,'Id perspiciatis et','2025-07-21 04:41:55',1,'Raw Materials','Citric Acid'),
 (63,3,242,1,'Quia ut minus at des','2025-07-21 04:47:52',1,'Raw Materials','Milk Powder'),
 (64,9,242,1,'Quia ut minus at des','2025-07-21 04:47:52',1,'Raw Materials','Vegetable Oil'),
 (65,5,242,1,'Quia ut minus at des','2025-07-21 04:47:52',1,'Raw Materials','Vanilla Essence'),
 (66,2,756,1,'Quia ut minus at des','2025-07-21 04:47:52',1,'Raw Materials','Wheat Flour');
/*!40000 ALTER TABLE `core_mfg_stocks` ENABLE KEYS */;


--
-- Definition of table `core_mfg_suppliers`
--

DROP TABLE IF EXISTS `core_mfg_suppliers`;
CREATE TABLE `core_mfg_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Definition of table `core_mfg_units`
--

DROP TABLE IF EXISTS `core_mfg_units`;
CREATE TABLE `core_mfg_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `abbreviation` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `item_categories` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_units`
--

/*!40000 ALTER TABLE `core_mfg_units` DISABLE KEYS */;
INSERT INTO `core_mfg_units` (`id`,`name`,`abbreviation`,`created_at`,`updated_at`,`item_categories`) VALUES 
 (4,'Kilogram','KG','2025-07-21 04:50:29','2025-07-21 04:50:29','Solid'),
 (5,'Visitable Oli','Liter','2025-07-21 04:52:47','2025-07-21 05:01:38','liquate'),
 (6,'Suger','KG','2025-07-21 05:02:25','2025-07-21 05:02:25','Solid'),
 (7,'Wheat Flour','KG','2025-07-21 05:05:12','2025-07-21 05:05:12','Solid'),
 (8,'Milk Powder','KG','2025-07-21 05:05:29','2025-07-21 05:05:29','Solid'),
 (9,'Citric Acid','Gram','2025-07-21 05:06:01','2025-07-21 05:06:01','Solid'),
 (10,'Vanilla Essence','Gram','2025-07-21 05:06:35','2025-07-21 05:06:35','Solid'),
 (11,'Salt','KG','2025-07-21 05:06:50','2025-07-21 05:06:50','Solid'),
 (12,'Cocoa Powder','Gram','2025-07-21 05:07:11','2025-07-21 05:07:11','Solid'),
 (13,'Yeast','Gram','2025-07-21 05:07:28','2025-07-21 05:07:28','Solid'),
 (14,'Vegetable Oil','Liter','2025-07-21 05:08:06','2025-07-21 05:08:06','Liquate'),
 (15,'Sodium Benzoate','Gram','2025-07-21 05:08:30','2025-07-21 05:08:30','Solid');
/*!40000 ALTER TABLE `core_mfg_units` ENABLE KEYS */;


--
-- Definition of table `core_mfg_uoms`
--

DROP TABLE IF EXISTS `core_mfg_uoms`;
CREATE TABLE `core_mfg_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_uoms`
--

/*!40000 ALTER TABLE `core_mfg_uoms` DISABLE KEYS */;
INSERT INTO `core_mfg_uoms` (`id`,`name`) VALUES 
 (1,'Piece'),
 (2,'Kg'),
 (3,'Pack'),
 (4,'Litter'),
 (5,'Gram'),
 (6,'Ton'),
 (7,'Box3'),
 (8,'Blister'),
 (9,'Blister2'),
 (10,'NewOne'),
 (11,'NewOne'),
 (12,'NewOne'),
 (13,'NewOne'),
 (14,'NewOne'),
 (15,'NewOne');
/*!40000 ALTER TABLE `core_mfg_uoms` ENABLE KEYS */;


--
-- Definition of table `core_mfg_vendors`
--

DROP TABLE IF EXISTS `core_mfg_vendors`;
CREATE TABLE `core_mfg_vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_vendors`
--

/*!40000 ALTER TABLE `core_mfg_vendors` DISABLE KEYS */;
INSERT INTO `core_mfg_vendors` (`id`,`name`,`mobile`,`photo`,`address`) VALUES 
 (1,'Abdur Rahman','23432432','1.jpeg','Testsa fsa fsdaf'),
 (2,'Jahidul Islam','23432432342','2.png','Test');
/*!40000 ALTER TABLE `core_mfg_vendors` ENABLE KEYS */;


--
-- Definition of table `core_mfg_warehouses`
--

DROP TABLE IF EXISTS `core_mfg_warehouses`;
CREATE TABLE `core_mfg_warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(45) NOT NULL DEFAULT '',
  `city` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_warehouses`
--

/*!40000 ALTER TABLE `core_mfg_warehouses` DISABLE KEYS */;
INSERT INTO `core_mfg_warehouses` (`id`,`manager_name`,`city`,`contact`) VALUES 
 (1,'Tajgon','Dhaka','4543534534'),
 (2,'Rangpur','Rangpur','324242342'),
 (3,'Badda','Rampura','3434334324');
/*!40000 ALTER TABLE `core_mfg_warehouses` ENABLE KEYS */;


--
-- Definition of table `core_migrations`
--

DROP TABLE IF EXISTS `core_migrations`;
CREATE TABLE `core_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_migrations`
--

/*!40000 ALTER TABLE `core_migrations` DISABLE KEYS */;
INSERT INTO `core_migrations` (`id`,`migration`,`batch`) VALUES 
 (6,'2014_10_12_000000_create_users_table',1),
 (7,'2014_10_12_100000_create_password_reset_tokens_table',1),
 (8,'2014_10_12_100000_create_password_resets_table',1),
 (9,'2019_08_19_000000_create_failed_jobs_table',1),
 (10,'2019_12_14_000001_create_personal_access_tokens_table',1),
 (17,'2024_07_02_044553_create_personal_access_tokens_table',3),
 (18,'0001_01_01_000000_create_users_table',4),
 (19,'0001_01_01_000001_create_cache_table',4),
 (20,'0001_01_01_000002_create_jobs_table',4);
/*!40000 ALTER TABLE `core_migrations` ENABLE KEYS */;


--
-- Definition of table `core_money_receipt_details`
--

DROP TABLE IF EXISTS `core_money_receipt_details`;
CREATE TABLE `core_money_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money_receipt_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `vat` float NOT NULL,
  `discount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipt_details`
--

/*!40000 ALTER TABLE `core_money_receipt_details` DISABLE KEYS */;
INSERT INTO `core_money_receipt_details` (`id`,`money_receipt_id`,`product_id`,`price`,`qty`,`vat`,`discount`) VALUES 
 (1,1,36,100,1,0,0),
 (2,7,0,2500,2,0,0),
 (3,7,0,180,1,0,0),
 (4,7,0,999,1,0,0),
 (5,8,36,2500,1,0,0),
 (6,25,0,180,2,0,0),
 (7,25,0,999,1,0,0),
 (8,26,46,180,2,0,0),
 (9,26,47,999,1,0,0),
 (10,27,46,180,2,0,0),
 (11,27,47,999,1,0,0),
 (12,28,46,180,2,0,0),
 (13,28,47,999,1,0,0),
 (14,29,46,180,2,0,0),
 (15,29,47,999,1,0,0),
 (16,31,1,299,3,0,0),
 (17,31,2,399,2,0,0),
 (18,32,50,2000,0,0,0),
 (19,33,50,200,1,0,0),
 (20,34,50,200,1,0,0),
 (21,34,84,400,1,0,0),
 (22,35,50,300,1,0,0),
 (23,35,55,300,1,0,0),
 (24,36,87,200,1,0,0),
 (25,36,62,100,3,0,0),
 (26,37,50,355,1,0,0),
 (27,37,82,355,3,0,0),
 (28,38,57,300000,1,0,0),
 (29,39,50,323,1,0,0),
 (30,40,50,333,1,0,0);
/*!40000 ALTER TABLE `core_money_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_money_receipts`
--

DROP TABLE IF EXISTS `core_money_receipts`;
CREATE TABLE `core_money_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `receipt_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipts`
--

/*!40000 ALTER TABLE `core_money_receipts` DISABLE KEYS */;
INSERT INTO `core_money_receipts` (`id`,`created_at`,`updated_at`,`customer_id`,`remark`,`receipt_total`,`discount`,`vat`) VALUES 
 (28,'2024-01-03 13:07:18','2024-01-03 13:07:18',1,'',1426.95,NULL,NULL),
 (29,'2024-01-03 13:09:58','2024-01-03 13:09:58',1,'',1426.95,NULL,NULL),
 (30,'2025-04-12 18:42:59','2025-04-12 18:42:59',1,'Na',199,NULL,NULL),
 (31,'2025-04-12 18:45:44','2025-04-12 18:45:44',1,'Na',199,NULL,NULL),
 (32,'2025-04-13 09:03:47','2025-04-13 09:03:47',1,'Na',0,NULL,NULL),
 (33,'2025-04-13 09:08:55','2025-04-13 09:08:55',1,'Na',0,NULL,NULL),
 (34,'2025-04-13 09:09:46','2025-04-13 09:09:46',1,'Na',0,NULL,NULL),
 (35,'2025-04-13 09:11:19','2025-04-13 09:11:19',1,'Na',0,NULL,NULL),
 (36,'2025-04-13 10:14:53','2025-04-13 10:14:53',10,'Na',0,NULL,NULL),
 (37,'2025-04-13 12:36:04','2025-04-13 12:36:04',1,'Na',0,NULL,NULL),
 (38,'2025-04-13 13:43:22','2025-04-13 13:43:22',8,'Na',0,NULL,NULL),
 (39,'2025-04-13 18:26:18','2025-04-13 18:26:18',1,'Na',1000,NULL,NULL),
 (40,'2025-04-13 18:27:34','2025-04-13 18:27:34',1,'Na',333,NULL,NULL);
/*!40000 ALTER TABLE `core_money_receipts` ENABLE KEYS */;


--
-- Definition of table `core_notifications`
--

DROP TABLE IF EXISTS `core_notifications`;
CREATE TABLE `core_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `car_user_id` (`car_user_id`),
  CONSTRAINT `core_notifications_ibfk_1` FOREIGN KEY (`car_user_id`) REFERENCES `core_car_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_notifications`
--

/*!40000 ALTER TABLE `core_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_notifications` ENABLE KEYS */;


--
-- Definition of table `core_order_details`
--

DROP TABLE IF EXISTS `core_order_details`;
CREATE TABLE `core_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_order_details`
--

/*!40000 ALTER TABLE `core_order_details` DISABLE KEYS */;
INSERT INTO `core_order_details` (`id`,`order_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (2,1,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (3,2,18,4,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (4,2,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (5,3,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (6,3,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (7,4,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (8,4,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (9,5,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (10,14,18,1,30,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (11,14,17,1,15,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (12,15,18,1,40,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (13,15,17,2,16,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (14,16,28,1,5000,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (15,16,29,1,342,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (16,17,29,1,342,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (17,17,28,1,5000,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (18,17,20,1,110,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (19,18,28,10,5000,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42'),
 (20,19,30,1,7999,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (21,19,31,1,4444,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (22,19,20,1,110,0,0,'2022-01-08 09:05:55','2022-01-08 09:05:55'),
 (23,20,29,1,342,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (24,20,20,1,110,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (25,20,30,1,7999,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (26,20,32,1,5555,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (27,21,29,1,342,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (28,21,28,1,5000,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (29,21,31,1,4444,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (30,21,32,2,5555,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (31,21,30,1,7999,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (32,21,20,1,110,0,0,'2022-01-08 09:07:28','2022-01-08 09:07:28'),
 (40,25,18,1,180,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (41,25,17,1,2500,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (42,26,18,1,180,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (43,26,17,1,2500,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (44,32,17,1,100,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03'),
 (45,33,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (46,34,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (47,35,17,5,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (48,36,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (49,37,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (50,37,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (51,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (52,40,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (53,40,0,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (54,40,0,1,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (55,40,0,1,1500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (56,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (57,40,0,1,50,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (58,40,0,1,10000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (59,40,0,1,12000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (60,40,0,1,450,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (61,40,0,1,23,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (62,40,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (63,40,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (64,40,0,1,850,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (65,40,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (66,40,0,1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (67,41,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (68,41,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (69,42,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (70,42,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (71,42,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (72,42,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (73,42,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (74,43,56,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (75,44,56,3,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (76,45,56,13,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (77,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (78,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_order_details` ENABLE KEYS */;


--
-- Definition of table `core_orders`
--

DROP TABLE IF EXISTS `core_orders`;
CREATE TABLE `core_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text DEFAULT NULL,
  `order_total` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT 1,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `table_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_orders`
--

/*!40000 ALTER TABLE `core_orders` DISABLE KEYS */;
INSERT INTO `core_orders` (`id`,`customer_id`,`order_date`,`delivery_date`,`shipping_address`,`order_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`,`table_id`) VALUES 
 (2,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (3,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (4,2,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (5,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (6,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,'',2,0,0,'2023-12-05 17:54:41','2023-12-05 17:54:41',0),
 (7,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,NULL,NULL,'2021-12-14 07:02:07','2021-12-14 07:02:07',0),
 (8,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:03:51','2021-12-14 07:03:51',0),
 (9,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:05:32','2021-12-14 07:05:32',0),
 (10,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:06:21','2021-12-14 07:06:21',0),
 (11,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:07:13','2021-12-14 07:07:13',0),
 (12,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:10:25','2021-12-14 07:10:25',0),
 (13,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:13:06','2021-12-14 07:13:06',0),
 (14,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27',0),
 (15,3,'2021-12-15 00:00:00','2021-12-15 00:00:00','Rampura',0,0,'Testing',1,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59',0),
 (16,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11',0),
 (17,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37',0),
 (18,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42',0),
 (19,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54',0),
 (20,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',3,0,0,'2023-12-05 18:07:44','2023-12-05 18:07:44',0),
 (21,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',4,0,0,'2023-12-05 18:06:48','2023-12-05 18:06:48',0),
 (22,8,'2023-12-24 00:00:00','2023-12-24 00:00:00','Mohammadpur',1636.95,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (23,1,'2023-12-27 00:00:00','2023-12-27 00:00:00','Rampura, Banasree',1426.95,0,'Na',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (24,4,'2024-01-03 00:00:00','2024-01-03 00:00:00','Dhanmondi, Dhaka',12304.95,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (25,1,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34',0),
 (26,2,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15',0),
 (27,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-05-12 11:46:43','2024-05-12 11:46:43',0),
 (28,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:18','2024-05-12 11:48:18',0),
 (29,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:50','2024-05-12 11:48:50',0),
 (30,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:54','2024-05-12 11:48:54',0),
 (31,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:57','2024-05-12 11:48:57',0),
 (32,1,'2024-05-14 00:00:00','2024-05-14 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03',0),
 (33,2,'2025-03-06 00:00:00','2025-03-06 00:00:00','',2625,0,'NA',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (34,2,'2025-03-10 00:00:00','2025-03-10 00:00:00','',21000,0,'Test3ddd',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (35,6,'2025-03-15 00:00:00','2025-03-15 00:00:00','',13125,0,'Test44444',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (36,3,'2025-03-17 00:00:00','2025-03-17 00:00:00','',2625,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (37,10,'2025-03-19 00:00:00','2025-03-19 00:00:00','',23625,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (38,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (39,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (40,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',60308.78,0,'ECommerce',1,1865.22,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (41,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',2910,0,'ECommerce',1,90,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (42,1,'2025-04-10 00:00:00','2025-04-10 00:00:00','Shipping address',9991.97,0,'ECommerce',1,309.03,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (43,3,'2025-04-10 00:00:00','2025-04-10 00:00:00','',525,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (44,0,'2025-04-10 00:00:00','1970-01-01 00:00:00','',1575,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (45,1,'2025-04-12 00:00:00','2025-04-12 00:00:00','',6825,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (46,1,'2025-04-19 00:00:00','2025-04-19 00:00:00','Shipping address',17460,0,'ECommerce',1,540,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `core_orders` ENABLE KEYS */;


--
-- Definition of table `core_password_reset_tokens`
--

DROP TABLE IF EXISTS `core_password_reset_tokens`;
CREATE TABLE `core_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_password_reset_tokens`
--

/*!40000 ALTER TABLE `core_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `core_payments`
--

DROP TABLE IF EXISTS `core_payments`;
CREATE TABLE `core_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `payment_method` enum('Cash','bKash','Card') DEFAULT NULL,
  `status` enum('paid','refunded','failed') DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `core_payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `core_bookings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_payments`
--

/*!40000 ALTER TABLE `core_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_payments` ENABLE KEYS */;


--
-- Definition of table `core_personal_access_tokens`
--

DROP TABLE IF EXISTS `core_personal_access_tokens`;
CREATE TABLE `core_personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_personal_access_tokens_token_unique` (`token`),
  KEY `core_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_personal_access_tokens`
--

/*!40000 ALTER TABLE `core_personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_personal_access_tokens` ENABLE KEYS */;


--
-- Definition of table `core_persons`
--

DROP TABLE IF EXISTS `core_persons`;
CREATE TABLE `core_persons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `position_id` int(10) unsigned NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_persons`
--

/*!40000 ALTER TABLE `core_persons` DISABLE KEYS */;
INSERT INTO `core_persons` (`id`,`name`,`position_id`,`sex`,`dob`,`doj`,`mobile`,`address`,`inactive`) VALUES 
 (1,'Jahidul Islam',1,0,'2000-01-01','2021-01-01','677657657567','Rampura',0);
/*!40000 ALTER TABLE `core_persons` ENABLE KEYS */;


--
-- Definition of table `core_positions`
--

DROP TABLE IF EXISTS `core_positions`;
CREATE TABLE `core_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `grade` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_positions`
--

/*!40000 ALTER TABLE `core_positions` DISABLE KEYS */;
INSERT INTO `core_positions` (`id`,`name`,`grade`,`department_id`) VALUES 
 (1,'Programmer',6,2),
 (2,'System Analyst',3,1);
/*!40000 ALTER TABLE `core_positions` ENABLE KEYS */;


--
-- Definition of table `core_product_brands`
--

DROP TABLE IF EXISTS `core_product_brands`;
CREATE TABLE `core_product_brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_brands`
--

/*!40000 ALTER TABLE `core_product_brands` DISABLE KEYS */;
INSERT INTO `core_product_brands` (`id`,`name`) VALUES 
 (1,'RFL'),
 (2,'Bengal');
/*!40000 ALTER TABLE `core_product_brands` ENABLE KEYS */;


--
-- Definition of table `core_product_category`
--

DROP TABLE IF EXISTS `core_product_category`;
CREATE TABLE `core_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_category`
--

/*!40000 ALTER TABLE `core_product_category` DISABLE KEYS */;
INSERT INTO `core_product_category` (`id`,`name`,`section_id`,`created_at`,`updated_at`) VALUES 
 (2,'Vegetables',3,'2022-01-11 12:46:24',NULL),
 (3,'Fish',3,'2022-01-11 12:46:24',NULL),
 (4,'Drugs',3,'2022-01-11 12:46:24',NULL),
 (5,'Cameras',1,'2022-01-11 12:46:24',NULL),
 (6,'Computers, Tablets & Laptops',1,'2022-01-11 12:46:24',NULL),
 (7,'Mobile Phone',1,'2022-01-11 12:46:24',NULL),
 (8,'Sound & Vision',1,'2022-01-11 12:46:24',NULL),
 (9,'Women\'s',2,'2022-01-11 12:46:24',NULL),
 (10,'Men\'s',2,'2022-01-11 12:46:24',NULL),
 (11,'Kids',2,'2022-01-11 12:46:24',NULL),
 (12,'Cosmatics',4,'2022-01-11 12:46:24',NULL),
 (13,'T-Shirt',2,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_product_category` ENABLE KEYS */;


--
-- Definition of table `core_product_sections`
--

DROP TABLE IF EXISTS `core_product_sections`;
CREATE TABLE `core_product_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `photo` varchar(145) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_sections`
--

/*!40000 ALTER TABLE `core_product_sections` DISABLE KEYS */;
INSERT INTO `core_product_sections` (`id`,`name`,`unit_id`,`photo`,`icon`) VALUES 
 (1,'Electronices',1,NULL,NULL),
 (2,'Clothings',1,NULL,NULL),
 (3,'Food and Beverages',1,NULL,NULL),
 (4,'Health & Beauty',1,NULL,NULL),
 (5,'Sports & Leisure',1,NULL,NULL),
 (6,'Books & Entertainments',1,NULL,NULL);
/*!40000 ALTER TABLE `core_product_sections` ENABLE KEYS */;


--
-- Definition of table `core_product_types`
--

DROP TABLE IF EXISTS `core_product_types`;
CREATE TABLE `core_product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_types`
--

/*!40000 ALTER TABLE `core_product_types` DISABLE KEYS */;
INSERT INTO `core_product_types` (`id`,`name`) VALUES 
 (1,'Finished Goods'),
 (2,'Raw Materials'),
 (3,'Consumable Materials');
/*!40000 ALTER TABLE `core_product_types` ENABLE KEYS */;


--
-- Definition of table `core_product_units`
--

DROP TABLE IF EXISTS `core_product_units`;
CREATE TABLE `core_product_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_units`
--

/*!40000 ALTER TABLE `core_product_units` DISABLE KEYS */;
INSERT INTO `core_product_units` (`id`,`name`,`photo`,`icon`) VALUES 
 (1,'Electronics',NULL,NULL),
 (2,'Grocery',NULL,NULL);
/*!40000 ALTER TABLE `core_product_units` ENABLE KEYS */;


--
-- Definition of table `core_products`
--

DROP TABLE IF EXISTS `core_products`;
CREATE TABLE `core_products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `offer_price` double DEFAULT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `regular_price` double NOT NULL,
  `bom_id` int(10) unsigned DEFAULT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `product_section_id` int(10) unsigned NOT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `star` int(10) unsigned DEFAULT NULL,
  `is_brand` tinyint(1) DEFAULT 0,
  `offer_discount` float DEFAULT 0,
  `uom_id` int(10) unsigned NOT NULL,
  `weight` float DEFAULT NULL,
  `barcode` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_products`
--

/*!40000 ALTER TABLE `core_products` DISABLE KEYS */;
INSERT INTO `core_products` (`id`,`name`,`offer_price`,`manufacturer_id`,`regular_price`,`bom_id`,`unit_id`,`product_category_id`,`product_section_id`,`is_featured`,`star`,`is_brand`,`offer_discount`,`uom_id`,`weight`,`barcode`,`created_at`,`updated_at`) VALUES 
 (17,'Brown Borka',5500,1,1,0,17,1,1,1,1,1,10,1,0,'294394','0000-00-00 00:00:00','2025-04-28 12:08:58'),
 (46,'Shirt4',100,1,1,0,46,1,1,1,1,1,10,1,0,'294394','2025-04-08 11:56:43','2025-04-28 12:05:52'),
 (47,'Juta44',100,1,1,0,47,1,1,0,1,0,10,1,200,'294394','2025-04-08 15:30:20','2025-04-28 12:06:07'),
 (50,'Apple4rrr',100,1,1,0,50,1,1,0,1,1,10,1,0,'294394','2025-03-10 15:42:45','2025-04-28 12:06:27'),
 (52,'Oppo a3x',20000,1,23000,0,0,7,1,1,3,1,0,1,3,'3434','2025-03-10 15:44:24','2025-03-10 15:44:24');
/*!40000 ALTER TABLE `core_products` ENABLE KEYS */;


--
-- Definition of table `core_purchase_details`
--

DROP TABLE IF EXISTS `core_purchase_details`;
CREATE TABLE `core_purchase_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_purchase_details`
--

/*!40000 ALTER TABLE `core_purchase_details` DISABLE KEYS */;
INSERT INTO `core_purchase_details` (`id`,`purchase_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,50,200,0,0,NULL,NULL),
 (2,1,18,30,250,0,0,NULL,NULL),
 (3,2,17,20,210,0,0,NULL,NULL),
 (4,2,40,70,240,0,0,NULL,NULL),
 (5,3,39,10,202,0,0,NULL,NULL),
 (6,4,40,30,300,0,0,NULL,NULL),
 (7,10,1,4,200,0,0,NULL,NULL),
 (8,15,18,1,180,0,0,NULL,NULL),
 (9,15,50,1,345,0,0,NULL,NULL),
 (10,15,17,1,2500,0,0,NULL,NULL),
 (11,16,50,1,345,0,0,NULL,NULL),
 (12,16,17,1,2500,0,0,NULL,NULL),
 (13,17,17,14,2500,0,0,NULL,NULL),
 (14,17,50,15,345,0,0,NULL,NULL),
 (15,50,52,6,19000,0,0,NULL,NULL),
 (16,51,17,3,4000,0,0,NULL,NULL),
 (17,51,52,1,4000,0,0,NULL,NULL),
 (18,52,56,100,20,0,0,NULL,NULL),
 (19,53,56,10,300,0,0,NULL,NULL);
/*!40000 ALTER TABLE `core_purchase_details` ENABLE KEYS */;


--
-- Definition of table `core_purchases`
--

DROP TABLE IF EXISTS `core_purchases`;
CREATE TABLE `core_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(10) unsigned NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text NOT NULL,
  `purchase_total` double NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_purchases`
--

/*!40000 ALTER TABLE `core_purchases` DISABLE KEYS */;
INSERT INTO `core_purchases` (`id`,`supplier_id`,`purchase_date`,`delivery_date`,`shipping_address`,`purchase_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`) VALUES 
 (1,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','Rangpur',18375,0,'Na',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (2,2,'2023-12-24 00:00:00','2023-12-24 00:00:00','',22050,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (3,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','',2121,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (4,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','',9450,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (5,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:20:36','2024-03-31 10:20:36'),
 (6,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:25:03','2024-03-31 10:25:03'),
 (7,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:26:17','2024-03-31 10:26:17'),
 (8,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:52:29','2024-04-01 09:52:29'),
 (9,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:53:48','2024-04-01 09:53:48'),
 (10,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:56:29','2024-04-01 09:56:29'),
 (11,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 10:22:59','2024-04-01 10:22:59'),
 (12,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:48:06','2024-04-02 09:48:06'),
 (13,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:49:37','2024-04-02 09:49:37'),
 (14,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:50:35','2024-04-02 09:50:35'),
 (15,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:51:47','2024-04-02 09:51:47'),
 (16,1,'2024-06-04 00:00:00','2024-06-04 00:00:00','Test',2987.25,0,'  NA',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (17,2,'2024-06-05 00:00:00','2024-06-05 00:00:00','',42183.75,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (18,1,'2024-01-01 00:00:00','2024-01-05 00:00:00','Rampura',100,1000,'NA',1,0,0,'2024-07-10 12:27:24','2024-07-10 12:27:24'),
 (19,1,'2024-01-01 00:00:00','2024-01-05 00:00:00','Rampura',100,1000,'NA',1,0,0,'2024-07-14 12:46:30','2024-07-14 12:46:30'),
 (20,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3621.45,3621.45,'NA',1,0,0,'2024-07-14 12:58:16','2024-07-14 12:58:16'),
 (21,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:01:43','2024-07-14 13:01:43'),
 (22,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:04:31','2024-07-14 13:04:31'),
 (23,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:07:02','2024-07-14 13:07:02'),
 (24,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:00','2024-07-14 13:08:00'),
 (25,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:10','2024-07-14 13:08:10'),
 (26,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:20','2024-07-14 13:08:20'),
 (27,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:04','2024-07-14 13:09:04'),
 (28,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:31','2024-07-14 13:09:31'),
 (29,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:52','2024-07-14 13:09:52'),
 (30,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:10:11','2024-07-14 13:10:11'),
 (31,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:10:14','2024-07-14 13:10:14'),
 (32,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:10:31','2024-07-14 13:10:31'),
 (33,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:10:55','2024-07-14 13:10:55'),
 (34,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:14:34','2024-07-14 13:14:34'),
 (35,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:05','2024-07-14 13:15:05'),
 (36,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:07','2024-07-14 13:15:07'),
 (37,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:31','2024-07-14 13:15:31'),
 (38,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:33','2024-07-14 13:15:33'),
 (39,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:00','2024-07-14 13:16:00'),
 (40,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:01','2024-07-14 13:16:01'),
 (41,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:02','2024-07-14 13:16:02'),
 (42,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:05','2024-07-14 13:16:05'),
 (43,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:16:20','2024-07-14 13:16:20'),
 (44,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:17:23','2024-07-14 13:17:23'),
 (45,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:17:31','2024-07-14 13:17:31'),
 (46,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:18:13','2024-07-14 13:18:13'),
 (47,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:18:22','2024-07-14 13:18:22'),
 (48,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:18:42','2024-07-14 13:18:42'),
 (49,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:19:35','2024-07-14 13:19:35'),
 (50,4,'2025-03-10 00:00:00','2025-03-10 00:00:00','',119700,0,'Testk',1,0,0,'2025-03-10 15:58:37','2025-03-10 15:58:37'),
 (51,4,'2025-03-19 00:00:00','2025-03-19 00:00:00','',16800,0,'',1,0,0,'2025-03-19 14:29:20','2025-03-19 14:29:20'),
 (52,1,'2025-04-10 00:00:00','2025-04-10 00:00:00','',2100,0,'testing',1,0,0,'2025-04-10 18:23:24','2025-04-10 18:23:24'),
 (53,1,'2025-04-12 00:00:00','2025-04-12 00:00:00','',3150,0,'',1,0,0,'2025-04-12 16:39:29','2025-04-12 16:39:29');
/*!40000 ALTER TABLE `core_purchases` ENABLE KEYS */;


--
-- Definition of table `core_rest_tables`
--

DROP TABLE IF EXISTS `core_rest_tables`;
CREATE TABLE `core_rest_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 0,
  `photo` varchar(45) DEFAULT NULL,
  `seats` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rest_tables`
--

/*!40000 ALTER TABLE `core_rest_tables` DISABLE KEYS */;
INSERT INTO `core_rest_tables` (`id`,`name`,`status`,`photo`,`seats`) VALUES 
 (1,'Table 1',0,'1.png',6),
 (2,'Table 2',1,'2.jpeg',5),
 (3,'Table 3',2,'3.jpg',2),
 (4,'Table 4',1,'4.jpeg',4),
 (5,'Table 5',1,'5.jpg',2),
 (6,'Table 6',1,'6.jpg',12),
 (7,'Table 7',1,'10-jpg.jpg',10),
 (8,'Guest 1',1,'6-png.png',5);
/*!40000 ALTER TABLE `core_rest_tables` ENABLE KEYS */;


--
-- Definition of table `core_roles`
--

DROP TABLE IF EXISTS `core_roles`;
CREATE TABLE `core_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_roles`
--

/*!40000 ALTER TABLE `core_roles` DISABLE KEYS */;
INSERT INTO `core_roles` (`id`,`name`,`updated_at`,`created_at`) VALUES 
 (1,'Admin','2024-03-02 04:59:14','2024-03-02 10:59:14'),
 (2,'Manager','2024-02-28 12:10:59','2024-02-28 12:10:59'),
 (4,'Guest','2024-03-07 10:24:21','2024-03-07 10:24:21'),
 (5,'Demo1','2024-03-07 12:25:34','2024-06-09 12:38:21'),
 (12,'Dem34','2024-06-11 05:29:21','2024-06-11 05:29:21');
/*!40000 ALTER TABLE `core_roles` ENABLE KEYS */;


--
-- Definition of table `core_room_types`
--

DROP TABLE IF EXISTS `core_room_types`;
CREATE TABLE `core_room_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_room_types`
--

/*!40000 ALTER TABLE `core_room_types` DISABLE KEYS */;
INSERT INTO `core_room_types` (`id`,`name`) VALUES 
 (1,'Single'),
 (2,'Double');
/*!40000 ALTER TABLE `core_room_types` ENABLE KEYS */;


--
-- Definition of table `core_rooms`
--

DROP TABLE IF EXISTS `core_rooms`;
CREATE TABLE `core_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `room_type_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rooms`
--

/*!40000 ALTER TABLE `core_rooms` DISABLE KEYS */;
INSERT INTO `core_rooms` (`id`,`name`,`code`,`room_type_id`,`price`) VALUES 
 (1,'Double South Side 200sft 2nd floor- 322','322',2,2000),
 (2,'Single 100sft non ac -324','324',1,500);
/*!40000 ALTER TABLE `core_rooms` ENABLE KEYS */;


--
-- Definition of table `core_round63`
--

DROP TABLE IF EXISTS `core_round63`;
CREATE TABLE `core_round63` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `roll` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_round63`
--

/*!40000 ALTER TABLE `core_round63` DISABLE KEYS */;
INSERT INTO `core_round63` (`id`,`name`,`contact`,`email`,`roll`) VALUES 
 (1,'Naiyem','01515618932','mdnaiyem@gmail.com','1286770');
/*!40000 ALTER TABLE `core_round63` ENABLE KEYS */;


--
-- Definition of table `core_sections`
--

DROP TABLE IF EXISTS `core_sections`;
CREATE TABLE `core_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_sections`
--

/*!40000 ALTER TABLE `core_sections` DISABLE KEYS */;
INSERT INTO `core_sections` (`id`,`name`) VALUES 
 (1,'Electronices'),
 (2,'Clothings'),
 (3,'Food and Beverages'),
 (4,'Health & Beauty'),
 (5,'Sports & Leisure'),
 (6,'Books & Entertainments');
/*!40000 ALTER TABLE `core_sections` ENABLE KEYS */;


--
-- Definition of table `core_sessions`
--

DROP TABLE IF EXISTS `core_sessions`;
CREATE TABLE `core_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_sessions_user_id_index` (`user_id`),
  KEY `core_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_sessions`
--

/*!40000 ALTER TABLE `core_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sessions` ENABLE KEYS */;


--
-- Definition of table `core_shippers`
--

DROP TABLE IF EXISTS `core_shippers`;
CREATE TABLE `core_shippers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_shippers`
--

/*!40000 ALTER TABLE `core_shippers` DISABLE KEYS */;
INSERT INTO `core_shippers` (`id`,`name`,`contact_person`,`contact_no`) VALUES 
 (1,'Sundarban Courier ','Mr. Jahid','343243242');
/*!40000 ALTER TABLE `core_shippers` ENABLE KEYS */;


--
-- Definition of table `core_site_album_details`
--

DROP TABLE IF EXISTS `core_site_album_details`;
CREATE TABLE `core_site_album_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_album_id` int(10) unsigned NOT NULL,
  `photo` varchar(245) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_album_details`
--

/*!40000 ALTER TABLE `core_site_album_details` DISABLE KEYS */;
INSERT INTO `core_site_album_details` (`id`,`site_album_id`,`photo`,`name`,`description`,`inactive`) VALUES 
 (1,1,'./uploads/posts/1548841158.jpg','Intellect Software Ltd','Leading Software Company',0),
 (2,1,'1548843065.jpg','Intellect Cloud POS','Intellect Enterprise Resource Planning (ERP) is business management&#8230;',0),
 (3,1,'1548841332.jpg','Education and Training','For many people, gaining new skills through accredited&#8230;',0),
 (4,2,'1548867137.svg','Food and Beverage',NULL,0),
 (5,2,'1548867301.svg','Retail Goods',NULL,0),
 (6,2,'1548867424.svg','Energy, Oil and Gas',NULL,0),
 (7,2,'1548867363.svg','Chemical Goods',NULL,0),
 (8,2,'1548867453.svg','Consumer Packaged Goods',NULL,0),
 (9,3,'15488786820.jpg','Screenshot1',NULL,0),
 (10,3,'15488786821.jpg','Screenshot2',NULL,0),
 (11,4,'15488797600.jpg','POS1',NULL,0),
 (12,4,'15488797601.jpg','POS2',NULL,0),
 (13,4,'15488797602.jpg','POS3',NULL,0);
/*!40000 ALTER TABLE `core_site_album_details` ENABLE KEYS */;


--
-- Definition of table `core_site_albums`
--

DROP TABLE IF EXISTS `core_site_albums`;
CREATE TABLE `core_site_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_albums`
--

/*!40000 ALTER TABLE `core_site_albums` DISABLE KEYS */;
INSERT INTO `core_site_albums` (`id`,`name`,`created_at`,`description`,`photo`) VALUES 
 (1,'Main Slider',NULL,'Na',NULL),
 (2,'INDUSTRY SECTORS',NULL,'We cover different industry sectors, from food and beverage, chemical, retail, durable goods and more. Check the full list.',NULL),
 (3,'Screenshot - Home Page',NULL,NULL,NULL),
 (4,'POS',NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_site_albums` ENABLE KEYS */;


--
-- Definition of table `core_site_attributes`
--

DROP TABLE IF EXISTS `core_site_attributes`;
CREATE TABLE `core_site_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_attributes`
--

/*!40000 ALTER TABLE `core_site_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_site_attributes` ENABLE KEYS */;


--
-- Definition of table `core_site_clients`
--

DROP TABLE IF EXISTS `core_site_clients`;
CREATE TABLE `core_site_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_clients`
--

/*!40000 ALTER TABLE `core_site_clients` DISABLE KEYS */;
INSERT INTO `core_site_clients` (`id`,`name`,`photo`,`review`,`website`) VALUES 
 (1,'Karnaphuli Group','1548871087-png.png','Na','https://www.karnaphuli.com/'),
 (2,'Doreen','1548871127-png.png','Na','https://doreen.com/');
/*!40000 ALTER TABLE `core_site_clients` ENABLE KEYS */;


--
-- Definition of table `core_site_menu_sub_details`
--

DROP TABLE IF EXISTS `core_site_menu_sub_details`;
CREATE TABLE `core_site_menu_sub_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `site_menu_sub_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menu_sub_details`
--

/*!40000 ALTER TABLE `core_site_menu_sub_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_site_menu_sub_details` ENABLE KEYS */;


--
-- Definition of table `core_site_menu_subs`
--

DROP TABLE IF EXISTS `core_site_menu_subs`;
CREATE TABLE `core_site_menu_subs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_menu_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menu_subs`
--

/*!40000 ALTER TABLE `core_site_menu_subs` DISABLE KEYS */;
INSERT INTO `core_site_menu_subs` (`id`,`site_menu_id`,`name`,`link`,`has_child`) VALUES 
 (1,2,'POS ERP','pos-erp',0),
 (2,2,'ERP-Garments','garment-erp',0),
 (3,2,'ERP-General Insurance','general-insurance-erp',0),
 (4,2,'ERP-Education','education-erp',0),
 (5,2,'ERP Manufacturing','manufacturing-erp',0),
 (6,2,'ERP Hospital','hospital-erp',0),
 (7,2,'ERP Texttile','texttile-erp',0),
 (8,2,'ERP Real Estate','real-estate-erp',0),
 (9,8,'Web publising','webpublishing',0),
 (10,8,'Javascript Library','javascript-library',0),
 (11,8,'Server Side','server-side',0);
/*!40000 ALTER TABLE `core_site_menu_subs` ENABLE KEYS */;


--
-- Definition of table `core_site_menus`
--

DROP TABLE IF EXISTS `core_site_menus`;
CREATE TABLE `core_site_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menus`
--

/*!40000 ALTER TABLE `core_site_menus` DISABLE KEYS */;
INSERT INTO `core_site_menus` (`id`,`name`,`link`,`has_child`) VALUES 
 (1,'Home','/',0),
 (2,'Software','./software.html',1),
 (3,'Service','./service.html',0),
 (4,'Partner','./partner.html',0),
 (5,'Client','./client.html',0),
 (6,'About','./about.html',0),
 (7,'Contact','/contact.html',0),
 (8,'Blog','./blog.html',1);
/*!40000 ALTER TABLE `core_site_menus` ENABLE KEYS */;


--
-- Definition of table `core_site_pages`
--

DROP TABLE IF EXISTS `core_site_pages`;
CREATE TABLE `core_site_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `slug` varchar(145) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_pages`
--

/*!40000 ALTER TABLE `core_site_pages` DISABLE KEYS */;
INSERT INTO `core_site_pages` (`id`,`name`,`link`,`inactive`,`slug`,`description`,`photo`) VALUES 
 (1,'POS ERP','http',0,NULL,'Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc',NULL);
/*!40000 ALTER TABLE `core_site_pages` ENABLE KEYS */;


--
-- Definition of table `core_site_post_categories`
--

DROP TABLE IF EXISTS `core_site_post_categories`;
CREATE TABLE `core_site_post_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_categories`
--

/*!40000 ALTER TABLE `core_site_post_categories` DISABLE KEYS */;
INSERT INTO `core_site_post_categories` (`id`,`name`) VALUES 
 (1,'Business'),
 (2,'Software');
/*!40000 ALTER TABLE `core_site_post_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_post_details`
--

DROP TABLE IF EXISTS `core_site_post_details`;
CREATE TABLE `core_site_post_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_post_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_details`
--

/*!40000 ALTER TABLE `core_site_post_details` DISABLE KEYS */;
INSERT INTO `core_site_post_details` (`id`,`site_post_id`,`description`,`photo`,`name`) VALUES 
 (1,1,'Product multi-dimensional measurement unit',NULL,NULL),
 (2,1,'Convenience of buying and selling products according to batch / lot\r\n                                        number',NULL,NULL),
 (3,1,'Advantages of Product Metrics',NULL,NULL),
 (4,1,'Business data will never be lost or ',NULL,NULL),
 (5,1,'Buying from multiple branches can be sold through the same software',NULL,NULL),
 (6,1,'The software will never slow down, if the data is high or even from the remote\r\n                                        location.',NULL,NULL),
 (7,2,'Accounting Management',NULL,NULL),
 (8,2,'Payroll Management',NULL,NULL),
 (9,2,' Inventory Management',NULL,NULL),
 (10,2,'Purchase Management',NULL,NULL),
 (11,2,'Production & Distribution Management',NULL,NULL),
 (12,2,' Human Resource Management',NULL,NULL),
 (13,2,' Customer Relationship Management',NULL,NULL),
 (14,2,'Sales Management',NULL,NULL),
 (15,2,'Barcode Creator',NULL,NULL),
 (16,2,'Cloud Backup Server',NULL,NULL),
 (17,4,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos. Nulla nunc dui, tristique in semper vel.',NULL,'Super Design Layout '),
 (18,4,'Intellect Cloud pos software can be automated update after the release new\r\n                                        version of software. Update for the better performace and better userfriendly.',NULL,'Regular Updates & Support'),
 (19,4,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos nulla nunc dui.',NULL,'Responsive Web Design');
/*!40000 ALTER TABLE `core_site_post_details` ENABLE KEYS */;


--
-- Definition of table `core_site_posts`
--

DROP TABLE IF EXISTS `core_site_posts`;
CREATE TABLE `core_site_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(245) DEFAULT NULL,
  `site_album_id` int(10) unsigned DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `post_category_id` int(10) unsigned DEFAULT NULL,
  `post_page_id` int(10) unsigned DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_posts`
--

/*!40000 ALTER TABLE `core_site_posts` DISABLE KEYS */;
INSERT INTO `core_site_posts` (`id`,`name`,`description`,`slug`,`site_album_id`,`inactive`,`post_category_id`,`post_page_id`,`photo`) VALUES 
 (1,'Explain why its best','There are several kind of information we have for why we are best. Some the best features\r\n                                we provide for you that are the world wide challenging features. Some best features are\r\n                                given below.',NULL,3,0,1,1,NULL),
 (2,'Great way to Include with POS','With integrated POS software, the following business software is listed together.',NULL,4,0,1,1,NULL),
 (3,'ERP - POS','Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc',NULL,5,0,1,1,'1548843653.jpg'),
 (4,'Intellect Cloud POS Software - features','Responsive & optimized for mobile devices. Completely without coding skills!',NULL,NULL,0,NULL,NULL,'15488780820.jpg');
/*!40000 ALTER TABLE `core_site_posts` ENABLE KEYS */;


--
-- Definition of table `core_site_product_categories`
--

DROP TABLE IF EXISTS `core_site_product_categories`;
CREATE TABLE `core_site_product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_categories`
--

/*!40000 ALTER TABLE `core_site_product_categories` DISABLE KEYS */;
INSERT INTO `core_site_product_categories` (`id`,`name`) VALUES 
 (1,'ERP'),
 (2,'OTHER SOFTWARES');
/*!40000 ALTER TABLE `core_site_product_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_product_uoms`
--

DROP TABLE IF EXISTS `core_site_product_uoms`;
CREATE TABLE `core_site_product_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_uoms`
--

/*!40000 ALTER TABLE `core_site_product_uoms` DISABLE KEYS */;
INSERT INTO `core_site_product_uoms` (`id`,`name`) VALUES 
 (1,'Piece');
/*!40000 ALTER TABLE `core_site_product_uoms` ENABLE KEYS */;


--
-- Definition of table `core_site_products`
--

DROP TABLE IF EXISTS `core_site_products`;
CREATE TABLE `core_site_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `site_product_category_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(345) DEFAULT NULL,
  `regular_price` float DEFAULT NULL,
  `offer_price` float DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT NULL,
  `current_stock` float DEFAULT NULL,
  `site_product_uom_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_products`
--

/*!40000 ALTER TABLE `core_site_products` DISABLE KEYS */;
INSERT INTO `core_site_products` (`id`,`name`,`site_product_category_id`,`description`,`photo`,`regular_price`,`offer_price`,`inactive`,`current_stock`,`site_product_uom_id`,`slug`,`icon`) VALUES 
 (1,'POS ERP',1,' Integrated solution from production to point of sale for any retials business including supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery, furniture, tiles & sanitary etc','1548843653.jpg',0,0,0,0,1,'pos-erp',''),
 (2,'ERP - GARMENTS',1,'Intellect Garments ERP is one of the leading ERP solution provider, especially for Garments industries which is integrated with different modules that cover all the…','1548855465.jpg',0,0,0,0,1,'garments-erp',NULL),
 (3,'ERP - GENERAL INSURANCE',1,'Our Insurance software so flexible that you will reach your business goals in no time. Stop struggling with legacy systems! Our intellect software will help…','1548855650.jpg',0,0,0,0,1,'genaral-insurance-erp',NULL),
 (4,'ERP - EDUCATION',1,'Intellect education management software is used by teachers, students, and school/college/university administrators for organization and collaboration, and to facilitate learning. School software is','1548856590.jpg',0,0,0,0,1,'education-erp',NULL),
 (5,'ERP - MANUFACTURING',1,'Intellect ERP gives a company an integrated real-time view of its core business processes such as production, order processing, and inventory management, tied together by…','1548856850.jpg',0,0,0,0,1,'manufacturing-erp',NULL),
 (6,'ERP - HOSPITAL',1,'Intellect Hospital Management Software is a comprehensive and integrated hospital management software, designed to manage all aspects of hospital operations.(i.e. Outpatient and Inpatient management, Patient…','1548857774.jpg',0,0,0,0,1,'hospital-erp',NULL),
 (7,'ERP - MERCHANDISING',1,'Merchandising, CONTROL Retail Management System and POS also takes care of Retail CRM, Inventory Management, online trading, Sales & Profit Analysis, Order Entry & Invoicing,…','1548858095.jpg',0,0,0,0,1,'merchandising-erp',NULL),
 (8,'ERP - TEXTILE',1,'The Intellect ERP (enterprise resource planning) software solutions - seek to integrate the business processes involving eight critical areas in the textile production planning which…','1548858372.jpg',0,0,0,0,1,'texttile-erp',NULL),
 (9,'ERP - REAL ESTATE',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater','1548858645.jpg',0,0,0,0,1,'real-estate-erp',NULL),
 (10,'Accounting',2,'Accounting Software includes general journal, creating bill & invoice, all financial reports (Trial Balance, Income Statement, Balance Sheet) and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M19 2H5c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM5 20V4h14l.001 16H5z\"></path><path d=\"M7 12h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zM7 6h10v4H7zm4 10h2v2h-2zm4-4h2v6h-2z\"></path>',0,0,0,0,1,'accounting',NULL),
 (11,'HR & Accounting',2,'Human Resource Management System includes person management, payroll, attendance, leave & holiday, shift & schedule, accounting and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M9.715 12c1.151 0 2-.849 2-2s-.849-2-2-2-2 .849-2 2 .848 2 2 2z\"></path><path d=\"M20 4H4c-1.103 0-2 .841-2 1.875v12.25C2 19.159 2.897 20 4 20h16c1.103 0 2-.841 2-1.875V5.875C22 4.841 21.103 4 20 4zm0 14-16-.011V6',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (12,'Diagnostic Application',2,'Diagnostic Application includes pharmacy management, radioloy reporting management, sample collection and reporting management and so on','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M15.794 11.09c.332-.263.648-.542.947-.84l.136-.142c.283-.293.552-.598.801-.919l.062-.075c.255-.335.486-.688.702-1.049l.128-.22c.205-.364.395-.737.559-1.123.02-.047.035-.095.055-.142.147-.361.274-.731.383-1.109.02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (13,'Doctors Prescription',2,'Doctors Prescription Application includes appointment scheduling, visit fee collection, create and print prescription and so on..','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M8.434 20.566c1.335 0 2.591-.52 3.535-1.464l7.134-7.133a5.008 5.008 0 0 0-.001-7.072 4.969 4.969 0 0 0-3.536-1.463c-1.335 0-2.59.52-3.534 1.464l-7.134 7.133a5.01 5.01 0 0 0-.001 7.072 4.971 4.971 0 0 0 3.537 1.46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (14,'Asset Management',2,'Asset Management System includes asset and components, operation schedule, material & service requisition and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"m20.772 13.155-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (15,'Inventory Management',2,'Inventory Management System includes stock management, warehouse management, stock adjustment, requisition management, stock reporting and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M21.993 7.95a.96.96 0 0 0-.029-.214c-.007-.025-.021-.049-.03-.074-.021-.057-.04-.113-.07-.165-.016-.027-.038-.049-.057-.075-.032-.045-.063-.091-.102-.13-.023-.022-.053-.04-.078-.061-.039-.032-.075-.067-.12-.094-.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (16,'RealTime Attendance System',2,'Biometric System Application includes registration with finger print and webcam device, Bio-Metric verification, real time data storage, system & security and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5.962 17.674C7 19.331 7 20.567 7 22h2c0-1.521 0-3.244-1.343-5.389l-1.695 1.063zM16.504 3.387C13.977 1.91 7.55.926 4.281 4.305c-3.368 3.481-2.249 9.072.001 11.392.118.122.244.229.369.333.072.061.146.116.205.184l1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (17,'Project Management',2,'Project Management Application includes person management, task & team management, asset management, costing, reporting and so o','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5 22h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-2a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15c0 1.103.897 2 2 2zM5 5h2v2h10V5h2v15H5V5z\"></path><path d=\"m11 13.586-1.793-1.793-1.414 1.414L11 16.414l5',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (18,'Logistics Management',2,'Logistics Management System includes procurement & delivery management, transportation & route management, storage of goods & transportation flow, navigation, billing and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M14.844 20H6.5C5.121 20 4 18.879 4 17.5S5.121 15 6.5 15h7c1.93 0 3.5-1.57 3.5-3.5S15.43 8 13.5 8H8.639a9.812 9.812 0 0 1-1.354 2H13.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5h-7C4.019 13 2 15.019 2 17.5S4.019 22 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (19,'E-Commerce Solution',2,'E-Commerce Solution includes website, management of product, order, purchase, warehouse, customer, supplier, payment gateway and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M4 20h2V10a1 1 0 0 1 1-1h12V7a1 1 0 0 0-1-1h-3.051c-.252-2.244-2.139-4-4.449-4S6.303 3.756 6.051 6H3a1 1 0 0 0-1 1v11a2 2 0 0 0 2 2zm6.5-16c1.207 0 2.218.86 2.45 2h-4.9c.232-1.14 1.243-2 2.45-2z\"></path><path d=\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (20,'Visa Processing Software',2,'Our Visa Processing Software includes customer registration, deed and document management, visa & ticket processing step management, invoice & payment, status report and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M3 18h18v2H3zm18.509-9.473a1.61 1.61 0 0 0-2.036-1.019L15 9 7 6 5 7l6 4-4 2-4-2-1 1 4 4 14.547-5.455a1.611 1.611 0 0 0 .962-2.018z\"></path></svg>',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_site_products` ENABLE KEYS */;


--
-- Definition of table `core_site_routes`
--

DROP TABLE IF EXISTS `core_site_routes`;
CREATE TABLE `core_site_routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `site_menu_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_route` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_routes`
--

/*!40000 ALTER TABLE `core_site_routes` DISABLE KEYS */;
INSERT INTO `core_site_routes` (`id`,`name`,`src`,`inactive`,`site_menu_id`) VALUES 
 (1,'pos-erp','views/pages/ERP-POS.php',0,2),
 (2,'garment-erp','views/pages/ERP-Garments.php',0,2),
 (3,'education-erp','views/pages/ERP-Education.php',0,2),
 (4,'general-insurance-erp','views/pages/ERP-General-Insurance.php',0,2),
 (5,'manufacturing-erp','views/pages/ERP-Manufacturing.php',0,2),
 (6,'hospital-erp','views/pages/ERP-Hospital.php',0,2),
 (7,'texttile-erp','views/pages/ERP-Textitle.php',0,2),
 (8,'real-estate-erp','views/pages/ERP-Real-Estate.php',0,2);
/*!40000 ALTER TABLE `core_site_routes` ENABLE KEYS */;


--
-- Definition of table `core_site_service_categories`
--

DROP TABLE IF EXISTS `core_site_service_categories`;
CREATE TABLE `core_site_service_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_service_categories`
--

/*!40000 ALTER TABLE `core_site_service_categories` DISABLE KEYS */;
INSERT INTO `core_site_service_categories` (`id`,`name`) VALUES 
 (1,'Software Enable Service');
/*!40000 ALTER TABLE `core_site_service_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_services`
--

DROP TABLE IF EXISTS `core_site_services`;
CREATE TABLE `core_site_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `regular_price` float DEFAULT 0,
  `offer_price` float DEFAULT 0,
  `icon` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_services`
--

/*!40000 ALTER TABLE `core_site_services` DISABLE KEYS */;
INSERT INTO `core_site_services` (`id`,`name`,`category_id`,`description`,`regular_price`,`offer_price`,`icon`,`inactive`,`photo`) VALUES 
 (1,'Software Quality Assurance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863121.png'),
 (2,'Software forensic',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863180.png'),
 (3,'Database Migration',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863362.png'),
 (4,'Setup Own Hosting',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863484.png'),
 (5,'Cloud Backup Service',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greate',0,0,NULL,0,'1548862800.png'),
 (6,'Software Upgrade and Maintenance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863512.png'),
 (7,'Incredibly Responsive',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-laptop v-icon\"></i>',0,NULL),
 (8,'Fully Customizible',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-leaf v-icon\"></i>',0,NULL),
 (9,'Interactive Elements',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-scissors v-icon\"></i>',0,NULL);
/*!40000 ALTER TABLE `core_site_services` ENABLE KEYS */;


--
-- Definition of table `core_status`
--

DROP TABLE IF EXISTS `core_status`;
CREATE TABLE `core_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_status`
--

/*!40000 ALTER TABLE `core_status` DISABLE KEYS */;
INSERT INTO `core_status` (`id`,`name`) VALUES 
 (1,'Processing'),
 (2,'Shifted'),
 (3,'Delivered'),
 (4,'Invoiced');
/*!40000 ALTER TABLE `core_status` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustment_details`
--

DROP TABLE IF EXISTS `core_stock_adjustment_details`;
CREATE TABLE `core_stock_adjustment_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_details`
--

/*!40000 ALTER TABLE `core_stock_adjustment_details` DISABLE KEYS */;
INSERT INTO `core_stock_adjustment_details` (`id`,`adjustment_id`,`product_id`,`qty`,`price`) VALUES 
 (1,2,20,5,400),
 (2,3,20,50,400),
 (3,4,28,70,6650),
 (4,4,20,30,300);
/*!40000 ALTER TABLE `core_stock_adjustment_details` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustment_types`
--

DROP TABLE IF EXISTS `core_stock_adjustment_types`;
CREATE TABLE `core_stock_adjustment_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `factor` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_types`
--

/*!40000 ALTER TABLE `core_stock_adjustment_types` DISABLE KEYS */;
INSERT INTO `core_stock_adjustment_types` (`id`,`name`,`factor`) VALUES 
 (1,'Is Outdated',-1),
 (2,'Is Damaged',-1),
 (3,'Material Missing',-1),
 (4,'Product Is Obsolete',-1),
 (5,'Existing Inventory',1),
 (6,'Fixed/Found Inventory',1);
/*!40000 ALTER TABLE `core_stock_adjustment_types` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustments`
--

DROP TABLE IF EXISTS `core_stock_adjustments`;
CREATE TABLE `core_stock_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) unsigned NOT NULL,
  `remark` text NOT NULL,
  `adjustment_type_id` int(10) unsigned NOT NULL,
  `werehouse_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustments`
--

/*!40000 ALTER TABLE `core_stock_adjustments` DISABLE KEYS */;
INSERT INTO `core_stock_adjustments` (`id`,`adjustment_at`,`user_id`,`remark`,`adjustment_type_id`,`werehouse_id`) VALUES 
 (1,'2021-12-28 00:00:00',1,'ddd',2,1),
 (2,'2021-12-28 00:00:00',1,'ddd',2,1),
 (3,'2021-12-28 00:00:00',1,'ddddfd',6,1),
 (4,'2021-12-28 00:00:00',1,'NA',6,2);
/*!40000 ALTER TABLE `core_stock_adjustments` ENABLE KEYS */;


--
-- Definition of table `core_stocks`
--

DROP TABLE IF EXISTS `core_stocks`;
CREATE TABLE `core_stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `transaction_type_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warehouse_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stocks`
--

/*!40000 ALTER TABLE `core_stocks` DISABLE KEYS */;
INSERT INTO `core_stocks` (`id`,`product_id`,`qty`,`transaction_type_id`,`remark`,`created_at`,`warehouse_id`) VALUES 
 (14,50,1,3,'Purchase','2024-06-04 12:47:19',1),
 (15,17,1,3,'Purchase','2024-06-04 12:47:19',1),
 (16,17,14,3,'Purchase','2024-06-05 09:22:00',1),
 (17,50,15,3,'Purchase','2024-06-05 09:22:00',1),
 (18,17,-1,6,'Damage','0000-00-00 00:00:00',1),
 (19,50,2,4,'selse return','0000-00-00 00:00:00',1),
 (20,50,2,2,'yj','0000-00-00 00:00:00',1),
 (21,17,2,1,'ytjk','0000-00-00 00:00:00',1),
 (22,17,-1,1,'Order','0000-00-00 00:00:00',0),
 (23,52,6,3,'Purchase','2025-03-10 15:58:37',1),
 (24,52,-1,1,'Order','0000-00-00 00:00:00',0),
 (25,52,3,5,'Test','0000-00-00 00:00:00',2),
 (26,50,-2,6,'Tst','0000-00-00 00:00:00',1),
 (27,17,-5,1,'Order','0000-00-00 00:00:00',0),
 (28,17,-1,1,'Order','0000-00-00 00:00:00',0),
 (29,17,-1,1,'Order','0000-00-00 00:00:00',0),
 (30,52,-1,1,'Order','0000-00-00 00:00:00',0),
 (31,17,3,3,'Purchase','2025-03-19 14:29:20',2),
 (32,52,1,3,'Purchase','2025-03-19 14:29:20',2),
 (33,50,10,3,'None','2025-04-09 18:16:31',3),
 (34,56,100,3,'Purchase','2025-04-10 18:23:24',1),
 (35,0,-2,1,'Order','0000-00-00 00:00:00',0),
 (36,17,-1,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (37,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (38,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (39,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (40,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (41,56,-13,2,'Sales Delivery','0000-00-00 00:00:00',0),
 (42,56,10,3,'Purchase','2025-04-12 16:39:29',1);
/*!40000 ALTER TABLE `core_stocks` ENABLE KEYS */;


--
-- Definition of table `core_students`
--

DROP TABLE IF EXISTS `core_students`;
CREATE TABLE `core_students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_students`
--

/*!40000 ALTER TABLE `core_students` DISABLE KEYS */;
INSERT INTO `core_students` (`id`,`name`,`fathers_name`,`mothers_name`,`dob`,`contact_no`,`address`,`photo`) VALUES 
 (1,'Mahedi Hassan','Abdur Rahman','Amena Akter','2024-01-19','','Rampura ','1.png');
/*!40000 ALTER TABLE `core_students` ENABLE KEYS */;


--
-- Definition of table `core_suppliers`
--

DROP TABLE IF EXISTS `core_suppliers`;
CREATE TABLE `core_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_suppliers`
--

/*!40000 ALTER TABLE `core_suppliers` DISABLE KEYS */;
INSERT INTO `core_suppliers` (`id`,`name`,`mobile`,`email`,`photo`) VALUES 
 (1,'Md. Shahin','56879898','shahin@yahoo.com','1.jpeg'),
 (2,'kulsum','07154545','kulsum@gmail.com','2.png'),
 (4,'Jahid','3654533','jahid@gmail.com','4.jpg'),
 (9,'rahim','1123334','aa@gmail.com','9.png'),
 (10,'kuddush','678798','kuddush@gmail.com',NULL),
 (15,'ismail riyad4','04555545','karim@.com',NULL),
 (21,'Abdul','3534354','kader@gmail.com',NULL),
 (22,'Jahidul Islam','3423423','kader@gmail.com',NULL),
 (24,'Kader','34343','kader@gmail.com',NULL),
 (36,'Jahidul Islam','343433333333333','kader@gmail.com','6-png.png'),
 (37,'Naiyem Limited','343243243444','naiyem','images-png.png');
/*!40000 ALTER TABLE `core_suppliers` ENABLE KEYS */;


--
-- Definition of table `core_tailor_dress_parameters`
--

DROP TABLE IF EXISTS `core_tailor_dress_parameters`;
CREATE TABLE `core_tailor_dress_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `dress_id` int(10) unsigned NOT NULL,
  `default_size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dress_parameters`
--

/*!40000 ALTER TABLE `core_tailor_dress_parameters` DISABLE KEYS */;
INSERT INTO `core_tailor_dress_parameters` (`id`,`name`,`dress_id`,`default_size`) VALUES 
 (1,'Chest',1,NULL),
 (2,'Waist',1,NULL),
 (3,'Seat',1,NULL),
 (4,'Bicep',1,NULL),
 (5,'Shirt Length',1,NULL),
 (6,'Shoulder Width',1,NULL),
 (7,'Sleeve Length',1,NULL),
 (8,'Cuff Circumference',1,NULL),
 (9,'Collar Size',2,NULL);
/*!40000 ALTER TABLE `core_tailor_dress_parameters` ENABLE KEYS */;


--
-- Definition of table `core_tailor_dresses`
--

DROP TABLE IF EXISTS `core_tailor_dresses`;
CREATE TABLE `core_tailor_dresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dresses`
--

/*!40000 ALTER TABLE `core_tailor_dresses` DISABLE KEYS */;
INSERT INTO `core_tailor_dresses` (`id`,`name`,`price`) VALUES 
 (1,'Shirt',1000),
 (2,'Kamiz',1200),
 (3,'Pants',1100),
 (4,'Borka',2500),
 (5,'Panjabi',1300);
/*!40000 ALTER TABLE `core_tailor_dresses` ENABLE KEYS */;


--
-- Definition of table `core_tailor_order_details`
--

DROP TABLE IF EXISTS `core_tailor_order_details`;
CREATE TABLE `core_tailor_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dress_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `discount` double NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_details`
--

/*!40000 ALTER TABLE `core_tailor_order_details` DISABLE KEYS */;
INSERT INTO `core_tailor_order_details` (`id`,`dress_id`,`price`,`qty`,`discount`,`order_id`) VALUES 
 (1,1,1000,1,0,1);
/*!40000 ALTER TABLE `core_tailor_order_details` ENABLE KEYS */;


--
-- Definition of table `core_tailor_order_measurements`
--

DROP TABLE IF EXISTS `core_tailor_order_measurements`;
CREATE TABLE `core_tailor_order_measurements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `measurement_id` int(10) unsigned NOT NULL,
  `size` varchar(10) NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  `dress_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_measurements`
--

/*!40000 ALTER TABLE `core_tailor_order_measurements` DISABLE KEYS */;
INSERT INTO `core_tailor_order_measurements` (`id`,`order_id`,`measurement_id`,`size`,`uom_id`,`dress_id`) VALUES 
 (1,1,1,'34',1,1),
 (2,1,2,'33',1,1),
 (3,1,5,'22',1,1);
/*!40000 ALTER TABLE `core_tailor_order_measurements` ENABLE KEYS */;


--
-- Definition of table `core_tailor_orders`
--

DROP TABLE IF EXISTS `core_tailor_orders`;
CREATE TABLE `core_tailor_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(20) NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `order_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_datetime` datetime NOT NULL,
  `order_total` double DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_orders`
--

/*!40000 ALTER TABLE `core_tailor_orders` DISABLE KEYS */;
INSERT INTO `core_tailor_orders` (`id`,`customer_name`,`paid_amount`,`order_datetime`,`delivery_datetime`,`order_total`,`shipping_address`,`remark`,`mobile`,`discount`) VALUES 
 (1,'Jahidul Islam',500,'0000-00-00 00:00:00','2024-01-20 00:00:00',950,'Rampura','','3434343234',50);
/*!40000 ALTER TABLE `core_tailor_orders` ENABLE KEYS */;


--
-- Definition of table `core_tailor_uoms`
--

DROP TABLE IF EXISTS `core_tailor_uoms`;
CREATE TABLE `core_tailor_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_uoms`
--

/*!40000 ALTER TABLE `core_tailor_uoms` DISABLE KEYS */;
INSERT INTO `core_tailor_uoms` (`id`,`abbr`,`name`,`inactive`) VALUES 
 (1,'inc','Inch',0),
 (2,'ft','Foot',0),
 (3,'yd','yard',0),
 (4,'piece','piece',0);
/*!40000 ALTER TABLE `core_tailor_uoms` ENABLE KEYS */;


--
-- Definition of table `core_thanas`
--

DROP TABLE IF EXISTS `core_thanas`;
CREATE TABLE `core_thanas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_thanas`
--

/*!40000 ALTER TABLE `core_thanas` DISABLE KEYS */;
INSERT INTO `core_thanas` (`id`,`name`,`district_id`) VALUES 
 (1,'Chatkhil',2),
 (2,'Ramgonj',2),
 (3,'Mijdi Sadar',2),
 (4,'Begomganj',2);
/*!40000 ALTER TABLE `core_thanas` ENABLE KEYS */;


--
-- Definition of table `core_transaction_types`
--

DROP TABLE IF EXISTS `core_transaction_types`;
CREATE TABLE `core_transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_transaction_types`
--

/*!40000 ALTER TABLE `core_transaction_types` DISABLE KEYS */;
INSERT INTO `core_transaction_types` (`id`,`name`) VALUES 
 (1,'Sales Order'),
 (2,'Sales Delivery'),
 (3,'Sales Return'),
 (4,' Purchase Order'),
 (5,'Purchase Return'),
 (6,'Positive Stock Adjustment'),
 (7,'Negative Stock Adjustment');
/*!40000 ALTER TABLE `core_transaction_types` ENABLE KEYS */;


--
-- Definition of table `core_uoms`
--

DROP TABLE IF EXISTS `core_uoms`;
CREATE TABLE `core_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_uoms`
--

/*!40000 ALTER TABLE `core_uoms` DISABLE KEYS */;
INSERT INTO `core_uoms` (`id`,`name`) VALUES 
 (1,'Piece'),
 (2,'Kg'),
 (3,'Pack'),
 (4,'Litter'),
 (5,'Gram'),
 (6,'Ton'),
 (7,'Box3'),
 (8,'Blister'),
 (9,'Blister2'),
 (10,'NewOne'),
 (11,'NewOne'),
 (12,'NewOne'),
 (13,'NewOne'),
 (14,'NewOne'),
 (15,'NewOne');
/*!40000 ALTER TABLE `core_uoms` ENABLE KEYS */;


--
-- Definition of table `core_user_deposits`
--

DROP TABLE IF EXISTS `core_user_deposits`;
CREATE TABLE `core_user_deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_at` datetime DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_user_deposits`
--

/*!40000 ALTER TABLE `core_user_deposits` DISABLE KEYS */;
INSERT INTO `core_user_deposits` (`id`,`user_id`,`amount`,`created_at`,`transaction_at`,`note`,`created_by`) VALUES 
 (1,158,100,'2024-04-04 11:22:32','2024-04-04 00:00:00','NA',127),
 (2,186,10000,'2024-04-04 11:22:39','1970-01-01 06:00:00','',186),
 (3,160,-5e17,'2024-04-04 11:23:50','1970-01-01 06:00:00','',186),
 (4,194,1009,'2024-04-04 11:44:18','1970-01-01 06:00:00','NA',194),
 (5,197,10000,'2024-04-04 11:56:20','1970-01-01 06:00:00','',197),
 (6,199,1,'2024-04-04 11:56:29','1970-01-01 06:00:00','Na',199),
 (7,196,1000,'2024-04-04 11:56:49','1970-01-01 06:00:00','',196),
 (8,197,-1,'2024-04-04 11:57:17','1970-01-01 06:00:00','',197),
 (9,196,150,'2024-04-04 11:57:31','1970-01-01 06:00:00','',127),
 (10,203,5000,'2024-04-04 11:57:52','2024-04-04 00:00:00','Eid Gift',203),
 (11,204,0,'2024-04-04 11:58:09','2024-04-04 00:00:00','xero_xero',91),
 (12,200,9999,'2024-04-04 11:58:26','1970-01-01 06:00:00','',200),
 (13,199,4000,'2024-04-15 10:48:13','2024-04-15 00:00:00','',127),
 (14,201,3000,'2024-04-15 10:48:32','1970-01-01 06:00:00','',127),
 (15,191,500,'2024-12-19 18:42:46','1970-01-01 06:00:00','',207),
 (16,192,500,'2024-12-19 18:43:01','1970-01-01 06:00:00','',207),
 (17,191,100,'2024-12-19 18:43:52','1970-01-01 06:00:00','',207),
 (18,213,2000,'2024-12-19 18:44:52','1970-01-01 06:00:00','',207),
 (19,208,3555,'2024-12-19 18:45:04','1970-01-01 06:00:00','',207),
 (20,204,344,'2024-12-19 18:45:11','1970-01-01 06:00:00','',207),
 (21,206,456,'2024-12-19 18:45:16','1970-01-01 06:00:00','',207),
 (22,207,4555,'2024-12-19 18:45:21','1970-01-01 06:00:00','',207),
 (23,209,456,'2024-12-19 18:45:26','1970-01-01 06:00:00','',207),
 (24,210,455,'2024-12-19 18:45:34','1970-01-01 06:00:00','',207),
 (25,211,4322,'2024-12-19 18:45:39','1970-01-01 06:00:00','',207),
 (26,212,3556,'2024-12-19 18:45:49','1970-01-01 06:00:00','',207);
/*!40000 ALTER TABLE `core_user_deposits` ENABLE KEYS */;


--
-- Definition of table `core_users`
--

DROP TABLE IF EXISTS `core_users`;
CREATE TABLE `core_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(50) DEFAULT NULL,
  `verify_code` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) unsigned DEFAULT 0,
  `mobile` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `remember_token` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_users`
--

/*!40000 ALTER TABLE `core_users` DISABLE KEYS */;
INSERT INTO `core_users` (`id`,`name`,`role_id`,`password`,`email`,`full_name`,`created_at`,`photo`,`verify_code`,`inactive`,`mobile`,`updated_at`,`ip`,`email_verified_at`,`remember_token`) VALUES 
 (191,'Dola',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','samdola81@gmail.com','Samsunnahar','2025-01-18 18:36:54',NULL,NULL,0,'01832482305',NULL,'192.168.150.38',NULL,NULL),
 (192,'samira',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','samira@gmail.com','Samira Akter','2025-01-18 18:36:54',NULL,NULL,0,'01881432313',NULL,'192.168.150.59',NULL,NULL),
 (194,'dibbo',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','jkp.jakaria@gmail.com','jkp','2025-01-18 18:36:54',NULL,NULL,0,'01642527454',NULL,'192.168.150.47',NULL,NULL),
 (196,'akhi',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','akhi26713@gmail.cm','Aminur Rahman','2025-01-18 18:36:54',NULL,NULL,0,'01946357571',NULL,'192.168.150.49',NULL,NULL),
 (197,'tasmin',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','tanim@gmail.com','Rifat Ahammed Tanim','2025-01-18 18:36:54',NULL,NULL,0,'01900000000',NULL,'192.168.150.50',NULL,NULL),
 (199,'MD. HAFIJUL ISLAM',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','imdhafijul453@gmail.com','Md.Hafijul Islam','2025-01-18 18:36:54',NULL,NULL,0,'01755747048',NULL,'192.168.150.55',NULL,NULL),
 (200,'kamruzzaman',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','olba@gmail.com','Javed ','2025-01-18 18:36:54',NULL,NULL,0,'01869546555',NULL,'192.168.150.22',NULL,NULL),
 (201,'Tasmin Jahan',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','Tasminjahan875@gmail.com','Tasmin Jahan','2025-01-18 18:36:54',NULL,NULL,0,'01623578437',NULL,'192.168.150.50',NULL,NULL),
 (204,'sabbir',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','sabbir.001@outlook.com','Sabbir Ahmed','2025-01-18 18:36:54',NULL,NULL,0,'01752485143',NULL,'192.168.150.53',NULL,NULL),
 (206,'jahid3',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','jahid1@yahoo.com','Jahidul Islam','2025-05-15 17:07:42',NULL,NULL,0,NULL,'2024-07-04 05:52:52','::1',NULL,NULL),
 (207,'admin',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','towhid1@outlook.com','Towhidul Islam','2024-12-19 18:25:39',NULL,NULL,0,NULL,'2024-07-04 06:03:13','::1',NULL,NULL),
 (208,'didar',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','mddidar199911@gmail.com','Didar','2025-01-18 18:36:54',NULL,NULL,0,'01315451430',NULL,'192.168.150.52',NULL,NULL),
 (209,'alifa',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','alifa@yahoo.com','Alifa','2025-01-18 18:36:54',NULL,NULL,0,'01758917270',NULL,'192.168.150.57',NULL,NULL),
 (210,'hasan',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','hasanmd993@gmail.com','Md Hasan','2025-01-18 17:48:36',NULL,NULL,0,'01822304694',NULL,'192.168.150.7',NULL,NULL),
 (211,'Hamid',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','hamidyahoo22@gmail.com',' Abdul Hamid','2025-01-18 18:36:54',NULL,NULL,0,'01764577191',NULL,'192.168.150.47',NULL,NULL),
 (212,'anayet',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','anayetmd2018@gmail.com','Md. Anayet Hossain','2025-01-18 18:36:54',NULL,NULL,0,'01622737936',NULL,'192.168.150.47',NULL,NULL),
 (213,'azmir',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','azmir@yahoo.com','Azmir','2025-01-18 18:36:54',NULL,NULL,0,'3432432',NULL,'192.168.150.47',NULL,NULL),
 (215,'jahid',NULL,'$2y$12$pLMRWsC7HuR6rrCtn7ieWeNmuPulq1ioyxhsvP.Qk2PP7fZ/C3ouu','jahid@yahoo.com',NULL,'2025-05-15 17:19:14',NULL,NULL,0,NULL,'2025-05-15 11:07:47',NULL,NULL,'ZOpOEImPeImORQvKcXZFHac0R7ZkqevZ5yBa26tBQmNNtPzSjrupikjHF7xa');
/*!40000 ALTER TABLE `core_users` ENABLE KEYS */;


--
-- Definition of table `core_users0`
--

DROP TABLE IF EXISTS `core_users0`;
CREATE TABLE `core_users0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_users0`
--

/*!40000 ALTER TABLE `core_users0` DISABLE KEYS */;
INSERT INTO `core_users0` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'admin','jahid1@yahoo.com',NULL,'$2y$10$02LIGz04kyyFni4VVy619ehpI4JmYcDu9TGziPZwvSOxquyb.kFzC',NULL,'2024-06-12 04:46:24','2024-06-12 04:46:24');
/*!40000 ALTER TABLE `core_users0` ENABLE KEYS */;


--
-- Definition of table `core_vendors`
--

DROP TABLE IF EXISTS `core_vendors`;
CREATE TABLE `core_vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_vendors`
--

/*!40000 ALTER TABLE `core_vendors` DISABLE KEYS */;
INSERT INTO `core_vendors` (`id`,`name`,`mobile`,`photo`,`address`) VALUES 
 (1,'Abdur Rahman','23432432','1.jpeg','Testsa fsa fsdaf'),
 (2,'Jahidul Islam','23432432342','2.png','Test');
/*!40000 ALTER TABLE `core_vendors` ENABLE KEYS */;


--
-- Definition of table `core_warehouses`
--

DROP TABLE IF EXISTS `core_warehouses`;
CREATE TABLE `core_warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_warehouses`
--

/*!40000 ALTER TABLE `core_warehouses` DISABLE KEYS */;
INSERT INTO `core_warehouses` (`id`,`name`,`city`,`contact`) VALUES 
 (1,'Tajgon','Dhaka','4543534534'),
 (2,'Rangpur','Rangpur','324242342'),
 (3,'Badda','Rampura','3434334324');
/*!40000 ALTER TABLE `core_warehouses` ENABLE KEYS */;


--
-- Definition of table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturer`
--

/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`id`,`name`,`contact`) VALUES 
 (2,'ISL','2345454'),
 (3,'IDB','9390033'),
 (5,'APCL','23432432');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;


--
-- Definition of trigger `ad_manufacturer`
--

DROP TRIGGER /*!50030 IF EXISTS */ `ad_manufacturer`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `ad_manufacturer` AFTER DELETE ON `manufacturer` FOR EACH ROW begin
  delete from product where manufacturer_id=old.id;
end $$

DELIMITER ;

--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `manufacturer_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`name`,`price`,`manufacturer_id`) VALUES 
 (3,'HRM',100000,2),
 (4,'ERP',3000000,2),
 (5,'Car',900000,3),
 (7,'Headphone',2000,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Definition of table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` (`id`,`student_id`,`amount`,`created_at`) VALUES 
 (1,1,2000,'2025-02-03 11:28:00'),
 (2,3,3000,'2025-02-03 11:28:00'),
 (3,1,2000,'2025-02-03 11:28:00');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`,`name`) VALUES 
 (1,'Admin'),
 (2,'Manager'),
 (3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `payload` varchar(45) NOT NULL DEFAULT '',
  `last_activity` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sessions`
--

/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


--
-- Definition of table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`,`name`,`mobile`) VALUES 
 (1,'Jahid','3434333'),
 (2,'Rahim','4543434'),
 (3,'Karim','4343432');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;


--
-- Definition of table `test.sessions`
--

DROP TABLE IF EXISTS `test.sessions`;
CREATE TABLE `test.sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL DEFAULT '',
  `payload` decimal(10,0) NOT NULL DEFAULT 0,
  `last_actions` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `test.sessions`
--

/*!40000 ALTER TABLE `test.sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `test.sessions` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`password`,`role_id`) VALUES 
 (1,'jahid2','111111',1),
 (2,'Test333','333333',2),
 (3,'rahim','111111',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE `users1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users1`
--

/*!40000 ALTER TABLE `users1` DISABLE KEYS */;
INSERT INTO `users1` (`id`,`name`,`created_at`,`password`,`inactive`) VALUES 
 (1,'jahid','2025-02-01 10:50:26','111111',0),
 (2,'rasel','2025-02-01 10:50:26','444444',0),
 (3,'karim','2025-02-01 10:50:26','222222',0);
/*!40000 ALTER TABLE `users1` ENABLE KEYS */;


--
-- Definition of procedure `add_manufacturer`
--

DROP PROCEDURE IF EXISTS `add_manufacturer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_manufacturer`(name varchar(20),contact varchar(20))
begin
  insert into manufacturer(name,contact)values(name,contact);
end $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of view `v_product_list1`
--

DROP TABLE IF EXISTS `v_product_list1`;
DROP VIEW IF EXISTS `v_product_list1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product_list1` AS select `p`.`id` AS `id`,`p`.`name` AS `product_name`,`m`.`name` AS `mfg_name` from (`product` `p` join `manufacturer` `m`) where `m`.`id` = `p`.`manufacturer_id` and `p`.`price` > 5000;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
