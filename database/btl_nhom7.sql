-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th6 17, 2023 lúc 03:10 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_nhom7`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', '1686930556-samsung-galaxy-20-fe_3_.jpg', '<p>Điện thoại th&ocirc;ng minh thế hệ mới&nbsp;</p>\r\n', 1, '2023-06-16 15:49:16', '2023-06-17 12:34:28'),
(6, 'Tai nghe', '1686931495-bluetooth-true-wireless-ava-ds201a-wb-021021-090449-600x600.jpg', '<p>Tai nghe c&oacute; d&acirc;y v&agrave; tai nghe blutooth chất lượng cao hỗ trợ mọi thiết bị như điện thoại , laptop , m&aacute;y nghe nhạc ......</p>\r\n', 1, '2023-06-16 16:04:55', '2023-06-17 12:36:46'),
(7, 'Laptop', '1686932095-macbook-air-m1-2020-gray-600x600.jpg', '<p>Laptop chất lượng cao , chạy ổn định , pin tr&acirc;u v&agrave; gi&aacute; cũng đắt</p>\r\n', 1, '2023-06-16 16:07:14', '2023-06-17 14:09:54'),
(8, 'Đồng hồ thông minh', '1686931798-OIP.jpg', '<p>Đồng hồ th&ocirc;ng minh viền bằng&nbsp;<strong>th&eacute;p kh&ocirc;ng gỉ</strong>&nbsp;cứng c&aacute;p. Ngo&agrave;i việc gi&uacute;p giảm cấn m&oacute;p khi va chạm, bảo vệ tốt hơn cho m&agrave;n h&igrave;nh v&agrave; c&aacute;c chi tiết m&aacute;y b&ecirc;n trong th&igrave; khung viền n&agrave;y c&ograve;n mang lại c&aacute;i nh&igrave;n b&oacute;ng bẩy, thu h&uacute;t hơn cho chiếc đồng hồ.</p>\r\n', 1, '2023-06-16 16:09:58', '2023-06-16 23:14:04'),
(9, 'Sạc dự phòng', '1686931968-image-removebg-preview-1.jpg', '<p>Sạc dự ph&ograve;ng d&agrave;nh cho điện thoại , tai nghe blutooth , v&agrave; c&aacute;c sản phẩm c&ocirc;ng nghệ c&oacute; hỗ trợ sạc 5V</p>\r\n', 1, '2023-06-16 16:12:48', '2023-06-16 23:14:15'),
(34, 'Tablet', '1687006519-tablet.jpg', '<p>Đ&acirc;y l&agrave; một m&aacute;y t&iacute;nh bảng di động với m&agrave;n h&igrave;nh hiển thị, vi mạch v&agrave; cả pin đều được thiết kế chung trong một sản phẩm. B&ecirc;n cạnh đ&oacute;, một số m&aacute;y c&ograve;n được trang bị th&ecirc;m bộ cảm biến, micro hay l&agrave; b&uacute;t stylus để thuận tiện hơn cho người d&ugrave;ng trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n', 1, '2023-06-17 12:55:19', '2023-06-17 19:55:19'),
(35, 'Loa', '1687006709-loa2.jpg', '<p>Thiết kế nhỏ gọn,&nbsp;vỏ chống trầy với&nbsp;<strong>UV coating</strong>, c&oacute; d&acirc;y treo tiện dụng.</p>\r\n\r\n<p>&Acirc;m bass mạnh mẽ nhờ c&ocirc;ng nghệ&nbsp;<strong>Extra Bass</strong>&nbsp;v&agrave; bộ xử l&yacute; khuếch t&aacute;n &acirc;m thanh.</p>\r\n\r\n<p>Hỗ trợ nghe nhạc kh&ocirc;ng d&acirc;y qua kết nối&nbsp;<strong>Bluetooth 4.2</strong>.</p>\r\n\r\n<p><strong>Kết nối c&ugrave;ng l&uacute;c 2 loa SRS-XB13</strong>&nbsp;để trải nghiệm &acirc;m thanh Stereo.</p>\r\n\r\n<p>Thời lượng pin l&ecirc;n đến&nbsp;<strong>16 tiếng</strong>, sạc đầy pin trong khoảng 4 - 5 tiếng.</p>\r\n\r\n<p>Chuẩn chống nước, chống bụi&nbsp;<strong>IP67</strong>&nbsp;thoải m&aacute;i thưởng thức &acirc;m nhạc ở bất cứ nơi đ&acirc;u.</p>\r\n\r\n<p>Dễ thao t&aacute;c tăng/giảm &acirc;m lượng, ph&aacute;t/dừng nhạc, nghe/nhận cuộc gọi,...</p>\r\n', 1, '2023-06-17 12:58:29', '2023-06-17 19:58:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduces`
--

