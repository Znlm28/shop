-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2024 lúc 03:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `handpickd_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `buyers`
--

INSERT INTO `buyers` (`id`, `transaction_id`, `email`, `phone_number`, `first_name`, `last_name`, `address`, `city`, `country`, `state_province`, `postal_code`, `created_at`, `updated_at`, `delivery_method`) VALUES
(1, 47, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 17:37:12', '2023-11-30 17:37:12', NULL),
(2, 48, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 17:37:12', '2023-11-30 17:37:12', NULL),
(3, 49, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 18:09:52', '2023-11-30 18:09:52', NULL),
(4, 50, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 18:41:19', '2023-11-30 18:41:19', NULL),
(5, 51, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 18:46:29', '2023-11-30 18:46:29', NULL),
(6, 52, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 18:52:30', '2023-11-30 18:52:30', NULL),
(7, 53, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:01:44', '2023-11-30 19:01:44', NULL),
(8, 54, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:06:15', '2023-11-30 19:06:15', NULL),
(9, 55, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:10:08', '2023-11-30 19:10:08', NULL),
(10, 56, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:10:08', '2023-11-30 19:10:08', NULL),
(11, 57, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:11:21', '2023-11-30 19:11:21', NULL),
(12, 58, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:16:04', '2023-11-30 19:16:04', NULL),
(13, 59, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:21:23', '2023-11-30 19:21:23', NULL),
(14, 60, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:22:46', '2023-11-30 19:22:46', NULL),
(15, 61, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:26:22', '2023-11-30 19:26:22', NULL),
(16, 62, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:29:01', '2023-11-30 19:29:01', NULL),
(17, 63, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:35:47', '2023-11-30 19:35:47', NULL),
(18, 64, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:37:39', '2023-11-30 19:37:39', NULL),
(19, 65, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:42:16', '2023-11-30 19:42:16', NULL),
(20, 66, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:52:32', '2023-11-30 19:52:32', NULL),
(21, 67, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-11-30 19:56:01', '2023-11-30 19:56:01', NULL),
(22, 68, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 15:59:07', '2023-12-01 15:59:07', 'Express'),
(23, 69, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:10:49', '2023-12-01 16:10:49', 'Standard'),
(24, 70, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:34:33', '2023-12-01 16:34:33', 'Express'),
(25, 71, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:34:33', '2023-12-01 16:34:33', 'Express'),
(26, 72, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:41:04', '2023-12-01 16:41:04', 'Express'),
(27, 73, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:41:04', '2023-12-01 16:41:04', 'Express'),
(28, 74, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:50:03', '2023-12-01 16:50:03', 'Express'),
(29, 75, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 16:50:03', '2023-12-01 16:50:03', 'Express'),
(30, 76, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-01 20:04:03', '2023-12-01 20:04:03', 'Express'),
(31, 77, 'seweryn_cz@outlook.com', '01590 1137779', 'Seweryn', 'Czabanowski', 'Street 123', 'Berlin', 'Germany', 'Berlin', '13587', '2023-12-04 07:48:28', '2023-12-04 07:48:28', 'Standard'),
(32, 78, 'phanvinhkhang987@gmail.com', '123456789', 'Khang', 'Torres', 'Binh Thanh', 'HCM city', 'Viet Nam', NULL, '7000', '2024-03-14 17:34:26', '2024-03-14 17:34:26', 'Standard'),
(33, 79, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-03-15 20:31:19', '2024-03-15 20:31:19', 'Standard'),
(34, 80, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-03-18 16:59:25', '2024-03-18 16:59:25', 'Express'),
(35, 81, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan', 'Khang', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-03-18 17:03:53', '2024-03-18 17:03:53', 'Express'),
(36, 82, 'phanvinhkhang987@gmail.com', '123456789', 'Khang', 'Torres', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-03-31 06:31:47', '2024-03-31 06:31:47', 'Standard'),
(37, 83, 'phanvinhkhang987@gmail.com', '123456789', 'Khang', 'Torres', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-03-31 06:31:47', '2024-03-31 06:31:47', 'Standard'),
(38, 84, 'phanvinhkhang0805@gmail.com', '123456789', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-01 07:03:58', '2024-04-01 07:03:58', 'Express'),
(39, 85, 'phanvinhkhang0805@gmail.com', '123456789', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-01 07:03:58', '2024-04-01 07:03:58', 'Express'),
(40, 86, 'phanvinhkhang987@gmail.com', '123456789', 'Khang', 'Torres', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-02 06:58:29', '2024-04-02 06:58:29', 'Standard'),
(41, 87, 'phanvinhkhang0805@gmail.com', '123456789', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:12:14', '2024-04-03 01:12:14', 'Standard'),
(42, 88, 'phanvinhkhang0805@gmail.com', '123456789', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:12:14', '2024-04-03 01:12:14', 'Standard'),
(43, 89, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-04-03 01:14:42', '2024-04-03 01:14:42', 'Express'),
(44, 90, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-04-03 01:14:42', '2024-04-03 01:14:42', 'Express'),
(45, 91, 'phanvinhkhang0805@gmail.com', '3452167890', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:15:47', '2024-04-03 01:15:47', 'Express'),
(46, 92, 'phanvinhkhang0805@gmail.com', '3452167890', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:15:47', '2024-04-03 01:15:47', 'Express'),
(47, 93, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:16:21', '2024-04-03 01:16:21', 'Express'),
(48, 94, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:16:21', '2024-04-03 01:16:21', 'Express'),
(49, 95, 'phanvinhkhang0805@gmail.com', '0987654321123', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:17:47', '2024-04-03 01:17:47', 'Standard'),
(50, 96, 'phanvinhkhang0805@gmail.com', '0987654321123', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:17:47', '2024-04-03 01:17:47', 'Standard'),
(51, 97, 'phanvinhkhang0805@gmail.com', '0897654321123', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:18:20', '2024-04-03 01:18:20', 'Express'),
(52, 98, 'phanvinhkhang0805@gmail.com', '0897654321123', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:18:20', '2024-04-03 01:18:20', 'Express'),
(53, 99, 'phanvinhkhang0805@gmail.com', '093456892', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:19:40', '2024-04-03 01:19:40', 'Standard'),
(54, 100, 'phanvinhkhang0805@gmail.com', '093456892', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:19:40', '2024-04-03 01:19:40', 'Standard'),
(55, 101, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:21:24', '2024-04-03 01:21:24', 'Express'),
(56, 102, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:21:24', '2024-04-03 01:21:24', 'Express'),
(57, 103, 'phanvinhkhang0805@gmail.com', '03296548609', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:25:28', '2024-04-03 01:25:28', 'Express'),
(58, 104, 'phanvinhkhang0805@gmail.com', '03296548609', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:25:28', '2024-04-03 01:25:28', 'Express'),
(59, 105, 'phanvinhkhang0805@gmail.com', '032965486999', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:26:22', '2024-04-03 01:26:22', 'Express'),
(60, 106, 'phanvinhkhang0805@gmail.com', '032965486999', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:26:22', '2024-04-03 01:26:22', 'Express'),
(61, 107, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:27:49', '2024-04-03 01:27:49', 'Express'),
(62, 108, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:27:49', '2024-04-03 01:27:49', 'Express'),
(63, 109, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:29:00', '2024-04-03 01:29:00', 'Express'),
(64, 110, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:29:00', '2024-04-03 01:29:00', 'Express'),
(65, 111, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:30:31', '2024-04-03 01:30:31', 'Express'),
(66, 112, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:30:31', '2024-04-03 01:30:31', 'Express'),
(67, 113, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-04-03 01:32:16', '2024-04-03 01:32:16', 'Express'),
(68, 114, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '70000', '2024-04-03 01:32:16', '2024-04-03 01:32:16', 'Express'),
(69, 115, 'phanvinhkhang0805@gmail.com', '03296548909', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:33:07', '2024-04-03 01:33:07', 'Express'),
(70, 116, 'phanvinhkhang0805@gmail.com', '03296548909', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:33:07', '2024-04-03 01:33:07', 'Express'),
(71, 117, 'phanvinhkhang0805@gmail.com', '032965486890', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:34:52', '2024-04-03 01:34:52', 'Express'),
(72, 118, 'phanvinhkhang0805@gmail.com', '032965486890', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:34:52', '2024-04-03 01:34:52', 'Express'),
(73, 119, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:35:51', '2024-04-03 01:35:51', 'Express'),
(74, 120, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:35:51', '2024-04-03 01:35:51', 'Express'),
(75, 121, 'phanvinhkhang0805@gmail.com', '23456789999', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:37:16', '2024-04-03 01:37:16', 'Express'),
(76, 122, 'phanvinhkhang0805@gmail.com', '23456789999', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:37:16', '2024-04-03 01:37:16', 'Express'),
(77, 123, 'phanvinhkhang0805@gmail.com', '2222222222', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:38:29', '2024-04-03 01:38:29', 'Standard'),
(78, 124, 'phanvinhkhang0805@gmail.com', '2222222222', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:38:29', '2024-04-03 01:38:29', 'Standard'),
(79, 125, 'phanvinhkhang0805@gmail.com', '11111111111111', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:40:00', '2024-04-03 01:40:00', 'Express'),
(80, 126, 'phanvinhkhang0805@gmail.com', '11111111111111', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:40:00', '2024-04-03 01:40:00', 'Express'),
(81, 127, 'phanvinhkhang0805@gmail.com', '3333333333333', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:43:38', '2024-04-03 01:43:38', 'Express'),
(82, 128, 'phanvinhkhang0805@gmail.com', '3333333333333', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:43:38', '2024-04-03 01:43:38', 'Express'),
(83, 129, 'phanvinhkhang0805@gmail.com', '444444444', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:44:15', '2024-04-03 01:44:15', 'Express'),
(84, 130, 'phanvinhkhang0805@gmail.com', '444444444', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:44:15', '2024-04-03 01:44:15', 'Express'),
(85, 131, 'phanvinhkhang0805@gmail.com', '55555555555', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:45:24', '2024-04-03 01:45:24', 'Express'),
(86, 132, 'phanvinhkhang0805@gmail.com', '55555555555', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:45:24', '2024-04-03 01:45:24', 'Express'),
(87, 133, 'phanvinhkhang0805@gmail.com', '66666666666', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:46:07', '2024-04-03 01:46:07', 'Express'),
(88, 134, 'phanvinhkhang0805@gmail.com', '66666666666', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:46:07', '2024-04-03 01:46:07', 'Express'),
(89, 135, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:48:30', '2024-04-03 01:48:30', 'Express'),
(90, 136, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:48:30', '2024-04-03 01:48:30', 'Express'),
(91, 137, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:49:28', '2024-04-03 01:49:28', 'Express'),
(92, 138, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:49:28', '2024-04-03 01:49:28', 'Express'),
(93, 139, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:50:41', '2024-04-03 01:50:41', 'Express'),
(94, 140, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:50:41', '2024-04-03 01:50:41', 'Express'),
(95, 141, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:52:09', '2024-04-03 01:52:09', 'Express'),
(96, 142, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:52:09', '2024-04-03 01:52:09', 'Express'),
(97, 143, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:53:20', '2024-04-03 01:53:20', 'Express'),
(98, 144, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:53:20', '2024-04-03 01:53:20', 'Express'),
(99, 145, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:55:05', '2024-04-03 01:55:05', 'Express'),
(100, 146, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:55:05', '2024-04-03 01:55:05', 'Express'),
(101, 147, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:56:12', '2024-04-03 01:56:12', 'Express'),
(102, 148, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:56:12', '2024-04-03 01:56:12', 'Express'),
(103, 149, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:57:19', '2024-04-03 01:57:19', 'Express'),
(104, 150, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:57:19', '2024-04-03 01:57:19', 'Express'),
(105, 151, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:58:40', '2024-04-03 01:58:40', 'Express'),
(106, 152, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-03 01:58:40', '2024-04-03 01:58:40', 'Express'),
(107, 153, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2800', '2024-04-03 19:46:45', '2024-04-03 19:46:45', 'Express'),
(108, 154, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2800', '2024-04-03 19:46:45', '2024-04-03 19:46:45', 'Express'),
(109, 155, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2900', '2024-04-03 19:48:07', '2024-04-03 19:48:07', 'Standard'),
(110, 156, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2900', '2024-04-03 19:48:07', '2024-04-03 19:48:07', 'Standard'),
(111, 157, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '8000', '2024-04-03 19:48:53', '2024-04-03 19:48:53', 'Standard'),
(112, 158, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '7000', '2024-04-03 19:49:36', '2024-04-03 19:49:36', 'Standard'),
(113, 159, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '8000', '2024-04-03 19:51:09', '2024-04-03 19:51:09', 'Express'),
(114, 160, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Tay NInh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '8000', '2024-04-03 19:51:09', '2024-04-03 19:51:09', 'Express'),
(115, 161, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-03 19:51:59', '2024-04-03 19:51:59', 'Express'),
(116, 162, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-03 19:51:59', '2024-04-03 19:51:59', 'Express'),
(117, 163, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 19:53:07', '2024-04-03 19:53:07', 'Standard'),
(118, 164, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 19:53:07', '2024-04-03 19:53:07', 'Standard'),
(119, 165, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-03 19:54:26', '2024-04-03 19:54:26', 'Express'),
(120, 166, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-03 19:54:26', '2024-04-03 19:54:26', 'Express'),
(121, 167, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '7000', '2024-04-03 19:55:07', '2024-04-03 19:55:07', 'Standard'),
(122, 168, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 19:56:06', '2024-04-03 19:56:06', 'Standard'),
(123, 169, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 19:57:16', '2024-04-03 19:57:16', 'Express'),
(124, 170, 'phanvinhkhang0805@gmail.com', '0762758761', 'Nguyen Hoang', 'Ton', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 19:57:16', '2024-04-03 19:57:16', 'Express'),
(125, 171, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '2900', '2024-04-03 19:58:08', '2024-04-03 19:58:08', 'Standard'),
(126, 172, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2900', '2024-04-03 20:49:09', '2024-04-03 20:49:09', 'Standard'),
(127, 173, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-03 20:50:10', '2024-04-03 20:50:10', 'Standard'),
(128, 174, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-03 20:50:10', '2024-04-03 20:50:10', 'Standard'),
(129, 175, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'DakLak', '70000', '2024-04-03 20:52:11', '2024-04-03 20:52:11', 'Standard'),
(130, 176, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'DakLak', '70000', '2024-04-03 20:52:11', '2024-04-03 20:52:11', 'Standard'),
(131, 177, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'DakLak', '70000', '2024-04-03 20:52:11', '2024-04-03 20:52:11', 'Standard'),
(132, 178, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 20:53:07', '2024-04-03 20:53:07', 'Standard'),
(133, 179, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 20:53:07', '2024-04-03 20:53:07', 'Standard'),
(134, 180, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2929', '2024-04-03 20:53:07', '2024-04-03 20:53:07', 'Standard'),
(135, 181, 'phanvinhkhang0805@gmail.com', '3452167890', 'Le Tri', 'Bao', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-03 20:53:49', '2024-04-03 20:53:49', 'Standard'),
(136, 182, 'phanvinhkhang0805@gmail.com', '0329654868', 'Le Tri', 'Bao', 'Tay Ninh', 'Thành phố Tây Ninh', 'Viet Nam', 'Tây Ninh', '2800', '2024-04-03 20:54:27', '2024-04-03 20:54:27', 'Standard'),
(137, 183, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:19:25', '2024-04-04 17:19:25', 'Standard'),
(138, 184, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:19:25', '2024-04-04 17:19:25', 'Standard'),
(139, 185, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:19:25', '2024-04-04 17:19:25', 'Standard'),
(140, 186, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:21:15', '2024-04-04 17:21:15', 'Standard'),
(141, 187, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:21:15', '2024-04-04 17:21:15', 'Standard'),
(142, 188, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:21:15', '2024-04-04 17:21:15', 'Standard'),
(143, 189, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:22:54', '2024-04-04 17:22:54', 'Express'),
(144, 190, 'phanvinhkhang0805@gmail.com', '098907654321', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:22:54', '2024-04-04 17:22:54', 'Express'),
(145, 191, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:24:03', '2024-04-04 17:24:03', 'Standard'),
(146, 192, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:24:03', '2024-04-04 17:24:03', 'Standard'),
(147, 193, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:25:23', '2024-04-04 17:25:23', 'Standard'),
(148, 194, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:25:23', '2024-04-04 17:25:23', 'Standard'),
(149, 195, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:27:42', '2024-04-04 17:27:42', 'Standard'),
(150, 196, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:27:42', '2024-04-04 17:27:42', 'Standard'),
(151, 197, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:28:20', '2024-04-04 17:28:20', 'Standard'),
(152, 198, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:29:23', '2024-04-04 17:29:23', 'Standard'),
(153, 199, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:29:23', '2024-04-04 17:29:23', 'Standard'),
(154, 200, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:30:25', '2024-04-04 17:30:25', 'Standard'),
(155, 201, 'phanvinhkhang0805@gmail.com', '0329654868', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '70000', '2024-04-04 17:30:25', '2024-04-04 17:30:25', 'Standard'),
(156, 202, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Hung Vuong', 'BMT', 'Viet Nam', 'DakLak', '2900', '2024-04-04 17:35:18', '2024-04-04 17:35:18', 'Express'),
(157, 203, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:37:24', '2024-04-04 17:37:24', 'Express'),
(158, 204, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:37:24', '2024-04-04 17:37:24', 'Express'),
(159, 205, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:38:31', '2024-04-04 17:38:31', 'Express'),
(160, 206, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:38:31', '2024-04-04 17:38:31', 'Express'),
(161, 207, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:39:18', '2024-04-04 17:39:18', 'Express'),
(162, 208, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:39:18', '2024-04-04 17:39:18', 'Express'),
(163, 209, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:40:09', '2024-04-04 17:40:09', 'Express'),
(164, 210, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:40:09', '2024-04-04 17:40:09', 'Express'),
(165, 211, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:43:06', '2024-04-04 17:43:06', 'Standard'),
(166, 212, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:43:06', '2024-04-04 17:43:06', 'Standard'),
(167, 213, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:46:00', '2024-04-04 17:46:00', 'Express'),
(168, 214, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:46:00', '2024-04-04 17:46:00', 'Express'),
(169, 215, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:46:31', '2024-04-04 17:46:31', 'Express'),
(170, 216, 'phanvinhkhang0805@gmail.com', '0762758761', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:46:31', '2024-04-04 17:46:31', 'Express'),
(171, 217, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:47:09', '2024-04-04 17:47:09', 'Standard'),
(172, 218, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:47:09', '2024-04-04 17:47:09', 'Standard'),
(173, 219, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:47:45', '2024-04-04 17:47:45', 'Standard'),
(174, 220, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:47:45', '2024-04-04 17:47:45', 'Standard'),
(175, 221, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:48:39', '2024-04-04 17:48:39', 'Standard'),
(176, 222, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:48:39', '2024-04-04 17:48:39', 'Standard'),
(177, 223, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:49:21', '2024-04-04 17:49:21', 'Standard'),
(178, 224, 'phanvinhkhang0805@gmail.com', '2345678901', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:49:21', '2024-04-04 17:49:21', 'Standard'),
(179, 225, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:49:56', '2024-04-04 17:49:56', 'Express'),
(180, 226, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:49:56', '2024-04-04 17:49:56', 'Express'),
(181, 227, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:50:31', '2024-04-04 17:50:31', 'Standard'),
(182, 228, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:50:31', '2024-04-04 17:50:31', 'Standard'),
(183, 229, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:52:02', '2024-04-04 17:52:02', 'Express'),
(184, 230, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 17:52:02', '2024-04-04 17:52:02', 'Express'),
(185, 231, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:53:00', '2024-04-04 17:53:00', 'Express'),
(186, 232, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 17:53:00', '2024-04-04 17:53:00', 'Express'),
(187, 233, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:54:59', '2024-04-04 17:54:59', 'Standard'),
(188, 234, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:54:59', '2024-04-04 17:54:59', 'Standard'),
(189, 235, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:56:10', '2024-04-04 17:56:10', 'Express'),
(190, 236, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:56:10', '2024-04-04 17:56:10', 'Express'),
(191, 237, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:57:25', '2024-04-04 17:57:25', 'Standard'),
(192, 238, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 17:57:25', '2024-04-04 17:57:25', 'Standard'),
(193, 239, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:58:12', '2024-04-04 17:58:12', 'Express'),
(194, 240, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 17:58:12', '2024-04-04 17:58:12', 'Express'),
(195, 241, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:59:02', '2024-04-04 17:59:02', 'Express'),
(196, 242, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:59:02', '2024-04-04 17:59:02', 'Express'),
(197, 243, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:59:38', '2024-04-04 17:59:38', 'Standard'),
(198, 244, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 17:59:38', '2024-04-04 17:59:38', 'Standard'),
(199, 245, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 18:00:42', '2024-04-04 18:00:42', 'Standard'),
(200, 246, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 18:00:42', '2024-04-04 18:00:42', 'Standard'),
(201, 247, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:02:25', '2024-04-04 18:02:25', 'Standard'),
(202, 248, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:02:25', '2024-04-04 18:02:25', 'Standard'),
(203, 249, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:03:12', '2024-04-04 18:03:12', 'Standard'),
(204, 250, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:03:12', '2024-04-04 18:03:12', 'Standard'),
(205, 251, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:03:40', '2024-04-04 18:03:40', 'Standard'),
(206, 252, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:03:40', '2024-04-04 18:03:40', 'Standard'),
(207, 253, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:04:51', '2024-04-04 18:04:51', 'Standard'),
(208, 254, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:04:51', '2024-04-04 18:04:51', 'Standard'),
(209, 255, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 18:05:58', '2024-04-04 18:05:58', 'Standard'),
(210, 256, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2800', '2024-04-04 18:05:58', '2024-04-04 18:05:58', 'Standard'),
(211, 257, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 18:06:50', '2024-04-04 18:06:50', 'Standard'),
(212, 258, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 18:06:50', '2024-04-04 18:06:50', 'Standard'),
(213, 259, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 18:07:42', '2024-04-04 18:07:42', 'Standard'),
(214, 260, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 18:07:42', '2024-04-04 18:07:42', 'Standard'),
(215, 261, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:08:13', '2024-04-04 18:08:13', 'Standard'),
(216, 262, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:08:13', '2024-04-04 18:08:13', 'Standard'),
(217, 263, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:08:59', '2024-04-04 18:08:59', 'Standard'),
(218, 264, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:08:59', '2024-04-04 18:08:59', 'Standard'),
(219, 265, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 18:09:33', '2024-04-04 18:09:33', 'Standard'),
(220, 266, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '8000', '2024-04-04 18:09:33', '2024-04-04 18:09:33', 'Standard'),
(221, 267, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 18:10:07', '2024-04-04 18:10:07', 'Standard'),
(222, 268, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2900', '2024-04-04 18:10:07', '2024-04-04 18:10:07', 'Standard'),
(223, 269, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:10:40', '2024-04-04 18:10:40', 'Standard'),
(224, 270, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '7000', '2024-04-04 18:10:40', '2024-04-04 18:10:40', 'Standard'),
(225, 271, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:11:19', '2024-04-04 18:11:19', 'Standard'),
(226, 272, 'phanvinhkhang0805@gmail.com', '5678912345', 'Phan Vĩnh', 'Khang', 'Binh Thanh', 'HCM city', 'Viet Nam', 'HCM', '2929', '2024-04-04 18:11:19', '2024-04-04 18:11:19', 'Standard');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Handmade Crafts', 'Beautifully crafted handmade items.', '2023-11-01 16:34:34', '2023-11-01 16:34:34'),
(3, 'Jewelry & Accessories', 'Handcrafted jewelry and accessories.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(4, 'Home & Living', 'Handmade home decor and living products.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(5, 'Art & Collectibles', 'Unique art pieces and collectibles.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(6, 'Clothing & Shoes', 'Handmade clothing and shoes for all ages.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(7, 'Wedding & Party', 'Personalized items for weddings and parties.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(8, 'Toys & Entertainment', 'Handcrafted toys and entertainment products.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(9, 'Vintage', 'Vintage items and retro finds.', '2023-11-12 09:40:25', '2023-11-12 09:40:25'),
(10, 'Bath & Beauty', 'Handmade beauty and bath products.', '2023-11-12 09:40:25', '2023-11-12 09:40:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_12_162225_add_resized_image_path_to_product_images', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('phanvinhkhang0805@gmail.com', '$2y$12$fH5Oqxqfmri/2N0v6.8Gx.5LAavhST6/twUCC/y2DOXpkSEgMoeVe', '2024-03-18 18:52:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artisan_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `artisan_id`, `category_id`, `name`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'Handmade Wooden Bowl', 'A beautifully carved wooden bowl that serves as a centerpiece.', 60.99, 4, '2023-11-01 16:34:34', '2024-04-02 06:58:29'),
(11, 16, 3, 'Vintage Leather Wallet', 'A durable and stylish vintage leather wallet.', 29.99, 1, '2023-11-12 09:41:12', '2024-03-31 06:31:47'),
(12, 16, 4, 'Handwoven Scarf', 'A warm and fashionable handwoven scarf.', 34.99, 1, '2023-11-12 09:41:12', '2023-12-01 15:59:07'),
(13, 21, 5, 'Artisanal Scented Candles', 'Soothing scented candles made with natural ingredients.', 19.99, 24, '2023-11-12 09:41:12', '2023-11-30 17:37:12'),
(14, 21, 6, 'Hand-painted Canvas Art', 'Abstract canvas art, perfect for decorating any room.', 89.99, 1, '2023-11-12 09:41:12', '2023-12-01 16:10:49'),
(15, 27, 7, 'Personalized Jewelry Box', 'An elegant, personalized jewelry box for your treasures.', 49.99, 8, '2023-11-12 09:41:12', '2023-11-30 19:10:08'),
(16, 27, 8, 'Custom Engraved Pen', 'A custom engraved pen, ideal for gifts.', 24.99, 14, '2023-11-12 09:41:12', '2023-11-30 13:46:27'),
(17, 1, 4, 'Rustic Wooden Serving Tray', 'A handcrafted serving tray made from reclaimed wood, perfect for rustic-themed gatherings.', 39.99, 14, '2023-11-17 13:34:53', '2023-11-23 15:51:47'),
(18, 1, 4, 'Oak Wood Coaster Set', 'A set of six oak wood coasters, each uniquely grained and finished with a protective coating to resist water stains.', 25.00, 25, '2023-11-17 13:34:53', '2023-11-17 13:34:53'),
(19, 1, 4, 'Carved Wooden Picture Frame', 'An elegantly carved picture frame, suitable for 5x7 inch photos.', 29.50, 20, '2023-11-17 13:34:53', '2023-11-17 13:34:53'),
(20, 16, 3, 'Hand-Stitched Leather Belt', 'A classic, durable leather belt, hand-stitched for superior quality.', 35.99, 11, '2023-11-17 13:34:53', '2023-12-04 07:48:28'),
(21, 16, 3, 'Leather Journal Cover', 'A premium leather journal cover, designed to fit standard-sized notebooks.', 40.00, 10, '2023-11-17 13:34:53', '2023-12-01 16:34:33'),
(22, 16, 3, 'Leather Phone Case', 'A sleek, handcrafted leather phone case.', 27.99, 20, '2023-11-17 13:34:53', '2024-03-14 17:34:26'),
(23, 16, 3, 'Vintage Leather Satchel', 'A stylish satchel made from high-quality vintage leather.', 69.99, 8, '2023-11-17 13:34:53', '2023-12-01 16:41:04'),
(24, 21, 10, 'Handcrafted Soap Set', 'A set of four natural, handcrafted soaps made with organic ingredients.', 24.99, 29, '2023-11-17 13:34:53', '2023-11-23 16:10:14'),
(25, 21, 10, 'Decorative Throw Pillows', 'A pair of hand-sewn throw pillows, featuring vibrant, artistic designs.', 55.00, 12, '2023-11-17 13:34:53', '2023-11-30 19:01:44'),
(26, 21, 10, 'Ceramic Coffee Mugs', 'A set of two handcrafted ceramic coffee mugs, each with a unique, rustic design.', 32.99, 19, '2023-11-17 13:34:53', '2023-12-01 16:50:03'),
(27, 27, 1, 'Engraved Wooden Watch', 'A sophisticated wooden watch with a custom engraving option.', 60.00, 11, '2023-11-17 13:34:53', '2023-12-01 16:50:03'),
(28, 27, 1, 'Personalized Leather Bookmark', 'A sleek leather bookmark, customizable with your choice of initials or a short message.', 12.99, 37, '2023-11-17 13:34:53', '2023-11-30 18:46:29'),
(29, 27, 1, 'Hand-Engraved Decorative Plate', 'A stunning, hand-engraved decorative plate, ideal for display or special occasions.', 49.99, 5, '2023-11-17 13:34:53', '2023-11-25 16:59:27'),
(46, 40, 1, 'Vintage Jacket', 'Jacket', 30.00, 500, '2024-03-18 17:03:15', '2024-04-01 07:07:13'),
(47, 40, 4, 'Vintage Lamp', 'Beautiful lamp', 16.00, 498, '2024-03-18 17:20:47', '2024-04-03 19:48:07'),
(49, 40, 6, 'Chicago Boot', 'Gentleman boot', 12.00, 496, '2024-03-31 06:24:15', '2024-04-04 17:59:38'),
(50, 40, 6, 'Chelsea Boot', 'An exquisite weapon for men', 10.00, 497, '2024-03-31 06:30:14', '2024-04-04 17:59:38'),
(51, 40, 6, 'Vintage Oversized Jacket', 'Old jacket', 9.00, 496, '2024-03-31 06:35:27', '2024-04-04 17:47:45'),
(52, 40, 6, 'Racing Jacket Vintage White Nascar Retro Bomber - Jacket Formula 1', 'Ferrari Team Vintage Jacket', 15.00, 497, '2024-03-31 06:38:32', '2024-04-04 17:59:02'),
(53, 40, 1, 'Bud Fomura 1 Vintage Jacket', 'Bud fomura 1', 12.00, 496, '2024-03-31 06:39:52', '2024-04-04 17:59:02'),
(54, 40, 6, 'Irelli Formua 1 Vintage Jacket', 'Vintage jacket', 13.00, 498, '2024-03-31 06:42:06', '2024-04-04 17:47:09'),
(55, 40, 6, 'Honda Racing Jacket', 'Honda jacket', 10.00, 499, '2024-03-31 06:43:42', '2024-04-04 18:05:58'),
(56, 40, 4, 'Vintage Metal Genie Lamp Classic Home Decor - Creative Ornament', 'Vintage lamp', 20.00, 495, '2024-03-31 06:46:11', '2024-04-04 18:10:40'),
(57, 40, 4, 'Classic dressing table', 'Classis', 25.00, 496, '2024-03-31 16:51:00', '2024-04-04 18:08:13'),
(59, 40, 4, 'Classic fan', 'Classic items', 19.00, 495, '2024-03-31 17:56:49', '2024-04-04 18:00:42'),
(61, 40, 4, 'Luxury lighter', 'Lighter', 32.00, 489, '2024-04-01 06:54:25', '2024-04-04 18:08:59'),
(62, 40, 4, 'French style thermos', 'Thermos', 18.00, 498, '2024-04-01 06:55:55', '2024-04-04 17:38:31'),
(63, 40, 4, 'Italian Style Crystal Vase', 'Vase', 25.00, 497, '2024-04-01 06:57:29', '2024-04-04 18:06:50'),
(64, 40, 4, 'Crystal Wine Decanter', 'Decanter', 22.00, 498, '2024-04-01 06:58:23', '2024-04-04 18:02:25'),
(65, 40, 4, 'Bright Colored German Style Soap Jars', 'Soap Jars', 17.00, 497, '2024-04-01 07:10:42', '2024-04-04 17:49:56'),
(66, 40, 4, 'Dark Colored German Style Soap Jars', 'Soap Jars', 17.00, 498, '2024-04-01 07:11:23', '2024-04-04 17:49:56'),
(68, 40, 4, 'Black Luxury Chopsticks', 'Luxury Chopsticks', 12.00, 495, '2024-04-01 07:13:37', '2024-04-04 18:08:59'),
(69, 40, 4, 'Luxury Cigar Ashtray', 'Cigar Ashtray', 18.00, 498, '2024-04-01 07:14:28', '2024-04-03 19:57:16'),
(70, 40, 1, 'Scented Candle Holder', 'Candle Holder', 11.00, 498, '2024-04-01 07:16:30', '2024-04-04 17:37:24'),
(71, 40, 4, 'Luxury Tissue Box', 'Tissue Box', 15.00, 498, '2024-04-01 07:17:42', '2024-04-04 17:49:21'),
(72, 40, 4, 'Jewelry Box', 'Jewelry Box', 17.00, 499, '2024-04-01 07:19:05', '2024-04-04 17:49:21'),
(73, 40, 1, 'Chessboard', 'Family Games', 21.00, 496, '2024-04-01 18:24:15', '2024-04-04 18:07:42'),
(74, 40, 1, 'Metal Water Bottle', 'Water Bottle', 19.00, 494, '2024-04-01 18:25:09', '2024-04-04 17:58:12'),
(75, 40, 4, 'Large Vase', 'Vase', 13.00, 496, '2024-04-01 18:27:06', '2024-04-04 18:07:42'),
(76, 40, 4, 'Small Vase', 'Vase', 11.00, 496, '2024-04-01 18:27:37', '2024-04-04 18:09:33'),
(77, 40, 4, 'Classic Flower Vase', 'Classic Flower Vase', 15.00, 497, '2024-04-01 18:28:38', '2024-04-04 18:04:51'),
(78, 40, 4, 'Dark Colored France Style Soap Jars', 'Soap Jars', 19.00, 495, '2024-04-01 18:29:59', '2024-04-04 18:09:33'),
(79, 40, 1, 'Brightly colored French Soap Jar', 'Soap Jar', 19.00, 498, '2024-04-01 18:31:08', '2024-04-04 17:54:59'),
(80, 40, 4, 'Pink French Soap Bottle', 'Soap Bottle', 18.00, 499, '2024-04-01 18:31:46', '2024-04-04 18:03:12'),
(81, 40, 4, 'Marble Soap Jar', 'Soap Jar', 22.00, 499, '2024-04-01 18:33:32', '2024-04-04 17:52:02'),
(82, 40, 4, 'Metal Dinnerware Set', 'Dinnerware Set', 20.00, 498, '2024-04-01 18:34:43', '2024-04-04 17:57:25'),
(83, 40, 1, 'Chopsticks Utensils', 'Chopsticks Utensils', 5.00, 497, '2024-04-01 18:35:44', '2024-04-04 17:50:31'),
(84, 40, 3, 'Triangle Diamond Earrings', 'Diamond Earrings', 170.00, 497, '2024-04-01 18:36:38', '2024-04-04 17:53:00'),
(85, 40, 4, 'French Style Essential Oil Bottle', 'Essential Oil Bottle', 15.00, 498, '2024-04-01 18:37:41', '2024-04-04 17:57:25'),
(86, 40, 4, 'Star Pattern Water Cup', 'Water Cup', 8.00, 499, '2024-04-01 18:39:19', '2024-04-04 18:10:07'),
(87, 40, 4, 'Coin Pattern Water Cup', 'Water Cup', 8.00, 499, '2024-04-01 18:40:39', '2024-04-03 01:35:51'),
(88, 40, 4, 'Black and White Pattern Water Cup', 'Water Cup', 7.00, 498, '2024-04-01 18:41:32', '2024-04-04 18:10:07'),
(89, 40, 4, 'Round Pattern Water Cup', 'Water Cup', 7.00, 500, '2024-04-01 18:42:08', '2024-04-01 18:42:08'),
(90, 40, 4, 'Black Striped Pattern Water Cup', 'Water Cup', 7.00, 499, '2024-04-01 18:42:37', '2024-04-04 17:19:25'),
(91, 40, 1, 'Reggio Essential Oil Bottle', 'Essential Oil Bottle', 25.00, 499, '2024-04-01 18:43:34', '2024-04-03 01:25:28'),
(92, 40, 4, 'Maduray Essential Oil Bottle', 'Essential Oil Bottle', 25.00, 499, '2024-04-01 18:44:09', '2024-04-03 01:25:28'),
(93, 40, 4, 'La Recharge Essential Oil Bottle', 'Essential Oil Bottle', 26.00, 500, '2024-04-01 18:45:08', '2024-04-01 18:45:08'),
(94, 40, 4, 'Cire Trvdon Essential Oil Bottle', 'Essential Oil Bottle', 30.00, 499, '2024-04-01 18:46:22', '2024-04-04 17:21:15'),
(95, 40, 4, 'Essential Oil Bottle', 'Essential Oil Bottle', 22.00, 499, '2024-04-01 18:46:54', '2024-04-03 01:48:30'),
(96, 40, 4, 'Candle Holders', 'Candle Holders', 15.00, 499, '2024-04-01 18:47:47', '2024-04-03 01:48:30'),
(97, 40, 3, 'Classic Watch', 'For Man', 25.00, 496, '2024-04-01 18:49:05', '2024-04-04 18:11:19'),
(98, 40, 1, 'Floral Pattern Plate 1', 'Plate', 8.00, 499, '2024-04-01 18:49:59', '2024-04-03 01:52:09'),
(99, 40, 4, 'Floral Pattern Plate 2', 'Plate', 7.00, 498, '2024-04-01 18:50:34', '2024-04-04 17:25:23'),
(100, 40, 4, 'Red Luxury Chopsticks', 'Luxury Chopsticks', 12.00, 500, '2024-04-01 18:53:10', '2024-04-01 18:53:10'),
(101, 40, 4, 'White Luxury Chopsticks', 'Luxury Chopsticks', 12.00, 499, '2024-04-01 18:53:27', '2024-04-03 19:55:07'),
(102, 40, 4, 'Luxury Ashtray', 'Ashtray', 14.00, 499, '2024-04-01 18:54:52', '2024-04-04 18:11:19'),
(103, 40, 4, 'France Luxury Ashtray', 'Luxury Ashtray', 18.00, 498, '2024-04-01 18:55:33', '2024-04-04 18:10:40'),
(104, 40, 1, 'Small Wooden Box', 'Wooden Box', 12.00, 499, '2024-04-01 18:56:31', '2024-04-03 01:37:16'),
(105, 40, 1, 'Mail Box', 'Mail Box', 10.00, 499, '2024-04-01 18:57:28', '2024-04-04 18:03:40'),
(106, 40, 4, 'Green Tissue Box', 'Tissue Box', 14.00, 499, '2024-04-01 18:58:09', '2024-04-04 17:28:20'),
(107, 40, 4, 'Pink Tissue Box', 'Tissue Box', 14.00, 500, '2024-04-01 18:58:45', '2024-04-01 18:59:02'),
(108, 40, 4, 'Yellow Tissue Box', 'Tissue Box', 14.00, 500, '2024-04-01 18:59:28', '2024-04-01 18:59:28'),
(109, 40, 4, 'Tissue Box', 'Tissue Box', 14.00, 497, '2024-04-01 18:59:47', '2024-04-04 17:56:10'),
(110, 40, 1, 'Purple Tissue Box', 'Tissue Box', 14.00, 496, '2024-04-01 19:00:05', '2024-04-04 17:56:10'),
(111, 40, 4, 'Large Jewelry Box', 'Jewelry Box', 18.00, 500, '2024-04-01 19:00:44', '2024-04-01 19:00:44'),
(112, 40, 4, 'Spice jars', 'Spice jars', 9.00, 499, '2024-04-01 19:02:12', '2024-04-04 18:03:40'),
(113, 40, 4, 'Wooden Tray', 'Tray', 11.00, 500, '2024-04-01 19:02:58', '2024-04-01 19:02:58'),
(114, 40, 4, 'Glass Tray', 'Tray', 19.00, 500, '2024-04-01 19:03:34', '2024-04-01 19:03:34'),
(115, 40, 4, 'Black Large Wooden Tray', 'Large Wooden Tray', 20.00, 498, '2024-04-02 03:02:27', '2024-04-04 17:29:23'),
(116, 40, 4, 'Brown Large Wooden Tray', 'Large Wooden Tray', 20.00, 499, '2024-04-02 03:02:58', '2024-04-03 01:44:15'),
(117, 40, 4, 'Tray Toothbrush', 'Tray Toothbrush', 18.00, 498, '2024-04-02 03:04:29', '2024-04-03 01:50:41'),
(118, 40, 4, 'Metal Food Tray', 'Food Tray', 27.00, 499, '2024-04-02 03:05:27', '2024-04-03 01:49:28'),
(119, 40, 4, 'Paper Tray', 'Paper Tray', 14.00, 499, '2024-04-02 03:06:00', '2024-04-04 17:29:23'),
(120, 40, 4, 'Green Soap Tray', 'Soap Tray', 15.00, 499, '2024-04-02 03:07:51', '2024-04-03 01:43:38'),
(121, 40, 4, 'Pink Soap Tray', 'Soap Tray', 14.00, 500, '2024-04-02 03:08:10', '2024-04-02 03:08:10'),
(122, 40, 1, 'Wooden Photo Frame', 'Photo Frame', 8.00, 498, '2024-04-02 03:09:33', '2024-04-04 17:22:54'),
(123, 40, 3, 'Silver Necklaces and Earrings', 'Silver Necklaces and Earrings', 50.00, 496, '2024-04-02 03:10:27', '2024-04-03 20:53:07'),
(124, 40, 4, 'Salt Shaker', 'Salt shaker', 18.00, 498, '2024-04-02 03:11:36', '2024-04-04 17:25:23'),
(125, 40, 1, 'Pink Crystal Cup', 'Crystal Cup', 17.00, 500, '2024-04-02 03:12:32', '2024-04-02 03:12:32'),
(126, 40, 4, 'Blue Crystal Cup', 'Crystal Cup', 17.00, 499, '2024-04-02 03:12:56', '2024-04-04 17:24:03'),
(127, 40, 4, 'Green Crystal Cup', 'Crystal Cup', 17.00, 500, '2024-04-02 03:13:41', '2024-04-02 03:13:41'),
(128, 40, 4, 'Green Low Crystal Glass', 'Low Crystal Glass', 16.00, 499, '2024-04-02 03:14:33', '2024-04-03 01:50:41'),
(129, 40, 4, 'Blue Low Crystal Glass', 'Low Crystal Glass', 16.00, 499, '2024-04-02 03:14:59', '2024-04-04 17:24:03'),
(130, 40, 4, 'France Scented Candles', 'Scented Candles', 19.00, 499, '2024-04-02 03:16:01', '2024-04-03 01:46:07'),
(131, 40, 4, 'Italian Scented Candles', 'Scented Candles', 22.00, 499, '2024-04-02 03:16:44', '2024-04-03 01:46:07'),
(132, 40, 4, 'England Scented Candles', 'Scented Candles', 20.00, 499, '2024-04-02 03:18:36', '2024-04-03 20:52:11'),
(133, 40, 4, 'Pot', 'Pot', 19.00, 499, '2024-04-02 03:19:08', '2024-04-04 17:27:42'),
(134, 40, 3, 'Blue Crystal Ring', 'Crystal Ring', 30.00, 498, '2024-04-02 03:20:03', '2024-04-03 20:54:27'),
(135, 40, 3, 'Silver Rings And Bracelets', 'Silver Rings And Bracelets', 33.00, 497, '2024-04-02 03:20:43', '2024-04-04 17:46:00'),
(136, 40, 4, 'Hamper', 'Hamper', 23.00, 500, '2024-04-02 03:21:56', '2024-04-02 03:21:56'),
(137, 40, 4, 'Recycle Bin', 'Recycle Bin', 13.00, 500, '2024-04-02 03:22:47', '2024-04-02 03:22:47'),
(138, 40, 4, 'Metal Seed Tray', 'Seed Tray', 18.00, 500, '2024-04-02 03:23:35', '2024-04-02 03:23:35'),
(139, 40, 4, 'Egg Tray', 'Egg Tray', 22.00, 499, '2024-04-02 03:24:29', '2024-04-04 17:27:42'),
(140, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 500, '2024-04-02 03:25:22', '2024-04-02 03:25:22'),
(141, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 499, '2024-04-02 03:25:41', '2024-04-03 01:30:31'),
(142, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 499, '2024-04-02 03:25:56', '2024-04-03 01:30:31'),
(143, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 500, '2024-04-02 03:26:13', '2024-04-02 03:26:13'),
(144, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 497, '2024-04-02 03:26:37', '2024-04-04 17:30:25'),
(145, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 499, '2024-04-02 03:26:55', '2024-04-03 01:45:24'),
(147, 40, 4, 'Decorative Statue', 'Decorative Statue', 25.00, 499, '2024-04-02 03:27:28', '2024-04-04 17:30:25'),
(148, 40, 4, 'Crystal Decorative Statue', 'Decorative Statue', 30.00, 498, '2024-04-02 03:28:17', '2024-04-03 01:58:40'),
(149, 40, 4, 'Crystak Decorative Statue', 'Decorative Statue', 30.00, 499, '2024-04-02 03:28:37', '2024-04-03 01:58:40'),
(150, 40, 4, 'Metal Trash Can', 'Metal Trash Can', 18.00, 499, '2024-04-02 03:30:32', '2024-04-03 01:34:52'),
(151, 40, 3, 'Diamond Ring', 'Ring', 500.00, 497, '2024-04-02 07:20:41', '2024-04-04 17:46:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `resized_image_path` varchar(255) DEFAULT NULL,
  `show_image_path` varchar(255) DEFAULT NULL,
  `thumbnail_image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `alt_text`, `created_at`, `updated_at`, `resized_image_path`, `show_image_path`, `thumbnail_image_path`) VALUES
