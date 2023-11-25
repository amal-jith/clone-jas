-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 06:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelleryjoy`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `username`, `dob`, `mobile_number`) VALUES
(1, 'pbkdf2_sha256$600000$tzv4zp5I7OaOulIOv2hS1h$a/CxAK8Zpi23CvxUaxvjBTEi6oTxsrBYI2XyC/3csm4=', '2023-11-24 03:40:37.394326', 1, 'Batsy', 'Batsy', 1, 1, '2023-11-21 09:36:01.000000', 'bat@gmail.com', 'bat_dot', NULL, '9874563211');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add tags', 8, 'add_tags'),
(30, 'Can change tags', 8, 'change_tags'),
(31, 'Can delete tags', 8, 'delete_tags'),
(32, 'Can view tags', 8, 'view_tags'),
(33, 'Can add cart order items', 9, 'add_cartorderitems'),
(34, 'Can change cart order items', 9, 'change_cartorderitems'),
(35, 'Can delete cart order items', 9, 'delete_cartorderitems'),
(36, 'Can view cart order items', 9, 'view_cartorderitems'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add cart order', 11, 'add_cartorder'),
(42, 'Can change cart order', 11, 'change_cartorder'),
(43, 'Can delete cart order', 11, 'delete_cartorder'),
(44, 'Can view cart order', 11, 'view_cartorder'),
(45, 'Can add wishlist', 12, 'add_wishlist'),
(46, 'Can change wishlist', 12, 'change_wishlist'),
(47, 'Can delete wishlist', 12, 'delete_wishlist'),
(48, 'Can view wishlist', 12, 'view_wishlist'),
(49, 'Can add address', 13, 'add_address'),
(50, 'Can change address', 13, 'change_address'),
(51, 'Can delete address', 13, 'delete_address'),
(52, 'Can view address', 13, 'view_address'),
(53, 'Can add product images', 14, 'add_productimages'),
(54, 'Can change product images', 14, 'change_productimages'),
(55, 'Can delete product images', 14, 'delete_productimages'),
(56, 'Can view product images', 14, 'view_productimages'),
(57, 'Can add vendor', 15, 'add_vendor'),
(58, 'Can change vendor', 15, 'change_vendor'),
(59, 'Can delete vendor', 15, 'delete_vendor'),
(60, 'Can view vendor', 15, 'view_vendor'),
(61, 'Can add product review', 16, 'add_productreview'),
(62, 'Can change product review', 16, 'change_productreview'),
(63, 'Can delete product review', 16, 'delete_productreview'),
(64, 'Can view product review', 16, 'view_productreview');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-22 05:34:04.754357', '1', 'bat_dot', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Mobile number\"]}}]', 6, 1),
(2, '2023-11-23 05:58:02.132764', '1', 'Bracelets', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-11-23 06:00:14.831061', '1', 'Glistenize Diamond Bracelet', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-11-23 06:03:48.884690', '1', 'Bracelets', 3, '', 10, 1),
(5, '2023-11-23 06:04:06.562496', '2', 'Bangle', 1, '[{\"added\": {}}]', 10, 1),
(6, '2023-11-23 06:04:26.980763', '3', 'Earrings', 1, '[{\"added\": {}}]', 10, 1),
(7, '2023-11-23 06:04:36.960572', '4', 'Chain', 1, '[{\"added\": {}}]', 10, 1),
(8, '2023-11-23 06:04:46.577238', '5', 'Mangalsutra', 1, '[{\"added\": {}}]', 10, 1),
(9, '2023-11-23 06:04:55.387503', '6', 'Necklace', 1, '[{\"added\": {}}]', 10, 1),
(10, '2023-11-23 06:05:06.718149', '7', 'Nosepin', 1, '[{\"added\": {}}]', 10, 1),
(11, '2023-11-23 06:05:17.532182', '8', 'Pendant', 1, '[{\"added\": {}}]', 10, 1),
(12, '2023-11-23 06:05:23.596945', '9', 'Ring', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-11-23 06:07:19.320820', '1', 'Glistenize Diamond Bracelet', 3, '', 7, 1),
(14, '2023-11-23 06:09:00.586178', '2', 'Shimmer Diamond Earring', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (1)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (2)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (3)\"}}]', 7, 1),
(15, '2023-11-23 06:38:43.427538', '2', 'Bangles & Bracelets', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 1),
(16, '2023-11-23 06:41:18.579662', '3', 'Iconic Diamond Bracelet', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-11-23 07:06:44.681303', '1', 'JoyAlukkas Kollam', 1, '[{\"added\": {}}]', 15, 1),
(18, '2023-11-23 07:06:54.225761', '3', 'Iconic Diamond Bracelet', 2, '[{\"changed\": {\"fields\": [\"Vendor\"]}}]', 7, 1),
(19, '2023-11-23 07:06:58.111966', '2', 'Shimmer Diamond Earring', 2, '[{\"changed\": {\"fields\": [\"Vendor\"]}}]', 7, 1),
(20, '2023-11-23 07:44:34.930620', '3', 'Iconic Diamond Bracelet', 2, '[{\"changed\": {\"fields\": [\"Product status\"]}}]', 7, 1),
(21, '2023-11-23 07:44:54.849591', '2', 'Shimmer Diamond Earring', 2, '[{\"changed\": {\"fields\": [\"Product status\"]}}]', 7, 1),
(22, '2023-11-24 04:21:09.272847', '4', 'Eclat Diamond Earring', 1, '[{\"added\": {}}]', 7, 1),
(23, '2023-11-24 04:22:22.161751', '5', 'Gleamed Diamond Earring', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (4)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (5)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (6)\"}}]', 7, 1),
(24, '2023-11-24 04:22:42.112580', '4', 'Eclat Diamond Earring', 2, '[{\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (7)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (8)\"}}, {\"added\": {\"name\": \"product images\", \"object\": \"ProductImages object (9)\"}}]', 7, 1),
(25, '2023-11-24 06:36:37.765337', '2', 'Jos Alukkas Jewellery', 1, '[{\"added\": {}}]', 15, 1),
(26, '2023-11-24 06:37:13.186219', '1', 'JoyAlukkas Kollam', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 15, 1),
(27, '2023-11-24 06:40:04.157359', '2', 'Jos Alukkas Jewellery', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 15, 1),
(28, '2023-11-24 06:40:09.672516', '1', 'JoyAlukkas Kollam', 2, '[{\"changed\": {\"fields\": [\"Address\"]}}]', 15, 1),
(29, '2023-11-24 06:45:58.146381', '3', 'JoyAlukkas Registered Office', 1, '[{\"added\": {}}]', 15, 1),
(30, '2023-11-24 06:49:59.089346', '4', 'E-Commerce (INDIA)', 1, '[{\"added\": {}}]', 15, 1),
(31, '2023-11-24 06:51:03.328779', '5', 'CORPORATE GIFTING (INDIA)', 1, '[{\"added\": {}}]', 15, 1),
(32, '2023-11-24 11:31:38.501233', '3', 'Iconic Diamond Bracelet', 2, '[{\"changed\": {\"fields\": [\"Original price\", \"Disc price\"]}}]', 7, 1),
(33, '2023-11-24 11:31:56.717207', '3', 'Iconic Diamond Bracelet', 2, '[{\"changed\": {\"fields\": [\"Disc price\"]}}]', 7, 1),
(34, '2023-11-24 11:32:09.476877', '3', 'Iconic Diamond Bracelet', 2, '[{\"changed\": {\"fields\": [\"Disc price\"]}}]', 7, 1),
(35, '2023-11-25 04:41:51.535809', '2', 'Shimmer Diamond Earring', 2, '[{\"changed\": {\"fields\": [\"Specifications\"]}}]', 7, 1),
(36, '2023-11-25 04:44:49.858194', '2', 'Shimmer Diamond Earring', 2, '[{\"changed\": {\"fields\": [\"Specifications\"]}}]', 7, 1),
(37, '2023-11-25 05:12:12.580978', '1', 'Shimmer Diamond Earring', 1, '[{\"added\": {}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(13, 'jew_app', 'address'),
(11, 'jew_app', 'cartorder'),
(9, 'jew_app', 'cartorderitems'),
(10, 'jew_app', 'category'),
(7, 'jew_app', 'product'),
(14, 'jew_app', 'productimages'),
(16, 'jew_app', 'productreview'),
(8, 'jew_app', 'tags'),
(15, 'jew_app', 'vendor'),
(12, 'jew_app', 'wishlist'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-21 09:35:35.632193'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-11-21 09:35:35.672899'),
(3, 'auth', '0001_initial', '2023-11-21 09:35:35.790681'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-11-21 09:35:35.815204'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-11-21 09:35:35.820174'),
(6, 'auth', '0004_alter_user_username_opts', '2023-11-21 09:35:35.824305'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-11-21 09:35:35.828993'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-11-21 09:35:35.831258'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-11-21 09:35:35.836254'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-11-21 09:35:35.841479'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-11-21 09:35:35.847075'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-11-21 09:35:35.867700'),
(13, 'auth', '0011_update_proxy_permissions', '2023-11-21 09:35:35.872696'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-11-21 09:35:35.877680'),
(15, 'accounts', '0001_initial', '2023-11-21 09:35:36.009361'),
(16, 'admin', '0001_initial', '2023-11-21 09:35:36.067659'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-11-21 09:35:36.073150'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-21 09:35:36.078341'),
(19, 'sessions', '0001_initial', '2023-11-21 09:35:36.098008'),
(20, 'jew_app', '0001_initial', '2023-11-23 04:56:50.610919'),
(21, 'jew_app', '0002_product_video', '2023-11-23 05:36:00.998465'),
(22, 'jew_app', '0003_remove_product_tags_product_vendor', '2023-11-23 07:02:11.129381'),
(23, 'jew_app', '0004_product_tags', '2023-11-23 07:02:11.174152'),
(24, 'jew_app', '0005_remove_product_tags_alter_product_category', '2023-11-23 10:05:04.520087'),
(25, 'jew_app', '0006_alter_product_vendor_alter_productimages_product', '2023-11-24 07:43:27.726617');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kcwxevuyquqd72fdljzk4jqr88d4cts7', '.eJxVjLEOwjAMRP8lM4pqm7QKIzvfEDmxSwoolZp2Qvw7jdQBlhvuvbu3CbytOWxVlzCJuRgwp98ucnpqaUAeXO6zTXNZlynaptiDVnubRV_Xw_07yFxzWyODOqChJxBVRQSPLp5RPKPu4UaFkZS0c4JDrxETOdrVDj0Jmc8X6J04IA:1r6N3V:ZLXUNVkWWV6UkjxWCmWNT9jviil6uKlEcqm0U41ccrE', '2023-12-08 03:40:37.401347');

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_address`
--