CREATE TABLE `introduces` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `introduces`
--

INSERT INTO `introduces` (`id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Giới thiệu về TechStore', 'Website bán sản phẩm công nghệ ( điện thoại , máy tính , loa , tai nghe ,sạc , ...) được thành lập vào ngày 01/04/2023 bởi các thành viên của Group 7 ', '1686985524-introduce-abc.jpg', '<p>Ch&agrave;o mừng đến với TechStore!</p>\r\n\r\n<p>TechStore l&agrave; trang web ti&ecirc;n phong v&agrave; đẳng cấp trong lĩnh vực b&aacute;n h&agrave;ng sản phẩm c&ocirc;ng nghệ. Ch&uacute;ng t&ocirc;i tự h&agrave;o mang đến cho kh&aacute;ch h&agrave;ng một trải nghiệm mua sắm trực tuyến độc đ&aacute;o v&agrave; đầy s&aacute;ng tạo. Với mục ti&ecirc;u trở th&agrave;nh điểm đến số một cho c&aacute;c sản phẩm c&ocirc;ng nghệ, ch&uacute;ng t&ocirc;i cam kết cung cấp những sản phẩm chất lượng h&agrave;ng đầu từ c&aacute;c thương hiệu danh tiếng v&agrave; uy t&iacute;n tr&ecirc;n thị trường.</p>\r\n', 1, '2022-06-10 09:28:33', '2023-06-17 14:05:24'),
(5, 'Quá trình phát triển ', 'Ngày 01/04/2023 :  Bắt đầu dự án làm website . \r\nSau hơn 3 tháng ,  website www.techsote.com chính thức đưa vào hoạt động và của hàng chính đặt ở :  298 Đ. Cầu Diễn, Minh Khai, Bắc Từ Liêm, Hà Nội', '', '<p>Qu&aacute; tr&igrave;nh ph&aacute;t triển của TechStore bắt đầu từ một &yacute; tưởng đơn giản, nhưng đ&atilde; trải qua những nỗ lực đ&aacute;ng kể v&agrave; sự cam kết kh&ocirc;ng ngừng nghỉ. Với đội ngũ nh&acirc;n vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; t&acirc;m huyết, ch&uacute;ng t&ocirc;i đ&atilde; x&acirc;y dựng một hệ thống trang web mạnh mẽ v&agrave; linh hoạt, tạo ra một giao diện người d&ugrave;ng tinh tế v&agrave; th&acirc;n thiện. Qua từng bước ph&aacute;t triển, ch&uacute;ng t&ocirc;i đ&atilde; tạo ra một nền tảng mua sắm đa dạng v&agrave; thuận tiện, đảm bảo kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng t&igrave;m thấy v&agrave; mua c&aacute;c sản phẩm c&ocirc;ng nghệ ưng &yacute; của m&igrave;nh.</p>\r\n', 1, '2022-06-10 09:31:49', '2023-06-17 14:04:56'),
(6, 'Mục tiêu tương lai', 'Mục tiêu tương lai của chúng tôi là không ngừng mở rộng và nâng cao TechStore để trở thành một trung tâm mua sắm toàn diện cho sản phẩm công nghệ. Chúng tôi sẽ tiếp tục mở rộng danh mục sản phẩm, bao gồm các loại sản phẩm mới và đa dạng hơn như điện thoại', '', '<p>Mục ti&ecirc;u tương lai của ch&uacute;ng t&ocirc;i l&agrave; kh&ocirc;ng ngừng mở rộng v&agrave; n&acirc;ng cao TechStore để trở th&agrave;nh một trung t&acirc;m mua sắm to&agrave;n diện cho sản phẩm c&ocirc;ng nghệ. Ch&uacute;ng t&ocirc;i sẽ tiếp tục mở rộng danh mục sản phẩm, bao gồm c&aacute;c loại sản phẩm mới v&agrave; đa dạng hơn như điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh x&aacute;ch tay, thiết bị &acirc;m thanh v&agrave; nhiều hơn nữa. Đồng thời, ch&uacute;ng t&ocirc;i sẽ tăng cường quan hệ với c&aacute;c nh&agrave; sản xuất h&agrave;ng đầu v&agrave; t&igrave;m kiếm những cơ hội hợp t&aacute;c mới để đảm bảo chất lượng v&agrave; đa dạng sản phẩm.</p>\r\n\r\n<p>TechStore kh&ocirc;ng chỉ hướng đến việc cung cấp sản phẩm c&ocirc;ng nghệ h&agrave;ng đầu, m&agrave; c&ograve;n tạo ra một trải nghiệm mua sắm tuyệt vời cho kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, cung cấp dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng tận t&acirc;m v&agrave; giao h&agrave;ng nhanh ch&oacute;ng. Đồng thời, ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng n&acirc;ng cao trải nghiệm người d&ugrave;ng tr&ecirc;n trang web v&agrave; ứng dụng di động của ch&uacute;ng t&ocirc;i, đảm bảo giao diện tương t&aacute;c th&acirc;n thiện, t&igrave;m kiếm dễ d&agrave;ng v&agrave; quy tr&igrave;nh thanh to&aacute;n thuận tiện.</p>\r\n\r\n<p><strong>Cảm ơn bạn đ&atilde; lựa chọn TechStore l&agrave;m địa chỉ mua sắm c&ocirc;ng nghệ của m&igrave;nh. H&atilde;y kh&aacute;m ph&aacute; ngay bộ sưu tập sản phẩm đa dạng v&agrave; hấp dẫn của ch&uacute;ng t&ocirc;i v&agrave; trở th&agrave;nh một phần của cộng đồng c&ocirc;ng nghệ năng động v&agrave; s&aacute;ng tạo!</strong></p>\r\n', 1, '2023-06-17 07:04:23', '2023-06-17 14:09:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `map_url` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maps`
--

INSERT INTO `maps` (`id`, `title`, `hotline`, `fax`, `email`, `summary`, `map_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Số 298 Đ. Cầu Diễn, Minh Khai, Bắc Từ Liêm, Hà Nội', '0123456789', '659021', 'techstore@gmai.com', 'Đến với chúng tôi để trải nghiệm sản phẩm tốt nhất', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29791.457754138675!2d105.74100433476563!3d21.03539791058163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1685885401861!5m2!1svi!2s', 1, '2023-06-01 06:35:49', '2023-06-16 15:57:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(6, 20, 'Đánh giá iPhone 13', 'iPhone 13 thiết kế vẫn vuông vức nhưng cụm camera sau độc lạ hơn. Xét về phong cách thiết kế, iPhone 13 năm nay vẫn sở hữu khung viền vuông vức giống như trên dòng iPhone 12 trước đó. Theo trải nghiệm của tác giả thì iPhone 13 vẫn mang lại cho người dùng ', '1654854525-product-banner-phu-1.jpg', '<h3>X&eacute;t về phong c&aacute;ch thiết kế, iPhone 13 năm nay vẫn sở hữu khung viền vu&ocirc;ng vức giống như tr&ecirc;n d&ograve;ng iPhone 12 trước đ&oacute;. Theo trải nghiệm của t&aacute;c giả th&igrave; iPhone 13 vẫn mang lại cho người d&ugrave;ng cảm gi&aacute;c cầm nắm thoải m&aacute;i v&agrave; chắc chắn. Ngo&agrave;i ra th&igrave; ở phần mặt sau v&agrave; mặt trước của iPhone 13 đều được trang bị một lớp k&iacute;nh nhưng chỉ c&oacute; phần mặt trước của m&aacute;y sẽ được trang bị lớp bảo vệ Ceramic Shield m&agrave; th&ocirc;i. Cụ thể th&igrave; lớp bảo vệ n&agrave;y gi&uacute;p mặt k&iacute;nh của chiếc iPhone 13 trở n&ecirc;n bền hơn, chống trầy xước v&agrave; nứt vỡ tốt hơn một ch&uacute;t so với thế hệ tiền nhiệm.</h3>\r\n', 1, '2022-06-10 09:48:45', '2022-06-10 16:55:26'),
(7, 20, 'Samsung Galaxy S22 Series có gì mới', 'Sau dòng Galaxy S21 thì Samsung đã ra mắt Galaxy S22 series trong sự kiện ngày 16/2 với giá khởi điểm từ 21.9 triệu. Bên cạnh những điểm nhấn về thiết kế, dòng Galaxy S22 cấu hình cực mạnh với Snapdragon 8 Gen 1 và đặc biệt là camera có nhiều cải tiến. Sa', '1654854741-new-banner-phu-2.jpeg', '<p>Đầu ti&ecirc;n, c&ugrave;ng m&igrave;nh điểm qua th&ocirc;ng số cấu h&igrave;nh của Galaxy S22 Ultra nh&eacute;.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: Tấm nền Dynamic AMOLED 2X, k&iacute;ch thước 6.8 inch, độ ph&acirc;n giải QHD+ (3.088 x 1.440 pixel), mật độ điểm ảnh 500 ppi, k&iacute;nh cường lực Gorilla Glass Victus+.</li>\r\n	<li>Camera sau: 12 MP + 108 MP + 10 MP + 10 MP.</li>\r\n	<li>Camera trước: 40 MP.</li>\r\n	<li>CPU: Snapdragon 8 Gen 1.</li>\r\n	<li>RAM: 8 GB hoặc 12 GB.</li>\r\n	<li>Bộ nhớ trong: 128 GB, 256 GB v&agrave;, 512 GB.</li>\r\n	<li>Pin: 5.000 mAh, sạc nhanh 45 W, sạc ngược kh&ocirc;ng d&acirc;y.</li>\r\n	<li>Hệ điều h&agrave;nh: Android 12 (giao diện One UI 4.1)</li>\r\n</ul>\r\n', 1, '2022-06-10 09:52:09', '2022-06-10 16:54:46'),
(8, 20, 'Apple Watch Series 7 có gì mới?', 'Với Apple Watch Series 7, Apple đã loại bỏ tất cả những tin đồn và cung cấp một chiếc đồng hồ mới trông giống chiếc cũ một cách đáng kinh ngạc. Phần lớn Apple Watch Series 7 tương tự như năm ngoái, vì vậy bài đánh giá này sẽ tập trung vào tất cả những gì ', '1654855011-new-apple-watch.jpg', '<p>Rất may, Apple Watch Series 7 tu&acirc;n theo cấu tr&uacute;c gi&aacute; tương tự như Series 6. N&oacute; cũng c&oacute; sẵn từ tất cả c&aacute;c điểm nghi ngờ th&ocirc;ng thường ở tất cả c&aacute;c địa điểm th&ocirc;ng thường mỗi năm tr&ocirc;i qua. Bạn c&oacute; thể mua Apple Watch từ Apple v&agrave; một loạt c&aacute;c nh&agrave; cung cấp b&ecirc;n thứ ba tại cửa h&agrave;ng v&agrave; trực tuyến, bao gồm Amazon, Walmart, Best Buy, Adorama v&agrave; nhiều nh&agrave; cung cấp dịch vụ kh&aacute;c như Verizon v&agrave; AT&amp;T. Mặc d&ugrave; h&atilde;y thận trọng một ch&uacute;t, v&igrave; Đồng hồ được b&aacute;n qua c&aacute;c nh&agrave; mạng c&oacute; xu hướng đi k&egrave;m với g&oacute;i di động v&agrave; c&oacute; thể bạn sẽ cần một g&oacute;i hiện c&oacute; để bắt đầu. Điều đ&oacute; đang được n&oacute;i, nếu bạn th&iacute;ch nh&agrave; cung cấp dịch vụ của m&igrave;nh v&agrave; bạn đang c&acirc;n nhắc một chiếc Apple Watch di động, n&oacute; thường c&oacute; thể l&agrave; một lựa chọn tuyệt vời.</p>\r\n', 1, '2022-06-10 09:53:57', '2022-06-10 16:56:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `price_total` int(11) NOT NULL,
  `payment_status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `weight`, `supplier`, `summary`, `content`, `hot`, `status`, `created_at`, `updated_at`) VALUES
(23, 24, 'Macbook Pro 14', '1654852784-product-macbook-pro-2021.png', 36000000, '1300 gr', 'APPLE', 'Laptop Macbook Pro 14\" 2021 - M1 Pro 14 Core GPU/512GB - Chính hãng Apple VN', '<h1>Laptop Macbook Pro 14&quot; 2021 - M1 Pro 14 Core GPU/512GB - Ch&iacute;nh h&atilde;ng Apple VN</h1>\r\n', '1', 1, '2022-06-10 09:19:33', '2022-06-10 16:19:44'),
(24, 1, 'Samsung Galaxy A14 6GB', '1686932387-product-hinh1.jpg', 3999000, '180 gr', 'SAMSUNG', 'Samsung Galaxy A14 4G được thiết kế với sự thừa hưởng vẻ đẹp tinh tế đến từ dòng sản phẩm cao cấp Galaxy S23 series. Với vẻ đẹp hiện đại, màu sắc thanh lịch và góc cạnh bo tròn tinh tế, những điều này đem đến cho máy một cái nhìn cao cấp hơn về thiết kế đ', '<p>M&agrave;n h&igrave;nh: PLS LCD6.6&quot;Full HD+<br />\r\nHệ điều h&agrave;nh: Android 13<br />\r\nCamera sau: Ch&iacute;nh 50 MP &amp; Phụ 5 MP, 2 MP<br />\r\nCamera trước: 13 MP<br />\r\nChip: Exynos 850<br />\r\nRAM: 6 GB<br />\r\nDung lượng lưu trữ: 128 GB<br ', '1', 1, '2023-06-16 16:19:47', '2023-06-16 23:19:47'),
(25, 1, 'Samsung Galaxy A24 6GB', '1686932561-product-a24.jpg', 4380000, '200 gr', 'SAMSUNG', 'Samsung Galaxy A24 6GB tiếp tục là mẫu điện thoại tầm trung được nhà Samsung giới thiệu đến thị trường Việt Nam vào tháng 04/2023, máy nổi bật với giá thành rẻ, màn hình Super AMOLED cùng camera 50 MP chụp ảnh sắc nét', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Super AMOLED6.5&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 50 MP &amp; Phụ 5 MP, 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:13 MP</p>\r\n	</li>\r', '1', 1, '2023-06-16 16:22:41', '2023-06-17 12:31:57'),
(26, 1, 'Samsung Galaxy S21 FE 5G (6GB/128GB)', '1686932781-product-s21.jpg', 9990000, '177', 'SAMSUNG', 'Galaxy S21 FE 5G thiết kế mỏng nhẹ với độ dày 7.9 mm, khối lượng chỉ 177 gram, các góc cạnh bo tròn cho cảm giác hài hòa, mềm mại, kết hợp các tông màu thời thượng gồm tím, xanh lá, xám và trắng giúp bạn dễ dàng tạo nên phong cách riêng đầy cá tính.', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Dynamic AMOLED 2X6.4&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:32 MP</p>\r\n	', '1', 1, '2023-06-16 16:26:21', '2023-06-16 23:26:21'),
(27, 1, 'Samsung Galaxy S23 Ultra 5G 256GB', '1686932985-product-s23.jpg', 2699000, '180', 'SAMSUNG', 'Samsung Galaxy S23 Ultra 5G 256GB là chiếc smartphone cao cấp nhất của nhà Samsung, sở hữu cấu hình không tưởng với con chip khủng được Qualcomm tối ưu riêng cho dòng Galaxy và camera lên đến 200 MP, xứng danh là chiếc flagship Android được mong đợi nhất ', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Dynamic AMOLED 2X6.8&quot;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 200 MP &amp; Phụ 12 MP, 10 MP, 10 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trư', '1', 1, '2023-06-16 16:29:45', '2023-06-16 23:29:45'),
(28, 1, 'iPhone 14 Pro Max 128GB', '1686933191-product-ip14pro.jpg', 26590000, '210', 'APPLE', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ ch', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 48 MP &amp; Phụ 12 MP, 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:12 MP</p>\r\n	</li>\r\n<', '1', 1, '2023-06-16 16:33:11', '2023-06-17 12:32:32'),
(29, 1, 'iPhone 14 Plus 128GB', '1686933379-product-ip14pus.jpg', 21699000, '210', 'APPLE', 'Sau nhiều thế hệ điện thoại của Apple thì cái tên “Plus” cũng đã chính thức trở lại vào năm 2022 và xuất hiện trên chiếc iPhone 14 Plus 128GB, nổi trội với ngoại hình bắt trend cùng màn hình kích thước lớn để đem đến không gian hiển thị tốt hơn cùng cấu h', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:iOS 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:Apple A15 Bi', '1', 1, '2023-06-16 16:36:07', '2023-06-17 12:32:19'),
(30, 1, 'OPPO Find N2 Flip 5G', '1686933938-product-oppo-n2-flip-tim-note.jpg', 19990000, '170', 'OPPO', 'OPPO Find N2 Flip 5G - chiếc điện thoại gập đầu tiên của OPPO đã được giới thiệu chính thức tại Việt Nam vào tháng 03/2023. Sở hữu cấu hình mạnh mẽ cùng thiết kế siêu nhỏ gọn giúp tối ưu kích thước, chiếc điện thoại sẽ cùng bạn nổi bật trong mọi không gia', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:AMOLEDCh&iacute;nh 6.8&quot; &amp; Phụ 3.26&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 13</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 50 MP &amp; Phụ 8 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera tr', '1', 1, '2023-06-16 16:45:38', '2023-06-17 12:32:49'),
(31, 1, 'Realme 10', '1686934289-product-realme-10-vang-1.jpg', 6290000, '200 ', 'REALME', 'Realme 10 có thể xem là một trong những mẫu smartphone đáng mong đợi nhất trong dịp đầu năm 2023 với nhiều điểm nổi bật, một số điểm đáng chú ý có thể kể đến như: Tấm nền Super AMOLED, camera siêu độ phân giải 50 MP đi kèm con chip Helio G99 mạnh mẽ', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:Super AMOLED6.4&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:Ch&iacute;nh 50 MP &amp; Phụ 2 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera trước:16 MP</p>\r\n	</li>\r\n	<li>', NULL, 1, '2023-06-16 16:51:22', '2023-06-17 18:03:32'),
(32, 7, 'Laptop Apple MacBook Air M1 2020', '1686934588-product-macbook-air-m1-2020-silver-01-org.jpg', 18390000, '1.29 kg', 'APPLE', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn. Chip Apple M', '<ul>\r\n	<li>\r\n	<p>CPU:Apple M1</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổ cứng:256 GB SSD</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:13.3&quot;Retina (2560 x 1600)</p>\r\n	</li>\r\n	<li>\r\n	<p>Card m&agrave;n h&igrave;nh:Card t&iacute;ch hợp', '1', 1, '2023-06-16 16:56:28', '2023-06-16 23:56:28'),
(33, 6, 'Tai nghe Có Dây Apple MMTN2', '1686934925-product-tai-nghe-earpods-cong-lightning-apple-mmtn2-org-1.jpg', 690000, '100 gr', 'APPLE', 'Thiết kế hiện đại, đầu tai nghe tròn theo hình dáng của tai.\r\nCó phím điều chỉnh âm lượng, nghe/nhận cuộc gọi.\r\nCổng lightning phù hợp với đa số iPhone, iPad,...\r\nSản phẩm chính hãng nguyên seal 100%.', '<ul>\r\n	<li>\r\n	<p>Jack cắm:Lightning</p>\r\n	</li>\r\n	<li>\r\n	<p>Tương th&iacute;ch:iOS (iPhone)</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiện &iacute;ch:C&oacute; mic thoại</p>\r\n	</li>\r\n	<li>\r\n	<p>Điều khiển bằng:Ph&iacute;m nhấn</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&iacute;m điều khiển', NULL, 1, '2023-06-16 17:02:05', '2023-06-17 18:03:05'),
(34, 6, 'Tai nghe Có Dây OPPO MH320', '1686935084-product-co-day-ep-oppo-mh320-2-1-org.jpg', 180000, '50 gr', 'OPPO', 'Kiểu dáng gọn nhẹ, dây dài 1.2 m, đeo nghe nhạc, gọi điện thuận tiện. \r\nTái tạo chất âm sống động, rõ nét. \r\nTích hợp đầu cắm 3.5 mm kết hợp dùng với đa dạng thiết bị. \r\nCó micro cho chất lượng đàm thoại cao. \r\nNút nhấn dễ chỉnh trả lời cuộc gọi, dừng/chơ', '<ul>\r\n	<li>\r\n	<p>Jack cắm:3.5 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>Tương th&iacute;ch:AndroidWindows</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiện &iacute;ch:C&oacute; mic thoại</p>\r\n	</li>\r\n	<li>\r\n	<p>Điều khiển bằng:Ph&iacute;m nhấn</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&iacute;m điều khiển:', NULL, 1, '2023-06-16 17:04:44', '2023-06-17 12:34:53'),
(35, 6, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N ', '1686935271-product-tai-nghe-bluetooth-true-wireless-galaxy-buds2-pro-den-1.jpg', 3390000, '187 gr', 'SAMSUNG', 'Trong sự kiện Samsung Galaxy Unpacked 2022 diễn ra vào ngày 10/8, Samsung đã cho ra mắt loạt siêu phẩm trong đó có tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N. Bên cạnh thiết kế cải tiến, Galaxy Buds 2 Pro còn sở hữu nhiều tính năng đ', '<ul>\r\n	<li>\r\n	<p>Thời gian tai nghe:D&ugrave;ng 8 giờ - Sạc Khoảng 70 ph&uacute;t</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian hộp sạc:D&ugrave;ng 29 giờ - Sạc Khoảng 130 ph&uacute;t</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc:Sạc kh&ocirc;ng d&acirc;y QiType-C</p>\r\n	</li>\r\n	<', NULL, 1, '2023-06-16 17:07:51', '2023-06-17 00:07:51'),
(36, 8, 'Đồng hồ thông minh BeFit WatchFit', '1686935662-product-Den-min-640x640.png', 690000, '350 gr', 'BeFit', 'Đồng hồ thông minh BeFit WatchFit với ngoại hình hiện đại dễ dàng phối hợp với đa dạng trang phục, sản phẩm có nhiều phiên bản màu sắc cho người dùng lựa chọn. Ngoài ra, thiết bị còn được tích hợp nhiều chế độ luyện tập và những chức năng theo dõi sức khỏ', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:IPS 1.57 inch</li>\r\n	<li>Thời lượng pin: Khoảng 7 ng&agrave;y</li>\r\n	<li>Kết nối với hệ điều h&agrave;nh: iOS 11 trở l&ecirc;n&nbsp; Android 6.0 trở l&ecirc;n</li>\r\n	<li>Mặt:Mặt k&iacute;nh nhựa</li>\r\n	<li>T&iacute;nh năn', NULL, 1, '2023-06-16 17:14:22', '2023-06-17 00:14:22'),
(37, 9, 'Pin sạc dự phòng Polymer 10000mAh Type C PD QC3.0 22.5W Mazer Super Mini V2', '1686935949-product-pin-sac-du-phong-polymer-10000mah-type-c-pd-qc3-0-22-5w-mazer-super-mini-v2-xanh-2-1.jpg', 940000, '180 gr', 'Singapo', 'Pin sạc dự phòng Polymer 10000mAh Type C PD QC3.0 22.5W Mazer Super Mini V2 với gam màu sang trọng, dung lượng pin đáp ứng tốt các nhu cầu cơ bản, dễ dàng bỏ vào túi hay balo để bổ sung năng lượng kịp thời cho các thiết bị điện tử.', '<ul>\r\n	<li>\r\n	<p>Hiệu suất sạc:65%</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng pin:10.000 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian sạc đầy pin:Khoảng 3 giờ (d&ugrave;ng Adapter 3A)</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguồn v&agrave;o:Type C: 5V - 3A, 9V - 2A</p>\r\n	</li>\r\n	<li>\r\n', NULL, 1, '2023-06-16 17:19:09', '2023-06-17 00:19:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `component_img` varchar(255) NOT NULL,
  `title_component` varchar(255) NOT NULL,
  `title_detail` varchar(255) NOT NULL,
  `store_img` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `avatar`, `position`, `component_img`, `title_component`, `title_detail`, `store_img`, `status`, `created_at`, `updated_at`) VALUES
(21, '1686992964-redmi-note-12-series-kv-mono-pc.png', 1, '1686999063-iphone_14_pro_max.jpg', 'iPhone 14 Pro Max', 'iPhone 14 Pro Max với màn hình Dynamic Island  OLED 6,7 inch, hỗ trợ always-on display. Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic , camera sau 48MP, cảm biến TOF sống động', '1686999063-iphone_14_pro_max.jpg', 1, '2022-06-10 08:34:58', '2023-06-17 17:51:03'),
(23, '1686995566-2400.png', 1, '1686996973-apple-watch-se-2022-40mm-day-silicone-1.jpg', 'Apple Watch SE 2022', 'Apple Watch SE 2022 với thiết kế trẻ trung năng động , thao tác mượt mà tích hợp chip S8 SiP cùng hệ điều hành WatchOS 9 mới nhất, phát hiện va chạm, sức khoẻ được theo dõi liên tục và pin lên đến 18 giờ cho 1 lần sạc', '1686996973-apple-watch-se-2022-40mm-day-silicone-1.jpg', 1, '2022-06-10 08:38:43', '2023-06-17 17:40:53'),
(25, '1686994710-14prm-pc.png', 1, '1686997930-asus-vivobook-14-x1402za-i3-ek249w-2-1.jpg', 'Laptop Asus Vivobook 14 X1402ZA', 'Laptop Asus Vivobook 14 X1402ZA sở hữu cấu hình vượt trội từ bộ vi xử lý Intel Gen 12 cùng kiểu dáng thiết kế thời thượng, xứng danh người cộng sự lý tưởng, sẵn sàng đồng hành cùng bạn mọi lúc mọi nơi, trong cả công việc hay giải trí.', '1686997930-asus-vivobook-14-x1402za-i3-ek249w-2-1.jpg', 1, '2022-06-10 08:42:48', '2023-06-17 17:32:10'),
(26, '1686995744-web-banner-sony.jpg', 1, '1686998237-airpods-pro-magsafe-charge-apple.jpg', 'Tai nghe Bluetooth AirPods Pro', 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn', '1686998237-airpods-pro-magsafe-charge-apple.jpg', 1, '2022-06-10 08:44:35', '2023-06-17 17:41:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `first_name`, `last_name`, `phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(8, 'admin', '202cb962ac59075b964b07152d234b70', 1, 'Phan', 'Dương', '0123456789', 'Hà Nội', 'techstore@gmail.com', '2023-06-17 08:32:06', '2023-06-17 15:33:28'),
(9, 'hieu', '202cb962ac59075b964b07152d234b70', 0, 'Đào', 'Hiếu', '012345', 'Nam Định', 'stsieutrom@gmail.com', '2023-06-17 08:33:10', '2023-06-17 15:33:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `introduces`
--
ALTER TABLE `introduces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
