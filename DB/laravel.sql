-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2023 at 11:04 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `ann_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`ann_id`, `admin_id`, `description`, `created_at`, `status`) VALUES
(1, 1, 'asd', '2021-06-26 12:25:08', 'deleted'),
(2, 2, 'Please maintain health regulation', '2021-06-26 21:12:54', 'active'),
(3, 1, 'Keep minimum distance', '2021-06-28 06:00:46', 'active'),
(4, 1, 'asdafasdfasf', '2021-06-28 06:16:12', 'deleted'),
(5, 1, 'heeeeeeeeeeyyyyyyy', '2021-06-28 06:19:54', 'deleted'),
(6, 1, 'Site will go under maintenance for 2 Hours.', '2021-06-28 06:27:02', 'active'),
(7, 1, 'always wear mask outside', '2021-06-28 08:34:16', 'active'),
(8, 1, 'hello there', '2021-06-29 06:10:33', 'deleted'),
(9, 1, 'samin is apex pro', '2021-07-07 08:01:20', 'deleted'),
(10, 1, 'qwerqwertqwedfsa', '2021-08-17 09:04:56', 'active'),
(11, 1, 'im nub', '2021-08-17 09:12:38', 'deleted'),
(12, 1, 'im nab', '2021-08-17 09:13:46', 'deleted'),
(13, 1, 'gggggggggggggggg', '2021-08-17 09:17:26', 'active'),
(14, 1, '213412341345', '2021-08-19 07:27:46', 'active'),
(15, 1, 'hi', '2021-08-19 13:25:51', 'active'),
(16, 1, 'yo', '2021-08-19 13:44:32', 'deleted'),
(17, 1, 'oooooooooooooooooooooooooooo', '2021-08-19 15:23:44', 'deleted'),
(18, 6, 'qqqqqqqqqqqqqqq', '2021-08-20 10:46:08', 'deleted'),
(19, 1, 'ssssssssssssssss', '2021-08-20 12:47:54', 'deleted'),
(20, 1, 'rteherdthjwertgegwere', '2021-08-21 01:29:33', 'deleted'),
(21, 1, 'qqqqqqqqqqqqqqq', '2022-02-07 11:27:11', 'active'),
(22, 15, 'ttttttttttttttttttttt', '2023-09-10 11:51:47', 'deleted'),
(23, 15, 'hello from 2023', '2023-10-06 06:13:51', 'deleted'),
(24, 15, 'hello from 2023', '2023-10-06 06:15:02', 'active'),
(25, 15, 'new update 2023', '2023-10-06 06:21:14', 'deleted'),
(26, 1, 'October is here!', '2023-10-26 02:42:38', 'deleted'),
(27, 1, 'October', '2023-10-26 02:42:57', 'deleted');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorate_products`
--

CREATE TABLE `favorate_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_24_080734_create_products_table', 1),
(5, '2021_06_24_180016_create_announcements_table', 1),
(6, '2021_06_24_181452_create_reports_table', 1),
(7, '2021_06_24_181812_create_site_infos_table', 1),
(8, '2021_06_25_041221_create_orders_table', 1),
(9, '2021_06_25_042205_create_password_change_requests_table', 1),
(10, '2021_06_25_042735_create_comments_table', 1),
(11, '2021_06_25_071847_create_follows_table', 1),
(12, '2021_06_25_072112_create_favorate_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `price_on_selling_time` int(11) NOT NULL,
  `transection_number_of_sender` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `buyer_reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_no` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('deleted','process','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cancelled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `buyer_id`, `price_on_selling_time`, `transection_number_of_sender`, `amount`, `buyer_reply`, `seller_reply`, `review`, `rating`, `transection_no`, `phone_number`, `game_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1000, '1245634', 5, 'fefgqwaer', 'qwqrqwarf', 'qwrqw', 'eafgqaefg', '453453', '4537486372', '56348564', 'completed', '2021-06-26 20:47:43', NULL),
