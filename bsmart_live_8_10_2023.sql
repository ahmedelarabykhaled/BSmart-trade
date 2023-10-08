-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 11:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsmart_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-03-05 14:11:18', '2023-03-05 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `governemet_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`, `details`, `governemet_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'طنطا', 'T', NULL, 1, '2023-04-07 13:37:49', '2023-04-07 13:37:49', NULL),
(2, 'Giza', 'G', NULL, 2, '2023-04-08 16:52:54', '2023-04-08 16:52:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `national_id_end_date` varchar(255) DEFAULT NULL,
  `governorate_id` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `work_number` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `code`, `name`, `national_id`, `phone`, `phone_2`, `notes`, `created_at`, `updated_at`, `address`, `region_id`, `national_id_end_date`, `governorate_id`, `landline`, `work_number`, `whatsapp_number`, `city_id`, `birth_date`, `deleted_at`) VALUES
(2, '66357-9887', 'Rupert Haag', '17722222222222', '12222222221', '24455555441', '103', '2023-03-11 20:18:38', '2023-04-29 00:43:39', '95797 Osinski Bypass', 'el mahalla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-29 00:43:39'),
(3, '45437-2761', 'ahmed khaled', '45199999999999', '1156766789', '1156766789', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-03-12 15:08:07', '2023-04-29 00:43:39', '36444 Lauryn Flat', '1', NULL, '1', NULL, NULL, NULL, 1, NULL, '2023-04-29 00:43:39'),
(4, NULL, 'Jamaal Schmitt', '30784839202846', NULL, '649', '326', '2023-04-17 11:25:01', '2023-04-17 11:25:08', '7793 Kunde Hollow', NULL, '2023-01-18 00:00:00', NULL, '500', '33', '533', NULL, '2023-02-23 00:00:00', '2023-04-17 11:25:08'),
(5, 'GHT-C5', 'امال فهمى السيد على', '11111111111111', '01289766058', NULL, NULL, '2023-04-29 08:10:08', '2023-08-20 06:27:46', '61 شارع السيد عبداللطيف /  طنطا ثانى / الغربية', NULL, '2023-07-22 00:00:00', '1', NULL, NULL, NULL, 1, '2023-07-22 00:00:00', NULL),
(6, 'GHT-C6', 'محمد عبد الغنى السيد بكر', '26812151600151', '01222831600', NULL, NULL, '2023-04-29 10:42:56', '2023-08-20 07:57:28', 'طنطا - ش الاستاد', '1', '2023-07-20 00:00:00', '1', '0403569033', NULL, '01222831600', 1, '1999-02-01 00:00:00', NULL),
(7, NULL, 'تقى محمد عبد الغنى بكر', '29501011629189', '01111786229', NULL, NULL, '2023-04-29 10:44:14', '2023-04-29 10:44:32', 'طنطا ش الاستاد', '1', NULL, '1', '0403569033', NULL, '01111786229', 1, NULL, NULL),
(8, NULL, 'راندا سليمان عبد الكريم سليمان', '28104281602026', '01154208652', NULL, NULL, '2023-04-29 10:45:38', '2023-04-29 10:45:38', 'طنطا ش الاستاد', '1', NULL, '1', NULL, NULL, '01154208652', NULL, NULL, NULL),
(9, 'GHT-C9', 'دينا محمد عبد ربه ابو زيد', '30111061600788', '01104866184', NULL, NULL, '2023-04-29 10:46:37', '2023-04-29 10:46:58', NULL, '1', NULL, '1', NULL, NULL, '01104866184', 1, NULL, NULL),
(10, NULL, 'فوزى عبدالفتاح مصطفى محمد', '26301131600133', NULL, NULL, NULL, '2023-04-29 11:51:31', '2023-04-29 11:52:51', NULL, NULL, '2028-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, '1963-12-01 00:00:00', '2023-04-29 11:52:51'),
(11, NULL, 'فوزى عبدالفتاح مصطفى محمد', '26301131600133', '01221038257', NULL, NULL, '2023-04-29 12:13:10', '2023-04-29 12:40:26', '12 شارع الزهره - اول الحكمه - طنطا اول - غربيه', NULL, '2028-08-17 00:00:00', '1', '3522699', NULL, '01221038257', 1, '1963-01-13 00:00:00', '2023-04-29 12:40:26'),
(12, NULL, 'محمد فوزى عبد الفتاح مصطفى', '29506151601391', '01007488260', NULL, NULL, '2023-04-29 12:17:59', '2023-04-29 12:17:59', '31 شارع ابراهيم مبروك من ترعه الشيتى - طنطا اول - الغربيه', NULL, '2025-10-09 00:00:00', '1', NULL, NULL, '01007488260', 1, '1995-06-15 00:00:00', NULL),
(13, NULL, 'فوزى عبدالفتاح مصطفى محمد', '26301131600133', '01221038257', NULL, NULL, '2023-04-29 12:47:59', '2023-04-29 12:47:59', '12 شترع الزهرة اول الحكمه - طنطا اول - الغربيه', NULL, '2028-08-17 00:00:00', '1', '0403522699', NULL, '01221038257', 1, '1963-01-13 00:00:00', NULL),
(14, NULL, 'ahmed khaled', '84938273894839', '2136845', NULL, NULL, '2023-08-16 04:34:27', '2023-08-16 04:34:27', 'cairo', NULL, '2023-08-15 00:00:00', NULL, NULL, NULL, NULL, NULL, '2023-08-10 00:00:00', NULL),
(15, NULL, 'Lula Ebert', '26695849038541', NULL, '407', '300', '2023-08-16 04:45:49', '2023-08-16 04:46:02', '908 Clotilde Villages', NULL, '2023-09-28 05:36:30', NULL, '453', '501', '218', NULL, '2024-06-30 06:17:05', '2023-08-16 04:46:02'),
(16, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:48:56', '2023-08-16 04:48:56', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(17, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:49:35', '2023-08-16 04:49:35', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(18, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:50:05', '2023-08-16 04:50:05', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(19, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:50:15', '2023-08-16 04:50:15', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(20, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:52:29', '2023-08-16 04:52:29', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(21, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:52:46', '2023-08-16 04:52:46', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(22, NULL, 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:54:34', '2023-08-16 04:54:34', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(23, 'C-23', 'Mohammad Hilll', '44444444444444', NULL, '317', '278', '2023-08-16 04:55:01', '2023-08-16 04:55:01', '61551 Wuckert Burgs', NULL, '2024-01-01 15:18:39', NULL, '664', '3', '63', NULL, '2023-10-07 13:58:47', NULL),
(24, 'C-24', 'Dovie Torp', '88888888888888', NULL, '149', '422', '2023-08-16 04:55:28', '2023-08-16 04:55:29', '634 Halie Port', NULL, '2024-05-24 18:34:38', NULL, '575', '7', '666', NULL, '2024-04-08 21:12:49', NULL),
(25, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:11:43', '2023-08-18 12:11:43', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(26, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:13:18', '2023-08-18 12:13:18', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(27, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:13:59', '2023-08-18 12:13:59', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(28, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:14:13', '2023-08-18 12:14:13', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(29, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:14:19', '2023-08-18 12:14:19', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(30, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:14:53', '2023-08-18 12:14:53', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(31, NULL, 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:15:02', '2023-08-18 12:15:02', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(32, 'GHT-C32', 'Constantin Barrows', '22222222222219', NULL, '601', '612', '2023-08-18 12:16:13', '2023-08-18 12:16:13', '72079 Matt Burg', '1', '2023-08-08 00:00:00', '1', '286', '538', '417', 1, NULL, NULL),
(33, NULL, 'Asia Grant', '64222222222222', NULL, '221', '647', '2023-08-18 12:17:25', '2023-08-18 12:17:25', '53157 Steuber Court', NULL, NULL, NULL, '93', '220', '15', NULL, NULL, NULL),
(34, '-C34', 'Asia Grant', '64222222222222', NULL, '221', '647', '2023-08-18 12:20:05', '2023-08-18 12:20:05', '53157 Steuber Court', NULL, NULL, NULL, '93', '220', '15', NULL, NULL, NULL),
(35, 'C35', 'Agustin Lehner', '56479597095987', '01118157695', '475', '639', '2023-08-18 12:30:00', '2023-08-18 12:30:00', '97664 Vernie Path', NULL, '2023-08-08 00:00:00', NULL, '589', '624', '193', NULL, '2023-08-07 00:00:00', NULL),
(36, 'CAG-C36', 'احمد خالد السيد', '11111111111111', NULL, NULL, NULL, '2023-08-20 06:29:46', '2023-08-20 06:30:38', NULL, NULL, '2023-08-14 00:00:00', '2', NULL, NULL, NULL, 2, '2023-08-08 00:00:00', NULL),
(37, 'CAG-C37', 'علاء محمد بهاء', '33333333333332', NULL, NULL, NULL, '2023-09-10 07:20:23', '2023-09-10 07:21:30', NULL, NULL, '2023-09-10 00:00:00', '2', NULL, NULL, NULL, 2, '2023-09-10 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_care`
--

CREATE TABLE `customer_care` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_care`
--

INSERT INTO `customer_care` (`id`, `reason`, `customer_id`, `user_id`, `date`, `department_id`, `created_at`, `updated_at`, `note`, `status`) VALUES
(4, 'fafasdf  asf', 8, 4, '2023-10-02 00:00:00', NULL, '2023-10-07 10:34:50', '2023-10-07 10:34:50', '437', 'hold');

-- --------------------------------------------------------

--
-- Table structure for table `customer_credits`
--

CREATE TABLE `customer_credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `income_feedback` longtext DEFAULT NULL,
  `discussion_feedback` longtext DEFAULT NULL,
  `enquiry_feedback` longtext DEFAULT NULL,
  `credit_manager_feedback` longtext DEFAULT NULL,
  `documents_feedback` longtext DEFAULT NULL,
  `credit_researcher_id` int(11) DEFAULT NULL,
  `credit_manager_id` int(11) DEFAULT NULL,
  `credit_researcher_feedback` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `history_notes` longtext DEFAULT NULL,
  `max_credit_limit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_credits`
--

