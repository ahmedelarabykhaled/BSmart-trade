-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 05:00 AM
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
-- Database: `bsmart`
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
(2, '66357-9887', 'Rupert Haag', '17722222222222', '12222222221', '24455555441', '103', '2023-03-11 20:18:38', '2023-03-11 20:18:38', '95797 Osinski Bypass', 'el mahalla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '45437-2761', 'ahmed khaled', '45199999999999', '1156766789', '1156766789', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-03-12 15:08:07', '2023-04-11 05:40:15', '36444 Lauryn Flat', '1', NULL, '1', NULL, NULL, NULL, 1, NULL, NULL),
(4, NULL, 'Jamaal Schmitt', '30784839202846', NULL, '649', '326', '2023-04-17 11:25:01', '2023-04-17 11:25:08', '7793 Kunde Hollow', NULL, '2023-01-18 00:00:00', NULL, '500', '33', '533', NULL, '2023-02-23 00:00:00', '2023-04-17 11:25:08');

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
  `history_notes` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_credits`
--

INSERT INTO `customer_credits` (`id`, `customer_id`, `created_at`, `updated_at`, `status`, `user_id`, `income_feedback`, `discussion_feedback`, `enquiry_feedback`, `credit_manager_feedback`, `documents_feedback`, `credit_researcher_id`, `credit_manager_id`, `credit_researcher_feedback`, `notes`, `history_notes`) VALUES
(4, 1, '2023-03-11 21:11:19', '2023-03-11 21:11:19', 'approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2023-03-12 15:09:34', '2023-03-12 15:09:34', 'approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, '2023-03-16 20:22:55', '2023-03-16 20:22:55', 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2, '2023-03-16 20:23:13', '2023-03-16 20:23:13', 'rejected', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `grantor_region_level` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_credits_data`
--

