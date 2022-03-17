-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 09:20 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customer`
--

CREATE TABLE `accounts_customer` (
  `id` bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_customer`
--

INSERT INTO `accounts_customer` (`id`, `name`, `phone`, `email`, `date_created`, `user_id`, `profile_pic`) VALUES
(1, 'John Doe', '555.756.4453', 'johndoe@gmail.com', '2022-03-04 12:37:59.513280', 3, '0101_ee1aYlw.JPG'),
(2, 'Peter Piper', '555.864.2828', 'peterpiper@gmail.com', '2022-03-04 13:06:10.826489', 2, NULL),
(3, 'Isidore DelPierro', '+237677952965', 'fontadore@gmail.com', '2022-03-16 09:08:42.618837', 1, '_KJB0466.JPG'),
(4, 'Sam Mbende', '555.756.4458', 'sammbende@gmail.com', '2022-03-16 09:44:12.552976', 8, ''),
(5, 'Jacob Zuma', '555.864.2829', 'jacobzuma@gmail.com', '2022-03-16 13:34:17.478501', 5, '0101.JPG'),
(6, 'robin', '555.756.4457', 'robin@gmail.com', '2022-03-17 08:15:06.756864', 10, '0101.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_order`
--

CREATE TABLE `accounts_order` (
  `id` bigint NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_order`
--

INSERT INTO `accounts_order` (`id`, `date_created`, `status`, `customer_id`, `product_id`, `note`) VALUES
(1, '2022-03-04 13:14:07.027081', 'Pending', 2, 3, 'Sup dawg. You balling now?'),
(2, '2022-03-04 13:14:39.124071', 'Out for delivery', 2, 1, 'Piper griller'),
(3, '2022-03-04 13:14:56.609278', 'Pending', 1, 2, 'Dished by John'),
(4, '2022-03-04 14:27:34.342401', 'Delivered', 2, 3, NULL),
(7, '2022-03-05 06:29:50.742893', 'Delivered', 1, 1, NULL),
(8, '2022-03-05 06:30:00.991372', 'Pending', 1, 2, NULL),
(9, '2022-03-05 06:30:10.985744', 'Out for delivery', 1, 3, 'Johnny ball'),
(10, '2022-03-05 06:43:02.329155', 'Out for delivery', 1, 1, 'John\'s grill'),
(11, '2022-03-05 06:43:02.472325', 'Delivered', 1, 2, 'Doe dishes'),
(12, '2022-03-05 06:43:02.663513', 'Pending', 1, 3, NULL),
(13, '2022-03-05 06:46:01.811744', 'Pending', 2, 2, 'Pipe Dishes'),
(14, '2022-03-05 06:46:01.988977', 'Out for delivery', 2, 3, 'Peter\'s ball'),
(15, '2022-03-05 06:46:02.122742', 'Delivered', 2, 1, 'Pete Grill'),
(17, '2022-03-05 06:46:02.314650', 'Out for delivery', 2, 1, 'Grill note'),
(18, '2022-03-08 15:08:13.148548', 'Pending', 2, 2, NULL),
(19, '2022-03-08 15:08:13.313716', 'Out for delivery', 2, 3, NULL),
(20, '2022-03-08 15:08:13.764787', 'Delivered', 2, 1, NULL),
(21, '2022-03-08 15:08:14.285581', 'Pending', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_product`
--

CREATE TABLE `accounts_product` (
  `id` bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_product`
--

INSERT INTO `accounts_product` (`id`, `name`, `price`, `category`, `description`, `date_created`) VALUES
(1, 'BBQ Grill', 200, 'Out Door', 'BBQ Grill here', '2022-03-04 13:07:42.378640'),
(2, 'Dishes', 50, 'Indoor', NULL, '2022-03-04 13:13:28.082065'),
(3, 'Ball', 30, 'Out Door', NULL, '2022-03-04 13:13:51.190262');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_product_tags`
--

CREATE TABLE `accounts_product_tags` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_product_tags`
--

INSERT INTO `accounts_product_tags` (`id`, `product_id`, `tag_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 3),
(4, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tag`
--

CREATE TABLE `accounts_tag` (
  `id` bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_tag`
--

INSERT INTO `accounts_tag` (`id`, `name`) VALUES
(1, 'Sports'),
(2, 'Summer'),
(3, 'Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add tag', 10, 'add_tag'),
(38, 'Can change tag', 10, 'change_tag'),
(39, 'Can delete tag', 10, 'delete_tag'),
(40, 'Can view tag', 10, 'view_tag');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$A8NXTIr5vo9iqcnIgs5wrp$0BFxXWGco3kSVgTfUnT2oAXa3krQU9lATMgFbxYU3PY=', '2022-03-17 08:15:29.408538', 1, 'izzy', 'Isidore', 'DelPierro', 'fontadore@gmail.com', 1, 1, '2022-03-04 12:28:51.000000'),
(2, 'pbkdf2_sha256$260000$LsRrJxUHUA5fmRlot8ggCY$7Fdo0VnsvIZ4LgQgXX91e/O+E/ybQEwZIHafFNdC5HI=', '2022-03-16 09:19:26.387841', 0, 'dodo', 'Dodo', 'Comic', 'dodo@gmail.com', 0, 1, '2022-03-04 12:31:16.000000'),
(3, 'pbkdf2_sha256$260000$e9kvd0Lpa5PB0nt9gIhRCx$GQtVl60vWMl5aa0xHzN9yuJTw4y5MwamyL/i9puU1ng=', '2022-03-16 13:21:22.027599', 0, 'erik', 'Erik', 'Erik', 'erik@gmail.com', 0, 1, '2022-03-15 20:58:15.000000'),
(4, 'pbkdf2_sha256$260000$YaNnMNaYh68P6ltgRHwkg3$4TgXaUmke7d9/tneedB5g95a9WnBVQHrA6AHAVZhSA0=', NULL, 0, 'tim', '', '', 'tim@gmail.com', 0, 1, '2022-03-15 21:02:30.000000'),
(5, 'pbkdf2_sha256$260000$yiC3dvEEKpFaJ4yma5KbE2$5QJo7KCXDJQmCSJFwFwyj1vqIaMeN391AzY6+CdnoEU=', '2022-03-16 13:34:50.860471', 0, 'tinto', '', '', 'tinto@gmail.com', 0, 1, '2022-03-15 21:26:55.000000'),
(6, 'pbkdf2_sha256$260000$JA1DDDRhQTaQe25ZPM6NVE$m+674u/V6Z/m3M5mep6LvaWAu/UIrtEtug+k65YXVtU=', NULL, 0, 'ruka', '', '', 'ruka@gmail.com', 0, 1, '2022-03-15 21:47:27.000000'),
(7, 'pbkdf2_sha256$260000$wNPvXsKzMV5KHujruNy9rk$6bBrPLPzYfvSErlKpE3ptnhGu17eRnzst+0dKh9QroY=', '2022-03-16 09:12:05.383473', 0, 'steve', '', '', 'steve@gmail.com', 0, 1, '2022-03-16 08:51:47.535500'),
(8, 'pbkdf2_sha256$260000$EnR1OS0SP4KOT7S4VOo98L$7jHjZBm5XLVCPXe61PaUaJ5PUbkjw5fJOu8Q8okZpa4=', '2022-03-16 09:44:20.422445', 0, 'sam', '', '', 'sam@gmail.com', 0, 1, '2022-03-16 09:44:11.853603'),
(9, 'pbkdf2_sha256$260000$eQTwAilxCLUblQrxLvWFwO$pKnQyNSKsJtIlDJFPO0gwqEWUc+zf56eVoBOvcv8FWE=', NULL, 0, 'david', '', '', 'david@gmail.com', 0, 1, '2022-03-17 08:03:13.548146'),
(10, 'pbkdf2_sha256$260000$BuSTOlR5iJeJPbovAVw1zi$OSqB77LgCU/v2R9Sh8iSxfol4bJdOeiovDGra/zIhI0=', '2022-03-17 08:15:17.844919', 0, 'robin', '', '', 'robin@gmail.com', 0, 1, '2022-03-17 08:15:05.648890');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(9, 1, 2),
(2, 2, 1),
(6, 3, 2),
(4, 4, 2),
(3, 5, 2),
(5, 6, 2),
(7, 7, 2),
(8, 8, 2),
(10, 9, 2),
(11, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-04 12:30:22.855369', '1', 'izzy', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(2, '2022-03-04 12:30:55.522368', '1', 'izzy', 2, '[]', 4, 1),
(3, '2022-03-04 12:31:17.027856', '2', 'dodo', 1, '[{\"added\": {}}]', 4, 1),
(4, '2022-03-04 12:31:44.112748', '2', 'dodo', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(5, '2022-03-04 12:37:59.515247', '1', 'Customer object (1)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-03-04 13:06:10.828027', '2', 'Peter Piper', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-03-04 13:06:22.336004', '1', 'Sports', 1, '[{\"added\": {}}]', 10, 1),
(8, '2022-03-04 13:06:26.594934', '2', 'Summer', 1, '[{\"added\": {}}]', 10, 1),
(9, '2022-03-04 13:06:33.007533', '3', 'Kitchen', 1, '[{\"added\": {}}]', 10, 1),
(10, '2022-03-04 13:07:42.384505', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2022-03-04 13:13:28.089095', '2', 'Dishes', 1, '[{\"added\": {}}]', 9, 1),
(12, '2022-03-04 13:13:51.193720', '3', 'Ball', 1, '[{\"added\": {}}]', 9, 1),
(13, '2022-03-04 13:14:07.028685', '1', 'Order object (1)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-03-04 13:14:39.125524', '2', 'Order object (2)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-03-04 13:14:56.610411', '3', 'Order object (3)', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-03-04 14:27:34.344181', '4', 'Order object (4)', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-03-05 07:31:08.945648', '17', 'BBQ Grill', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(18, '2022-03-05 07:31:19.407677', '16', 'Dishes', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(19, '2022-03-05 07:31:28.476488', '15', 'BBQ Grill', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(20, '2022-03-05 07:31:37.768972', '14', 'Ball', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(21, '2022-03-05 07:31:46.160979', '13', 'Dishes', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(22, '2022-03-05 07:31:58.509211', '11', 'Dishes', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(23, '2022-03-05 07:32:14.289393', '10', 'BBQ Grill', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(24, '2022-03-05 07:32:26.772057', '9', 'Ball', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(25, '2022-03-05 07:32:40.315654', '3', 'Dishes', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(26, '2022-03-05 07:32:57.588897', '2', 'BBQ Grill', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(27, '2022-03-05 07:33:12.414746', '1', 'Ball', 2, '[{\"changed\": {\"fields\": [\"Note\"]}}]', 8, 1),
(28, '2022-03-16 08:23:40.753067', '1', 'admin', 1, '[{\"added\": {}}]', 3, 1),
(29, '2022-03-16 08:23:57.891532', '2', 'customer', 1, '[{\"added\": {}}]', 3, 1),
(30, '2022-03-16 08:25:44.217265', '1', 'izzy', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(31, '2022-03-16 08:26:07.355723', '2', 'dodo', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(32, '2022-03-16 08:26:22.413796', '5', 'tinto', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(33, '2022-03-16 08:26:31.981358', '4', 'tim', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(34, '2022-03-16 08:26:43.206197', '6', 'ruka', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(35, '2022-03-16 08:26:53.755905', '3', 'erik', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(36, '2022-03-16 08:27:55.049640', '3', 'erik', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(37, '2022-03-16 09:07:43.328254', '2', 'Peter Piper', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 7, 1),
(38, '2022-03-16 09:08:06.269708', '1', 'John Doe', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 7, 1),
(39, '2022-03-16 09:08:42.655157', '3', 'Isidore DelPierro', 1, '[{\"added\": {}}]', 7, 1),
(40, '2022-03-16 12:44:47.306075', '3', 'Isidore DelPierro', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 7, 1),
(41, '2022-03-16 13:10:02.078855', '1', 'izzy', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(42, '2022-03-16 13:21:07.692819', '1', 'John Doe', 2, '[{\"changed\": {\"fields\": [\"Profile pic\"]}}]', 7, 1),
(43, '2022-03-16 13:34:17.479925', '5', 'Jacob Zuma', 1, '[{\"added\": {}}]', 7, 1),
(44, '2022-03-17 08:17:28.275969', '6', 'robin', 2, '[{\"changed\": {\"fields\": [\"Phone\", \"Email\"]}}]', 7, 1),
(45, '2022-03-17 08:19:02.104570', '4', 'Sam Mbende', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Phone\", \"Email\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'customer'),
(8, 'accounts', 'order'),
(9, 'accounts', 'product'),
(10, 'accounts', 'tag'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-04 12:27:48.333799'),
(2, 'auth', '0001_initial', '2022-03-04 12:28:04.614599'),
(3, 'admin', '0001_initial', '2022-03-04 12:28:08.228778'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-04 12:28:08.362436'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-04 12:28:08.519004'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-04 12:28:10.954984'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-04 12:28:12.778954'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-04 12:28:13.086589'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-04 12:28:13.213939'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-04 12:28:14.632581'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-04 12:28:14.740333'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-04 12:28:14.857086'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-04 12:28:16.471180'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-04 12:28:18.712275'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-04 12:28:18.995398'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-04 12:28:19.158600'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-04 12:28:20.936290'),
(18, 'sessions', '0001_initial', '2022-03-04 12:28:22.303494'),
(19, 'accounts', '0001_initial', '2022-03-04 12:36:18.503674'),
(20, 'accounts', '0002_order_product', '2022-03-04 12:47:17.405626'),
(21, 'accounts', '0003_auto_20220304_1300', '2022-03-04 13:00:53.398246'),
(22, 'accounts', '0004_auto_20220304_1302', '2022-03-04 13:02:55.287891'),
(23, 'accounts', '0005_auto_20220304_1304', '2022-03-04 13:05:03.878515'),
(24, 'accounts', '0006_auto_20220305_0728', '2022-03-05 07:28:45.964795'),
(25, 'accounts', '0007_customer_user', '2022-03-16 09:06:52.492339'),
(26, 'accounts', '0008_customer_profile_pic', '2022-03-16 12:39:07.484863');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8pt92fxov3f9id59j3uu228tbkdhdy9j', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nUlI9:CKpiIIOJcVmWPaNiBIoSP3YBOigsJcEMvfV6XLP0vrc', '2022-03-31 08:15:29.535804'),
('9w2my1m9uq45gj8lr9t56djb837p2wb3', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nQmsQ:-3bJaHR504g87WHlmrx0ZB4RY5apwgPMECGzlnMyM2U', '2022-03-20 09:08:30.384085'),
('ae3ap6yi5owq544eflmg3ffu4xv1urkz', '.eJxVjMsOwiAQRf-FtSFAKQ-X7v0GMjCDVA0kpV0Z_11JutC7vOfkvFiAfSth77SGBdmZOXb6_SKkB9UB8A711nhqdVuXyIfCD9r5tSE9L4f7FyjQy8hqFGSNm7VUMuOsMgIka2KyMUtnJExELoqYLSTttVfgvf4uTRmFIPb-APD1ODs:1nUQCa:B5W_7qC6iSVYcSzQpBH84tUXjCfmpTaqXh6BnbOPGm8', '2022-03-30 09:44:20.647189'),
('creg42ekcrrp0dz3smr5zbpcg1yikyif', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nUPPl:vHkJOU3XB6Us1tTbehhQrtTZ28GIUbaATegvTGu3mxo', '2022-03-30 08:53:53.188036'),
('kok33wpxm7vjeqzt74c6u8c4ajli4zj3', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nUUfB:mn0H2TwL9OLG7UQCFBW0lArdc8LU50mhdM-C5bNDQYc', '2022-03-30 14:30:09.457743'),
('l7kjojdb01tqya24alk30pec1aboyt2f', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nQ746:jJUrD1R_5o55rJ2_39AT5SPkpIV-DMv8-o_7X8TzHyo', '2022-03-18 12:29:46.088082'),
('wiug9enplxwtx6int9hxd009mt6748ql', '.eJxVjDsOwjAQBe_iGlnxL44p6TmDtbte4wCypTipEHeHSCmgfTPzXiLCtpa4dV7inMRZKHH63RDowXUH6Q711iS1ui4zyl2RB-3y2hI_L4f7d1Cgl2-NKoMJehpsMJw0-WwceLRE4CbjyGMaByBGwy674JS13vvRBtKYibR4fwDurTg3:1nQDOD:OfeJqVcQIJDKLms3WFl_02pOupvXw4aJnpeaCPWAPkM', '2022-03-18 19:14:57.835602');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_customer`
--
ALTER TABLE `accounts_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_order`
--
ALTER TABLE `accounts_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_order_customer_id_23c59287_fk_accounts_customer_id` (`customer_id`),
  ADD KEY `accounts_order_product_id_83d789e2_fk_accounts_product_id` (`product_id`);

--
-- Indexes for table `accounts_product`
--
ALTER TABLE `accounts_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_product_tags`
--
ALTER TABLE `accounts_product_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_product_tags_product_id_tag_id_f558f1ef_uniq` (`product_id`,`tag_id`),
  ADD KEY `accounts_product_tags_tag_id_f4ba4ec3_fk_accounts_tag_id` (`tag_id`);

--
-- Indexes for table `accounts_tag`
--
ALTER TABLE `accounts_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_customer`
--
ALTER TABLE `accounts_customer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_order`
--
ALTER TABLE `accounts_order`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `accounts_product`
--
ALTER TABLE `accounts_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_product_tags`
--
ALTER TABLE `accounts_product_tags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_tag`
--
ALTER TABLE `accounts_tag`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_customer`
--
ALTER TABLE `accounts_customer`
  ADD CONSTRAINT `accounts_customer_user_id_11606857_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_order`
--
ALTER TABLE `accounts_order`
  ADD CONSTRAINT `accounts_order_customer_id_23c59287_fk_accounts_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`id`),
  ADD CONSTRAINT `accounts_order_product_id_83d789e2_fk_accounts_product_id` FOREIGN KEY (`product_id`) REFERENCES `accounts_product` (`id`);

--
-- Constraints for table `accounts_product_tags`
--
ALTER TABLE `accounts_product_tags`
  ADD CONSTRAINT `accounts_product_tags_product_id_2d1c4b64_fk_accounts_product_id` FOREIGN KEY (`product_id`) REFERENCES `accounts_product` (`id`),
  ADD CONSTRAINT `accounts_product_tags_tag_id_f4ba4ec3_fk_accounts_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `accounts_tag` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
