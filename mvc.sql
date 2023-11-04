-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2023 lúc 03:59 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(21, 17, 44, 1, 43000, NULL, NULL),
(22, 17, 65, 3, 148000, NULL, NULL),
(23, 17, 66, 2, 59000, NULL, NULL),
(28, 20, 35, 20, 30000, NULL, NULL),
(29, 20, 65, 20, 148000, NULL, NULL),
(30, 21, 48, 3, 26000, NULL, NULL),
(31, 22, 68, 1, 57000, NULL, NULL),
(35, 25, 66, 5, 59000, NULL, NULL),
(36, 25, 68, 2, 57000, NULL, NULL),
(37, 26, 38, 2, 301000, NULL, NULL),
(38, 26, 67, 2, 42800, NULL, NULL),
(39, 27, 56, 1, 29000, NULL, NULL),
(40, 27, 60, 1, 139000, NULL, NULL),
(41, 28, 25, 5, 17000, NULL, NULL),
(42, 28, 57, 2, 159000, NULL, NULL),
(43, 28, 67, 5, 42800, NULL, NULL),
(44, 29, 64, 1, 30000, NULL, NULL),
(45, 30, 21, 5, 46000, NULL, NULL),
(46, 30, 25, 10, 17000, NULL, NULL),
(47, 30, 59, 6, 159000, NULL, NULL),
(48, 31, 60, 5, 139000, NULL, NULL),
(49, 31, 68, 2, 57000, NULL, NULL),
(51, 33, 36, 3, 309000, NULL, NULL),
(52, 33, 71, 2, 119000, NULL, NULL),
(54, 35, 43, 1, 56000, NULL, NULL),
(55, 35, 71, 1, 119000, NULL, NULL),
(56, 36, 66, 2, 59000, NULL, NULL),
(57, 37, 39, 1, 104000, NULL, NULL),
(58, 37, 67, 1, 42800, NULL, NULL),
(59, 38, 57, 1, 159000, NULL, NULL),
(60, 38, 61, 2, 45000, NULL, NULL),
(61, 39, 65, 1, 148000, NULL, NULL),
(62, 40, 21, 1, 46000, NULL, NULL),
(63, 40, 66, 2, 59000, NULL, NULL),
(64, 40, 71, 1, 119000, NULL, NULL),
(65, 41, 64, 1, 30000, NULL, NULL),
(66, 42, 48, 1, 26000, NULL, NULL),
(67, 43, 67, 4, 42800, NULL, NULL),
(70, 48, 44, 1, 43000, NULL, NULL),
(71, 48, 55, 3, 36000, NULL, NULL),
(72, 49, 47, 1, 34000, NULL, NULL),
(78, 56, 49, 6, 24000, '2023-06-09 21:24:54', '2023-06-09 21:24:54'),
(79, 56, 64, 1, 30000, '2023-06-09 21:24:54', '2023-06-09 21:24:54'),
(80, 57, 67, 3, 42800, '2023-06-10 03:02:54', '2023-06-10 03:02:54'),
(81, 58, 60, 1, 139000, '2023-06-10 09:33:21', '2023-06-10 09:33:21'),
(82, 59, 64, 2, 30000, '2023-06-10 10:45:53', '2023-06-10 10:45:53'),
(85, 60, 21, 1, 46000, '2023-06-11 04:24:17', '2023-06-11 04:24:17'),
(86, 60, 27, 1, 37000, '2023-06-11 04:24:17', '2023-06-11 04:24:17'),
(87, 61, 21, 2, 46000, '2023-06-12 01:42:52', '2023-06-12 01:42:52'),
(88, 61, 24, 5, 29000, '2023-06-12 01:42:52', '2023-06-12 01:42:52'),
(89, 61, 27, 1, 37000, '2023-06-12 01:42:52', '2023-06-12 01:42:52'),
(90, 62, 28, 1, 45000, '2023-06-12 15:07:34', '2023-06-12 15:07:34'),
(91, 62, 66, 1, 59000, '2023-06-12 15:07:34', '2023-06-12 15:07:34'),
(92, 63, 61, 1, 45000, '2023-06-12 15:09:47', '2023-06-12 15:09:47'),
(93, 64, 61, 2, 45000, '2023-06-12 15:51:30', '2023-06-12 15:51:30'),
(94, 65, 70, 1, 39000, '2023-06-12 15:53:16', '2023-06-12 15:53:16'),
(95, 66, 64, 1, 30000, '2023-06-12 17:08:23', '2023-06-12 17:08:23'),
(96, 67, 55, 1, 36000, '2023-06-12 17:12:42', '2023-06-12 17:12:42'),
(97, 68, 53, 5, 15000, '2023-06-12 20:25:58', '2023-06-12 20:25:58'),
(98, 69, 60, 1, 139000, '2023-06-13 01:34:22', '2023-06-13 01:34:22'),
(99, 70, 28, 1, 45000, '2023-06-13 05:28:00', '2023-06-13 05:28:00'),
(100, 70, 67, 1, 42800, '2023-06-13 05:28:00', '2023-06-13 05:28:00'),
(101, 71, 32, 2, 24000, '2023-06-13 05:56:57', '2023-06-13 05:56:57'),
(102, 72, 21, 2, 46000, '2023-06-13 06:05:32', '2023-06-13 06:05:32'),
(103, 72, 24, 3, 29000, '2023-06-13 06:05:32', '2023-06-13 06:05:32'),
(104, 73, 21, 2, 46000, '2023-06-13 06:05:56', '2023-06-13 06:05:56'),
(105, 73, 24, 3, 29000, '2023-06-13 06:05:56', '2023-06-13 06:05:56'),
(106, 74, 21, 2, 46000, '2023-06-13 06:07:18', '2023-06-13 06:07:18'),
(107, 74, 24, 3, 29000, '2023-06-13 06:07:18', '2023-06-13 06:07:18'),
(108, 75, 21, 2, 46000, '2023-06-13 06:08:05', '2023-06-13 06:08:05'),
(109, 75, 24, 3, 29000, '2023-06-13 06:08:05', '2023-06-13 06:08:05'),
(110, 76, 21, 2, 46000, '2023-06-13 06:21:33', '2023-06-13 06:21:33'),
(111, 76, 24, 3, 29000, '2023-06-13 06:21:33', '2023-06-13 06:21:33'),
(112, 77, 21, 2, 46000, '2023-06-13 06:25:25', '2023-06-13 06:25:25'),
(113, 77, 39, 1, 104000, '2023-06-13 06:25:25', '2023-06-13 06:25:25'),
(114, 78, 68, 1, 57000, '2023-06-13 12:26:32', '2023-06-13 12:26:32'),
(115, 79, 47, 2, 34000, '2023-06-13 12:45:51', '2023-06-13 12:45:51'),
(116, 79, 68, 1, 57000, '2023-06-13 12:45:51', '2023-06-13 12:45:51'),
(117, 79, 71, 1, 119000, '2023-06-13 12:45:51', '2023-06-13 12:45:51'),
(118, 80, 47, 2, 34000, '2023-06-13 12:50:54', '2023-06-13 12:50:54'),
(119, 80, 60, 1, 139000, '2023-06-13 12:50:54', '2023-06-13 12:50:54'),
(120, 81, 25, 1, 17000, '2023-06-13 12:52:12', '2023-06-13 12:52:12'),
(121, 81, 43, 1, 56000, '2023-06-13 12:52:12', '2023-06-13 12:52:12'),
(122, 82, 25, 1, 17000, '2023-06-13 13:02:16', '2023-06-13 13:02:16'),
(123, 82, 43, 1, 56000, '2023-06-13 13:02:16', '2023-06-13 13:02:16'),
(124, 83, 21, 2, 46000, '2023-06-13 13:32:57', '2023-06-13 13:32:57'),
(125, 83, 23, 2, 23000, '2023-06-13 13:32:57', '2023-06-13 13:32:57'),
(126, 83, 71, 1, 119000, '2023-06-13 13:32:57', '2023-06-13 13:32:57'),
(127, 84, 21, 2, 46000, '2023-06-13 13:36:59', '2023-06-13 13:36:59'),
(128, 84, 23, 2, 23000, '2023-06-13 13:36:59', '2023-06-13 13:36:59'),
(129, 84, 71, 1, 119000, '2023-06-13 13:36:59', '2023-06-13 13:36:59'),
(130, 85, 21, 2, 46000, '2023-06-13 13:37:42', '2023-06-13 13:37:42'),
(131, 85, 23, 2, 23000, '2023-06-13 13:37:42', '2023-06-13 13:37:42'),
(132, 85, 71, 1, 119000, '2023-06-13 13:37:42', '2023-06-13 13:37:42'),
(133, 86, 21, 2, 46000, '2023-06-13 13:38:34', '2023-06-13 13:38:34'),
(134, 86, 23, 2, 23000, '2023-06-13 13:38:34', '2023-06-13 13:38:34'),
(135, 86, 71, 1, 119000, '2023-06-13 13:38:34', '2023-06-13 13:38:34'),
(136, 87, 21, 2, 46000, '2023-06-13 13:39:00', '2023-06-13 13:39:00'),
(137, 87, 23, 2, 23000, '2023-06-13 13:39:00', '2023-06-13 13:39:00'),
(138, 87, 71, 1, 119000, '2023-06-13 13:39:00', '2023-06-13 13:39:00'),
(139, 88, 25, 1, 17000, '2023-06-13 13:39:22', '2023-06-13 13:39:22'),
(140, 88, 43, 1, 56000, '2023-06-13 13:39:22', '2023-06-13 13:39:22'),
(141, 89, 21, 2, 46000, '2023-06-13 13:42:41', '2023-06-13 13:42:41'),
(142, 89, 23, 1, 23000, '2023-06-13 13:42:41', '2023-06-13 13:42:41'),
(143, 90, 21, 2, 46000, '2023-06-13 13:42:49', '2023-06-13 13:42:49'),
(144, 90, 23, 1, 23000, '2023-06-13 13:42:49', '2023-06-13 13:42:49'),
(145, 91, 69, 1, 33000, '2023-06-13 18:11:23', '2023-06-13 18:11:23'),
(146, 92, 66, 1, 59000, '2023-09-13 08:55:18', '2023-09-13 08:55:18'),
(147, 92, 67, 1, 42800, '2023-09-13 08:55:18', '2023-09-13 08:55:18'),
(148, 93, 61, 1, 45000, '2023-09-13 08:58:30', '2023-09-13 08:58:30'),
(149, 93, 66, 1, 59000, '2023-09-13 08:58:30', '2023-09-13 08:58:30'),
(150, 93, 67, 1, 42800, '2023-09-13 08:58:30', '2023-09-13 08:58:30'),
(151, 94, 63, 1, 69000, '2023-09-13 09:00:58', '2023-09-13 09:00:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recuit_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `recuit_id`, `content`, `active`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 1, 'Fast Food có mặt tại thị trường Việt Nam từ năm 2020 và cho đến nay đang là một trong những thương hiệu dẫn đầu ngành công nghiệp ăn uống quốc nội với hơn 210 nhà hàng tại hơn 30 tỉnh/thành trên cả nước.Thị trường Việt Nam được đánh giá là một trong những', 1, '2021-12-07 11:16:15', '2021-12-07 11:16:15', 1),
(2, 2, 'Tôi có thể ứng tuyển ngay được không? ', 1, '2021-12-03 11:20:11', '2021-12-07 11:20:11', 1),
(4, 1, 'Hiện nay đã đủ nhân viên ứng tuyển chưa ạ?', 1, '2021-12-07 14:18:06', '2021-12-07 14:18:06', 2),
(6, 2, 'Tôi muốn ứng tuyển vào vị trí trên, thì cần những thủ tục gì ạ?', 1, '2021-12-07 16:04:45', '2021-12-07 16:04:45', 5),
(12, 3, 'Gà Fast Food được tạo ra như thế nào??? Tất cả các loại nước sốt, bột chiên, gia vị tẩm ướp đều được trực tiếp phát triển...', 1, '2022-01-14 09:59:12', '2022-01-14 09:59:12', 4),
(13, 5, 'Ăn là nhu cầu thiết yếu không thể thiếu. Giao hàng có các app: Now, Baemin, Grab, Goviet nên bạn không cần ra ngoài. Thời điểm đầu tư nhượng quyền.', 1, '2022-01-14 10:02:14', '2022-01-14 10:02:14', 5),
(19, 6, 'Vị trí tuyển dụng này có thể ứng tuyển parttime không ạ?', 1, '2023-05-07 06:41:32', '2023-05-07 06:41:32', 1),
(20, 5, 'vvvv', 1, '2023-06-12 02:34:16', '2023-06-12 02:34:16', 1),
(21, 6, 'Bài tuyển dụng hay', 1, '2023-06-12 03:22:36', '2023-06-12 03:22:36', 1),
(22, 6, 'vvvvv', 1, '2023-06-12 03:31:39', '2023-06-12 03:31:39', 1),
(23, 6, 'vvvvv', 1, '2023-06-12 03:33:33', '2023-06-12 03:33:33', 1),
(24, 6, 'Tuyệt vời', 1, '2023-06-12 03:34:52', '2023-06-12 03:34:52', 1),
(25, 6, 'Tuyệt vời', 1, '2023-06-12 03:35:05', '2023-06-12 03:35:05', 1),
(26, 6, 'Ok', 1, '2023-06-12 07:06:57', '2023-06-12 07:06:57', 1),
(27, 6, 'Nnn', 1, '2023-06-12 07:08:16', '2023-06-12 07:08:16', 1),
(28, 6, 'vvvvv', 1, '2023-06-12 07:14:31', '2023-06-12 07:14:31', 1),
(29, 6, 'vvvvv', 1, '2023-06-12 07:15:58', '2023-06-12 07:15:58', 1),
(30, 6, 'vvvvv', 1, '2023-06-12 07:17:35', '2023-06-12 07:17:35', 1),
(31, 6, 'vvvvv', 1, '2023-06-12 07:20:21', '2023-06-12 07:20:21', 1),
(32, 5, 'Okok', 1, '2023-06-12 07:22:49', '2023-06-12 07:22:49', 1),
(33, 6, 'vvvvv', 1, '2023-06-12 07:23:23', '2023-06-12 07:23:23', 1),
(35, 6, 'vvvvv', 1, '2023-06-12 07:25:28', '2023-06-12 07:25:28', 1),
(36, 6, 'vvvvv', 1, '2023-06-12 07:26:18', '2023-06-12 07:26:18', 1),
(37, 6, 'vvvvv', 1, '2023-06-12 07:27:26', '2023-06-12 07:27:26', 1),
(41, 5, 'Okok', 1, '2023-06-12 07:31:26', '2023-06-12 07:31:26', 1),
(49, 5, 'Tuyển dụng ok', 1, '2023-06-12 07:37:24', '2023-06-12 07:37:24', 1),
(50, 5, 'Ok', 1, '2023-06-13 18:02:12', '2023-06-13 18:02:12', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `method` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`, `total`, `id_user`, `method`) VALUES
(17, 'Hoàng Hà', '0935386494', 'K41/25 Đặng Thùy Trâm', 'hha.20it10@vku.udn.vn', 'Chỉ giao giờ hành chính', '2021-12-01 08:26:41', '2021-12-01 08:26:41', 605000, 1, 0),
(20, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'Giao sớm giúp tôi đang cần gấp! Cảm ơn', '2021-12-06 14:59:25', '2021-12-06 14:59:25', 3560000, 2, 0),
(21, 'Hữu Đức', '123456789', '74 Lưu Quang Vũ, Đà Nẵng', 'nhduc.20it10@vku.udn.vn', 'hmmmm', '2021-12-07 01:28:57', '2021-12-07 01:28:57', 78000, 5, 0),
(22, 'Hữu Đức', '123456789', '74 Lưu Quang Vũ, Đà Nẵng', 'nhduc.20it10@vku.udn.vn', 'tôi có thể thanh toán qua thẻ không?', '2021-12-07 02:08:45', '2021-12-07 02:08:45', 57000, 5, 0),
(25, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2021-12-07 19:52:05', '2021-12-07 19:52:05', 409000, 1, 0),
(26, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao hàng sớm giúp tôi nhé', '2021-12-13 02:13:19', '2021-12-13 02:13:19', 687600, 1, 0),
(27, 'Đắc Thịnh', '937272838', '10 Nguyễn Hữu Thọ, Đà Nẵng', 'pdthinh1805@gmail.com', 'giao sớm giúp tôi', '2022-01-14 07:32:51', '2022-01-14 07:32:51', 168000, 4, 0),
(28, 'Đắc Thịnh', '937272838', '10 Nguyễn Hữu Thọ, Đà Nẵng', 'pdthinh1805@gmail.com', 'giao trước 12h giúp tôi', '2022-01-14 07:36:03', '2022-01-14 07:36:03', 617000, 4, 0),
(29, 'Hữu Đức', '123456789', '74 Lưu Quang Vũ, Đà Nẵng', 'nhduc.20it10@vku.udn.vn', 'Giao hàng gọi giúp tôi qua số điện thoại này: 012345678', '2022-01-14 10:11:25', '2022-01-14 10:11:25', 30000, 5, 0),
(30, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Giao cẩn thận giúp tôi.', '2022-01-15 18:36:37', '2022-01-15 18:36:37', 1354000, 1, 0),
(31, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Giao nhanh', '2022-01-15 19:52:16', '2022-01-15 19:52:16', 809000, 1, 0),
(33, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao hàng nhanh giúp tôi nhé', '2022-06-18 10:49:31', '2022-06-18 10:49:31', 1165000, 1, 0),
(35, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao hàng nhanh giúp tôi nhé', '2022-06-18 11:05:00', '2022-06-18 11:05:00', 175000, 1, 0),
(36, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao gấp', '2022-07-18 20:01:26', '2022-07-18 20:01:26', 118000, 1, 0),
(37, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao sớm giúp tôi', '2023-05-07 06:49:43', '2023-05-07 06:49:43', 146800, 1, 0),
(38, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao hàng cẩn thận giúp tôi', '2023-05-07 06:51:29', '2023-05-07 06:51:29', 249000, 1, 0),
(39, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-09 08:52:26', '2023-06-09 08:52:26', 148000, 1, 0),
(40, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-09 19:54:45', '2023-06-09 19:54:45', 283000, 1, 1),
(41, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'mmmm', '2023-06-09 20:10:45', '2023-06-09 20:10:45', 30000, 1, 1),
(42, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'mmm', '2023-06-09 20:18:35', '2023-06-09 20:18:35', 26000, 1, 1),
(43, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'nnn', '2023-06-09 20:23:30', '2023-06-09 20:23:30', 171200, 1, 1),
(48, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ppp', '2023-06-09 21:03:02', '2023-06-09 21:03:02', 151000, 1, 1),
(49, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'bbb', '2023-06-09 21:04:55', '2023-06-09 21:04:55', 34000, 1, 1),
(56, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'bbb', '2023-06-09 21:24:54', '2023-06-09 21:24:54', 174000, 1, 1),
(57, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'bbb', '2023-06-10 03:02:54', '2023-06-10 03:02:54', 128400, 1, 1),
(58, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'mmm', '2023-06-10 09:33:21', '2023-06-10 09:33:21', 139000, 1, 1),
(59, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'nbnb', '2023-06-10 10:45:53', '2023-06-10 10:45:53', 60000, 1, 1),
(60, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-11 04:24:17', '2023-06-11 04:24:17', 99000, 1, 0),
(61, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Nnn', '2023-06-12 01:42:52', '2023-06-12 01:42:52', 291000, 1, 0),
(62, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'giao nhanh giúp tôi', '2023-06-12 15:07:34', '2023-06-12 15:07:34', 104000, 1, 1),
(63, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'mmm', '2023-06-12 15:09:47', '2023-06-12 15:09:47', 45000, 1, 1),
(64, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'nnn', '2023-06-12 15:51:30', '2023-06-12 15:51:30', 90000, 1, 1),
(65, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'vvv', '2023-06-12 15:53:16', '2023-06-12 15:53:16', 39000, 1, 1),
(66, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'bbb', '2023-06-12 17:08:23', '2023-06-12 17:08:23', 30000, 1, 1),
(67, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'nnn', '2023-06-12 17:12:42', '2023-06-12 17:12:42', 36000, 1, 1),
(68, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'vvv', '2023-06-12 20:25:58', '2023-06-12 20:25:58', 75000, 1, 1),
(69, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'vvv', '2023-06-13 01:34:22', '2023-06-13 01:34:22', 139000, 1, 1),
(70, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'nnn', '2023-06-13 05:27:59', '2023-06-13 05:27:59', 87800, 2, 1),
(71, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'cho tôi xin dụng cụ ăn uống', '2023-06-13 05:56:57', '2023-06-13 05:56:57', 48000, 2, 0),
(72, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-13 06:05:32', '2023-06-13 06:05:32', 196000, 1, 0),
(73, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-13 06:05:55', '2023-06-13 06:05:55', 196000, 1, 0),
(74, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-13 06:07:18', '2023-06-13 06:07:18', 196000, 1, 0),
(75, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-13 06:08:05', '2023-06-13 06:08:05', 196000, 1, 0),
(76, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Vvv', '2023-06-13 06:21:33', '2023-06-13 06:21:33', 196000, 1, 0),
(77, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Bbb', '2023-06-13 06:25:25', '2023-06-13 06:25:25', 213000, 1, 0),
(78, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'nnn', '2023-06-13 12:26:32', '2023-06-13 12:26:32', 57000, 2, 0),
(79, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'ok giao hàng cẩn thận', '2023-06-13 12:45:51', '2023-06-13 12:45:51', 244000, 2, 0),
(80, 'Anh Bảo', '328363633', 'K97/10 Phạm Như Xương, Đà Nẵng', 'pvabao.20it10@vku.udn.vn', 'ok', '2023-06-13 12:50:54', '2023-06-13 12:50:54', 207000, 2, 0),
(81, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-13 12:52:12', '2023-06-13 12:52:12', 73000, 1, 0),
(82, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-13 13:02:16', '2023-06-13 13:02:16', 73000, 1, 1),
(83, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:32:57', '2023-06-13 13:32:57', 274000, 1, 0),
(84, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:36:59', '2023-06-13 13:36:59', 274000, 1, 0),
(85, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:37:42', '2023-06-13 13:37:42', 274000, 1, 0),
(86, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:38:34', '2023-06-13 13:38:34', 274000, 1, 0),
(87, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:39:00', '2023-06-13 13:39:00', 274000, 1, 0),
(88, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-13 13:39:22', '2023-06-13 13:39:22', 73000, 1, 0),
(89, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:42:41', '2023-06-13 13:42:41', 132000, 1, 0),
(90, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'Ok', '2023-06-13 13:42:48', '2023-06-13 13:42:48', 132000, 1, 0),
(91, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-06-13 18:11:23', '2023-06-13 18:11:23', 33000, 1, 1),
(92, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'OK', '2023-09-13 08:55:17', '2023-09-13 08:55:17', 101800, 1, 1),
(93, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'ok', '2023-09-13 08:58:30', '2023-09-13 08:58:30', 146800, 1, 1),
(94, 'Hoàng Hà', '935386494', 'K41/25 Đặng Thùy Trâm,Đà Nẵng', 'hha.20it10@vku.udn.vn', 'MMM', '2023-09-13 09:00:58', '2023-09-13 09:00:58', 69000, 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '2e5044dc-6870-4bab-956a-6f57694ae881', 'database', 'default', '{\"uuid\":\"2e5044dc-6870-4bab-956a-6f57694ae881\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-06-18 17:49:34.008767\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"Hoangha2352@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17-20020aa79251000000b0051b6091c452sm5852838pfp.70 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17-20020aa79251000000b0051b6091c452sm5852838pfp.70 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17-20020aa79251000000b0051b6091c452sm5852838pfp.70 - gsmtp\r\n\". in C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 C:\\xampp\\htdocs\\projectlaravel\\app\\Jobs\\SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#38 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\projectlaravel\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2022-06-18 10:51:30'),
(2, '49af5d7f-cd11-4217-8722-2cdb0a96f2ac', 'database', 'default', '{\"uuid\":\"49af5d7f-cd11-4217-8722-2cdb0a96f2ac\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-06-18 17:52:14.074292\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"Hoangha2352@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials u22-20020a62d456000000b0051c70fd5263sm5851818pfl.169 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials u22-20020a62d456000000b0051c70fd5263sm5851818pfl.169 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials u22-20020a62d456000000b0051c70fd5263sm5851818pfl.169 - gsmtp\r\n\". in C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp\\htdocs\\projectlaravel\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 C:\\xampp\\htdocs\\projectlaravel\\app\\Jobs\\SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#38 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\projectlaravel\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\projectlaravel\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\projectlaravel\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2022-06-18 10:52:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(27, 'default', '{\"uuid\":\"def7a62a-fff0-4ab1-aa36-eb34e1903f17\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-06-18 18:05:02.691395\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1655575502, 1655575500),
(28, 'default', '{\"uuid\":\"c181fb79-f0ab-44ad-8929-cc8787cfe465\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-07-19 03:01:28.432028\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1658199688, 1658199687),
(29, 'default', '{\"uuid\":\"38e1855a-1230-4993-b84b-a8818b796e73\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-07 13:49:46.008413\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1683467386, 1683467385),
(30, 'default', '{\"uuid\":\"4f13add2-6866-4c55-8a06-3ce1d5fe4e1f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-07 13:51:31.313792\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1683467491, 1683467489),
(31, 'default', '{\"uuid\":\"ce4f0dde-92ea-4f2f-bd47-c09443180dc2\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-09 15:52:28.368340\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686325948, 1686325947),
(32, 'default', '{\"uuid\":\"f863269f-5191-4781-af0b-08668ad397bf\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 02:54:48.002900\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686365688, 1686365686),
(33, 'default', '{\"uuid\":\"1461ed8a-b83a-4cc9-bfa6-643a4271238b\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 03:10:48.010216\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686366648, 1686366646),
(34, 'default', '{\"uuid\":\"ab6f544c-48dc-4198-93a7-c667d1bcfb78\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 03:18:37.872553\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686367117, 1686367115),
(35, 'default', '{\"uuid\":\"d68d5da8-99ef-4012-a13f-80e478431b9f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 03:23:32.052176\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686367412, 1686367410),
(36, 'default', '{\"uuid\":\"0d5e004b-1bbb-45ac-bf84-68c2c180b9d1\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 04:03:04.648222\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686369784, 1686369782),
(37, 'default', '{\"uuid\":\"f8609bba-e899-4188-a1fd-4c2b90fe817e\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 04:04:57.279803\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686369897, 1686369895),
(38, 'default', '{\"uuid\":\"d19937cd-c710-48d4-8c7f-96509bd650b9\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 04:24:56.916186\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686371096, 1686371094),
(39, 'default', '{\"uuid\":\"f3d0657b-92ac-460a-9706-0ab858691710\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 10:02:56.775159\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686391376, 1686391375),
(40, 'default', '{\"uuid\":\"a63fc2cd-64e3-44c9-b04c-56db63e1984e\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 16:33:23.826418\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686414803, 1686414803),
(41, 'default', '{\"uuid\":\"e34eced4-1cde-42d4-96f1-935822bec6a9\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-10 17:45:55.222610\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686419155, 1686419153),
(42, 'default', '{\"uuid\":\"18021cff-5133-4197-8239-de7d319b9a7d\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-12 22:07:36.650254\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686607656, 1686607655),
(43, 'default', '{\"uuid\":\"d9c6643f-7fec-4423-a278-7bf9c8e85906\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-12 22:09:49.960483\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686607789, 1686607787),
(44, 'default', '{\"uuid\":\"42ce385e-6ad2-4f39-8a4b-d94fdffd2c12\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-12 22:51:32.172575\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686610292, 1686610290),
(45, 'default', '{\"uuid\":\"3757144e-c28b-42dd-bf0d-c4e1b39271ff\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-12 22:53:18.517378\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686610398, 1686610396),
(46, 'default', '{\"uuid\":\"ba5c6443-3fb5-4d2a-b716-5918c43ed698\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 00:08:25.623528\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686614905, 1686614903),
(47, 'default', '{\"uuid\":\"250ba43a-9260-43c0-8f90-5d956140a87f\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 00:12:44.798707\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686615164, 1686615162),
(48, 'default', '{\"uuid\":\"2b6356ef-8c71-45bd-a416-57cb767c1a1c\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 03:26:00.978291\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686626760, 1686626760),
(49, 'default', '{\"uuid\":\"d9a1fac4-66a3-41bb-bd1f-57b3af72a14d\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:21:\\\"hha.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 08:34:24.699038\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686645264, 1686645264),
(50, 'default', '{\"uuid\":\"b4cae2f7-03f4-4c12-b009-e0316f7b76b7\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:24:\\\"pvabao.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 12:28:02.054370\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686659282, 1686659280),
(51, 'default', '{\"uuid\":\"f506b268-f2f6-44bd-8592-3ded27414f48\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:24:\\\"pvabao.20it10@vku.udn.vn\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-06-13 12:56:59.205666\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1686661019, 1686661017);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`, `thumb`, `logo`) VALUES
(45, 'Gà rán', 0, 'Gà rán', '<p>G&agrave; r&aacute;n</p>', 1, '2021-11-26 03:56:22', '2023-06-09 02:51:51', '1638260576-menu.png', '1686304311-menu-logo.png'),
(46, 'Cơm', 0, 'Cơm', '<p>Cơm</p>', 1, '2021-11-26 03:56:48', '2023-06-08 09:27:58', '1638261490-menu.png', '1686241678-menu-logo.png'),
(47, 'Hamburger', 0, 'Hamburger', '<p>Hamburger</p>', 1, '2021-11-26 03:57:12', '2023-06-08 09:24:55', '1686241456-menu.png', '1686241495-menu-logo.png'),
(48, 'Thức ăn nhẹ', 0, 'Thức ăn nhẹ', '<p>Thức ăn nhẹ</p>', 1, '2021-11-26 04:00:46', '2023-06-09 02:53:07', '1638261754-menu.png', '1686304387-menu-logo.png'),
(49, 'Tráng miệng', 0, 'Thức ăn tráng miệng', '<p>Thức ăn tr&aacute;ng miệng</p>', 1, '2021-11-26 04:01:05', '2023-06-09 02:53:26', '1638262352-menu.png', '1686304406-menu-logo.png'),
(54, 'Thức uống', 0, 'Thức uống', '<p>Thức uống&nbsp;</p>', 1, '2022-06-18 11:09:41', '2023-06-08 09:27:31', '1655575781-menu.jpg', '1686241651-menu-logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_05_054322_create_sessions_table', 1),
(7, '2021_11_12_024219_create_menus_table', 2),
(8, '2021_11_17_130959_create_products_table', 3),
(9, '2021_11_17_132752_update_table_product', 4),
(10, '2021_11_20_164556_create_sliders_table', 5),
(11, '2021_11_30_071235_update_table_menu', 6),
(13, '2021_11_30_155150_create_customers_table', 7),
(14, '2021_11_30_155243_create_carts_table', 7),
(15, '2021_11_30_180933_create_jobs_table', 8),
(16, '2021_12_02_043243_create_recruits_table', 9),
(17, '2021_12_02_172614_create_comments_table', 10),
(18, '2021_12_02_174336_create_users_table', 11),
(19, '2021_12_03_111210_update_table_user', 12),
(20, '2021_12_03_150901_update_table_user', 13),
(23, '2021_12_06_215517_update_table_customer', 16),
(24, '2023_06_08_154832_update_logo_menus', 17),
(25, '2023_06_09_105624_create_rate_product_table', 18),
(26, '2023_06_10_020621_update_customers_table', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(17, 'Gà Rán - 1 Miếng', 'Gà Rán - 1 Miếng', '<p>G&agrave; R&aacute;n - 1 Miếng</p>', 45, 36000, 35000, 1, '2021-11-26 10:23:21', '2021-11-27 11:15:36', '1638036936-product.png'),
(21, 'Burger Gà Thượng Hạng', 'Burger Gà Thượng Hạng', '<p>Burger G&agrave; Thượng Hạng</p>', 47, 47000, 46000, 1, '2021-11-26 10:26:23', '2021-11-27 11:28:42', '1638037722-product.png'),
(23, 'Trà đào', 'Trà đào', '<p>Tr&agrave; đ&agrave;o</p>', 54, 23000, 0, 1, '2021-11-26 10:28:14', '2021-11-27 19:09:42', '1638065382-product.jpg'),
(24, 'Mocktail Ổi Hạt Chia', 'Mocktail Ổi Hạt Chia', '<p>Mocktail Ổi Hạt Chia</p>', 54, 29000, 0, 1, '2021-11-26 10:28:51', '2021-11-27 10:55:48', '1638035748-product.png'),
(25, 'Pepsi Vị Chanh Không Calo Lon', 'Pepsi Vị Chanh Không Calo Lon', '<p>Pepsi Vị Chanh Kh&ocirc;ng Calo Lon</p>', 54, 17000, 0, 1, '2021-11-26 10:29:23', '2021-11-27 10:55:07', '1638035707-product.png'),
(26, '7Up Lon', '7Up Lon', '<p>7Up Lon</p>', 54, 0, 0, 1, '2021-11-26 10:29:49', '2021-11-27 10:54:33', '1638035673-product.png'),
(27, 'Gà Sốt Đậu - 1 Miếng', 'Gà Sốt Đậu - 1 Miếng', '<p>G&agrave; Sốt Đậu - 1 Miếng</p>', 45, 37000, 0, 1, '2021-11-26 10:32:23', '2021-11-27 11:14:34', '1638036874-product.png'),
(28, 'Burger Tôm (1 Phần)', 'Burger Tôm (1 Phần)', '<p>Burger T&ocirc;m (1 Phần)</p>', 47, 45000, 0, 1, '2021-11-27 10:44:48', '2021-11-27 11:28:22', '1638037702-product.png'),
(32, 'Milo', 'Milo', '<p>Milo</p>', 54, 24000, 0, 1, '2021-11-27 10:50:33', '2021-11-27 10:50:33', '1638035433-product.png'),
(33, 'Tornado Chocolate', 'Tornado Chocolate', '<p>Tornado Chocolate</p>', 54, 24000, 0, 1, '2021-11-27 10:53:18', '2021-11-27 10:53:18', '1638035598-product.png'),
(34, '7 Up Cherry', '7 Up Cherry', '<p>7 Up Cherry</p>', 54, 28000, 0, 1, '2021-11-27 10:57:37', '2021-11-27 10:57:37', '1638035857-product.png'),
(35, 'Nước Cam', 'Nước Cam', '<p>Nước Cam</p>', 54, 30000, 0, 1, '2021-11-27 10:59:05', '2021-11-27 10:59:05', '1638035945-product.png'),
(36, 'Gà Sốt Phô Mai - 9 Miếng', 'Gà Sốt Phô Mai - 9 Miếng', '<p>G&agrave; Sốt Ph&ocirc; Mai - 9 Miếng</p>', 45, 309000, 0, 1, '2021-11-27 11:00:35', '2021-11-27 11:13:24', '1638036804-product.png'),
(37, 'Gà Rán - 6 Miếng', 'Gà Rán -6 Miếng', '<p>G&agrave; R&aacute;n -6 Miếng</p>', 45, 189000, 0, 1, '2021-11-27 11:01:30', '2021-11-27 11:11:18', '1638036678-product.png'),
(38, 'Gà Sốt H&S - 9 Miếng', 'Gà Sốt H&S - 9 Miếng', '<p>G&agrave; Sốt H&amp;S - 9 Miếng</p>', 45, 301000, 0, 1, '2021-11-27 11:02:27', '2021-11-27 11:08:52', '1638036426-product.png'),
(39, 'Gà Sốt Phô Mai - 3 Miếng', 'Gà Sốt Phô Mai - 3 Miếng', '<p>G&agrave; Sốt Ph&ocirc; Mai - 3 Miếng</p>', 45, 104000, 0, 1, '2021-11-27 11:03:57', '2021-11-27 11:10:03', '1638036603-product.png'),
(42, 'Gà Nướng - 3 Miếng', 'Gà Nướng - 3 Miếng', '<p>G&agrave; Nướng - 3 Miếng</p>', 45, 104000, 0, 1, '2021-11-27 11:16:46', '2021-11-27 11:16:46', '1638037006-product.png'),
(43, 'Cơm Gà Nướng Góc Tư', 'Cơm Gà Nướng Góc Tư', '<p>Cơm G&agrave; Nướng G&oacute;c Tư</p>', 46, 56000, 0, 1, '2021-11-27 11:22:56', '2021-11-27 11:22:56', '1638037376-product.png'),
(44, 'Cơm Gà Viên', 'Cơm Gà Viên', '<p>Cơm G&agrave; Vi&ecirc;n</p>', 46, 43000, 0, 1, '2021-11-27 11:24:03', '2021-11-27 11:24:03', '1638037443-product.png'),
(45, 'Cơm Gà Hoàng Gia', 'Cơm Gà Hoàng Gia', '<p>Cơm G&agrave; Ho&agrave;ng Gia</p>', 46, 43000, 42000, 1, '2021-11-27 11:25:00', '2021-11-27 11:25:00', '1638037500-product.png'),
(46, 'Cơm Thịt Bò', 'Cơm Thịt Bò', '<p>Cơm Thịt B&ograve;</p>', 46, 43000, 0, 1, '2021-11-27 11:25:49', '2021-11-27 11:25:49', '1638037549-product.png'),
(47, 'Phô Mai Que', 'Phô Mai Que', '<p>Ph&ocirc; Mai Que</p>', 48, 34000, 0, 1, '2021-11-27 11:30:09', '2021-11-27 20:11:15', '1638069075-product.jpg'),
(48, 'Khoai Tây Chiên (M)', 'Khoai Tây Chiên (M)', '<p>Khoai T&acirc;y Chi&ecirc;n (M)</p>', 48, 26000, 0, 1, '2021-11-27 11:31:23', '2021-11-27 11:31:23', '1638037883-product.png'),
(49, 'Cá Nugget - 3 Miếng', 'Cá Nugget - 3 Miếng', '<p>C&aacute; Nugget - 3 Miếng</p>', 48, 24000, 0, 1, '2021-11-27 11:32:18', '2021-11-27 11:32:18', '1638037938-product.png'),
(50, 'CÁNH GÀ TRUYỀN THỐNG NHỎ', 'CÁNH GÀ TRUYỀN THỐNG NHỎ', '<p>C&Aacute;NH G&Agrave; TRUYỀN THỐNG NHỎ</p>', 45, 60000, 0, 1, '2021-11-27 11:33:26', '2021-11-27 20:18:47', '1638069527-product.jpg'),
(51, 'Khoai Viên Phô Mai - 3 Viên', 'Khoai Viên Phô Mai - 3 Viên', '<p>Lớp vỏ ngo&agrave;i gi&ograve;n rụm với m&ugrave;i thơm đặc trưng của khoai lang,vị b&ugrave;i b&ugrave;i hòa quy&ecirc;̣n với vị b&eacute;o thơm của ph&ocirc; mai.Th&iacute;ch m&ecirc; với món khoai lang bọc ph&ocirc; mai vừa ăn vừa k&eacute;o sợi.</p>', 48, 22000, 0, 1, '2021-11-27 11:34:21', '2021-11-29 07:29:15', '1638038061-product.png'),
(52, 'KEM SUNDAES VIỆT QUẤT', 'KEM SUNDAES VIỆT QUẤT', '<p>KEM SUNDAES VIỆT QUẤT</p>', 49, 15000, 0, 1, '2021-11-27 19:01:30', '2021-11-27 19:01:30', '1638064890-product.png'),
(53, 'BÁNH PIE NHÂN XOÀI ĐÀO', 'BÁNH PIE NHÂN XOÀI ĐÀO', '<p>B&Aacute;NH PIE NH&Acirc;N XO&Agrave;I Đ&Agrave;O</p>', 49, 15000, 0, 1, '2021-11-27 19:03:29', '2021-11-27 19:03:29', '1638065009-product.png'),
(54, 'NƯỚC SUỐI AQUAFINA', 'NƯỚC SUỐI AQUAFINA', '<p>NƯỚC SUỐI AQUAFINA</p>', 54, 8000, 0, 1, '2021-11-27 19:05:40', '2021-11-27 19:05:40', '1638065140-product.png'),
(55, 'Kem xay bánh Oreo', 'Kem xay bánh Oreo', '<p>Kem xay b&aacute;nh Oreo</p>', 49, 36000, 0, 1, '2021-11-27 19:11:40', '2021-11-27 19:11:40', '1638065500-product.png'),
(56, 'Kem McSundae sốt dâu', 'Kem McSundae sốt dâu', '<p>Kem McSundae sốt d&acirc;u</p>', 49, 29000, 0, 1, '2021-11-27 19:13:05', '2021-11-27 19:13:05', '1638065585-product.png'),
(57, 'Gà nửa con sốt phô mai cay', 'Gà nửa con sốt phô mai cay', '<p>G&agrave; nửa con sốt ph&ocirc; mai cay&nbsp;</p>', 45, 160000, 159000, 1, '2021-11-27 19:17:19', '2021-11-27 19:17:19', '1638065839-product.jpg'),
(58, 'Gà nửa con sốt creamy onion', 'Gà nửa con sốt creamy onion', '<p>G&agrave; nửa con sốt creamy onion</p>', 45, 139000, 0, 1, '2021-11-27 19:21:09', '2021-11-27 19:21:09', '1638066069-product.jpg'),
(59, 'Gà không xương sốt phô mai cay', 'Gà không xương sốt phô mai cay', '<p>G&agrave; kh&ocirc;ng xương sốt ph&ocirc; mai cay</p>', 45, 159000, 0, 1, '2021-11-27 19:23:36', '2021-11-27 19:23:36', '1638066216-product.jpg'),
(60, 'ĐÙI GÀ SỐT NGŨ VỊ (5 MIẾNG)', 'ĐÙI GÀ SỐT NGŨ VỊ (5 MIẾNG)', '<p>Đ&Ugrave;I G&Agrave; SỐT NGŨ VỊ (5 MIẾNG)</p>', 45, 139000, 0, 1, '2021-11-27 19:28:29', '2021-11-27 19:28:29', '1638066509-product.jpg'),
(61, 'CƠM GÀ KHÔNG XƯƠNG (SỐT NGŨ VỊ)', 'CƠM GÀ KHÔNG XƯƠNG (SỐT NGŨ VỊ)', '<p>CƠM G&Agrave; KH&Ocirc;NG XƯƠNG (SỐT NGŨ VỊ)</p>', 46, 45000, 0, 1, '2021-11-27 19:40:20', '2021-11-27 19:40:20', '1638067220-product.jpg'),
(62, 'CƠM ĐÙI GÀ (SỐT NGŨ VỊ)', 'CƠM ĐÙI GÀ (SỐT NGŨ VỊ)', '<p>CƠM Đ&Ugrave;I G&Agrave; (SỐT NGŨ VỊ)&nbsp;</p>', 46, 45000, 0, 1, '2021-11-27 20:02:50', '2021-11-27 20:02:50', '1638068570-product.jpg'),
(63, 'MỀ GÀ SỐT PHÔ MAI CAY NHỎ (100gr)', 'MỀ GÀ SỐT PHÔ MAI CAY NHỎ (100gr)', '<p>M&oacute;n mề g&agrave; sốt ph&ocirc; mai cay được tẩm ướp với c&ocirc;ng thức độc quyền v&agrave; c&aacute;c vị sốt đặc biệt. G&agrave; chi&ecirc;n với lớp bột mỏng b&ecirc;n ngo&agrave;i mang lại cảm gi&aacute;c gi&ograve;n tan, thịt b&ecirc;n trong ngọt mềm, thơm phức kết hợp với c&aacute;c loại sốt đa dạng, mang nhiều hương vị kh&aacute;c nhau tạo ra sự lựa chọn đa dạng cho nhiều thực kh&aacute;ch.</p>', 45, 69000, 0, 1, '2021-11-27 20:04:41', '2021-11-29 07:40:44', '1638068681-product.jpg'),
(64, 'MIẾN CUỘN RONG BIỂN', 'MIẾN CUỘN RONG BIỂN', '<p>Miến cuộn rong biển chi&ecirc;n gi&ograve;n l&agrave; một m&oacute;n ăn mới lạ, hấp dẫn v&agrave; dễ l&agrave;m. Chỉ v&agrave;i bước đơn giản bạn đ&atilde; c&oacute; ngay m&oacute;n ăn vặt lạ miệng để thưởng thức c&ugrave;ng gia đ&igrave;nh, bạn b&egrave;.</p>', 48, 30000, 0, 1, '2021-11-27 20:13:06', '2021-11-29 07:37:48', '1638069186-product.jpg'),
(65, 'CÁNH GÀ SỐT NGŨ VỊ (10 MIẾNG)', 'CÁNH GÀ SỐT NGŨ VỊ (10 MIẾNG)', '<p>C&aacute;nh g&agrave; sốt ngũ vị được tẩm ướp với c&ocirc;ng thức độc quyền v&agrave; c&aacute;c vị sốt đặc biệt. G&agrave; chi&ecirc;n với lớp bột mỏng b&ecirc;n ngo&agrave;i mang lại cảm gi&aacute;c gi&ograve;n tan, thịt b&ecirc;n trong ngọt mềm, thơm phức kết hợp với c&aacute;c loại sốt đa dạng, mang nhiều hương vị kh&aacute;c nhau tạo ra sự lựa chọn đa dạng cho nhiều thực kh&aacute;ch.</p>', 45, 149000, 148000, 1, '2021-11-27 20:15:05', '2021-11-29 07:36:21', '1638069305-product.jpg'),
(66, 'MỀ GÀ SỐT CREAMY ONION NHỎ (100gr)', 'MỀ GÀ SỐT CREAMY ONION NHỎ (100gr)', '<p>M&oacute;n mề g&agrave; sốt creamy onion được tẩm ướp với c&ocirc;ng thức độc quyền v&agrave; c&aacute;c vị sốt đặc biệt. G&agrave; chi&ecirc;n với lớp bột mỏng b&ecirc;n ngo&agrave;i mang lại cảm gi&aacute;c gi&ograve;n tan, thịt b&ecirc;n trong ngọt mềm, thơm phức kết hợp với c&aacute;c loại sốt đa dạng, mang nhiều hương vị kh&aacute;c nhau tạo ra sự lựa chọn đa dạng cho nhiều thực kh&aacute;ch.</p>', 45, 59000, 0, 1, '2021-11-27 20:27:03', '2021-11-29 07:35:24', '1638070023-product.jpg'),
(67, 'Burger Bulgogi', 'Burger Bulgogi', '<p>Những chiếc b&aacute;nh m&igrave; kẹp thịt bulgogi ngon ngọt n&agrave;y được lấy cảm hứng từ đặc sản nổi tiếng của H&agrave;n Quốc l&agrave; bulgogi, hoặc những l&aacute;t thịt b&ograve; được tẩm ướp nướng tr&ecirc;n một miếng thịt nướng hoặc vỉ nướng tr&ecirc;n bếp.&nbsp;B&aacute;nh m&igrave; kẹp thịt rất dễ l&agrave;m, nhiều hương vị v&agrave; ph&ugrave; hợp với gia đ&igrave;nh.</p>', 47, 42800, 0, 1, '2021-12-02 09:34:58', '2021-12-02 09:34:58', '1638462898-product.png'),
(68, 'Burger Double Double', 'Burger Double Double', '<p>Chắc chắn, những miếng chả tươi kh&ocirc;ng bao giờ đ&ocirc;ng lạnh đ&atilde; đủ ngon, nhưng b&aacute;nh m&igrave; sandwich c&ograve;n hơn thế nữa.&nbsp;Đ&oacute; l&agrave; sự giao thoa giữa ph&ocirc; mai Mỹ b&eacute;o ngậy, b&aacute;nh m&igrave; nướng đậm đ&agrave; ngọt ng&agrave;o, c&agrave; chua ngon hơn mức trung b&igrave;nh, tảng băng gi&ograve;n, l&aacute;t h&agrave;nh t&acirc;y đầy đặn, kh&ocirc;ng t&aacute;ch rời, v&agrave; tất cả quan trọng Sweet, tangy, dưa chua đầy l&acirc;y lan.&nbsp;Đ&oacute; l&agrave; một quả bom được lắp đặt để tấn c&ocirc;ng mọi trung t&acirc;m kho&aacute;i cảm tr&ecirc;n thiết bị đầu cuối ph&acirc;n t&iacute;ch vị gi&aacute;c&nbsp; mặn, ngọt, mặn, mềm, gi&ograve;n v&agrave; tươi.</p>', 47, 57000, 0, 1, '2021-12-02 09:36:55', '2021-12-02 09:36:55', '1638463015-product.png'),
(69, 'Burger Phô Mai', 'Burger Phô Mai', '<p>Hamburger pho m&aacute;t hay Burger ph&ocirc; mai l&agrave; một loại hamburger với topping l&agrave; pho m&aacute;t. Theo truyền thống, miếng pho m&aacute;t thường được đặt b&ecirc;n tr&ecirc;n miếng thịt. Người ta thường cho th&ecirc;m pho m&aacute;t v&agrave;o miếng thịt b&ograve; xay đang nấu trong thời gian ngắn, điều n&agrave;y tạo điều kiện cho pho m&aacute;t tan chảy.</p>', 47, 33000, 0, 1, '2021-12-02 09:40:01', '2021-12-02 09:40:01', '1638463201-product.png'),
(70, '4 MIẾNG SNACK MỰC', '4 MIẾNG SNACK MỰC', '<p>Từng miếng snack gi&ograve;n xốp thấm đẫm vị mực ngọn mặn cay đủ vị ho&agrave; quyện cực đ&atilde;, một trong số &iacute;t ỏi những loại b&aacute;nh c&oacute; vị ngon cuồng say. Nếu bạn n&agrave;o ghiền vị mực th&igrave; đừng bỏ qua loại snack n&agrave;y.</p>', 48, 40000, 39000, 1, '2021-12-02 09:42:53', '2021-12-02 09:42:53', '1638463373-product.png'),
(71, 'GÀ KHÔNG XƯƠNG TRUYỀN THỐNG (20 MIẾNG)', 'GÀ KHÔNG XƯƠNG TRUYỀN THỐNG (20 MIẾNG)', '<p>C&acirc;u chuyện n&agrave;y bắt nguồn từ cuốn t&agrave;i liệu giả của những sinh vi&ecirc;n trường đại học Pohang c&oacute; t&ecirc;n l&agrave; &ldquo;Qu&aacute; tr&igrave;nh l&agrave;m g&agrave; kh&ocirc;ng xương&rdquo; được soạn ra như một phần b&agrave;i tập trong chương tr&igrave;nh học. Tất nhi&ecirc;n điều n&agrave;y kh&ocirc;ng phải l&agrave; sự thật, g&agrave; kh&ocirc;ng xương ho&agrave;n to&agrave;n l&agrave; sản phẩm l&agrave;m thủ c&ocirc;ng.Do c&ocirc;ng đoạn gia c&ocirc;ng sẽ phức tạp hơn so với g&agrave; b&igrave;nh thường n&ecirc;n ph&aacute;t sinh ra chi ph&iacute; nh&acirc;n c&ocirc;ng đắt đỏ, dẫn đến gi&aacute; th&agrave;nh của loại g&agrave; kh&ocirc;ng xương cao hơn so với gi&aacute; th&agrave;nh g&agrave; b&igrave;nh thường. Một người l&agrave;m nghề cho biết miếng thịt g&agrave; nguy&ecirc;n kh&ocirc;ng xương sẽ c&oacute; gi&aacute; đắt gấp đ&ocirc;i so với miếng thịt g&agrave; b&igrave;nh thường.</p>\r\n\r\n<p>&nbsp;</p>', 45, 119000, 0, 1, '2021-12-06 20:49:51', '2022-07-18 20:17:40', '1658200660-product.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `id_user`, `id_product`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, 66, 3, '2023-06-09 07:52:01', '2023-06-09 07:52:01'),
(2, 1, 66, 5, '2023-06-09 07:57:08', '2023-06-09 07:57:08'),
(3, 1, 66, 1, '2023-06-09 07:57:58', '2023-06-09 07:57:58'),
(4, 1, 66, 3, '2023-06-09 07:58:04', '2023-06-09 07:58:04'),
(5, 1, 66, 4, '2023-06-09 08:19:42', '2023-06-09 08:19:42'),
(6, 1, 66, 4, '2023-06-09 08:22:48', '2023-06-09 08:22:48'),
(7, 1, 17, 4, '2023-06-11 20:15:44', '2023-06-11 20:15:44'),
(8, 1, 17, 2, '2023-06-11 20:51:45', '2023-06-11 20:51:45'),
(9, 1, 24, 5, '2023-06-11 21:15:38', '2023-06-11 21:15:38'),
(10, 1, 65, 4, '2023-06-12 15:14:08', '2023-06-12 15:14:08'),
(11, 1, 70, 4, '2023-06-12 15:53:01', '2023-06-12 15:53:01'),
(12, 1, 70, 5, '2023-06-12 15:53:02', '2023-06-12 15:53:02'),
(13, 1, 64, 5, '2023-06-12 17:07:58', '2023-06-12 17:07:58'),
(14, 1, 64, 2, '2023-06-12 17:08:02', '2023-06-12 17:08:02'),
(15, 1, 55, 4, '2023-06-12 17:12:34', '2023-06-12 17:12:34'),
(16, 2, 67, 4, '2023-06-13 05:27:47', '2023-06-13 05:27:47'),
(17, 2, 60, 4, '2023-06-13 12:49:40', '2023-06-13 12:49:40'),
(18, 1, 25, 5, '2023-06-13 12:51:54', '2023-06-13 12:51:54'),
(19, 1, 43, 3, '2023-06-13 12:52:01', '2023-06-13 12:52:01'),
(20, 1, 21, 4, '2023-06-13 14:10:20', '2023-06-13 14:10:20'),
(21, 1, 50, 4, '2023-06-13 18:01:40', '2023-06-13 18:01:40'),
(22, 1, 58, 5, '2023-06-13 18:01:46', '2023-06-13 18:01:46'),
(23, 1, 66, 4, '2023-06-13 18:10:42', '2023-06-13 18:10:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruits`
--

CREATE TABLE `recruits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `recruits`
--

INSERT INTO `recruits` (`id`, `name`, `thumb`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Tuyển dụng nhân viên tháng 11/2021', '1638433037-product.jpg', '<p><strong>- Vị tr&iacute;: nh&acirc;n vi&ecirc;n phục vụ </strong></p>\r\n\r\n<p><strong>- Mức lương: 20k/1h </strong></p>\r\n\r\n<p><strong>- Số lượng: 15-30 người</strong></p>', '<h2>M&Ocirc; TẢ C&Ocirc;NG VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>Phục vụ kh&aacute;ch h&agrave;ng theo ti&ecirc;u chuẩn của KFC:</li>\r\n	<li>Đ&oacute;n tiếp v&agrave; phục vụ kh&aacute;ch h&agrave;ng trong khu vực ăn uống;</li>\r\n	<li>Tiếp nhận đặt phần ăn v&agrave; t&iacute;nh tiền cho kh&aacute;ch tại quầy;</li>\r\n	<li>Đảm bảo vệ sinh trong khu vực Nh&agrave; h&agrave;ng;</li>\r\n	<li>C&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Quản l&yacute; Nh&agrave; h&agrave;ng</li>\r\n</ul>\r\n\r\n<h2>Y&Ecirc;U CẦU:</h2>\r\n\r\n<ul>\r\n	<li>Nam/Nữ từ 16 tuổi đến 40 tuổi</li>\r\n	<li>T&aacute;c phong tốt, th&acirc;n thiện, y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ kh&aacute;ch h&agrave;ng</li>\r\n	<li>Sẵn s&agrave;ng l&agrave;m việc c&aacute;c ng&agrave;y cuối tuần, Lễ, Tết</li>\r\n</ul>\r\n\r\n<h2>QUYỀN LỢI:</h2>\r\n\r\n<ul>\r\n	<li>Mức lương cạnh tranh</li>\r\n	<li>Được tham gia bảo hiểm tai nạn 24/24 sau 3 th&aacute;ng l&agrave;m việc</li>\r\n	<li>Con đường thăng tiến r&otilde; r&agrave;ng v&agrave; rộng mở để trở th&agrave;nh Quản l&yacute; nh&agrave; h&agrave;ng</li>\r\n	<li>&nbsp;L&agrave;m việc trong m&ocirc;i trường năng động, gi&uacute;p nh&acirc;n vi&ecirc;n ph&aacute;t triển kỹ năng giao tiếp, giải quyết vấn đề v&agrave; quản l&yacute; c&ocirc;ng việc</li>\r\n</ul>\r\n\r\n<h2>TH&Ocirc;NG TIN KH&Aacute;C:</h2>\r\n\r\n<ul>\r\n	<li>&nbsp;L&agrave;m việc theo ca xoay: s&aacute;ng - chiều - tối do Quản l&yacute; sắp xếp mỗi tuần. (C&oacute; ca ph&ugrave; hợp cho sinh vi&ecirc;n)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>HỒ SƠ CẦN CHUẨN BỊ KHI NHẬN VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>2 ảnh thẻ 3x4</li>\r\n	<li>Sao y chứng thực Chứng minh nh&acirc;n d&acirc;n (kh&ocirc;ng qu&aacute; 06 th&aacute;ng)</li>\r\n	<li>Bản sao Văn bằng / Chứng chỉ đ&agrave;o tạo (nếu c&oacute;)</li>\r\n	<li>Giấy chứng nhận đủ sức khoẻ l&agrave;m việc trong nh&agrave; h&agrave;ng (theo&nbsp;Th&ocirc;ng tư 14/2013/TT-BYT ng&agrave;y 06/05/2013)</li>\r\n</ul>', 1, '2021-12-02 00:03:28', '2021-12-02 09:01:33'),
(2, 'Tuyển dụng nhân viên tháng 10/2021', '1638430031-recruits.jpg', '<p><strong>- Vị tr&iacute;: Nh&acirc;n vi&ecirc;n phục vụ </strong></p>\r\n\r\n<p><strong>- Mức lương: 20k/1h </strong></p>\r\n\r\n<p><strong>- Số lượng: 5 người</strong></p>', '<h2>M&Ocirc; TẢ C&Ocirc;NG VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>Phục vụ kh&aacute;ch h&agrave;ng theo ti&ecirc;u chuẩn của KFC:</li>\r\n	<li>Đ&oacute;n tiếp v&agrave; phục vụ kh&aacute;ch h&agrave;ng trong khu vực ăn uống;</li>\r\n	<li>Tiếp nhận đặt phần ăn v&agrave; t&iacute;nh tiền cho kh&aacute;ch tại quầy;</li>\r\n	<li>Đảm bảo vệ sinh trong khu vực Nh&agrave; h&agrave;ng;</li>\r\n	<li>C&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Quản l&yacute; Nh&agrave; h&agrave;ng</li>\r\n</ul>\r\n\r\n<h2>Y&Ecirc;U CẦU:</h2>\r\n\r\n<ul>\r\n	<li>Nam/Nữ từ 16 tuổi đến 40 tuổi</li>\r\n	<li>T&aacute;c phong tốt, th&acirc;n thiện, y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ kh&aacute;ch h&agrave;ng</li>\r\n	<li>Sẵn s&agrave;ng l&agrave;m việc c&aacute;c ng&agrave;y cuối tuần, Lễ, Tết</li>\r\n</ul>\r\n\r\n<h2>QUYỀN LỢI:</h2>\r\n\r\n<ul>\r\n	<li>Mức lương cạnh tranh</li>\r\n	<li>Được tham gia bảo hiểm tai nạn 24/24 sau 3 th&aacute;ng l&agrave;m việc</li>\r\n	<li>Con đường thăng tiến r&otilde; r&agrave;ng v&agrave; rộng mở để trở th&agrave;nh Quản l&yacute; nh&agrave; h&agrave;ng</li>\r\n	<li>&nbsp;L&agrave;m việc trong m&ocirc;i trường năng động, gi&uacute;p nh&acirc;n vi&ecirc;n ph&aacute;t triển kỹ năng giao tiếp, giải quyết vấn đề v&agrave; quản l&yacute; c&ocirc;ng việc</li>\r\n</ul>\r\n\r\n<h2>TH&Ocirc;NG TIN KH&Aacute;C:</h2>\r\n\r\n<ul>\r\n	<li>&nbsp;L&agrave;m việc theo ca xoay: s&aacute;ng - chiều - tối do Quản l&yacute; sắp xếp mỗi tuần. (C&oacute; ca ph&ugrave; hợp cho sinh vi&ecirc;n)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>HỒ SƠ CẦN CHUẨN BỊ KHI NHẬN VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>2 ảnh thẻ 3x4</li>\r\n	<li>Sao y chứng thực Chứng minh nh&acirc;n d&acirc;n (kh&ocirc;ng qu&aacute; 06 th&aacute;ng)</li>\r\n	<li>Bản sao Văn bằng / Chứng chỉ đ&agrave;o tạo (nếu c&oacute;)</li>\r\n	<li>Giấy chứng nhận đủ sức khoẻ l&agrave;m việc trong nh&agrave; h&agrave;ng (theo&nbsp;Th&ocirc;ng tư 14/2013/TT-BYT ng&agrave;y 06/05/2013)</li>\r\n</ul>', 1, '2021-12-02 00:27:11', '2021-12-02 08:57:33'),
(3, 'Tuyển dụng nhân viên tháng 5/2023', '1638430365-recruits.jpg', '<p><strong>- Vị tr&iacute;: Nh&acirc;n vi&ecirc;n tiếp thực </strong></p>\r\n\r\n<p><strong>- Mức lương: 25k/1h </strong></p>\r\n\r\n<p><strong>- Số lượng: 5 người</strong></p>', '<h2>M&Ocirc; TẢ C&Ocirc;NG VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>Phục vụ kh&aacute;ch h&agrave;ng theo ti&ecirc;u chuẩn của KFC:</li>\r\n	<li>Đ&oacute;n tiếp v&agrave; phục vụ kh&aacute;ch h&agrave;ng trong khu vực ăn uống;</li>\r\n	<li>Tiếp nhận đặt phần ăn v&agrave; t&iacute;nh tiền cho kh&aacute;ch tại quầy;</li>\r\n	<li>Đảm bảo vệ sinh trong khu vực Nh&agrave; h&agrave;ng;</li>\r\n	<li>C&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Quản l&yacute; Nh&agrave; h&agrave;ng</li>\r\n</ul>\r\n\r\n<h2>Y&Ecirc;U CẦU:</h2>\r\n\r\n<ul>\r\n	<li>Nam/Nữ từ 16 tuổi đến 40 tuổi</li>\r\n	<li>T&aacute;c phong tốt, th&acirc;n thiện, y&ecirc;u th&iacute;ch c&ocirc;ng việc phục vụ kh&aacute;ch h&agrave;ng</li>\r\n	<li>Sẵn s&agrave;ng l&agrave;m việc c&aacute;c ng&agrave;y cuối tuần, Lễ, Tết</li>\r\n</ul>\r\n\r\n<h2>QUYỀN LỢI:</h2>\r\n\r\n<ul>\r\n	<li>Mức lương cạnh tranh</li>\r\n	<li>Được tham gia bảo hiểm tai nạn 24/24 sau 3 th&aacute;ng l&agrave;m việc</li>\r\n	<li>Con đường thăng tiến r&otilde; r&agrave;ng v&agrave; rộng mở để trở th&agrave;nh Quản l&yacute; nh&agrave; h&agrave;ng</li>\r\n	<li>&nbsp;L&agrave;m việc trong m&ocirc;i trường năng động, gi&uacute;p nh&acirc;n vi&ecirc;n ph&aacute;t triển kỹ năng giao tiếp, giải quyết vấn đề v&agrave; quản l&yacute; c&ocirc;ng việc</li>\r\n</ul>\r\n\r\n<h2>TH&Ocirc;NG TIN KH&Aacute;C:</h2>\r\n\r\n<ul>\r\n	<li>&nbsp;L&agrave;m việc theo ca xoay: s&aacute;ng - chiều - tối do Quản l&yacute; sắp xếp mỗi tuần. (C&oacute; ca ph&ugrave; hợp cho sinh vi&ecirc;n)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>HỒ SƠ CẦN CHUẨN BỊ KHI NHẬN VIỆC:</h2>\r\n\r\n<ul>\r\n	<li>2 ảnh thẻ 3x4</li>\r\n	<li>Sao y chứng thực Chứng minh nh&acirc;n d&acirc;n (kh&ocirc;ng qu&aacute; 06 th&aacute;ng)</li>\r\n	<li>Bản sao Văn bằng / Chứng chỉ đ&agrave;o tạo (nếu c&oacute;)</li>\r\n	<li>Giấy chứng nhận đủ sức khoẻ l&agrave;m việc trong nh&agrave; h&agrave;ng (theo&nbsp;Th&ocirc;ng tư 14/2013/TT-BYT ng&agrave;y 06/05/2013)</li>\r\n</ul>', 1, '2021-12-02 00:32:45', '2023-05-07 06:37:29'),
(5, 'Tuyển dụng tháng 3/2023', '1638434654-recruits.jpg', '<p><strong>- Vị tr&iacute;: Nh&acirc;n vi&ecirc;n kinh doanh </strong></p>\r\n\r\n<p><strong>- Mức lương: 6tr/1 th&aacute;ng </strong></p>\r\n\r\n<p><strong>- Số lượng: 1 người</strong></p>', '<p><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<ul>\r\n	<li>Thực hiện B&aacute;o c&aacute;o l&atilde;i lỗ cho c&aacute;c cửa h&agrave;ng;</li>\r\n	<li>Thực hiện c&aacute;c b&aacute;o c&aacute;o li&ecirc;n quan đến thuế GTGT th&aacute;ng, qu&yacute; theo luật định;</li>\r\n	<li>Chịu tr&aacute;ch nhiệm v&agrave; l&agrave;m việc với cơ quan Thuế cho Quyết to&aacute;n thuế GTGT tại c&aacute;c tỉnh địa phương;</li>\r\n	<li>Giải tr&igrave;nh số liệu kế to&aacute;n, l&agrave;m việc với cơ quan chức năng, kiểm to&aacute;n;</li>\r\n	<li>Phụ tr&aacute;ch quản l&yacute;, huấn luyện th&agrave;nh vi&ecirc;n trong nh&oacute;m (5-7 th&agrave;nh vi&ecirc;n);</li>\r\n	<li>V&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c được Trưởng ph&ograve;ng giao ph&oacute;.</li>\r\n</ul>\r\n\r\n<p><strong>Y&ecirc;u cầu:</strong></p>\r\n\r\n<ul>\r\n	<li>C&oacute; &iacute;t nhất 03 năm kinh nghiệm tại vị tr&iacute; Kế to&aacute;n tổng hợp/ Kế To&aacute;n Thuế hoặc vị tr&iacute; tương tự;</li>\r\n	<li>Từng c&oacute; kinh nghiệm l&agrave;m việc trong ng&agrave;nh F&amp;B, Retail l&agrave; ưu điểm;</li>\r\n	<li>Kỹ năng vi t&iacute;nh văn ph&ograve;ng tốt, sử dụng th&agrave;nh thạo Word, Excel v&agrave; c&aacute;c phần mềm kế to&aacute;n.</li>\r\n	<li>Tiếng Anh: Giao tiếp tốt, đọc hiểu t&agrave;i liệu chuy&ecirc;n ng&agrave;nh</li>\r\n	<li>C&oacute; khả năng giao tiếp v&agrave; đ&agrave;m ph&aacute;n tốt với đối t&aacute;c, khả năng lead Team.</li>\r\n	<li>Tự lập, l&agrave;m việc đội nh&oacute;m. Chịu được &aacute;p lực c&ocirc;ng việc.</li>\r\n	<li>Sẵn s&agrave;ng giải quyết vấn đề ph&aacute;t sinh ngo&agrave;i giờ l&agrave;m việc (nếu c&oacute;);</li>\r\n	<li>Trung thực, cẩn thận v&agrave; chịu tr&aacute;ch nhiệm trong c&ocirc;ng việc được giao;</li>\r\n	<li>Vui vẻ, h&ograve;a đồng, th&acirc;n thiện với đồng nghiệp.</li>\r\n</ul>\r\n\r\n<p><strong>Quyền lợi:</strong></p>\r\n\r\n<ul>\r\n	<li>Lương th&aacute;ng 13, KPIs;</li>\r\n	<li>Tham gia đầy đủ chế độ bảo hiểm theo Luật.</li>\r\n	<li>12 ng&agrave;y nghỉ ph&eacute;p năm.</li>\r\n	<li>Được cung cấp dụng cụ l&agrave;m việc (laptop, điện thoại b&agrave;n&hellip;)</li>\r\n	<li>Tham gia c&aacute;c hoạt động ngoại kh&oacute;a v&agrave; teambuilding.</li>\r\n	<li>Cơ hội học hỏi, tham gia c&aacute;c kh&oacute;a huấn luyện nội bộ v&agrave; b&ecirc;n ngo&agrave;i, cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; kỹ năng.</li>\r\n</ul>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:</strong>&nbsp;9h00 - 18h00 (nghỉ T7, CN)</p>', 1, '2021-12-02 01:44:14', '2023-05-07 06:37:45'),
(6, 'Tuyển dụng tháng 4/2023', '1642219027-recruits.jpg', '<p><strong>- Vị tr&iacute;:&nbsp;</strong><strong>Quản l&yacute; nh&agrave; h&agrave;ng.</strong></p>\r\n\r\n<p><strong>- Mức lương: 12tr/1 th&aacute;ng</strong></p>\r\n\r\n<p><strong>- Số lượng: 1 người</strong></p>', '<p>Part-time: 4 - 6 tiếng/ng&agrave;y (ca xoay)<br />\r\nFull-time: 8 tiếng/ng&agrave;y (ca xoay)</p>\r\n\r\n<p><strong>M&ocirc; tả c&ocirc;ng việc:</strong></p>\r\n\r\n<ul>\r\n	<li>Thực hiện B&aacute;o c&aacute;o l&atilde;i lỗ cho c&aacute;c cửa h&agrave;ng;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Thực hiện c&aacute;c b&aacute;o c&aacute;o li&ecirc;n quan đến thuế GTGT th&aacute;ng, qu&yacute; theo luật định;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Chịu tr&aacute;ch nhiệm v&agrave; l&agrave;m việc với cơ quan Thuế cho Quyết to&aacute;n thuế GTGT tại c&aacute;c tỉnh địa phương;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Giải tr&igrave;nh số liệu kế to&aacute;n, l&agrave;m việc với cơ quan chức năng, kiểm to&aacute;n;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Phụ tr&aacute;ch quản l&yacute;, huấn luyện th&agrave;nh vi&ecirc;n trong nh&oacute;m (5-7 th&agrave;nh vi&ecirc;n);</li>\r\n	<li>&nbsp;</li>\r\n	<li>V&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c được Trưởng ph&ograve;ng giao ph&oacute;.</li>\r\n</ul>\r\n\r\n<p><strong>Y&ecirc;u cầu:</strong></p>\r\n\r\n<ul>\r\n	<li>C&oacute; &iacute;t nhất 03 năm kinh nghiệm tại vị tr&iacute; Kế to&aacute;n tổng hợp/ Kế To&aacute;n Thuế hoặc vị tr&iacute; tương tự;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Từng c&oacute; kinh nghiệm l&agrave;m việc trong ng&agrave;nh F&amp;B, Retail l&agrave; ưu điểm;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Kỹ năng vi t&iacute;nh văn ph&ograve;ng tốt, sử dụng th&agrave;nh thạo Word, Excel v&agrave; c&aacute;c phần mềm kế to&aacute;n.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Tiếng Anh: Giao tiếp tốt, đọc hiểu t&agrave;i liệu chuy&ecirc;n ng&agrave;nh</li>\r\n	<li>&nbsp;</li>\r\n	<li>C&oacute; khả năng giao tiếp v&agrave; đ&agrave;m ph&aacute;n tốt với đối t&aacute;c, khả năng lead Team.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Tự lập, l&agrave;m việc đội nh&oacute;m. Chịu được &aacute;p lực c&ocirc;ng việc.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Sẵn s&agrave;ng giải quyết vấn đề ph&aacute;t sinh ngo&agrave;i giờ l&agrave;m việc (nếu c&oacute;);</li>\r\n	<li>&nbsp;</li>\r\n	<li>Trung thực, cẩn thận v&agrave; chịu tr&aacute;ch nhiệm trong c&ocirc;ng việc được giao;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Vui vẻ, h&ograve;a đồng, th&acirc;n thiện với đồng nghiệp.</li>\r\n</ul>\r\n\r\n<p><strong>Quyền lợi:</strong></p>\r\n\r\n<ul>\r\n	<li>Lương th&aacute;ng 13, KPIs;</li>\r\n	<li>&nbsp;</li>\r\n	<li>Tham gia đầy đủ chế độ bảo hiểm theo Luật.</li>\r\n	<li>&nbsp;</li>\r\n	<li>12 ng&agrave;y nghỉ ph&eacute;p năm.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Được cung cấp dụng cụ l&agrave;m việc (laptop, điện thoại b&agrave;n&hellip;)</li>\r\n	<li>&nbsp;</li>\r\n	<li>Tham gia c&aacute;c hoạt động ngoại kh&oacute;a v&agrave; teambuilding.</li>\r\n	<li>&nbsp;</li>\r\n	<li>Cơ hội học hỏi, tham gia c&aacute;c kh&oacute;a huấn luyện nội bộ v&agrave; b&ecirc;n ngo&agrave;i, cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; kỹ năng.</li>\r\n</ul>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:</strong>&nbsp;9h00 - 18h00 (nghỉ T7, CN)</p>', 1, '2022-01-14 20:57:07', '2023-05-07 06:37:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OGi4tBsDlaIbc3G0zxNroDq3rHxq2JARlZ5I7OMh', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidGVVMEdWckFyM1RZVWxjVWRqT01BdnJyZDF0RUM3bEtVWHdtcm9ldiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvamVjdGxhcmF2ZWwvcGF5bWVudC9vbmxpbmUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YToxOntpOjA7czo3OiJzdWNjZXNzIjt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkT0E3T2lPWUlPTURBREkycXpmc0NtZTlRdGFJVElRSlJaTFpCSDRKQ0EzRDdPdmYuTzcwc3kiO3M6NToiY2FydHMiO2E6MTp7aTo2MztpOjE7fXM6Nzoic3VjY2VzcyI7czoyNToixJDhurd0IGjDoG5nIHRow6BuaCBjw7RuZyI7fQ==', 1694620865);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(6, 'Slider 1', '#', '1638004713-sliders.jpg', 1, 1, '2021-11-27 02:18:33', '2021-11-27 02:18:33'),
(7, 'Slider 2', '#', '1638004733-sliders.jpg', 2, 1, '2021-11-27 02:18:53', '2021-11-27 02:18:53'),
(8, 'Slider 3', '#', '1638004770-sliders.jpg', 3, 1, '2021-11-27 02:19:30', '2021-11-27 02:19:30');

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
  `avata` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avata`, `role`, `phone`, `address`) VALUES
(1, 'Hoàng Hà', 'hha.20it10@vku.udn.vn', NULL, '$2y$10$OA7OiOYIOMDADI2qzfsCme9QtaITIQJRZLZBH4JCA3D7Ovf.O70sy', 'qYNDKOBU6ljpt0HaNP0IulcqBsHnyumpECpA74qxEiiMLfH3lPjuQbbraibA', '2021-12-05 14:43:16', '2021-12-04 17:38:10', '1638548217-users.jpg', 1, 935386494, 'K41/25 Đặng Thùy Trâm,Đà Nẵng'),
(2, 'Anh Bảo', 'pvabao.20it10@vku.udn.vn', NULL, '$2y$10$KqS7qoVcaMJDR7ii6jRd6.CSubZYvcsckqHNTS.OVKDgduHXMI3eq', NULL, '2021-12-04 17:38:10', '2021-12-04 17:38:10', '1638561763-users.jpg', 1, 328363633, 'K97/10 Phạm Như Xương, Đà Nẵng'),
(3, 'Quản trị viên', 'qtv@gmail.com', NULL, '$2y$10$f7ILxv6rYqjEhyNszXkCVe.rtukwFWsBOUYVITqm4wvFqPyLTDpIW', NULL, NULL, NULL, '', 2, 0, ''),
(4, 'Đắc Thịnh', 'pdthinh1805@gmail.com', NULL, '$2y$10$gZ91MRv/h3/6u4WFUG6a0.VvsbqsxyUs1P.swNUg8kQH1lSS8oXfK', NULL, '2021-12-03 08:59:31', '2021-12-07 17:52:51', '1638547171-users.jpg', 3, 937272838, '10 Nguyễn Hữu Thọ, Đà Nẵng'),
(5, 'Hữu Đức', 'nhduc.20it10@vku.udn.vn', NULL, '$2y$10$uTLc2kq2QUyitM0aNiaLjO5Mgg3.XriJZrbBxOg7j9WVsRqzvZHce', NULL, '2021-12-03 13:16:55', '2022-06-18 11:07:49', '1638562615-users.jpg', 1, 18181818, '74 Lưu Quang Vũ, Đà Nẵng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruits`
--
ALTER TABLE `recruits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `recruits`
--
ALTER TABLE `recruits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