CREATE TABLE `jew_app_address` (
  `id` bigint(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_cartorder`
--

CREATE TABLE `jew_app_cartorder` (
  `id` bigint(20) NOT NULL,
  `disc_price` decimal(65,2) NOT NULL,
  `paid_status` tinyint(1) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `product_status` varchar(10) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_cartorderitems`
--

CREATE TABLE `jew_app_cartorderitems` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `product_status` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `disc_price` decimal(65,2) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_category`
--

CREATE TABLE `jew_app_category` (
  `id` bigint(20) NOT NULL,
  `cid` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jew_app_category`
--

INSERT INTO `jew_app_category` (`id`, `cid`, `name`, `image`) VALUES
(2, 'cat54f33hedf1', 'Bangles & Bracelets', 'category/Bangle_3gstd1n.jpg'),
(3, 'cat335dbbc3b5', 'Earrings', 'category/Earring_wwrxOHj.jpg'),
(4, 'cat5c244cbhbg', 'Chain', 'category/Chain_WDaWvJk.jpg'),
(5, 'cat2hgghb5dab', 'Mangalsutra', 'category/Mangalsutra_pOQDgAa.jpg'),
(6, 'cat3bg5gdd234', 'Necklace', 'category/Necklace_dGACflO.jpg'),
(7, 'cathg34bebcdc', 'Nosepin', 'category/NosePin_KgrlqXA.jpg'),
(8, 'cat3hcc52ae3h', 'Pendant', 'category/Pendant_0pvY63v.jpg'),
(9, 'cathc4bcd212a', 'Ring', 'category/Ring_bibxDoP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_product`
--

CREATE TABLE `jew_app_product` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` decimal(65,2) NOT NULL,
  `disc_price` decimal(65,2) NOT NULL,
  `specifications` longtext DEFAULT NULL,
  `product_status` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `sku` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `updated` date DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jew_app_product`
--

INSERT INTO `jew_app_product` (`id`, `pid`, `name`, `image`, `description`, `original_price`, `disc_price`, `specifications`, `product_status`, `status`, `in_stock`, `featured`, `sku`, `date`, `updated`, `category_id`, `user_id`, `video`, `vendor_id`) VALUES
(2, 'cat3d2cegfc1b', 'Shimmer Diamond Earring', 'user_directory_path/ear1.jpg', 'Product', 30385.00, 35986.00, 'Material : Diamond | Metal 1 Purity : 18 KT\r\nApprox. Gross Weight(In g) : 2.121 | \r\n\r\nDiamond 1 Cut : Regular |\r\nDiamond 1 NOS : 12 |\r\nDiamond 1 Weight : 0.084 |\r\n \r\nEarring Type :  Drops |\r\nGold Certification : BIS |\r\nMetal Finish : Glossy |\r\nOccasion : Everyday |', 'published', 1, 1, 1, 'sku2646', '2023-11-23', NULL, 3, 1, 'product_videos/DSDE00023564_8.mp4', 1),
(3, 'catgdga5f1b2b', 'Iconic Diamond Bracelet', 'user_directory_path/iconic1.jpg', 'DSDB00003332', 55698.00, 519350.00, '', 'published', 1, 1, 1, 'sku1759', '2023-11-23', NULL, 2, 1, 'product_videos/DSDB00003332_8.mp4', 1),
(4, 'cat2e2d1g5223', 'Eclat Diamond Earring', 'user_directory_path/eclat1.jpg', 'DSDE00023563', 80652.23, 76092.00, '', 'published', 1, 1, 1, 'sku2108', '2023-11-24', NULL, 3, 1, 'product_videos/DSDE00023563_8.mp4', 1),
(5, 'cat5d5fdbeb21', 'Gleamed Diamond Earring', 'user_directory_path/gleamed1.jpg', 'DSDE00023562', 52000.00, 46939.00, '', 'published', 1, 1, 1, 'sku1134', '2023-11-24', NULL, 3, 1, 'product_videos/DSDE00023562_8.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_productimages`
--

CREATE TABLE `jew_app_productimages` (
  `id` bigint(20) NOT NULL,
  `images` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jew_app_productimages`
--

INSERT INTO `jew_app_productimages` (`id`, `images`, `date`, `product_id`) VALUES
(1, 'product-images/ear1.jpg', '2023-11-23 06:09:00.578909', 2),
(2, 'product-images/ear2.jpg', '2023-11-23 06:09:00.581923', 2),
(3, 'product-images/ear3.jpg', '2023-11-23 06:09:00.582911', 2),
(4, 'product-images/gleamed1.jpg', '2023-11-24 04:22:22.154523', 5),
(5, 'product-images/gleamed2.jpg', '2023-11-24 04:22:22.158662', 5),
(6, 'product-images/gleamed3.jpg', '2023-11-24 04:22:22.159662', 5),
(7, 'product-images/eclat1.jpg', '2023-11-24 04:22:42.105567', 4),
(8, 'product-images/eclat2.jpg', '2023-11-24 04:22:42.108650', 4),
(9, 'product-images/eclat3.jpg', '2023-11-24 04:22:42.111653', 4);

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_productreview`
--

CREATE TABLE `jew_app_productreview` (
  `id` bigint(20) NOT NULL,
  `review` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jew_app_productreview`
--

INSERT INTO `jew_app_productreview` (`id`, `review`, `rating`, `date`, `product_id`, `user_id`) VALUES
(1, 'Amazing!!!!!!', 4, '2023-11-25 05:12:12.576674', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_tags`
--

CREATE TABLE `jew_app_tags` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_vendor`
--

CREATE TABLE `jew_app_vendor` (
  `id` bigint(20) NOT NULL,
  `vid` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `chat_resp_time` varchar(100) NOT NULL,
  `shipping_on_time` varchar(100) NOT NULL,
  `authentic_rating` varchar(100) NOT NULL,
  `days_return` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jew_app_vendor`
--

INSERT INTO `jew_app_vendor` (`id`, `vid`, `name`, `image`, `description`, `address`, `contact`, `chat_resp_time`, `shipping_on_time`, `authentic_rating`, `days_return`, `user_id`) VALUES
(1, 'ven5a223a15da', 'JoyAlukkas Kollam', 'user_directory_path/2022-04-05.jpg', 'JoyAlukkas Kollam Showrrom', 'RP Mall, Kollam', '+91 90000 000 00', '100', '100', '100', '100', 1),
(2, 'ven44ehg3d1b5', 'Jos Alukkas Jewellery', 'user_directory_path/2021-12-17.jpg', 'Jewelry store in Thiruvananthapuram, Kerala', 'Thiruvananthapuram, Kerala', '+91 90000 000 00', '100', '100', '100', '100', 1),
(3, 'ven5bhcd2aabf', 'JoyAlukkas Registered Office', 'user_directory_path/Joyalukkas_new-_Corporate_Office.jpg', '', 'Joyalukkas India Ltd. Fathima Nagar, Mission Quarters Thrissur, Kerala India-680005', '+91 487 2329222', '100', '100', '100', '100', 1),
(4, 'ven3b14g23ea3', 'E-Commerce (INDIA)', 'user_directory_path/Jewellery-retailer-Joyalukkas-turns-to-IBM-to-transform-customer-experience.jpg', '', 'care@joyalukkas.com', '+91 80 25127900', '100', '100', '100', '100', 1),
(5, 'ven31ehba3bhd', 'CORPORATE GIFTING (INDIA)', 'user_directory_path/Mobile-banner-innerpages3.jpg', '', 'b2bindia@joyalukkas.com', '+91 9442208916', '100', '100', '100', '100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jew_app_wishlist`
--

CREATE TABLE `jew_app_wishlist` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

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
-- Indexes for table `jew_app_address`
--
ALTER TABLE `jew_app_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_address_user_id_6f2885ac_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `jew_app_cartorder`
--
ALTER TABLE `jew_app_cartorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_cartorder_user_id_c1e63fbf_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `jew_app_cartorderitems`
--
ALTER TABLE `jew_app_cartorderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_cartorderitems_order_id_e5ddd0af_fk_jew_app_cartorder_id` (`order_id`);

--
-- Indexes for table `jew_app_category`
--
ALTER TABLE `jew_app_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `jew_app_product`
--
ALTER TABLE `jew_app_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid` (`pid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `jew_app_product_user_id_e5a90af5_fk_accounts_user_id` (`user_id`),
  ADD KEY `jew_app_product_category_id_344f432d_fk_jew_app_category_id` (`category_id`),
  ADD KEY `jew_app_product_vendor_id_5c554aaf_fk_jew_app_vendor_id` (`vendor_id`);

--
-- Indexes for table `jew_app_productimages`
--
ALTER TABLE `jew_app_productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_productimages_product_id_9c6a7b6a_fk_jew_app_product_id` (`product_id`);

--
-- Indexes for table `jew_app_productreview`
--
ALTER TABLE `jew_app_productreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_productreview_product_id_9642d2cf_fk_jew_app_product_id` (`product_id`),
  ADD KEY `jew_app_productreview_user_id_f2d3e582_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `jew_app_tags`
--
ALTER TABLE `jew_app_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jew_app_vendor`
--
ALTER TABLE `jew_app_vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`),
  ADD KEY `jew_app_vendor_user_id_6bd6b882_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `jew_app_wishlist`
--
ALTER TABLE `jew_app_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jew_app_wishlist_product_id_f9848594_fk_jew_app_product_id` (`product_id`),
  ADD KEY `jew_app_wishlist_user_id_fad886b9_fk_accounts_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jew_app_address`
--
ALTER TABLE `jew_app_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jew_app_cartorder`
--
ALTER TABLE `jew_app_cartorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jew_app_cartorderitems`
--
ALTER TABLE `jew_app_cartorderitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jew_app_category`
--
ALTER TABLE `jew_app_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jew_app_product`
--
ALTER TABLE `jew_app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jew_app_productimages`
--
ALTER TABLE `jew_app_productimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jew_app_productreview`
--
ALTER TABLE `jew_app_productreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jew_app_tags`
--
ALTER TABLE `jew_app_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jew_app_vendor`
--
ALTER TABLE `jew_app_vendor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jew_app_wishlist`
--
ALTER TABLE `jew_app_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `jew_app_address`
--
ALTER TABLE `jew_app_address`
  ADD CONSTRAINT `jew_app_address_user_id_6f2885ac_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `jew_app_cartorder`
--
ALTER TABLE `jew_app_cartorder`
  ADD CONSTRAINT `jew_app_cartorder_user_id_c1e63fbf_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `jew_app_cartorderitems`
--
ALTER TABLE `jew_app_cartorderitems`
  ADD CONSTRAINT `jew_app_cartorderitems_order_id_e5ddd0af_fk_jew_app_cartorder_id` FOREIGN KEY (`order_id`) REFERENCES `jew_app_cartorder` (`id`);

--
-- Constraints for table `jew_app_product`
--
ALTER TABLE `jew_app_product`
  ADD CONSTRAINT `jew_app_product_category_id_344f432d_fk_jew_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `jew_app_category` (`id`),
  ADD CONSTRAINT `jew_app_product_user_id_e5a90af5_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`),
  ADD CONSTRAINT `jew_app_product_vendor_id_5c554aaf_fk_jew_app_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `jew_app_vendor` (`id`);

--
-- Constraints for table `jew_app_productimages`
--
ALTER TABLE `jew_app_productimages`
  ADD CONSTRAINT `jew_app_productimages_product_id_9c6a7b6a_fk_jew_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `jew_app_product` (`id`);

--
-- Constraints for table `jew_app_productreview`
--
ALTER TABLE `jew_app_productreview`
  ADD CONSTRAINT `jew_app_productreview_product_id_9642d2cf_fk_jew_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `jew_app_product` (`id`),
  ADD CONSTRAINT `jew_app_productreview_user_id_f2d3e582_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `jew_app_vendor`
--
ALTER TABLE `jew_app_vendor`
  ADD CONSTRAINT `jew_app_vendor_user_id_6bd6b882_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `jew_app_wishlist`
--
ALTER TABLE `jew_app_wishlist`
  ADD CONSTRAINT `jew_app_wishlist_product_id_f9848594_fk_jew_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `jew_app_product` (`id`),
  ADD CONSTRAINT `jew_app_wishlist_user_id_fad886b9_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
