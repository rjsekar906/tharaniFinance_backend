-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for noahdb
CREATE DATABASE IF NOT EXISTS `noahdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `noahdb`;

-- Dumping structure for table noahdb.church_detail
CREATE TABLE IF NOT EXISTS `church_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `landline` bigint(20) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `state` varchar(50) NOT NULL,
  `union_pastorate_church_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKk2tx4arufdfgxdtl6twn10fmj` (`phone`,`name`),
  KEY `FK7owmc0te0bj1qpu4hqui4ibbs` (`union_pastorate_church_id`),
  CONSTRAINT `FK7owmc0te0bj1qpu4hqui4ibbs` FOREIGN KEY (`union_pastorate_church_id`) REFERENCES `union_pastorate_church` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.church_detail: ~28 rows (approximately)
/*!40000 ALTER TABLE `church_detail` DISABLE KEYS */;
INSERT INTO `church_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `address`, `country`, `landline`, `location`, `name`, `phone`, `state`, `union_pastorate_church_id`) VALUES
	(1, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Udayagiri', 'Udayagiri', 8012694035, 'Udayagiri', NULL),
	(2, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Risungia', 'Risungia', 8012694035, 'Risungia', NULL),
	(3, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Tikabali', 'Tikabali', 8012694035, 'Tikabali', NULL),
	(4, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878763, 'Raikia', 'Raikia', 8012694035, 'Raikia', 4),
	(5, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878765, 'Gunjibadi', 'Gunjibadi', 8017654356, 'Gunjibadi', 5),
	(6, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878776, 'Mondakia', 'Mondakia', 8012694035, 'Mondakia', 6),
	(7, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878787, 'Balliguda', 'Balliguda', 8012694035, 'Balliguda', 7),
	(8, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Banjamaha', 'Banjamaha', 8012694035, 'Banjamaha', 8),
	(9, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Terabadi', 'Terabadi', 8017654356, 'Terabadi', 9),
	(10, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Simonbadi', 'Simonbadi', 8012694035, 'Simonbadi', 10),
	(11, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Rutungia', 'Rutungia', 8012694035, 'Rutungia', 11),
	(12, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Budaguda', 'Budaguda', 8012694035, 'Budaguda', 12),
	(13, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Tumudibandha', 'Tumudibandha', 8017654356, 'Tumudibandha', 13),
	(14, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Srirampur', 'Srirampur', 8012694035, 'Srirampur', 14),
	(15, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Pokari', 'Pokari', 8012694035, 'Pokari', 15),
	(16, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Gluda', 'Gluda', 8012694035, 'Gluda', 16),
	(17, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Subarnagiri', 'Subarnagiri', 8017654356, 'Subarnagiri', 17),
	(18, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Parigada', 'Parigada', 8012694035, 'Parigada', 18),
	(19, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Daringabadi', 'Daringabadi', 8012694035, 'Daringabadi', 19),
	(20, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Dhusarigaon', 'Dhusarigaon', 8012694035, 'Dhusarigaon', 20),
	(21, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Lambadanga', 'Lambadanga', 8017654356, 'Lambadanga', 21),
	(22, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Dasingabadai', 'Dasingabadai', 8012694035, 'Dasingabadai', 22),
	(23, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Kerkebadi', 'Kerkebadi', 8012694035, 'Kerkebadi', 23),
	(24, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Mahagudi', 'Mahagudi', 8012694035, 'Mahagudi', 24),
	(25, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Madhukupda', 'Madhukupda', 8017654356, 'Madhukupda', 25),
	(26, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Bondari', 'Bondari', 8012694035, 'Bondari', 26),
	(27, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Uradi', 'Uradi', 8012694035, 'Uradi', 27),
	(28, 'BASKER', '2019-03-22 13:23:19', 'BASKER', '2019-03-22 13:23:21', 1, 'no:2,8th street', 'INDIA', 447878788, 'Galliguda & Siriguda', 'Galliguda & Siriguda', 8017654356, 'Galliguda & Siriguda', 28);
/*!40000 ALTER TABLE `church_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `approver` tinyint(1) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `joined_date` datetime DEFAULT NULL,
  `landline` bigint(20) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `username` varchar(15) NOT NULL,
  `church_id` bigint(20) DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `overall_pending_leavecount` int(11) DEFAULT '0',
  `overall_taken_leavecount` int(11) DEFAULT '0',
  `overall_vacation_takencount` int(11) DEFAULT '0',
  `overall_timeoff_pending_count` int(11) DEFAULT '0',
  `overall_timeoff_takencount` int(11) DEFAULT '0',
  `overall_absent_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_q3nme3uq00618x7nhnvtm21yj` (`email`),
  UNIQUE KEY `UK4xaf6gq9qb6brlo3flxxyuax4` (`username`,`email`),
  KEY `FKsj0b53a0ov1q51v8jcd4vmrle` (`church_id`),
  KEY `FKou6wbxug1d0qf9mabut3xqblo` (`manager_id`),
  CONSTRAINT `FKou6wbxug1d0qf9mabut3xqblo` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FKsj0b53a0ov1q51v8jcd4vmrle` FOREIGN KEY (`church_id`) REFERENCES `church_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.employee: ~7 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `address`, `approver`, `email`, `joined_date`, `landline`, `name`, `password`, `phone`, `username`, `church_id`, `manager_id`, `overall_pending_leavecount`, `overall_taken_leavecount`, `overall_vacation_takencount`, `overall_timeoff_pending_count`, `overall_timeoff_takencount`, `overall_absent_count`) VALUES
	(1, 'anonymousUser', '2019-03-22 19:18:42', 'basker', '2019-04-19 11:49:32', 1, 'no:12,8th street,chennai,thiruvanmaiyur', 0, 'c1pastor@gmail.com', '2017-02-06 00:00:00', 6977548574, 'c1pastor', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 784864354, 'c1pastor', 1, 2, 44, 0, 0, 15, 0, 1),
	(2, 'anonymousUser', '2019-03-22 19:21:05', 'navin', '2019-04-20 03:17:41', 1, 'no:12,8th street,chennai,thiruvanmaiyur', 0, 'bishop@gmail.com', '2017-02-06 00:00:00', 6977548574, 'bishop', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 784864354, 'bishop', 3, NULL, 37, 6, 0, 9, 6, 4),
	(3, 'anonymousUser', '2019-03-28 16:35:05', 'c1pastor', '2019-04-20 11:32:39', 1, 'no:12,8th street,chennai,porur', 0, 'c1employee1@gmail.com', '1998-12-31 00:00:00', 9442323245, 'c1employee1', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 1234567892, 'c1employee1', 1, 1, 36, 7, 0, 8, 7, 0),
	(8, 'anonymousUser', '2019-03-28 16:35:05', 'bishop', '2019-05-04 02:41:17', 1, 'no:12,8th street,chennai,porur', 0, 'c2pastor@gmail.com', '1998-12-31 00:00:00', 9442323245, 'c2pastor', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 1234567892, 'c2pastor', 2, 2, 33, 10, 0, 5, 10, 1),
	(9, 'anonymousUser', '2019-03-28 16:35:05', 'c2pastor', '2019-05-04 03:49:01', 1, 'no:12,8th street,chennai,porur', 0, 'c2employee1@gmail.com', '1998-12-31 00:00:00', 9442323245, 'c2employee1', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 1234567892, 'c2employee1', 2, 8, 37, 6, 0, 9, 6, 0),
	(10, 'anonymousUser', '2019-03-28 16:35:05', 'c1pastor', '2019-04-20 12:19:35', 1, 'no:12,8th street,chennai,porur', 0, 'c1employee2@gmail.com', '1998-12-31 00:00:00', 9442323245, 'c1employee2', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 1234567892, 'c1employee2', 1, 1, 36, 7, 0, 8, 7, 0),
	(11, 'anonymousUser', '2019-03-28 16:35:05', 'basker', '2019-04-20 03:19:22', 1, 'no:12,8th street,chennai,porur', 0, 'c2employee2@gmail.com', '1998-12-31 00:00:00', 9442323245, 'c2employee2', '$2a$10$EtcHsJ34iMeZJIMmY4BRqOCD8CqT6xyMmIqpMJ3pb0rJe8GQLD8oO', 1234567892, 'c2employee2', 2, 8, 38, 5, 0, 10, 5, 0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table noahdb.employee_roles
CREATE TABLE IF NOT EXISTS `employee_roles` (
  `employee_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`employee_id`,`role_id`),
  KEY `FK398vvu81xw154mvy3g2eytscn` (`role_id`),
  CONSTRAINT `FK398vvu81xw154mvy3g2eytscn` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK4gexbjj0or2y67pho78k79d73` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.employee_roles: ~8 rows (approximately)
/*!40000 ALTER TABLE `employee_roles` DISABLE KEYS */;
INSERT INTO `employee_roles` (`employee_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(1, 2),
	(8, 2),
	(2, 3);
/*!40000 ALTER TABLE `employee_roles` ENABLE KEYS */;

-- Dumping structure for table noahdb.leave_allowed_days
CREATE TABLE IF NOT EXISTS `leave_allowed_days` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `leave_name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5j88w6t913x7dr90tiyyf2ra6` (`leave_name`,`leave_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.leave_allowed_days: ~2 rows (approximately)
/*!40000 ALTER TABLE `leave_allowed_days` DISABLE KEYS */;
INSERT INTO `leave_allowed_days` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `description`, `leave_date`, `leave_name`) VALUES
	(1, 'BASKER', '2019-04-14 11:02:45', 'BASKER', '2019-04-14 11:02:54', 1, 'pongal', '2019-01-14', 'pongal'),
	(2, 'BASKER', '2019-04-14 11:02:45', 'BASKER', '2019-04-14 11:02:54', 1, 'deepavali', '2019-08-26', 'deepavali');
/*!40000 ALTER TABLE `leave_allowed_days` ENABLE KEYS */;

-- Dumping structure for table noahdb.leave_detail
CREATE TABLE IF NOT EXISTS `leave_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `current_status` varchar(40) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `number_of_days_leave` float DEFAULT '0',
  `reason_for_approved_cancelled` varchar(255) DEFAULT NULL,
  `reason_from user` varchar(255) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `leave_type_id` bigint(20) DEFAULT NULL,
  `approval_status` tinyint(1) DEFAULT NULL,
  `no_of_lop` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK6e9ay2kqwydvcaihv50l1grmf` (`emp_id`),
  KEY `FKp1ewsjiaorjx81hbjtr3sgye9` (`leave_type_id`),
  CONSTRAINT `FK6e9ay2kqwydvcaihv50l1grmf` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FKp1ewsjiaorjx81hbjtr3sgye9` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.leave_detail: ~24 rows (approximately)
/*!40000 ALTER TABLE `leave_detail` DISABLE KEYS */;
INSERT INTO `leave_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `current_status`, `from_date`, `number_of_days_leave`, `reason_for_approved_cancelled`, `reason_from user`, `to_date`, `emp_id`, `leave_type_id`, `approval_status`, `no_of_lop`) VALUES
	(36, NULL, NULL, 'basker', '2019-04-18 03:44:48', 0, 'Requested', '2019-04-13', 3, NULL, 'testhrrrrr  jjjj', '2019-04-15', 3, 1, NULL, NULL),
	(37, NULL, NULL, 'basker', '2019-04-18 11:09:31', 1, 'Cancelled', '2019-04-21', 4, 'uhhhuhuhuhuh', 'errerererere', '2019-04-24', 2, 4, 0, NULL),
	(38, 'navin', '2019-04-15 03:38:53', 'navin', '2019-04-15 03:38:53', 1, 'Approved', '2019-04-16', 2, 'hgggfffffff', '', '2019-04-17', 2, 1, 1, NULL),
	(39, 'navin', '2019-04-15 03:46:17', 'navin', '2019-04-15 03:46:17', 1, 'Requested', '2019-04-16', 2, NULL, 'w3er', '2019-04-17', 2, 1, NULL, NULL),
	(40, NULL, NULL, 'navin', '2019-04-18 09:24:07', 1, 'Approved', '2019-04-16', 3, 'rfgrgrgrgrg', 'dvfvdfvfv', '2019-04-18', 3, 1, 1, NULL),
	(41, NULL, NULL, 'basker', '2019-04-15 03:59:49', 1, 'Approved', '2019-04-14', 4, 'testing', 'sdsdsdsd', '2019-04-17', 1, 1, 1, NULL),
	(42, 'navin', '2019-04-17 15:22:33', 'navin', '2019-04-17 15:22:33', 1, 'Requested', '2019-04-16', NULL, NULL, 'leave', '2019-04-18', 2, 1, NULL, NULL),
	(43, NULL, NULL, 'navin', '2019-04-17 17:33:33', 1, 'Requested', '2019-04-17', 1, NULL, 'test', '2019-04-17', 1, 1, NULL, NULL),
	(44, 'basker', '2019-04-18 04:14:07', 'basker', '2019-04-18 04:14:07', 1, 'Requested', '2019-04-18', 1, NULL, 'okay take leave', '2019-04-18', 3, 1, NULL, NULL),
	(45, 'basker', '2019-04-18 10:57:55', 'basker', '2019-04-18 10:57:55', 1, 'Requested', '2019-04-18', 1, NULL, 'yyyy hhhhh jjjjjj', '2019-04-18', 2, 1, NULL, NULL),
	(46, 'basker', '2019-04-18 11:08:59', 'basker', '2019-04-18 11:08:59', 1, 'Approved', '2019-04-18', 1, 'eeererererererr', '', '2019-04-18', 2, 1, 1, NULL),
	(47, 'basker', '2019-04-18 11:15:25', 'basker', '2019-04-18 11:15:25', 1, 'Approved', '2019-04-18', 1, 'm nn n  ', '', '2019-04-18', 3, 1, 1, NULL),
	(48, NULL, NULL, 'basker', '2019-04-19 11:49:32', 1, 'Approved', '2019-04-19', 1, 'yes ', 'fever', '2019-04-19', 1, 4, 1, 1),
	(49, 'navin', '2019-04-20 03:17:41', 'navin', '2019-04-20 03:17:41', 1, 'Approved', '2019-04-20', 1, '33e3e3e3e3e3 okay', '', '2019-04-20', 2, 1, 1, NULL),
	(50, 'basker', '2019-04-20 03:19:22', 'basker', '2019-04-20 03:19:22', 1, 'Approved', '2019-04-20', 1, 'edededededed', '', '2019-04-20', 3, 1, 1, NULL),
	(51, 'c1pastor', '2019-04-20 11:19:27', 'c1pastor', '2019-04-20 11:19:27', 1, 'Requested', '2019-04-20', 1, NULL, '8', '2019-04-20', 1, 1, NULL, NULL),
	(52, 'c1pastor', '2019-04-20 11:24:15', 'c1pastor', '2019-04-20 11:24:15', 1, 'Approved', '2019-04-20', 1, '77y7y7yy', '', '2019-04-20', 10, 1, 1, NULL),
	(53, 'c1pastor', '2019-04-20 11:25:07', 'c1pastor', '2019-04-20 11:25:07', 1, 'Approved', '2019-04-20', 1, 'u8u8u8u8', '', '2019-04-20', 3, 1, 1, NULL),
	(54, NULL, NULL, 'c1pastor', '2019-04-20 11:32:39', 1, 'Approved', '2019-04-20', 1, 'ok granted', 'yyyuyyyyyy', '2019-04-20', 3, 1, 1, NULL),
	(55, 'c1pastor', '2019-04-20 12:19:35', 'c1pastor', '2019-04-20 12:19:35', 1, 'Approved', '2019-04-20', 1, '334gt5gtgthth', '', '2019-04-20', 10, 1, 1, NULL),
	(56, 'bishop', '2019-05-04 02:38:35', 'bishop', '2019-05-04 02:38:35', 1, 'Approved', '2019-05-04', 1, 'jkjikjik gfgfg', '', '2019-05-04', 8, 4, 1, 1),
	(57, 'bishop', '2019-05-04 02:41:17', 'bishop', '2019-05-04 02:41:17', 1, 'Approved', '2019-05-10', 5, 'test', '', '2019-05-14', 8, 1, 1, NULL),
	(58, 'c2pastor', '2019-05-04 03:48:43', 'c2pastor', '2019-05-04 03:48:43', 1, 'Requested', '2019-05-04', 1, NULL, 'edfefefef', '2019-05-04', 8, 1, NULL, NULL),
	(59, 'c2pastor', '2019-05-04 03:49:01', 'c2pastor', '2019-05-04 03:49:01', 1, 'Approved', '2019-05-04', 1, 'efefefefefef', '', '2019-05-04', 9, 1, 1, NULL);
/*!40000 ALTER TABLE `leave_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.leave_history_detail
CREATE TABLE IF NOT EXISTS `leave_history_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `current_status` varchar(40) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `number_of_days_leave` float DEFAULT NULL,
  `reason_for_approved_cancelled` varchar(255) DEFAULT NULL,
  `reason_from user` varchar(255) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `leave_type_id` bigint(20) DEFAULT NULL,
  `approval_status` tinyint(1) DEFAULT NULL,
  `no_of_lop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6e9ay2kqwydvcaihv50l1grmf` (`emp_id`),
  KEY `FKp1ewsjiaorjx81hbjtr3sgye9` (`leave_type_id`),
  CONSTRAINT `FKlj79a69wlytq301r4l6ujxofy` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_type` (`id`),
  CONSTRAINT `FKmxap2xy2pkhka3uvku5fd8s64` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `leave_history_detail_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `leave_history_detail_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table noahdb.leave_history_detail: ~4 rows (approximately)
/*!40000 ALTER TABLE `leave_history_detail` DISABLE KEYS */;
INSERT INTO `leave_history_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `current_status`, `from_date`, `number_of_days_leave`, `reason_for_approved_cancelled`, `reason_from user`, `to_date`, `emp_id`, `leave_type_id`, `approval_status`, `no_of_lop`) VALUES
	(36, 'basker', '2019-04-14 08:11:44', 'basker', '2019-04-14 08:11:44', 1, 'Approved', '2019-04-13', 3, 'testing', 'test', '2019-04-15', 3, 1, 1, NULL),
	(37, NULL, NULL, 'basker', '2019-04-18 11:09:31', 1, 'Approved', '2019-04-21', 4, 'uhhhuhuhuhuh', 'errerererere', '2019-04-24', 2, 4, 1, 4),
	(38, 'navin', '2019-04-18 09:24:07', 'navin', '2019-04-18 09:24:07', 1, 'Requested', '2019-04-16', 3, NULL, 'dvfvdfvfv', '2019-04-18', 3, 1, NULL, NULL),
	(39, 'basker', '2019-04-19 11:49:32', 'basker', '2019-04-19 11:49:32', 1, 'Requested', '2019-04-19', 1, NULL, 'fever', '2019-04-19', 1, 4, NULL, NULL),
	(40, 'c1pastor', '2019-04-20 11:32:39', 'c1pastor', '2019-04-20 11:32:39', 1, 'Requested', '2019-04-20', 1, NULL, 'yyyuyyyyyy', '2019-04-20', 3, 1, NULL, NULL);
/*!40000 ALTER TABLE `leave_history_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.leave_type
CREATE TABLE IF NOT EXISTS `leave_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leave_name` varchar(15) NOT NULL,
  `max_annual_leave_count` int(11) DEFAULT '0',
  `max_number_of_days_leave_allowed_mon` int(11) DEFAULT '0',
  `max_number_of_days_leave_allowed_per_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKiffliyt59xg600gyrb697bgof` (`leave_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.leave_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `leave_type` DISABLE KEYS */;
INSERT INTO `leave_type` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `description`, `leave_name`, `max_annual_leave_count`, `max_number_of_days_leave_allowed_mon`, `max_number_of_days_leave_allowed_per_time`) VALUES
	(1, NULL, NULL, NULL, NULL, 1, NULL, 'TIME_OFF', 15, 0, 0),
	(2, NULL, NULL, NULL, NULL, 1, NULL, 'VACATION', 30, 0, 0),
	(4, NULL, NULL, NULL, NULL, 1, NULL, 'ABSENT', 0, 0, 0);
/*!40000 ALTER TABLE `leave_type` ENABLE KEYS */;

-- Dumping structure for table noahdb.offering_detail
CREATE TABLE IF NOT EXISTS `offering_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `contact_number` bigint(20) DEFAULT NULL,
  `email_address` varchar(40) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `net_amount` float DEFAULT NULL,
  `offered_date` datetime DEFAULT NULL,
  `church_id` bigint(20) DEFAULT NULL,
  `offering_mode_id` bigint(20) DEFAULT NULL,
  `donater` varchar(20) DEFAULT NULL,
  `offerer_given_percent` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpic1k5ex8vv3e0u2xu3xgxtr6` (`church_id`),
  KEY `FKpwktdkqyikresxvi9nn4mj3l` (`offering_mode_id`),
  CONSTRAINT `FKpic1k5ex8vv3e0u2xu3xgxtr6` FOREIGN KEY (`church_id`) REFERENCES `church_detail` (`id`),
  CONSTRAINT `FKpwktdkqyikresxvi9nn4mj3l` FOREIGN KEY (`offering_mode_id`) REFERENCES `offering_mode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.offering_detail: ~12 rows (approximately)
/*!40000 ALTER TABLE `offering_detail` DISABLE KEYS */;
INSERT INTO `offering_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `contact_number`, `email_address`, `name`, `net_amount`, `offered_date`, `church_id`, `offering_mode_id`, `donater`, `offerer_given_percent`) VALUES
	(1, NULL, NULL, 'navin', '2019-04-10 15:54:00', 1, 5696969669, 'e@gmail.com', 'gold', 300, '2019-04-09 18:30:00', 1, 1, 'rosy', 3),
	(2, 'navin', '2019-04-10 16:59:10', 'navin', '2019-04-10 16:59:10', 1, 5664444444, 'd@gmail.com', 'wdwdwdw', 3432, '2019-04-09 18:30:00', 2, 1, 'wswdwdwd', 3),
	(3, 'basker', '2019-04-18 09:54:43', 'basker', '2019-04-18 09:54:43', 1, 8999999999, 'n@w.nom', 'jnnjnn', 88888, '2019-04-18 09:53:42', 3, 1, 'lmmkm', 3),
	(4, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 4, 1, 'wsfwf', 5),
	(6, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 5, 1, 'wsfwf', 5),
	(7, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 6, 1, 'wsfwf', 5),
	(8, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 7, 1, 'wsfwf', 5),
	(9, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 8, 1, 'wsfwf', 5),
	(10, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 9, 1, 'wsfwf', 5),
	(11, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 10, 1, 'wsfwf', 5),
	(12, 'basker', '2019-04-18 10:47:56', 'basker', '2019-04-18 10:47:56', 1, 77777777777777, 'e@g.com', 'fegergege', 888888, '2019-04-18 10:47:12', 11, 1, 'wsfwf', 5),
	(13, 'walter', '2019-04-20 05:14:39', 'walter', '2019-04-20 05:14:39', 1, 987777777, 'guru@gmail.com', 'cement', 89900, '2019-04-20 05:13:38', 12, 1, 'kumar', 5);
/*!40000 ALTER TABLE `offering_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.offering_mode
CREATE TABLE IF NOT EXISTS `offering_mode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKq3d1utl8yyot0mi09acb48skn` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.offering_mode: ~0 rows (approximately)
/*!40000 ALTER TABLE `offering_mode` DISABLE KEYS */;
INSERT INTO `offering_mode` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `description`, `name`) VALUES
	(1, 'BASKER', '2019-03-24 22:25:18', 'BASKER', '2019-03-24 22:25:30', 1, 'CASH', 'CASH');
/*!40000 ALTER TABLE `offering_mode` ENABLE KEYS */;

-- Dumping structure for table noahdb.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `name`) VALUES
	(1, 'BASKER', '2019-03-22 17:23:23', 'BASKER', '2019-03-22 17:23:19', 1, 'ROLE_USER'),
	(2, 'BASKER', '2019-03-22 17:23:25', 'BASKER', '2019-03-22 17:23:21', 1, 'ROLE_APPROVER'),
	(3, 'BASKER', '2019-04-13 22:55:28', 'BASKER', '2019-04-05 23:12:08', 1, 'ROLE_SUPER_ADMIN'),
	(4, 'BASKER', '2019-04-13 22:55:28', 'BASKER', '2019-04-05 23:12:08', 1, 'ROLE_IT_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table noahdb.salary_detail
CREATE TABLE IF NOT EXISTS `salary_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `advance_amount` bigint(20) DEFAULT '0',
  `advance_amount_date` datetime DEFAULT NULL,
  `advance_amount_reason` varchar(255) DEFAULT '0',
  `balance_amount_current_month` bigint(20) DEFAULT '0',
  `net_salary_given_date` datetime DEFAULT NULL,
  `net_salary_per_month` bigint(20) DEFAULT '0',
  `emp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKc3ho2b74il7tpu84uumhgwnxo` (`emp_id`),
  CONSTRAINT `FK66wkualuanvifewdotl5e3v7w` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.salary_detail: ~7 rows (approximately)
/*!40000 ALTER TABLE `salary_detail` DISABLE KEYS */;
INSERT INTO `salary_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `advance_amount`, `advance_amount_date`, `advance_amount_reason`, `balance_amount_current_month`, `net_salary_given_date`, `net_salary_per_month`, `emp_id`) VALUES
	(80, NULL, NULL, 'c1pastor', '2019-05-04 03:51:22', 1, 400, '2019-05-04 03:51:00', 'e4e4r4r4r4r4r', 44040, '2019-04-09 11:30:34', 44440, 1),
	(81, NULL, NULL, 'c1pastor', '2019-04-20 12:20:26', 1, 50, '2019-04-20 12:17:59', 'frfgrfrgrgrgrgrgr', 299950, '2019-04-10 17:04:27', 300000, 3),
	(83, 'basker', '2019-04-18 10:43:51', 'basker', '2019-04-19 13:48:04', 1, 8, '2019-04-18 18:30:00', 'uhjijik', 7777777769, '2019-04-18 10:42:51', 7777777777, 2),
	(84, 'c2pastor', '2019-05-04 02:45:44', 'c2pastor', '2019-05-04 04:27:02', 1, 400, '2019-05-04 04:26:38', 'uhuhuhuuhhu', 2600, '2019-05-04 02:45:29', 3000, 9),
	(85, 'c1pastor', '2019-05-04 02:54:35', 'c1pastor', '2019-05-04 03:52:15', 1, 560, '2019-05-04 03:51:56', 'edeecececec', 4440, '2019-05-04 02:54:16', 5000, 10),
	(86, 'c2pastor', '2019-05-04 03:11:41', 'c2pastor', '2019-05-04 03:11:41', 1, NULL, NULL, '', NULL, '2019-05-04 03:11:27', 6000, 8),
	(87, 'c2pastor', '2019-05-04 03:48:07', 'c2pastor', '2019-05-04 03:48:07', 1, NULL, NULL, '', NULL, '2019-05-04 03:47:57', 4000, 11);