INSERT INTO `customer_credits_data` (`id`, `customer_id`, `grantor_id`, `relatives_data`, `work_field`, `work_address`, `job_title`, `salary`, `work_duration`, `previous_work_field`, `customer_income`, `customer_additional_income`, `grantor_income`, `grantor_additional_income`, `commitments`, `has_business`, `business_data`, `business_income`, `business_outcome`, `product_name`, `product_price`, `installement_duration`, `required_installement`, `downpayment`, `profit_percentage`, `final_customer_tatal_income`, `final_total_commitments`, `final_business_income`, `grantor_commitments`, `final_overall_income`, `credit_researcher_feedback`, `cerdit_researcher_id`, `credit_admin`, `created_at`, `updated_at`, `same_outcome_source`, `commitments_amount`, `customer_educational_qualification`, `grantor_educational_qualification`, `customer_marital_status`, `grantor_marital_status`, `customer_childrens_data`, `grantor_childrens_data`, `customer_accommodation`, `grantor_accommodation`, `customer_rental_price`, `grantor_rental_price`, `customer_facilities`, `grantor_facilities`, `customer_building_owner_name`, `grantor_building_owner_name`, `customer_building_status`, `grantor_building_status`, `customer_region_level`, `grantor_region_level`) VALUES
(1, 2, 2, '<p>fasd</p>', 'est labore officiis', '14370 Joany Fall', 'Dynamic Security Engineer', 'Cumque fugiat consequatur nihil nisi.', 'illo laborum consequatur', 'aliquid quis deleniti', 'Miller_Waters65', 'Bertha_Ruecker', 'Blanditiis quos sequi eius error optio mollitia et.', 'Quas mollitia exercitationem qui rem nostrum consequatur aliquam rerum sint.', NULL, 'no', NULL, '588', '154', 'Reilly Becker', '1', '2023-07-18 22:16:30', '416', '595', '394', '152', '99', '256', '382', '127', 'North Faustinofield', NULL, NULL, '2023-03-29 11:41:41', '2023-03-29 11:41:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, 'dolor dolores molestias', '8722 Dejon Brooks', 'Dynamic Functionality Administrator', '578', 'sed distinctio voluptatem', 'delectus ducimus dolor', '585', '295', '485', '365', NULL, 'no', NULL, '231', '220', 'Litzy Hirthe', '436', NULL, '320', '446', '405', '228', '357', '533', '63', NULL, 'Lake Russell', NULL, NULL, '2023-04-07 22:33:10', '2023-04-07 22:33:37', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n<td style=\"width: 20%;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>', NULL, NULL, NULL, '0', NULL, NULL, '1500', '500', '1000', '0', NULL, '0', NULL, '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL, NULL, '2023-04-08 16:43:21', '2023-04-11 04:28:58', '0', '999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, '<table style=\"border-collapse: collapse; width: 99.085%; height: 252px; float: right;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 63px;\">\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px;\">صلة القرابة</td>\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px;\">رقم الهاتف</td>\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px;\">اسم احد الاقارب</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px;\">oiretui</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">fjdsoighre</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">fsdlkj</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px;\">fdlksjaf</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">flkdsj</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">fsdlkaj</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px;\">dfslkfj</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">lfdksjaflksdjgia</td>\r\n<td style=\"width: 33.3333%; height: 63px;\">oifhsdiuaha</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, '0', NULL, NULL, '0', '0', '0', '0', '<table style=\"border-collapse: collapse; width: 99.6078%; height: 304px; float: right;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 16.6667%; text-align: right;\">تاريخ الانتهاء</td>\r\n<td style=\"width: 16.6667%; text-align: right;\">تاريخ البداية</td>\r\n<td style=\"width: 16.6667%; text-align: right;\">مده القرض</td>\r\n<td style=\"width: 16.6667%; text-align: right;\">قيمة القسط</td>\r\n<td style=\"width: 16.6667%; text-align: right;\">قيمة القرض</td>\r\n<td style=\"width: 16.6667%; text-align: right;\">الجهة المانحة للقرض</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%;\">تاريخ الانتهاء</td>\r\n<td style=\"width: 16.6667%;\">المدة</td>\r\n<td style=\"width: 16.6667%;\">قيمة القسط</td>\r\n<td style=\"width: 16.6667%;\">المبلغ</td>\r\n<td style=\"width: 16.6667%;\">المنتج المستهدف</td>\r\n<td style=\"width: 16.6667%;\">جهات اخرى</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%;\">اجمالي الالتزامات</td>\r\n<td style=\"width: 16.6667%;\">مصاريف اخرى</td>\r\n<td style=\"width: 16.6667%;\">فاتورة النت</td>\r\n<td style=\"width: 16.6667%;\">فاتورة الغاز</td>\r\n<td style=\"width: 16.6667%;\">فاتورة المياه</td>\r\n<td style=\"width: 16.6667%;\">شفاتورة الكهرباء</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '0', '<table style=\"border-collapse: collapse; width: 99.673%; height: 231px;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 16.6667%;\">صافي الدخل الشهري</td>\r\n<td style=\"width: 16.6667%;\">الدخل الشهري</td>\r\n<td style=\"width: 16.6667%;\">الدخل السنوي</td>\r\n<td style=\"width: 16.6667%;\">قيمة البضاعة</td>\r\n<td style=\"width: 16.6667%;\">رأس المال</td>\r\n<td style=\"width: 16.6667%;\">تاريخ بداية النشاط</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 16.6667%;\">اجمالي الالتزامات</td>\r\n<td style=\"width: 16.6667%;\">المرافق</td>\r\n<td style=\"width: 16.6667%;\">مده الايجار</td>\r\n<td style=\"width: 16.6667%;\">قيمة الايجار</td>\r\n<td style=\"width: 16.6667%;\">اجمالي الاجوز</td>\r\n<td style=\"width: 16.6667%;\">عدد العمال</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '0', NULL, NULL, NULL, NULL, '0', '0', '0', NULL, '0', NULL, '0', NULL, NULL, NULL, NULL, '2023-04-12 13:48:38', '2023-04-12 15:18:15', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, '<table style=\"border-collapse: collapse; width: 99.085%; height: 252px; float: right;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 63px;\">\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px; font-size: 20px;\">صلة القرابة</td>\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px; font-size: 20px;\">رقم الهاتف</td>\r\n<td style=\"width: 33.3333%; text-align: right; height: 63px; font-size: 20px;\">اسم احد الاقارب</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 33.3333%; height: 63px; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'optio est mollitia', '47492 Kertzmann Mills', 'Chief Tactics Manager', NULL, 'natus quibusdam velit', 'non sit accusantium', '395', '139', '359', '189', '<table style=\"border-collapse: collapse; width: 99.6078%; height: 304px; float: right;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">تاريخ الانتهاء</td>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">تاريخ البداية</td>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">مده القرض</td>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">قيمة القسط</td>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">قيمة القرض</td>\r\n<td style=\"width: 16.6667%; text-align: right; font-size: 20px;\">الجهة المانحة للقرض</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%; font-size: 20px;\">تاريخ الانتهاء</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">المدة</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">قيمة القسط</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">المبلغ</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">المنتج المستهدف</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">جهات اخرى</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%; font-size: 20px;\">اجمالي الالتزامات</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">مصاريف اخرى</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">فاتورة النت</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">فاتورة الغاز</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">فاتورة المياه</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">شفاتورة الكهرباء</td>\r\n</tr>\r\n<tr style=\"text-align: right;\">\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n<td style=\"width: 16.6667%; font-size: 20px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '0', NULL, '77', '7', 'Tommie Steuber', '55100', '203', '282.7881773399015', '1000', '6', '492', '0', '70', '260', '563', 'Dorianton', 2, 2, '2023-04-17 11:07:19', '2023-04-17 11:07:19', '0', '329', 'Sasha49', 'Voluptas eveniet et ea voluptatem.', 'armal', 'armal', NULL, NULL, 'married', 'married', '616', '235', 'Nikolas_Turner95', 'Aliquam omnis cum dolores nulla inventore iste quibusdam sit sit.', 'Ken Smith', 'Jamil Steuber', 'good', 'middle', 'good', 'poor');

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
(2, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_installments`
--

CREATE TABLE `customer_installments` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `partially_paid` varchar(255) DEFAULT NULL,
  `partially_paid_amout` varchar(255) DEFAULT NULL,
  `penalty_amount` varchar(255) DEFAULT NULL,
  `paid_penalty` varchar(255) DEFAULT NULL,
  `paid_penalty_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_installments`
--

INSERT INTO `customer_installments` (`id`, `customer_id`, `order_id`, `amount`, `due_date`, `partially_paid`, `partially_paid_amout`, `penalty_amount`, `paid_penalty`, `paid_penalty_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 3, 5, '198', '2023-05-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:17:00', '2023-04-17 16:18:16', '2023-04-17 16:18:16'),
(52, 3, 5, '198', '2023-06-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:17:00', '2023-04-17 16:18:16', '2023-04-17 16:18:16'),
(53, 3, 5, '198', '2023-07-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:17:00', '2023-04-17 16:18:16', '2023-04-17 16:18:16'),
(54, 3, 5, '198', '2023-08-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:17:00', '2023-04-17 16:18:16', '2023-04-17 16:18:16'),
(55, 3, 5, '198', '2023-09-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:17:00', '2023-04-17 16:18:16', '2023-04-17 16:18:16'),
(56, 3, 5, '99', '2023-05-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(57, 3, 5, '99', '2023-06-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(58, 3, 5, '99', '2023-07-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(59, 3, 5, '99', '2023-08-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(60, 3, 5, '99', '2023-09-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(61, 3, 5, '99', '2023-10-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(62, 3, 5, '99', '2023-11-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(63, 3, 5, '99', '2023-12-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(64, 3, 5, '99', '2024-01-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(65, 3, 5, '99', '2024-02-17', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:18:16', '2023-04-17 16:18:16', NULL),
(66, 3, 4, '1100', '2023-07-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(67, 3, 4, '1100', '2023-08-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(68, 3, 4, '1100', '2023-09-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(69, 3, 4, '1100', '2023-10-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(70, 3, 4, '1100', '2023-11-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(71, 3, 4, '1100', '2023-12-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(72, 3, 4, '1100', '2024-01-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(73, 3, 4, '1100', '2024-02-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(74, 3, 4, '1100', '2024-03-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL),
(75, 3, 4, '1100', '2024-04-19', NULL, NULL, NULL, NULL, NULL, '2023-04-17 16:22:46', '2023-04-17 16:22:46', NULL);

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
  `trader_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_installment_requests`
--

INSERT INTO `customer_installment_requests` (`id`, `product_name`, `product_price`, `deposit`, `installment_months`, `created_at`, `updated_at`, `deleted_at`, `customer_id`, `grantor_id`, `trader_id`) VALUES
(1, 'mobile phone', '300', '90', '6', '2023-03-19 10:50:12', '2023-03-19 10:50:12', NULL, NULL, NULL, NULL),
(2, 'Vivien Dickinson', '330', '18', '4', '2023-03-19 14:20:47', '2023-03-19 14:20:47', NULL, 1, 3, NULL),
(3, 'mobile phone', '43', '5', '34', '2023-04-07 22:52:05', '2023-04-07 22:52:05', NULL, 3, NULL, NULL),
(4, 'mobile phone', '43', '5', '34', '2023-04-07 22:52:44', '2023-04-07 22:52:44', NULL, 3, NULL, NULL);

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
(27, 3, 1, 'rejected', 'approved', 'Bettye.Koelpin30', '99', 'original', '2023-03-16 20:18:04', '2023-03-16 20:18:04', 1, NULL),
(28, NULL, NULL, 'approved', 'approved', NULL, NULL, NULL, '2023-03-18 18:33:29', '2023-03-18 18:33:29', 1, 'approved'),
(29, NULL, NULL, '0', '0', NULL, NULL, NULL, '2023-03-18 18:34:54', '2023-03-18 18:34:54', 1, '0'),
(30, 3, NULL, '0', '0', NULL, NULL, NULL, '2023-04-07 22:55:21', '2023-04-07 22:55:21', 1, '0');

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
(2, 3, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_payments`
--

CREATE TABLE `customer_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_installment_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `commuication` varchar(255) DEFAULT NULL
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
(85, 16, 'code', 'text', 'الكود', 0, 0, 0, 0, 0, 0, '{}', 3),
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
(118, 19, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 7),
(119, 19, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 9),
(120, 19, 'customer_credit_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(121, 19, 'status', 'select_dropdown', 'الحالة', 0, 1, 1, 1, 1, 1, '{\"options\":{\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\",\"hold\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 18),
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
(133, 22, 'customer_legal_belongsto_customer_relationship_1', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsToMany\",\"column\":\"grantor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_legal_customers\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
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
(147, 24, 'date', 'timestamp', 'التاريخ', 0, 1, 1, 1, 1, 1, 'null', 6),
(148, 24, 'department_id', 'text', 'Department Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(149, 24, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 0, '{}', 11),
(150, 24, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 12),
(151, 24, 'customer_care_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(152, 24, 'customer_care_belongsto_user_relationship', 'relationship', 'المسؤل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(153, 24, 'customer_care_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"department_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(154, 22, 'general_status', 'select_dropdown', 'الحالة النهائية', 0, 1, 1, 1, 1, 1, '{\"options\":{\"0\":\"--\\u0627\\u062e\\u062a\\u0631--\",\"approved\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"rejected\":\"\\u062a\\u0645 \\u0627\\u0644\\u0631\\u0641\\u0636\",\"hold\":\"\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 11),
(161, 19, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 4),
(162, 19, 'income_feedback', 'text_area', 'يرتكز العمل والدخل على :', 0, 1, 1, 1, 1, 1, '{}', 5),
(163, 19, 'discussion_feedback', 'text_area', 'بمعاينة العميل والمناقشة تبين', 0, 1, 1, 1, 1, 1, '{}', 6),
(164, 19, 'enquiry_feedback', 'text_area', 'بالتحري والاستعلام تبين', 0, 1, 1, 1, 1, 1, '{}', 8),
(165, 19, 'credit_manager_feedback', 'text_area', 'رأي مدير الائتمان', 0, 1, 1, 1, 1, 1, '{}', 17),
(166, 19, 'documents_feedback', 'text_area', 'بالاطلاع على الاوراق وسندات الائتمان تبين', 0, 1, 1, 1, 1, 1, '{}', 10),
(167, 19, 'credit_researcher_id', 'text', 'Credit Researcher Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(168, 19, 'credit_manager_id', 'text', 'Credit Manager Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(169, 19, 'customer_credit_belongsto_customer_relationship_1', 'relationship', 'الباحث الائتماني', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_researcher_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(170, 19, 'customer_credit_belongsto_user_relationship', 'relationship', 'مدير الائتمان', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_manager_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(171, 19, 'credit_researcher_feedback', 'text_area', 'رأي الباحث الائتماني', 0, 1, 1, 1, 1, 1, '{}', 15),
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
(186, 26, 'grantor_id', 'text', 'Grantor Id', 0, 0, 0, 0, 0, 0, '{\"display\":{\"id\":\"custom_grantor_id\"}}', 14),
(187, 26, 'relatives_data', 'rich_text_box', 'بيانات الأقارب', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"relatives_data_id\"}}', 24),
(188, 26, 'work_field', 'text', 'مجال العمل', 0, 1, 1, 1, 1, 1, '{}', 25),
(189, 26, 'work_address', 'text_area', 'عنوان العمل', 0, 0, 1, 1, 1, 1, '{}', 26),
(190, 26, 'job_title', 'text', 'المسمى الوظيفي', 0, 0, 1, 1, 1, 1, '{}', 27),
(191, 26, 'salary', 'number', 'الراتب الشهري', 0, 0, 0, 0, 0, 0, '{\"default\":\"0\",\"min\":\"0\"}', 28),
(192, 26, 'work_duration', 'text', 'فترة العمل في المجال', 0, 0, 1, 1, 1, 1, '{}', 29),
(193, 26, 'previous_work_field', 'text', 'مجال العمل السابق', 0, 0, 1, 1, 1, 1, '{}', 30),
(194, 26, 'customer_income', 'number', 'دخل العميل', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 31),
(195, 26, 'customer_additional_income', 'number', 'مصدر دخل اضافى للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 32),
(196, 26, 'grantor_income', 'number', 'دخل الضامن', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 33),
(197, 26, 'grantor_additional_income', 'number', 'مصدر دخل اضافي للضامن', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 34),
(198, 26, 'commitments', 'rich_text_box', 'الالتزامات', 0, 0, 1, 1, 1, 1, '{\"display\":{\"id\":\"load_commitments\"}}', 35),
(199, 26, 'has_business', 'checkbox', 'العميل لديه نشاط تجاري', 0, 0, 1, 1, 1, 1, '{\"on\":\"\\u0646\\u0639\\u0645\",\"off\":\"\\u0644\\u0627\"}', 38),
(200, 26, 'business_data', 'rich_text_box', 'بيانات النشاط التجاري', 0, 0, 1, 1, 1, 1, '{\"default\":\"here are default\"}', 39),
(201, 26, 'business_income', 'number', 'الدخل الشهري للنشاط التجاري', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 40),
(203, 26, 'product_name', 'text', 'اسم المنتج', 0, 1, 1, 1, 1, 1, '{}', 47),
(204, 26, 'product_price', 'number', 'سعر المنتج', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 48),
(205, 26, 'installement_duration', 'number', 'مده التقسيط بالشهور', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 49),
(206, 26, 'required_installement', 'number', 'القسط المطلوب', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 52),
(207, 26, 'downpayment', 'number', 'المقدم', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 50),
(208, 26, 'profit_percentage', 'number', 'نسبة الفائدة', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 51),
(209, 26, 'final_customer_tatal_income', 'number', 'صافي الدخل للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 43),
(210, 26, 'final_total_commitments', 'hidden', 'صافي الالتزامات للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 44),
(211, 26, 'final_business_income', 'number', 'صافي الدخل التجاري للعميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 45),
(213, 26, 'final_overall_income', 'number', 'صافي الدخل الكامل للعميل من جميع المصادر', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 46),
(214, 26, 'credit_researcher_feedback', 'text', 'رأي الباحث الائتماني', 0, 0, 1, 1, 1, 1, '{}', 56),
(216, 26, 'credit_admin', 'text', 'مدير الائتمان', 0, 0, 1, 1, 1, 1, '{}', 54),
(217, 26, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 0, 0, 0, '{}', 58),
(218, 26, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 59),
(219, 26, 'customer_credits_datum_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(220, 26, 'customer_credits_datum_belongsto_customer_relationship_1', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"grantor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"customer_credits_data_customers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(221, 26, 'customer_credits_datum_belongsto_user_relationship', 'relationship', 'مدير الائتمان', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"credit_admin\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 57),
(222, 26, 'cerdit_researcher_id', 'text', 'Cerdit Researcher Id', 0, 0, 1, 1, 1, 1, '{}', 53),
(223, 26, 'customer_credits_datum_belongsto_user_relationship_1', 'relationship', 'الباحث الائتماني', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"cerdit_researcher_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 55),
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
(281, 28, 'code', 'text', 'كود المحافظة', 0, 1, 1, 1, 1, 1, '{}', 3),
(282, 28, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 4),
(283, 28, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 5),
(284, 28, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 6),
(285, 28, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 7),
(286, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 29, 'name', 'text', 'اسم المدينة', 0, 1, 1, 1, 1, 1, '{}', 2),
(288, 29, 'code', 'text', 'كود المدينة', 0, 1, 1, 1, 1, 1, '{}', 3),
(289, 29, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 5),
(290, 29, 'governemet_id', 'text', 'Governemet Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(291, 29, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 7),
(292, 29, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 8),
(293, 29, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 9),
(294, 29, 'city_belongsto_governement_relationship', 'relationship', 'المحافظة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Governement\",\"table\":\"governements\",\"type\":\"belongsTo\",\"column\":\"governemet_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(295, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(296, 30, 'name', 'text', 'اسم المنطقة', 0, 1, 1, 1, 1, 1, '{}', 2),
(297, 30, 'code', 'text', 'كود المنطقة', 0, 1, 1, 1, 1, 1, '{}', 3),
(298, 30, 'details', 'text_area', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 4),
(299, 30, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 6),
(300, 30, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 7),
(301, 30, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 8),
(302, 30, 'region_belongsto_city_relationship', 'relationship', 'المدينة', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(303, 30, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(304, 26, 'same_outcome_source', 'checkbox', 'الالتزامات مشتركة للعميل والضامن', 0, 1, 1, 1, 1, 1, '{\"on\":\"\\u0646\\u0639\\u0645\",\"off\":\"\\u0644\\u0627\"}', 42),
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
(325, 31, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(329, 31, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 0, 0, 0, 1, '{}', 13),
(330, 31, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 12),
(331, 31, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 14),
(332, 31, 'order_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(333, 31, 'order_belongstomany_customer_relationship', 'relationship', 'الضامن', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders_customers\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(334, 31, 'order_amount', 'number', 'سعر المنتج', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_amount_id\"},\"default\":0,\"min\":0}', 5),
(335, 31, 'order_profit_percentage', 'number', 'نسبة الربح ( نسبة مؤية % )', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_profit_percentage_id\"},\"default\":0,\"min\":0}', 7),
(336, 31, 'total_order_amount', 'number', 'اجمالي مبلغ التقسيط', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"total_installement_amout\"},\"default\":0,\"min\":0}', 10),
(337, 31, 'installment_start_date', 'date', 'تاريخ بداية التقسيط', 0, 1, 1, 1, 1, 1, '{}', 8),
(338, 31, 'months_count', 'number', 'عدد شهور التقسيط', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"order_months_count_id\"},\"default\":0,\"min\":0}', 9),
(339, 26, 'commitments_amount', 'number', 'مبلغ التزامات العميل', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 36),
(340, 26, 'business_outcome', 'text', 'الالتزامات الشهرية للنشاط التجاري', 0, 0, 1, 1, 1, 1, '{}', 41),
(341, 26, 'grantor_commitments', 'number', 'مبلغ التزامات الضامن', 0, 0, 1, 1, 1, 1, '{\"default\":\"0\",\"min\":\"0\"}', 37),
(342, 31, 'monthly_amount', 'number', 'مبلغ القسط الشهري', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"monthly_amount_id\"},\"default\":0,\"min\":0}', 11),
(343, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(344, 32, 'customer_id', 'text', 'Customer Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(345, 32, 'request_date', 'text', 'تاريخ الطلب', 0, 1, 1, 1, 1, 1, '{}', 4),
(346, 32, 'due_date', 'text', 'تاريخ الاستحقاق', 0, 1, 1, 1, 1, 1, '{}', 5),
(347, 32, 'request_type', 'select_dropdown', 'نوع الطلب', 0, 1, 1, 1, 1, 1, '{\"options\":{\"change_due_date\":\"\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0645\\u064a\\u0639\\u0627\\u062f \\u0627\\u0644\\u0642\\u0633\\u0637\",\"installment_request\":\"\\u0637\\u0644\\u0628 \\u0642\\u0633\\u0637 \\u062c\\u062f\\u064a\\u062f\",\"delay_penalety\":\"\\u062a\\u0623\\u062e\\u064a\\u0631 \\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0629\",\"early_payment\":\"\\u062f\\u0641\\u0639 \\u0645\\u0628\\u0643\\u0631\"}}', 6),
(348, 32, 'departement_id', 'text', 'Departement Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(351, 32, 'created_at', 'timestamp', 'تم الانشاء في', 0, 1, 1, 1, 0, 1, '{}', 30),
(352, 32, 'updated_at', 'timestamp', 'تم التعديل في', 0, 0, 0, 0, 0, 0, '{}', 31),
(353, 32, 'customer_request_belongsto_customer_relationship', 'relationship', 'العميل', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(354, 19, 'notes', 'text', 'ملاحظات', 0, 1, 1, 1, 1, 1, '{}', 11),
(355, 19, 'history_notes', 'rich_text_box', 'تقرير متابعة عميل', 0, 1, 1, 1, 1, 1, '{}', 19),
(356, 31, 'downpayment', 'number', 'المقدم', 0, 1, 1, 1, 1, 1, '{\"display\":{\"id\":\"downpayment_id\"},\"default\":0,\"min\":0}', 6),
(357, 27, 'place_phone', 'number', 'تليفون المكان', 0, 1, 1, 1, 1, 1, '{}', 4),
(358, 27, 'place_phone2', 'number', 'تليفون 2 للمكان', 0, 1, 1, 1, 1, 1, '{}', 5),
(359, 27, 'place_whatsapp', 'number', 'واتساب المكان', 0, 1, 1, 1, 1, 1, '{}', 7),
(360, 27, 'place_landline', 'number', 'التليفون الارضي للمكان', 0, 1, 1, 1, 1, 1, '{}', 6),
(361, 26, 'customer_educational_qualification', 'text', 'المؤهل الدراسي للعميل', 0, 0, 1, 1, 1, 1, '{}', 4),
(362, 26, 'grantor_educational_qualification', 'text', 'المؤهل الدراسي للضامن', 0, 0, 1, 1, 1, 1, '{}', 15),
(363, 26, 'customer_marital_status', 'select_dropdown', 'الحالة الاجتماعية للعميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u0623\\u0639\\u0632\\u0628\",\"married\":\"\\u0645\\u062a\\u0632\\u0648\\u062c\",\"devorced\":\"\\u0645\\u0637\\u0644\\u0642\",\"armal\":\"\\u0623\\u0631\\u0645\\u0644\"}}', 5),
(364, 26, 'grantor_marital_status', 'select_dropdown', 'الحالة الاجتماعية للضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u0623\\u0639\\u0632\\u0628\",\"married\":\"\\u0645\\u062a\\u0632\\u0648\\u062c\",\"devorced\":\"\\u0645\\u0637\\u0644\\u0642\",\"armal\":\"\\u0623\\u0631\\u0645\\u0644\"}}', 16),
(365, 26, 'customer_childrens_data', 'rich_text_box', 'بيانات اطفال العميل', 0, 0, 1, 1, 1, 1, '{}', 6),
(366, 26, 'grantor_childrens_data', 'rich_text_box', 'بيانات اطفال الضامن', 0, 0, 1, 1, 1, 1, '{}', 17),
(367, 26, 'customer_accommodation', 'select_dropdown', 'نوع الافامة \\ مدة الاقامة للعميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u062a\\u0645\\u0644\\u064a\\u0643\",\"married\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u062c\\u062f\\u064a\\u062f\",\"devorced\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u0642 \\/ \\u0645\\u062f\\u0629 \\u0627\\u0644\\u0627\\u0642\\u0627\\u0645\\u0629 \\u0645\\u0646  5: 1\\u0633\\u0646\\u0648\\u0627\\u062a\"}}', 7),
(368, 26, 'grantor_accommodation', 'select_dropdown', 'نوع الاقامة \\ مدة الاقامة للضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"single\":\"\\u062a\\u0645\\u0644\\u064a\\u0643\",\"married\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u062c\\u062f\\u064a\\u062f\",\"devorced\":\"\\u0627\\u064a\\u062c\\u0627\\u0631 \\u0642 \\/ \\u0645\\u062f\\u0629 \\u0627\\u0644\\u0627\\u0642\\u0627\\u0645\\u0629 \\u0645\\u0646  5: 1\\u0633\\u0646\\u0648\\u0627\\u062a\"}}', 18),
(369, 26, 'customer_rental_price', 'number', 'قيمة الايجار للعميل', 0, 0, 1, 1, 1, 1, '{}', 8),
(370, 26, 'grantor_rental_price', 'number', 'قيمة الايجار للضامن', 0, 0, 1, 1, 1, 1, '{}', 19),
(371, 26, 'customer_facilities', 'text', 'ايصال المرافق للعميل', 0, 0, 1, 1, 1, 1, '{}', 9),
(372, 26, 'grantor_facilities', 'text', 'ايصال المرافق الضامن', 0, 0, 1, 1, 1, 1, '{}', 20),
(373, 26, 'customer_building_owner_name', 'text', 'اسم صاحب عقار العميل', 0, 0, 1, 1, 1, 1, '{}', 10),
(374, 26, 'grantor_building_owner_name', 'text', 'اسم صاحب عقار الضامن', 0, 0, 1, 1, 1, 1, '{}', 21),
(375, 26, 'customer_building_status', 'select_dropdown', 'حالة عقار العميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 11),
(376, 26, 'grantor_building_status', 'select_dropdown', 'حالة عقار الضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 22),
(377, 26, 'customer_region_level', 'select_dropdown', 'مستوى منطقة العميل', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 12),
(378, 26, 'grantor_region_level', 'select_dropdown', 'مستوى منطقة الضامن', 0, 0, 1, 1, 1, 1, '{\"options\":{\"hight\":\"\\u0631\\u0627\\u0642\\u064a\\u0629\",\"good\":\"\\u062c\\u064a\\u062f\\u0629\",\"middle\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\\u0648\",\"poor\":\"\\u0645\\u062a\\u0648\\u0627\\u0636\\u0639\\u0629\"}}', 23),
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
(422, 32, 'delay_penalty', 'checkbox', 'طلب تأخير الغرامة', 0, 0, 1, 1, 1, 1, '{}', 18),
(423, 32, 'dp_payement_date', 'date', 'تاريخ الاستحقاق الجديد', 0, 0, 1, 1, 1, 1, '{}', 19),
(424, 32, 'db_dayes_no', 'number', 'عدد ايام التأخير', 0, 0, 1, 1, 1, 1, '{}', 20),
(425, 32, 'early_payment', 'checkbox', 'دفع مبكر', 0, 0, 1, 1, 1, 1, '{}', 21),
(426, 32, 'ep_total_months', 'number', 'عدد شهور التقسيط', 0, 0, 1, 1, 1, 1, '{}', 22),
(427, 32, 'ep_e_months', 'number', 'عدد الشهور المراد دفعها', 0, 0, 1, 1, 1, 1, '{}', 23),
(428, 32, 'ep_amount', 'number', 'المبلغ', 0, 0, 1, 1, 1, 1, '{}', 24),
(429, 32, 'ep_discount', 'checkbox', 'خصم', 0, 0, 1, 1, 1, 1, '{}', 25),
(430, 32, 'notes', 'rich_text_box', 'ملاحظات', 0, 0, 1, 1, 1, 1, '{}', 26),
(431, 32, 'decision', 'select_dropdown', 'القرار', 0, 1, 1, 1, 1, 1, '{\"options\":{\"accepted\":\"\\u062a\\u0645 \\u0627\\u0644\\u0642\\u0628\\u0648\\u0644\",\"canceled\":\"\\u062a\\u0645 \\u0627\\u0644\\u0627\\u0644\\u063a\\u0627\\u0621\",\"hold\":\"\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0642\"}}', 27),
(432, 32, 'notification_date', 'date', 'تاريخ تنبيه العميل', 0, 0, 1, 1, 1, 1, '{}', 28),
(433, 32, 'excecution_date', 'date', 'تاريخ التنفيذ', 0, 0, 1, 1, 1, 1, '{}', 29),
(434, 32, 'deleted_at', 'timestamp', 'تم الحذف في', 0, 0, 0, 0, 0, 0, '{}', 32),
(435, 32, 'customer_request_belongsto_department_relationship', 'relationship', 'القسم', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"departement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(436, 32, 'commuication', 'select_dropdown', 'طريقة التواصل', 0, 1, 1, 1, 1, 1, '{\"options\":{\"admin\":\"\\u0628\\u0644\\u063a \\u0627\\u0644\\u0627\\u062f\\u0645\\u0646\",\"oral\":\"\\u0634\\u0641\\u0647\\u0648\\u064a\\u0627\",\"written\":\"\\u0643\\u062a\\u0627\\u0628\\u064a\\u0627\"}}', 8),
(437, 33, 'steps_action_belongsto_city_relationship', 'relationship', 'city', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);

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
(16, 'customers', 'customers', 'العميل', 'العملاء', 'voyager-group', 'App\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"national_id\",\"scope\":null}', '2023-03-11 14:16:21', '2023-04-16 01:02:21'),
(19, 'customer_credits', 'customer-credits', 'تقارير الائتمان', 'تقارير الائتمانات', 'voyager-credit-card', 'App\\CustomerCredit', NULL, '\\App\\Http\\Controllers\\Admin\\CustomersCreditsControllers', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-11 20:56:26', '2023-04-13 18:49:57'),
(21, 'customer_legal', 'customer-legal', 'Customer Legal', 'Customer Legals', NULL, 'App\\CustomerLegal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-11 21:16:20', '2023-03-11 21:16:20'),
(22, 'customer_legals', 'customer-legals', 'قانوني', 'القانوني', 'voyager-milestone', 'App\\CustomerLegal', NULL, '\\App\\Http\\Controllers\\Admin\\CustomersLegalControllers', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-11 21:17:18', '2023-04-08 00:04:47'),
(23, 'departments', 'departments', 'قسم', 'الاقسام', 'voyager-browser', 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-16 20:53:19', '2023-03-16 20:56:55'),
(24, 'customer_care', 'customer-care', 'خدمة العميل', 'خدمة العملاء', 'voyager-phone', 'App\\CustomerCare', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-16 21:01:22', '2023-04-08 00:06:46'),
(25, 'customer_installment_requests', 'customer-installment-requests', 'طلب التقسيط', 'طلبات التقسيط', 'voyager-group', 'App\\CustomerInstallmentRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-19 09:23:10', '2023-04-07 23:14:55'),
(26, 'customer_credits_data', 'customer-credits-data', 'بيانات الائتمان', 'بيانات الائتمانات', 'voyager-data', 'App\\CustomerCreditsData', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-28 22:17:45', '2023-04-16 13:59:26'),
(27, 'traders', 'traders', 'التاجر', 'التجار', 'voyager-warning', 'App\\Trader', NULL, '\\App\\Http\\Controllers\\Admin\\TradersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-05 15:02:58', '2023-04-15 22:51:04'),
(28, 'governements', 'governements', 'المحافظة', 'المحافظات', 'voyager-location', 'App\\Governement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-04-07 13:26:48', '2023-04-07 13:26:48'),
(29, 'cities', 'cities', 'المدينة', 'المدن', 'voyager-bookmark', 'App\\City', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-07 13:28:20', '2023-04-07 13:44:44'),
(30, 'regions', 'regions', 'المنطقة', 'المناظق', 'voyager-leaf', 'App\\Region', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-07 13:31:15', '2023-04-07 13:45:36'),
(31, 'orders', 'orders', 'الاوردر', 'الاوردرات', 'voyager-shop', 'App\\Order', NULL, '\\App\\Http\\Controllers\\Admin\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-08 11:05:54', '2023-04-17 15:50:26'),
(32, 'customer_requests', 'customer-requests', 'طلب العميل', 'طلبات العميل', NULL, 'App\\CustomerRequest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-12 16:40:24', '2023-04-16 13:53:19'),
(33, 'steps_actions', 'steps-actions', 'Steps Action', 'Steps Actions', NULL, 'App\\StepsAction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-04-16 13:08:34', '2023-04-16 15:09:36');

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
(2, 1, 'الوسائط', '', '_self', 'voyager-images', '#000000', NULL, 12, '2023-03-05 14:11:17', '2023-04-16 14:00:12', 'voyager.media.index', 'null'),
(3, 1, 'المستخدمين', '', '_self', 'voyager-person', '#000000', NULL, 13, '2023-03-05 14:11:17', '2023-04-16 14:00:12', 'voyager.users.index', 'null'),
(4, 1, 'القدرات', '', '_self', 'voyager-lock', '#000000', NULL, 14, '2023-03-05 14:11:17', '2023-04-16 14:00:12', 'voyager.roles.index', 'null'),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 19, 3, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 19, 4, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 19, 5, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 19, 2, '2023-03-05 14:11:17', '2023-03-11 14:25:31', 'voyager.bread.index', NULL),
(10, 1, 'الاعدادات', '', '_self', 'voyager-settings', '#000000', 19, 1, '2023-03-05 14:11:17', '2023-03-11 16:42:35', 'voyager.settings.index', 'null'),
(17, 1, 'الزوار', '', '_self', 'voyager-people', '#000000', NULL, 4, '2023-03-11 13:49:23', '2023-03-16 21:09:24', 'voyager.visitors.index', 'null'),
(18, 1, 'العملاء', '', '_self', 'voyager-group', '#000000', NULL, 2, '2023-03-11 14:16:22', '2023-03-11 17:07:53', 'voyager.customers.index', 'null'),
(19, 1, 'الادارة', '', '_self', 'voyager-tools', '#000000', NULL, 16, '2023-03-11 14:24:52', '2023-04-16 14:00:12', NULL, ''),
(21, 1, 'الاستعلامات', '', '_self', 'voyager-flashlight', '#000000', NULL, 10, '2023-03-11 17:08:38', '2023-04-16 14:00:16', NULL, ''),
(23, 1, 'تقارير الائتمانات', '', '_self', 'voyager-credit-card', '#000000', 21, 2, '2023-03-11 20:56:26', '2023-04-05 15:04:27', 'voyager.customer-credits.index', 'null'),
(26, 1, 'القانوني', '', '_self', 'voyager-milestone', '#000000', 21, 3, '2023-03-11 21:17:18', '2023-04-05 15:04:27', 'voyager.customer-legals.index', 'null'),
(27, 1, 'الاقسام', '', '_self', 'voyager-browser', NULL, NULL, 15, '2023-03-16 20:53:19', '2023-04-16 14:00:12', 'voyager.departments.index', NULL),
(28, 1, 'خدمة العملاء', '', '_self', 'voyager-phone', '#000000', NULL, 3, '2023-03-16 21:01:22', '2023-03-16 21:11:21', 'voyager.customer-care.index', 'null'),
(29, 1, 'طلبات التقسيط', '', '_self', 'voyager-group', NULL, NULL, 6, '2023-03-19 09:23:10', '2023-04-08 11:07:03', 'voyager.customer-installment-requests.index', NULL),
(30, 1, 'بيانات الائتمان', '', '_self', 'voyager-data', '#000000', 21, 1, '2023-03-28 22:17:45', '2023-03-29 01:34:34', 'voyager.customer-credits-data.index', 'null'),
(31, 1, 'التجار', '', '_self', 'voyager-warning', '#000000', NULL, 7, '2023-04-05 15:02:58', '2023-04-08 11:07:03', 'voyager.traders.index', 'null'),
(32, 1, 'المحافظات', '', '_self', 'voyager-location', NULL, 35, 1, '2023-04-07 13:26:49', '2023-04-07 13:43:31', 'voyager.governements.index', NULL),
(33, 1, 'المدن', '', '_self', 'voyager-bookmark', '#000000', 35, 2, '2023-04-07 13:28:20', '2023-04-07 13:44:58', 'voyager.cities.index', 'null'),
(34, 1, 'المناظق', '', '_self', 'voyager-leaf', '#000000', 35, 3, '2023-04-07 13:31:16', '2023-04-07 13:45:23', 'voyager.regions.index', 'null'),
(35, 1, 'الأماكن', '', '_self', 'voyager-down-circled', '#000000', NULL, 11, '2023-04-07 13:43:08', '2023-04-16 14:00:12', NULL, ''),
(36, 1, 'الاوردرات', '', '_self', 'voyager-shop', '#000000', NULL, 5, '2023-04-08 11:05:55', '2023-04-08 11:07:03', 'voyager.orders.index', 'null'),
(37, 1, 'طلبات العميل', '', '_self', NULL, NULL, NULL, 8, '2023-04-12 16:40:25', '2023-04-12 16:41:57', 'voyager.customer-requests.index', NULL),
(38, 1, 'Steps Actions', '', '_self', NULL, NULL, NULL, 9, '2023-04-16 13:08:34', '2023-04-16 14:00:16', 'voyager.steps-actions.index', NULL);

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
  `downpayment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_amount`, `order_profit_percentage`, `total_order_amount`, `created_at`, `updated_at`, `deleted_at`, `installment_start_date`, `months_count`, `monthly_amount`, `downpayment`) VALUES
(1, 1, '100', '10', NULL, '2023-04-08 11:11:38', '2023-04-08 11:11:38', NULL, NULL, NULL, NULL, NULL),
(2, NULL, '500', '10', NULL, '2023-04-12 16:14:43', '2023-04-12 16:14:43', NULL, NULL, '10', NULL, NULL),
(3, NULL, '88', '88', NULL, '2023-04-16 22:04:17', '2023-04-16 22:04:17', NULL, '2022-07-07 00:00:00', '33', NULL, '342'),
(4, 3, '15000', '10', '11000', '2023-04-16 22:07:31', '2023-04-17 16:22:46', NULL, '2023-06-19 00:00:00', '10', '1100', '5000'),
(5, 3, '1000', '10', '990', '2023-04-17 11:36:20', '2023-04-17 16:18:16', NULL, '2023-04-17 00:00:00', '10', '99', '100');

-- --------------------------------------------------------

--
-- Table structure for table `orders_customers`
--

CREATE TABLE `orders_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_customers`
--

INSERT INTO `orders_customers` (`id`, `customer_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 2, 5, NULL, NULL);

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
(2, 'browse_bread', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(3, 'browse_database', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(4, 'browse_media', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(5, 'browse_compass', NULL, '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(6, 'browse_menus', 'menus', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
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
(31, 'browse_posts', 'posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(32, 'read_posts', 'posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(33, 'edit_posts', 'posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(34, 'add_posts', 'posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(35, 'delete_posts', 'posts', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(36, 'browse_pages', 'pages', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(37, 'read_pages', 'pages', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(38, 'edit_pages', 'pages', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(39, 'add_pages', 'pages', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
(40, 'delete_pages', 'pages', '2023-03-05 14:11:18', '2023-03-05 14:11:18'),
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
(91, 'browse_customer_legals', 'customer_legals', '2023-03-11 21:17:18', '2023-03-11 21:17:18'),
(92, 'read_customer_legals', 'customer_legals', '2023-03-11 21:17:18', '2023-03-11 21:17:18'),
(93, 'edit_customer_legals', 'customer_legals', '2023-03-11 21:17:18', '2023-03-11 21:17:18'),
(94, 'add_customer_legals', 'customer_legals', '2023-03-11 21:17:18', '2023-03-11 21:17:18'),
(95, 'delete_customer_legals', 'customer_legals', '2023-03-11 21:17:18', '2023-03-11 21:17:18'),
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
(150, 'delete_steps_actions', 'steps_actions', '2023-04-16 13:08:34', '2023-04-16 13:08:34');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
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
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
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
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(94, 1),
(95, 1),
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
(150, 1);

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
(2, 'site.description', 'Site Description', 'Buy whatever you want', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2023\\jw3vNbiEy8BHIU40fbaP.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'BSmart', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Buy whatever you want', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2023\\WveWmrjj8FMjQkVv839G.png', '', 'image', 4, 'Admin'),
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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steps_actions`
--

INSERT INTO `steps_actions` (`id`, `doc_date`, `customer_id`, `customer_phone_no`, `grantor_id`, `grantor_phone_no`, `city`, `cs_datetime`, `cc_datetime`, `cc_cr_contact_date`, `cr_datetime`, `cr_status`, `cr_documents`, `cr_pay_period`, `cr_due_date`, `cr_period`, `cr_notice`, `cc_datetime_2`, `cc_ex_contact_date`, `ex_datetime`, `ex_status`, `ex_notice`, `ex_product_name`, `ex_traders`, `ex_phone_no`, `price`, `ex_cr_limit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-04-16 17:11:00', 2, '35607897253', 3, '2344897542', 'Schmittville', '2023-04-16 17:11:00', '2023-04-16 17:11:00', '2023-05-25 00:00:00', '2023-04-16 17:11:00', 'Oregon', 'Rerum veritatis ea qui quis recusandae quo explicabo.', 'Zieme, Pouros and McLaughlin', '2023-03-10 00:00:00', 'Voluptatem et quos minima alias et ut quae quisquam hic.', '595', NULL, '2022-08-04 00:00:00', '2023-04-16 17:11:00', 'Connecticut', '294flk djsakl fjasdl kjfsda klfj; asdk', 'Bridgette Donnelly', 'Quia non aliquid quibusdam perspiciatis amet et voluptatem.', '373', '326', '146', '2023-04-16 13:11:56', '2023-04-16 13:11:56', NULL);

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

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `activity_title`, `activity_type`, `government_id`, `city_id`, `region_id`, `address`, `owner_name`, `owner_national_id`, `owner_phone`, `owner_phone_2`, `owner_whatsapp`, `owner_landline`, `manager_name`, `manager_phone`, `manager_phone_2`, `manager_whatsapp`, `manager_landline`, `posters_count`, `photos_count`, `email`, `website`, `facebook`, `tiktok`, `telegram`, `instagram`, `status`, `created_at`, `updated_at`, `deleted_at`, `place_phone`, `place_phone2`, `place_whatsapp`, `place_landline`) VALUES
(1, 'Principal Accountability Officer', 'Zioncester', 'Occaecati blanditiis et delectus sequi sapiente molestias placeat ad.', 'North Miguelhaven', 'Vero qui accusantium soluta et rerum sed quisquam dolores.', '8684 Raphaelle Tunnel', 'Leo_Hodkiewicz27', 'Totam et harum illo corporis quis aut maiores.', '578-170-7434', '579-227-3712', 'Ratione culpa velit eum consequuntur molestiae hic itaque dolores illum.', 'Nader', 'Bernardo.Price', '849-213-0857', '011-202-7364', 'Tempora mollitia autem facilis optio quam est.', 'Wolf', 'Bahrain', 'Saint Lucia', 'your.email+fakedata93316@gmail.com', 'Inventore inventore molestias necessitatibus.', 'Optio eum officia.', 'Facilis debitis nemo delectus odio repudiandae.', 'Soluta dolor asperiores.', 'Et consequatur reiciendis id aut ipsum quia suscipit. Laudantium porro dolores quibusdam id pariatur dicta facilis qui natus. Sit fugiat atque provident debitis impedit assumenda rem.', 'California', '2023-04-05 15:14:31', '2023-04-05 15:14:31', NULL, NULL, NULL, NULL, NULL),
(2, 'Global Web Architect', 'Lockmanton', 'Perferendis eum corporis aut cum id facere aliquid consectetur quo.', 'Melliefield', 'At maxime et quos qui odio et quam.', '54 Luettgen Plain', 'Name76', '212', '427', '336', '299', '26', 'Elta55', '84', '648', '488', '191', '112', '324', 'your.email+fakedata85782@gmail.com', 'Sequi nemo non non earum dolor commodi dolorum.', 'At quisquam rerum a quam explicabo sit occaecati illum quis.', 'Dicta culpa voluptas rerum quisquam ipsa.', 'Nisi enim iusto atque saepe qui quos a voluptatem.', 'Ut aperiam quibusdam saepe corporis alias. Minus odit dolorem voluptatem magnam beatae quia vero quam. Est soluta sit quaerat.', 'Wyoming', '2023-04-05 15:46:56', '2023-04-05 15:46:56', NULL, NULL, NULL, NULL, NULL),
(3, 'Customer Accountability Specialist', 'South Rhodaworth', '2', '2', '2', '75452 Hettie Drives', 'Albert_Effertz2', '617', '126', '557', '125', '540', 'Alycia.Von', '403', '15', '214', '201', '83', '613', 'your.email+fakedata16366@gmail.com', 'Qui nemo dolore quod quo nihil voluptas quas.', 'Quibusdam et dicta soluta.', 'Cupiditate quia tempore provident.', 'Fugiat temporibus nesciunt ut qui accusantium rerum ab molestiae.', 'Corporis commodi adipisci autem odit veniam. Esse voluptas et dolorum fuga quibusdam quo ipsam voluptatum. Qui et id illo error nemo.', 'cancel', '2023-04-16 01:06:18', '2023-04-16 01:06:18', NULL, '214', '130', '36', '468');

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
(1, 1, 'المدير', 'admin@admin.com', 'users\\March2023\\lacm25hN9tJuP2gotxbH.png', NULL, '$2y$10$LT2UA9ER1rmFk6i5Xdb.6eCQsBqrVkchXze/cXIeCxAnF6ljKYCfy', 'pYBROVFhuRHoiskQyYOXbkmOZc4uZpYwJ0LsCUNTcexXKfI9QjEcCi1WW6u8', '{\"locale\":\"ar\"}', '2023-03-05 14:11:18', '2023-03-11 22:55:32'),
(2, NULL, 'Anabelle King', 'your.email+fakedata61175@gmail.com', 'users/default.png', NULL, '$2y$10$5Fqe96rok60z0fmaHMiJDe3lRwLMaWrCbhAYMWlb3KGMFhCnfLc02', NULL, '{\"locale\":\"al\"}', '2023-03-10 14:55:40', '2023-03-10 14:55:40'),
(3, 3, 'ahmed', 'ahmed@test.com', 'users/default.png', NULL, '$2y$10$uUpLOUpS1hkuwddGczUS5.a2h5LXxsduU7HumoafxqnqaCc.9maKa', NULL, '{\"locale\":\"ar\"}', '2023-03-11 21:54:28', '2023-03-11 21:54:28');

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
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `address`, `work`, `phone`, `age`, `communicate`, `note`, `created_at`, `updated_at`, `governorate_id`, `city_id`, `phone_2`, `landline`, `work_phone`, `whatsapp_number`, `contact_date`, `region_id`) VALUES
(1, 'Chance Quitzon', 'el mahalla', 'deleniti eligendi sunt', '2136845', '549', 'facebook', NULL, '2023-03-11 13:57:18', '2023-03-29 00:36:36', NULL, 'tanta', NULL, NULL, NULL, NULL, '2023-03-09 00:00:00', NULL),
(2, 'Doris Stracke', 'el mahalla', 'praesentium blanditiis aliquid', '01150420698', '448', 'whatsapp', NULL, '2023-03-12 15:05:21', '2023-03-12 15:05:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_care`
--
ALTER TABLE `customer_care`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_credits`
--
ALTER TABLE `customer_credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_credits_data`
--
ALTER TABLE `customer_credits_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_credits_data_customers`
--
ALTER TABLE `customer_credits_data_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_installement_requests_customers`
--
ALTER TABLE `customer_installement_requests_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_installments`
--
ALTER TABLE `customer_installments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `customer_installment_requests`
--
ALTER TABLE `customer_installment_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_legals`
--
ALTER TABLE `customer_legals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer_legal_customers`
--
ALTER TABLE `customer_legal_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_payments`
--
ALTER TABLE `customer_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_requests`
--
ALTER TABLE `customer_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_customers`
--
ALTER TABLE `orders_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