(44, 13, 'product_images/product_1700227257_original.webp', 'Soothing scented candles made with natural ingredients.', '2023-11-17 12:20:57', '2023-11-21 17:01:33', 'product_images/product_1700227257_resized.webp', 'product_images/product_1700227257_show.webp', 'product_images/product_1700227257_thumbnail.webp'),
(56, 12, 'product_images/product_1700237909_original.webp', 'A warm and fashionable handwoven scarf.', '2023-11-17 15:18:30', '2023-11-21 17:01:33', 'product_images/product_1700237909_resized.webp', 'product_images/product_1700237909_show.webp', 'product_images/product_1700237909_thumbnail.webp'),
(57, 13, 'product_images/product_1700237975_original.webp', 'Soothing scented candles made with natural ingredients.', '2023-11-17 15:19:37', '2023-11-21 17:01:33', 'product_images/product_1700237975_resized.webp', 'product_images/product_1700237975_show.webp', 'product_images/product_1700237975_thumbnail.webp'),
(58, 14, 'product_images/product_1700238001_original.webp', 'Abstract canvas art, perfect for decorating any room.', '2023-11-17 15:20:04', '2023-11-21 17:01:34', 'product_images/product_1700238001_resized.webp', 'product_images/product_1700238001_show.webp', 'product_images/product_1700238001_thumbnail.webp'),
(59, 15, 'product_images/product_1700238049_original.webp', 'An elegant, personalized jewelry box for your treasures.', '2023-11-17 15:20:52', '2023-11-21 17:01:34', 'product_images/product_1700238049_resized.webp', 'product_images/product_1700238049_show.webp', 'product_images/product_1700238049_thumbnail.webp'),
(60, 16, 'product_images/product_1700238128_original.webp', 'A custom engraved pen, ideal for gifts.', '2023-11-17 15:22:10', '2023-11-21 17:01:34', 'product_images/product_1700238128_resized.webp', 'product_images/product_1700238128_show.webp', 'product_images/product_1700238128_thumbnail.webp'),
(61, 17, 'product_images/product_1700238174_original.webp', 'A handcrafted serving tray made from reclaimed wood, perfect for rustic-themed gatherings.', '2023-11-17 15:22:55', '2023-11-21 17:01:34', 'product_images/product_1700238174_resized.webp', 'product_images/product_1700238174_show.webp', 'product_images/product_1700238174_thumbnail.webp'),
(62, 18, 'product_images/product_1700238277_original.webp', 'A set of six oak wood coasters, each uniquely grained and finished with a protective coating to resist water stains.', '2023-11-17 15:24:39', '2023-11-21 17:01:34', 'product_images/product_1700238277_resized.webp', 'product_images/product_1700238277_show.webp', 'product_images/product_1700238277_thumbnail.webp'),
(63, 18, 'product_images/product_1700238279_original.webp', 'A set of six oak wood coasters, each uniquely grained and finished with a protective coating to resist water stains.', '2023-11-17 15:24:41', '2023-11-21 17:01:34', 'product_images/product_1700238279_resized.webp', 'product_images/product_1700238279_show.webp', 'product_images/product_1700238279_thumbnail.webp'),
(64, 19, 'product_images/product_1700238359_original.webp', 'An elegantly carved picture frame, suitable for 5x7 inch photos.', '2023-11-17 15:26:00', '2023-11-21 17:01:34', 'product_images/product_1700238359_resized.webp', 'product_images/product_1700238359_show.webp', 'product_images/product_1700238359_thumbnail.webp'),
(65, 20, 'product_images/product_1700238463_original.webp', 'A classic, durable leather belt, hand-stitched for superior quality.', '2023-11-17 15:27:46', '2023-11-21 17:01:34', 'product_images/product_1700238463_resized.webp', 'product_images/product_1700238463_show.webp', 'product_images/product_1700238463_thumbnail.webp'),
(66, 21, 'product_images/product_1700238567_original.webp', 'A premium leather journal cover, designed to fit standard-sized notebooks.', '2023-11-17 15:29:29', '2023-11-21 17:01:34', 'product_images/product_1700238567_resized.webp', 'product_images/product_1700238567_show.webp', 'product_images/product_1700238567_thumbnail.webp'),
(67, 22, 'product_images/product_1700238607_original.webp', 'A sleek, handcrafted leather phone case.', '2023-11-17 15:30:08', '2023-11-21 17:01:34', 'product_images/product_1700238607_resized.webp', 'product_images/product_1700238607_show.webp', 'product_images/product_1700238607_thumbnail.webp'),
(68, 23, 'product_images/product_1700238648_original.webp', 'A stylish satchel made from high-quality vintage leather.', '2023-11-17 15:30:51', '2023-11-21 17:01:34', 'product_images/product_1700238648_resized.webp', 'product_images/product_1700238648_show.webp', 'product_images/product_1700238648_thumbnail.webp'),
(69, 24, 'product_images/product_1700238947_original.webp', 'A set of four natural, handcrafted soaps made with organic ingredients.', '2023-11-17 15:35:49', '2023-11-21 17:01:34', 'product_images/product_1700238947_resized.webp', 'product_images/product_1700238947_show.webp', 'product_images/product_1700238947_thumbnail.webp'),
(70, 25, 'product_images/product_1700239013_original.webp', 'A pair of hand-sewn throw pillows, featuring vibrant, artistic designs.', '2023-11-17 15:36:55', '2023-11-21 17:01:34', 'product_images/product_1700239013_resized.webp', 'product_images/product_1700239013_show.webp', 'product_images/product_1700239013_thumbnail.webp'),
(71, 26, 'product_images/product_1700239310_original.webp', 'A set of two handcrafted ceramic coffee mugs, each with a unique, rustic design.', '2023-11-17 15:41:52', '2023-11-21 17:01:34', 'product_images/product_1700239310_resized.webp', 'product_images/product_1700239310_show.webp', 'product_images/product_1700239310_thumbnail.webp'),
(72, 27, 'product_images/product_1700239399_original.webp', 'A sophisticated wooden watch with a custom engraving option.', '2023-11-17 15:43:20', '2023-11-21 17:01:34', 'product_images/product_1700239399_resized.webp', 'product_images/product_1700239399_show.webp', 'product_images/product_1700239399_thumbnail.webp'),
(73, 28, 'product_images/product_1700239687_original.webp', 'A sleek leather bookmark, customizable with your choice of initials or a short message.', '2023-11-17 15:48:10', '2023-11-21 17:01:34', 'product_images/product_1700239687_resized.webp', 'product_images/product_1700239687_show.webp', 'product_images/product_1700239687_thumbnail.webp'),
(74, 29, 'product_images/product_1700239767_original.webp', 'A stunning, hand-engraved decorative plate, ideal for display or special occasions.', '2023-11-17 15:49:29', '2023-11-21 17:01:34', 'product_images/product_1700239767_resized.webp', 'product_images/product_1700239767_show.webp', 'product_images/product_1700239767_thumbnail.webp'),
(75, 11, 'product_images/product_1700585995_original.webp', 'A durable and stylish vintage leather wallet.', '2023-11-21 16:00:00', '2023-11-21 16:00:00', 'product_images/product_1700585995_resized.webp', 'product_images/product_1700585995_show.webp', 'product_images/product_1700585995_thumbnail.webp'),
(82, 4, 'product_images/product_1701189156_original.webp', 'A beautifully carved wooden bowl that serves as a centerpiece.', '2023-11-28 15:32:40', '2023-11-28 15:32:40', 'product_images/product_1701189156_resized.webp', 'product_images/product_1701189156_show.webp', 'product_images/product_1701189156_thumbnail.webp'),
(97, 46, 'product_images/product_1710806595_original.webp', 'Vintage Jacket', '2024-03-18 17:03:16', '2024-03-18 17:03:16', 'product_images/product_1710806595_resized.webp', 'product_images/product_1710806595_show.webp', 'product_images/product_1710806595_thumbnail.webp'),
(98, 47, 'product_images/product_1710807647_original.webp', 'Vintage Lamp', '2024-03-18 17:20:48', '2024-03-18 17:20:48', 'product_images/product_1710807647_resized.webp', 'product_images/product_1710807647_show.webp', 'product_images/product_1710807647_thumbnail.webp'),
(100, 49, 'product_images/product_1711891455_original.webp', 'Black Boot', '2024-03-31 06:24:16', '2024-03-31 06:24:16', 'product_images/product_1711891455_resized.webp', 'product_images/product_1711891455_show.webp', 'product_images/product_1711891455_thumbnail.webp'),
(101, 50, 'product_images/product_1711891814_original.webp', 'Chelsea Boot', '2024-03-31 06:30:15', '2024-03-31 06:30:15', 'product_images/product_1711891814_resized.webp', 'product_images/product_1711891814_show.webp', 'product_images/product_1711891814_thumbnail.webp'),
(102, 51, 'product_images/product_1711892127_original.webp', 'Vintage Oversized Jacket', '2024-03-31 06:35:27', '2024-03-31 06:35:27', 'product_images/product_1711892127_resized.webp', 'product_images/product_1711892127_show.webp', 'product_images/product_1711892127_thumbnail.webp'),
(103, 52, 'product_images/product_1711892312_original.webp', 'Racing Jacket Vintage White Nascar Retro Bomber - Jacket Formula 1', '2024-03-31 06:38:32', '2024-03-31 06:38:32', 'product_images/product_1711892312_resized.webp', 'product_images/product_1711892312_show.webp', 'product_images/product_1711892312_thumbnail.webp'),
(104, 53, 'product_images/product_1711892392_original.webp', 'Bud Fomura 1 Vintage Jacket', '2024-03-31 06:39:52', '2024-03-31 06:39:52', 'product_images/product_1711892392_resized.webp', 'product_images/product_1711892392_show.webp', 'product_images/product_1711892392_thumbnail.webp'),
(105, 54, 'product_images/product_1711892526_original.webp', 'Irelli Formua 1 Vintage Jacket', '2024-03-31 06:42:06', '2024-03-31 06:42:06', 'product_images/product_1711892526_resized.webp', 'product_images/product_1711892526_show.webp', 'product_images/product_1711892526_thumbnail.webp'),
(106, 55, 'product_images/product_1711892622_original.webp', 'Honda Racing Jacket', '2024-03-31 06:43:43', '2024-03-31 06:43:43', 'product_images/product_1711892622_resized.webp', 'product_images/product_1711892622_show.webp', 'product_images/product_1711892622_thumbnail.webp'),
(107, 56, 'product_images/product_1711892771_original.webp', 'Vintage Metal Genie Lamp Classic Home Decor - Creative Ornament', '2024-03-31 06:46:11', '2024-03-31 06:46:11', 'product_images/product_1711892771_resized.webp', 'product_images/product_1711892771_show.webp', 'product_images/product_1711892771_thumbnail.webp'),
(108, 57, 'product_images/product_1711929060_original.webp', 'Classic dressing table', '2024-03-31 16:51:01', '2024-03-31 16:51:01', 'product_images/product_1711929060_resized.webp', 'product_images/product_1711929060_show.webp', 'product_images/product_1711929060_thumbnail.webp'),
(110, 59, 'product_images/product_1711933009_original.webp', 'Classic fan', '2024-03-31 17:56:49', '2024-03-31 17:56:49', 'product_images/product_1711933009_resized.webp', 'product_images/product_1711933009_show.webp', 'product_images/product_1711933009_thumbnail.webp'),
(112, 61, 'product_images/product_1711979665_original.webp', 'Luxury lighter', '2024-04-01 06:54:26', '2024-04-01 06:54:26', 'product_images/product_1711979665_resized.webp', 'product_images/product_1711979665_show.webp', 'product_images/product_1711979665_thumbnail.webp'),
(113, 62, 'product_images/product_1711979755_original.webp', 'French style thermos', '2024-04-01 06:55:55', '2024-04-01 06:55:55', 'product_images/product_1711979755_resized.webp', 'product_images/product_1711979755_show.webp', 'product_images/product_1711979755_thumbnail.webp'),
(114, 63, 'product_images/product_1711979849_original.webp', 'Italian Style Crystal Vase', '2024-04-01 06:57:29', '2024-04-01 06:57:29', 'product_images/product_1711979849_resized.webp', 'product_images/product_1711979849_show.webp', 'product_images/product_1711979849_thumbnail.webp'),
(115, 64, 'product_images/product_1711979903_original.webp', 'Crystal Wine Decanter', '2024-04-01 06:58:23', '2024-04-01 06:58:23', 'product_images/product_1711979903_resized.webp', 'product_images/product_1711979903_show.webp', 'product_images/product_1711979903_thumbnail.webp'),
(116, 65, 'product_images/product_1711980642_original.webp', 'Bright Colored German Style Soap Jars', '2024-04-01 07:10:42', '2024-04-01 07:10:42', 'product_images/product_1711980642_resized.webp', 'product_images/product_1711980642_show.webp', 'product_images/product_1711980642_thumbnail.webp'),
(117, 66, 'product_images/product_1711980683_original.webp', 'Dark Colored German Style Soap Jars', '2024-04-01 07:11:23', '2024-04-01 07:11:23', 'product_images/product_1711980683_resized.webp', 'product_images/product_1711980683_show.webp', 'product_images/product_1711980683_thumbnail.webp'),
(119, 68, 'product_images/product_1711980817_original.webp', 'Black Luxury Chopsticks', '2024-04-01 07:13:38', '2024-04-01 07:13:38', 'product_images/product_1711980817_resized.webp', 'product_images/product_1711980817_show.webp', 'product_images/product_1711980817_thumbnail.webp'),
(120, 69, 'product_images/product_1711980868_original.webp', 'Luxury Cigar Ashtray', '2024-04-01 07:14:28', '2024-04-01 07:14:28', 'product_images/product_1711980868_resized.webp', 'product_images/product_1711980868_show.webp', 'product_images/product_1711980868_thumbnail.webp'),
(121, 70, 'product_images/product_1711980990_original.webp', 'Scented Candle Holder', '2024-04-01 07:16:30', '2024-04-01 07:16:30', 'product_images/product_1711980990_resized.webp', 'product_images/product_1711980990_show.webp', 'product_images/product_1711980990_thumbnail.webp'),
(122, 71, 'product_images/product_1711981062_original.webp', 'Luxury Tissue Box', '2024-04-01 07:17:43', '2024-04-01 07:17:43', 'product_images/product_1711981062_resized.webp', 'product_images/product_1711981062_show.webp', 'product_images/product_1711981062_thumbnail.webp'),
(123, 72, 'product_images/product_1711981145_original.webp', 'Jewelry Box', '2024-04-01 07:19:06', '2024-04-01 07:19:06', 'product_images/product_1711981145_resized.webp', 'product_images/product_1711981145_show.webp', 'product_images/product_1711981145_thumbnail.webp'),
(124, 73, 'product_images/product_1712021055_original.webp', 'Chessboard', '2024-04-01 18:24:16', '2024-04-01 18:24:16', 'product_images/product_1712021055_resized.webp', 'product_images/product_1712021055_show.webp', 'product_images/product_1712021055_thumbnail.webp'),
(125, 74, 'product_images/product_1712021109_original.webp', 'Metal Water Bottle', '2024-04-01 18:25:09', '2024-04-01 18:25:09', 'product_images/product_1712021109_resized.webp', 'product_images/product_1712021109_show.webp', 'product_images/product_1712021109_thumbnail.webp'),
(126, 75, 'product_images/product_1712021226_original.webp', 'Large Vase', '2024-04-01 18:27:07', '2024-04-01 18:27:07', 'product_images/product_1712021226_resized.webp', 'product_images/product_1712021226_show.webp', 'product_images/product_1712021226_thumbnail.webp'),
(127, 76, 'product_images/product_1712021257_original.webp', 'Small Vase', '2024-04-01 18:27:38', '2024-04-01 18:27:38', 'product_images/product_1712021257_resized.webp', 'product_images/product_1712021257_show.webp', 'product_images/product_1712021257_thumbnail.webp'),
(128, 77, 'product_images/product_1712021318_original.webp', 'Classic Flower Vase', '2024-04-01 18:28:39', '2024-04-01 18:28:39', 'product_images/product_1712021318_resized.webp', 'product_images/product_1712021318_show.webp', 'product_images/product_1712021318_thumbnail.webp'),
(129, 78, 'product_images/product_1712021400_original.webp', 'Dark Colored France Style Soap Jars', '2024-04-01 18:30:00', '2024-04-01 18:30:00', 'product_images/product_1712021400_resized.webp', 'product_images/product_1712021400_show.webp', 'product_images/product_1712021400_thumbnail.webp'),
(130, 79, 'product_images/product_1712021468_original.webp', 'Brightly colored French Soap Jar', '2024-04-01 18:31:09', '2024-04-01 18:31:09', 'product_images/product_1712021468_resized.webp', 'product_images/product_1712021468_show.webp', 'product_images/product_1712021468_thumbnail.webp'),
(131, 80, 'product_images/product_1712021506_original.webp', 'Pink French Soap Bottle', '2024-04-01 18:31:46', '2024-04-01 18:31:46', 'product_images/product_1712021506_resized.webp', 'product_images/product_1712021506_show.webp', 'product_images/product_1712021506_thumbnail.webp'),
(132, 81, 'product_images/product_1712021612_original.webp', 'Marble Soap Jar', '2024-04-01 18:33:32', '2024-04-01 18:33:32', 'product_images/product_1712021612_resized.webp', 'product_images/product_1712021612_show.webp', 'product_images/product_1712021612_thumbnail.webp'),
(133, 82, 'product_images/product_1712021683_original.webp', 'Metal Dinnerware Set', '2024-04-01 18:34:43', '2024-04-01 18:34:43', 'product_images/product_1712021683_resized.webp', 'product_images/product_1712021683_show.webp', 'product_images/product_1712021683_thumbnail.webp'),
(134, 83, 'product_images/product_1712021744_original.webp', 'Chopsticks Utensils', '2024-04-01 18:35:45', '2024-04-01 18:35:45', 'product_images/product_1712021744_resized.webp', 'product_images/product_1712021744_show.webp', 'product_images/product_1712021744_thumbnail.webp'),
(135, 84, 'product_images/product_1712021798_original.webp', 'Triangle Diamond Earrings', '2024-04-01 18:36:39', '2024-04-01 18:36:39', 'product_images/product_1712021798_resized.webp', 'product_images/product_1712021798_show.webp', 'product_images/product_1712021798_thumbnail.webp'),
(136, 85, 'product_images/product_1712021861_original.webp', 'French Style Essential Oil Bottle', '2024-04-01 18:37:42', '2024-04-01 18:37:42', 'product_images/product_1712021861_resized.webp', 'product_images/product_1712021861_show.webp', 'product_images/product_1712021861_thumbnail.webp'),
(137, 86, 'product_images/product_1712021959_original.webp', 'Star Pattern Water Cup', '2024-04-01 18:39:19', '2024-04-01 18:39:19', 'product_images/product_1712021959_resized.webp', 'product_images/product_1712021959_show.webp', 'product_images/product_1712021959_thumbnail.webp'),
(138, 87, 'product_images/product_1712022039_original.webp', 'Coin Pattern Water Cup', '2024-04-01 18:40:40', '2024-04-01 18:40:40', 'product_images/product_1712022039_resized.webp', 'product_images/product_1712022039_show.webp', 'product_images/product_1712022039_thumbnail.webp'),
(139, 88, 'product_images/product_1712022092_original.webp', 'Black and White Pattern Water Cup', '2024-04-01 18:41:32', '2024-04-01 18:41:32', 'product_images/product_1712022092_resized.webp', 'product_images/product_1712022092_show.webp', 'product_images/product_1712022092_thumbnail.webp'),
(140, 89, 'product_images/product_1712022128_original.webp', 'Round Pattern Water Cup', '2024-04-01 18:42:08', '2024-04-01 18:42:08', 'product_images/product_1712022128_resized.webp', 'product_images/product_1712022128_show.webp', 'product_images/product_1712022128_thumbnail.webp'),
(141, 90, 'product_images/product_1712022157_original.webp', 'Black Striped Pattern Water Cup', '2024-04-01 18:42:37', '2024-04-01 18:42:37', 'product_images/product_1712022157_resized.webp', 'product_images/product_1712022157_show.webp', 'product_images/product_1712022157_thumbnail.webp'),
(142, 91, 'product_images/product_1712022214_original.webp', 'Reggio Essential Oil Bottle', '2024-04-01 18:43:35', '2024-04-01 18:43:35', 'product_images/product_1712022214_resized.webp', 'product_images/product_1712022214_show.webp', 'product_images/product_1712022214_thumbnail.webp'),
(143, 92, 'product_images/product_1712022249_original.webp', 'Maduray Essential Oil Bottle', '2024-04-01 18:44:09', '2024-04-01 18:44:09', 'product_images/product_1712022249_resized.webp', 'product_images/product_1712022249_show.webp', 'product_images/product_1712022249_thumbnail.webp'),
(144, 93, 'product_images/product_1712022308_original.webp', 'La Recharge Essential Oil Bottle', '2024-04-01 18:45:08', '2024-04-01 18:45:08', 'product_images/product_1712022308_resized.webp', 'product_images/product_1712022308_show.webp', 'product_images/product_1712022308_thumbnail.webp'),
(145, 94, 'product_images/product_1712022382_original.webp', 'Cire Trvdon Essential Oil Bottle', '2024-04-01 18:46:23', '2024-04-01 18:46:23', 'product_images/product_1712022382_resized.webp', 'product_images/product_1712022382_show.webp', 'product_images/product_1712022382_thumbnail.webp'),
(146, 95, 'product_images/product_1712022414_original.webp', 'Essential Oil Bottle', '2024-04-01 18:46:55', '2024-04-01 18:46:55', 'product_images/product_1712022414_resized.webp', 'product_images/product_1712022414_show.webp', 'product_images/product_1712022414_thumbnail.webp'),
(147, 96, 'product_images/product_1712022467_original.webp', 'Candle Holders', '2024-04-01 18:47:47', '2024-04-01 18:47:47', 'product_images/product_1712022467_resized.webp', 'product_images/product_1712022467_show.webp', 'product_images/product_1712022467_thumbnail.webp'),
(148, 97, 'product_images/product_1712022545_original.webp', 'Classic Watch', '2024-04-01 18:49:06', '2024-04-01 18:49:06', 'product_images/product_1712022545_resized.webp', 'product_images/product_1712022545_show.webp', 'product_images/product_1712022545_thumbnail.webp'),
(149, 98, 'product_images/product_1712022599_original.webp', 'Floral Pattern Plate 1', '2024-04-01 18:49:59', '2024-04-01 18:49:59', 'product_images/product_1712022599_resized.webp', 'product_images/product_1712022599_show.webp', 'product_images/product_1712022599_thumbnail.webp'),
(150, 99, 'product_images/product_1712022634_original.webp', 'Floral Pattern Plate 2', '2024-04-01 18:50:34', '2024-04-01 18:50:34', 'product_images/product_1712022634_resized.webp', 'product_images/product_1712022634_show.webp', 'product_images/product_1712022634_thumbnail.webp'),
(151, 100, 'product_images/product_1712022790_original.webp', 'Red Luxury Chopsticks', '2024-04-01 18:53:10', '2024-04-01 18:53:10', 'product_images/product_1712022790_resized.webp', 'product_images/product_1712022790_show.webp', 'product_images/product_1712022790_thumbnail.webp'),
(152, 101, 'product_images/product_1712022807_original.webp', 'White Luxury Chopsticks', '2024-04-01 18:53:28', '2024-04-01 18:53:28', 'product_images/product_1712022807_resized.webp', 'product_images/product_1712022807_show.webp', 'product_images/product_1712022807_thumbnail.webp'),
(153, 102, 'product_images/product_1712022892_original.webp', 'Luxury Ashtray', '2024-04-01 18:54:53', '2024-04-01 18:54:53', 'product_images/product_1712022892_resized.webp', 'product_images/product_1712022892_show.webp', 'product_images/product_1712022892_thumbnail.webp'),
(154, 103, 'product_images/product_1712022933_original.webp', 'France Luxury Ashtray', '2024-04-01 18:55:33', '2024-04-01 18:55:33', 'product_images/product_1712022933_resized.webp', 'product_images/product_1712022933_show.webp', 'product_images/product_1712022933_thumbnail.webp'),
(155, 104, 'product_images/product_1712022991_original.webp', 'Small Wooden Box', '2024-04-01 18:56:31', '2024-04-01 18:56:31', 'product_images/product_1712022991_resized.webp', 'product_images/product_1712022991_show.webp', 'product_images/product_1712022991_thumbnail.webp'),
(156, 105, 'product_images/product_1712023048_original.webp', 'Mail Box', '2024-04-01 18:57:28', '2024-04-01 18:57:28', 'product_images/product_1712023048_resized.webp', 'product_images/product_1712023048_show.webp', 'product_images/product_1712023048_thumbnail.webp'),
(157, 106, 'product_images/product_1712023089_original.webp', 'Green Tissue Box', '2024-04-01 18:58:09', '2024-04-01 18:58:09', 'product_images/product_1712023089_resized.webp', 'product_images/product_1712023089_show.webp', 'product_images/product_1712023089_thumbnail.webp'),
(158, 107, 'product_images/product_1712023125_original.webp', 'Pink Tissue Box', '2024-04-01 18:58:46', '2024-04-01 18:58:46', 'product_images/product_1712023125_resized.webp', 'product_images/product_1712023125_show.webp', 'product_images/product_1712023125_thumbnail.webp'),
(159, 108, 'product_images/product_1712023168_original.webp', 'Yellow Tissue Box', '2024-04-01 18:59:28', '2024-04-01 18:59:28', 'product_images/product_1712023168_resized.webp', 'product_images/product_1712023168_show.webp', 'product_images/product_1712023168_thumbnail.webp'),
(160, 109, 'product_images/product_1712023187_original.webp', 'Tissue Box', '2024-04-01 18:59:47', '2024-04-01 18:59:47', 'product_images/product_1712023187_resized.webp', 'product_images/product_1712023187_show.webp', 'product_images/product_1712023187_thumbnail.webp'),
(161, 110, 'product_images/product_1712023205_original.webp', 'Purple Tissue Box', '2024-04-01 19:00:05', '2024-04-01 19:00:05', 'product_images/product_1712023205_resized.webp', 'product_images/product_1712023205_show.webp', 'product_images/product_1712023205_thumbnail.webp'),
(162, 111, 'product_images/product_1712023244_original.webp', 'Large Jewelry Box', '2024-04-01 19:00:44', '2024-04-01 19:00:44', 'product_images/product_1712023244_resized.webp', 'product_images/product_1712023244_show.webp', 'product_images/product_1712023244_thumbnail.webp'),
(163, 112, 'product_images/product_1712023332_original.webp', 'Spice jars', '2024-04-01 19:02:12', '2024-04-01 19:02:12', 'product_images/product_1712023332_resized.webp', 'product_images/product_1712023332_show.webp', 'product_images/product_1712023332_thumbnail.webp'),
(164, 113, 'product_images/product_1712023378_original.webp', 'Wooden Tray', '2024-04-01 19:02:59', '2024-04-01 19:02:59', 'product_images/product_1712023378_resized.webp', 'product_images/product_1712023378_show.webp', 'product_images/product_1712023378_thumbnail.webp'),
(165, 114, 'product_images/product_1712023414_original.webp', 'Glass Tray', '2024-04-01 19:03:35', '2024-04-01 19:03:35', 'product_images/product_1712023414_resized.webp', 'product_images/product_1712023414_show.webp', 'product_images/product_1712023414_thumbnail.webp'),
(166, 115, 'product_images/product_1712052147_original.webp', 'Black Large Wooden Tray', '2024-04-02 03:02:27', '2024-04-02 03:02:27', 'product_images/product_1712052147_resized.webp', 'product_images/product_1712052147_show.webp', 'product_images/product_1712052147_thumbnail.webp'),
(167, 116, 'product_images/product_1712052178_original.webp', 'Brown Large Wooden Tray', '2024-04-02 03:02:58', '2024-04-02 03:02:58', 'product_images/product_1712052178_resized.webp', 'product_images/product_1712052178_show.webp', 'product_images/product_1712052178_thumbnail.webp'),
(168, 117, 'product_images/product_1712052269_original.webp', 'Tray Toothbrush', '2024-04-02 03:04:29', '2024-04-02 03:04:29', 'product_images/product_1712052269_resized.webp', 'product_images/product_1712052269_show.webp', 'product_images/product_1712052269_thumbnail.webp'),
(169, 118, 'product_images/product_1712052327_original.webp', 'Metal Food Tray', '2024-04-02 03:05:28', '2024-04-02 03:05:28', 'product_images/product_1712052327_resized.webp', 'product_images/product_1712052327_show.webp', 'product_images/product_1712052327_thumbnail.webp'),
(170, 119, 'product_images/product_1712052360_original.webp', 'Paper Tray', '2024-04-02 03:06:00', '2024-04-02 03:06:00', 'product_images/product_1712052360_resized.webp', 'product_images/product_1712052360_show.webp', 'product_images/product_1712052360_thumbnail.webp'),
(171, 120, 'product_images/product_1712052471_original.webp', 'Green Soap Tray', '2024-04-02 03:07:52', '2024-04-02 03:07:52', 'product_images/product_1712052471_resized.webp', 'product_images/product_1712052471_show.webp', 'product_images/product_1712052471_thumbnail.webp'),
(172, 121, 'product_images/product_1712052490_original.webp', 'Pink Soap Tray', '2024-04-02 03:08:11', '2024-04-02 03:08:11', 'product_images/product_1712052490_resized.webp', 'product_images/product_1712052490_show.webp', 'product_images/product_1712052490_thumbnail.webp'),
(173, 122, 'product_images/product_1712052573_original.webp', 'Wooden Photo Frame', '2024-04-02 03:09:34', '2024-04-02 03:09:34', 'product_images/product_1712052573_resized.webp', 'product_images/product_1712052573_show.webp', 'product_images/product_1712052573_thumbnail.webp'),
(174, 123, 'product_images/product_1712052627_original.webp', 'Silver Necklaces and Earrings', '2024-04-02 03:10:28', '2024-04-02 03:10:28', 'product_images/product_1712052627_resized.webp', 'product_images/product_1712052627_show.webp', 'product_images/product_1712052627_thumbnail.webp'),
(175, 124, 'product_images/product_1712052696_original.webp', 'Salt Shaker', '2024-04-02 03:11:37', '2024-04-02 03:11:37', 'product_images/product_1712052696_resized.webp', 'product_images/product_1712052696_show.webp', 'product_images/product_1712052696_thumbnail.webp'),
(176, 125, 'product_images/product_1712052752_original.webp', 'Pink Crystal Cup', '2024-04-02 03:12:32', '2024-04-02 03:12:32', 'product_images/product_1712052752_resized.webp', 'product_images/product_1712052752_show.webp', 'product_images/product_1712052752_thumbnail.webp'),
(177, 126, 'product_images/product_1712052776_original.webp', 'Blue Crystal Cup', '2024-04-02 03:12:56', '2024-04-02 03:12:56', 'product_images/product_1712052776_resized.webp', 'product_images/product_1712052776_show.webp', 'product_images/product_1712052776_thumbnail.webp'),
(178, 127, 'product_images/product_1712052821_original.webp', 'Green Crystal Cup', '2024-04-02 03:13:42', '2024-04-02 03:13:42', 'product_images/product_1712052821_resized.webp', 'product_images/product_1712052821_show.webp', 'product_images/product_1712052821_thumbnail.webp'),
(179, 128, 'product_images/product_1712052873_original.webp', 'Green Low Crystal Glass', '2024-04-02 03:14:34', '2024-04-02 03:14:34', 'product_images/product_1712052873_resized.webp', 'product_images/product_1712052873_show.webp', 'product_images/product_1712052873_thumbnail.webp'),
(180, 129, 'product_images/product_1712052899_original.webp', 'Blue Low Crystal Glass', '2024-04-02 03:14:59', '2024-04-02 03:14:59', 'product_images/product_1712052899_resized.webp', 'product_images/product_1712052899_show.webp', 'product_images/product_1712052899_thumbnail.webp'),
(181, 130, 'product_images/product_1712052961_original.webp', 'France Scented Candles', '2024-04-02 03:16:02', '2024-04-02 03:16:02', 'product_images/product_1712052961_resized.webp', 'product_images/product_1712052961_show.webp', 'product_images/product_1712052961_thumbnail.webp'),
(182, 131, 'product_images/product_1712053004_original.webp', 'Italian Scented Candles', '2024-04-02 03:16:44', '2024-04-02 03:16:44', 'product_images/product_1712053004_resized.webp', 'product_images/product_1712053004_show.webp', 'product_images/product_1712053004_thumbnail.webp'),
(183, 132, 'product_images/product_1712053116_original.webp', 'England Scented Candles', '2024-04-02 03:18:37', '2024-04-02 03:18:37', 'product_images/product_1712053116_resized.webp', 'product_images/product_1712053116_show.webp', 'product_images/product_1712053116_thumbnail.webp'),
(184, 133, 'product_images/product_1712053148_original.webp', 'Pot', '2024-04-02 03:19:09', '2024-04-02 03:19:09', 'product_images/product_1712053148_resized.webp', 'product_images/product_1712053148_show.webp', 'product_images/product_1712053148_thumbnail.webp'),
(185, 134, 'product_images/product_1712053203_original.webp', 'Blue Crystal Ring', '2024-04-02 03:20:03', '2024-04-02 03:20:03', 'product_images/product_1712053203_resized.webp', 'product_images/product_1712053203_show.webp', 'product_images/product_1712053203_thumbnail.webp'),
(186, 135, 'product_images/product_1712053243_original.webp', 'Silver Rings And Bracelets', '2024-04-02 03:20:44', '2024-04-02 03:20:44', 'product_images/product_1712053243_resized.webp', 'product_images/product_1712053243_show.webp', 'product_images/product_1712053243_thumbnail.webp'),
(187, 136, 'product_images/product_1712053316_original.webp', 'Hamper', '2024-04-02 03:21:57', '2024-04-02 03:21:57', 'product_images/product_1712053316_resized.webp', 'product_images/product_1712053316_show.webp', 'product_images/product_1712053316_thumbnail.webp'),
(188, 137, 'product_images/product_1712053367_original.webp', 'Recycle Bin', '2024-04-02 03:22:48', '2024-04-02 03:22:48', 'product_images/product_1712053367_resized.webp', 'product_images/product_1712053367_show.webp', 'product_images/product_1712053367_thumbnail.webp'),
(189, 138, 'product_images/product_1712053415_original.webp', 'Metal Seed Tray', '2024-04-02 03:23:36', '2024-04-02 03:23:36', 'product_images/product_1712053415_resized.webp', 'product_images/product_1712053415_show.webp', 'product_images/product_1712053415_thumbnail.webp'),
(190, 139, 'product_images/product_1712053469_original.webp', 'Egg Tray', '2024-04-02 03:24:29', '2024-04-02 03:24:29', 'product_images/product_1712053469_resized.webp', 'product_images/product_1712053469_show.webp', 'product_images/product_1712053469_thumbnail.webp'),
(191, 140, 'product_images/product_1712053522_original.webp', 'Decorative Statue', '2024-04-02 03:25:23', '2024-04-02 03:25:23', 'product_images/product_1712053522_resized.webp', 'product_images/product_1712053522_show.webp', 'product_images/product_1712053522_thumbnail.webp'),
(192, 141, 'product_images/product_1712053541_original.webp', 'Decorative Statue', '2024-04-02 03:25:42', '2024-04-02 03:25:42', 'product_images/product_1712053541_resized.webp', 'product_images/product_1712053541_show.webp', 'product_images/product_1712053541_thumbnail.webp'),
(193, 142, 'product_images/product_1712053556_original.webp', 'Decorative Statue', '2024-04-02 03:25:56', '2024-04-02 03:25:56', 'product_images/product_1712053556_resized.webp', 'product_images/product_1712053556_show.webp', 'product_images/product_1712053556_thumbnail.webp'),
(194, 143, 'product_images/product_1712053573_original.webp', 'Decorative Statue', '2024-04-02 03:26:13', '2024-04-02 03:26:13', 'product_images/product_1712053573_resized.webp', 'product_images/product_1712053573_show.webp', 'product_images/product_1712053573_thumbnail.webp'),
(195, 144, 'product_images/product_1712053597_original.webp', 'Decorative Statue', '2024-04-02 03:26:38', '2024-04-02 03:26:38', 'product_images/product_1712053597_resized.webp', 'product_images/product_1712053597_show.webp', 'product_images/product_1712053597_thumbnail.webp'),
(196, 145, 'product_images/product_1712053615_original.webp', 'Decorative Statue', '2024-04-02 03:26:56', '2024-04-02 03:26:56', 'product_images/product_1712053615_resized.webp', 'product_images/product_1712053615_show.webp', 'product_images/product_1712053615_thumbnail.webp'),
(198, 147, 'product_images/product_1712053648_original.webp', 'Decorative Statue', '2024-04-02 03:27:29', '2024-04-02 03:27:29', 'product_images/product_1712053648_resized.webp', 'product_images/product_1712053648_show.webp', 'product_images/product_1712053648_thumbnail.webp'),
(199, 148, 'product_images/product_1712053697_original.webp', 'Crystal Decorative Statue', '2024-04-02 03:28:17', '2024-04-02 03:28:17', 'product_images/product_1712053697_resized.webp', 'product_images/product_1712053697_show.webp', 'product_images/product_1712053697_thumbnail.webp'),
(200, 149, 'product_images/product_1712053717_original.webp', 'Crystak Decorative Statue', '2024-04-02 03:28:37', '2024-04-02 03:28:37', 'product_images/product_1712053717_resized.webp', 'product_images/product_1712053717_show.webp', 'product_images/product_1712053717_thumbnail.webp'),
(201, 150, 'product_images/product_1712053832_original.webp', 'Metal Trash Can', '2024-04-02 03:30:32', '2024-04-02 03:30:32', 'product_images/product_1712053832_resized.webp', 'product_images/product_1712053832_show.webp', 'product_images/product_1712053832_thumbnail.webp'),
(202, 151, 'product_images/product_1712067641_original.webp', 'Diamond Ring', '2024-04-02 07:20:43', '2024-04-02 07:20:43', 'product_images/product_1712067641_resized.webp', 'product_images/product_1712067641_show.webp', 'product_images/product_1712067641_thumbnail.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(7, 11, 18, 5, 'Exceptional quality and detail. I’m thoroughly impressed!', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(8, 11, 19, 4, 'Beautiful work, but the delivery took longer than expected.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(9, 11, 20, 3, 'Nice, but not exactly what I was expecting based on the photos.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(10, 12, 21, 5, 'Absolutely perfect! I couldn’t be happier with this purchase.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(11, 12, 22, 4, 'Great product, though the color is slightly off from the website image.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(12, 12, 23, 2, 'Arrived damaged, but customer service was helpful in resolving the issue.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(13, 13, 24, 5, 'Superb quality! It has become my favorite piece in the house.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(14, 13, 25, 4, 'Looks great, but the size was a bit smaller than I expected.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(15, 13, 26, 3, 'Decent product, but I found it a bit overpriced for the quality.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(16, 14, 27, 5, 'I am extremely pleased with this purchase. Highly recommend!', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(17, 14, 28, 4, 'Very good craftsmanship, though the packaging was not great.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(18, 14, 29, 2, 'The product is okay, but it did not meet my expectations.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(19, 15, 29, 5, 'Truly a masterpiece! The craftsmanship is top-notch.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(20, 15, 30, 4, 'Very unique and well-made, but took a while to arrive.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(21, 15, 31, 1, 'Not what I expected, and the material feels a bit cheap.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(22, 16, 30, 5, 'Stunning design and excellent quality. I highly recommend it.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(23, 16, 31, 4, 'Great product, but the packaging could be improved.', '2023-11-12 09:47:34', '2023-11-12 09:47:34'),
(26, 14, 1, 5, 'I\'ve changed my mind...THIS IS AMAZING!!! HELL YEAH', '2023-11-14 12:01:16', '2023-12-02 18:54:02'),
(38, 13, 1, 5, 'Cool', '2023-11-14 19:55:36', '2023-12-02 19:29:26'),
(39, 16, 1, 1, 'Rool', '2023-11-15 16:19:50', '2023-11-15 16:19:50'),
(71, 17, 11, 4, 'The rustic charm of this tray is perfect for my country cottage aesthetic. Love it!', '2023-11-17 13:44:08', '2023-11-17 13:44:08'),
(72, 17, 11, 4, 'The rustic charm of this tray is perfect for my country cottage aesthetic. Love it!', '2023-11-17 13:44:38', '2023-11-17 13:44:38'),
(101, 17, 13, 5, 'Every time I have guests over, they compliment this tray. It’s as sturdy as it is beautiful.', '2023-11-17 13:46:13', '2023-11-17 13:46:13'),
(102, 17, 19, 5, 'I bought this as a housewarming gift and my friend can’t stop raving about it.', '2023-11-17 13:46:13', '2023-11-17 13:46:13'),
(103, 17, 22, 3, 'The tray is well-made but a bit smaller than I expected. Check dimensions before buying.', '2023-11-17 13:46:13', '2023-11-17 13:46:13'),
(104, 18, 12, 4, 'These coasters have a lovely finish and protect my tables effectively.', '2023-11-17 13:46:56', '2023-11-17 13:46:56'),
(105, 18, 14, 5, 'Just what I was looking for - rustic and practical.', '2023-11-17 13:46:56', '2023-11-17 13:46:56'),
(106, 18, 23, 3, 'Decent coasters, though I anticipated a bit more heft to them.', '2023-11-17 13:46:56', '2023-11-17 13:46:56'),
(107, 18, 30, 4, 'The grain of the wood is so nice, and they have a very natural feel.', '2023-11-17 13:46:56', '2023-11-17 13:46:56'),
(108, 19, 15, 5, 'The frame is a piece of art in itself. It’s now holding my favorite family photo.', '2023-11-17 13:47:16', '2023-11-17 13:47:16'),
(109, 19, 20, 4, 'Beautiful craftsmanship, though it took a little longer to arrive than expected.', '2023-11-17 13:47:16', '2023-11-17 13:47:16'),
(110, 19, 24, 5, 'So pleased with this purchase. It’s beautifully carved and solid.', '2023-11-17 13:47:16', '2023-11-17 13:47:16'),
(111, 19, 29, 2, 'A bit disappointed as the carving was not as detailed as I hoped.', '2023-11-17 13:47:16', '2023-11-17 13:47:16'),
(116, 20, 31, 5, 'The belt is just phenomenal. It feels custom-made for my waist.', '2023-11-17 13:47:52', '2023-11-17 13:47:52'),
(117, 20, 21, 5, 'High quality leather and the stitching detail is impeccable.', '2023-11-17 13:47:52', '2023-11-17 13:47:52'),
(118, 20, 25, 4, 'Took some time to break in, but now it’s the perfect fit and very comfortable.', '2023-11-17 13:47:52', '2023-11-17 13:47:52'),
(119, 20, 28, 3, 'Solid belt, but the buckle feels a bit lightweight.', '2023-11-17 13:47:52', '2023-11-17 13:47:52'),
(185, 21, 10, 5, 'Transformed my journal into something I can proudly display on my shelf.', '2023-11-17 13:49:24', '2023-11-17 13:49:24'),
(186, 21, 17, 4, 'The leather smells amazing and the texture is very pleasant.', '2023-11-17 13:49:24', '2023-11-17 13:49:24'),
(187, 21, 26, 4, 'It’s a stylish cover, though I wish there were more color options.', '2023-11-17 13:49:24', '2023-11-17 13:49:24'),
(188, 21, 31, 4, 'Very classy - makes me feel like a true writer when I pull this out at coffee shops.', '2023-11-17 13:49:24', '2023-11-17 13:49:24'),
(189, 24, 16, 4, 'The scents are divine and it’s great knowing they’re made with natural ingredients.', '2023-11-17 13:49:39', '2023-11-17 13:49:39'),
(190, 24, 18, 5, 'These soaps lather up nicely and don’t dry out my skin.', '2023-11-17 13:49:39', '2023-11-17 13:49:39'),
(191, 24, 27, 3, 'Enjoyed the variety, but the lavender one didn’t smell as I expected.', '2023-11-17 13:49:39', '2023-11-17 13:49:39'),
(192, 24, 31, 5, 'Each bar has a subtle and soothing scent. They’re gentle and I love the eco-friendly packaging.', '2023-11-17 13:49:39', '2023-11-17 13:49:39'),
(193, 25, 25, 4, 'They add such a cozy touch to my reading nook.', '2023-11-17 13:50:51', '2023-11-17 13:50:51'),
(194, 25, 16, 5, 'The colors are vibrant, and the material is top-notch.', '2023-11-17 13:50:51', '2023-11-17 13:50:51'),
(195, 25, 29, 3, 'Cute and comfy, but they flatten out a bit too quickly.', '2023-11-17 13:50:51', '2023-11-17 13:50:51'),
(196, 25, 28, 4, 'These pillows look like something you’d find in a chic boutique!', '2023-11-17 13:50:51', '2023-11-17 13:50:51'),
(272, 27, 20, 5, 'The craftsmanship of this watch is outstanding. It feels personalized and is incredibly stylish.', '2023-11-17 14:00:21', '2023-11-17 17:02:08'),
(273, 27, 26, 4, 'Beautifully made and the engraving is a nice touch. A perfect gift for a loved one.', '2023-11-17 14:00:21', '2023-11-17 17:02:08'),
(274, 27, 30, 5, 'Truly a piece of art. This wooden watch stands out every time I wear it.', '2023-11-17 14:00:21', '2023-11-17 17:02:08'),
(275, 27, 29, 3, 'The watch is nice, but it’s lighter than I expected. I’m not sure how it will hold up over time.', '2023-11-17 14:00:21', '2023-11-17 17:02:08'),
(276, 28, 28, 5, 'The leather bookmark is not just practical, it’s also very elegant.', '2023-11-17 14:00:21', '2023-11-17 17:02:59'),
(277, 28, 19, 4, 'I love the personalization option. It’s a simple yet thoughtful touch.', '2023-11-17 14:00:21', '2023-11-17 17:02:59'),
(278, 28, 10, 4, 'This bookmark makes reading even more enjoyable. The leather feels premium.', '2023-11-17 14:00:21', '2023-11-17 17:02:59'),
(279, 28, 22, 5, 'Got this as a present for a friend and they absolutely loved it! The craftsmanship is superb.', '2023-11-17 14:00:21', '2023-11-17 17:02:59'),
(280, 29, 10, 5, 'This decorative plate is even more beautiful in person. The hand-engraved details are impeccable.', '2023-11-17 14:00:21', '2023-11-17 14:00:21'),
(281, 29, 11, 4, 'It’s the centerpiece of my dining table and always gets compliments.', '2023-11-17 14:00:21', '2023-11-17 14:00:21'),
(282, 29, 13, 3, 'Lovely design, but the plate is smaller than I anticipated.', '2023-11-17 14:00:21', '2023-11-17 14:00:21'),
(283, 29, 15, 4, 'The artwork on this plate is stunning. It has a permanent spot in my display cabinet.', '2023-11-17 14:00:21', '2023-11-17 14:00:21'),
(284, 26, 21, 5, 'The ceramic mugs have a great hand-feel and the craftsmanship is top-notch.', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(285, 26, 26, 4, 'I adore the rustic look of these mugs. They’re perfect for my morning coffee.', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(286, 26, 13, 4, 'These mugs retain heat well and are a joy to use. Plus, they’re dishwasher safe!', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(287, 26, 26, 5, 'Absolutely beautiful. Each mug is unique which makes them feel extra special.', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(288, 26, 19, 3, 'The mugs are pretty, but one of them had a small chip on the bottom.', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(289, 26, 30, 5, 'Perfect size for my latte. The quality is evident and they have a lovely design.', '2023-11-17 14:02:27', '2023-11-17 14:03:51'),
(290, 22, 17, 5, 'The phone case feels luxurious and fits perfectly. Definitely exceeded my expectations.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(291, 22, 23, 4, 'The leather quality is superb, and it offers good protection for my phone.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(292, 22, 26, 3, 'Nice case but a bit tight on the sides. Hoping it stretches out a bit with use.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(293, 22, 14, 4, 'Elegant and sleek - it’s exactly what I was looking for in a phone case.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(294, 22, 25, 5, 'Impressed with the craftsmanship. It’s stylish and functional.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(295, 23, 24, 5, 'This satchel is the perfect size for daily use, and the vintage leather feels like it will last.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(296, 23, 12, 4, 'Classic design with a lot of character. It stands out from typical bags.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(297, 23, 29, 4, 'The satchel carries all my essentials without being bulky. The leather is really high quality.', '2023-11-17 14:07:18', '2023-11-17 17:05:05'),
(298, 23, 10, 3, 'Good bag but I expected more compartments for organization.', '2023-11-17 14:07:18', '2023-11-17 14:07:18'),
(299, 23, 11, 5, 'I’ve received numerous compliments on this bag. It’s durable and looks even better as it ages.', '2023-11-17 14:07:18', '2023-11-17 14:07:18'),
(300, 28, 1, 5, 'Cool Stuff', '2023-11-25 13:33:05', '2023-11-25 13:33:05'),
(309, 11, 1, 5, 'Very nice product, would buy again (maybe)', '2023-12-01 17:56:34', '2023-12-05 07:21:08'),
(310, 24, 1, 5, 'Coolest Thing Ever!', '2023-12-02 18:16:01', '2023-12-02 18:16:22'),
(314, 23, 1, 5, 'Cool thing!', '2023-12-03 13:26:30', '2023-12-03 13:26:30'),
(315, 15, 1, 5, 'Cool Thing!', '2023-12-04 08:23:53', '2023-12-04 08:23:53'),
(316, 4, 12, 5, 'This handmade wooden bowl is a masterpiece! The intricate carving and attention to detail make it a stunning centerpiece on my dining table. The craftsmanship is top-notch, and it adds a touch of elegance to any room. Highly recommended!', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(317, 4, 14, 3, 'While the design of this bowl is lovely, I found it to be slightly smaller than expected. The craftsmanship is good, but the size doesn\'t make it as versatile as I hoped. Still a beautiful piece, but be mindful of the dimensions.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(318, 4, 17, 4, 'This wooden bowl is a charming addition to my home. The quality is excellent, and it makes for a unique focal point. My only minor gripe is that it requires careful cleaning to preserve its beauty. Nevertheless, it\'s a delightful purchase.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(319, 4, 20, 2, 'Unfortunately, my bowl arrived with a small crack. While the design is appealing, the quality control seems lacking. Disappointed in the durability, as I expected better from a handmade item.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(320, 4, 22, 5, 'I absolutely love my handmade wooden bowl! It\'s not just a functional piece but a work of art. The size is perfect, and the craftsmanship is outstanding. It has become the highlight of my dining room.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(321, 4, 24, 3, 'The bowl\'s design is beautiful, but the wood seems a bit too delicate. I\'ve noticed a few scratches despite gentle use. It requires extra care to maintain its appearance, which can be a bit inconvenient.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(322, 4, 26, 4, 'The handmade wooden bowl is a conversation starter! Its unique design catches everyone\'s eye. It\'s perfect for serving snacks, though I wish it came with care instructions to ensure its longevity.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(323, 4, 28, 5, 'Exquisite craftsmanship! The bowl is not only a practical item but also a piece of art. The wood\'s natural grain is showcased beautifully. I couldn\'t be happier with this purchase.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(324, 4, 30, 2, 'The bowl arrived with an uneven finish, and the carving details were not as precise as I expected. It\'s a bit disappointing given the price. Quality control needs improvement.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(325, 4, 32, 4, 'I love the rustic charm of this bowl! It\'s well-made and looks fantastic as a centerpiece. The only downside is that it\'s not dishwasher-safe, which makes cleaning a bit more laborious.', '2023-12-04 20:49:16', '2023-12-04 20:49:16'),
(326, 11, 10, 4, 'I love the vintage vibe of this leather wallet! It\'s durable and has that worn-in charm that gives it character. The stitching is well done, and it has enough compartments for all my cards and cash. The only downside is that it\'s a bit bulkier than I expected, but overall, it\'s a solid choice.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(327, 11, 11, 2, 'Disappointed with the quality of this wallet. The leather feels cheap, and after just a few weeks of use, it started showing signs of wear and tear. The card slots are tight, making it difficult to retrieve cards easily. Not worth the price in my opinion.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(328, 11, 13, 5, 'Absolutely thrilled with my purchase! This wallet exceeded my expectations. The leather is soft, the stitching is impeccable, and the vintage design is just what I was looking for. It\'s a stylish accessory that adds a touch of sophistication to my everyday carry.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(329, 11, 14, 3, 'The wallet is decent, but the color started fading sooner than I anticipated. The card slots are well-sized, but the overall construction feels a bit flimsy. It gets the job done, but I expected better longevity.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(330, 11, 15, 5, 'This wallet is a classic! The leather is of excellent quality, and it has a timeless appeal. The compartments are well-organized, and it fits comfortably in my pocket. A must-have for anyone who appreciates a blend of style and functionality.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(332, 11, 17, 4, 'The wallet has a rustic charm that I adore. It\'s spacious enough for my essentials, and the leather feels authentic. My only complaint is that the closure button is a bit loose, but it hasn\'t caused any issues so far.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(333, 11, 21, 5, 'Fantastic wallet! The vintage look is spot on, and it\'s holding up well to daily use. The attention to detail in the design is commendable. I appreciate the craftsmanship that went into creating this stylish accessory.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(334, 11, 22, 3, 'It\'s an average wallet. The leather is okay, but I expected a richer color. The card slots are a bit tight initially, and the wallet takes some breaking in. Decent for the price, but not outstanding.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(335, 11, 23, 5, 'This vintage leather wallet is a gem! The quality is exceptional, and it ages beautifully. The compartments are well thought out, providing practicality without compromising on style. A reliable and stylish accessory for sure.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(336, 11, 24, 2, 'Regretting my purchase. The leather feels plasticky, and the wallet started falling apart after a few weeks of use. Not the durable vintage accessory I was hoping for. Disappointed.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(337, 11, 25, 4, 'Pleasantly surprised by the quality of this wallet. The leather is soft yet sturdy, and the design is timeless. The only drawback is that it could use more card slots. Nonetheless, it\'s a stylish addition to my collection.', '2023-12-04 20:51:43', '2023-12-04 20:51:43'),
(338, 12, 10, 4, 'I love the cozy feel of this handwoven scarf. The craftsmanship is evident in its softness and intricate patterns. However, I wish it were a bit longer for more styling options. Overall, a great addition to my winter wardrobe.', '2023-12-04 21:05:17', '2023-12-04 21:05:17'),
(339, 12, 11, 5, 'The handwoven scarf exceeded my expectations! It\'s not only stylish but also incredibly warm. The quality is exceptional, and I appreciate the attention to detail in every stitch. A must-have accessory for the colder months.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(340, 12, 12, 3, 'The design of the handwoven scarf is lovely, but I found it to be a bit itchy against my skin. It\'s a beautiful accessory, but comfort is crucial for me. Perhaps a softer material would make it more wearable.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(341, 12, 13, 5, 'This scarf is a work of art! The vibrant colors and unique patterns make it a standout piece. The quality is excellent, and I\'ve received numerous compliments every time I wear it. Definitely, a great investment for anyone who loves statement accessories.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(342, 12, 14, 2, 'Unfortunately, I was disappointed with the handwoven scarf. The colors faded after just a few washes, and the fabric lost its original softness. It\'s a beautiful piece initially, but the lack of durability was a letdown.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(343, 12, 15, 5, 'I am in awe of the craftsmanship in this handwoven scarf. The intricate details and high-quality materials make it a standout accessory. It\'s not just a scarf; it\'s a wearable piece of art that enhances any outfit. Highly satisfied!', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(345, 12, 17, 5, 'I adore my handwoven scarf! The color palette is versatile, allowing me to pair it with various outfits. It\'s incredibly soft and comfortable, making it my go-to accessory during the colder months. A definite must-have for fashion enthusiasts!', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(346, 12, 18, 3, 'While the design of the handwoven scarf is nice, I noticed some loose threads that affect its overall durability. It\'s disappointing as I expected better quality for the price. A beautiful piece, but attention to detail is crucial.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(347, 12, 19, 5, 'I\'m thrilled with my purchase of the handwoven scarf! The texture is delightful, and the scarf is surprisingly lightweight yet incredibly warm. It\'s become my favorite winter accessory, and I can\'t recommend it enough.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(348, 12, 20, 4, 'The handwoven scarf is a versatile addition to my wardrobe. It drapes beautifully and adds a touch of sophistication to any outfit. My only suggestion would be to offer more color options to cater to different preferences.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(349, 12, 32, 1, 'Regrettably, the handwoven scarf didn\'t meet my expectations. The colors faded significantly after the first wash, and the fabric lost its softness. It\'s not worth the price considering the lack of durability. Disappointed with the overall quality.', '2023-12-04 21:05:18', '2023-12-04 21:05:18'),
(350, 13, 14, 4, 'These scented candles are a delightful addition to my relaxation routine. The soothing aroma fills the room, creating a calming atmosphere. While the scent is fantastic, I wish the candles burned a bit longer. Still, a lovely product for winding down after a hectic day.', '2023-12-04 21:07:03', '2023-12-04 21:07:03'),
(351, 13, 18, 3, 'The scent of these candles is pleasant, but I found it to be a bit overpowering. The natural ingredients are a plus, but the fragrance intensity might be too much for some. The quality is good, but I\'d prefer a milder option for a more subtle ambiance.', '2023-12-04 21:07:03', '2023-12-04 21:07:03'),
(352, 13, 25, 5, 'These artisanal scented candles exceeded my expectations. The fragrance is divine, not too strong, and the natural ingredients are a big selling point for me. They burn evenly, and the packaging is elegant. Perfect for creating a cozy and inviting atmosphere.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(353, 13, 28, 2, 'Unfortunately, these candles didn\'t live up to the hype. The scent is barely noticeable, and they burn unevenly. The natural ingredients didn\'t seem to make a significant difference. Disappointed with the overall quality; there are better options available.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(354, 13, 16, 5, 'These candles are a game-changer! The natural ingredients create a pure and refreshing scent that instantly lifts my mood. The packaging is chic, and they burn for an extended period. A must-have for anyone looking to enhance their home with a touch of luxury.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(355, 13, 30, 3, 'These candles have a unique fragrance, but it\'s not my personal favorite. The natural ingredients are a plus, but the scent doesn\'t align with my preferences. The burn time is decent, though. It\'s all about individual taste when it comes to these candles.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(356, 13, 12, 4, 'I\'m impressed with the quality of these candles. The natural ingredients ensure a clean burn, and the scent is invigorating. However, the price point is a bit high compared to similar products on the market. Nevertheless, a solid choice for those who prioritize natural ingredients.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(357, 13, 29, 5, 'These scented candles are a true gem! The natural ingredients make a noticeable difference in the purity of the fragrance. The packaging is elegant, and the burn time is exceptional. I\'m a repeat customer and highly recommend these candles for a luxurious sensory experience.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(358, 13, 19, 2, 'I had high hopes for these candles, but I was disappointed. The scent is too faint, and they burn out quickly. The promise of natural ingredients didn\'t translate into a memorable experience. I won\'t be purchasing these candles again.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(359, 13, 31, 4, 'These candles strike a good balance between fragrance and subtlety. The natural ingredients are a plus, and they burn evenly. While the scent is enjoyable, it could be a touch stronger for those who prefer a more pronounced aroma. Overall, a solid choice.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(360, 13, 20, 5, 'These candles are a sensory delight! The natural ingredients create a pure, refreshing scent that permeates the room. The burn time is impressive, and the packaging is visually appealing. I\'m thoroughly satisfied with this purchase and will be buying more.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(361, 13, 26, 3, 'The candles are decent, but the fragrance is a bit too overpowering for my taste. The burn time is satisfactory, and the natural ingredients are appreciated. It\'s a matter of personal preference, so if you enjoy stronger scents, these might be perfect for you.', '2023-12-04 21:07:04', '2023-12-04 21:07:04'),
(362, 14, 10, 4, 'The abstract canvas art exceeded my expectations in terms of vibrant colors and unique design. It effortlessly transformed the ambiance of my living room. However, the canvas could be a bit sturdier for long-term durability.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(363, 14, 11, 2, 'Disappointed with the purchase. The colors in the picture online are much brighter than in reality. The quality of the canvas is mediocre, and the overall impression is not as captivating as I had hoped.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(364, 14, 12, 5, 'This canvas art is a true masterpiece! The colors blend seamlessly, creating a captivating and lively atmosphere. It\'s the perfect addition to my home decor, and I couldn\'t be happier with this purchase.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(365, 14, 13, 3, 'The abstract canvas art is decent, but the packaging could be improved. The edges arrived slightly damaged, impacting the overall presentation. Otherwise, the colors and design are as expected.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(366, 14, 14, 5, 'Absolutely in love with this canvas art! It effortlessly brings life and character to my bedroom. The quality is superb, and the attention to detail is commendable. Highly recommend to anyone looking for a statement piece.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(367, 14, 15, 2, 'Not satisfied with the purchase. The canvas arrived with noticeable creases, and the colors looked faded. The quality does not match the price point, and I expected better packaging to prevent damage.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(368, 14, 16, 4, 'The abstract canvas art is a fantastic addition to my home. The colors are vibrant, and the design is eye-catching. The only drawback is that the hanging hardware provided was a bit flimsy.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(369, 14, 17, 5, 'This hand-painted canvas art is a true work of art. The intricate details and bold colors make it a focal point in my living room. The quality is exceptional, and it arrived well-packaged and in perfect condition.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(370, 14, 18, 3, 'The canvas art is decent, but the colors are not as vibrant as I expected. It adds a subtle touch to my room, but I wish it had more pop. The quality is acceptable for the price.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(371, 14, 19, 5, 'Absolutely stunning! This canvas art exceeded my expectations. The colors are rich, and the abstract design adds a modern touch to my home. It\'s a conversation starter, and I couldn\'t be happier.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(372, 14, 20, 1, 'Extremely disappointed with the purchase. The canvas arrived with visible scratches and the colors were dull. The quality is far below what was advertised, and I regret buying it.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(373, 14, 32, 4, 'The canvas art is a great addition to my office space. The colors are vibrant, and the abstract design sparks creativity. However, the price seems a bit high for the size of the artwork.', '2023-12-04 21:08:47', '2023-12-04 21:08:47'),
(374, 4, 10, 4, 'Beautifully crafted and perfect for salads. Just wish it was a bit larger.', '2023-12-04 21:12:24', '2023-12-04 21:12:24'),
(375, 4, 11, 5, 'Absolutely love this bowl! It\'s a work of art and functional too.', '2023-12-04 21:12:24', '2023-12-04 21:12:24'),
(376, 4, 12, 3, 'Good quality, but the color is a bit different than what I expected.', '2023-12-04 21:12:24', '2023-12-04 21:12:24'),
(377, 4, 13, 5, 'Perfect centerpiece for my dining table. Everyone compliments it.', '2023-12-04 21:12:24', '2023-12-04 21:12:24'),
(378, 4, 14, 4, 'Sturdy and well-made, but requires careful maintenance.', '2023-12-04 21:12:24', '2023-12-04 21:12:24'),
(379, 17, 15, 4, 'Great rustic look, but a bit heavier than I anticipated.', '2023-12-04 21:12:32', '2023-12-04 21:12:32'),
(380, 17, 16, 5, 'This tray is just stunning and adds charm to our brunches.', '2023-12-04 21:12:32', '2023-12-04 21:12:32'),
(381, 17, 17, 3, 'Looks good, but not as smooth as I\'d like. Be careful of splinters.', '2023-12-04 21:12:32', '2023-12-04 21:12:32'),
(382, 17, 18, 5, 'A perfect mix of rustic and elegance. Very durable!', '2023-12-04 21:12:32', '2023-12-04 21:12:32'),
(383, 17, 19, 2, 'The tray is okay, but it arrived with a small crack on the side.', '2023-12-04 21:12:32', '2023-12-04 21:12:32'),
(384, 18, 20, 5, 'Superb quality and finish. Protects my table perfectly.', '2023-12-04 21:12:37', '2023-12-04 21:12:37'),
(385, 18, 21, 3, 'Functional, but one of the coasters is not level.', '2023-12-04 21:12:37', '2023-12-04 21:12:37'),
(386, 18, 22, 5, 'Elegant and durable. They look great on my coffee table.', '2023-12-04 21:12:37', '2023-12-04 21:12:37'),
(387, 18, 23, 4, 'Love the design, but they are a bit thinner than I expected.', '2023-12-04 21:12:37', '2023-12-04 21:12:37'),
(388, 18, 24, 2, 'Nice looking but started to warp after a few uses.', '2023-12-04 21:12:37', '2023-12-04 21:12:37'),
(389, 19, 25, 5, 'Gorgeous frame, it really highlights the picture inside.', '2023-12-04 21:13:48', '2023-12-04 21:13:48'),
(390, 19, 26, 4, 'Beautiful craftsmanship, but the hanging mechanism is a bit flimsy.', '2023-12-04 21:13:48', '2023-12-04 21:13:48'),
(391, 19, 27, 3, 'Okay, but the color is darker than shown in the pictures.', '2023-12-04 21:13:48', '2023-12-04 21:13:48'),
(392, 19, 28, 4, 'Lovely detail in the carving. A real artisan product.', '2023-12-04 21:13:48', '2023-12-04 21:13:48'),
(393, 19, 29, 5, 'This frame added such a warm, rustic touch to my room.', '2023-12-04 21:13:48', '2023-12-04 21:13:48'),
(394, 11, 30, 5, 'A timeless piece. The leather quality is top-notch.', '2023-12-04 21:14:01', '2023-12-04 21:14:01'),
(395, 11, 31, 4, 'Stylish and functional, though a bit tight for all my cards.', '2023-12-04 21:14:01', '2023-12-04 21:14:01'),
(396, 11, 32, 2, 'Looks good but started to show wear quite quickly.', '2023-12-04 21:14:01', '2023-12-04 21:14:01'),
(397, 11, 10, 5, 'Perfect size, great material. Feels like it will last a lifetime.', '2023-12-04 21:14:01', '2023-12-04 21:14:01'),
(398, 11, 11, 3, 'Decent wallet, but not as many compartments as I\'d like.', '2023-12-04 21:14:01', '2023-12-04 21:14:01'),
(399, 12, 12, 4, 'Beautifully woven and warm. A bit scratchy, though.', '2023-12-04 21:14:08', '2023-12-04 21:14:08'),
(400, 12, 13, 5, 'Absolutely gorgeous scarf, the craftsmanship is excellent.', '2023-12-04 21:14:08', '2023-12-04 21:14:08'),
(401, 12, 14, 3, 'Nice pattern, but the colors were not as vibrant as in the photo.', '2023-12-04 21:14:08', '2023-12-04 21:14:08'),
(402, 12, 15, 5, 'Perfect for chilly days, very cozy and stylish.', '2023-12-04 21:14:08', '2023-12-04 21:14:08'),
(404, 20, 17, 5, 'High-quality leather and stitching. Fits perfectly.', '2023-12-04 21:14:31', '2023-12-04 21:14:31'),
(405, 20, 18, 3, 'Looks good, but the buckle feels a bit flimsy.', '2023-12-04 21:14:31', '2023-12-04 21:14:31'),
(406, 20, 19, 5, 'This belt is exceptional. The attention to detail is evident.', '2023-12-04 21:14:31', '2023-12-04 21:14:31'),
(407, 20, 20, 4, 'Durable and stylish, though it took some time to break in.', '2023-12-04 21:14:31', '2023-12-04 21:14:31'),
(408, 20, 21, 1, 'Not very comfortable, and the color started fading quickly.', '2023-12-04 21:14:31', '2023-12-04 21:14:31'),
(409, 17, 21, 5, 'Very Cool!', '2023-12-04 20:31:15', '2023-12-04 20:31:15'),
(411, 4, 40, 1, 'ngon', '2024-04-02 06:50:58', '2024-04-02 06:50:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `buyer_id`, `product_id`, `quantity`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 11, 1, 29.99, 'sent', '2023-11-21 19:29:02', '2023-11-22 16:56:00'),
(11, 1, 12, 1, 34.99, 'sent', '2023-11-21 20:06:24', '2023-11-23 12:17:08'),
(12, 1, 11, 1, 29.99, 'sent', '2023-11-22 11:20:56', '2023-11-23 12:12:48'),
(13, 1, 12, 1, 34.99, 'sent', '2023-11-22 11:20:56', '2023-11-22 15:15:48'),
(14, 1, 22, 1, 27.99, 'sent', '2023-11-22 11:20:56', '2023-11-22 15:14:15'),
(15, 1, 27, 2, 120.00, 'sent', '2023-11-22 17:18:51', '2023-11-22 17:19:34'),
(16, 16, 17, 1, 39.99, 'sent', '2023-11-23 15:51:47', '2023-11-27 08:07:12'),
(17, 16, 27, 1, 60.00, 'pending', '2023-11-23 16:08:06', '2023-11-23 16:08:06'),
(18, 16, 24, 1, 24.99, 'pending', '2023-11-23 16:10:14', '2023-11-23 16:10:14'),
(19, 16, 25, 1, 55.00, 'pending', '2023-11-23 16:13:11', '2023-11-23 16:13:11'),
(20, 1, 12, 1, 34.99, 'sent', '2023-11-24 17:45:13', '2023-11-25 09:05:55'),
(21, 1, 25, 1, 55.00, 'pending', '2023-11-24 17:58:56', '2023-11-24 17:58:56'),
(22, 1, 15, 1, 49.99, 'pending', '2023-11-24 18:00:19', '2023-11-24 18:00:19'),
(23, 1, 29, 1, 49.99, 'pending', '2023-11-24 18:12:39', '2023-11-24 18:12:39'),
(24, 1, 29, 1, 49.99, 'pending', '2023-11-24 18:46:22', '2023-11-24 18:46:22'),
(25, 1, 16, 1, 24.99, 'pending', '2023-11-24 18:46:39', '2023-11-24 18:46:39'),
(26, 1, 11, 1, 29.99, 'pending', '2023-11-24 18:47:25', '2023-11-24 18:47:25'),
(28, 1, 12, 1, 34.99, 'pending', '2023-11-24 19:00:02', '2023-11-24 19:00:02'),
(29, 1, 13, 1, 19.99, 'pending', '2023-11-24 19:27:14', '2023-11-24 19:27:14'),
(30, 1, 14, 1, 89.99, 'pending', '2023-11-24 19:34:50', '2023-11-24 19:34:50'),
(31, 1, 15, 1, 49.99, 'pending', '2023-11-24 19:34:50', '2023-11-24 19:34:50'),
(32, 1, 20, 1, 35.99, 'pending', '2023-11-24 19:38:48', '2023-11-24 19:38:48'),
(33, 1, 28, 1, 12.99, 'pending', '2023-11-25 09:28:03', '2023-11-25 09:28:03'),
(36, 1, 13, 1, 19.99, 'pending', '2023-11-25 16:26:47', '2023-11-25 16:26:47'),
(37, 1, 29, 1, 49.99, 'pending', '2023-11-25 16:59:27', '2023-11-25 16:59:27'),
(38, 1, 14, 1, 89.99, 'pending', '2023-11-27 08:10:43', '2023-11-27 08:10:43'),
(39, 1, 11, 1, 29.99, 'sent', '2023-11-29 16:03:18', '2023-11-29 16:04:35'),
(40, 1, 12, 1, 34.99, 'sent', '2023-11-29 16:03:18', '2023-11-29 16:04:37'),
(41, 1, 16, 1, 24.99, 'pending', '2023-11-30 13:40:00', '2023-11-30 13:40:00'),
(42, 1, 16, 1, 24.99, 'pending', '2023-11-30 13:42:05', '2023-11-30 13:42:05'),
(43, 1, 16, 1, 24.99, 'pending', '2023-11-30 13:45:39', '2023-11-30 13:45:39'),
(44, 1, 16, 1, 24.99, 'pending', '2023-11-30 13:46:27', '2023-11-30 13:46:27'),
(45, 1, 13, 1, 19.99, 'pending', '2023-11-30 13:47:30', '2023-11-30 13:47:30'),
(46, 1, 13, 1, 19.99, 'pending', '2023-11-30 13:49:31', '2023-11-30 13:49:31'),
(47, 1, 22, 1, 27.99, 'pending', '2023-11-30 17:37:12', '2023-11-30 17:37:12'),
(48, 1, 13, 1, 19.99, 'pending', '2023-11-30 17:37:12', '2023-11-30 17:37:12'),
(49, 1, 11, 1, 29.99, 'pending', '2023-11-30 18:09:52', '2023-11-30 18:09:52'),
(50, 1, 20, 1, 35.99, 'pending', '2023-11-30 18:41:19', '2023-11-30 18:41:19'),
(51, 1, 28, 2, 25.98, 'pending', '2023-11-30 18:46:29', '2023-11-30 18:46:29'),
(52, 1, 21, 1, 40.00, 'pending', '2023-11-30 18:52:30', '2023-11-30 18:52:30'),
(53, 1, 25, 1, 55.00, 'pending', '2023-11-30 19:01:44', '2023-11-30 19:01:44'),
(54, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:06:15', '2023-11-30 19:06:15'),
(55, 1, 14, 1, 89.99, 'pending', '2023-11-30 19:10:08', '2023-11-30 19:10:08'),
(56, 1, 15, 1, 49.99, 'pending', '2023-11-30 19:10:08', '2023-11-30 19:10:08'),
(57, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:11:21', '2023-11-30 19:11:21'),
(58, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:16:04', '2023-11-30 19:16:04'),
(59, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:21:23', '2023-11-30 19:21:23'),
(60, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:22:46', '2023-11-30 19:22:46'),
(61, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:26:22', '2023-11-30 19:26:22'),
(62, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:29:01', '2023-11-30 19:29:01'),
(63, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:35:47', '2023-11-30 19:35:47'),
(64, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:37:39', '2023-11-30 19:37:39'),
(65, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:42:16', '2023-11-30 19:42:16'),
(66, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:52:32', '2023-11-30 19:52:32'),
(67, 1, 11, 1, 29.99, 'pending', '2023-11-30 19:56:01', '2023-11-30 19:56:01'),
(68, 1, 12, 1, 34.99, 'pending', '2023-12-01 15:59:07', '2023-12-01 15:59:07'),
(69, 1, 14, 1, 89.99, 'pending', '2023-12-01 16:10:49', '2023-12-01 16:10:49'),
(70, 1, 20, 1, 48.98, 'pending', '2023-12-01 16:34:33', '2023-12-01 16:34:33'),
(71, 1, 21, 1, 52.99, 'pending', '2023-12-01 16:34:33', '2023-12-01 16:34:33'),
(72, 1, 23, 1, 69.99, 'pending', '2023-12-01 16:41:04', '2023-12-01 16:41:04'),
(73, 1, 22, 1, 27.99, 'pending', '2023-12-01 16:41:04', '2023-12-01 16:41:04'),
(74, 1, 26, 1, 32.99, 'pending', '2023-12-01 16:50:03', '2023-12-01 16:50:03'),
(75, 1, 27, 1, 60.00, 'pending', '2023-12-01 16:50:03', '2023-12-01 16:50:03'),
(76, 1, 11, 1, 29.99, 'sent', '2023-12-01 20:04:03', '2023-12-02 17:47:09'),
(77, 1, 20, 4, 143.96, 'pending', '2023-12-04 07:48:28', '2023-12-04 07:48:28'),
(78, 40, 22, 1, 27.99, 'pending', '2024-03-14 17:34:26', '2024-03-14 17:34:26'),
(79, 41, 4, 1, 60.99, 'pending', '2024-03-15 20:31:19', '2024-03-15 20:31:19'),
(80, 45, 4, 1, 60.99, 'pending', '2024-03-18 16:59:25', '2024-03-18 16:59:25'),
(81, 45, 46, 1, 30.00, 'sent', '2024-03-18 17:03:53', '2024-03-18 17:04:31'),
(82, 40, 11, 1, 29.99, 'pending', '2024-03-31 06:31:47', '2024-03-31 06:31:47'),
(83, 40, 4, 1, 60.99, 'pending', '2024-03-31 06:31:47', '2024-03-31 06:31:47'),
(84, 50, 51, 1, 9.00, 'sent', '2024-04-01 07:03:58', '2024-04-01 07:04:36'),
(85, 50, 49, 1, 12.00, 'sent', '2024-04-01 07:03:58', '2024-04-01 07:04:34'),
(86, 40, 4, 1, 60.99, 'pending', '2024-04-02 06:58:29', '2024-04-02 06:58:29'),
(87, 50, 57, 1, 25.00, 'pending', '2024-04-03 01:12:14', '2024-04-03 01:12:14'),
(88, 50, 61, 1, 32.00, 'pending', '2024-04-03 01:12:14', '2024-04-03 01:12:14'),
(89, 50, 49, 1, 12.00, 'pending', '2024-04-03 01:14:42', '2024-04-03 01:14:42'),
(90, 50, 56, 1, 20.00, 'pending', '2024-04-03 01:14:42', '2024-04-03 01:14:42'),
(91, 50, 53, 1, 12.00, 'pending', '2024-04-03 01:15:47', '2024-04-03 01:15:47'),
(92, 50, 61, 1, 32.00, 'pending', '2024-04-03 01:15:47', '2024-04-03 01:15:47'),
(93, 50, 50, 1, 10.00, 'pending', '2024-04-03 01:16:21', '2024-04-03 01:16:21'),
(94, 50, 57, 1, 25.00, 'pending', '2024-04-03 01:16:21', '2024-04-03 01:16:21'),
(95, 50, 62, 1, 18.00, 'pending', '2024-04-03 01:17:47', '2024-04-03 01:17:47'),
(96, 50, 63, 1, 25.00, 'pending', '2024-04-03 01:17:47', '2024-04-03 01:17:47'),
(97, 50, 65, 1, 17.00, 'pending', '2024-04-03 01:18:20', '2024-04-03 01:18:20'),
(98, 50, 66, 1, 17.00, 'pending', '2024-04-03 01:18:20', '2024-04-03 01:18:20'),
(99, 50, 68, 1, 12.00, 'pending', '2024-04-03 01:19:40', '2024-04-03 01:19:40'),
(100, 50, 71, 1, 15.00, 'pending', '2024-04-03 01:19:40', '2024-04-03 01:19:40'),
(101, 50, 84, 1, 170.00, 'pending', '2024-04-03 01:21:24', '2024-04-03 01:21:24'),
(102, 50, 123, 1, 50.00, 'pending', '2024-04-03 01:21:24', '2024-04-03 01:21:24'),
(103, 50, 91, 1, 25.00, 'pending', '2024-04-03 01:25:28', '2024-04-03 01:25:28'),
(104, 50, 92, 1, 25.00, 'pending', '2024-04-03 01:25:28', '2024-04-03 01:25:28'),
(105, 50, 47, 1, 16.00, 'pending', '2024-04-03 01:26:22', '2024-04-03 01:26:22'),
(106, 50, 51, 1, 9.00, 'pending', '2024-04-03 01:26:22', '2024-04-03 01:26:22'),
(107, 50, 69, 1, 18.00, 'pending', '2024-04-03 01:27:49', '2024-04-03 01:27:49'),
(108, 50, 103, 1, 18.00, 'pending', '2024-04-03 01:27:49', '2024-04-03 01:27:49'),
(109, 50, 73, 1, 21.00, 'pending', '2024-04-03 01:29:00', '2024-04-03 01:29:00'),
(110, 50, 115, 1, 20.00, 'pending', '2024-04-03 01:29:00', '2024-04-03 01:29:00'),
(111, 50, 142, 1, 25.00, 'pending', '2024-04-03 01:30:31', '2024-04-03 01:30:31'),
(112, 50, 141, 1, 25.00, 'pending', '2024-04-03 01:30:31', '2024-04-03 01:30:31'),
(113, 50, 109, 1, 14.00, 'pending', '2024-04-03 01:32:16', '2024-04-03 01:32:16'),
(114, 50, 110, 1, 14.00, 'pending', '2024-04-03 01:32:16', '2024-04-03 01:32:16'),
(115, 50, 70, 1, 11.00, 'pending', '2024-04-03 01:33:07', '2024-04-03 01:33:07'),
(116, 50, 74, 1, 19.00, 'pending', '2024-04-03 01:33:07', '2024-04-03 01:33:07'),
(117, 50, 150, 1, 18.00, 'pending', '2024-04-03 01:34:52', '2024-04-03 01:34:52'),
(118, 50, 148, 1, 30.00, 'pending', '2024-04-03 01:34:52', '2024-04-03 01:34:52'),
(119, 50, 87, 1, 8.00, 'pending', '2024-04-03 01:35:51', '2024-04-03 01:35:51'),
(120, 50, 88, 1, 7.00, 'pending', '2024-04-03 01:35:51', '2024-04-03 01:35:51'),
(121, 50, 97, 1, 25.00, 'pending', '2024-04-03 01:37:16', '2024-04-03 01:37:16'),
(122, 50, 104, 1, 12.00, 'pending', '2024-04-03 01:37:16', '2024-04-03 01:37:16'),
(123, 50, 110, 1, 14.00, 'pending', '2024-04-03 01:38:29', '2024-04-03 01:38:29'),
(124, 50, 117, 1, 18.00, 'pending', '2024-04-03 01:38:29', '2024-04-03 01:38:29'),
(125, 50, 151, 1, 500.00, 'pending', '2024-04-03 01:40:00', '2024-04-03 01:40:00'),
(126, 50, 135, 1, 33.00, 'pending', '2024-04-03 01:40:00', '2024-04-03 01:40:00'),
(127, 50, 120, 1, 15.00, 'pending', '2024-04-03 01:43:38', '2024-04-03 01:43:38'),
(128, 50, 122, 1, 8.00, 'pending', '2024-04-03 01:43:38', '2024-04-03 01:43:38'),
(129, 50, 116, 1, 20.00, 'pending', '2024-04-03 01:44:15', '2024-04-03 01:44:15'),
(130, 50, 124, 1, 18.00, 'pending', '2024-04-03 01:44:15', '2024-04-03 01:44:15'),
(131, 50, 144, 1, 25.00, 'pending', '2024-04-03 01:45:24', '2024-04-03 01:45:24'),
(132, 50, 145, 1, 25.00, 'pending', '2024-04-03 01:45:24', '2024-04-03 01:45:24'),
(133, 50, 131, 1, 22.00, 'pending', '2024-04-03 01:46:07', '2024-04-03 01:46:07'),
(134, 50, 130, 1, 19.00, 'pending', '2024-04-03 01:46:07', '2024-04-03 01:46:07'),
(135, 50, 95, 1, 22.00, 'pending', '2024-04-03 01:48:29', '2024-04-03 01:48:29'),
(136, 50, 96, 1, 15.00, 'pending', '2024-04-03 01:48:30', '2024-04-03 01:48:30'),
(137, 50, 83, 1, 5.00, 'pending', '2024-04-03 01:49:28', '2024-04-03 01:49:28'),
(138, 50, 118, 1, 27.00, 'pending', '2024-04-03 01:49:28', '2024-04-03 01:49:28'),
(139, 50, 117, 1, 18.00, 'pending', '2024-04-03 01:50:41', '2024-04-03 01:50:41'),
(140, 50, 128, 1, 16.00, 'pending', '2024-04-03 01:50:41', '2024-04-03 01:50:41'),
(141, 50, 98, 1, 8.00, 'pending', '2024-04-03 01:52:09', '2024-04-03 01:52:09'),
(142, 50, 99, 1, 7.00, 'pending', '2024-04-03 01:52:09', '2024-04-03 01:52:09'),
(143, 50, 74, 1, 19.00, 'pending', '2024-04-03 01:53:20', '2024-04-03 01:53:20'),
(144, 50, 76, 1, 11.00, 'pending', '2024-04-03 01:53:20', '2024-04-03 01:53:20'),
(145, 50, 75, 1, 13.00, 'pending', '2024-04-03 01:55:05', '2024-04-03 01:55:05'),
(146, 50, 77, 1, 15.00, 'pending', '2024-04-03 01:55:05', '2024-04-03 01:55:05'),
(147, 50, 78, 1, 19.00, 'pending', '2024-04-03 01:56:12', '2024-04-03 01:56:12'),
(148, 50, 79, 1, 19.00, 'pending', '2024-04-03 01:56:12', '2024-04-03 01:56:12'),
(149, 50, 123, 1, 50.00, 'pending', '2024-04-03 01:57:19', '2024-04-03 01:57:19'),
(150, 50, 134, 1, 30.00, 'pending', '2024-04-03 01:57:19', '2024-04-03 01:57:19'),
(151, 50, 149, 1, 30.00, 'pending', '2024-04-03 01:58:40', '2024-04-03 01:58:40'),
(152, 50, 148, 1, 30.00, 'pending', '2024-04-03 01:58:40', '2024-04-03 01:58:40'),
(153, 50, 52, 1, 15.00, 'pending', '2024-04-03 19:46:45', '2024-04-03 19:46:45'),
(154, 50, 82, 1, 20.00, 'pending', '2024-04-03 19:46:45', '2024-04-03 19:46:45'),
(155, 50, 47, 1, 16.00, 'pending', '2024-04-03 19:48:07', '2024-04-03 19:48:07'),
(156, 50, 49, 1, 12.00, 'pending', '2024-04-03 19:48:07', '2024-04-03 19:48:07'),
(157, 50, 53, 1, 12.00, 'pending', '2024-04-03 19:48:53', '2024-04-03 19:48:53'),
(158, 50, 51, 1, 9.00, 'pending', '2024-04-03 19:49:36', '2024-04-03 19:49:36'),
(159, 50, 54, 1, 13.00, 'pending', '2024-04-03 19:51:09', '2024-04-03 19:51:09'),
(160, 50, 65, 1, 17.00, 'pending', '2024-04-03 19:51:09', '2024-04-03 19:51:09'),
(161, 50, 59, 1, 19.00, 'pending', '2024-04-03 19:51:59', '2024-04-03 19:51:59'),
(162, 50, 73, 1, 21.00, 'pending', '2024-04-03 19:51:59', '2024-04-03 19:51:59'),
(163, 50, 74, 1, 19.00, 'pending', '2024-04-03 19:53:07', '2024-04-03 19:53:07'),
(164, 50, 97, 1, 25.00, 'pending', '2024-04-03 19:53:07', '2024-04-03 19:53:07'),
(165, 50, 68, 1, 12.00, 'pending', '2024-04-03 19:54:26', '2024-04-03 19:54:26'),
(166, 50, 84, 1, 170.00, 'pending', '2024-04-03 19:54:26', '2024-04-03 19:54:26'),
(167, 50, 101, 1, 12.00, 'pending', '2024-04-03 19:55:07', '2024-04-03 19:55:07'),
(168, 50, 61, 1, 32.00, 'pending', '2024-04-03 19:56:06', '2024-04-03 19:56:06'),
(169, 50, 69, 1, 18.00, 'pending', '2024-04-03 19:57:16', '2024-04-03 19:57:16'),
(170, 50, 61, 1, 32.00, 'pending', '2024-04-03 19:57:16', '2024-04-03 19:57:16'),
(171, 50, 110, 1, 14.00, 'pending', '2024-04-03 19:58:08', '2024-04-03 19:58:08'),
(172, 50, 78, 1, 19.00, 'pending', '2024-04-03 20:49:09', '2024-04-03 20:49:09'),
(173, 50, 56, 1, 20.00, 'pending', '2024-04-03 20:50:10', '2024-04-03 20:50:10'),
(174, 50, 74, 1, 19.00, 'pending', '2024-04-03 20:50:10', '2024-04-03 20:50:10'),
(175, 50, 97, 1, 25.00, 'pending', '2024-04-03 20:52:11', '2024-04-03 20:52:11'),
(176, 50, 132, 1, 20.00, 'pending', '2024-04-03 20:52:11', '2024-04-03 20:52:11'),
(177, 50, 123, 1, 50.00, 'pending', '2024-04-03 20:52:11', '2024-04-03 20:52:11'),
(178, 50, 151, 1, 500.00, 'pending', '2024-04-03 20:53:07', '2024-04-03 20:53:07'),
(179, 50, 123, 1, 50.00, 'pending', '2024-04-03 20:53:07', '2024-04-03 20:53:07'),
(180, 50, 135, 1, 33.00, 'pending', '2024-04-03 20:53:07', '2024-04-03 20:53:07'),
(181, 50, 144, 1, 25.00, 'pending', '2024-04-03 20:53:49', '2024-04-03 20:53:49'),
(182, 50, 134, 1, 30.00, 'pending', '2024-04-03 20:54:27', '2024-04-03 20:54:27'),
(183, 50, 75, 1, 13.00, 'pending', '2024-04-04 17:19:25', '2024-04-04 17:19:25'),
(184, 50, 109, 1, 14.00, 'pending', '2024-04-04 17:19:25', '2024-04-04 17:19:25'),
(185, 50, 90, 1, 7.00, 'pending', '2024-04-04 17:19:25', '2024-04-04 17:19:25'),
(186, 50, 61, 1, 32.00, 'pending', '2024-04-04 17:21:15', '2024-04-04 17:21:15'),
(187, 50, 83, 1, 5.00, 'pending', '2024-04-04 17:21:15', '2024-04-04 17:21:15'),
(188, 50, 94, 1, 30.00, 'pending', '2024-04-04 17:21:15', '2024-04-04 17:21:15'),
(189, 50, 59, 1, 19.00, 'pending', '2024-04-04 17:22:54', '2024-04-04 17:22:54'),
(190, 50, 122, 1, 8.00, 'pending', '2024-04-04 17:22:54', '2024-04-04 17:22:54'),
(191, 50, 129, 1, 16.00, 'pending', '2024-04-04 17:24:03', '2024-04-04 17:24:03'),
(192, 50, 126, 1, 17.00, 'pending', '2024-04-04 17:24:03', '2024-04-04 17:24:03'),
(193, 50, 99, 1, 7.00, 'pending', '2024-04-04 17:25:23', '2024-04-04 17:25:23'),
(194, 50, 124, 1, 18.00, 'pending', '2024-04-04 17:25:23', '2024-04-04 17:25:23'),
(195, 50, 133, 1, 19.00, 'pending', '2024-04-04 17:27:42', '2024-04-04 17:27:42'),
(196, 50, 139, 1, 22.00, 'pending', '2024-04-04 17:27:42', '2024-04-04 17:27:42'),
(197, 50, 106, 1, 14.00, 'pending', '2024-04-04 17:28:20', '2024-04-04 17:28:20'),
(198, 50, 115, 1, 20.00, 'pending', '2024-04-04 17:29:23', '2024-04-04 17:29:23'),
(199, 50, 119, 1, 14.00, 'pending', '2024-04-04 17:29:23', '2024-04-04 17:29:23'),
(200, 50, 144, 1, 25.00, 'pending', '2024-04-04 17:30:25', '2024-04-04 17:30:25'),
(201, 50, 147, 1, 25.00, 'pending', '2024-04-04 17:30:25', '2024-04-04 17:30:25'),
(202, 50, 59, 2, 38.00, 'pending', '2024-04-04 17:35:18', '2024-04-04 17:35:18'),
(203, 50, 70, 1, 11.00, 'pending', '2024-04-04 17:37:24', '2024-04-04 17:37:24'),
(204, 50, 78, 1, 19.00, 'pending', '2024-04-04 17:37:24', '2024-04-04 17:37:24'),
(205, 50, 63, 1, 25.00, 'pending', '2024-04-04 17:38:31', '2024-04-04 17:38:31'),
(206, 50, 62, 1, 18.00, 'pending', '2024-04-04 17:38:31', '2024-04-04 17:38:31'),
(207, 50, 56, 1, 20.00, 'pending', '2024-04-04 17:39:18', '2024-04-04 17:39:18'),
(208, 50, 57, 1, 25.00, 'pending', '2024-04-04 17:39:18', '2024-04-04 17:39:18'),
(209, 50, 52, 1, 15.00, 'pending', '2024-04-04 17:40:09', '2024-04-04 17:40:09'),
(210, 50, 51, 1, 9.00, 'pending', '2024-04-04 17:40:09', '2024-04-04 17:40:09'),
(211, 50, 75, 1, 13.00, 'pending', '2024-04-04 17:43:06', '2024-04-04 17:43:06'),
(212, 50, 76, 1, 11.00, 'pending', '2024-04-04 17:43:06', '2024-04-04 17:43:06'),
(213, 50, 151, 1, 500.00, 'pending', '2024-04-04 17:46:00', '2024-04-04 17:46:00'),
(214, 50, 135, 1, 33.00, 'pending', '2024-04-04 17:46:00', '2024-04-04 17:46:00'),
(215, 50, 49, 1, 12.00, 'pending', '2024-04-04 17:46:31', '2024-04-04 17:46:31'),
(216, 50, 50, 1, 10.00, 'pending', '2024-04-04 17:46:31', '2024-04-04 17:46:31'),
(217, 50, 53, 1, 12.00, 'pending', '2024-04-04 17:47:09', '2024-04-04 17:47:09'),
(218, 50, 54, 1, 13.00, 'pending', '2024-04-04 17:47:09', '2024-04-04 17:47:09'),
(219, 50, 51, 1, 9.00, 'pending', '2024-04-04 17:47:45', '2024-04-04 17:47:45'),
(220, 50, 68, 1, 12.00, 'pending', '2024-04-04 17:47:45', '2024-04-04 17:47:45'),
(221, 50, 61, 1, 32.00, 'pending', '2024-04-04 17:48:39', '2024-04-04 17:48:39'),
(222, 50, 64, 1, 22.00, 'pending', '2024-04-04 17:48:39', '2024-04-04 17:48:39'),
(223, 50, 71, 1, 15.00, 'pending', '2024-04-04 17:49:21', '2024-04-04 17:49:21'),
(224, 50, 72, 1, 17.00, 'pending', '2024-04-04 17:49:21', '2024-04-04 17:49:21'),
(225, 50, 65, 1, 17.00, 'pending', '2024-04-04 17:49:56', '2024-04-04 17:49:56'),
(226, 50, 66, 1, 17.00, 'pending', '2024-04-04 17:49:56', '2024-04-04 17:49:56'),
(227, 50, 74, 1, 19.00, 'pending', '2024-04-04 17:50:30', '2024-04-04 17:50:30'),
(228, 50, 83, 1, 5.00, 'pending', '2024-04-04 17:50:31', '2024-04-04 17:50:31'),
(229, 50, 77, 1, 15.00, 'pending', '2024-04-04 17:52:02', '2024-04-04 17:52:02'),
(230, 50, 81, 1, 22.00, 'pending', '2024-04-04 17:52:02', '2024-04-04 17:52:02'),
(231, 50, 85, 1, 15.00, 'pending', '2024-04-04 17:53:00', '2024-04-04 17:53:00'),
(232, 50, 84, 1, 170.00, 'pending', '2024-04-04 17:53:00', '2024-04-04 17:53:00'),
(233, 50, 76, 1, 11.00, 'pending', '2024-04-04 17:54:59', '2024-04-04 17:54:59'),
(234, 50, 79, 1, 19.00, 'pending', '2024-04-04 17:54:59', '2024-04-04 17:54:59'),
(235, 50, 110, 1, 14.00, 'pending', '2024-04-04 17:56:10', '2024-04-04 17:56:10'),
(236, 50, 109, 1, 14.00, 'pending', '2024-04-04 17:56:10', '2024-04-04 17:56:10'),
(237, 50, 82, 1, 20.00, 'pending', '2024-04-04 17:57:25', '2024-04-04 17:57:25'),
(238, 50, 85, 1, 15.00, 'pending', '2024-04-04 17:57:25', '2024-04-04 17:57:25'),
(239, 50, 68, 1, 12.00, 'pending', '2024-04-04 17:58:12', '2024-04-04 17:58:12'),
(240, 50, 74, 1, 19.00, 'pending', '2024-04-04 17:58:12', '2024-04-04 17:58:12'),
(241, 50, 53, 1, 12.00, 'pending', '2024-04-04 17:59:02', '2024-04-04 17:59:02'),
(242, 50, 52, 1, 15.00, 'pending', '2024-04-04 17:59:02', '2024-04-04 17:59:02'),
(243, 50, 49, 1, 12.00, 'pending', '2024-04-04 17:59:38', '2024-04-04 17:59:38'),
(244, 50, 50, 1, 10.00, 'pending', '2024-04-04 17:59:38', '2024-04-04 17:59:38'),
(245, 50, 59, 1, 19.00, 'pending', '2024-04-04 18:00:42', '2024-04-04 18:00:42'),
(246, 50, 61, 1, 32.00, 'pending', '2024-04-04 18:00:42', '2024-04-04 18:00:42'),
(247, 50, 61, 1, 32.00, 'pending', '2024-04-04 18:02:25', '2024-04-04 18:02:25'),
(248, 50, 64, 1, 22.00, 'pending', '2024-04-04 18:02:25', '2024-04-04 18:02:25'),
(249, 50, 73, 1, 21.00, 'pending', '2024-04-04 18:03:12', '2024-04-04 18:03:12'),
(250, 50, 80, 1, 18.00, 'pending', '2024-04-04 18:03:12', '2024-04-04 18:03:12'),
(251, 50, 105, 1, 10.00, 'pending', '2024-04-04 18:03:40', '2024-04-04 18:03:40'),
(252, 50, 112, 1, 9.00, 'pending', '2024-04-04 18:03:40', '2024-04-04 18:03:40'),
(253, 50, 77, 1, 15.00, 'pending', '2024-04-04 18:04:51', '2024-04-04 18:04:51'),
(254, 50, 78, 1, 19.00, 'pending', '2024-04-04 18:04:51', '2024-04-04 18:04:51'),
(255, 50, 55, 1, 10.00, 'pending', '2024-04-04 18:05:58', '2024-04-04 18:05:58'),
(256, 50, 56, 1, 20.00, 'pending', '2024-04-04 18:05:58', '2024-04-04 18:05:58'),
(257, 50, 61, 1, 32.00, 'pending', '2024-04-04 18:06:50', '2024-04-04 18:06:50'),
(258, 50, 63, 1, 25.00, 'pending', '2024-04-04 18:06:50', '2024-04-04 18:06:50'),
(259, 50, 73, 1, 21.00, 'pending', '2024-04-04 18:07:42', '2024-04-04 18:07:42'),
(260, 50, 75, 1, 13.00, 'pending', '2024-04-04 18:07:42', '2024-04-04 18:07:42'),
(261, 50, 57, 1, 25.00, 'pending', '2024-04-04 18:08:13', '2024-04-04 18:08:13'),
(262, 50, 61, 1, 32.00, 'pending', '2024-04-04 18:08:13', '2024-04-04 18:08:13'),
(263, 50, 61, 1, 32.00, 'pending', '2024-04-04 18:08:59', '2024-04-04 18:08:59'),
(264, 50, 68, 1, 12.00, 'pending', '2024-04-04 18:08:59', '2024-04-04 18:08:59'),
(265, 50, 76, 1, 11.00, 'pending', '2024-04-04 18:09:33', '2024-04-04 18:09:33'),
(266, 50, 78, 1, 19.00, 'pending', '2024-04-04 18:09:33', '2024-04-04 18:09:33'),
(267, 50, 86, 1, 8.00, 'pending', '2024-04-04 18:10:07', '2024-04-04 18:10:07'),
(268, 50, 88, 1, 7.00, 'pending', '2024-04-04 18:10:07', '2024-04-04 18:10:07'),
(269, 50, 103, 1, 18.00, 'pending', '2024-04-04 18:10:40', '2024-04-04 18:10:40'),
(270, 50, 56, 1, 20.00, 'pending', '2024-04-04 18:10:40', '2024-04-04 18:10:40'),
(271, 50, 97, 1, 25.00, 'pending', '2024-04-04 18:11:19', '2024-04-04 18:11:19'),
(272, 50, 102, 1, 14.00, 'pending', '2024-04-04 18:11:19', '2024-04-04 18:11:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isArtisan` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `isArtisan`) VALUES
(1, 'Seweryn Czabanowski', 'seweryn_cz@outlook.com', NULL, '$2y$12$Lx4yjybUIz9Bfs.L/Ssfzu.evzsjd1ypIo970xrpj.US63kRCh8Qq', 'Lj2n8Kd6HhakJYugqL3zanEdsduJIF1yzVkDazvPI8f8hzXP5tBgqPAUGPL7', '2023-11-01 14:07:21', '2023-11-01 14:07:21', 1),
(10, 'John Doe', 'john@example.com', NULL, '$2y$12$fR.GGqbu9X196vY4xfFuS.rCaHzMmVt8Z95.c81BrW8mYZbC/BbmK', NULL, '2023-11-01 16:34:34', '2023-11-01 16:34:34', 0),
(11, 'Some Guy', 'someguy@email.com', NULL, '$2y$12$RuNqNdgbeYT5qSPWD5HH9.88AoMYPLJFARWVo1fnkr.ofvDxaa.pi', NULL, '2023-11-09 15:02:29', '2023-11-09 15:02:29', 0),
(12, 'Alice Smith', 'alice.smith@example.com', NULL, '$2y$12$RaeQYYWYlLw.hUrQRFQT5eS3q6sAOJupNzuVScycy7FH6dbu7fy0W', NULL, '2023-11-12 09:35:24', '2023-11-12 09:35:24', 0),
(13, 'Bob Johnson', 'bob.johnson@example.com', NULL, '$2y$12$0QTfm9rDLmJQ9dffh7hjnuR4gbEGUrU4SSTzb7LqiHuPRJCiJKMcO', NULL, '2023-11-12 09:35:24', '2023-11-12 09:35:24', 0),
(14, 'Charlie Williams', 'charlie.williams@example.com', NULL, '$2y$12$5Y8pFpUR0/r/1Sf/AM2/gOG/O3RGaCtbeOse5QDKLJYZ1vaRE.3OK', NULL, '2023-11-12 09:35:25', '2023-11-12 09:35:25', 0),
(15, 'Diana Brown', 'diana.brown@example.com', NULL, '$2y$12$O8sdj8oCnVn5DH6J7BMQKeFX7Ojse6AEgzMe2eG7reDyAt8xah0Uq', NULL, '2023-11-12 09:35:26', '2023-11-12 09:35:26', 0),
(16, 'Ethan Jones', 'ethan.jones@example.com', NULL, '$2y$12$Jptd18jPEK9UyoyBbc2EaOC.Bk0QQAIhzVZFs5k5vOhAzBXo55VgG', NULL, '2023-11-12 09:35:27', '2023-11-12 09:35:27', 1),
(17, 'Fiona Garcia', 'fiona.garcia@example.com', NULL, '$2y$12$qRNdId.NYA/D3jS5sGHN1OMbbmUlKiRDdZZ7eSWwJhbUWYslQZSky', NULL, '2023-11-12 09:35:27', '2023-11-12 09:35:27', 0),
(18, 'George Miller', 'george.miller@example.com', NULL, '$2y$12$4SY2cDgv2YoEq7jJpH2WUOzySFFbiUs8OHiM9bQpdg8WSkSY.SGTG', NULL, '2023-11-12 09:35:28', '2023-11-12 09:35:28', 0),
(19, 'Hannah Davis', 'hannah.davis@example.com', NULL, '$2y$12$0OMA73Mdn58p5dSDeGhSDeEemLxvsd6J5Tx/4c/Q9BSYhS3BteKfu', NULL, '2023-11-12 09:35:28', '2023-11-12 09:35:28', 0),
(20, 'Ian Rodriguez', 'ian.rodriguez@example.com', NULL, '$2y$12$8HpgkgvHEzXKbkDfUT4kAenz5cm0bjNOGkNpttEFGR.2Z3I//N5ly', NULL, '2023-11-12 09:35:29', '2023-11-12 09:35:29', 0),
(21, 'Julia Martinez', 'julia.martinez@example.com', NULL, '$2y$12$UxmaUmhKogV0laLZ5qTjn.4u66RaiKbjc0KShAo7O7nUmZZf2q5h2', NULL, '2023-11-12 09:35:30', '2023-11-12 09:35:30', 1),
(22, 'Kevin Hernandez', 'kevin.hernandez@example.com', NULL, '$2y$12$eugbvKUWnr7jCfrRZSjSmudCUVDx21dbmLr1xneeaf2R8HEZK6bhO', NULL, '2023-11-12 09:35:31', '2023-11-12 09:35:31', 0),
(23, 'Luna Lopez', 'luna.lopez@example.com', NULL, '$2y$12$C8Txdt.ScW7nhnFgyqJvse27mdS9WPRKJmRGTS1QkW4/VSrMHi4LG', NULL, '2023-11-12 09:35:31', '2023-11-12 09:35:31', 0),
(24, 'Max Gonzalez', 'max.gonzalez@example.com', NULL, '$2y$12$CLa5VyCeWkXgMp.VD/K7PeV1Pyoapc6BU8fe5GtMVbdtvAixeTt/a', NULL, '2023-11-12 09:35:32', '2023-11-12 09:35:32', 0),
(25, 'Nora Wilson', 'nora.wilson@example.com', NULL, '$2y$12$Kv.o83tvLz03DZtv7hLo4Oc7htYF6PRgaW6V7UH4dU3867JHzitaC', NULL, '2023-11-12 09:35:32', '2023-11-12 09:35:32', 0),
(26, 'Oscar Anderson', 'oscar.anderson@example.com', NULL, '$2y$12$lqkaVLPeCbtR7ny9SDUOf.grf2KCqGEP4aWYxuk6bydloNwngnKJ6', NULL, '2023-11-12 09:35:33', '2023-11-12 09:35:33', 0),
(27, 'Penny Thomas', 'penny.thomas@example.com', NULL, '$2y$12$ycDrVzVkWO0oV7DajCLKA./DUfOBo0MjeENJPXV5gTwBInYUjjjPm', NULL, '2023-11-12 09:35:33', '2023-11-12 09:35:33', 1),
(28, 'Quinn Taylor', 'quinn.taylor@example.com', NULL, '$2y$12$xToDSr/8WvP43l4vVPBgXelbcXHOLAlS6iLoO892i3MasXyDKivau', NULL, '2023-11-12 09:35:34', '2023-11-12 09:35:34', 0),
(29, 'Ryan Moore', 'ryan.moore@example.com', NULL, '$2y$12$SD3DimREtQFPo6gKVT.eV.xpEboqMYobIm39Z5m2rj1ykTKH5CtSa', NULL, '2023-11-12 09:35:34', '2023-11-12 09:35:34', 0),
(30, 'Sophia Jackson', 'sophia.jackson@example.com', NULL, '$2y$12$6fntDq24ad4dqVLH1Yv2v.tu6Ad34fYra0R/jGagr6yPF1OKUvic.', NULL, '2023-11-12 09:35:35', '2023-11-12 09:35:35', 0),
(31, 'Tyler Martin', 'tyler.martin@example.com', NULL, '$2y$12$ayy0qBTOtfn5b.kpeEZvT.rm73nHdPns1Kk2z7nAUmuuGQJ8o5.Ou', NULL, '2023-11-12 09:35:35', '2023-11-12 09:35:35', 0),
(32, 'Emily Thornton', 'emily.thornton@example.com', NULL, '$2y$12$UttJkr6bniMZTVXGZxBiJuBDsskrf5w5vBznRSL2VL.ytYWVHkonS', NULL, '2023-11-23 16:21:19', '2023-11-23 16:21:19', 0),
(33, 'Bob Dome', 'bob.dome@example.com', NULL, '$2y$12$Q50w3LuqzZU17I7lRMKV5eM385le4rj1ZvzM7H4kcWWo09z2qcGm6', NULL, '2023-11-29 13:27:43', '2023-11-29 13:27:43', 0),
(40, 'Khang Torres', 'phanvinhkhang987@gmail.com', '2024-03-14 17:16:24', '$2y$12$tTg9ilxXQ2y.FLNL4RL6V.SFMXtOM6bZ5e5exAs2QemwYlMmrQ9Hy', 'UmxPY43Yf80NbWlgbrf9Knhz22It1h6fl5qRHLcKlRCa4OzKDoOq9KNwzIjU', '2024-03-14 17:14:53', '2024-03-31 06:22:26', 1),
(42, 'Fernando Torres', 'khangkhung080502@gmail.com', NULL, '$2y$12$UzFoYFeAnGyNGWcN9oE8EOxfjE0i9/ibxtyt.h76Xrvb7MhFaKjMC', NULL, '2024-03-17 23:07:01', '2024-03-17 23:07:01', 0),
(43, 'mckhhang', 'mckhang0805@gmail.com', NULL, '$2y$12$/4h56cqZGlPhlIm6ZIN3nOoXXUhjaTxm/fbd4m8O1cP54g8Rnei/K', NULL, '2024-03-18 03:57:58', '2024-03-18 03:57:58', 0),
(44, 'msuykhang', 'khangkhongwibu0805@gmail.com', NULL, '$2y$12$xDEqQ3sVwGodymed1yPVqO8THkJBDlqeDeWeGkVCtxIUqJJVBgzd2', NULL, '2024-03-18 04:03:31', '2024-03-18 04:03:31', 0),
(50, 'Phan Vĩnh Khang', 'phanvinhkhang0805@gmail.com', '2024-03-18 18:55:40', '$2y$12$L3fqoSbNO4ZW8y6SOoZYH.G194Vj5BdW.SYSdNmBg7pGRi2bj9d.S', NULL, '2024-03-18 18:51:40', '2024-03-18 18:55:40', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` longtext DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `bio`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, 33, NULL, NULL, '2023-11-29 13:27:43', '2023-11-29 13:27:43'),
(2, 1, 'Just a guy that loves turtles a bit too much :)', 'profile_pictures/profile_1701762719.webp', '2023-11-29 17:43:19', '2023-12-05 07:28:32'),
(3, 10, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(4, 11, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(5, 12, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(6, 13, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(7, 14, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(8, 15, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(9, 16, 'Hello! I\'m Ethan Jones, and this is my arena of innovation where functionality meets art. Growing up in a tech-savvy environment, I was always fascinated by the fusion of technology and traditional art forms. My creations are designed not just to please the eye but to serve a purpose in your daily life. From tech-inspired home gadgets to sleek, minimalist accessories, each item reflects a blend of modern aesthetics and practical design. Dive into my collection and discover how art can be both beautiful and useful. Thanks for visiting, and enjoy exploring!', 'profile_pictures/profile_1701725350.webp', '2023-11-29 17:43:19', '2023-12-04 20:29:10'),
(10, 17, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(11, 18, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(12, 19, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(13, 20, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(14, 21, 'Hi there! I\'m Julia Martinez. Welcome to my creative corner where each item is a testament to my love for detailed, precision crafting. My journey as an artist began in the bustling city, surrounded by vibrant cultures and diverse inspirations. Specializing in contemporary designs with a touch of traditional flair, my work aims to blend the old with the new. Whether it\'s home decor or personalized gifts, I strive to infuse a sense of warmth and personality into every piece. Thank you for stopping by, and I hope my creations resonate with your own style and story!', 'profile_pictures/profile_1701725425.webp', '2023-11-29 17:43:19', '2023-12-04 20:30:25'),
(15, 22, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(16, 23, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(17, 24, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(18, 25, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(19, 26, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(20, 27, 'Hello! I\'m Penny Thomas, the heart and hands behind the unique creations you see here. My journey in crafting began as a small-town hobby, turning everyday items into little treasures. I\'m deeply inspired by the beauty of nature and the charm of vintage styles, infusing these elements into each piece I make. My creations are more than just items; they\'re a piece of my world, lovingly crafted to add a special touch to yours. Welcome to my shop – I hope you find something that speaks to you! 🌟', 'profile_pictures/profile_1701724744.webp', '2023-11-29 17:43:19', '2023-12-04 20:24:35'),
(21, 28, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(22, 29, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(23, 30, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(24, 31, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(25, 32, NULL, NULL, '2023-11-29 17:43:19', '2023-11-29 17:43:19'),
(30, 40, NULL, 'profile_pictures/profile_1710461829.webp', '2024-03-14 17:14:53', '2024-03-14 17:17:10'),
(32, 42, NULL, 'profile_pictures/profile_1710742047.webp', '2024-03-17 23:07:01', '2024-03-17 23:07:28'),
(33, 43, NULL, NULL, '2024-03-18 03:57:58', '2024-03-18 03:57:58'),
(34, 44, NULL, NULL, '2024-03-18 04:03:31', '2024-03-18 04:03:31'),
(40, 50, NULL, NULL, '2024-03-18 18:51:40', '2024-03-18 18:51:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyers_transaction_fk` (`transaction_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artisan_id` (`artisan_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT cho bảng `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `buyers`
--
ALTER TABLE `buyers`
  ADD CONSTRAINT `buyers_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