/*!40000 ALTER TABLE `salary_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.salary_history_detail
CREATE TABLE IF NOT EXISTS `salary_history_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `advance_amount` bigint(20) DEFAULT '0',
  `advance_amount_date` datetime DEFAULT NULL,
  `advance_amount_reason` varchar(255) DEFAULT NULL,
  `balance_amount_current_month` bigint(20) DEFAULT '0',
  `net_salary_given_date` datetime DEFAULT NULL,
  `net_salary_per_month` bigint(20) DEFAULT '0',
  `emp_id` bigint(20) DEFAULT NULL,
  `approval_status` tinyint(1) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `reason_for_approved_cancelled` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4jgh9ybcgtkymh0cmle4335mo` (`emp_id`),
  CONSTRAINT `FK4jgh9ybcgtkymh0cmle4335mo` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_salary_history_detail_employee` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table noahdb.salary_history_detail: ~7 rows (approximately)
/*!40000 ALTER TABLE `salary_history_detail` DISABLE KEYS */;
INSERT INTO `salary_history_detail` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `advance_amount`, `advance_amount_date`, `advance_amount_reason`, `balance_amount_current_month`, `net_salary_given_date`, `net_salary_per_month`, `emp_id`, `approval_status`, `current_status`, `reason_for_approved_cancelled`) VALUES
	(102, 'navin', '2019-04-20 04:11:04', 'navin', '2019-04-20 04:11:04', 1, 66, '2019-04-20 04:10:29', '8u887', NULL, NULL, NULL, 3, 1, 'Approved', 'okay'),
	(103, 'basker', '2019-04-20 04:13:22', 'basker', '2019-04-20 04:13:22', 1, 40, '2019-04-20 04:12:55', 'dededede', NULL, NULL, NULL, 2, 0, 'Cancelled', 'dedededede'),
	(104, NULL, NULL, 'c1pastor', '2019-04-20 11:34:47', 1, 400, '2019-04-20 11:33:44', 'okay', NULL, '1970-01-01 00:00:00', NULL, 3, 1, 'Approved', 'granted'),
	(105, NULL, NULL, 'bishop', '2019-05-04 01:40:52', 1, 60, '2019-04-20 12:11:28', 'efr4t5t5 rtrthtrtrt', NULL, '1970-01-01 00:00:00', NULL, NULL, NULL, NULL, ''),
	(106, NULL, NULL, 'c1pastor', '2019-04-20 12:20:26', 1, 50, '2019-04-20 12:17:59', 'frfgrfrgrgrgrgrgr', NULL, '1970-01-01 00:00:00', NULL, 3, 1, 'Approved', 'rfg5g5g5g5'),
	(107, 'c1pastor', '2019-05-04 03:51:22', 'c1pastor', '2019-05-04 03:51:22', 1, 400, '2019-05-04 03:51:00', 'e4e4r4r4r4r4r', NULL, NULL, NULL, 1, 1, 'Approved', '4r4ddfvcddvdvdfvdvdvdvd'),
	(108, 'c1pastor', '2019-05-04 03:52:15', 'c1pastor', '2019-05-04 03:52:15', 1, 560, '2019-05-04 03:51:56', 'edeecececec', NULL, NULL, NULL, 10, 1, 'Approved', 'eececececec'),
	(109, 'c2pastor', '2019-05-04 04:27:02', 'c2pastor', '2019-05-04 04:27:02', 1, 400, '2019-05-04 04:26:38', 'uhuhuhuuhhu', NULL, NULL, NULL, 9, 1, 'Approved', 'ygguuuuu');
