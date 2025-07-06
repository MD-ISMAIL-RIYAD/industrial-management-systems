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
-- Create schema erp_database
--

CREATE DATABASE IF NOT EXISTS erp_database;
USE erp_database;

--
-- Definition of table `fnb_bom_finished_goods`
--

DROP TABLE IF EXISTS `fnb_bom_finished_goods`;
CREATE TABLE `fnb_bom_finished_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_bom_finished_goods`
--

/*!40000 ALTER TABLE `fnb_bom_finished_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_bom_finished_goods` ENABLE KEYS */;


--
-- Definition of table `fnb_boms`
--

DROP TABLE IF EXISTS `fnb_boms`;
CREATE TABLE `fnb_boms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) NOT NULL,
  `labour_cost` float NOT NULL,
  `date` datetime DEFAULT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_boms`
--

/*!40000 ALTER TABLE `fnb_boms` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_boms` ENABLE KEYS */;


--
-- Definition of table `fnb_countries`
--

DROP TABLE IF EXISTS `fnb_countries`;
CREATE TABLE `fnb_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_countries`
--

/*!40000 ALTER TABLE `fnb_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_countries` ENABLE KEYS */;


--
-- Definition of table `fnb_customers`
--

DROP TABLE IF EXISTS `fnb_customers`;
CREATE TABLE `fnb_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_customers`
--

/*!40000 ALTER TABLE `fnb_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_customers` ENABLE KEYS */;


--
-- Definition of table `fnb_employees`
--

DROP TABLE IF EXISTS `fnb_employees`;
CREATE TABLE `fnb_employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_employees`
--

/*!40000 ALTER TABLE `fnb_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_employees` ENABLE KEYS */;


--
-- Definition of table `fnb_manufacturers`
--

DROP TABLE IF EXISTS `fnb_manufacturers`;
CREATE TABLE `fnb_manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_manufacturers`
--

/*!40000 ALTER TABLE `fnb_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_manufacturers` ENABLE KEYS */;


--
-- Definition of table `fnb_orders`
--

DROP TABLE IF EXISTS `fnb_orders`;
CREATE TABLE `fnb_orders` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_orders`
--

/*!40000 ALTER TABLE `fnb_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_orders` ENABLE KEYS */;


--
-- Definition of table `fnb_payment_methods`
--

DROP TABLE IF EXISTS `fnb_payment_methods`;
CREATE TABLE `fnb_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_payment_methods`
--

/*!40000 ALTER TABLE `fnb_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_payment_methods` ENABLE KEYS */;


--
-- Definition of table `fnb_product_categories`
--

DROP TABLE IF EXISTS `fnb_product_categories`;
CREATE TABLE `fnb_product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_product_categories`
--

/*!40000 ALTER TABLE `fnb_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_product_categories` ENABLE KEYS */;


--
-- Definition of table `fnb_product_sections`
--

DROP TABLE IF EXISTS `fnb_product_sections`;
CREATE TABLE `fnb_product_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_product_sections`
--

/*!40000 ALTER TABLE `fnb_product_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_product_sections` ENABLE KEYS */;


--
-- Definition of table `fnb_product_types`
--

DROP TABLE IF EXISTS `fnb_product_types`;
CREATE TABLE `fnb_product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_product_types`
--

/*!40000 ALTER TABLE `fnb_product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_product_types` ENABLE KEYS */;


--
-- Definition of table `fnb_product_units`
--

DROP TABLE IF EXISTS `fnb_product_units`;
CREATE TABLE `fnb_product_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_product_units`
--

/*!40000 ALTER TABLE `fnb_product_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_product_units` ENABLE KEYS */;


--
-- Definition of table `fnb_production_details`
--

DROP TABLE IF EXISTS `fnb_production_details`;
CREATE TABLE `fnb_production_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_production_details`
--

/*!40000 ALTER TABLE `fnb_production_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_production_details` ENABLE KEYS */;


--
-- Definition of table `fnb_productions`
--

DROP TABLE IF EXISTS `fnb_productions`;
CREATE TABLE `fnb_productions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_datetime` datetime NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `labor_cost` float NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `total_cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_productions`
--

/*!40000 ALTER TABLE `fnb_productions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_productions` ENABLE KEYS */;


--
-- Definition of table `fnb_products`
--

DROP TABLE IF EXISTS `fnb_products`;
CREATE TABLE `fnb_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(45) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `product_section_id` int(10) unsigned NOT NULL,
  `product_type_id` int(10) unsigned NOT NULL,
  `product_unit_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned DEFAULT NULL,
  `package_size` varchar(100) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `manufacturer_id` int(10) unsigned NOT NULL,
  `is_brand` tinyint(1) DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `regular_price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_discount` float DEFAULT 0,
  `manufacturing_cost` decimal(10,2) DEFAULT NULL,
  `current_stock` decimal(10,2) DEFAULT 0.00,
  `reorder_level` decimal(10,2) DEFAULT 0.00,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fnb_products`
--

/*!40000 ALTER TABLE `fnb_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_products` ENABLE KEYS */;


--
-- Definition of table `fnb_roles`
--

DROP TABLE IF EXISTS `fnb_roles`;
CREATE TABLE `fnb_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_roles`
--

/*!40000 ALTER TABLE `fnb_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_roles` ENABLE KEYS */;


--
-- Definition of table `fnb_stocks`
--

DROP TABLE IF EXISTS `fnb_stocks`;
CREATE TABLE `fnb_stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `transaction_type_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warehouse_id` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_stocks`
--

/*!40000 ALTER TABLE `fnb_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_stocks` ENABLE KEYS */;


--
-- Definition of table `fnb_supplier`
--

DROP TABLE IF EXISTS `fnb_supplier`;
CREATE TABLE `fnb_supplier` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_supplier`
--

/*!40000 ALTER TABLE `fnb_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_supplier` ENABLE KEYS */;


--
-- Definition of table `fnb_suppliers`
--

DROP TABLE IF EXISTS `fnb_suppliers`;
CREATE TABLE `fnb_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fnb_suppliers`
--

/*!40000 ALTER TABLE `fnb_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_suppliers` ENABLE KEYS */;


--
-- Definition of table `fnb_transaction_types`
--

DROP TABLE IF EXISTS `fnb_transaction_types`;
CREATE TABLE `fnb_transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `direction` enum('in','out') NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_transaction_types`
--

/*!40000 ALTER TABLE `fnb_transaction_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_transaction_types` ENABLE KEYS */;


--
-- Definition of table `fnb_users`
--

DROP TABLE IF EXISTS `fnb_users`;
CREATE TABLE `fnb_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_users`
--

/*!40000 ALTER TABLE `fnb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_users` ENABLE KEYS */;


--
-- Definition of table `fnb_warehouses`
--

DROP TABLE IF EXISTS `fnb_warehouses`;
CREATE TABLE `fnb_warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` text DEFAULT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fnb_warehouses`
--

/*!40000 ALTER TABLE `fnb_warehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnb_warehouses` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