INSERT INTO `customer_credits` (`id`, `customer_id`, `created_at`, `updated_at`, `status`, `user_id`, `income_feedback`, `discussion_feedback`, `enquiry_feedback`, `credit_manager_feedback`, `documents_feedback`, `credit_researcher_id`, `credit_manager_id`, `credit_researcher_feedback`, `notes`, `history_notes`, `max_credit_limit`) VALUES
(8, 6, '2023-07-20 09:52:16', '2023-07-20 09:52:16', 'hold', 1, 'Dolores quis tempore in quae distinctio.', 'Dicta temporibus vel at blanditiis totam velit tenetur inventore.', 'Dignissimos itaque voluptatibus accusamus dicta commodi dolores incidunt debitis quis.', 'Corona', 'Hic officiis voluptatem explicabo dolores error consectetur minima perspiciatis.', 4, 1, 'Bridgeport', '304', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_credits_data`
--

CREATE TABLE `customer_credits_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `grantor_id` int(11) DEFAULT NULL,
  `relatives_data` longtext DEFAULT NULL,
  `work_field` varchar(255) DEFAULT NULL,
  `work_address` longtext DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `work_duration` varchar(255) DEFAULT NULL,
  `previous_work_field` varchar(255) DEFAULT NULL,
  `customer_income` varchar(255) DEFAULT NULL,
  `customer_additional_income` varchar(255) DEFAULT NULL,
  `grantor_income` varchar(255) DEFAULT NULL,
  `grantor_additional_income` varchar(255) DEFAULT NULL,
  `commitments` longtext DEFAULT NULL,
  `has_business` varchar(255) DEFAULT NULL,
  `business_data` longtext DEFAULT NULL,
  `business_income` varchar(255) DEFAULT NULL,
  `business_outcome` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `installement_duration` varchar(255) DEFAULT NULL,
  `required_installement` varchar(255) DEFAULT NULL,
  `downpayment` longtext DEFAULT NULL,
  `profit_percentage` varchar(255) DEFAULT NULL,
  `final_customer_tatal_income` varchar(255) DEFAULT NULL,
  `final_total_commitments` varchar(255) DEFAULT NULL,
  `final_business_income` varchar(255) DEFAULT NULL,
  `grantor_commitments` longtext DEFAULT NULL,
  `final_overall_income` varchar(255) DEFAULT NULL,
  `credit_researcher_feedback` varchar(255) DEFAULT NULL,
  `cerdit_researcher_id` int(11) DEFAULT NULL,
  `credit_admin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `same_outcome_source` varchar(255) DEFAULT NULL,
  `commitments_amount` varchar(255) DEFAULT NULL,
  `customer_educational_qualification` varchar(255) DEFAULT NULL,
  `grantor_educational_qualification` varchar(255) DEFAULT NULL,
  `customer_marital_status` varchar(255) DEFAULT NULL,
  `grantor_marital_status` varchar(255) DEFAULT NULL,
  `customer_childrens_data` varchar(255) DEFAULT NULL,
  `grantor_childrens_data` varchar(255) DEFAULT NULL,
  `customer_accommodation` varchar(255) DEFAULT NULL,
  `grantor_accommodation` varchar(255) DEFAULT NULL,
  `customer_rental_price` varchar(255) DEFAULT NULL,
  `grantor_rental_price` varchar(255) DEFAULT NULL,
  `customer_facilities` varchar(255) DEFAULT NULL,
  `grantor_facilities` varchar(255) DEFAULT NULL,
  `customer_building_owner_name` varchar(255) DEFAULT NULL,
  `grantor_building_owner_name` varchar(255) DEFAULT NULL,
  `customer_building_status` varchar(255) DEFAULT NULL,
  `grantor_building_status` varchar(255) DEFAULT NULL,
  `customer_region_level` varchar(255) DEFAULT NULL,
  `grantor_region_level` varchar(255) DEFAULT NULL,
  `customer_accommodation_duration` varchar(255) DEFAULT NULL,
  `grantor_accommodation_duration` varchar(255) DEFAULT NULL,
  `customer_accommodation_start` varchar(255) DEFAULT NULL,
  `grantor_accommodation_start` varchar(255) DEFAULT NULL,
  `grantor_accommodation_end` varchar(255) DEFAULT NULL,
  `customer_accommodation_end` varchar(255) DEFAULT NULL,
  `credit_limit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_credits_data`
--

INSERT INTO `customer_credits_data` (`id`, `customer_id`, `grantor_id`, `relatives_data`, `work_field`, `work_address`, `job_title`, `salary`, `work_duration`, `previous_work_field`, `customer_income`, `customer_additional_income`, `grantor_income`, `grantor_additional_income`, `commitments`, `has_business`, `business_data`, `business_income`, `business_outcome`, `product_name`, `product_price`, `installement_duration`, `required_installement`, `downpayment`, `profit_percentage`, `final_customer_tatal_income`, `final_total_commitments`, `final_business_income`, `grantor_commitments`, `final_overall_income`, `credit_researcher_feedback`, `cerdit_researcher_id`, `credit_admin`, `created_at`, `updated_at`, `same_outcome_source`, `commitments_amount`, `customer_educational_qualification`, `grantor_educational_qualification`, `customer_marital_status`, `grantor_marital_status`, `customer_childrens_data`, `grantor_childrens_data`, `customer_accommodation`, `grantor_accommodation`, `customer_rental_price`, `grantor_rental_price`, `customer_facilities`, `grantor_facilities`, `customer_building_owner_name`, `grantor_building_owner_name`, `customer_building_status`, `grantor_building_status`, `customer_region_level`, `grantor_region_level`, `customer_accommodation_duration`, `grantor_accommodation_duration`, `customer_accommodation_start`, `grantor_accommodation_start`, `grantor_accommodation_end`, `customer_accommodation_end`, `credit_limit`) VALUES
(10, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, '0', '<table style=\"border-collapse: collapse; width: 99.673%; height: 216px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 55px;\">\r\n<td style=\"width: 8.33335%; font-size: 20px;\">نوع النشاط التجاري</td>\r\n<td style=\"width: 8.33335%; font-size: 20px; height: 55px;\">صافي الدخل الشهري</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">الدخل الشهري</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">الدخل السنوي</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">قيمة البضاعة</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">رأس المال</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">تاريخ بداية النشاط</td>\r\n</tr>\r\n<tr style=\"height: 53px;\">\r\n<td style=\"width: 8.33335%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 8.33335%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 55px;\">\r\n<td style=\"width: 8.33335%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 8.33335%; font-size: 20px; height: 55px;\">اجمالي الالتزامات</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">المرافق</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">مده الايجار</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">قيمة الايجار</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">اجمالي الاجوز</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 55px;\">عدد العمال</td>\r\n</tr>\r\n<tr style=\"height: 53px;\">\r\n<td style=\"width: 8.33335%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 8.33335%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px; height: 53px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, '2023-07-20 09:17:31', '2023-07-20 09:43:02', '0', '0', NULL, NULL, 'devorced', 'single', NULL, NULL, 'owned', 'owned', NULL, NULL, NULL, NULL, NULL, NULL, 'hight', 'hight', 'hight', 'hight', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_credits_data_customers`
--

CREATE TABLE `customer_credits_data_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_credits_data_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_credits_data_customers`
--

INSERT INTO `customer_credits_data_customers` (`id`, `customer_credits_data_id`, `customer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, NULL, NULL, NULL),
(2, 2, 2, NULL, NULL, NULL),
(3, 3, 2, NULL, NULL, NULL),
(4, 3, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_installement_requests_customers`
--

CREATE TABLE `customer_installement_requests_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_installment_request_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_installement_requests_customers`
--

INSERT INTO `customer_installement_requests_customers` (`id`, `customer_installment_request_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 4, 3, NULL, NULL),
(3, 5, 7, NULL, NULL),
(4, 6, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_installments`
--

CREATE TABLE `customer_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `installment_id` int(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `installment_amount_paid` mediumtext DEFAULT '0',
  `partially_paid` varchar(255) DEFAULT NULL,
  `partially_paid_amout` varchar(255) DEFAULT '0',
  `penalty_amount` varchar(255) DEFAULT '0',
  `penalty_days` varchar(255) DEFAULT NULL,
  `paid_penalty` varchar(255) DEFAULT '0',
  `paid_penalty_date` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `total_paid` varchar(9999) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bill_no` varchar(255) DEFAULT NULL,
  `penalty_amount_perday` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_installments`
--

INSERT INTO `customer_installments` (`id`, `installment_id`, `customer_id`, `order_id`, `user_id`, `amount`, `due_date`, `installment_amount_paid`, `partially_paid`, `partially_paid_amout`, `penalty_amount`, `penalty_days`, `paid_penalty`, `paid_penalty_date`, `notes`, `total_paid`, `status`, `created_at`, `updated_at`, `deleted_at`, `bill_no`, `penalty_amount_perday`) VALUES
(538, 1, 37, 42, NULL, '30937.5', '2023-04-05', '0', NULL, '0', '3160', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-09-10 07:21:30', '2023-09-10 07:21:59', NULL, NULL, '20'),
(539, 2, 37, 42, 1, '30937.5', '2023-05-05', '30937.5', NULL, '0', '2560', NULL, '2560', '2023-09-10 10:22:31', NULL, '33497.5', 'paid', '2023-09-10 07:21:30', '2023-09-10 07:22:31', NULL, '8020738045', '20'),
(540, 3, 37, 42, 1, '30937.5', '2023-06-05', '0', NULL, '0', '1940', NULL, '1940', '2023-09-10 10:24:45', NULL, '1940', 'partially_paid', '2023-09-10 07:21:30', '2023-09-10 07:24:45', NULL, NULL, '20'),
(541, 4, 37, 42, 1, '30937.5', '2023-07-05', '30937.5', NULL, '0', '1340', NULL, '1340', '2023-09-10 10:26:49', NULL, '32277.5', 'paid', '2023-09-10 07:21:30', '2023-09-10 07:26:49', NULL, '2753925617', '20'),
(542, 1, 5, 43, NULL, '1607.14', '2023-10-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(543, 2, 5, 43, NULL, '1607.14', '2023-11-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(544, 3, 5, 43, NULL, '1607.14', '2023-12-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(545, 4, 5, 43, NULL, '1607.14', '2024-01-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(546, 5, 5, 43, NULL, '1607.14', '2024-02-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(547, 6, 5, 43, NULL, '1607.14', '2024-03-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14'),
(548, 7, 5, 43, NULL, '1607.14', '2024-04-04', '0', NULL, '0', '0', NULL, '0', NULL, NULL, NULL, 'not_paid', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, NULL, '14');

-- --------------------------------------------------------

--
-- Table structure for table `customer_installment_requests`
--

CREATE TABLE `customer_installment_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `installment_months` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `grantor_id` int(11) DEFAULT NULL,
  `trader_id` int(11) DEFAULT NULL,
  `installment_date` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_installment_requests`
--

INSERT INTO `customer_installment_requests` (`id`, `product_name`, `product_price`, `deposit`, `installment_months`, `created_at`, `updated_at`, `deleted_at`, `customer_id`, `grantor_id`, `trader_id`, `installment_date`, `notes`) VALUES
(5, 'هواوى P50', '20000', '1000', '18', '2023-04-29 10:47:47', '2023-04-29 10:47:47', NULL, 6, NULL, NULL, NULL, NULL),
(6, 'شاشه', '5000', '0', '12', '2023-04-29 10:48:12', '2023-04-29 10:48:12', NULL, 8, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_legals`
--

CREATE TABLE `customer_legals` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `grantor_id` int(11) DEFAULT NULL,
  `customer_status` varchar(255) DEFAULT NULL,
  `grantor_status` varchar(255) DEFAULT NULL,
  `customer_note` longtext DEFAULT NULL,
  `grantor_note` longtext DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `general_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_legals`
--

INSERT INTO `customer_legals` (`id`, `customer_id`, `grantor_id`, `customer_status`, `grantor_status`, `customer_note`, `grantor_note`, `document`, `created_at`, `updated_at`, `user_id`, `general_status`) VALUES
(31, 6, 7, 'approved', 'approved', NULL, NULL, 'copy', '2023-04-29 10:50:36', '2023-04-29 10:50:36', 1, 'approved'),
(32, 8, 7, 'approved', 'approved', NULL, NULL, 'copy', '2023-04-29 10:51:12', '2023-04-29 10:51:12', 1, 'approved'),
(33, 8, 7, 'approved', 'approved', NULL, NULL, 'copy', '2023-04-29 10:51:31', '2023-04-29 10:51:31', 1, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `customer_legal_customers`
--

CREATE TABLE `customer_legal_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_legal_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_legal_customers`
--

INSERT INTO `customer_legal_customers` (`id`, `customer_id`, `customer_legal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 30, NULL, NULL),
(2, 3, 30, NULL, NULL),
(3, 7, 31, NULL, NULL),
(4, 9, 32, NULL, NULL),
(5, 9, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_payments`
--

CREATE TABLE `customer_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_installment_id` int(11) DEFAULT NULL,
  `customer_id` int(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_payments`
--

INSERT INTO `customer_payments` (`id`, `order_installment_id`, `customer_id`, `amount`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `note`) VALUES
(53, 436, 5, '1025.51', NULL, NULL, '2023-07-20 12:56:35', '2023-07-20 12:56:35', NULL, 1, NULL),
(54, 439, 5, '1025.51', NULL, NULL, '2023-08-16 08:13:30', '2023-08-16 08:13:30', NULL, 1, 'دفع مبلغ القسط'),
(55, 486, 9, '4200', NULL, NULL, '2023-08-20 05:56:06', '2023-08-20 05:56:06', NULL, 1, NULL),
(56, 486, 9, '375', NULL, NULL, '2023-08-20 05:56:24', '2023-08-20 05:56:24', NULL, 1, NULL),
(57, 486, 9, '66', NULL, NULL, '2023-08-20 05:57:01', '2023-08-20 05:57:01', NULL, 1, NULL),
(58, 488, 9, '4375', NULL, NULL, '2023-08-20 06:05:23', '2023-08-20 06:05:23', NULL, 1, NULL),
(59, 458, 9, '135.56', NULL, NULL, '2023-09-05 12:33:14', '2023-09-05 12:33:14', NULL, 1, NULL),
(60, 513, 6, '100', NULL, NULL, '2023-09-09 11:31:38', '2023-09-09 11:31:38', NULL, 1, NULL),
(61, 513, 6, '80', NULL, NULL, '2023-09-09 11:31:47', '2023-09-09 11:31:47', NULL, 1, NULL),
(62, 514, 6, '1000', NULL, NULL, '2023-09-09 11:32:04', '2023-09-09 11:32:04', NULL, 1, NULL),
(63, 514, 6, '220.8', NULL, NULL, '2023-09-09 11:49:17', '2023-09-09 11:49:17', NULL, 1, NULL),
(64, 528, 5, '3000', NULL, NULL, '2023-09-10 06:31:16', '2023-09-10 06:31:16', NULL, 1, NULL),
(65, 528, 5, '300', NULL, NULL, '2023-09-10 06:32:09', '2023-09-10 06:32:09', NULL, 1, NULL),
(66, 528, 5, '2000', NULL, NULL, '2023-09-10 06:32:19', '2023-09-10 06:32:19', NULL, 1, NULL),
(67, 528, 5, '34', NULL, NULL, '2023-09-10 06:32:25', '2023-09-10 06:32:25', NULL, 1, NULL),
(68, 539, 37, '2000', NULL, NULL, '2023-09-10 07:22:16', '2023-09-10 07:22:16', NULL, 1, NULL),
(69, 539, 37, '560', NULL, NULL, '2023-09-10 07:22:23', '2023-09-10 07:22:23', NULL, 1, NULL),
(70, 539, 37, '30937.5', NULL, NULL, '2023-09-10 07:22:31', '2023-09-10 07:22:31', NULL, 1, NULL),
(71, 540, 37, '1940', NULL, NULL, '2023-09-10 07:24:45', '2023-09-10 07:24:45', NULL, 1, NULL),
(72, 541, 37, '1340', NULL, NULL, '2023-09-10 07:26:37', '2023-09-10 07:26:37', NULL, 1, NULL),
(73, 541, 37, '30937.5', NULL, NULL, '2023-09-10 07:26:49', '2023-09-10 07:26:49', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_requests`
--

CREATE TABLE `customer_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `request_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `change_due_date` varchar(255) DEFAULT NULL,
  `cdd_grace` varchar(255) DEFAULT NULL,
  `cdd_new_date` varchar(255) DEFAULT NULL,
  `cdd_days_no` varchar(255) DEFAULT NULL,
  `cdd_days_total` varchar(255) DEFAULT NULL,
  `installment_request` varchar(255) DEFAULT NULL,
  `ir_product` varchar(255) DEFAULT NULL,
  `ir_amount` varchar(255) DEFAULT NULL,
  `delay_penalty` varchar(255) DEFAULT NULL,
  `dp_payement_date` varchar(255) DEFAULT NULL,
  `db_dayes_no` varchar(255) DEFAULT NULL,
  `early_payment` varchar(255) DEFAULT NULL,
  `ep_total_months` varchar(255) DEFAULT NULL,
  `ep_e_months` varchar(255) DEFAULT NULL,
  `ep_amount` varchar(255) DEFAULT NULL,
  `ep_discount` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `decision` varchar(255) DEFAULT NULL,
  `notification_date` varchar(255) DEFAULT NULL,
  `excecution_date` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `commuication` varchar(255) DEFAULT NULL,
  `new_installment_profit` varchar(255) DEFAULT NULL,
  `prepaid_amount` varchar(255) DEFAULT NULL,
  `new_installment_credit_limit` varchar(255) DEFAULT NULL,
  `all_over_amount` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `rest_amount` varchar(255) DEFAULT NULL,
  `discount_precentatge` varchar(255) DEFAULT NULL,
  `penalty_amount` varchar(255) DEFAULT NULL,
  `pay_penalty_date` varchar(255) DEFAULT NULL,
  `penalty_profit_discount` varchar(255) DEFAULT NULL,
  `restructure_installments_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'الاسم', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'تم الانشاء في', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'اسم العرض', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(74, 14, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(75, 14, 'name', 'text', 'الاسم', 0, 1, 1, 1, 1, 1, '{}', 2),
(76, 14, 'address', 'text_area', 'العنوان', 0, 0, 1, 1, 1, 1, '{}', 6),
(77, 14, 'work', 'text', 'العمل', 0, 0, 1, 1, 1, 1, '{}', 7),
(78, 14, 'phone', 'number', 'التليفون', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:11\"}}', 8),
(79, 14, 'age', 'number', 'العمر', 0, 0, 1, 1, 1, 1, '{}', 15),
(80, 14, 'communicate', 'select_dropdown', 'طريقة التواصل', 0, 0, 1, 1, 1, 1, '{\"default\":\"inside\",\"options\":{\"inside\":\"inside\",\"call\":\"call\",\"facebook\":\"facebook\",\"whatsapp\":\"whatsapp\"}}', 16),
(81, 14, 'note', 'rich_text_box', 'ملحوطة', 0, 0, 1, 1, 1, 1, '{}', 17),
(82, 14, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 0, 0, 0, 0, '{}', 18),
(83, 14, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 19),
(84, 16, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(85, 16, 'code', 'text', 'الكود', 0, 1, 1, 1, 0, 0, '{}', 3),
(86, 16, 'name', 'text', 'الاسم', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(87, 16, 'national_id', 'number', 'رقم البطاقة', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"min:14\",\"max:14\"]}}', 5),
(88, 16, 'phone', 'number', 'رقم التليفون', 0, 1, 1, 1, 1, 1, '{}', 7),
(89, 16, 'phone_2', 'number', 'رقم التليفون 2', 0, 1, 1, 1, 1, 1, '{}', 8),
(90, 16, 'notes', 'text_area', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 30),
(91, 16, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 1, '{}', 27),
(92, 16, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 1, 0, 0, 0, '{}', 28),
(93, 16, 'address', 'text_area', 'العنوان', 0, 0, 1, 1, 1, 1, '{}', 16),
(95, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 6),
(113, 19, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(114, 19, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"},\"attribute\":\"name\"}', 3),
(118, 19, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 20),
(119, 19, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 8),
(120, 19, 'customer_credit_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(121, 19, 'status', 'select_dropdown', 'الحالة', 0, 0, 1, 1, 1, 1, '{\"options\":{\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\",\"hold\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 17),
(122, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 22, 'customer_id', 'text', 'id العميل', 0, 1, 1, 1, 1, 1, '{\"attribute\":\"name\"}', 3),
(124, 22, 'grantor_id', 'text', 'id الضامن', 0, 0, 0, 0, 0, 0, '{\"attribute\":\"name\"}', 7),
(125, 22, 'customer_status', 'select_dropdown', 'حالة العميل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"0\":\"--\\u0627\\u062e\\u062a\\u0631--\",\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\"}}', 4),
(126, 22, 'grantor_status', 'select_dropdown', 'حالة الضامن', 0, 1, 1, 1, 1, 1, '{\"options\":{\"0\":\"--\\u0627\\u062e\\u062a\\u0631--\",\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\"}}', 8),
(127, 22, 'customer_note', 'text_area', 'ملحوظة العميل', 0, 0, 1, 1, 1, 1, '{}', 5),
(128, 22, 'grantor_note', 'text_area', 'ملحوظة الضامن', 0, 0, 1, 1, 1, 1, '{}', 9),
(129, 22, 'document', 'radio_btn', 'الملف', 0, 1, 1, 1, 1, 1, '{\"options\":{\"original\":\"original\",\"copy\":\"copy\"},\"display\":{\"width\":\"1\",\"id\":\"custom_id\"}}', 10),
(130, 22, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 13),
(131, 22, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 14),
(132, 22, 'customer_legal_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(133, 22, 'customer_legal_belongsto_customer_relationship_1', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Grantor\",\"table\":\"grantors\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_legal_customers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(134, 22, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{\"display\":{\"class\":\"user_id_custom_class\"}}', 12),
(135, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(136, 23, 'name', 'text', 'الاسم', 0, 1, 1, 1, 1, 1, '{}', 2),
(137, 23, 'description', 'text', 'الوصف', 0, 1, 1, 1, 1, 1, '{}', 3),
(138, 23, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 4),
(139, 23, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 5),
(143, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(144, 24, 'reason', 'text', 'السبب', 0, 1, 1, 1, 1, 1, '{}', 4),
(145, 24, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(146, 24, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(147, 24, 'date', 'date', 'التاريخ', 0, 1, 1, 1, 1, 1, '{}', 6),
(148, 24, 'department_id', 'text', 'Department Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(149, 24, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 0, '{}', 11),
(150, 24, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 12),
(151, 24, 'customer_care_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(152, 24, 'customer_care_belongsto_user_relationship', 'relationship', 'المسؤل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(153, 24, 'customer_care_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"department_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(154, 22, 'general_status', 'select_dropdown', 'الحالة النهائية', 0, 1, 1, 1, 1, 1, '{\"options\":{\"0\":\"--\\u0627\\u062e\\u062a\\u0631--\",\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\",\"hold\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 11),
(161, 19, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 4),
(162, 19, 'income_feedback', 'text_area', 'يرتكز العمل والدخل على :', 0, 1, 1, 1, 1, 1, '{}', 5),
(163, 19, 'discussion_feedback', 'text_area', 'بمعاينة العميل والمناقشة تبين', 0, 0, 1, 1, 1, 1, '{}', 6),
(164, 19, 'enquiry_feedback', 'text_area', 'بالتحري والاستعلام تبين', 0, 0, 1, 1, 1, 1, '{}', 7),
(165, 19, 'credit_manager_feedback', 'text_area', 'رأي مدير الائتمان', 0, 1, 1, 1, 1, 1, '{}', 15),
(166, 19, 'documents_feedback', 'text_area', 'بالاطلاع على الاوراق وسندات الائتمان تبين', 0, 1, 1, 1, 1, 1, '{}', 9),
(167, 19, 'credit_researcher_id', 'text', 'Credit Researcher Id', 0, 0, 1, 1, 1, 1, '{}', 10),
(168, 19, 'credit_manager_id', 'text', 'Credit Manager Id', 0, 0, 1, 1, 1, 1, '{}', 11),
(169, 19, 'customer_credit_belongsto_customer_relationship_1', 'relationship', 'الباحث الائتماني', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_researcher_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(170, 19, 'customer_credit_belongsto_user_relationship', 'relationship', 'مدير الائتمان', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_manager_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(171, 19, 'credit_researcher_feedback', 'text_area', 'رأي الباحث الائتماني', 0, 0, 1, 1, 1, 1, '{}', 13),
(172, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 25, 'product_name', 'text', 'اسم المنتج', 0, 1, 1, 1, 1, 1, '{}', 4),
(174, 25, 'product_price', 'number', 'سعر المنتج', 0, 1, 1, 1, 1, 1, '{}', 5),
(175, 25, 'deposit', 'number', 'المقدم', 0, 1, 1, 1, 1, 1, '{}', 6),
(176, 25, 'installment_months', 'text', 'عدد شهور التقسيط', 0, 1, 1, 1, 1, 1, '{}', 7),
(177, 25, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 8),
(178, 25, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 9),
(179, 25, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 10),
(180, 25, 'customer_installment_request_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(181, 25, 'customer_installment_request_belongsto_customer_relationship_1', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsToMany\",\"column\":\"grantor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_installement_requests_customers\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(182, 25, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(183, 25, 'grantor_id', 'text', 'Grantor Id', 0, 0, 0, 0, 0, 0, '{}', 12),
(184, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(185, 26, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(186, 26, 'grantor_id', 'text', 'Grantor Id', 0, 0, 0, 0, 0, 0, '{\"display\":{\"id\":\"custom_grantor_id\"}}', 17),
(187, 26, 'relatives_data', 'rich_text_box', 'بيانات الأقارب', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"relatives_data_id\"}}', 30),
(188, 26, 'work_field', 'text', 'مجال العمل', 0, 0, 1, 1, 1, 1, '{}', 31),
(189, 26, 'work_address', 'text_area', 'عنوان العمل', 0, 0, 1, 1, 1, 1, '{}', 32),
(190, 26, 'job_title', 'text', 'المسمى الوظيفي', 0, 0, 1, 1, 1, 1, '{}', 33),
(191, 26, 'salary', 'number', 'الراتب الشهري', 0, 0, 0, 0, 0, 0, '{\"default\":\"0\",\"min\":\"0\"}', 34),
(192, 26, 'work_duration', 'text', 'فترة العمل في المجال', 0, 0, 1, 1, 1, 1, '{}', 35),
(193, 26, 'previous_work_field', 'text', 'مجال العمل السابق', 0, 0, 1, 1, 1, 1, '{}', 36),
(194, 26, 'customer_income', 'number', 'دخل العميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 37),
(195, 26, 'customer_additional_income', 'number', 'مصدر دخل اضافى للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 38),
(196, 26, 'grantor_income', 'number', 'دخل الضامن', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 39),
(197, 26, 'grantor_additional_income', 'number', 'مصدر دخل اضافي للضامن', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 40),
(198, 26, 'commitments', 'rich_text_box', 'الالتزامات', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"load_commitments\"}}', 41),
(199, 26, 'has_business', 'checkbox', 'العميل لديه نشاط تجاري', 0, 0, 1, 1, 1, 1, '{\"on\":\"\\u0646\\u0639\\u0645\",\"off\":\"\\u0644\\u0627\"}', 44),
(200, 26, 'business_data', 'rich_text_box', 'بيانات النشاط التجاري', 0, 0, 1, 1, 1, 1, '{\"default\":\"here are default\"}', 45),
(201, 26, 'business_income', 'number', 'الدخل الشهري للنشاط التجاري', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 46),
(203, 26, 'product_name', 'text', 'اسم المنتج', 0, 1, 1, 1, 1, 1, '{}', 53),
(204, 26, 'product_price', 'number', 'سعر المنتج', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 54),
(205, 26, 'installement_duration', 'number', 'مده التقسيط بالشهور', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 55),
(206, 26, 'required_installement', 'number', 'القسط المطلوب', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 58),
(207, 26, 'downpayment', 'number', 'المقدم', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 56),
(208, 26, 'profit_percentage', 'number', 'نسبة الفائدة', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 57),
(209, 26, 'final_customer_tatal_income', 'number', 'صافي الدخل للعميل', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 49),
(210, 26, 'final_total_commitments', 'hidden', 'صافي الالتزامات للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 50),
(211, 26, 'final_business_income', 'number', 'صافي الدخل التجاري للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 51),
(213, 26, 'final_overall_income', 'number', 'صافي الدخل الكامل للعميل من جميع المصادر', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 52),
(214, 26, 'credit_researcher_feedback', 'text', 'رأي الباحث الائتماني', 0, 0, 0, 0, 0, 0, '{}', 63),
(216, 26, 'credit_admin', 'text', 'مدير الائتمان', 0, 0, 1, 1, 1, 1, '{}', 61),
(217, 26, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 0, '{}', 65),
(218, 26, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 66),
(219, 26, 'customer_credits_datum_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(220, 26, 'customer_credits_datum_belongsto_customer_relationship_1', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Grantor\",\"table\":\"grantors\",\"type\":\"belongsTo\",\"column\":\"grantor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_credits_data_customers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(221, 26, 'customer_credits_datum_belongsto_user_relationship', 'relationship', 'مدير الائتمان', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_admin\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 64),
(222, 26, 'cerdit_researcher_id', 'text', 'Cerdit Researcher Id', 0, 0, 1, 1, 1, 1, '{}', 60),
(223, 26, 'customer_credits_datum_belongsto_user_relationship_1', 'relationship', 'الباحث الائتماني', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"cerdit_researcher_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 62),
(224, 16, 'national_id_end_date', 'date', 'تاريخ انتهاء البطاقة', 0, 0, 1, 1, 1, 1, '{}', 6),
(237, 14, 'phone_2', 'number', 'رقم التليفون 2', 0, 1, 1, 1, 1, 1, '{}', 9),
(238, 14, 'landline', 'number', 'التليفون الارضي', 0, 0, 1, 1, 1, 1, '{}', 10),
(239, 14, 'work_phone', 'number', 'تليفون العمل', 0, 0, 1, 1, 1, 1, '{}', 11),
(240, 14, 'whatsapp_number', 'number', 'رقم الواتس اب', 0, 0, 1, 1, 1, 1, '{}', 12),
(241, 14, 'contact_date', 'date', 'تاريخ تواصل الزائر', 0, 1, 1, 1, 1, 1, '{\"format\":\"%Y-%m-%d\"}', 20),
(242, 16, 'landline', 'number', 'التليفون الارضي', 0, 0, 1, 1, 1, 1, '{}', 9),
(243, 16, 'work_number', 'number', 'تليفون العمل', 0, 0, 1, 1, 1, 1, '{}', 10),
(244, 16, 'whatsapp_number', 'number', 'رقم الواتس اب', 0, 0, 1, 1, 1, 1, '{}', 11),
(245, 24, 'note', 'text_area', 'ملحوطة', 0, 1, 1, 1, 1, 1, '{}', 10),
(246, 24, 'status', 'select_dropdown', 'الحالة', 0, 1, 1, 1, 1, 1, '{\"options\":{\"--select--\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\",\"done\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644\",\"hold\":\"\\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639\\u0644\\u0642\"}}', 10),
(247, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(248, 27, 'activity_title', 'text', 'اسم النشاط', 0, 1, 1, 1, 1, 1, '{}', 2),
(249, 27, 'activity_type', 'text', 'نوع النشاط', 0, 1, 1, 1, 1, 1, '{}', 3),
(253, 27, 'address', 'text', 'العنوان', 0, 0, 1, 1, 1, 1, '{}', 14),
(254, 27, 'owner_name', 'text', 'اسم صاحب المكان', 0, 1, 1, 1, 1, 1, '{}', 15),
(255, 27, 'owner_national_id', 'number', 'رقم بطاقة صاحب المكان', 0, 1, 1, 1, 1, 1, '{}', 16),
(256, 27, 'owner_phone', 'number', 'رقم موبايل صاحب المكان', 0, 0, 1, 1, 1, 1, '{}', 17),
(257, 27, 'owner_phone_2', 'number', 'رقم موبايل 2 صاحب المكان', 0, 0, 1, 1, 1, 1, '{}', 18),
(258, 27, 'owner_whatsapp', 'number', 'واتساب صاحب المكان', 0, 0, 1, 1, 1, 1, '{}', 19),
(259, 27, 'owner_landline', 'number', 'خط ارضي صاحب المكان', 0, 0, 1, 1, 1, 1, '{}', 20),
(260, 27, 'manager_name', 'text', 'اسم المدير', 0, 0, 1, 1, 1, 1, '{}', 21),
(261, 27, 'manager_phone', 'number', 'رقم تليفون المدير', 0, 0, 1, 1, 1, 1, '{}', 22),
(262, 27, 'manager_phone_2', 'number', 'رقم تليفون 2 المدير', 0, 0, 1, 1, 1, 1, '{}', 23),
(263, 27, 'manager_whatsapp', 'number', 'واتساب المدير', 0, 0, 1, 1, 1, 1, '{}', 24),
(264, 27, 'manager_landline', 'number', 'خط ارضي للمدير', 0, 0, 1, 1, 1, 1, '{}', 25),
(265, 27, 'posters_count', 'number', 'عدد البوسترات', 0, 0, 1, 1, 1, 1, '{}', 26),
(266, 27, 'photos_count', 'number', 'عدد الصور', 0, 0, 1, 1, 1, 1, '{}', 27),
(267, 27, 'email', 'text', 'الايميل', 0, 0, 1, 1, 1, 1, '{}', 28),
(268, 27, 'website', 'text', 'الويبسايت', 0, 0, 1, 1, 1, 1, '{}', 29),
(269, 27, 'facebook', 'text', 'الفيسبوك', 0, 0, 1, 1, 1, 1, '{}', 30),
(270, 27, 'tiktok', 'text', 'التك توك', 0, 0, 1, 1, 1, 1, '{}', 31),
(271, 27, 'telegram', 'text', 'التليجرام', 0, 0, 1, 1, 1, 1, '{}', 32),
(272, 27, 'instagram', 'text', 'الانسجرام', 0, 0, 1, 1, 1, 1, '{}', 33),
(273, 27, 'status', 'select_dropdown', 'الحالة', 0, 0, 1, 1, 1, 1, '{\"options\":{\"active\":\"Active\",\"follow_up\":\"Follow Up\",\"cancel\":\"Cancel\"}}', 34),
(274, 27, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 35),
(275, 27, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 36),
(276, 27, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 37),
(277, 25, 'customer_installment_request_belongsto_trader_relationship', 'relationship', 'التاجر', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Trader\",\"table\":\"traders\",\"type\":\"belongsTo\",\"column\":\"trader_id\",\"key\":\"id\",\"label\":\"activity_title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(278, 25, 'trader_id', 'text', 'Trader Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(279, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(280, 28, 'name', 'text', 'اسم المحافظة', 0, 1, 1, 1, 1, 1, '{}', 2),
(281, 28, 'code', 'text', 'كود المحافظة', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"address\"}}', 3),
(282, 28, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 4),
(283, 28, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 5),
(284, 28, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 6),
(285, 28, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 7),
(286, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 29, 'name', 'text', 'اسم المدينة', 0, 1, 1, 1, 1, 1, '{}', 2),
(288, 29, 'code', 'text', 'كود المدينة', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"address\"}}', 3),
(289, 29, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 5),
(290, 29, 'governemet_id', 'text', 'Governemet Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(291, 29, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 7),
(292, 29, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 8),
(293, 29, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 9),
(294, 29, 'city_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"governemet_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(295, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(296, 30, 'name', 'text', 'اسم المنطقة', 0, 1, 1, 1, 1, 1, '{}', 2),
(297, 30, 'code', 'text', 'كود المنطقة', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"address\"}}', 3),
(298, 30, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 4),
(299, 30, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 6),
(300, 30, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 7),
(301, 30, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 8),
(302, 30, 'region_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(303, 30, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(304, 26, 'same_outcome_source', 'checkbox', 'الالتزامات مشتركة للعميل والضامن', 0, 0, 1, 1, 1, 1, '{\"on\":\"\\u0646\\u0639\\u0645\",\"off\":\"\\u0644\\u0627\"}', 48),
(305, 16, 'region_id', 'text', 'Region Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(306, 16, 'governorate_id', 'hidden', 'Governorate Id', 0, 1, 1, 1, 1, 1, '{}', 24),
(307, 16, 'city_id', 'hidden', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 29),
(308, 16, 'customer_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(309, 16, 'customer_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"governorate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(310, 16, 'customer_belongsto_region_relationship', 'relationship', 'المنطقة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Region\",\"table\":\"regions\",\"type\":\"belongsTo\",\"column\":\"region_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(311, 14, 'visitor_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"governorate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(312, 14, 'governorate_id', 'text', 'Governorate Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(313, 14, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 14),
(314, 14, 'region_id', 'text', 'Region Id', 0, 1, 1, 1, 1, 1, '{}', 21),
(315, 14, 'visitor_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(316, 14, 'visitor_belongsto_region_relationship', 'relationship', 'المنطقة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Region\",\"table\":\"regions\",\"type\":\"belongsTo\",\"column\":\"region_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(317, 27, 'trader_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"government_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(318, 27, 'trader_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(319, 27, 'trader_belongsto_region_relationship', 'relationship', 'المنطقة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Region\",\"table\":\"regions\",\"type\":\"belongsTo\",\"column\":\"region_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(320, 27, 'government_id', 'text', 'Government Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(321, 27, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(322, 27, 'region_id', 'text', 'Region Id', 0, 1, 1, 1, 1, 1, '{}', 10),
(323, 16, 'birth_date', 'date', 'تاريخ الميلاد', 0, 1, 1, 1, 1, 1, '{}', 4),
(324, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(325, 31, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(329, 31, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 0, 0, 0, 1, '{}', 25),
(330, 31, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 13),
(331, 31, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 16),
(332, 31, 'order_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(333, 31, 'order_belongstomany_customer_relationship', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Grantor\",\"table\":\"grantors\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders_customers\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(334, 31, 'order_amount', 'number', 'سعر المنتج', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_amount_id\"},\"default\":0,\"min\":0}', 6),
(335, 31, 'order_profit_percentage', 'number', 'نسبة الفايدة ( نسبة مؤية % )', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_profit_percentage_id\"},\"default\":0,\"min\":0}', 8),
(336, 31, 'total_order_amount', 'number', 'اجمالي مبلغ التقسيط', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"total_installement_amout\"},\"default\":0,\"min\":0}', 11),
(337, 31, 'installment_start_date', 'date', 'تاريخ بداية التقسيط', 0, 1, 1, 1, 1, 1, '{}', 9),
(338, 31, 'months_count', 'number', 'عدد شهور التقسيط', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_months_count_id\"},\"default\":0,\"min\":0}', 10),
(339, 26, 'commitments_amount', 'number', 'مبلغ التزامات العميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 42),
(340, 26, 'business_outcome', 'text', 'الالتزامات الشهرية للنشاط التجاري', 0, 0, 1, 1, 1, 1, '{}', 47),
(341, 26, 'grantor_commitments', 'number', 'مبلغ التزامات الضامن', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 43),
(342, 31, 'monthly_amount', 'number', 'مبلغ القسط الشهري', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"monthly_amount_id\"},\"default\":0,\"min\":0}', 12),
(343, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(344, 32, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(345, 32, 'request_date', 'date', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 4),
(346, 32, 'due_date', 'date', 'تاريخ الاستحقاق', 0, 1, 1, 1, 1, 1, '{}', 5),
(347, 32, 'request_type', 'select_dropdown', 'نوع الطلب', 0, 1, 1, 1, 1, 1, '{\"options\":{\"change_due_date\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u0644\\u0642\\u0633\\u0637\",\"installment_request\":\"\\u0637\\u0644\\u0628 \\u0642\\u0633\\u0637 \\u062c\\u062f\\u064a\\u062f\",\"delay_penalety\":\"\\u0637\\u0644\\u0628 \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\",\"early_payment\":\"\\u062f\\u0641\\u0639 \\u0645\\u0628\\u0643\\u0631\"}}', 8),
(348, 32, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(351, 32, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 40),
(352, 32, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 41),
(353, 32, 'customer_request_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(354, 19, 'notes', 'text', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 19),
(355, 19, 'history_notes', 'rich_text_box', 'تقرير متابعة عميل', 0, 0, 1, 1, 1, 1, '{}', 18),
(356, 31, 'downpayment', 'number', 'المقدم', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"downpayment_id\"},\"default\":0,\"min\":0}', 7),
(357, 27, 'place_phone', 'number', 'تليفون المكان', 0, 1, 1, 1, 1, 1, '{}', 4),
(358, 27, 'place_phone2', 'number', 'تليفون 2 للمكان', 0, 1, 1, 1, 1, 1, '{}', 5),
(359, 27, 'place_whatsapp', 'number', 'واتساب المكان', 0, 1, 1, 1, 1, 1, '{}', 7),
(360, 27, 'place_landline', 'number', 'التليفون الارضي للمكان', 0, 1, 1, 1, 1, 1, '{}', 6),
(361, 26, 'customer_educational_qualification', 'text', 'المؤهل الدراسي للعميل', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"tab1-1\"}}', 4),
(362, 26, 'grantor_educational_qualification', 'text', 'المؤهل الدراسي للضامن', 0, 0, 1, 1, 1, 1, '{}', 18),
(363, 26, 'customer_marital_status', 'select_dropdown', 'الحالة الاجتماعية للعميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u0623\\u0639\\u0632\\u0628\",\"married\":\"\\u0645\\u062a\\u0632\\u0648\\u062c\",\"devorced\":\"\\u0645\\u0637\\u0644\\u0642\",\"armal\":\"\\u0623\\u0631\\u0645\\u0644\"},\"display\":{\"id\":\"tabl-2\"}}', 5),
(364, 26, 'grantor_marital_status', 'select_dropdown', 'الحالة الاجتماعية للضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u0623\\u0639\\u0632\\u0628\",\"married\":\"\\u0645\\u062a\\u0632\\u0648\\u062c\",\"devorced\":\"\\u0645\\u0637\\u0644\\u0642\",\"armal\":\"\\u0623\\u0631\\u0645\\u0644\"}}', 19),
(365, 26, 'customer_childrens_data', 'rich_text_box', 'بيانات ابناء العميل', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"load_customer_childrens_data tab2-1\"}}', 6),
(366, 26, 'grantor_childrens_data', 'rich_text_box', 'بيانات ابناء الضامن', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"load_grantor_childrens_data\"}}', 20),
(367, 26, 'customer_accommodation', 'select_dropdown', 'نوع اقامة العميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"owned\":\"\\u062a\\u0645\\u0644\\u064a\\u0643\",\"new-rent\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u062c\\u062f\\u064a\\u062f\",\"old-rent\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u0642\\u062f\\u064a\\u0645\"}}', 7),
(368, 26, 'grantor_accommodation', 'select_dropdown', 'نوع اقامة الضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"owned\":\"\\u062a\\u0645\\u0644\\u064a\\u0643\",\"new-rent\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u062c\\u062f\\u064a\\u062f\",\"old-rent\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u0642\\u062f\\u064a\\u0645\"}}', 21),
(369, 26, 'customer_rental_price', 'number', 'قيمة الايجار للعميل', 0, 0, 1, 1, 1, 1, '{}', 11),
(370, 26, 'grantor_rental_price', 'number', 'قيمة الايجار للضامن', 0, 0, 1, 1, 1, 1, '{}', 25),
(371, 26, 'customer_facilities', 'text', 'ايصال المرافق للعميل', 0, 0, 1, 1, 1, 1, '{}', 12),
(372, 26, 'grantor_facilities', 'text', 'ايصال المرافق الضامن', 0, 0, 1, 1, 1, 1, '{}', 26),
(373, 26, 'customer_building_owner_name', 'text', 'اسم صاحب عقار العميل', 0, 0, 1, 1, 1, 1, '{}', 13),
(374, 26, 'grantor_building_owner_name', 'text', 'اسم صاحب عقار الضامن', 0, 0, 1, 1, 1, 1, '{}', 27),
(375, 26, 'customer_building_status', 'select_dropdown', 'حالة عقار العميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0629\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 14),
(376, 26, 'grantor_building_status', 'select_dropdown', 'حالة عقار الضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 28),
(377, 26, 'customer_region_level', 'select_dropdown', 'مستوى منطقة العميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0629\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 15),
(378, 26, 'grantor_region_level', 'select_dropdown', 'مستوى منطقة الضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 29),
(379, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(380, 33, 'doc_date', 'timestamp', 'Doc Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(381, 33, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(382, 33, 'customer_phone_no', 'number', 'Customer Phone No', 0, 1, 1, 1, 1, 1, '{}', 5),
(383, 33, 'grantor_id', 'text', 'Grantor Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(384, 33, 'grantor_phone_no', 'number', 'Grantor Phone No', 0, 1, 1, 1, 1, 1, '{}', 8),
(385, 33, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 10),
(386, 33, 'cs_datetime', 'timestamp', 'Cs Datetime', 0, 1, 1, 1, 1, 1, '{}', 11),
(387, 33, 'cc_datetime', 'timestamp', 'Cc Datetime', 0, 1, 1, 1, 1, 1, '{}', 12),
(388, 33, 'cc_cr_contact_date', 'date', 'Cc Cr Contact Date', 0, 1, 1, 1, 1, 1, '{}', 13),
(389, 33, 'cr_datetime', 'timestamp', 'Cr Datetime', 0, 1, 1, 1, 1, 1, '{}', 14),
(390, 33, 'cr_status', 'text', 'Cr Status', 0, 1, 1, 1, 1, 1, '{}', 15),
(391, 33, 'cr_documents', 'text_area', 'Cr Documents', 0, 1, 1, 1, 1, 1, '{}', 16),
(392, 33, 'cr_pay_period', 'text', 'Cr Pay Period', 0, 1, 1, 1, 1, 1, '{}', 17),
(393, 33, 'cr_due_date', 'date', 'Cr Due Date', 0, 1, 1, 1, 1, 1, '{}', 18),
(394, 33, 'cr_period', 'text', 'Cr Period', 0, 1, 1, 1, 1, 1, '{}', 19),
(395, 33, 'cr_notice', 'text_area', 'Cr Notice', 0, 1, 1, 1, 1, 1, '{}', 20),
(396, 33, 'cc_datetime_2', 'timestamp', 'Cc Datetime 2', 0, 1, 1, 1, 1, 1, '{}', 21),
(397, 33, 'cc_ex_contact_date', 'date', 'Cc Ex Contact Date', 0, 1, 1, 1, 1, 1, '{}', 22),
(398, 33, 'ex_datetime', 'timestamp', 'Ex Datetime', 0, 1, 1, 1, 1, 1, '{}', 23),
(399, 33, 'ex_status', 'text', 'Ex Status', 0, 1, 1, 1, 1, 1, '{}', 24),
(400, 33, 'ex_notice', 'text_area', 'Ex Notice', 0, 1, 1, 1, 1, 1, '{}', 25),
(401, 33, 'ex_product_name', 'text', 'Ex Product Name', 0, 1, 1, 1, 1, 1, '{}', 26),
(402, 33, 'ex_traders', 'text', 'Ex Traders', 0, 1, 1, 1, 1, 1, '{}', 27),
(403, 33, 'ex_phone_no', 'number', 'Ex Phone No', 0, 1, 1, 1, 1, 1, '{}', 28),
(404, 33, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 29),
(405, 33, 'ex_cr_limit', 'number', 'Ex Cr Limit', 0, 1, 1, 1, 1, 1, '{}', 30),
(406, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 31),
(407, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 32),
(408, 33, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 33),
(409, 33, 'steps_action_belongsto_customer_relationship', 'relationship', 'customer', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(410, 33, 'steps_action_belongsto_customer_relationship_1', 'relationship', 'grantor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"grantor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(414, 32, 'change_due_date', 'checkbox', 'طلب تغيير موعد دفع القسط', 0, 0, 1, 1, 1, 1, '{}', 10),
(415, 32, 'cdd_grace', 'number', 'عدد الايام قبل دفع اول قسط', 0, 0, 1, 1, 1, 1, '{}', 11),
(416, 32, 'cdd_new_date', 'date', 'الموعد الجديد المطلوب', 0, 0, 1, 1, 1, 1, '{}', 12),
(417, 32, 'cdd_days_no', 'number', 'عدد ايام التاجيل', 0, 0, 1, 1, 1, 1, '{}', 13),
(418, 32, 'cdd_days_total', 'number', 'اجمالي الايام المتأخره', 0, 0, 1, 1, 1, 1, '{}', 14),
(419, 32, 'installment_request', 'checkbox', 'طلب قسط جديد', 0, 0, 1, 1, 1, 1, '{}', 15),
(420, 32, 'ir_product', 'text', 'اسم المنتج', 0, 0, 1, 1, 1, 1, '{}', 16),
(421, 32, 'ir_amount', 'number', 'سعر المنتج', 0, 0, 1, 1, 1, 1, '{}', 17),
(422, 32, 'delay_penalty', 'checkbox', 'طلب غرامة', 0, 0, 1, 1, 1, 1, '{}', 20),
(423, 32, 'dp_payement_date', 'date', 'تاريخ الاستحقاق الجديد', 0, 0, 1, 1, 1, 1, '{}', 25),
(424, 32, 'db_dayes_no', 'number', 'عدد ايام التأخير', 0, 0, 1, 1, 1, 1, '{}', 26),
(425, 32, 'early_payment', 'checkbox', 'دفع مبكر', 0, 0, 1, 1, 1, 1, '{}', 27),
(426, 32, 'ep_total_months', 'number', 'عدد شهور التقسيط', 0, 0, 1, 1, 1, 1, '{}', 29),
(427, 32, 'ep_e_months', 'number', 'عدد الشهور المراد دفعها', 0, 0, 1, 1, 1, 1, '{}', 30),
(428, 32, 'ep_amount', 'number', 'المبلغ المراد تحصيله', 0, 0, 1, 1, 1, 1, '{}', 33),
(429, 32, 'ep_discount', 'checkbox', 'خصم', 0, 0, 1, 1, 1, 1, '{}', 35),
(430, 32, 'notes', 'rich_text_box', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 36),
(431, 32, 'decision', 'select_dropdown', 'القرار', 0, 1, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 37),
(432, 32, 'notification_date', 'date', 'تاريخ تنبيه العميل', 0, 0, 1, 1, 1, 1, '{}', 38),
(433, 32, 'excecution_date', 'date', 'تاريخ التنفيذ', 0, 0, 1, 1, 1, 1, '{}', 39),
(434, 32, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 42),
(435, 32, 'customer_request_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(436, 32, 'commuication', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 7),
(437, 33, 'steps_action_belongsto_city_relationship', 'relationship', 'city', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(438, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(439, 34, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(440, 34, 'order_id', 'text', 'Order Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(441, 34, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 4),
(442, 34, 'due_date', 'text', 'Due Date', 0, 1, 1, 1, 1, 1, '{}', 5),
(443, 34, 'partially_paid', 'text', 'Partially Paid', 0, 1, 1, 1, 1, 1, '{}', 6),
(444, 34, 'partially_paid_amout', 'text', 'Partially Paid Amout', 0, 1, 1, 1, 1, 1, '{}', 7),
(445, 34, 'penalty_amount', 'text', 'Penalty Amount', 0, 1, 1, 1, 1, 1, '{}', 8),
(446, 34, 'paid_penalty', 'text', 'Paid Penalty', 0, 1, 1, 1, 1, 1, '{}', 9),
(447, 34, 'paid_penalty_date', 'text', 'Paid Penalty Date', 0, 1, 1, 1, 1, 1, '{}', 10),
(448, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(449, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(450, 34, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 14),
(451, 34, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 11),
(452, 35, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(453, 35, 'order_installment_id', 'text', 'Order Installment Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(454, 35, 'amount', 'text', 'المبلغ', 0, 1, 1, 1, 1, 1, '{}', 4),
(455, 35, 'type', 'text', 'Type', 0, 0, 0, 0, 0, 0, '{}', 6),
(456, 35, 'status', 'text', 'Status', 0, 0, 0, 0, 0, 0, '{}', 7),
(457, 35, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 11),
(458, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(459, 35, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(460, 35, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(461, 35, 'note', 'text', 'ملاحظة السداد', 0, 1, 1, 1, 1, 1, '{}', 9),
(462, 35, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(463, 35, 'customer_payment_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(464, 35, 'customer_payment_belongsto_user_relationship', 'relationship', 'المستلم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(465, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 19),
(466, 26, 'customer_accommodation_duration', 'text', 'مدة اقامة العميل', 0, 0, 1, 1, 1, 1, '{}', 8),
(467, 26, 'grantor_accommodation_duration', 'text', 'مدة اقامة الضامن', 0, 0, 1, 1, 1, 1, '{}', 22),
(468, 26, 'customer_accommodation_start', 'date', 'تاريخ بداية عقد ايجار العميل', 0, 0, 1, 1, 1, 1, '{}', 9),
(469, 26, 'grantor_accommodation_start', 'date', 'تاريخ بداية عقد ايجار الضامن', 0, 0, 1, 1, 1, 1, '{}', 23),
(470, 26, 'grantor_accommodation_end', 'date', 'تاريخ نهاية عقد ايجار الضامن', 0, 1, 1, 1, 1, 1, '{}', 24),
(471, 26, 'customer_accommodation_end', 'date', 'تاريخ نهاية عقد ايجار العميل', 0, 0, 1, 1, 1, 1, '{}', 10),
(472, 26, 'credit_limit', 'number', 'الحد الائتماني', 0, 1, 1, 1, 1, 1, '{}', 59),
(473, 32, 'new_installment_profit', 'text', 'اضافه نسبه الفائده', 0, 1, 1, 1, 1, 1, '{}', 18),
(474, 32, 'prepaid_amount', 'text', 'المبلغ المدفوع', 0, 1, 1, 1, 1, 1, '{}', 31),
(475, 32, 'new_installment_credit_limit', 'text', 'الحد الائتماني', 0, 1, 1, 1, 1, 1, '{}', 19),
(476, 32, 'all_over_amount', 'text', 'اجمالي المديونية', 0, 1, 1, 1, 1, 1, '{}', 28),
(477, 32, 'paid_amount', 'text', 'Paid Amount', 0, 0, 0, 0, 0, 0, '{}', 43),
(478, 32, 'rest_amount', 'text', 'المبلغ المتبقي', 0, 1, 1, 1, 1, 1, '{}', 32),
(479, 32, 'discount_precentatge', 'text', 'نسبة الخصم', 0, 1, 1, 1, 1, 1, '{}', 34),
(480, 32, 'penalty_amount', 'text', 'قيمة الغرامة', 0, 1, 1, 1, 1, 1, '{}', 22),
(481, 32, 'pay_penalty_date', 'text', 'ميعاد سداد الغرامة', 0, 1, 1, 1, 1, 1, '{}', 21),
(482, 32, 'penalty_profit_discount', 'text', 'نسبة الخصم', 0, 1, 1, 1, 1, 1, '{}', 24),
(483, 32, 'restructure_installments_count', 'text', 'عدد اقساط الهيكلة', 0, 1, 1, 1, 1, 1, '{}', 23),
(484, 25, 'installment_date', 'date', 'تاريخ التقسيط', 0, 1, 1, 1, 1, 1, '{}', 12),
(485, 25, 'notes', 'rich_text_box', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 13),
(486, 33, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"options\":{\"option1\":\"Accepted\",\"option2\":\"Refues\",\"option3\":\"Hold\"}}', 31),
(487, 31, 'selling_bill_number', 'text', 'رقم فاتورة البيع', 0, 1, 1, 1, 1, 1, '{}', 14),
(488, 31, 'selling_bill_date', 'date', 'تاريخ فاتورة البيع', 0, 1, 1, 1, 1, 1, '{}', 15),
(489, 31, 'selling_bill_type', 'select_dropdown', 'نوع البيع', 0, 1, 1, 1, 1, 1, '{\"options\":{\"option1\":\"\\u0643\\u0627\\u0634\",\"option2\":\"\\u062a\\u0642\\u0633\\u064a\\u0637\"}}', 18),
(490, 31, 'added_taxes', 'number', 'الضريبة المضافة', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"additional_profit_id\"},\"default\":0,\"min\":0}', 19),
(491, 31, 'overall_credit_limit', 'number', 'الحد الائتماني الكلي', 0, 1, 1, 1, 1, 1, '{}', 20),
(492, 31, 'used_credit_limit', 'number', 'الحد الائتماني المستخدم', 0, 1, 1, 1, 1, 1, '{}', 21),
(493, 31, 'reset_credit_limit', 'number', 'الحد الائتماني المتبقي', 0, 1, 1, 1, 1, 1, '{}', 22),
(494, 31, 'salesperson_id', 'text', 'Salesperson Id', 0, 1, 1, 1, 1, 1, '{}', 23),
(495, 31, 'profit_discount', 'number', 'خصم على الفايدة', 0, 1, 1, 1, 1, 1, '{}', 24),
(496, 31, 'order_belongsto_user_relationship', 'relationship', 'مندوب المبيعات', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"salesperson_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 26),
(497, 31, 'code', 'text', 'الكود', 0, 1, 1, 1, 0, 0, '{}', 4),
(498, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(499, 37, 'code', 'text', 'الكود', 0, 1, 1, 1, 0, 0, '{}', 3),
(500, 37, 'name', 'text', 'الاسم', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(501, 37, 'national_id', 'number', 'رقم البطاقة', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"min:14\",\"max:14\"]}}', 5),
(502, 37, 'phone', 'number', 'رقم التليفون', 0, 1, 1, 1, 1, 1, '{}', 7),
(503, 37, 'phone_2', 'number', 'رقم التليفون 2', 0, 1, 1, 1, 1, 1, '{}', 8),
(504, 37, 'notes', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 22),
(505, 37, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 1, '{}', 16),
(506, 37, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 17),
(507, 37, 'address', 'text_area', 'العنوان', 0, 1, 1, 1, 1, 1, '{}', 15),
(508, 37, 'region_id', 'text', 'Region Id', 0, 1, 1, 1, 1, 1, '{}', 18),
(509, 37, 'national_id_end_date', 'date', 'تاريخ انتهاء البطاقة', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(510, 37, 'governorate_id', 'text', 'Governorate Id', 0, 1, 1, 1, 1, 1, '{}', 19),
(511, 37, 'landline', 'number', 'التليفون الارضي', 0, 1, 1, 1, 1, 1, '{}', 9),
(512, 37, 'work_number', 'number', 'تليفون العمل', 0, 1, 1, 1, 1, 1, '{}', 10),
(513, 37, 'whatsapp_number', 'number', 'رقم الواتس اب', 0, 1, 1, 1, 1, 1, '{}', 11),
(514, 37, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 20),
(515, 37, 'birth_date', 'date', 'تاريخ الميلاد', 0, 1, 1, 1, 1, 1, '{}', 4),
(516, 37, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 21),
(517, 37, 'grantor_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"governorate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(518, 37, 'grantor_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(519, 37, 'grantor_belongsto_region_relationship', 'relationship', 'المنطقة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Region\",\"table\":\"regions\",\"type\":\"belongsTo\",\"column\":\"region_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(524, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(525, 45, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(526, 45, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 17),
(527, 45, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 18),
(528, 45, 'request_date', 'date', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 5),
(529, 45, 'due_date', 'date', 'تاريخ الاستحقاق', 0, 0, 1, 1, 1, 1, '{}', 6),
(530, 45, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(531, 45, 'commuication_type', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 8),
(532, 45, 'grace', 'number', 'عدد الايام قبل دفع اول قسط', 0, 0, 1, 1, 1, 1, '{}', 9),
(533, 45, 'new_due_date', 'date', 'الموعد الجديد المطلوب', 0, 0, 1, 1, 1, 1, '{}', 10),
(534, 45, 'diff_days', 'number', 'عدد ايام التأجيل', 0, 0, 1, 1, 1, 1, '{}', 11),
(535, 45, 'total_grace', 'number', 'اجمالي الايام المتأخرة', 0, 0, 1, 1, 1, 1, '{}', 12),
(536, 45, 'customer_notify_date', 'date', 'تاريخ تنبيه العميل', 0, 0, 1, 1, 1, 1, '{}', 13),
(537, 45, 'decision', 'select_dropdown', 'القرار', 0, 0, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 14),
(538, 45, 'ex_date', 'date', 'تاريخ تنفيذ الطلب', 0, 0, 1, 1, 1, 1, '{}', 15),
(539, 45, 'notes', 'text_area', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 16),
(540, 45, 'request_change_due_date_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(541, 45, 'request_change_due_date_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(542, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(543, 46, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(544, 46, 'request_date', 'date', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 5),
(545, 46, 'due_date', 'date', 'تاريخ الاستحقاق', 0, 0, 1, 1, 1, 1, '{}', 6),
(546, 46, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(547, 46, 'commuication_type', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 8),
(548, 46, 'product_name', 'text', 'اسم المنتج', 0, 0, 1, 1, 1, 1, '{}', 9),
(549, 46, 'product_price', 'number', 'سعر المنتج', 0, 0, 1, 1, 1, 1, '{}', 10),
(550, 46, 'profit_percentage', 'number', 'نسبة الربح', 0, 0, 1, 1, 1, 1, '{}', 11),
(551, 46, 'credit_limit', 'number', 'الحد الائتماني', 0, 0, 1, 1, 1, 1, '{}', 12),
(552, 46, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 17),
(553, 46, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 18),
(554, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(555, 47, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(556, 47, 'request_date', 'date', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 5),
(557, 47, 'due_date', 'date', 'تاريخ الاستحقاق', 0, 0, 1, 1, 1, 1, '{}', 6),
(558, 47, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(559, 47, 'commuication_type', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 8),
(560, 47, 'penalty_due_date', 'date', 'تاريخ استحقاق الغرامة', 0, 0, 1, 1, 1, 1, '{}', 9),
(561, 47, 'penalty_amount', 'number', 'قيمة الغرامة', 0, 1, 1, 1, 1, 1, '{}', 10),
(562, 47, 'restucture_installments_count', 'number', 'عدد اقساط الهيكلة', 0, 0, 1, 1, 1, 1, '{}', 11),
(563, 47, 'discount_percentage', 'number', 'نسبة الخصم', 0, 0, 1, 1, 1, 1, '{}', 12),
(564, 47, 'new_due_date', 'date', 'تاريخ الاستحقاق الجديد', 0, 1, 1, 1, 1, 1, '{}', 13),
(565, 47, 'diff_days', 'number', 'عدد ايام التأخير', 0, 0, 1, 1, 1, 1, '{}', 14),
(566, 47, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 19),
(567, 47, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 20),
(568, 47, 'decision', 'select_dropdown', 'القرار', 0, 0, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 15),
(569, 47, 'customer_notify_date', 'date', 'تاريخ تنبيه العميل', 0, 1, 1, 1, 1, 1, '{}', 16),
(570, 47, 'ex_date', 'date', 'تاريخ تنفيذ الطلب', 0, 1, 1, 1, 1, 1, '{}', 17),
(571, 47, 'notes', 'text_area', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 18),
(572, 47, 'request_penalty_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(573, 47, 'request_penalty_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(574, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(575, 48, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(576, 48, 'request_date', 'date', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 5),
(577, 48, 'due_date', 'date', 'تاريخ الاستحقاق', 0, 0, 1, 1, 1, 1, '{}', 6),
(578, 48, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(579, 48, 'communication_type', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 8),
(580, 48, 'total_installments_amount', 'number', 'اجمالي المديونية', 0, 0, 1, 1, 1, 1, '{}', 9),
(581, 48, 'installment_months', 'number', 'عدد شهور التقسيط', 0, 0, 1, 1, 1, 1, '{}', 10),
(582, 48, 'installments_prepaid', 'number', 'عدد الشهور المراد دفعها', 0, 0, 1, 1, 1, 1, '{}', 11),
(583, 48, 'paid_amount', 'number', 'المبلغ المدفوع', 0, 1, 1, 1, 1, 1, '{}', 12),
(584, 48, 'rest_amount', 'number', 'المبلغ المتبقي', 0, 0, 1, 1, 1, 1, '{}', 13),
(585, 48, 'overall_amount', 'number', 'المبلغ المراد تحصيلة', 0, 0, 1, 1, 1, 1, '{}', 14),
(586, 48, 'discount_percentage', 'number', 'نسبة الخصم', 0, 0, 1, 1, 1, 1, '{}', 15),
(587, 48, 'decision', 'select_dropdown', 'القرار', 0, 1, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 16),
(588, 48, 'customer_notify_date', 'date', 'تاريخ تنبيه العميل', 0, 0, 1, 1, 1, 1, '{}', 17),
(589, 48, 'ex_date', 'date', 'تاريخ تنفيذ الطلب', 0, 0, 1, 1, 1, 1, '{}', 18),
(590, 48, 'notes', 'text_area', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 19),
(591, 48, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 20),
(592, 48, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 21),
(593, 46, 'customer_notify_date', 'date', 'تاريخ تنبيه العميل', 0, 0, 1, 1, 1, 1, '{}', 13),
(594, 46, 'decision', 'select_dropdown', 'القرار', 0, 0, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 14),
(595, 46, 'ex_date', 'date', 'تاريخ تنفيذ الطلب', 0, 1, 1, 1, 1, 1, '{}', 15),
(596, 46, 'note', 'text_area', 'ملاحظة', 0, 0, 1, 1, 1, 1, '{}', 16),
(597, 46, 'request_new_installment_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(598, 46, 'request_new_installment_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(599, 48, 'request_prepaid_installment_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(600, 48, 'request_prepaid_installment_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(601, 31, 'penalty_amount', 'number', 'قيمة الغرامة اليومية', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"},\"display\":{\"id\":\"order_daily_penalty_amount\"},\"default\":0,\"min\":0}', 17),
(602, 19, 'max_credit_limit', 'number', 'الحد الاقصى للائتمان', 0, 1, 1, 1, 1, 1, '{}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'المستخدم', 'المستخدمين', 'voyager-person', 'App\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 14:11:17', '2023-03-11 21:56:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-03-05 14:11:17', '2023-03-05 14:11:17'),
(3, 'roles', 'roles', 'القدرة', 'القدرات', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 14:11:17', '2023-03-11 16:48:53'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(14, 'visitors', 'visitors', 'الزائر', 'الزوار', 'voyager-people', 'App\\Visitor', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-11 13:49:23', '2023-04-07 23:13:50'),
(16, 'customers', 'customers', 'العميل', 'العملاء', 'voyager-group', 'App\\Customer', NULL, '\\App\\Http\\Controllers\\Admin\\CustomersCustomController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"national_id\",\"scope\":null}', '2023-03-11 14:16:21', '2023-08-16 04:59:11'),
(19, 'customer_credits', 'customer-credits', 'تقارير الائتمان', 'تقارير الائتمانات', 'voyager-credit-card', 'App\\CustomerCredit', NULL, '\\App\\Http\\Controllers\\Admin\\CustomersCreditsControllers', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-11 20:56:26', '2023-10-04 15:02:38'),
(21, 'customer_legal', 'customer-legal', 'Customer Legal', 'Customer Legals', NULL, 'App\\CustomerLegal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(22, 'customer_legals', 'customer-legals', 'قانوني', 'القانوني', 'voyager-milestone', 'App\\CustomerLegal', NULL, '\\App\\Http\\Controllers\\Admin\\CustomersLegalControllers', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-11 21:17:18', '2023-10-07 10:25:07'),
(23, 'departments', 'departments', 'قسم', 'الاقسام', 'voyager-browser', 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-16 20:53:19', '2023-03-16 20:56:55'),
(24, 'customer_care', 'customer-care', 'خدمة العميل', 'خدمة العملاء', 'voyager-phone', 'App\\CustomerCare', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-16 21:01:22', '2023-10-07 10:34:13'),
(25, 'customer_installment_requests', 'customer-installment-requests', 'طلب التقسيط', 'طلبات التقسيط', 'voyager-group', 'App\\CustomerInstallmentRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-19 09:23:10', '2023-07-20 12:27:11'),
(26, 'customer_credits_data', 'customer-credits-data', 'بيانات الائتمان', 'بيانات الائتمانات', 'voyager-data', 'App\\CustomerCreditsData', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-28 22:17:45', '2023-10-05 14:58:34'),
(27, 'traders', 'traders', 'التاجر', 'التجار', 'voyager-warning', 'App\\Trader', NULL, '\\App\\Http\\Controllers\\Admin\\TradersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-05 15:02:58', '2023-04-15 22:51:04'),
(28, 'governements', 'governements', 'المحافظة', 'المحافظات', 'voyager-location', 'App\\Governement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-07 13:26:48', '2023-08-20 08:10:18'),
(29, 'cities', 'cities', 'المدينة', 'المدن', 'voyager-bookmark', 'App\\City', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-07 13:28:20', '2023-08-20 08:11:01'),
(30, 'regions', 'regions', 'المنطقة', 'المناظق', 'voyager-leaf', 'App\\Region', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-07 13:31:15', '2023-08-20 08:11:17'),
(31, 'orders', 'orders', 'الاوردر', 'الاوردرات', 'voyager-shop', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Admin\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-08 11:05:54', '2023-08-19 11:07:24'),
(32, 'customer_requests', 'customer-requests', 'طلب العميل', 'طلبات العميل', 'voyager-chat', 'App\\CustomerRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-12 16:40:24', '2023-08-19 09:58:39'),
(33, 'steps_actions', 'steps-actions', 'Steps Action', 'Steps Actions', 'voyager-params', 'App\\StepsAction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-16 13:08:34', '2023-07-20 12:31:12'),
(34, 'customer_installments', 'customer-installments', 'Customer Installment', 'Customer Installments', NULL, 'App\\CustomerInstallment', NULL, '\\App\\Http\\Controllers\\Admin\\InstallmentsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-22 00:50:31', '2023-04-22 00:57:38'),
(35, 'customer_payments', 'customer-payments', 'الايراد', 'الايرادات', 'voyager-credit-cards', 'App\\CustomerPayment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-23 14:09:37', '2023-08-16 09:14:04'),
(37, 'grantors', 'grantors', 'Grantor', 'Grantors', NULL, 'App\\Grantor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-16 05:28:15', '2023-10-07 10:31:05'),
(43, 'change_due_date_request', 'change-due-date-request', 'Change Due Date Request', 'Change Due Date Requests', NULL, 'App\\ChangeDueDateRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(45, 'request_change_due_dates', 'request-change-due-dates', 'طلب تغيير موعد دفع قسط', 'طلب تغيير موعد دفع قسط', 'voyager-boat', 'App\\RequestChangeDueDate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-19 08:27:22', '2023-08-19 10:09:24'),
(46, 'request_new_installments', 'request-new-installments', 'طلب قسط جديد', 'طلب اقساط جديدة', 'voyager-shop', 'App\\RequestNewInstallment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-19 08:54:20', '2023-08-19 10:05:42'),
(47, 'request_penalties', 'request-penalties', 'طلب غرامة', 'طلبات غرامة', 'voyager-wineglass', 'App\\RequestPenalty', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-19 09:14:38', '2023-08-19 09:58:31'),
(48, 'request_prepaid_installments', 'request-prepaid-installments', 'دفع مبكر', 'دفع مبكر', 'voyager-credit-card', 'App\\RequestPrepaidInstallment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-19 09:52:27', '2023-08-19 10:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governements`
--

CREATE TABLE `governements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governements`
--

INSERT INTO `governements` (`id`, `name`, `code`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الغربية', 'GH', NULL, '2023-04-07 13:37:26', '2023-04-07 13:37:26', NULL),
(2, 'القاهرة', 'CA', NULL, '2023-04-08 16:52:36', '2023-04-08 16:52:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grantors`
--

CREATE TABLE `grantors` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grantors`
--

INSERT INTO `grantors` (`id`, `code`, `name`, `national_id`, `phone`, `phone_2`, `notes`, `created_at`, `updated_at`, `address`, `region_id`, `national_id_end_date`, `governorate_id`, `landline`, `work_number`, `whatsapp_number`, `city_id`, `birth_date`, `deleted_at`) VALUES
(0, NULL, 'محمد مصطفى رضا', '58688254025664', '01111002808', '283', '192', '2023-10-07 10:31:55', '2023-10-07 10:31:55', '179 Franecki Cliffs', '1', NULL, '1', '475', '84', '638', 2, '2023-10-02 00:00:00', NULL),
(5, NULL, 'امال فهمى السيد على', '11111111111111', '01289766058', NULL, NULL, '2023-04-29 08:10:08', '2023-07-22 05:40:42', '61 شارع السيد عبداللطيف /  طنطا ثانى / الغربية', NULL, '2023-07-22 00:00:00', NULL, NULL, NULL, NULL, NULL, '2023-07-22 00:00:00', NULL),
(6, NULL, 'محمد عبد الغنى السيد بكر', '26812151600151', '01222831600', NULL, NULL, '2023-04-29 10:42:56', '2023-04-29 10:42:56', 'طنطا - ش الاستاد', '1', '2023-07-20 00:00:00', '1', '0403569033', NULL, '01222831600', 1, '1999-02-01 00:00:00', NULL),
(7, NULL, 'تقى محمد عبد الغنى بكر', '29501011629189', '01111786229', NULL, NULL, '2023-04-29 10:44:14', '2023-04-29 10:44:32', 'طنطا ش الاستاد', '1', NULL, '1', '0403569033', NULL, '01111786229', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-03-05 14:11:17', '2023-03-05 14:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'الرئيسية', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2023-03-05 14:11:17', '2023-03-11 16:39:17', 'voyager.dashboard', 'null'),
(2, 1, 'الوسائط', '', '_self', 'voyager-images', '#000000', NULL, 15, '2023-03-05 14:11:17', '2023-08-19 08:44:52', 'voyager.media.index', 'null'),
(3, 1, 'المستخدمين', '', '_self', 'voyager-person', '#000000', NULL, 16, '2023-03-05 14:11:17', '2023-08-19 09:53:26', 'voyager.users.index', 'null'),
(4, 1, 'القدرات', '', '_self', 'voyager-lock', '#000000', NULL, 17, '2023-03-05 14:11:17', '2023-08-19 09:53:26', 'voyager.roles.index', 'null'),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 19, 3, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 19, 4, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 19, 5, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 19, 2, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.bread.index', NULL),
(10, 1, 'الاعدادات', '', '_self', 'voyager-settings', '#000000', 19, 1, '2023-03-05 14:11:17', '2023-03-11 16:42:35', 'voyager.settings.index', 'null'),
(17, 1, 'الزوار', '', '_self', 'voyager-people', '#000000', NULL, 5, '2023-03-11 13:49:23', '2023-08-16 05:41:16', 'voyager.visitors.index', 'null'),
(18, 1, 'العملاء', '', '_self', 'voyager-group', '#000000', NULL, 2, '2023-03-11 14:16:22', '2023-03-11 17:07:53', 'voyager.customers.index', 'null'),
(19, 1, 'الادارة', '', '_self', 'voyager-tools', '#000000', NULL, 19, '2023-03-11 14:24:52', '2023-08-19 09:53:26', NULL, ''),
(21, 1, 'الاستعلامات', '', '_self', 'voyager-flashlight', '#000000', NULL, 13, '2023-03-11 17:08:38', '2023-08-19 08:44:52', NULL, ''),
(23, 1, 'تقارير الائتمانات', '', '_self', 'voyager-credit-card', '#000000', 21, 2, '2023-03-11 20:56:26', '2023-04-05 15:04:27', 'voyager.customer-credits.index', 'null'),
(26, 1, 'القانوني', '', '_self', 'voyager-milestone', '#000000', 21, 3, '2023-03-11 21:17:18', '2023-04-05 15:04:27', 'voyager.customer-legals.index', 'null'),
(27, 1, 'الاقسام', '', '_self', 'voyager-browser', NULL, NULL, 18, '2023-03-16 20:53:19', '2023-08-19 09:53:26', 'voyager.departments.index', NULL),
(28, 1, 'خدمة العملاء', '', '_self', 'voyager-phone', '#000000', NULL, 4, '2023-03-16 21:01:22', '2023-08-16 05:41:16', 'voyager.customer-care.index', 'null'),
(29, 1, 'طلبات التقسيط', '', '_self', 'voyager-group', NULL, NULL, 7, '2023-03-19 09:23:10', '2023-08-16 05:41:16', 'voyager.customer-installment-requests.index', NULL),
(30, 1, 'بيانات الائتمان', '', '_self', 'voyager-data', '#000000', 21, 1, '2023-03-28 22:17:45', '2023-03-29 01:34:34', 'voyager.customer-credits-data.index', 'null'),
(31, 1, 'التجار', '', '_self', 'voyager-warning', '#000000', NULL, 8, '2023-04-05 15:02:58', '2023-08-16 05:41:16', 'voyager.traders.index', 'null'),
(32, 1, 'المحافظات', '', '_self', 'voyager-location', NULL, 35, 1, '2023-04-07 13:26:49', '2023-04-07 13:43:31', 'voyager.governements.index', NULL),
(33, 1, 'المدن', '', '_self', 'voyager-bookmark', '#000000', 35, 2, '2023-04-07 13:28:20', '2023-04-07 13:44:58', 'voyager.cities.index', 'null'),
(34, 1, 'المناظق', '', '_self', 'voyager-leaf', '#000000', 35, 3, '2023-04-07 13:31:16', '2023-04-07 13:45:23', 'voyager.regions.index', 'null'),
(35, 1, 'الأماكن', '', '_self', 'voyager-down-circled', '#000000', NULL, 14, '2023-04-07 13:43:08', '2023-08-19 08:44:52', NULL, ''),
(36, 1, 'الاوردرات', '', '_self', 'voyager-shop', '#000000', NULL, 6, '2023-04-08 11:05:55', '2023-08-16 05:41:16', 'voyager.orders.index', 'null'),
(37, 1, 'طلبات العميل', '', '_self', 'voyager-chat', '#000000', NULL, 9, '2023-04-12 16:40:25', '2023-08-16 05:41:16', 'voyager.customer-requests.index', 'null'),
(38, 1, 'Steps Actions', '', '_self', 'voyager-params', '#000000', NULL, 10, '2023-04-16 13:08:34', '2023-08-19 08:44:52', 'voyager.steps-actions.index', 'null'),
(40, 1, 'اقساط العميل', '', '_self', 'voyager-boat', '#000000', NULL, 11, '2023-04-22 00:50:31', '2023-08-19 08:44:52', 'voyager.customer-installments.index', 'null'),
(41, 1, 'الايرادات', '', '_self', 'voyager-credit-cards', '#000000', NULL, 12, '2023-04-23 14:09:38', '2023-08-19 08:44:52', 'voyager.customer-payments.index', 'null'),
(42, 1, 'الضامنين', '', '_self', 'voyager-boat', '#000000', NULL, 3, '2023-08-16 05:28:15', '2023-08-16 05:41:16', 'voyager.grantors.index', 'null'),
(48, 1, 'تعديل موعد دفع قسط', '', '_self', 'voyager-boat', '#000000', 37, 1, '2023-08-19 08:27:22', '2023-08-19 08:55:35', 'voyager.request-change-due-dates.index', 'null'),
(49, 1, 'طلب اقساط جديدة', '', '_self', 'voyager-shop', NULL, 37, 2, '2023-08-19 08:54:20', '2023-08-19 08:54:54', 'voyager.request-new-installments.index', NULL),
(50, 1, 'طلبات غرامة', '', '_self', 'voyager-wineglass', NULL, 37, 3, '2023-08-19 09:14:38', '2023-08-19 09:53:21', 'voyager.request-penalties.index', NULL),
(51, 1, 'دفع مبكر', '', '_self', 'voyager-credit-card', NULL, 37, 4, '2023-08-19 09:52:27', '2023-08-19 09:53:26', 'voyager.request-prepaid-installments.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_amount` varchar(255) DEFAULT NULL,
  `order_profit_percentage` varchar(255) DEFAULT NULL,
  `total_order_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `installment_start_date` varchar(255) DEFAULT NULL,
  `months_count` varchar(255) DEFAULT NULL,
  `monthly_amount` varchar(255) DEFAULT NULL,
  `downpayment` varchar(255) DEFAULT NULL,
  `selling_bill_number` varchar(255) DEFAULT NULL,
  `selling_bill_date` varchar(255) DEFAULT NULL,
  `selling_bill_type` varchar(255) DEFAULT NULL,
  `added_taxes` varchar(255) DEFAULT NULL,
  `overall_credit_limit` varchar(255) DEFAULT NULL,
  `used_credit_limit` varchar(255) DEFAULT NULL,
  `reset_credit_limit` varchar(255) DEFAULT NULL,
  `salesperson_id` varchar(255) DEFAULT NULL,
  `profit_discount` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `penalty_amount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_amount`, `order_profit_percentage`, `total_order_amount`, `created_at`, `updated_at`, `deleted_at`, `installment_start_date`, `months_count`, `monthly_amount`, `downpayment`, `selling_bill_number`, `selling_bill_date`, `selling_bill_type`, `added_taxes`, `overall_credit_limit`, `used_credit_limit`, `reset_credit_limit`, `salesperson_id`, `profit_discount`, `code`, `penalty_amount`) VALUES
(42, 37, '100000', '25', '123750', '2023-09-10 07:21:30', '2023-09-10 07:21:30', NULL, '2023-04-05 00:00:00', '4', '8250.00', '1000', NULL, NULL, 'option1', '0', NULL, NULL, NULL, NULL, NULL, 'B42', '20'),
(43, 5, '10000', '25', '11250', '2023-10-04 14:42:16', '2023-10-04 14:42:16', NULL, '2023-10-04 00:00:00', '7', '1125.00', '1000', NULL, '2023-10-16 00:00:00', 'option2', '0', NULL, NULL, NULL, NULL, NULL, 'B43', '14');

-- --------------------------------------------------------

--
-- Table structure for table `orders_customers`
--

CREATE TABLE `orders_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `grantor_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_customers`
--

INSERT INTO `orders_customers` (`id`, `grantor_id`, `order_id`, `created_at`, `updated_at`) VALUES
(16, 6, 25, NULL, NULL),
(17, 5, 26, NULL, NULL),
(18, 5, 27, NULL, NULL),
(19, 5, 28, NULL, NULL),
(20, 6, 29, NULL, NULL),
(21, 6, 30, NULL, NULL),
(22, 6, 31, NULL, NULL),
(23, 6, 32, NULL, NULL),
(24, 6, 33, NULL, NULL),
(25, 6, 34, NULL, NULL),
(26, 6, 35, NULL, NULL),
(27, 6, 36, NULL, NULL),
(28, 6, 37, NULL, NULL),
(29, 6, 38, NULL, NULL),
(30, 7, 39, NULL, NULL),
(31, 5, 40, NULL, NULL),
(32, 6, 41, NULL, NULL),
(33, 6, 42, NULL, NULL),
(34, 7, 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_installments`
--

CREATE TABLE `order_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `insinstallment_amount` varchar(255) DEFAULT NULL,
  `penalty` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(2, 1, 'about', 'here are about page', NULL, NULL, 'about', 'about', 'about', 'INACTIVE', '2023-03-05 17:18:07', '2023-03-05 17:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(4, 'browse_media', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(7, 'read_menus', 'menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(8, 'edit_menus', 'menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(9, 'add_menus', 'menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(10, 'delete_menus', 'menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(11, 'browse_roles', 'roles', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(12, 'read_roles', 'roles', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(13, 'edit_roles', 'roles', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(14, 'add_roles', 'roles', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(15, 'delete_roles', 'roles', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(16, 'browse_users', 'users', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(17, 'read_users', 'users', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(18, 'edit_users', 'users', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(19, 'add_users', 'users', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(20, 'delete_users', 'users', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(21, 'browse_settings', 'settings', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(22, 'read_settings', 'settings', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(23, 'edit_settings', 'settings', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(24, 'add_settings', 'settings', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(25, 'delete_settings', 'settings', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(26, 'browse_categories', 'categories', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(27, 'read_categories', 'categories', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(28, 'edit_categories', 'categories', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(29, 'add_categories', 'categories', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(30, 'delete_categories', 'categories', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(56, 'browse_visitors', 'visitors', '2023-03-11 13:49:23', '2023-03-11 13:49:23'),
(57, 'read_visitors', 'visitors', '2023-03-11 13:49:23', '2023-03-11 13:49:23'),
(58, 'edit_visitors', 'visitors', '2023-03-11 13:49:23', '2023-03-11 13:49:23'),
(59, 'add_visitors', 'visitors', '2023-03-11 13:49:23', '2023-03-11 13:49:23'),
(60, 'delete_visitors', 'visitors', '2023-03-11 13:49:23', '2023-03-11 13:49:23'),
(61, 'browse_customers', 'customers', '2023-03-11 14:16:22', '2023-03-11 14:16:22'),
(62, 'read_customers', 'customers', '2023-03-11 14:16:22', '2023-03-11 14:16:22'),
(63, 'edit_customers', 'customers', '2023-03-11 14:16:22', '2023-03-11 14:16:22'),
(64, 'add_customers', 'customers', '2023-03-11 14:16:22', '2023-03-11 14:16:22'),
(65, 'delete_customers', 'customers', '2023-03-11 14:16:22', '2023-03-11 14:16:22'),
(76, 'browse_customer_credits', 'customer_credits', '2023-03-11 20:56:26', '2023-03-11 20:56:26'),
(77, 'read_customer_credits', 'customer_credits', '2023-03-11 20:56:26', '2023-03-11 20:56:26'),
(78, 'edit_customer_credits', 'customer_credits', '2023-03-11 20:56:26', '2023-03-11 20:56:26'),
(79, 'add_customer_credits', 'customer_credits', '2023-03-11 20:56:26', '2023-03-11 20:56:26'),
(80, 'delete_customer_credits', 'customer_credits', '2023-03-11 20:56:26', '2023-03-11 20:56:26'),
(86, 'browse_customer_legal', 'customer_legal', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(87, 'read_customer_legal', 'customer_legal', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(88, 'edit_customer_legal', 'customer_legal', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(89, 'add_customer_legal', 'customer_legal', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(90, 'delete_customer_legal', 'customer_legal', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(96, 'browse_departments', 'departments', '2023-03-16 20:53:19', '2023-03-16 20:53:19'),
(97, 'read_departments', 'departments', '2023-03-16 20:53:19', '2023-03-16 20:53:19'),
(98, 'edit_departments', 'departments', '2023-03-16 20:53:19', '2023-03-16 20:53:19'),
(99, 'add_departments', 'departments', '2023-03-16 20:53:19', '2023-03-16 20:53:19'),
(100, 'delete_departments', 'departments', '2023-03-16 20:53:19', '2023-03-16 20:53:19'),
(101, 'browse_customer_care', 'customer_care', '2023-03-16 21:01:22', '2023-03-16 21:01:22'),
(102, 'read_customer_care', 'customer_care', '2023-03-16 21:01:22', '2023-03-16 21:01:22'),
(103, 'edit_customer_care', 'customer_care', '2023-03-16 21:01:22', '2023-03-16 21:01:22'),
(104, 'add_customer_care', 'customer_care', '2023-03-16 21:01:22', '2023-03-16 21:01:22'),
(105, 'delete_customer_care', 'customer_care', '2023-03-16 21:01:22', '2023-03-16 21:01:22'),
(106, 'browse_customer_installment_requests', 'customer_installment_requests', '2023-03-19 09:23:10', '2023-03-19 09:23:10'),
(107, 'read_customer_installment_requests', 'customer_installment_requests', '2023-03-19 09:23:10', '2023-03-19 09:23:10'),
(108, 'edit_customer_installment_requests', 'customer_installment_requests', '2023-03-19 09:23:10', '2023-03-19 09:23:10'),
(109, 'add_customer_installment_requests', 'customer_installment_requests', '2023-03-19 09:23:10', '2023-03-19 09:23:10'),
(110, 'delete_customer_installment_requests', 'customer_installment_requests', '2023-03-19 09:23:10', '2023-03-19 09:23:10'),
(111, 'browse_customer_credits_data', 'customer_credits_data', '2023-03-28 22:17:45', '2023-03-28 22:17:45'),
(112, 'read_customer_credits_data', 'customer_credits_data', '2023-03-28 22:17:45', '2023-03-28 22:17:45'),
(113, 'edit_customer_credits_data', 'customer_credits_data', '2023-03-28 22:17:45', '2023-03-28 22:17:45'),
(114, 'add_customer_credits_data', 'customer_credits_data', '2023-03-28 22:17:45', '2023-03-28 22:17:45'),
(115, 'delete_customer_credits_data', 'customer_credits_data', '2023-03-28 22:17:45', '2023-03-28 22:17:45'),
(116, 'browse_traders', 'traders', '2023-04-05 15:02:58', '2023-04-05 15:02:58'),
(117, 'read_traders', 'traders', '2023-04-05 15:02:58', '2023-04-05 15:02:58'),
(118, 'edit_traders', 'traders', '2023-04-05 15:02:58', '2023-04-05 15:02:58'),
(119, 'add_traders', 'traders', '2023-04-05 15:02:58', '2023-04-05 15:02:58'),
(120, 'delete_traders', 'traders', '2023-04-05 15:02:58', '2023-04-05 15:02:58'),
(121, 'browse_governements', 'governements', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(122, 'read_governements', 'governements', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(123, 'edit_governements', 'governements', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(124, 'add_governements', 'governements', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(125, 'delete_governements', 'governements', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(126, 'browse_cities', 'cities', '2023-04-07 13:28:20', '2023-04-07 13:28:20'),
(127, 'read_cities', 'cities', '2023-04-07 13:28:20', '2023-04-07 13:28:20'),
(128, 'edit_cities', 'cities', '2023-04-07 13:28:20', '2023-04-07 13:28:20'),
(129, 'add_cities', 'cities', '2023-04-07 13:28:20', '2023-04-07 13:28:20'),
(130, 'delete_cities', 'cities', '2023-04-07 13:28:20', '2023-04-07 13:28:20'),
(131, 'browse_regions', 'regions', '2023-04-07 13:31:16', '2023-04-07 13:31:16'),
(132, 'read_regions', 'regions', '2023-04-07 13:31:16', '2023-04-07 13:31:16'),
(133, 'edit_regions', 'regions', '2023-04-07 13:31:16', '2023-04-07 13:31:16'),
(134, 'add_regions', 'regions', '2023-04-07 13:31:16', '2023-04-07 13:31:16'),
(135, 'delete_regions', 'regions', '2023-04-07 13:31:16', '2023-04-07 13:31:16'),
(136, 'browse_orders', 'orders', '2023-04-08 11:05:55', '2023-04-08 11:05:55'),
(137, 'read_orders', 'orders', '2023-04-08 11:05:55', '2023-04-08 11:05:55'),
(138, 'edit_orders', 'orders', '2023-04-08 11:05:55', '2023-04-08 11:05:55'),
(139, 'add_orders', 'orders', '2023-04-08 11:05:55', '2023-04-08 11:05:55'),
(140, 'delete_orders', 'orders', '2023-04-08 11:05:55', '2023-04-08 11:05:55'),
(141, 'browse_customer_requests', 'customer_requests', '2023-04-12 16:40:25', '2023-04-12 16:40:25'),
(142, 'read_customer_requests', 'customer_requests', '2023-04-12 16:40:25', '2023-04-12 16:40:25'),
(143, 'edit_customer_requests', 'customer_requests', '2023-04-12 16:40:25', '2023-04-12 16:40:25'),
(144, 'add_customer_requests', 'customer_requests', '2023-04-12 16:40:25', '2023-04-12 16:40:25'),
(145, 'delete_customer_requests', 'customer_requests', '2023-04-12 16:40:25', '2023-04-12 16:40:25'),
(146, 'browse_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34'),
(147, 'read_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34'),
(148, 'edit_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34'),
(149, 'add_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34'),
(150, 'delete_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34'),
(151, 'browse_customer_installments', 'customer_installments', '2023-04-22 00:50:31', '2023-04-22 00:50:31'),
(156, 'browse_customer_payments', 'customer_payments', '2023-04-23 14:09:38', '2023-04-23 14:09:38'),
(157, 'read_customer_payments', 'customer_payments', '2023-04-23 14:09:38', '2023-04-23 14:09:38'),
(164, 'browse_menus', 'menus', NULL, NULL),
(165, 'browse_bread', NULL, NULL, NULL),
(166, 'browse_compass', NULL, NULL, NULL),
(168, 'browse_database', NULL, NULL, NULL),
(169, 'browse_grantors', 'grantors', '2023-08-16 05:28:15', '2023-08-16 05:28:15'),
(170, 'read_grantors', 'grantors', '2023-08-16 05:28:15', '2023-08-16 05:28:15'),
(171, 'edit_grantors', 'grantors', '2023-08-16 05:28:15', '2023-08-16 05:28:15'),
(172, 'add_grantors', 'grantors', '2023-08-16 05:28:15', '2023-08-16 05:28:15'),
(173, 'delete_grantors', 'grantors', '2023-08-16 05:28:15', '2023-08-16 05:28:15'),
(174, 'edit_customer_payments', 'customer_payments', '2023-08-16 09:14:04', '2023-08-16 09:14:04'),
(175, 'add_customer_payments', 'customer_payments', '2023-08-16 09:14:04', '2023-08-16 09:14:04'),
(176, 'delete_customer_payments', 'customer_payments', '2023-08-16 09:14:04', '2023-08-16 09:14:04'),
(187, 'browse_change_due_date_request', 'change_due_date_request', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(188, 'read_change_due_date_request', 'change_due_date_request', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(189, 'edit_change_due_date_request', 'change_due_date_request', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(190, 'add_change_due_date_request', 'change_due_date_request', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(191, 'delete_change_due_date_request', 'change_due_date_request', '2023-08-19 07:54:28', '2023-08-19 07:54:28'),
(195, 'add_customer_reqeust_change_due_date', 'customser_reqeust_change_due_date', '2023-08-19 08:12:24', '2023-08-19 08:12:24'),
(202, 'browse_request_change_due_dates', 'request_change_due_dates', '2023-08-19 08:27:22', '2023-08-19 08:27:22'),
(203, 'read_request_change_due_dates', 'request_change_due_dates', '2023-08-19 08:27:22', '2023-08-19 08:27:22'),
(204, 'edit_request_change_due_dates', 'request_change_due_dates', '2023-08-19 08:27:22', '2023-08-19 08:27:22'),
(205, 'add_request_change_due_dates', 'request_change_due_dates', '2023-08-19 08:27:22', '2023-08-19 08:27:22'),
(206, 'delete_request_change_due_dates', 'request_change_due_dates', '2023-08-19 08:27:22', '2023-08-19 08:27:22'),
(207, 'browse_request_new_installments', 'request_new_installments', '2023-08-19 08:54:20', '2023-08-19 08:54:20'),
(208, 'read_request_new_installments', 'request_new_installments', '2023-08-19 08:54:20', '2023-08-19 08:54:20'),
(209, 'edit_request_new_installments', 'request_new_installments', '2023-08-19 08:54:20', '2023-08-19 08:54:20'),
(210, 'add_request_new_installments', 'request_new_installments', '2023-08-19 08:54:20', '2023-08-19 08:54:20'),
(211, 'delete_request_new_installments', 'request_new_installments', '2023-08-19 08:54:20', '2023-08-19 08:54:20'),
(212, 'browse_request_penalties', 'request_penalty', '2023-08-19 09:14:38', '2023-08-19 09:14:38'),
(213, 'read_request_penalties', 'request_penalty', '2023-08-19 09:14:38', '2023-08-19 09:14:38'),
(214, 'edit_request_penalties', 'request_penalty', '2023-08-19 09:14:38', '2023-08-19 09:14:38'),
(215, 'add_request_penalties', 'request_penalty', '2023-08-19 09:14:38', '2023-08-19 09:14:38'),
(216, 'delete_request_penalties', 'request_penalty', '2023-08-19 09:14:38', '2023-08-19 09:14:38'),
(217, 'browse_request_penalties', 'request_penalties', '2023-08-19 09:19:45', '2023-08-19 09:19:45'),
(218, 'read_request_penalties', 'request_penalties', '2023-08-19 09:19:45', '2023-08-19 09:19:45'),
(219, 'edit_request_penalties', 'request_penalties', '2023-08-19 09:19:45', '2023-08-19 09:19:45'),
(220, 'add_request_penalties', 'request_penalties', '2023-08-19 09:19:45', '2023-08-19 09:19:45'),
(221, 'delete_request_penalties', 'request_penalties', '2023-08-19 09:19:45', '2023-08-19 09:19:45'),
(222, 'browse_request_prepaid_installments', 'request_prepaid_installments', '2023-08-19 09:52:27', '2023-08-19 09:52:27'),
(223, 'read_request_prepaid_installments', 'request_prepaid_installments', '2023-08-19 09:52:27', '2023-08-19 09:52:27'),
(224, 'edit_request_prepaid_installments', 'request_prepaid_installments', '2023-08-19 09:52:27', '2023-08-19 09:52:27'),
(225, 'add_request_prepaid_installments', 'request_prepaid_installments', '2023-08-19 09:52:27', '2023-08-19 09:52:27'),
(226, 'delete_request_prepaid_installments', 'request_prepaid_installments', '2023-08-19 09:52:27', '2023-08-19 09:52:27'),
(227, 'browse_customer_legals', 'customer_legals', '2023-09-10 06:39:51', '2023-09-10 06:39:51'),
(228, 'read_customer_legals', 'customer_legals', '2023-09-10 06:39:51', '2023-09-10 06:39:51'),
(229, 'edit_customer_legals', 'customer_legals', '2023-09-10 06:39:51', '2023-09-10 06:39:51'),
(230, 'add_customer_legals', 'customer_legals', '2023-09-10 06:39:51', '2023-09-10 06:39:51'),
(231, 'delete_customer_legals', 'customer_legals', '2023-09-10 06:39:51', '2023-09-10 06:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(4, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(59, 1),
(59, 3),
(60, 1),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(64, 1),
(64, 3),
(65, 1),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(89, 1),
(90, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(156, 1),
(157, 1),
(164, 1),
(165, 1),
(166, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(195, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-05 14:11:18', '2023-03-05 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `code`, `details`, `created_at`, `updated_at`, `deleted_at`, `city_id`) VALUES
(1, 'الاستاد', 'S', NULL, '2023-04-07 13:41:11', '2023-04-07 13:41:11', NULL, 1),
(2, 'Mohandesen', 'M', NULL, '2023-04-08 16:53:19', '2023-04-08 16:53:19', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `request_change_due_dates`
--

CREATE TABLE `request_change_due_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `request_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `departement_id` varchar(255) DEFAULT NULL,
  `commuication_type` varchar(255) DEFAULT NULL,
  `grace` int(11) DEFAULT NULL,
  `new_due_date` varchar(255) DEFAULT NULL,
  `diff_days` varchar(255) DEFAULT NULL,
  `total_grace` varchar(255) DEFAULT NULL,
  `customer_notify_date` varchar(255) DEFAULT NULL,
  `decision` longtext DEFAULT NULL,
  `ex_date` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_new_installments`
--

CREATE TABLE `request_new_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `request_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `departement_id` varchar(255) DEFAULT NULL,
  `commuication_type` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `profit_percentage` varchar(255) DEFAULT NULL,
  `credit_limit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_notify_date` varchar(255) DEFAULT NULL,
  `decision` varchar(255) DEFAULT NULL,
  `ex_date` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_penalties`
--

CREATE TABLE `request_penalties` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `request_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `departement_id` varchar(255) DEFAULT NULL,
  `commuication_type` varchar(255) DEFAULT NULL,
  `penalty_due_date` varchar(255) DEFAULT NULL,
  `penalty_amount` varchar(255) DEFAULT NULL,
  `restucture_installments_count` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `new_due_date` varchar(255) DEFAULT NULL,
  `diff_days` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `decision` varchar(255) DEFAULT NULL,
  `customer_notify_date` varchar(255) DEFAULT NULL,
  `ex_date` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_prepaid_installments`
--

CREATE TABLE `request_prepaid_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `request_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `departement_id` varchar(255) DEFAULT NULL,
  `communication_type` varchar(255) DEFAULT NULL,
  `total_installments_amount` varchar(255) DEFAULT NULL,
  `installment_months` varchar(255) DEFAULT NULL,
  `installments_prepaid` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `rest_amount` varchar(255) DEFAULT NULL,
  `overall_amount` varchar(255) DEFAULT NULL,
  `discount_percentage` varchar(255) DEFAULT NULL,
  `decision` longtext DEFAULT NULL,
  `customer_notify_date` varchar(255) DEFAULT NULL,
  `ex_date` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-03-05 14:11:17', '2023-03-05 14:11:17'),
(2, 'user', 'Normal User', '2023-03-05 14:11:17', '2023-03-05 14:11:17'),
(3, 'الائتمان', 'الائتمان', '2023-03-11 21:48:14', '2023-03-11 21:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Bsmart-trade', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Wish Whatever U Want', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/April2023/PHpkAelfZWxCqVbHZVZN.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'BSmart', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Buy whatever you want', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/April2023/BGhDBAuXKgapyTrGW0HY.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `steps_actions`
--

CREATE TABLE `steps_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `doc_date` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_phone_no` varchar(255) DEFAULT NULL,
  `grantor_id` int(11) DEFAULT NULL,
  `grantor_phone_no` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cs_datetime` varchar(255) DEFAULT NULL,
  `cc_datetime` varchar(255) DEFAULT NULL,
  `cc_cr_contact_date` varchar(255) DEFAULT NULL,
  `cr_datetime` varchar(255) DEFAULT NULL,
  `cr_status` varchar(255) DEFAULT NULL,
  `cr_documents` varchar(255) DEFAULT NULL,
  `cr_pay_period` varchar(255) DEFAULT NULL,
  `cr_due_date` varchar(255) DEFAULT NULL,
  `cr_period` varchar(255) DEFAULT NULL,
  `cr_notice` longtext DEFAULT NULL,
  `cc_datetime_2` varchar(255) DEFAULT NULL,
  `cc_ex_contact_date` varchar(255) DEFAULT NULL,
  `ex_datetime` varchar(255) DEFAULT NULL,
  `ex_status` varchar(255) DEFAULT NULL,
  `ex_notice` varchar(255) DEFAULT NULL,
  `ex_product_name` varchar(255) DEFAULT NULL,
  `ex_traders` varchar(255) DEFAULT NULL,
  `ex_phone_no` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `ex_cr_limit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `traders`
--

CREATE TABLE `traders` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity_title` varchar(255) DEFAULT NULL,
  `activity_type` varchar(255) DEFAULT NULL,
  `government_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_national_id` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(255) DEFAULT NULL,
  `owner_phone_2` varchar(255) DEFAULT NULL,
  `owner_whatsapp` varchar(255) DEFAULT NULL,
  `owner_landline` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `manager_phone` varchar(255) DEFAULT NULL,
  `manager_phone_2` varchar(255) DEFAULT NULL,
  `manager_whatsapp` varchar(255) DEFAULT NULL,
  `manager_landline` varchar(255) DEFAULT NULL,
  `posters_count` varchar(255) DEFAULT NULL,
  `photos_count` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `place_phone` varchar(255) DEFAULT NULL,
  `place_phone2` varchar(255) DEFAULT NULL,
  `place_whatsapp` varchar(255) DEFAULT NULL,
  `place_landline` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-03-05 14:11:18', '2023-03-05 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'المدير', 'admin@admin.com', 'users/April2023/xx47oJHC5OXikMtRudwV.png', NULL, '$2y$10$LT2UA9ER1rmFk6i5Xdb.6eCQsBqrVkchXze/cXIeCxAnF6ljKYCfy', 'pYBROVFhuRHoiskQyYOXbkmOZc4uZpYwJ0LsCUNTcexXKfI9QjEcCi1WW6u8', '{\"locale\":\"ar\"}', '2023-03-05 14:11:18', '2023-04-29 00:18:02'),
(4, 3, 'ahmed', 'ahmedelarabykhaled2020@yahoo.com', 'users/default.png', NULL, '$2y$10$L0ORbLgV4o/zueIj3OiI0OtzKuerGvSGkv2BT/rv4YHzZx1Uk0TxS', NULL, '{\"locale\":\"ar\"}', '2023-04-29 10:05:00', '2023-04-29 10:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `communicate` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `governorate_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `work_phone` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `contact_date` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_care`
--
ALTER TABLE `customer_care`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_credits`
--
ALTER TABLE `customer_credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_credits_data`
--
ALTER TABLE `customer_credits_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_credits_data_customers`
--
ALTER TABLE `customer_credits_data_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_installement_requests_customers`
--
ALTER TABLE `customer_installement_requests_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_installments`
--
ALTER TABLE `customer_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_installment_requests`
--
ALTER TABLE `customer_installment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_legals`
--
ALTER TABLE `customer_legals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_legal_customers`
--
ALTER TABLE `customer_legal_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_requests`
--
ALTER TABLE `customer_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governements`
--
ALTER TABLE `governements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grantors`
--
ALTER TABLE `grantors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_customers`
--
ALTER TABLE `orders_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_installments`
--
ALTER TABLE `order_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_change_due_dates`
--
ALTER TABLE `request_change_due_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_new_installments`
--
ALTER TABLE `request_new_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_penalties`
--
ALTER TABLE `request_penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_prepaid_installments`
--
ALTER TABLE `request_prepaid_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `steps_actions`
--
ALTER TABLE `steps_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traders`
--
ALTER TABLE `traders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `customer_care`
--
ALTER TABLE `customer_care`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_credits`
--
ALTER TABLE `customer_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_credits_data`
--
ALTER TABLE `customer_credits_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_credits_data_customers`
--
ALTER TABLE `customer_credits_data_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_installement_requests_customers`
--
ALTER TABLE `customer_installement_requests_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_installments`
--
ALTER TABLE `customer_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `customer_installment_requests`
--
ALTER TABLE `customer_installment_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_legals`
--
ALTER TABLE `customer_legals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer_legal_customers`
--
ALTER TABLE `customer_legal_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_payments`
--
ALTER TABLE `customer_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `customer_requests`
--
ALTER TABLE `customer_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governements`
--
ALTER TABLE `governements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders_customers`
--
ALTER TABLE `orders_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_installments`
--
ALTER TABLE `order_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_change_due_dates`
--
ALTER TABLE `request_change_due_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_new_installments`
--
ALTER TABLE `request_new_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_penalties`
--
ALTER TABLE `request_penalties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_prepaid_installments`
--
ALTER TABLE `request_prepaid_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `steps_actions`
--
ALTER TABLE `steps_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traders`
--
ALTER TABLE `traders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
