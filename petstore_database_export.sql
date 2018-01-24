-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pet_store
CREATE DATABASE IF NOT EXISTS `pet_store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pet_store`;

-- Dumping structure for table pet_store.pets
CREATE TABLE IF NOT EXISTS `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table pet_store.pets: ~5 rows (approximately)
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` (`id`, `name`, `type`, `created`, `modified`) VALUES
	(1, 'Nero', 'dog', '2018-01-22 14:29:35', NULL),
	(2, 'Cyrus', 'cat', '2018-01-22 14:29:54', NULL),
	(3, 'Miki', 'ferret', '2018-01-22 14:30:12', NULL),
	(6, 'Abby', 'cat', '2018-01-22 15:10:44', '2018-01-22 15:10:44'),
	(7, 'Randy', 'dog', '2018-01-22 15:10:56', '2018-01-22 15:10:56'),
	(8, 'Bobby', 'dog', '2018-01-24 12:13:39', '2018-01-24 12:13:39');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;

-- Dumping structure for table pet_store.phinxlog
CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pet_store.phinxlog: ~1 rows (approximately)
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
	(20180122, 'Users', '2018-01-22 17:00:53', '2018-01-22 17:00:53', 0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;

-- Dumping structure for table pet_store.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table pet_store.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `active`, `created`, `modified`) VALUES
	(10, 'andreea', '$2y$10$1EITpurv14clrV0jMhEo7eSKtYsaWnEsHjA5UR.cdf9bFUQUczu6i', 1, '2018-01-24 16:20:47', '2018-01-24 16:20:47');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
