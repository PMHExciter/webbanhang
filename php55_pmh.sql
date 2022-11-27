-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2021 lúc 09:51 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php55_pmh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(22, 0, 'Khuyên tai', 0),
(23, 0, 'Dây chuyền', 0),
(24, 0, 'Nhẫn', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(2, 'test', 'test@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn E@', 'nve@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(0, 'Nguyễn Văn B', 'nvb@gmail.com', 'Hà nội', '123', '202cb962ac59075b964b07152d234b70'),
(0, 'Nguyễn Văn H', 'nvh@gmail.com', 'Hà Nội', '0123456789', '202cb962ac59075b964b07152d234b70'),
(0, 'Nguyễn văn m', 'nvm@gmail.com', 'Wendover Ter 91c, Wendover Ter 91c', '0776789999', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Một mình bạn cũng có thể đẩy xe khi có sự cố: Đây là cách làm hiệu quả nhất', '<p>Khi di chuyển bằng &ocirc; t&ocirc;, &iacute;t nhiều sẽ c&oacute; trường hợp bạn gặp phải c&aacute;c t&igrave;nh huống rắc rối, thậm ch&iacute; nguy cấp. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n trang bị những kiến thức v&agrave; phụ kiện cứu hộ cần thiết. Video dưới đ&acirc;y l&agrave; một mẹo nhỏ sẽ gi&uacute;p bạn trong một v&agrave;i trường hợp khẩn cấp khi sử dụng xe &ocirc; t&ocirc; con.</p>\r\n', '<p>Chiếc xe đầu ti&ecirc;n bị ch&aacute;y v&agrave;o th&aacute;ng 9-2018, nhưng do t&igrave;nh trạng huỷ hoại nặng của xe n&ecirc;n h&atilde;ng kh&ocirc;ng thể t&igrave;m ra manh m&ocirc;i n&agrave;o.</p>\r\n\r\n<p>T&igrave;nh trạng n&agrave;y diễn ra li&ecirc;n tục sau đ&oacute; nhưng việc t&igrave;m kiếm mọi đầu mối nguy&ecirc;n nh&acirc;n vẫn thất bại. Đến đầu năm 2020, Hyundai buộc phải thu&ecirc; b&ecirc;n thứ 3 để t&igrave;m lỗi v&agrave; cuối c&ugrave;ng nguy&ecirc;n nh&acirc;n được x&aacute;c định do chập điện.</p>\r\n\r\n<p>Theo đ&oacute;, dầu phanh ABS bị r&ograve; rỉ, rớt v&agrave;o bộ điều khiển điện tử ECU, dẫn đến ăn m&ograve;n bảng mạch in của ECU g&acirc;y chập điện.</p>\r\n\r\n<p>Dầu thuỷ lực cũng chảy tr&agrave;n l&ecirc;n vỏ động cơ, n&ecirc;n Hyundai đưa ra cảnh b&aacute;o chủ xe Santa Fe n&ecirc;n để &yacute; đến m&ugrave;i kh&eacute;t, kh&oacute;i từ động cơ bốc ra, v&agrave; kết hợp c&aacute;c cảnh b&aacute;o đ&egrave;n trong xe để nhanh ch&oacute;ng đưa xe đến đại l&yacute; sửa chữa.</p>\r\n\r\n<p>Bắt đầu v&agrave;o cuối th&aacute;ng 10 đến, Hyundai y&ecirc;u cầu c&aacute;c xe Santa Fe đời 2013-2015 đến c&aacute;c đại l&yacute; để thay thế cụm thắng ABS bị lỗi.</p>\r\n\r\n<p><strong>Theo Phương Minh (Ph&aacute;p Luật TPHCM)</strong></p>\r\n', 1, '1615814846_la.jpg'),
(7, 'Siêu xe McLaren 720S màu tím độc nhất Việt Nam được nâng cấp gói độ Novitec N-Largo phiên bản giới hạn.', '<p>Tại Việt Nam, McLaren 720S l&agrave; một trong những d&ograve;ng si&ecirc;u xe phổ biến nhất với số lượng hơn 10 chiếc, cả bản Coupe v&agrave; Spider. Đặc biệt nhất l&agrave; chiếc 720S Coupe của đại gia Vũng T&agrave;u với m&agrave;u t&iacute;m Lantana Purple độc nhất Việt Nam.</p>\r\n', '<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-1.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 1\" /></p>\r\n\r\n<p>Vẫn chưa h&agrave;i l&ograve;ng với m&agrave;u sơn đặc biệt, đại gia n&agrave;y đ&atilde; chi khoản tiền khủng để lột x&aacute;c ho&agrave;n to&agrave;n chiếc si&ecirc;u xe. Cụ thể, chiếc 720S được n&acirc;ng cấp g&oacute;i độ N-Largo của Novitec.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-2.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 2\" /></p>\r\n\r\n<p>Nếu c&aacute;c g&oacute;i độ kh&aacute;c chỉ lắp đặt v&agrave;i chi tiết tăng t&iacute;nh kh&iacute; động học th&igrave; g&oacute;i độ N-Largo thay đổi gần như to&agrave;n bộ ngoại thất xe. Phần th&acirc;n vỏ mới được l&agrave;m bằng carbon, vừa tăng t&iacute;nh thẩm mỹ vừa giảm khối lượng cho xe.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-3.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 3\" /></p>\r\n\r\n<p>Sau khi n&acirc;ng cấp bodykit mới, chiều rộng th&acirc;n xe tăng đ&ocirc;i ch&uacute;t. Cụ thể, v&ograve;m b&aacute;nh trước rộng hơn 60 mm v&agrave; v&ograve;m b&aacute;nh sau rộng hơn 130 mm. Sự thay đổi n&agrave;y vừa tăng vẻ hầm hố cho xe, vừa cung cấp th&ecirc;m kh&ocirc;ng gian để bổ sung c&aacute;c chi tiết kh&iacute; động học.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-4.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 4\" /></p>\r\n\r\n<p>Do si&ecirc;u xe mang m&agrave;u Lantana Purple độc quyền của bộ phận MSO, chủ nh&acirc;n phải đặt h&agrave;ng m&agrave;u sơn n&agrave;y từ McLaren để phủ l&ecirc;n bodykit mới. D&ugrave; kh&ocirc;ng tiết lộ, mức gi&aacute; cho những hộp sơn từ bộ phận MSO kh&aacute; đắt đỏ.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-5.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 5\" /></p>\r\n\r\n<p>Điểm thay đổi nhiều nhất l&agrave; nửa th&acirc;n trước của xe. Nhờ bộ kit mới, phần đầu xe trở n&ecirc;n hầm hố hơn với cảm hứng từ đ&agrave;n anh Senna. V&ograve;m b&aacute;nh xe được bổ sung khe gi&oacute; kh&iacute; động học mới.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-6.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 6\" /></p>\r\n\r\n<p>Bộ m&acirc;m nguy&ecirc;n bản được thay bằng la-zăng đa chấu của Vossen với k&iacute;ch thước 20 inch ở ph&iacute;a trước v&agrave; 21 inch ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-7.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 7\" /></p>\r\n\r\n<p>Để tạo điểm nhấn cho ngoại thất, một số chi tiết được phủ m&agrave;u v&agrave;ng như viền cản trước/sau, viền ốp h&ocirc;ng, khe gi&oacute; tr&ecirc;n v&ograve;m b&aacute;nh trước, kh&oacute;a t&acirc;m b&aacute;nh xe v&agrave; kẹp phanh.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-8.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 8\" /></p>\r\n\r\n<p>Ở ph&iacute;a sau, xe được trang bị c&aacute;nh gi&oacute; mới l&agrave;m bằng carbon. Hệ thống ống xả cũng được n&acirc;ng cấp l&ecirc;n thương hiệu FI Exhaust. Hệ thống ống xả n&agrave;y thuộc d&ograve;ng Signature Titanium, được l&agrave;m từ titanium m&agrave;u v&agrave;ng v&agrave; phần chụp ống xả bằng carbon.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-9.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 9\" /></p>\r\n\r\n<p>Đ&aacute;ng tiếc l&agrave; si&ecirc;u xe n&agrave;y kh&ocirc;ng được n&acirc;ng cấp động cơ. Cung cấp sức mạnh cho 720S vẫn l&agrave; động cơ tăng &aacute;p k&eacute;p V8 4.0L cho c&ocirc;ng suất tối đa 720 m&atilde; lực v&agrave; m&ocirc;-men xoắn 770 Nm. Nhờ sức mạnh n&agrave;y, 720S c&oacute; thể tăng tốc 0-100 km/h chỉ trong 2,9 gi&acirc;y. Nếu được n&acirc;ng cấp hiệu suất theo cấu h&igrave;nh N-Largo, 720S sẽ cho ra c&ocirc;ng suất hơn 800 m&atilde; lực.</p>\r\n\r\n<p><img alt=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/mclaren-720s-10.jpg\" title=\"McLaren 720S với gói độ độc nhất Việt Nam - 10\" /></p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&acirc;ng cấp g&oacute;i độ N-Largo cho 720S được thực hiện trong khoảng 1 th&aacute;ng với chi ph&iacute; kh&ocirc;ng được tiết lộ. Novitec chỉ sản xuất 15 bộ bodykit N-Largo cho McLaren 720S. Với độ đặc biệt n&agrave;y, chi ph&iacute; cho g&oacute;i độ N-Largo kh&ocirc;ng thấp hơn con số 1 tỷ đồng.</p>\r\n', 1, '1615814837_ip6s.png'),
(8, 'Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’', '<p>Mặc d&ugrave; Kia Seltos đ&atilde; ra mắt c&aacute;ch đ&acirc;y hơn 1 th&aacute;ng nhưng đến nay, trang chủ fanpage Kia Motors Việt Nam mới c&ocirc;ng bố &quot;ch&iacute;nh thức ra mắt v&agrave; tiến h&agrave;nh b&agrave;n giao xe&quot; từ ng&agrave;y 9/9 tới đ&acirc;y. Nhiều khả năng, đ&acirc;y l&agrave; sự kiện ra mắt xe tổ chức tại đại l&yacute; d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng, đồng thời l&agrave; sự kiện b&agrave;n giao xe cho những kh&aacute;ch h&agrave;ng đặt đầu ti&ecirc;n.</p>\r\n', '<p>Hiện tại, những chiếc Kia Seltos xuất xưởng đầu ti&ecirc;n đ&atilde; được đưa về đại l&yacute; tr&ecirc;n to&agrave;n quốc. Hầu hết xe thuộc c&aacute;c bản 1.4 Premium v&agrave; 1.4 Luxury. Trong đợt n&agrave;y, những kh&aacute;ch đặt mua bản 1.4 Deluxe v&agrave; 1.6 Premium sẽ chưa c&oacute; xe m&agrave; c&oacute; thể phải đợi sang th&aacute;ng 10. Trong thời gian gần đ&acirc;y, kh&aacute;ch h&agrave;ng cũng kh&ocirc;ng thể đặt cọc được bản 1.6 Premium nữa. Phi&ecirc;n bản n&agrave;y được cho l&agrave; thiếu nguồn cung v&agrave; chưa hẹn ng&agrave;y trở lại.</p>\r\n\r\n<p><iframe scrolling=\"no\"></iframe>X</p>\r\n\r\n<p>Những kh&aacute;ch h&agrave;ng đặt xe đợt đầu sẽ được hưởng mức gi&aacute; ưu đ&atilde;i, với c&aacute;c bản 1.4 Deluxe, 1.4 Luxury, 1.6 Premium v&agrave; 1.4 Premium c&oacute; gi&aacute; lần lượt l&agrave; 589 triệu, 649 triệu, 699 triệu v&agrave; 719 triệu đồng. Theo th&ocirc;ng tin từ đại l&yacute;, kể từ sau ng&agrave;y 9/9, gi&aacute; xe c&oacute; thể sẽ tăng tới cả chục triệu đồng. THACO cũng cho biết mức gi&aacute; c&ocirc;ng bố ban đầu l&agrave; gi&aacute; ưu đ&atilde;i.</p>\r\n\r\n<p><img alt=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/kia-seltos-dl-1-1599381020699842033670-crop-15993811032441209604726.jpg\" title=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 1\" /></p>\r\n\r\n<p><img alt=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/kia-seltos-dl-2-15993810207161319403356-crop-1599381125936644499717.jpg\" title=\"Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’ - 2\" /></p>\r\n\r\n<p>Kia Seltos l&agrave; một trong những mẫu SUV hạng B mới nhất tr&ecirc;n thị trường v&agrave; cũng l&agrave; mẫu xe ho&agrave;n to&agrave;n mới m&agrave; Kia mang tới Việt Nam. Xe nổi bật với một số trang bị như thiết kế hiện đại, đ&egrave;n chiếu s&aacute;ng LED ho&agrave;n to&agrave;n, như ghế chỉnh điện 10 hướng, l&agrave;m m&aacute;t ghế, đồng hồ t&iacute;ch hợp m&agrave;n h&igrave;nh 7 inch, m&agrave;n h&igrave;nh 10,25 inch hỗ trợ Apple CarPlay/Android Auto, đ&egrave;n nội thất 8 m&agrave;u chỉnh theo điệu nhạc...</p>\r\n\r\n<p>C&oacute; 2 tuỳ chọn động cơ tr&ecirc;n Kia Seltos. M&aacute;y 1,4 l&iacute;t tăng &aacute;p c&oacute; mặt tr&ecirc;n 3 phi&ecirc;n bản, cho c&ocirc;ng suất 138 m&atilde; lực v&agrave; m&ocirc;-men xoắn 242 Nm, kết hợp số 7 cấp ly hợp k&eacute;p. M&aacute;y 1,6 l&iacute;t h&uacute;t kh&iacute; tự nhi&ecirc;n cho c&ocirc;ng suất 121 m&atilde; lực v&agrave; m&ocirc;-men xoắn 151 Nm, kết hợp số tự động 6 cấp. Xe c&oacute; c&aacute;c t&iacute;nh năng an to&agrave;n cơ bản đầy đủ như hỗ trợ phanh (ABS, EBD, BA), c&acirc;n bằng điện tử, hỗ trợ khởi h&agrave;nh ngang dốc v&agrave; kiểm so&aacute;t lực k&eacute;o 3 chế độ...</p>\r\n\r\n<p>Theo dự kiến, từ th&aacute;ng 10 trở đi, Kia Seltos sẽ về th&ecirc;m c&aacute;c phi&ecirc;n bản c&ograve;n lại để giao kh&aacute;ch h&agrave;ng tại đại l&yacute;. Mẫu xe n&agrave;y từ nay đến cuối năm được hưởng ưu đ&atilde;i 50% lệ ph&iacute; trước bạ bởi l&agrave; xe lắp r&aacute;p trong nước.</p>\r\n\r\n<p><strong>Theo Đức Kh&ocirc;i (Ph&aacute;p luật &amp; Bạn đọc)</strong></p>\r\n', 1, '1615814822_la.jpg'),
(9, 'Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ', '<p>Trong một v&agrave;i năm qua, việc mua &ocirc;t&ocirc; chạy dịch vụ trở n&ecirc;n phổ biến ở Việt Nam nhờ sự ph&aacute;t triển của c&aacute;c h&igrave;nh thức gọi xe c&ocirc;ng nghệ. B&ecirc;n cạnh xe đ&ocirc; thị tầm gi&aacute; 400 triệu đồng, &ocirc;t&ocirc; 600 triệu đồng cũng l&agrave; ph&acirc;n kh&uacute;c được nhiều người d&ugrave;ng chọn lựa để đầu tư, với c&aacute;c điểm cộng về kh&ocirc;ng gian rộng r&atilde;i, trang bị v&agrave; an to&agrave;n.</p>\r\n', '<p>Ba c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; đại diện cho nh&oacute;m xe dịch vụ tầm 600 triệu đồng hiện nay c&oacute; thể kể đến Toyota Vios, Kia Cerato v&agrave; Suzuki Ertiga.</p>\r\n\r\n<p><strong>Toyota Vios - 470-570 triệu đồng</strong></p>\r\n\r\n<p>Từ l&acirc;u, Toyota Vios lu&ocirc;n l&agrave; c&aacute;i t&ecirc;n được nhắc đến đầu khi c&acirc;n nhắc mua xe hạng B. Kh&ocirc;ng chỉ c&oacute; chi ph&iacute; sử dụng hợp l&yacute; v&agrave; thuận tiện trong việc bảo tr&igrave; bảo dưỡng, Vios c&ograve;n mang thương hiệu Toyota với t&iacute;nh thanh khoản cao. C&aacute;c yếu tố n&agrave;y gi&uacute;p người d&ugrave;ng Vios tối ưu được hiệu quả đầu tư.</p>\r\n\r\n<p>Đầu năm nay, Toyota Việt Nam ra mắt c&aacute;c phi&ecirc;n bản n&acirc;ng cấp 2020 của Vios trước sức &eacute;p cạnh tranh doanh số từ 2 mẫu xe H&agrave;n Quốc l&agrave; Hyundai Accent (426-542 triệu đồng) v&agrave; Kia Soluto (369-469 triệu đồng).</p>\r\n\r\n<p>H&atilde;ng xe Nhật Bản bổ sung trang bị cho c&aacute;c model mới, đồng thời cung cấp th&ecirc;m t&ugrave;y chọn 3 t&uacute;i kh&iacute; hoặc 7 t&uacute;i kh&iacute; cho bản E MT v&agrave; E CVT. Điều n&agrave;y nhằm giảm mức gi&aacute; khởi điểm 20 triệu đồng v&agrave; tiếp cận th&ecirc;m nh&oacute;m kh&aacute;ch h&agrave;ng mua xe chạy dịch vụ. Cụ thể, 5 biến thể Toyota Vios hiện c&oacute; gi&aacute; đề xuất dao động từ 470 đến 570 triệu đồng.</p>\r\n\r\n<p>Những t&iacute;nh năng mới gi&uacute;p Vios bớt phần thua thiệt so với Hyundai Accent hay Honda City (559-599 triệu đồng) về mặt trang bị, gồm c&oacute; hệ thống giải tr&iacute; hỗ trợ kết nối Apple CarPlay/Android Auto, ga tự động, camera l&ugrave;i v&agrave; cảm biến l&ugrave;i. Tuy vậy, thiết kế nội ngoại thất trung t&iacute;nh của Toyota Vios được giữ nguy&ecirc;n. Ưu điểm của Vios l&agrave; kh&ocirc;ng gian cabin rộng r&atilde;i v&agrave; thoải m&aacute;i cho h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ\" /></p>\r\n\r\n<p>Toyota Vios vẫn trang bị động cơ xăng I4 1.5L c&oacute; van biến thi&ecirc;n Dual i-VVT, c&ocirc;ng suất đạt 107 m&atilde; lực c&ugrave;ng m&ocirc;-men xoắn 140 Nm. Đi k&egrave;m với đ&oacute; l&agrave; t&ugrave;y chọn hộp số v&ocirc; cấp CVT hoặc hộp số s&agrave;n 5 cấp. Mức ti&ecirc;u thụ nhi&ecirc;n liệu ở điều kiện kết hợp theo nh&agrave; sản xuất c&ocirc;ng bố tương ứng l&agrave; 5,7-5,8 l&iacute;t/100 km.</p>\r\n\r\n<p><iframe scrolling=\"no\"></iframe>X</p>\r\n\r\n<p>T&iacute;nh từ đầu năm đến nay, Toyota Vios vẫn l&agrave; d&ograve;ng xe b&aacute;n tốt nhất tại thị trường Việt Nam. Tổng cộng đ&atilde; c&oacute; hơn 14.055 model Vios được b&aacute;n ra đến hết th&aacute;ng 7, doanh số trung b&igrave;nh 2.000 xe mỗi th&aacute;ng. Trong khi đ&oacute;, doanh số của Accent, City c&ugrave;ng Soluto l&agrave; 9.568, 4.915 v&agrave; 3.606 chiếc.</p>\r\n\r\n<p><strong>Kia Cerato - 529-665 triệu đồng</strong></p>\r\n\r\n<p>Với mức gi&aacute; khởi điểm tương đương một v&agrave;i mẫu xe hạng B, Kia Cerato trội hơn về kh&ocirc;ng gian cũng như c&oacute; khung gầm vững chắc hơn. Ngo&agrave;i ra, t&iacute;nh năng trang bị ở mức kh&aacute; tốt để phục vụ h&agrave;nh kh&aacute;ch gi&uacute;p mẫu sedan H&agrave;n Quốc được chọn lựa để sử dụng l&agrave;m xe dịch vụ.</p>\r\n\r\n<p>Trong c&ugrave;ng nh&oacute;m xe hạng C, Cerato c&oacute; lợi thế về gi&aacute; b&aacute;n cạnh tranh hơn Mazda3 sedan (669-869 triệu đồng), Hyundai Elantra (580-769 triệu đồng), Honda Civic (729-934 triệu đồng) v&agrave; Toyota Corolla Altis (733-763 triệu đồng).</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-1.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 1\" /></p>\r\n\r\n<p>Hiện tại, bản Cerato 1.6 MT ti&ecirc;u chuẩn c&oacute; gi&aacute; 529 triệu đồng, trong khi model 2.0 Premium cao cấp c&oacute; gi&aacute; 665 triệu đồng. B&ecirc;n cạnh đ&oacute;, Cerato c&oacute; thiết kế trẻ trung, c&aacute; t&iacute;nh ở cả ngoại thất lẫn khoang l&aacute;i.</p>\r\n\r\n<p>C&aacute;c trang bị đ&aacute;ng ch&uacute; &yacute; ở bản Cerato 2.0 AT Premium c&oacute; thể kể đến như m&agrave;n h&igrave;nh trung t&acirc;m 8 inch, dẫn đường tiếng Việt, sạc điện thoại kh&ocirc;ng d&acirc;y, cửa sổ trời, đ&egrave;n chiếu s&aacute;ng LED&hellip; Tuy nhi&ecirc;n, Kia Cerato ra mắt từ 2018 đến nay chưa c&oacute; đợt n&acirc;ng cấp n&agrave;o n&ecirc;n c&oacute; phần thua thiệt về mặt c&ocirc;ng nghệ an to&agrave;n so với c&aacute;c đối thủ.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-2.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 2\" /></p>\r\n\r\n<p>Kia Cerato c&oacute; 2 t&ugrave;y chọn động cơ xăng, gồm động cơ Gamma 1.6L MPI (128 m&atilde; lực v&agrave; 157 Nm) v&agrave; động cơ Nu 2.0L MPI (159 m&atilde; lực v&agrave; 194 Nm). Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số s&agrave;n 6 cấp ở bản ti&ecirc;u chuẩn v&agrave; hộp số tự động 6 cấp ở 3 phi&ecirc;n bản AT.</p>\r\n\r\n<p>T&iacute;nh đến cuối th&aacute;ng 7/2020, Kia Cerato đang l&agrave; c&aacute;i t&ecirc;n đứng đầu nh&oacute;m xe hạng C, xếp tr&ecirc;n một mẫu xe kh&aacute;c cũng được Thaco lắp r&aacute;p v&agrave; ph&acirc;n phối l&agrave; Mazda3. Cụ thể, Cerato b&aacute;n được 4.815 chiếc, nhỉnh hơn Mazda3 với 4.675 xe (382 chiếc hatchback v&agrave; 4.293 mẫu sedan). Xếp sau c&ograve;n c&oacute; Hyundai Elantra (2.141 chiếc), Honda Civic (1.464 chiếc) v&agrave; Toyota Corolla Altis (1.037 chiếc).</p>\r\n\r\n<p><strong>Suzuki Ertiga - 499-559 triệu đồng</strong></p>\r\n\r\n<p>Ởph&acirc;n kh&uacute;c MPV 7 chỗ cỡ nhỏ, Suzuki Ertiga l&agrave; c&aacute;i t&ecirc;n s&aacute;ng gi&aacute; cho mục đ&iacute;ch sử dụng l&agrave;m xe dịch vụ khi c&oacute; gi&aacute; b&aacute;n thấp hơn c&aacute;c đối thủ. Cụ thể, Suzuki hiện b&aacute;n 3 model l&agrave; Ertiga GL, Limited v&agrave; Sport, với mức gi&aacute; lần lượt 499, 555 v&agrave; 559 triệu đồng.</p>\r\n\r\n<p>Trong khi đ&oacute;, mức gi&aacute; của Toyota Avanza l&agrave; 544-612 triệu đồng, Kia Rondo c&oacute; gi&aacute; dao động 559-655 triệu đồng v&agrave; Mitsubishi Xpander được b&aacute;n với gi&aacute; đề xuất 555-630 triệu đồng.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-3.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 3\" /></p>\r\n\r\n<p>So với mẫu xe đang b&aacute;n chạy nhất ph&acirc;n kh&uacute;c l&agrave; Mitsubishi Xpander, Ertiga c&oacute; thiết kế trung t&iacute;nh hơn. Trong khi đ&oacute;, t&iacute;nh đa dụng l&agrave; tương đương, với cabin thiết kế kiểu 5+2 c&oacute; thể đ&aacute;p được được nhiều nhu cầu di chuyển kh&aacute;c nhau.</p>\r\n\r\n<p>Ở đợt n&acirc;ng cấp th&aacute;ng 6/2020, Suzuki trang bị cho Ertiga 2 chức năng an to&agrave;n l&agrave; hệ thống c&acirc;n bằng điện tử v&agrave; hỗ trợ khởi h&agrave;nh ngang dốc. B&ecirc;n cạnh đ&oacute;, Ertiga 2020 c&oacute; cụm giải tr&iacute; nổi bật với m&agrave;n h&igrave;nh 10 inch lớn nhất ph&acirc;n kh&uacute;c v&agrave; hỗ trợ kết nối Apple CarPlay/Android Auto. Điểm hạn chế của Suzuki Ertiga l&agrave; vẫn chưa c&oacute; t&iacute;nh năng ga tự động v&agrave; ghế bọc da như Xpander.</p>\r\n\r\n<p><img alt=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/the-gioi/xe-dich-vu-4.jpg\" title=\"Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ - 4\" /></p>\r\n\r\n<p>Suzuki trang bị cho Ertiga động cơ xăng I4 dung t&iacute;ch 1.5L, c&ocirc;ng suất tối đa 103 m&atilde; lực v&agrave; m&ocirc;-men xoắn cực đại 138 Nm. Đi c&ugrave;ng với đ&oacute; l&agrave; hộp số tự động 4 cấp hoặc số s&agrave;n 5 cấp. So với c&aacute;c đối thủ, Ertiga c&oacute; mức ti&ecirc;u thụ nhi&ecirc;n liệu tốt hơn, đạt 5,95 l&iacute;t/100 km ở điều kiện hỗn hợp theo c&ocirc;ng bố của nh&agrave; sản xuất.</p>\r\n\r\n<p>Doanh số t&iacute;nh đến hết th&aacute;ng 7/2020 của Suzuki Ertiga l&agrave; 1.651 xe, &iacute;t hơn Mitsubishi Xpander với 7.493 chiếc. Xếp sau mẫu MPV của Suzuki l&agrave; Kia Rondo (640 chiếc) v&agrave; Toyota Avanza (185 chiếc).</p>\r\n\r\n<p><strong>Theo Ho&agrave;ng Phạm (Tri Thức Trực Tuyến)</strong></p>\r\n', 1, '1615814816_ip6s.png'),
(10, 'VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý', '<p>S&aacute;ng 7/9, VinFast President bắt đầu được trưng b&agrave;y tại một số đại l&yacute; tr&ecirc;n to&agrave;n quốc. Đ&acirc;y l&agrave; mẫu xe đầu bảng mới của VinFast, nhằm đối đầu với những mẫu SUV full-size đầu bảng như Lexus LX570 hay BMW X7. Gi&aacute; b&aacute;n ch&iacute;nh thức vẫn l&agrave; một ẩn số. Trong khi đ&oacute;, c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc đ&atilde; nhận đặt cọc d&ograve;ng xe n&agrave;y từ hơn 2 tuần trước.</p>\r\n', '<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 1\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11878486036083208225118083153028368974773756o-1599447254226412865993.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 1\" /></p>\r\n\r\n<p>D&ugrave; mang kiểu d&aacute;ng tương đồng Lux SA2.0, nhưng VinFast President c&oacute; chiều d&agrave;i cơ sở lớn hơn đ&aacute;ng kể so với Lux SA2.0 để tăng kh&ocirc;ng gian cho h&agrave;ng ghế thứ hai. K&iacute;ch thước tổng thể d&agrave;i x rộng x cao lần lượt 5.146 x 1.987 x 1.760 mm.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 2\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11873146236083221191783454790297719361395835o-1599447342605836490707.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 2\" /></p>\r\n\r\n<p>President l&agrave; mẫu xe VinFast c&oacute; nhiều t&ugrave;y chọn m&agrave;u sơn nhất. Chiếc xe xuất hiện trong b&agrave;i viết c&oacute; m&agrave;u sơn Sunset (V&agrave;ng), ngo&agrave;i ra c&ograve;n c&oacute; 5 t&ugrave;y chọn kh&aacute;c, bao gồm Đen b&oacute;ng, Gun Metal (X&aacute;m), Competition Red (Đỏ), Purple Rain (T&iacute;m) v&agrave; Deep Ocean (Xanh).</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 3\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11897988836083219758450268430614037557080152o-15994473427272082543017.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 3\" /></p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 4\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11880229436083217258450518569561270565357571o-15994473429461452327921.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 4\" /></p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 5\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11878697236083222425116665983592381891571117o-15994473425281589262149.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 5\" /></p>\r\n\r\n<p>VinFast President c&oacute; một số kh&aacute;c biệt với Lux SA2.0, như hốc h&uacute;t gi&oacute; tr&ecirc;n nắp capo, lưới tản nhiệt mắt c&aacute;o, m&acirc;m mới v&agrave; 4 ống xả ph&iacute;a sau. Xe trang bị động cơ V8 6.2L h&uacute;t kh&iacute; tự nhi&ecirc;n của Chevrolet,&nbsp;khả năng tăng tốc 0-100 km/h chỉ trong 6,8 gi&acirc;y.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 6\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11869534736083211191784451584592460798027813o-15994473421541141431804.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 6\" /></p>\r\n\r\n<p>B&ecirc;n trong, điểm dễ nhận ra nhất l&agrave; m&agrave;n h&igrave;nh giải tr&iacute; mới, đặt ngang, k&iacute;ch thước tr&ecirc;n 10 inch. Cửa gi&oacute; điều h&ograve;a cũng được xoay ngang. Đặt ph&iacute;a dưới c&ugrave;ng l&agrave; d&atilde;y n&uacute;t c&oacute; khả năng để điều chỉnh c&aacute;c chức năng như th&ocirc;ng gi&oacute;, sưởi ghế v&agrave; massage ghế.</p>\r\n\r\n<p><img alt=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 7\" src=\"https://img.docbao.vn/images/uploads/2020/09/07/11876658536083213691784204671846162600310349o-1599447343464674639441.jpg\" title=\"VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý - 7\" /></p>\r\n\r\n<p>Loại da sử dụng b&ecirc;n trong nội thất VinFast President cao cấp hơn, họa tiết kh&acirc;u cũng kh&aacute;c biệt c&ugrave;ng dải chỉ đỏ nhấn mạnh v&agrave;o t&iacute;nh thể thao.</p>\r\n', 1, '1615814809_chicago.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(16, 6, 11, 3, 5000000),
(17, 6, 6, 5, 8000000),
(18, 7, 11, 1, 5000000),
(19, 7, 4, 1, 6000000),
(20, 7, 7, 1, 9000000),
(21, 8, 32, 3, 500000),
(22, 8, 30, 1, 8500000),
(23, 9, 31, 1, 3000000),
(24, 10, 34, 3, 1000000),
(25, 11, 43, 1, 850000),
(26, 12, 38, 1, 1200000),
(27, 13, 49, 2, 500000),
(28, 13, 44, 1, 850000),
(29, 14, 38, 1, 1200000),
(30, 15, 41, 1, 1500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(12, 1, '2021-07-17', 1080000, 0),
(13, 0, '2021-07-19', 1717500, 0),
(14, 0, '2021-07-20', 1080000, 0),
(15, 0, '2021-07-20', 1500000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(38, 'Dây chuyền PMH_1', '', '<p>TH&Ocirc;NG TIN SẨN PHẨM:</p>\r\n\r\n<ul>\r\n	<li>Chất liệu: titan kh&ocirc;ng đen kh&ocirc;ng dị ứng, ho&agrave;n to&agrave;n an to&agrave;n cho sức khỏe</li>\r\n	<li>M&atilde; sản phẩm: TT 1159</li>\r\n	<li>M&agrave;u sắc: v&agrave;ng, đen</li>\r\n	<li>Kiểu d&aacute;ng: d&acirc;y x&iacute;ch</li>\r\n	<li>Sử dụng: th&iacute;ch hợp đi chơi, đi l&agrave;m, dự tiệc</li>\r\n	<li>K&iacute;ch thước: 0.5 x 60cm</li>\r\n</ul>\r\n', 0, '1626260949_day chuyen PMH_1.jpg', 1200000, 10, 23),
(39, 'Dây chuyền PMH_2', '', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<p>- Chất liệu: titan kh&ocirc;ng gỉ</p>\r\n\r\n<p>- M&agrave;u sắc: m&agrave;u trắng nh&aacute;m, m&agrave;u gold, m&agrave;u đen&nbsp;</p>\r\n\r\n<p>- Độ d&agrave;i d&acirc;y tầm 60cm (Nếu kh&aacute;ch c&oacute; nhu cầu nối d&agrave;i d&acirc;y vui l&ograve;ng nhắn cho shop để được tư vấn trước khi đặt h&agrave;ng)</p>\r\n\r\n<p>- Thiết kế đơn giản, nam t&iacute;nh, nổi bật</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch lưu &yacute; mặt trong của mặt trắng l&agrave; m&agrave;u đen ko phải l&agrave; bị gỉ m&agrave; do mẫu l&agrave;m style retro như vậy</p>\r\n', 1, '1626261097_day chuyen PMH_2.jpg', 1200000, 15, 23),
(40, 'Dây chuyền PMH_3', '', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<p>- Chất liệu: titan kh&ocirc;ng gỉ</p>\r\n\r\n<p>- M&agrave;u sắc: m&agrave;u trắng nh&aacute;m</p>\r\n\r\n<p>- Độ d&agrave;i d&acirc;y tầm 60cm (Nếu kh&aacute;ch c&oacute; nhu cầu nối d&agrave;i d&acirc;y vui l&ograve;ng nhắn cho shop để được tư vấn trước khi đặt h&agrave;ng)</p>\r\n\r\n<p>- Thiết kế đơn giản, nam t&iacute;nh, nổi bật</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch lưu &yacute; mặt trong của mặt trắng l&agrave; m&agrave;u đen ko phải l&agrave; bị gỉ m&agrave; do mẫu l&agrave;m style retro như vậy</p>\r\n', 1, '1626261195_day chuyen PMH_3.jpg', 1200000, 10, 23),
(41, 'Dây chuyền titan khắc tên', '', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<p>- Chất liệu: titan kh&ocirc;ng gỉ</p>\r\n\r\n<p>- M&agrave;u sắc: m&agrave;u trắng nh&aacute;m, m&agrave;u gold, m&agrave;u đồng</p>\r\n\r\n<p>- Độ d&agrave;i d&acirc;y tầm 60cm (Nếu kh&aacute;ch c&oacute; nhu cầu nối d&agrave;i d&acirc;y vui l&ograve;ng nhắn cho shop để được tư vấn trước khi đặt h&agrave;ng)</p>\r\n\r\n<p>- Thiết kế đơn giản, nam t&iacute;nh, nổi bật</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch lưu &yacute; mặt trong của mặt trắng l&agrave; m&agrave;u đen ko phải l&agrave; bị gỉ m&agrave; do mẫu l&agrave;m style retro như vậy</p>\r\n', 1, '1626261287_day chuyen PMH_4.jpg', 1500000, 0, 23),
(42, 'Khuyên tai titan PMH_1', '', '<p><strong>B&ocirc;ng Tai Thời Trang&nbsp;</strong></p>\r\n\r\n<p>Thương hiệu: PMH</p>\r\n\r\n<p>Chất liệu: Titan kh&ocirc;ng sỉn m&agrave;u, kh&ocirc;ng dị ứng da</p>\r\n\r\n<p>M&agrave;u sắc: Đen, V&agrave;ng, Xanh, Trắng</p>\r\n\r\n<p>+ B&ocirc;ng tai Titan kẹp v&agrave;nh kh&ocirc;ng cần bấm, xỏ lỗ</p>\r\n\r\n<p>+ Phong c&aacute;ch H&agrave;n Quốc, kiểu d&aacute;ng thời trang</p>\r\n', 1, '1626261362_khuyen tai titan1.jpg', 850000, 20, 22),
(43, 'Khuyên tai titan PMH_2', '', '<p><strong>B&ocirc;ng Tai Thời Trang&nbsp;</strong></p>\r\n\r\n<p>Thương hiệu: PMH</p>\r\n\r\n<p>Chất liệu: Titan kh&ocirc;ng sỉn m&agrave;u, kh&ocirc;ng dị ứng da</p>\r\n\r\n<p>M&agrave;u sắc: Đen, V&agrave;ng, Trắng</p>\r\n\r\n<p>+ B&ocirc;ng tai Titan kẹp v&agrave;nh kh&ocirc;ng cần bấm, xỏ lỗ</p>\r\n\r\n<p>+ Phong c&aacute;ch H&agrave;n Quốc, kiểu d&aacute;ng thời trang</p>\r\n', 1, '1626261461_khuyen tai titan2.jpg', 850000, 10, 22),
(44, 'Khuyên tai titan PMH_3', '', '<p><strong>B&ocirc;ng Tai Thời Trang&nbsp;</strong></p>\r\n\r\n<p>Thương hiệu: PMH</p>\r\n\r\n<p>Chất liệu: Titan kh&ocirc;ng sỉn m&agrave;u, kh&ocirc;ng dị ứng da</p>\r\n\r\n<p>M&agrave;u sắc: Đen, V&agrave;ng, Xanh, Trắng</p>\r\n\r\n<p>+ B&ocirc;ng tai Titan&nbsp;xỏ lỗ</p>\r\n\r\n<p>+ Phong c&aacute;ch H&agrave;n Quốc, kiểu d&aacute;ng thời trang</p>\r\n', 1, '1626261608_khuyen tai titan3.jpg', 850000, 5, 22),
(45, 'Khuyên tai titan PMH_4', '', '<p><strong>B&ocirc;ng Tai Thời Trang&nbsp;</strong></p>\r\n\r\n<p>Thương hiệu: PMH</p>\r\n\r\n<p>Chất liệu: Titan kh&ocirc;ng sỉn m&agrave;u, kh&ocirc;ng dị ứng da</p>\r\n\r\n<p>M&agrave;u sắc: Đen, V&agrave;ng, Xanh, Trắng</p>\r\n\r\n<p>+ B&ocirc;ng tai Titan xỏ lỗ</p>\r\n\r\n<p>+ Phong c&aacute;ch H&agrave;n Quốc, kiểu d&aacute;ng thời trang</p>\r\n', 0, '1626261670_khuyen tai titan4.jpg', 850000, 0, 22),
(46, 'Nhẫn Titan in hình nhiệt độ', '', '<p>NHẪN HIỂN THỊ NHIỆT ĐỘ CƠ THỂ</p>\r\n\r\n<p>NHẪN TITAN KH&Ocirc;NG GỈ S&Eacute;T - THỜI TRANG C&Aacute; T&Iacute;NH</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lời khẳng định của nh&agrave; sản xuất khi ra mắt d&ograve;ng NHẪN n&agrave;y l&agrave; &ldquo;Gi&aacute; rẻ - Chất lượng kh&ocirc;ng hề rẻ&rdquo;.</p>\r\n\r\n<p><strong>NHẪN CAO CẤP, THỜI TRANG- TRẺ TRUNG - ĐỘC Đ&Aacute;O</strong></p>\r\n\r\n<p>Sự kết hợp 2 trong 1 của chiếc nhẫn kỳ diệu. Cấu tạo nhẫn:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế tr&ecirc;n chất liệu Titanium Steel si&ecirc;u bền.</li>\r\n	<li>V&ograve;ng hiển thị nhiệt độ bằng độ C, c&oacute; khả năng chống oxy h&oacute;a, rỉ s&eacute;t v&agrave; chống ăn m&ograve;n cao.</li>\r\n	<li>V&ograve;ng cung b&ecirc;n trong trơn, thoải m&aacute;i khi đeo v&agrave; kh&ocirc;ng g&acirc;y dị ứng, th&acirc;n thiện với da.</li>\r\n	<li>Hiển thị bằng năng lượng nhiệt, cơ chế giống như miếng d&aacute;n tr&aacute;n đo nhiệt.</li>\r\n	<li>Giới t&iacute;nh: D&agrave;nh cho Cả Nam V&agrave; Nữ</li>\r\n</ul>\r\n\r\n<p>Chỉ cần deo tr&ecirc;n ng&oacute;n tay trong 20 &ndash; 30 gi&acirc;y v&agrave; nhiệt độ sẽ được hiển thị với m&agrave;u celsius.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, '1626535549_nhan titan PMH_1.jpg', 250000, 5, 24),
(47, 'Nhẫn Titan trơn', '', '<p>Nhẫn TITAN&nbsp;trơn</p>\r\n\r\n<p>&nbsp;Bao gồm 3 m&agrave;u như ảnh : Đen, Bạc, V&agrave;ng H&agrave;ng c&oacute; sẵn kh&ocirc;ng cần order Chất liệu :</p>\r\n\r\n<p>Titan cao cấp ,kh&ocirc;ng gỉ kh&ocirc;ng g&acirc;y k&iacute;ch ứng da K&iacute;ch thước :</p>\r\n\r\n<p>C&oacute; 5 size :&nbsp; ( Cho Nam tay đủ cỡ tay ) ( C&aacute;c bạn inb để m&igrave;nh đo cho vừa tay nh&eacute; )</p>\r\n\r\n<p>Titan chất lượng cao , tất nhi&ecirc;n sẽ hơn kim loại thường ở những điểm :</p>\r\n\r\n<p>+ Độ bền cực k&igrave; cao, Độ cứng ngang bằng Bạc</p>\r\n\r\n<p>+ Kh&ocirc;ng g&acirc;y ngứa</p>\r\n\r\n<p>+Kh&ocirc;ng bị gỉ s&eacute;t</p>\r\n\r\n<p>+Gi&aacute; trị về mặt thẩm mỹ hơn nhiều Bản th&acirc;n m&igrave;nh l&agrave; một người rất ch&uacute; trọng ngo&agrave;i h&igrave;nh, theo m&igrave;nh th&igrave; những chiếc Phụ kiện , thoại c&oacute; vẻ đơn giản nhưng lại mang tới thay đổi cho người mang. Một chiếc k&iacute;nh hợp với khu&ocirc;n mặt sẽ khiến ngoại h&igrave;nh bạn thay đổi ngay lập tức, một chiếc v&ograve;ng tay xinh , một chiếc nhẫn c&oacute; vẻ nhỏ nhưng sẽ khiến bạn ở tr&ecirc;n sang trọng v&agrave; c&aacute; t&iacute;nh hơn hẳn đấy</p>\r\n', 0, '1626535580_nhan titan PMH_2.jpg', 300000, 7, 24),
(48, 'Nhẫn Titan đen huyền bí', '', '<p>NHẪN TITAN ĐEN HUYỀN B&Iacute;</p>\r\n\r\n<p>NHẪN TITAN KH&Ocirc;NG GỈ S&Eacute;T - THỜI TRANG C&Aacute; T&Iacute;NH</p>\r\n\r\n<p>Lời khẳng định của nh&agrave; sản xuất khi ra mắt d&ograve;ng NHẪN n&agrave;y l&agrave; &ldquo;Gi&aacute; rẻ - Chất lượng kh&ocirc;ng hề rẻ&rdquo;.</p>\r\n\r\n<p><strong>NHẪN CAO CẤP, THỜI TRANG- TRẺ TRUNG - ĐỘC Đ&Aacute;O</strong></p>\r\n\r\n<p>Sự kết hợp 2 trong 1 của chiếc nhẫn kỳ diệu. Cấu tạo nhẫn:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế tr&ecirc;n chất liệu Titanium Steel si&ecirc;u bền.</li>\r\n	<li>V&ograve;ng hiển thị m&agrave;u, c&oacute; khả năng chống oxy h&oacute;a, rỉ s&eacute;t v&agrave; chống ăn m&ograve;n cao.</li>\r\n	<li>V&ograve;ng cung b&ecirc;n trong trơn, thoải m&aacute;i khi đeo v&agrave; kh&ocirc;ng g&acirc;y dị ứng, th&acirc;n thiện với da.</li>\r\n	<li>Giới t&iacute;nh: D&agrave;nh cho Cả Nam V&agrave; Nữ</li>\r\n</ul>\r\n\r\n<p>Sản phẩm v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; mới lạ, t&ocirc;n l&ecirc;n vẻ đẹp thời trang c&aacute; t&iacute;nh của ri&ecirc;ng bạn Sản phẩm gi&uacute;p bạn t&ocirc;n l&ecirc;n vẻ sang trọng v&agrave; v&ocirc; c&ugrave;ng nổi bật phong c&aacute;ch hiện đại. Được thiết kế k&igrave; c&ocirc;ng, tỉ mỉ, v&agrave; tinh xảo từng chi tiết nhỏ M&agrave;u sắc s&aacute;ng tự nhi&ecirc;n sang trọng.</p>\r\n', 0, '1626535665_nhan titan PMH_3.jpg', 280000, 5, 24),
(49, 'Nhẫn Titan Hoàng Kim đính đá', '', '<p>NHẪN TITAN Ho&agrave;ng kim đ&iacute;nh đ&aacute;</p>\r\n\r\n<p>NHẪN TITAN KH&Ocirc;NG GỈ S&Eacute;T - THỜI TRANG C&Aacute; T&Iacute;NH</p>\r\n\r\n<p>Lời khẳng định của nh&agrave; sản xuất khi ra mắt d&ograve;ng NHẪN n&agrave;y l&agrave; &ldquo;Gi&aacute; rẻ - Chất lượng kh&ocirc;ng hề rẻ&rdquo;.</p>\r\n\r\n<p><strong>NHẪN CAO CẤP, THỜI TRANG- TRẺ TRUNG - ĐỘC Đ&Aacute;O</strong></p>\r\n\r\n<p>Sự kết hợp 2 trong 1 của chiếc nhẫn kỳ diệu. Cấu tạo nhẫn:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế tr&ecirc;n chất liệu Titanium Steel si&ecirc;u bền.</li>\r\n	<li>Đ&aacute; thủy tinh si&ecirc;u đẹp, si&ecirc;u b&oacute;ng, cực k&igrave; sang trọng</li>\r\n	<li>V&ograve;ng cung b&ecirc;n trong trơn, thoải m&aacute;i khi đeo v&agrave; kh&ocirc;ng g&acirc;y dị ứng, th&acirc;n thiện với da.</li>\r\n	<li>Giới t&iacute;nh: D&agrave;nh cho Cả Nam V&agrave; Nữ</li>\r\n</ul>\r\n\r\n<p>Sản phẩm v&ocirc; c&ugrave;ng độc đ&aacute;o v&agrave; mới lạ, t&ocirc;n l&ecirc;n vẻ đẹp thời trang c&aacute; t&iacute;nh của ri&ecirc;ng bạn Sản phẩm gi&uacute;p bạn t&ocirc;n l&ecirc;n vẻ sang trọng v&agrave; v&ocirc; c&ugrave;ng nổi bật phong c&aacute;ch hiện đại. Được thiết kế k&igrave; c&ocirc;ng, tỉ mỉ, v&agrave; tinh xảo từng chi tiết nhỏ M&agrave;u sắc s&aacute;ng tự nhi&ecirc;n sang trọng.</p>\r\n', 1, '1626535700_nhan titan PMH_4.jpg', 500000, 9, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(23, 20, 5),
(24, 20, 5),
(25, 20, 1),
(26, 23, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'Nguyễn Văn E', 'nve@gmail.com', '202cb962ac59075b964b07152d234b70'),
(8, 'em', 'em@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