(2, 1, 2, 2000, '7486456', 2, 'fsedaftgtwsertg', 'rwgwesg', 'wgerwrsg', 'qwegqweg', '456486', '45634563', '43748345', 'cancelled', '2021-06-26 20:47:43', '2021-08-17 01:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_change_requests`
--

CREATE TABLE `password_change_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  `transection_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `seller_id`, `package`, `transection_no`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '4562348523', 1, '2021-06-21 19:13:17', NULL),
(2, 2, 1, '785467486', 2, '2021-06-28 19:13:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '898377cf23c2f61359194f18cc0fb7f488aeee603fbeea35f73e3e6c0ffbda2a', '[\"*\"]', NULL, '2021-08-17 23:58:42', '2021-08-17 23:58:42'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', '7a774cc0b011ad9c962c2c15bdd40adb7bb34c3dc85b944d536a86ebc464801f', '[\"*\"]', NULL, '2021-08-17 23:58:58', '2021-08-17 23:58:58'),
(3, 'App\\Models\\User', 1, 'Personal Access Token', '614fd770583271f53117c2b2da340a108df685b2d97d66ec5bd5ea2072e11d56', '[\"*\"]', NULL, '2021-08-17 23:59:27', '2021-08-17 23:59:27'),
(4, 'App\\Models\\User', 1, 'Personal Access Token', 'a683c3a1b27286330a49070100f74e0da5fde708508e76b5b43da46abefa638f', '[\"*\"]', NULL, '2021-08-17 23:59:48', '2021-08-17 23:59:48'),
(5, 'App\\Models\\User', 1, 'Personal Access Token', 'f366ad81951b2f7c4ce7a5fc3215755af8074c85cdc6dae69660732681a96082', '[\"*\"]', NULL, '2021-08-17 23:59:49', '2021-08-17 23:59:49'),
(6, 'App\\Models\\User', 1, 'Personal Access Token', '47dc0bc3e4d37f0ff938501b8f9cfc8704cf38ddbbcfeab2366ffd2a105c3f92', '[\"*\"]', NULL, '2021-08-17 23:59:50', '2021-08-17 23:59:50'),
(7, 'App\\Models\\User', 1, 'Personal Access Token', 'ec08e2e09fd65ea881fdeee776bc8aea8d158f8361ea9ea172e87446a8b0aefa', '[\"*\"]', NULL, '2021-08-17 23:59:51', '2021-08-17 23:59:51'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', '0c169e6dbecc12accf7b77a9f6a229d066af585e881113bcd3e710b6a148a055', '[\"*\"]', NULL, '2021-08-17 23:59:51', '2021-08-17 23:59:51'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', '730b65ae74200b668dbc91bd9f85fc840fb57e1c3e0216828478a46cdfad30a5', '[\"*\"]', NULL, '2021-08-17 23:59:52', '2021-08-17 23:59:52'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', 'a41c3516d2e496ec454d138f9783ddccd641845593fc39b98f702fd4ef7030e9', '[\"*\"]', NULL, '2021-08-18 00:00:16', '2021-08-18 00:00:16'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', 'd816b39d44a4e66bcd7c074b6a27a4fd890f8a4daadbf35feebdfa5d1f7fbf0b', '[\"*\"]', NULL, '2021-08-18 00:00:17', '2021-08-18 00:00:17'),
(12, 'App\\Models\\User', 1, 'Personal Access Token', 'e0c09c6bbd946b7b0dd6d62fa7e495337e331937564f584f9f69c973aac3265c', '[\"*\"]', NULL, '2021-08-18 00:00:17', '2021-08-18 00:00:17'),
(13, 'App\\Models\\User', 1, 'Personal Access Token', 'eb349ddf54022c2de6b0d6c80efab1466fde60faf16880b15a12d472d030165a', '[\"*\"]', NULL, '2021-08-18 00:00:18', '2021-08-18 00:00:18'),
(14, 'App\\Models\\User', 1, 'Personal Access Token', '4d23a3560b7db32ee5601a79f18c4835e4084e48e54974cfbf5040b5209045af', '[\"*\"]', NULL, '2021-08-18 00:00:19', '2021-08-18 00:00:19'),
(15, 'App\\Models\\User', 1, 'Personal Access Token', '4cdd89cc9168aae6e69331a79355d01d2034ff4daf74fe619a6ede5117e3f2a6', '[\"*\"]', NULL, '2021-08-18 00:00:20', '2021-08-18 00:00:20'),
(16, 'App\\Models\\User', 1, 'Personal Access Token', 'f18d4e6a3c16b0bd4820300c89079addebfe5874db9643397d93452e98002e94', '[\"*\"]', NULL, '2021-08-18 00:00:38', '2021-08-18 00:00:38'),
(17, 'App\\Models\\User', 1, 'Personal Access Token', '8c9d4cbe45289b23540e8765326b94fad69b773438de205c1a9b3036afb0ea7e', '[\"*\"]', '2021-08-18 00:23:41', '2021-08-18 00:00:44', '2021-08-18 00:23:41'),
(18, 'App\\Models\\User', 1, 'Personal Access Token', '5ad37f663e9ee6dc41d9bbfec9d07e3411072ef3f5ef0b42e57f76c39e35a848', '[\"*\"]', NULL, '2021-08-18 00:23:16', '2021-08-18 00:23:16'),
(19, 'App\\Models\\User', 1, 'Personal Access Token', 'f282f72bb32e636943c1889a60c6f7f7174ca5a1e4a48f31974a741efbe6eb3a', '[\"*\"]', NULL, '2021-08-18 00:23:17', '2021-08-18 00:23:17'),
(20, 'App\\Models\\User', 1, 'Personal Access Token', 'bf4b80ee29dc42d3f82fa86f7339116dea5bb8505b3eace8a66325b098ba8f66', '[\"*\"]', NULL, '2021-08-18 00:23:18', '2021-08-18 00:23:18'),
(21, 'App\\Models\\User', 1, 'Personal Access Token', '4675c51cbca42fe3d64e461ed179ab616abf799d4bc49fdc6607bf2c815160e5', '[\"*\"]', NULL, '2021-08-18 00:33:56', '2021-08-18 00:33:56'),
(22, 'App\\Models\\User', 1, 'Personal Access Token', 'e19424166a202a0bd3d81ae4343aa755bfbead1b0fcda2d13f3fd2bf86328f7e', '[\"*\"]', NULL, '2021-08-18 00:34:10', '2021-08-18 00:34:10'),
(23, 'App\\Models\\User', 1, 'Token', '03bd5425124caa07aed5802b8256473c9afe737231f1fc96fca75b90a81853f2', '[\"*\"]', NULL, '2021-08-18 00:34:18', '2021-08-18 00:34:18'),
(24, 'App\\Models\\User', 1, 'Token', '09464dc8e8e5ac9000de27af40cdc58e998010fc623b5544705af7c187d43e85', '[\"*\"]', NULL, '2021-08-18 00:34:38', '2021-08-18 00:34:38'),
(25, 'App\\Models\\User', 1, 'token', '3ac12702d48d3d28e2be95ea2538018c58be3162bc1d5f2719e731f46c857c11', '[\"*\"]', NULL, '2021-08-18 00:35:17', '2021-08-18 00:35:17'),
(26, 'App\\Models\\User', 1, 'token', 'dd2ee1e6a82fe99d90c07b01099b26cf04ea12a2e83b20d3923590f8105b2ee0', '[\"*\"]', NULL, '2021-08-18 00:35:32', '2021-08-18 00:35:32'),
(27, 'App\\Models\\User', 1, 'token', '692a6b548633096e43e9c2e6d9c6b0bfead76a8c736615302fb9b611a3b6d71b', '[\"*\"]', NULL, '2021-08-18 00:38:55', '2021-08-18 00:38:55'),
(28, 'App\\Models\\User', 1, 'token', '5986c5de86c5647d011ea92eb0566b7a1fb41db31961f3a1dcf312b89fe6b2fa', '[\"*\"]', NULL, '2021-08-18 00:41:38', '2021-08-18 00:41:38'),
(29, 'App\\Models\\User', 2, 'token', '5d96d531780c5fbaececc763df250b784bb2ea8b954a92d98cb540aca3c56daa', '[\"*\"]', NULL, '2021-08-18 00:44:50', '2021-08-18 00:44:50'),
(30, 'App\\Models\\User', 2, 'token', '4502fcc49a2160d0f7f5bbc608c4a32ec968c4e1e73271c6f4c2439628b1744a', '[\"*\"]', NULL, '2021-08-18 01:15:36', '2021-08-18 01:15:36'),
(31, 'App\\Models\\User', 2, 'token', '3c38bb8fa864175a8b015ad827bb9f4ba23c066a5d0589a17dd5476894e96b66', '[\"*\"]', NULL, '2021-08-18 01:16:07', '2021-08-18 01:16:07'),
(32, 'App\\Models\\User', 1, 'token', 'b3b66b748eda0cf84ec3de79adc105aeb3bd883d473757e546338fc4f2c4002d', '[\"*\"]', NULL, '2021-08-18 01:45:13', '2021-08-18 01:45:13'),
(33, 'App\\Models\\User', 1, 'token', '02431c39d7219de5b07694b2838cf74f103c24b8fadf77a3abafbd046ef5c216', '[\"*\"]', NULL, '2021-08-18 01:47:24', '2021-08-18 01:47:24'),
(34, 'App\\Models\\User', 1, 'token', '727f302ef6b6e33e98a780f9f7c69f2ffd9da0d0dff4eca3c1d8caa421746b55', '[\"*\"]', NULL, '2021-08-18 01:49:44', '2021-08-18 01:49:44'),
(35, 'App\\Models\\User', 1, 'token', '8e37e68b724d27eb757b512d3e5cd3484c52568a47c7aac0963fd1849d27de92', '[\"*\"]', NULL, '2021-08-18 01:51:23', '2021-08-18 01:51:23'),
(36, 'App\\Models\\User', 1, 'token', '3705cbf86a250ab6aae525a05aafc898e0566304f9ea6ed8c0f2d14e319f963f', '[\"*\"]', NULL, '2021-08-18 01:52:32', '2021-08-18 01:52:32'),
(37, 'App\\Models\\User', 1, 'token', 'fed53ac2542627d9c1cfea9a1ced12df4b66d91164cb9aa96af3b1d5366f9c2c', '[\"*\"]', NULL, '2021-08-18 01:53:09', '2021-08-18 01:53:09'),
(38, 'App\\Models\\User', 1, 'token', '84ebc5bc229f46fb2d833f9fc182ce66bbb70c2654058e0864239c1ec6356625', '[\"*\"]', NULL, '2021-08-18 01:54:21', '2021-08-18 01:54:21'),
(39, 'App\\Models\\User', 1, 'token', 'f146237125736d9c738b43749408384005fce81aa653613285004740f5ba29c7', '[\"*\"]', NULL, '2021-08-18 01:54:51', '2021-08-18 01:54:51'),
(40, 'App\\Models\\User', 1, 'token', '33a846ed3266b690c88485558c7204b4fbf3961ef3d846d4f880c00a5d0eff87', '[\"*\"]', NULL, '2021-08-18 02:00:07', '2021-08-18 02:00:07'),
(41, 'App\\Models\\User', 1, 'token', 'd33ad2a2adaaff9b1de306ea4ad03007e6b08017218b224a9404260a29b86b23', '[\"*\"]', '2021-08-18 03:38:11', '2021-08-18 02:00:37', '2021-08-18 03:38:11'),
(42, 'App\\Models\\User', 2, 'token', '0e86b4414573bfa4da45e3b0ebaf82d5aacf7d6a703b6e5790c6dc6b64b55b99', '[\"*\"]', '2021-08-18 03:39:58', '2021-08-18 03:38:10', '2021-08-18 03:39:58'),
(43, 'App\\Models\\User', 1, 'token', '10e9f24511ba38add46b08a8ac0dce651f0fbe125aa4e9f8dc5c7249098a23ae', '[\"*\"]', '2021-08-18 03:51:31', '2021-08-18 03:39:57', '2021-08-18 03:51:31'),
(45, 'App\\Models\\User', 1, 'token', '523b5077f42e1ab6099a65531ae22aca2dd8e700e69d84fb923bdcc4178ddbf2', '[\"*\"]', '2021-08-18 05:59:35', '2021-08-18 05:54:49', '2021-08-18 05:59:35'),
(47, 'App\\Models\\User', 2, 'token', 'eb08e720df831a09aa0ca11a055dfd3a7d75f39f6acb1583f044e72570d6dd9e', '[\"*\"]', NULL, '2021-08-18 06:00:51', '2021-08-18 06:00:51'),
(48, 'App\\Models\\User', 1, 'token', '5704cead782e7446fb9c87a5643a3c614232bfc422a8ad64524303f88075590c', '[\"*\"]', NULL, '2021-08-18 06:01:33', '2021-08-18 06:01:33'),
(49, 'App\\Models\\User', 1, 'token', 'f8660e1fe8e344d810a51c40a6945809fecf77c55e3850c6ffda911c58be3897', '[\"*\"]', NULL, '2021-08-18 06:01:58', '2021-08-18 06:01:58'),
(55, 'App\\Models\\User', 1, 'token', 'ae59df4796b932c1055ea9b10ff2f15bc0ddd2cf5603098577f9c5bff4e384a3', '[\"*\"]', NULL, '2021-08-18 06:11:09', '2021-08-18 06:11:09'),
(56, 'App\\Models\\User', 1, 'token', '9f77bb4f1fdf8b282b34de662ee878c3a9b534295d216383760b21e1f3207328', '[\"*\"]', NULL, '2021-08-18 06:11:27', '2021-08-18 06:11:27'),
(57, 'App\\Models\\User', 1, 'token', '1ba054a8ec37b7041f1061c8a493847a9aa64bb7e3d385b4f73d4f4099ef2715', '[\"*\"]', NULL, '2021-08-18 06:11:29', '2021-08-18 06:11:29'),
(58, 'App\\Models\\User', 1, 'token', '63378b8c62d0eb0db89a704fdbd8b92037c8ae4c4742274f46f897ace58d46fb', '[\"*\"]', NULL, '2021-08-18 06:11:37', '2021-08-18 06:11:37'),
(59, 'App\\Models\\User', 1, 'token', '348249baffec057dffd36efa89a0cbea544edb8c37b832bbf75ff110c8baa240', '[\"*\"]', '2021-08-18 06:19:17', '2021-08-18 06:11:47', '2021-08-18 06:19:17'),
(64, 'App\\Models\\User', 2, 'token', '25ce99d60647ba4e84494bda99779c87242960fa6d57ffb5b160ba60ab5425a5', '[\"*\"]', '2021-08-18 06:48:05', '2021-08-18 06:48:05', '2021-08-18 06:48:05'),
(73, 'App\\Models\\User', 5, 'token', 'f02bdf5d4753e61ae3570795278535f5feb143f42a8e0aa131b5c422393311ca', '[\"*\"]', NULL, '2021-08-18 10:12:22', '2021-08-18 10:12:22'),
(74, 'App\\Models\\User', 5, 'token', '986a72d209806eaf19d6f702531f7c72e69d9fb916d3aacba09dba1831ec54aa', '[\"*\"]', NULL, '2021-08-18 10:26:12', '2021-08-18 10:26:12'),
(75, 'App\\Models\\User', 5, 'token', '61fd5625625cb55af03425ce0ff0b826d3c9959ce6b45527cdd52f73a2496732', '[\"*\"]', NULL, '2021-08-18 10:30:18', '2021-08-18 10:30:18'),
(76, 'App\\Models\\User', 5, 'token', '58ce9a9b64826aa41b57131350899782305c3b6d6db20e95f640e75f589d9fcb', '[\"*\"]', NULL, '2021-08-18 10:33:10', '2021-08-18 10:33:10'),
(77, 'App\\Models\\User', 5, 'token', '08a13ea8b93d92a107325913bd4f81ae8436db34bdb5456235dc0b9fca7efe3f', '[\"*\"]', NULL, '2021-08-18 10:50:22', '2021-08-18 10:50:22'),
(78, 'App\\Models\\User', 5, 'token', 'f039b7679734ffffd5cc0bec4f7bab89199c637db6a955bd3f38c7c67c19ca33', '[\"*\"]', NULL, '2021-08-18 10:52:34', '2021-08-18 10:52:34'),
(79, 'App\\Models\\User', 5, 'token', '6a18ac8425651d9f9043417a644d4f486f6ac3ff0e2132c3209d99746397c116', '[\"*\"]', NULL, '2021-08-18 10:53:08', '2021-08-18 10:53:08'),
(80, 'App\\Models\\User', 5, 'token', '5d5d19ec0adabcc4b52ed2066a184b1c61672609ebe2b57840d880138e1bc834', '[\"*\"]', NULL, '2021-08-18 11:00:23', '2021-08-18 11:00:23'),
(81, 'App\\Models\\User', 5, 'token', 'd6f59fb9a3001de764299b51ce72b07cd964e94db23a403babdca83d6537ce12', '[\"*\"]', NULL, '2021-08-18 11:00:30', '2021-08-18 11:00:30'),
(82, 'App\\Models\\User', 5, 'token', '752ca76bb74ae9444d9354bca683bab8e26aeb98d6d087b7feaf4135e0082823', '[\"*\"]', NULL, '2021-08-18 11:00:47', '2021-08-18 11:00:47'),
(83, 'App\\Models\\User', 5, 'token', 'f0ab432eb92ff245c358410a5364e8710e206a60226c8dcd94bc8549b777d8d7', '[\"*\"]', NULL, '2021-08-18 11:00:54', '2021-08-18 11:00:54'),
(84, 'App\\Models\\User', 8, 'token', '220225e7a7dba8e9b7aa9de4d0cfabcb9994cb47b98b85baecdb09979f8caaf4', '[\"*\"]', NULL, '2021-08-18 11:01:30', '2021-08-18 11:01:30'),
(85, 'App\\Models\\User', 8, 'token', '4ed83ad35dec1c5ae0ba3d7f276a230074ef28a7019d0de95fd47bcef6d905bd', '[\"*\"]', NULL, '2021-08-18 11:01:38', '2021-08-18 11:01:38'),
(86, 'App\\Models\\User', 5, 'token', '320c78ba603bb8ad63fde1a9f14d44b511b7295c090950f144f783ff7c46500e', '[\"*\"]', NULL, '2021-08-18 11:05:41', '2021-08-18 11:05:41'),
(87, 'App\\Models\\User', 5, 'token', 'a1004076e3a32fdb45e1ce5e98212c027962fadf53130155390e6a973ef21288', '[\"*\"]', NULL, '2021-08-18 11:23:35', '2021-08-18 11:23:35'),
(88, 'App\\Models\\User', 5, 'token', 'c7de70c46fd97f2e59a95640667c475738ef7f70e1cb4a4a75338e00e8c8e987', '[\"*\"]', NULL, '2021-08-18 11:24:24', '2021-08-18 11:24:24'),
(89, 'App\\Models\\User', 5, 'token', '287b54eb6d6ea16b0e03b5054e1f3ee1df2435905e506529d3beebd8dcc67aa6', '[\"*\"]', NULL, '2021-08-18 11:26:11', '2021-08-18 11:26:11'),
(90, 'App\\Models\\User', 5, 'token', '76a88eb1f0d29ac2192df5ec8ff2b7db0f4e9c978381816ab74cbe12aca07c9a', '[\"*\"]', NULL, '2021-08-18 11:26:39', '2021-08-18 11:26:39'),
(91, 'App\\Models\\User', 5, 'token', '41a7822059efaba296f0c787ad554895ef36465ab590db43be3cfacc455c847c', '[\"*\"]', NULL, '2021-08-18 11:32:34', '2021-08-18 11:32:34'),
(92, 'App\\Models\\User', 5, 'token', '176c8bda207fe22f662c354800c6434c018aa3a86b55e542cbb081232258b4c6', '[\"*\"]', NULL, '2021-08-18 11:33:36', '2021-08-18 11:33:36'),
(93, 'App\\Models\\User', 5, 'token', 'e9bba6c36239be097f23230eeacdba720f91f40af2604496f9c78e8529946a4a', '[\"*\"]', NULL, '2021-08-18 11:34:39', '2021-08-18 11:34:39'),
(94, 'App\\Models\\User', 5, 'token', '4e86cc02159df39aa65f8074baaa88752d72b571fddcb5ef3343a3e2616d1f0a', '[\"*\"]', NULL, '2021-08-18 11:43:39', '2021-08-18 11:43:39'),
(95, 'App\\Models\\User', 5, 'token', '7ecd0c17639663cf9d47c6a7f1b844ace41da967ab0c91d7990d45410e65d627', '[\"*\"]', NULL, '2021-08-18 11:45:25', '2021-08-18 11:45:25'),
(96, 'App\\Models\\User', 8, 'token', '94955a3a437c3785043ff5f5613366787134af0e6dbb573c7bd23919eb2c3323', '[\"*\"]', NULL, '2021-08-18 11:48:08', '2021-08-18 11:48:08'),
(101, 'App\\Models\\User', 8, 'token', 'a3c582aa6c4a2b0ac98c98f2e086efd5898098a9b9a22a3c02a3b7f7631ce7eb', '[\"*\"]', NULL, '2021-08-18 21:18:42', '2021-08-18 21:18:42'),
(103, 'App\\Models\\User', 5, 'token', '6c10f874dbfc66b996cb99aaa6903eabe12c0a26b2aa67fabcc35f27b09b4e28', '[\"*\"]', NULL, '2021-08-18 21:32:00', '2021-08-18 21:32:00'),
(104, 'App\\Models\\User', 5, 'token', 'cd01c1d81508c4737ede0a14ecde1473f6cbca15fe2939b067f0ebf335e2b15a', '[\"*\"]', NULL, '2021-08-18 21:47:45', '2021-08-18 21:47:45'),
(105, 'App\\Models\\User', 8, 'token', '5a0bcb10d5f5f4d4216e9125b5ba16367933da6d827c9519fad19675f8551115', '[\"*\"]', NULL, '2021-08-18 21:48:41', '2021-08-18 21:48:41'),
(106, 'App\\Models\\User', 5, 'token', 'acaab034d6e6ff260053a7a3b739442c448e52030395febb7f45cdbb3752d799', '[\"*\"]', NULL, '2021-08-18 21:50:05', '2021-08-18 21:50:05'),
(107, 'App\\Models\\User', 5, 'token', '0bab0e9e818bce74cdb952df8d03c9e20f3f5c56cc88ba10a3a4308ded21c2d5', '[\"*\"]', NULL, '2021-08-18 21:51:10', '2021-08-18 21:51:10'),
(108, 'App\\Models\\User', 5, 'token', 'c338658fccf16c6a296f6a396a6fd4ccb62e8fb3d4123fd17dd28771f594a119', '[\"*\"]', NULL, '2021-08-18 21:53:10', '2021-08-18 21:53:10'),
(109, 'App\\Models\\User', 5, 'token', 'b9d07a1ef9886fff4b2f35d11357f23aeac0b52ab14ee2da4a9a46f31ec022be', '[\"*\"]', NULL, '2021-08-18 21:56:12', '2021-08-18 21:56:12'),
(110, 'App\\Models\\User', 5, 'token', 'd06e37b8d6542f64ed26ee4c0dfa2b483d0a1b4fedd2d87e411638b6bea833e3', '[\"*\"]', NULL, '2021-08-18 21:56:49', '2021-08-18 21:56:49'),
(111, 'App\\Models\\User', 5, 'token', '126ce3aee566d64f5383964bc6ebf2445b7e62a6f09c31046d141837856d3b31', '[\"*\"]', NULL, '2021-08-18 21:57:16', '2021-08-18 21:57:16'),
(112, 'App\\Models\\User', 5, 'token', 'ff457afae017dc9596b0616899568a530dc68bc1296cfbe817246761e6088199', '[\"*\"]', NULL, '2021-08-18 21:58:18', '2021-08-18 21:58:18'),
(113, 'App\\Models\\User', 5, 'token', '455a6a2f50d001be585f1a8b9663be74f940d1349205fbd63dd70fbff1819448', '[\"*\"]', NULL, '2021-08-18 21:59:02', '2021-08-18 21:59:02'),
(114, 'App\\Models\\User', 5, 'token', '001b09b507d06a9f6ae7ca0952571ce3662ddf32b1a861d45cdc46137cf8c65f', '[\"*\"]', NULL, '2021-08-18 22:01:58', '2021-08-18 22:01:58'),
(115, 'App\\Models\\User', 8, 'token', '4b16063bc73f255b8ed56c884c12d4dd6e76a9ac43783c419c7cc7d892131a16', '[\"*\"]', NULL, '2021-08-18 22:04:42', '2021-08-18 22:04:42'),
(116, 'App\\Models\\User', 5, 'token', 'b512113deae66320e631c6103c4908858c4096f1802b9a7e1688138b556d98ba', '[\"*\"]', NULL, '2021-08-18 22:05:17', '2021-08-18 22:05:17'),
(117, 'App\\Models\\User', 8, 'token', '1f715ca8e85f3ada0219a907a385f1422dd188e2cf13d9c1eeb9b4b46494ab8a', '[\"*\"]', NULL, '2021-08-18 22:07:58', '2021-08-18 22:07:58'),
(118, 'App\\Models\\User', 8, 'token', '771ed922f42a013d740ee62fad467ff97d28cab00466f69d23b0bffd5f828e2e', '[\"*\"]', NULL, '2021-08-18 22:09:14', '2021-08-18 22:09:14'),
(135, 'App\\Models\\User', 1, 'token', 'f053a9258eaae0e83a5b330f44a5264ed815f6d59ddffd56b228c12a6fd5f704', '[\"*\"]', '2021-08-19 08:18:34', '2021-08-19 07:37:07', '2021-08-19 08:18:34'),
(144, 'App\\Models\\User', 5, 'token', '500bd1fde922b9af4f6d7e794f22f080208c0fd439c34dba8e8f550962675eb6', '[\"*\"]', NULL, '2021-08-19 08:07:59', '2021-08-19 08:07:59'),
(147, 'App\\Models\\User', 1, 'token', '40bb6ab5df18f7917da3bcd6cf88322aa2a82ddf32d7cc715dfdd6870c05d67f', '[\"*\"]', '2021-08-19 08:19:32', '2021-08-19 08:19:28', '2021-08-19 08:19:32'),
(150, 'App\\Models\\User', 1, 'token', 'ea88e3e8344c8d2540112ecf5bb7332162a1c9631b94e77ffd09cede24620b8b', '[\"*\"]', '2021-08-19 23:25:15', '2021-08-19 11:23:44', '2021-08-19 23:25:15'),
(152, 'App\\Models\\User', 1, 'token', 'c3400f29a6b6bd459b2db0a7a4972eab4ac0aec65ffd500fe9b05132619783b1', '[\"*\"]', '2021-08-20 02:04:14', '2021-08-19 23:51:31', '2021-08-20 02:04:14'),
(155, 'App\\Models\\User', 1, 'token', '5be43dce14547f3210cb8cb682dfc29503a16fe64ef2dd83186052987cb531ed', '[\"*\"]', NULL, '2021-08-20 03:55:03', '2021-08-20 03:55:03'),
(171, 'App\\Models\\User', 1, 'token', '7b89270020bcba9be4b4d47bd6467ee21a97910d8c41381b198f5681951b49d0', '[\"*\"]', '2021-08-21 01:30:29', '2021-08-21 01:26:42', '2021-08-21 01:30:29'),
(173, 'App\\Models\\User', 2, 'token', 'cc03f57eff277783d6025b7779e4ba45575e3f84b269ce6e28e2daefa0bcee7a', '[\"*\"]', '2021-08-21 10:28:28', '2021-08-21 10:28:27', '2021-08-21 10:28:28'),
(176, 'App\\Models\\User', 1, 'token', '5e20e2b47673b368d5050c46ed8c0686648ce683b11082cfc08e3d242954641b', '[\"*\"]', '2021-10-27 10:32:30', '2021-10-27 10:23:33', '2021-10-27 10:32:30'),
(177, 'App\\Models\\User', 1, 'token', 'bb414e70f4e3cd86f949d79f5a59899d0f350febdb2ab6ec7b57dcbc488ea208', '[\"*\"]', '2021-10-28 08:21:02', '2021-10-28 05:42:11', '2021-10-28 08:21:02'),
(178, 'App\\Models\\User', 1, 'token', '0b53cd3e0e4ca96c1088e0a326933b0a7b9b6c5cdb569f22b29790308ca9d45f', '[\"*\"]', '2021-11-23 18:46:19', '2021-11-23 18:44:47', '2021-11-23 18:46:19'),
(180, 'App\\Models\\User', 1, 'token', '8a27a8aaa404a64bcddc507e4a57cc91c7e07cb5016bab8de5c9f794ec85b89f', '[\"*\"]', '2022-07-16 00:29:18', '2022-07-16 00:27:51', '2022-07-16 00:29:18'),
(181, 'App\\Models\\User', 1, 'token', '54804be03ce062ba6a98f92cbfb410724ffc6141b739045505b12ea0deef0772', '[\"*\"]', NULL, '2023-10-26 02:51:49', '2023-10-26 02:51:49'),
(182, 'App\\Models\\User', 1, 'token', '568032139c452981f4ccabd4bdeaa9f785d39508ac972c17cdbf5066ca10c766', '[\"*\"]', NULL, '2023-10-26 02:52:27', '2023-10-26 02:52:27'),
(183, 'App\\Models\\User', 1, 'token', '66a1f8f3d3748a14ea7642dfa9a1669d2ebc5dcdc64467064648128c5cd2f3b7', '[\"*\"]', NULL, '2023-10-26 02:53:36', '2023-10-26 02:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `prime_resets`
--

CREATE TABLE `prime_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `expire_date` timestamp NULL DEFAULT NULL,
  `prime_expire_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prime_resets`
--

INSERT INTO `prime_resets` (`id`, `seller_id`, `expire_date`, `prime_expire_date`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-27 09:49:30', '2021-11-24 18:00:00', '2021-06-28 09:35:05', '2021-08-21 01:30:15'),
(2, 2, '2021-07-28 19:24:19', '2021-08-26 18:00:00', '2021-06-28 19:24:19', '2021-08-19 15:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `product_picture` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_info` enum('transection','phone','game_id') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transection',
  `from_currency` int(11) NOT NULL,
  `To_currency` int(11) NOT NULL,
  `Pyament_recive_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(11) NOT NULL,
  `delete_status` enum('deleted','active','deactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `product_picture`, `description`, `number_of_info`, `from_currency`, `To_currency`, `Pyament_recive_no`, `seller_id`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'qweweqrqtfgweasfq', 123, 'seller/image/product/1624816667.jpg', 'wegvwrgqwgwergwerg', 'game_id', 1, 1, '754578567867486', 1, 'active', '2021-06-27 11:57:47', '2021-06-27 12:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `rep_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `rep_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`rep_id`, `buyer_id`, `seller_id`, `rep_description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'asdasfasdfqrfq', '2021-06-26 12:26:49', NULL),
(2, 2, 2, 'dhsdhsfghwsrgwrsg', '2021-06-26 21:03:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trafic_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `trafic_number`) VALUES
(1, 38);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_card_picture` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prime_status` enum('normal','prime') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `aproved_by` int(11) NOT NULL,
  `profile_picture` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('deleted','active','deactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deactive',
  `points` int(11) NOT NULL DEFAULT 0,
  `type` enum('admin','seller','buyer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'buyer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone_number`, `nid_card_picture`, `nid_number`, `prime_status`, `aproved_by`, `profile_picture`, `status`, `points`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin122', 'admin123@gmail.com', 'admin@123', 'rajshahi', '01234567891', NULL, '123456789', 'normal', 0, 'admin/adminDP1.jpg', 'active', 150, 'admin', '2021-06-26 12:21:13', '2023-10-26 02:41:18'),
(2, 'fahad', 'seller11@gmail.com', 'seller@1111', 'Uttara', '01234567898', 'efyugbiayhsfb', '54343435', 'normal', 5, '', 'active', 0, 'seller', '2021-06-26 14:03:34', '2021-10-27 10:20:24'),
(3, 'mehedi', 'user1@gamil.com', 'user@gmail', 'Chitagong', '01521203517', 'weqfgqt', '5165', 'normal', 3, '', 'active', 0, 'buyer', '2021-06-26 14:03:34', NULL),
(4, 'foysal', 'seller2@gmail.com', 'seller2222', 'gfjhgf', '456148596496', 'eafafafwe', '45194561', 'prime', 1, '', 'active', 0, 'seller', '2021-06-26 14:08:06', '2021-08-19 13:28:43'),
(5, 'molla', 'molla@gmail.com', 'moll@123456', 'Uttara', '01234567899', 'werfgwe', '7856274863', 'prime', 1, '', 'deleted', 0, 'seller', '2021-06-28 09:59:54', NULL),
(6, 'admin2', 'admin2@gmail.com', 'admin2@gmail', 'Rajshahi', '01234567897', NULL, '9581859156', 'normal', 1, 'admin/adminDP1.png', 'active', 0, 'admin', NULL, '2021-08-20 11:47:21'),
(7, 'admin3', 'asdas@gmail.com', 'asfasdfg@sdfgs', 'afsafaef', '01612345678', NULL, '561196419', 'normal', 1, NULL, 'active', 0, 'admin', '2021-06-27 18:00:00', NULL),
(8, 'admin4', 'admin4@gmail.com', 'admin@4444', 'Dallas', '01412345678', NULL, '95191919', 'normal', 1, '', 'active', 0, 'admin', '2021-06-28 05:42:19', '2021-06-28 09:16:09'),
(9, 'admin5', 'admin5@gmail.com', 'admin@5555', 'NYC', '01912345678', NULL, '5618594894', 'normal', 1, '', 'active', 0, 'admin', '2021-06-28 06:28:41', '2021-06-28 09:08:48'),
(10, 'asdasdfafg', 'efgafsafa@gmail.com', '123456789', 'wewefgqwgeqweg', '02123465789', NULL, '4232348634', 'normal', 2, NULL, 'active', 0, 'seller', NULL, NULL),
(13, 'Admin6969', 'admin6969@gmail.com', 'admin1@gmail.com', 'Dhaka', '897954645', NULL, '01123456789', 'normal', 1, NULL, 'deleted', 0, 'admin', '2021-08-18 03:50:51', NULL),
(15, 'admin69699', 'admin69699@gmail.com', 'admin6969', 'dhakaa', '989841859', NULL, '984899149841', 'normal', 1, NULL, 'active', 0, 'admin', '2021-08-18 03:53:05', NULL),
(16, 'zxc', 'zxc@gmail.com', 'zxc@gmail.com', 'zxc', '789456123', NULL, '456789123', 'normal', 1, NULL, 'deleted', 0, 'admin', '2021-08-19 07:31:36', NULL),
(17, 'ioppp', 'ioppp@gmail.com', 'iop@gmail.com', 'iopp', '369258147', NULL, '741852963', 'normal', 1, NULL, 'deleted', 0, 'admin', '2021-08-19 15:21:10', '2021-08-19 15:22:27'),
(18, 'admin444', 'admin456@gmail.com', 'admin456@gmail.com', 'dhaka', '01234567895', NULL, '12345678952', 'normal', 1, NULL, 'deleted', 0, 'admin', '2021-08-21 01:28:48', '2021-08-21 01:29:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`ann_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorate_products`
--
ALTER TABLE `favorate_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_change_requests`
--
ALTER TABLE `password_change_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prime_resets`
--
ALTER TABLE `prime_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_nid_number_unique` (`nid_number`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `ann_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorate_products`
--
ALTER TABLE `favorate_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_change_requests`
--
ALTER TABLE `password_change_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `prime_resets`
--
ALTER TABLE `prime_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `rep_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