/*!40000 ALTER TABLE `salary_history_detail` ENABLE KEYS */;

-- Dumping structure for table noahdb.union_church
CREATE TABLE IF NOT EXISTS `union_church` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `union_church_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkj9j4077a7x2l6s9n4w54om7l` (`union_church_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.union_church: ~4 rows (approximately)
/*!40000 ALTER TABLE `union_church` DISABLE KEYS */;
INSERT INTO `union_church` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `description`, `union_church_name`) VALUES
	(1, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Udayagiri Pastorate Union', 'Udayagiri'),
	(2, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Balliguda Pastorate Union', 'Balliguda'),
	(3, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Daringabadi Pastorate Union', 'Daringabadi'),
	(4, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Rayagada Pastorate Union', 'Rayagada');
/*!40000 ALTER TABLE `union_church` ENABLE KEYS */;

-- Dumping structure for table noahdb.union_pastorate_church
CREATE TABLE IF NOT EXISTS `union_pastorate_church` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `active_indicator` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `union_pastorate_church_name` varchar(50) NOT NULL,
  `union_church_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKmcmawpht9kr6vpvqile2bqrth` (`union_pastorate_church_name`),
  KEY `FKeotky73org9dp1ewf5hl3ei97` (`union_church_id`),
  CONSTRAINT `FKeotky73org9dp1ewf5hl3ei97` FOREIGN KEY (`union_church_id`) REFERENCES `union_church` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- Dumping data for table noahdb.union_pastorate_church: ~28 rows (approximately)
/*!40000 ALTER TABLE `union_pastorate_church` DISABLE KEYS */;
INSERT INTO `union_pastorate_church` (`id`, `created_by`, `created_date`, `last_modified_by`, `last_modified_date`, `active_indicator`, `description`, `union_pastorate_church_name`, `union_church_id`) VALUES
	(1, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Udayagiri Pastorate', 'Udayagiri', 1),
	(2, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Risungia Pastorate', 'Risungia', 1),
	(3, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Tikabali Pastorate', 'Tikabali', 1),
	(4, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Raikia Pastorate', 'Raikia', 1),
	(5, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Gunjibadi Pastorate', 'Gunjibadi', 1),
	(6, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Mondakia Pastorate', 'Mondakia', 1),
	(7, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Balliguda Pastorate', 'Balliguda', 2),
	(8, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Banjamaha Pastorate', 'Banjamaha', 2),
	(9, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Terabadi Pastorate', 'Terabadi', 2),
	(10, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Simonbadi Pastorate', 'Simonbadi', 2),
	(11, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Rutungia Pastorate', 'Rutungia', 2),
	(12, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Budaguda Pastorate', 'Budaguda', 2),
	(13, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Tumudibandha Pastorate', 'Tumudibandha', 2),
	(14, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Srirampur Pastorate', 'Srirampur', 2),
	(15, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Pokari Pastorate', 'Pokari', 2),
	(16, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Gluda Pastorate', 'Gluda', 2),
	(17, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Subarnagiri Pastorate', 'Subarnagiri', 2),
	(18, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Parigada Pastorate', 'Parigada', 2),
	(19, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Daringabadi Pastorate', 'Daringabadi', 3),
	(20, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Dhusarigaon Pastorate', 'Dhusarigaon', 3),
	(21, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Lambadanga Pastorate', 'Lambadanga', 3),
	(22, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Dasingabadai Pastorate', 'Dasingabadai', 3),
	(23, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Kerkebadi Pastorate', 'Kerkebadi', 3),
	(24, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Mahagudi Pastorate', 'Mahagudi', 3),
	(25, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Madhukupda Pastorate', 'Madhukupda', 4),
	(26, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Bondari Pastorate', 'Bondari', 4),
	(27, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Uradi Pastorate', 'Uradi', 4),
	(28, 'BASKER', '2019-05-02 20:44:56', 'BASKER', '2019-05-02 20:44:45', 1, 'Galliguda & Siriguda Pastorate', 'Galliguda & Siriguda', 4);
/*!40000 ALTER TABLE `union_pastorate_church` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
