-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2022 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webxemphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cabinets`
--

CREATE TABLE `cabinets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cabinets`
--

INSERT INTO `cabinets` (`id`, `movie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 66, 28, '2022-05-15 01:01:18', '2022-05-15 01:01:18'),
(20, 56, 28, '2022-05-29 07:24:21', '2022-05-29 07:24:21'),
(21, 58, 23, '2022-06-06 19:25:33', '2022-06-06 19:25:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cates`
--

CREATE TABLE `cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cates`
--

INSERT INTO `cates` (`id`, `cate_name`, `created_at`, `updated_at`) VALUES
(32, 'Hành động', '2022-05-03 07:22:37', '2022-06-11 04:20:47'),
(33, 'Hoạt hình', '2022-05-03 07:22:48', '2022-05-03 07:22:48'),
(34, 'Phim tài liệu', '2022-05-03 07:23:47', '2022-05-03 07:23:47'),
(35, 'Lịch sử', '2022-05-03 07:24:04', '2022-05-03 07:24:04'),
(36, 'Kỳ ảo', '2022-05-03 07:24:15', '2022-05-03 07:24:15'),
(37, 'Lãng mạn', '2022-05-03 07:24:22', '2022-05-03 07:24:22'),
(38, 'Kinh dị', '2022-05-03 07:24:33', '2022-05-03 07:24:33'),
(39, 'Khoa học', '2022-05-03 07:25:12', '2022-05-03 07:25:12'),
(40, 'Thần thoại', '2022-05-03 07:25:44', '2022-05-03 07:25:44'),
(41, 'Tâm lý tình cảm', '2022-05-03 07:51:33', '2022-05-06 00:29:42'),
(42, 'Võ thuật', '2022-05-06 00:30:16', '2022-05-06 00:30:16'),
(43, 'Hình sự', '2022-05-06 00:30:28', '2022-05-06 00:30:28'),
(44, 'Cổ trang', '2022-05-06 01:11:20', '2022-05-06 01:11:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `movie_id`, `comment`, `created_at`, `updated_at`) VALUES
(78, 28, 66, 'phim hay quá', '2022-05-15 01:03:46', '2022-05-15 01:03:46'),
(80, 28, 56, 'ẻthre', '2022-05-29 07:24:34', '2022-05-29 07:24:34'),
(81, 28, 56, 'sdfbfd', '2022-05-29 07:24:41', '2022-05-29 07:24:41'),
(82, 29, 60, 'asjh', '2022-06-07 03:27:02', '2022-06-07 03:27:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Vietsub', NULL, NULL),
(2, 'Thuyết minh', NULL, NULL),
(3, 'Lồng tiếng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `link1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link4` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link5` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link6` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `links`
--

INSERT INTO `links` (`id`, `movie_id`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `created_at`, `updated_at`) VALUES
(55, 56, '<iframe width=\"727\" height=\"409\" src=\"https://aa.nguonphimmoi.com/share/761a0c714184cab2456d17bdfbb8d550\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"727\" height=\"409\" src=\"https://aa.nguonphimmoi.com/20220505/14376_c4994784/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-05-06 00:41:17', '2022-05-06 00:41:17'),
(56, 57, '<iframe width=\"640\" height=\"360\" src=\"https://aa.nguonphimmoi.com/share/7fa2c598be3498baead8d1d2c4485ab9\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://aa.nguonphimmoi.com/20220505/14373_8d5ec9e7/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-05-06 00:45:44', '2022-05-06 00:45:44'),
(57, 58, '<iframe width=\"640\" height=\"360\" src=\"https://hd.1080phim.com/20220430/10367_b6cdc877/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://hd.1080phim.com/share/c0faf875b8596a0999b426631c0b5ff8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-05-06 00:50:02', '2022-05-06 00:50:02'),
(59, 60, '<iframe width=\"640\" height=\"360\" src=\"https://hd.1080phim.com/share/8eab914c88e95773ea769310350ad7cb\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://hd.1080phim.com/20220504/11007_e86c8dbb/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://hd.1080phim.com/20220504/11007_e86c8dbb/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, '2022-05-06 00:56:55', '2022-05-06 00:56:55'),
(65, 66, '<iframe width=\"640\" height=\"360\" src=\"https://aa.nguonphimmoi.com/share/2d0122e6c17cdb89f8eed4d75b5f5eef\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://aa.nguonphimmoi.com/20220505/14359_6639df84/index.m3u8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-05-06 01:23:52', '2022-05-06 01:23:52'),
(68, 69, '<iframe width=\"727\" height=\"409\" src=\"https://kd.hd-bophim.com/share/d3f010d6bc392b904f63ce5792891b71\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"727\" height=\"409\" src=\"https://kd.hd-bophim.com/share/d3f010d6bc392b904f63ce5792891b71\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-06-11 04:32:43', '2022-06-11 04:32:43'),
(69, 70, '<iframe width=\"640\" height=\"360\" src=\"https://kd.hd-bophim.com/share/8f7b2d9100577f77aa8fbb4f51c0366e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, NULL, '2022-06-11 04:35:51', '2022-06-11 04:35:51'),
(70, 71, '<iframe width=\"640\" height=\"360\" src=\"https://kd.hd-bophim.com/share/66e8d052ec2230c66bd11ee6b5a0e3c8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, NULL, '2022-06-11 04:42:15', '2022-06-11 04:42:15'),
(71, 72, '<iframe width=\"640\" height=\"360\" src=\"https://kd.hd-bophim.com/20220611/14197_0f02158b/index.m3u8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, NULL, '2022-06-11 04:45:55', '2022-06-11 04:45:55'),
(72, 73, '<iframe width=\"633\" height=\"352\" src=\"https://kd.hd-bophim.com/share/2e945b99f24f789d68d85ee332131c93\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, NULL, '2022-06-11 04:52:59', '2022-06-11 04:52:59'),
(74, 75, '<iframe width=\"640\" height=\"360\" src=\"https://kd.hd-bophim.com/20220611/14213_8473e0fa/index.m3u8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://kd.hd-bophim.com/20220611/14213_8473e0fa/index.m3u8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2022-06-11 05:00:20', '2022-06-11 05:00:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_07_100824_create_cates_table', 1),
(4, '2020_03_07_101750_create_nations_table', 1),
(6, '2020_03_07_101947_create_languages_table', 1),
(7, '2020_03_07_102555_create_movies_table', 1),
(8, '2020_03_08_025957_create_images_table', 2),
(10, '2020_03_08_030919_create_cabinets_table', 4),
(12, '2020_03_10_021017_create_comments_table', 6),
(13, '2020_03_07_101847_create_years_table', 7),
(16, '2020_03_08_030708_create_links_table', 8),
(18, '2020_03_08_031205_create_recovers_table', 9),
(20, '2014_10_12_100000_create_password_resets_table', 10),
(23, '2020_04_27_041509_create_wallets_table', 11),
(25, '2020_04_27_145809_create_payments_table', 11),
(27, '2020_04_27_151527_create_wallet_charges_table', 12),
(28, '2020_11_19_095149_create_rates_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eng_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `nation_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `poster_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(11,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `vie_name`, `eng_name`, `cate_id`, `nation_id`, `language_id`, `year_id`, `poster_image`, `information`, `trailer`, `director`, `actor`, `quality`, `point`, `time`, `created_at`, `updated_at`, `price`) VALUES
(56, 'Virunga', 'Virunga', 39, 22, 1, 23, 'virunga-thumb.jpg', '<p>C&acirc;u chuyện c&oacute; thật được đề cử Oscar về c&aacute;c kiểm l&acirc;m liều mạng để cứu c&ocirc;ng vi&ecirc;n quốc gia qu&yacute; gi&aacute; nhất của ch&acirc;u Phi v&agrave; bầy khỉ đột gorrila đang bị đe dọa ở đ&oacute;.</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"727\" height=\"409\" src=\"https://www.youtube.com/embed/wxXf2Vxj_EU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Orlando von Einsiedel', 'Đang cập nhật', '1080', '7.2', '100 Phút', '2022-05-06 00:41:17', '2022-05-06 00:41:17', NULL),
(57, 'THANH NIÊN TRƯỚC KHỦNG HOẢNG KHÍ HẬU', 'Youth v Gov', 39, 19, 1, 17, 'thanh-nien-truoc-khung-hoang-khi-hau-thumb.jpg', '<p>Bộ phim t&agrave;i liệu n&agrave;y theo ch&acirc;n h&agrave;nh tr&igrave;nh của 21 nguy&ecirc;n đơn. Họ kiện ch&iacute;nh phủ Hoa Kỳ v&igrave; đ&atilde; c&oacute; những h&agrave;nh động g&acirc;y ra cuộc khủng hoảng kh&iacute; hậu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/Ae3dgp8lyIU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Christi Cooper', 'Đang cập nhật', '1080', '6', '109 Phút', '2022-05-06 00:45:44', '2022-05-06 00:45:44', NULL),
(58, 'CHUYẾN TRĂNG MẬT BÊN MẸ', 'Honeymoon with My Mother', 32, 24, 1, 15, 'chuyen-trang-mat-ben-me-thumb.jpg', '<p>Sau khi Jos&eacute; Luis bị &quot;đ&aacute;&quot; ở lễ đường, người mẹ Mari Carmen tham gia c&ugrave;ng anh trong chuyến đi đ&aacute;ng lẽ l&agrave; d&agrave;nh cho tuần trăng mật. C&oacute; vấn đề g&igrave; xảy ra được chứ?</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/Y3jXdxCS05U\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Paco Caballero', 'Quim Gutiérrez, Carmen Machi, Dominique Guillo, Justina Bustos, Yolanda Ramos, Juanjo Cucalón, Celia Freijeiro, Andrés Velencoso', '1080', '7.5', '120 Phút', '2022-05-06 00:50:02', '2022-05-06 00:50:02', NULL),
(60, 'VỤ CƯỚP TRONG TÂM BÃO', 'The Hurricane Heist', 43, 19, 1, 19, 'vu-cuop-trong-tam-bao-thumb.jpg', '<p>Vụ Cướp Trong T&acirc;m B&atilde;o lấy bối cảnh ở một thị trấn nhỏ ven biển nước Mỹ đang bị một cơn b&atilde;o thế kỷ nhăm nhe tấn c&ocirc;ng. Trong cơn hoảng loạn của tất cả người d&acirc;n cũng như ch&iacute;nh quyền nơi đ&acirc;y th&igrave; lại c&oacute; một &acirc;m mưu kh&aacute;c đ&atilde; được l&ecirc;n kế hoạch. Một băng nh&oacute;m phản động thuộc ch&iacute;nh phủ đang lợi dụng sự rối ren n&agrave;y để thừa cơ hội chiếm đoạt khoản tiền khổng lồ 600 USD từ Kho bạc Mỹ. Khi tất cả mọi người d&acirc;n đ&atilde; di dời tr&aacute;nh b&atilde;o để lại một thị trấn hoang vắng cũng ch&iacute;nh l&agrave; l&uacute;c bọn tội phạm tiến h&agrave;nh vụ cướp của m&igrave;nh, tại đ&acirc;y chỉ c&ograve;n lại một nh&acirc;n vi&ecirc;n Kho bạc cố gắng ngăn chặn &acirc;m mưu n&agrave;y. Anh em Will v&agrave; Breeze l&agrave; những người c&ograve;n lại tr&ecirc;n thị trấn cũng bất đắc dĩ cuốn theo cuộc chạy đua với tử thần để ngăn chặn vụ cướp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/56whWF2NJrM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Rob Cohen', 'Toby Kebbell, Maggie Grace, Ryan Kwanten', '1080', '8.5', '120 Phút', '2022-05-06 00:56:55', '2022-05-06 00:56:55', '30000.000'),
(66, 'CĂN HẦM', '10 Cloverfield Lane', 39, 19, 1, 21, 'can-ham-thumb.jpg', '<p>Sau khi chia tay vị h&ocirc;n phu, một phụ nữ gặp tai nạn v&agrave; tỉnh dậy trong hầm tr&uacute; ẩn cùng một người đ&agrave;n &ocirc;ng. Anh ta thuyết phục c&ocirc; rằng thảm họa tận thế đã xảy ra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/saHzng8fxLs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Dan Trachtenberg', 'John Goodman, Mary Elizabeth Winstead, John Gallagher Jr., Suzanne Cryer', 'HD', '7.2', '104 Phút', '2022-05-06 01:23:52', '2022-05-06 01:23:52', NULL),
(69, 'DẠ KHỔNG TƯỚC', 'Night Peacock', 33, 17, 1, 17, 'da-khong-tuoc-thumb.jpg', '<p>Phim Dạ Khổng Tước - Night Peacock 2016: kể về C&ocirc; g&aacute;i xinh đẹp Elsa (Lưu Diệc Phi) l&agrave; Hoa kiều tại Ph&aacute;p. Elsa rơi v&agrave;o lưới t&igrave;nh tay ba giữa hai anh em: một nh&agrave; nghi&ecirc;n cứu tơ lụa M&atilde; Vinh (L&ecirc; Minh) v&agrave; một thợ xăm bậc thầy l&agrave; Kiến D&acirc;n - em trai của M&atilde; Vinh (Lưu Diệp).</p>', '<iframe width=\"727\" height=\"409\" src=\"https://www.youtube.com/embed/Pb5vPTLHaxM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hạng Hà Sinh', 'Lưu Diệc Phi, Lưu Diệp, Dư Thiếu Quần', '1080', '7.8', '90 Phút', '2022-06-11 04:32:42', '2022-06-11 04:32:42', '30000.000'),
(70, 'XÁC SỐNG NỔI LOẠN 2: TRÒ CHƠI KẾT THÚC', 'Dead Rising: Endgame', 32, 19, 1, 17, 'xac-song-noi-loan-2-tro-choi-ket-thuc-thumb.jpg', '<p>Phim X&aacute;c Sống Nổi Loạn 2: Tr&ograve; Chơi Kết Th&uacute;c - Dead Rising: Endgame 2016: Phần 2 của loạt phim được chuyển thể từ tr&ograve; chơi c&ugrave;ng t&ecirc;n.</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/r4zjkjmK0Fw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Pat Williams', 'Jesse Metcalfe, Keegan Connor Tracy, Marie Avgeropoulos', 'HD', '7.9', '90 Phút', '2022-06-11 04:35:51', '2022-06-11 04:35:51', '25000.000'),
(71, 'GIẤC MƠ HỌA SĨ TRUYỆN TRANH', 'Bakuman Live-Action', 41, 17, 1, 20, 'giac-mo-hoa-si-truyen-tranh-thumb.jpg', '<p>Phim Giấc Mơ Họa Sĩ Truyện Tranh - Bakuman Live-Action 2015: Moritaka Mashiro kh&ocirc;ng muốn đi theo con đường của người ch&uacute; l&agrave; một họa sĩ manga, sau c&ugrave;ng chết v&igrave; kiệt sức. Cậu h&igrave;nh dung m&igrave;nh sẽ tốt nghiệp v&agrave; l&agrave;m việc tại văn ph&ograve;ng. Mọi thứ thay đổi khi cậu đem l&ograve;ng y&ecirc;u một c&ocirc; g&aacute;i trong trường. C&ocirc; g&aacute;i đ&oacute;, người mang hi vọng trở th&agrave;nh diễn vi&ecirc;n lồng tiếng, n&oacute;i với Moritaka rằng c&ocirc; sẽ kết h&ocirc;n với cậu, nhưng chỉ khi cả hai c&ugrave;ng đạt được ước mơ của m&igrave;nh. Moritaka sau đ&oacute; kết hợp c&ugrave;ng người bạn c&ugrave;ng lớp Akito Takagi để xuất bản cuốn manga đầu của họ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/pTgjYFLpG0k\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hitoshi Ohne', 'Takeru Satoh, Ryunosuke Kamiki, Nana Komatsu', 'HD', '7.9', '108 Phút', '2022-06-11 04:42:15', '2022-06-11 04:42:15', NULL),
(72, 'ĐẠP HUYẾT TẦM MAI', 'Port Of Call', 42, 24, 1, 19, 'dap-huyet-tam-mai-thumb.jpg', '<p>Phim Đạp Huyết Tầm Mai (2015): Từ Hồ Nam đến Thạch M&ocirc;n Đ&ocirc;ng Qu&aacute;n, cuối c&ugrave;ng Vương Giai Mai (Xu&acirc;n Hạ) v&agrave; Vương Giai Lợi (Th&aacute;i Kiết) đ&atilde; c&ugrave;ng mẹ đến cảng. Nhưng Vương Giai Mai c&oacute; cuộc sống kh&ocirc;ng vui trong trường học, trong gia đ&igrave;nh cũng xuất hiện m&acirc;u thuẫn. Một năm sau, Vương Giai Mai gặp nạn. A T&agrave;ng (Qu&aacute;ch Ph&uacute; Th&agrave;nh) c&ugrave;ng đồng bọn Y&ecirc;n Sạn (Đ&agrave;m Diệu Văn) điều tra vụ &aacute;n, ph&aacute;t hiện Mai đ&atilde; trở th&agrave;nh thiếu nữ b&aacute;n d&acirc;m, v&agrave; những chứng cứ đ&atilde; chỉ v&agrave;o một t&agrave;i xế xe tải n&oacute;ng t&iacute;nh Đinh Tử Th&ocirc;ng (Bạch Chỉ). Sau đ&oacute; Th&ocirc;ng tự th&uacute; v&agrave; kể ra to&agrave;n bộ vụ &aacute;n. Chỉ c&oacute; A T&agrave;ng cảm thấy c&ograve;n c&oacute; điều đ&aacute;ng nghi, n&ecirc;n đ&atilde; điều tra những người xung quanh Mai v&agrave; Th&ocirc;ng, dần dần ph&aacute;t hiện ra nội t&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/VeZkE31VUmA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Philip Yung', 'Quách Phú Thành, Elaine Jin, Jessie Li', 'HD', '7.8', '108 Phút', '2022-06-11 04:45:55', '2022-06-11 04:45:55', NULL),
(73, 'NUỐT CHỬNG LINH HỒN', 'They Found Hell', 38, 19, 1, 18, 'nuot-chung-linh-hon-thumb.jpg', '<p>Phim Nuốt Chửng Linh Hồn - They Found Hell (2015): Một nh&oacute;m sinh vi&ecirc;n bị kẹt ở địa ngục sau khi thử nghiệm dịch chuyển tức thời kh&ocirc;ng như mong đợi, v&agrave; qu&acirc;n địa ngục c&oacute; &yacute; định hấp thụ linh hồn họ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<iframe width=\"633\" height=\"352\" src=\"https://www.youtube.com/embed/Z8KP7gQsJxQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Nick Lyon', 'Chris Schellenger, Katy Reece, Austin Scott', 'HD', '7.2', '100 Phút', '2022-06-11 04:52:58', '2022-06-11 04:52:58', '23000.000'),
(75, 'RẠP PHIM MA', 'Fear Is Coming', 38, 18, 1, 18, 'rap-phim-ma-thumb.jpg', '<p>Phim Rạp Phim Ma - Fear Is Coming 2016: Hồn ma Th&aacute;i nổi tiếng Chiang Mai thu h&uacute;t rất nhiều du kh&aacute;ch, một nh&oacute;m du kh&aacute;ch sau khi đến thăm rạp phim ma của hồn ma n&agrave;y đ&atilde; phải trải qua rất nhiều hiện tươnhg si&ecirc;u nhi&ecirc;n, v&agrave; sau đ&oacute; l&agrave; những c&aacute;i chết b&iacute; ẩn khiến chuyến du lịch Th&aacute;i Lan của họ trở th&agrave;nh thảm họa.</p>', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/svCwYjOJwSg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hạng Hà Sinh', 'Chen Haomin, Lin Zicong, Fan Meng, Zhao Ziluo, Wang Hongqian', '1080', '7.2', '90 Phút', '2022-06-11 05:00:20', '2022-06-11 05:00:20', '15000.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nations`
--

CREATE TABLE `nations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nation_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nations`
--

INSERT INTO `nations` (`id`, `nation_name`, `created_at`, `updated_at`) VALUES
(15, 'Việt Nam', '2022-05-03 07:17:13', '2022-05-03 07:17:13'),
(17, 'Nhật Bản', '2022-05-03 07:17:28', '2022-05-03 07:17:28'),
(18, 'Hàn Quốc', '2022-05-03 07:17:36', '2022-05-03 07:17:36'),
(19, 'Mỹ', '2022-05-03 07:17:41', '2022-05-03 07:17:41'),
(20, 'Ấn Độ', '2022-05-03 07:18:16', '2022-05-03 07:18:16'),
(22, 'Anh', '2022-05-06 00:28:30', '2022-05-06 00:28:30'),
(23, 'Pháp', '2022-05-06 00:28:40', '2022-05-06 00:28:40'),
(24, 'Quốc gia khác', '2022-05-06 00:29:01', '2022-05-06 00:29:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('vcb000111@cdythadong.edu.vn', 'VIX48JTBnKpg4Fl5eNmncSeSb9fZtdAzX6jCNRTEqScK43LtewLM39H3Qqbo', '2020-04-06 06:47:24', '2020-04-06 06:47:24'),
('vcb000111@cdythadong.edu.vn', 'CQ9Ec0hpfSNTFeIPdaMd6niEt0ePN9DjokjAldeiQ1mBrtzeb3RRDTlAdrM9', '2020-04-06 06:56:21', '2020-04-06 06:56:21'),
('vcb000111@cdythadong.edu.vn', '2L1q0CgSPQhcnmImSJjj7ThksD8UIV6lezJToaNsg0496CbepnIEE2g3CvEO', '2020-04-19 20:27:02', '2020-04-19 20:27:02'),
('thuan.nv035@gmail.com', 'WAdbnRvEhyButIMVF1Kwvy2gXEJREWbVMdZdHtNCwa0o5JNTU4XEK2kp5pc2', '2022-04-29 23:48:02', '2022-04-29 23:48:02'),
('thuan.nv035@gmail.com', 'k8ho2ozq6x18FJ85ZC5WTtkoQvU9vg35HckXH5nJ8P7Xufi4KP2GbWkTMlEL', '2022-06-06 19:21:54', '2022-06-06 19:21:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(11, 28, 60, '2022-05-29 07:25:38', '2022-05-29 07:25:38'),
(12, 29, 60, '2022-06-07 03:26:44', '2022-06-07 03:26:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `rate`, `movie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 31, 11, '2020-12-15 20:25:47', '2020-12-15 20:25:47'),
(2, 7, 48, 23, '2022-04-24 00:24:56', '2022-04-24 00:24:56'),
(3, 9, 67, 28, '2022-05-06 01:32:52', '2022-05-06 01:32:52'),
(4, 8, 67, 23, '2022-05-06 01:40:26', '2022-05-06 01:40:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recovers`
--

CREATE TABLE `recovers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recover_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `level`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(22, 'admin', '$2y$10$kkBejVUP.7SVLYtjnPf06.u8TMJ957/fEDA5P5DYl9p9YwtKmN5kS', 'admin@gmail.com', 'Admin', 1, NULL, NULL, '2021-01-19 20:13:09', '2021-01-19 20:13:09'),
(23, 'thuan', '$2y$10$SLCCiuMv4YtYgi7AP/i5/OgyjNbGkC1gtW29opx7gF2wt.JtJJqb.', 'thuan.nv035@gmail.com', 'Văn Thuận', 0, NULL, 'Y1iCSsLTc6jKzJ3GhDqs1UGxhIOpjGk1z7Dn6ELG22WbNx8n7QenbYck5smV', '2022-04-23 07:31:36', '2022-04-29 23:49:25'),
(27, 'admin1', '$2y$10$40KCJPXeJHBKGRLmsZgFFeC7689iiitmztitQcuYbx9hGFZRZHcbO', 'admin1@example.com', 'admin1', 1, NULL, NULL, '2022-04-25 07:30:50', '2022-04-25 07:30:50'),
(28, 'thien', '$2y$10$v8/lRg8sS9KU5rhQwxJutuvK/eVQiIPQWTcdgFIV0FeaHYQtLvcVC', 'thien@gmail.com', 'thien', 0, NULL, 'm9tHnru9PGZEsknenAcsoM5tKr9N4asXr5wyW4Td9sIWeNM6Re74BsFB0nCX', '2022-05-05 07:28:44', '2022-05-05 07:28:44'),
(29, 'thang', '$2y$10$.Fl7DgBTjApvdh4j.WVZ2.2kvze6Mz06L3ZJWBrHYm/M1zhOQg06W', 'thang@gmail.com', 'thang', 0, NULL, 'pxUZB7E7vMKIvbOfqVE1FfCEZQmISKltpTWr2BsUpZM9VWRcOHxqYgALRDsK', '2022-06-07 03:23:12', '2022-06-07 03:23:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `money` decimal(11,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `money`, `created_at`, `updated_at`) VALUES
(14, 22, '0.000', '2021-01-19 20:13:09', '2021-01-19 20:13:09'),
(15, 23, '150903.000', '2022-04-23 07:31:36', '2022-06-06 19:46:36'),
(19, 27, '0.000', '2022-04-25 07:30:50', '2022-04-25 07:30:50'),
(20, 28, '456702.000', '2022-05-05 07:28:44', '2022-05-29 07:27:35'),
(21, 29, '70000.000', '2022-06-07 03:23:13', '2022-06-07 03:26:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wallet_charges`
--

CREATE TABLE `wallet_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` decimal(11,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wallet_charges`
--

INSERT INTO `wallet_charges` (`id`, `user_id`, `wallet_id`, `orderId`, `money`, `created_at`, `updated_at`) VALUES
(33, 23, 15, '20220424072621', '10000.000', '2022-04-24 00:30:24', '2022-04-24 00:30:24'),
(34, 23, 15, '20220505140451', '100000.000', '2022-05-05 07:06:10', '2022-05-05 07:06:10'),
(35, 23, 15, '20220505140740', '100000.000', '2022-05-05 07:08:35', '2022-05-05 07:08:35'),
(36, 28, 20, '20220505153340', '100000.000', '2022-05-05 08:34:19', '2022-05-05 08:34:19'),
(37, 28, 20, '20220505160926', '16700.000', '2022-05-05 09:09:45', '2022-05-05 09:09:45'),
(38, 28, 20, '20220506071718', '100000.000', '2022-05-06 00:17:41', '2022-05-06 00:17:41'),
(39, 28, 20, '20220510141148', '100000.000', '2022-05-10 07:11:59', '2022-05-10 07:11:59'),
(40, 28, 20, '20220511125914', '100000.000', '2022-05-11 05:59:54', '2022-05-11 05:59:54'),
(41, 28, 20, '20220529142608', '100000.000', '2022-05-29 07:27:35', '2022-05-29 07:27:35'),
(42, 23, 15, '20220607024623', '10900.000', '2022-06-06 19:46:36', '2022-06-06 19:46:36'),
(43, 29, 21, '20220607102344', '100000.000', '2022-06-07 03:26:31', '2022-06-07 03:26:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(15, '2022', '2022-05-03 07:13:05', '2022-05-03 07:13:05'),
(16, '2021', '2022-05-03 07:13:11', '2022-05-03 07:13:11'),
(17, '2020', '2022-05-03 07:13:19', '2022-05-03 07:13:19'),
(18, '2019', '2022-05-03 07:13:27', '2022-05-03 07:13:27'),
(19, '2018', '2022-05-03 07:13:45', '2022-05-03 07:13:45'),
(20, '2017', '2022-05-03 07:13:51', '2022-05-03 07:13:51'),
(21, '2016', '2022-05-03 07:13:59', '2022-05-03 07:13:59'),
(22, '2015', '2022-05-03 07:14:05', '2022-05-03 07:14:05'),
(23, '2014', '2022-05-03 07:14:13', '2022-05-03 07:14:13'),
(24, '2013', '2022-05-03 07:14:26', '2022-05-03 07:14:26'),
(25, 'Trước năm 2013', '2022-05-06 00:30:48', '2022-05-06 00:30:48');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cabinets`
--
ALTER TABLE `cabinets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabinets_movie_id_foreign` (`movie_id`),
  ADD KEY `cabinets_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_cate_name_unique` (`cate_name`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_cate_id_foreign` (`cate_id`),
  ADD KEY `movies_nation_id_foreign` (`nation_id`),
  ADD KEY `movies_language_id_foreign` (`language_id`),
  ADD KEY `movies_year_id_foreign` (`year_id`);

--
-- Chỉ mục cho bảng `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nations_nation_name_unique` (`nation_name`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recovers`
--
ALTER TABLE `recovers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `wallet_charges`
--
ALTER TABLE `wallet_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_charges_user_id_foreign` (`user_id`),
  ADD KEY `wallet_charges_wallet_id_foreign` (`wallet_id`);

--
-- Chỉ mục cho bảng `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_year_unique` (`year`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cabinets`
--
ALTER TABLE `cabinets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `cates`
--
ALTER TABLE `cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `nations`
--
ALTER TABLE `nations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `recovers`
--
ALTER TABLE `recovers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `wallet_charges`
--
ALTER TABLE `wallet_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cabinets`
--
ALTER TABLE `cabinets`
  ADD CONSTRAINT `cabinets_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cabinets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_nation_id_foreign` FOREIGN KEY (`nation_id`) REFERENCES `nations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wallet_charges`
--
ALTER TABLE `wallet_charges`
  ADD CONSTRAINT `wallet_charges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wallet_charges_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
