-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 27, 2025 lúc 07:39 PM
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
-- Cơ sở dữ liệu: `shop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(41, 1, 15, 'Laptop MSI Gaming Thin A15 R5 7535HS/16GB/512GB/15.6', 16990000, 2, 'msi_thin_a15_b7u_61070ff9c3.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Lê Thế Toàn', '0837310096', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Tai nghe (18199000 x 10) - Chuột (500000 x 3) - ', 183490000, '2025-04-20', 'pending'),
(2, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột (500000 x 1) - ', 500000, '2025-04-20', 'pending'),
(3, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột (500000 x 1) - ', 500000, '2025-04-20', 'pending'),
(4, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột (500000 x 1) - ', 500000, '2025-04-20', 'pending'),
(5, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột (500000 x 1) - ', 500000, '2025-04-20', 'pending'),
(6, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột (500000 x 1) - ', 500000, '2025-04-20', 'pending'),
(7, 1, 'Lê Thế Toàn', '20000', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Bàn phím Gaming có dây Rapoo V50S (390000 x 1) - Bàn phím cơ gaming có dây Apex 3 TKL SteelSeries (1377000 x 1) - Laptop MSI Gaming Thin A15 R5 7535HS/16GB/512GB/15.6 (16990000 x 1) - ', 18757000, '2025-04-21', 'pending'),
(8, 1, 'Lê Thế Toàn', '0123456789', 'lttoan291204@gmail.com', 'cash on delivery', 'flat no. LaiThai, Nam Dư, Lĩnh Nam, Hà Nội, VN - 100', 'Chuột Gaming có dây HyperX Pulsefire Haste 2 (790000 x 1) - Chuột Gaming có dây Razer DeathAdder  (439000 x 2) - ', 1668000, '2025-04-21', 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(7, 'Bàn phím Gaming có dây HyperX Alloy Origins Core', 'HyperX Alloy Origins Core là mẫu bàn phím cơ gaming với nhiều tính năng nổi bật, mang lại trải nghiệm tuyệt vời cho game thủ. Những tính năng này kết hợp lại nhằm mang đến trải nghiệm gaming tuyệt vời, đáp ứng đầy đủ các yêu cầu khắt khe, từ thiết kế bền bỉ đến hiệu suất tối ưu và khả năng tùy chỉnh linh hoạt.\r\nThiết kế gọn nhẹ và chắc chắn\r\nHyperX Alloy Origins Core có thiết kế Tenkeyless (TKL) vô cùng gọn nhẹ, giúp giải phóng không gian trên bàn làm việc của bạn, tạo điều kiện thuận lợi cho vi', 1490000, '2024_5_13_638512086560333957_ban-phim-gaming-co-day-hyperx-alloy-origins-core-5.webp', '2024_5_13_638512086559845721_ban-phim-gaming-co-day-hyperx-alloy-origins-core-2.webp', '2024_5_13_638512086559845721_ban-phim-gaming-co-day-hyperx-alloy-origins-core-4.webp'),
(8, 'Bàn phím Gaming có dây Rapoo V50S', 'Rapoo V50S là mẫu bàn phím gaming có dây nổi bật với nhiều tính năng hấp dẫn, đáp ứng nhu cầu của giới game thủ chuyên nghiệp. Sản phẩm này là lựa chọn tuyệt vời cho các game thủ, mang lại trải nghiệm thoải mái với hiệu suất cao và trải nghiệm gaming đỉnh cao.\r\nĐèn nền RGB đa sắc\r\nRapoo V50S nổi bật với hệ thống đèn nền RGB đa sắc, mang đến không gian chơi game sống động và đầy màu sắc. Người dùng có thể dễ dàng tùy chỉnh các chế độ chiếu sáng khác nhau theo sở thích cá nhân, từ các hiệu ứng ánh', 390000, '2024_5_13_638512093613374576_ban-phim-gaming-co-day-rapoo-v50s-3.webp', '2024_5_13_638512093612437128_ban-phim-gaming-co-day-rapoo-v50s-5.webp', '2024_5_13_638512093612906086_ban-phim-gaming-co-day-rapoo-v50s-4.webp'),
(9, 'Bàn phím cơ gaming có dây Apex 3 TKL SteelSeries', 'Bàn phím gaming có dây Apex 3 TKL SteelSeries là dòng bàn phím giả cơ với thiết kế nhỏ gọn và tiện lợi. Phụ kiện này được tích hợp nhiều công nghệ mới như công tắc Whisper Quiet, chống bụi và nước IP32, phím điều khiển đa phương tiện,... giúp cho quá trình sử dụng thêm phần thú vị. Đây hứa hẹn là một chiếc bàn phím tuyệt vời, mang lại trải nghiệm cảm xúc đỉnh cao khi bạn chơi game.\r\nBàn phím đến từ thương hiệu uy tín\r\nSteelSeries là một trong những nhà sản xuất hàng đầu thế giới về các thiết bị ', 1377000, '2024_3_20_638465527381174114_ban-phim-co-gaming-co-day-apex-3-tkl-steelseries-1.webp', '2024_3_20_638465527383517783_ban-phim-co-gaming-co-day-apex-3-tkl-steelseries-3.webp', '2024_3_20_638465527381642912_ban-phim-co-gaming-co-day-apex-3-tkl-steelseries-4.webp'),
(10, 'Bàn phím giả cơ có dây Zadez G-852K', 'Sau nhiều năm nghiên cứu nhu cầu của các game thủ và những người đam mê với Esport, Zadez đã đúc rút kinh nghiệm để sáng tạo ra một mẫu bàn phím Gaming G-852K. Ngoài điểm sáng ở thiết kế chơi game chuyên dụng, chiếc bàn phím này còn hỗ trợ nhiều tính năng khác như đèn LED 7 màu, switch bán cơ. Tất cả nhằm đảm bảo trải nghiệm chơi game PC được đưa lên một tầm cao mới.', 490000, '2019_7_10_636983635162542128_Bàn phím Game Zadez G-852K 4.webp', '2019_7_10_636983634521822128_Bàn phím Game Zadez G-852K 2.webp', '2019_7_10_636983634521962128_Bàn phím Game Zadez G-852K.webp'),
(11, 'Chuột Gaming có dây Rapoo   V16S Pro Black', 'Với thiết kế công thái học, độ nhạy có thể điều chỉnh, ánh sáng động, thiết lập tùy chỉnh, nút lập trình và chất lượng xây dựng tốt, chuột chơi game có dây Rapoo V16S sẽ mang lại trải nghiệm chơi game toàn diện và thú vị cho người dùng. Đây sẽ là lựa chọn tuyệt vời cho các game thủ đang tìm kiếm một chuột chơi game đáng tin cậy và đa dụng. Thiết kế công thái học đối xứng Chuột Rapoo V16S được thiết kế để đảm bảo sự thoải mái với kiểu dáng công thái học phù hợp cho cả người thuận tay trái và tay ', 390000, '2024_5_13_638512191465947037_chuot-gaming-co-day-rapoo-v16s-1.webp', '2024_5_13_638512191465947037_chuot-gaming-co-day-rapoo-v16s-4.webp', '2024_5_13_638512191466259077_chuot-gaming-co-day-rapoo-v16s-2.webp'),
(12, 'Chuột Gaming có dây Razer DeathAdder ', 'Chuột Razer DeathAdder Essential là một trong những sản phẩm nổi bật của dòng chuột gaming, nổi tiếng với sự bền bỉ và hiệu suất cao. Với hàng loạt các tính năng hướng đến chơi game, sản phẩm này chắc chắn sẽ trở thành lựa chọn tuyệt vời cho các game thủ, mang lại trải nghiệm chơi game mượt mà và thoải mái. Thiết kế công thái học Chuột Razer DeathAdder Essential được thiết kế với kiểu dáng công thái học, mang lại sự thoải mái tối đa cho người dùng trong các phiên chơi game kéo dài. Thiết kế này ', 439000, '2024_5_13_638512194282874914_chuot-gaming-co-day-razer-deathadder-essential-ergonomic-wired-1.webp', '2024_5_13_638512194282874914_chuot-gaming-co-day-razer-deathadder-essential-ergonomic-wired-2.webp', '2024_5_13_638512194282874914_chuot-gaming-co-day-razer-deathadder-essential-ergonomic-wired-3.webp'),
(13, 'Chuột Gaming có dây HyperX Pulsefire Haste 2', 'HyperX Pulsefire Haste 2 thực sự là một sản phẩm đáng giá cho các game thủ muốn tối ưu hóa hiệu suất chơi game của mình với những tính năng tiên tiến và thiết kế thông minh. Với nhiều tính năng vượt trội, sản phẩm này sẽ mang đến trải nghiệm linh hoạt và tiện dụng tối đa trong quá trình sử dụng. Cảm biến HyperX 26K chính xác HyperX Pulsefire Haste 2 được trang bị cảm biến HyperX 26K tiên tiến, đảm bảo độ chính xác cao đáng kinh ngạc với DPI lên đến 26.000 và tốc độ theo dõi 650 IPS. Cảm biến này', 790000, 'hyperx_pulsefire_haste_2_f1cb75efe7.webp', 'hyperx_pulsefire_haste_2_1_9c9f58799d.webp', 'hyperx_pulsefire_haste_2_2_2468de809e.webp'),
(14, 'Chuột Gaming MSI Clutch GM08', 'Chuột chơi game có dây MSI Clutch GM08 sẽ là một trợ thủ đắc lực cho các game thủ nhờ thiết kế đậm chất gaming, cảm biến quang học siêu chính xác và khả năng điều chỉnh DPI nhanh chóng. Thiết kế đậm chất gaming Cho dù bạn là ai, chuột gaming có dây MSI Clutch GM08 cũng sẽ tạo ra một ấn tượng tốt cho bạn ngay từ cái nhìn đầu tiên. Từng chi tiết cũng như kiểu dáng bên ngoài của chuột đều mang đậm nét gaming với các đường nét cắt xẻ hiện đại và phím bấm góc cạnh.', 439000, '2021_12_24_637759609154375983_CHUOT-3.webp', '2021_12_24_637759609154532248_CHUOT-2.webp', '2021_12_24_637759609154375983_CHUOT-4.webp'),
(15, 'Laptop MSI Gaming Thin A15 R5 7535HS/16GB/512GB/15.6\" FHD/RTX3050_4GB', 'Với mức giá hợp lý trong phân khúc laptop gaming, MSI Thin A15 B7UC-261VN đem đến cho người dùng những giá trị sử dụng tuyệt vời. Sản phẩm đến từ MSI được trang bị cấu hình ấn tượng với chip AMD Ryzen 7000 kết hợp cùng card đồ họa RTX 3050. Phong cách thiết kế Cyberpunk kết hợp với bàn phím hiện đại hứa hẹn đem lại cho game thủ những trải nghiệm tốt nhất.', 16990000, 'msi_thin_a15_b7u_61070ff9c3.webp', 'msi_thin_a15_b7u_1_502129b847.webp', 'msi_thin_a15_b7u_2_22b97279ed.webp'),
(16, 'Laptop Acer Aspire 3 A315-44P-R5QG R7 5700U/16GB/512GB/15.6\" FHD/Win11', 'Acer Aspire 3 A315-44P-R5QG là chiếc laptop mỏng nhẹ đa năng cho học sinh, sinh viên, nhân viên văn phòng. Sở hữu bộ vi xử lý AMD Ryzen 7 cực mạnh đi cùng dung lượng RAM lên tới 16GB, Aspire 3 A315 cho bạn làm việc mượt mà và năng suất hơn.', 12090000, '2022_3_7_637822560588852335_acer-aspire-3-a315-58-bac-1.webp', '2022_3_7_637822560591977278_acer-aspire-3-a315-58-bac-3.webp', '2022_3_7_637822560588227307_acer-aspire-3-a315-58-bac-4.webp'),
(17, 'Laptop Asus Vivobook E1404FA-NK186W R5 7520U/16GB/512GB/14\" FHD/Win11', 'ASUS Vivobook E1404FA-NK186W thuộc dòng Vivobook Go 14, dòng laptop hiệu năng cao giá rẻ giúp bạn làm việc hiệu quả mọi lúc mọi nơi. Với bộ vi xử lý AMD 7000 series mạnh mẽ, trang bị sẵn tới 16GB RAM, 512GB SSD, Vivobook E1404FA sẽ mang đến trải nghiệm làm việc thoải mái, vô cùng mượt mà.', 11990000, '2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-5.webp', '2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-4.webp', '2023_4_11_638168280594574722_asus-vivobook-e1404fa-nk186w-r5-7520u-den-1.webp'),
(18, 'Laptop HP 14s-em0086AU R5 7520U/16GB/512GB/14\" FHD/AMD Radeon Graphics/Win11', 'Với việc trang bị sẵn tới 16GB RAM và bộ vi xử lý Ryzen 5 7520 thuộc thế hệ AMD 7000 series mới nhất, HP 14s-em0086AU tự tin cùng bạn vượt qua mọi thử thách trong học tập, công việc. Kiểu dáng nhỏ gọn, bền bỉ sẽ giúp laptop dễ dàng để đồng hành bên bạn đi khắp muôn nơi.', 12490000, '2023_4_11_638168318098594588_hp-14s-em0080au-r3-7320u-bac-1.webp', '2023_4_11_638168318098165351_hp-14s-em0080au-r3-7320u-bac-2.webp', '2023_4_11_638168318098594588_hp-14s-em0080au-r3-7320u-bac-3.webp'),
(19, 'Laptop Lenovo Gaming LOQ 15ARP9 R5-7235HS/12GB/512GB/15.6\" FHD/RTX3050 6GB/Win11', 'Với hiệu năng bứt phá cùng màn hình sắc nét, Lenovo LOQ 15ARP9 83JC007VVN sẽ nâng tầm trải nghiệm gaming và sáng tạo của bạn. Sản phẩm được trang bị chip AMD Ryzen 5 7235HS, card đồ họa NVIDIA GeForce RTX 3050 6GB, màn hình 144Hz siêu mượt và thiết kế hiện đại. Đây sẽ là bạn đồng hành đáng tin cậy của bạn trên mọi chiến trường ảo.', 19490000, 'lenovo_loq_15arp9_1_d659ef3c4b.webp', 'lenovo_loq_15arp9_2_5c25f47206.webp', 'lenovo_loq_15arp9_3_0dd557adfc.webp'),
(20, 'Laptop Asus TUF Gaming A15 FA506NCR/16GB/512GB/15.6\" 144Hz/Nvidia GeForce RTX3050 4', 'Sở hữu sức mạnh phần cứng ấn tượng và thiết kế chuẩn gaming, Asus TUF FA506NCR-HN047W mang lại trải nghiệm chơi game mượt mà, tốc độ cùng năng lực đa nhiệm ấn tượng. Sản phẩm được tích hợp chip AMD Ryzen 7 7435HS mạnh mẽ, card đồ họa RTX 3050 và màn hình 144Hz.', 19990000, '2021_asus_tuf_gaming_a15_fa506_1_dce6fe4658.webp', '2021_asus_tuf_gaming_a15_fa506_2_833d26f51a.webp', '2021_asus_tuf_gaming_a15_fa506_4_75acec5346.webp'),
(21, 'Laptop Dell Inspiron 15 3520 i5 1235U/16GB/512GB/15.6\" FHD/Win11/Office HS24/OS365', 'Một mẫu laptop với cấu hình đủ mạnh, thiết kế bền bỉ và đến từ thương hiệu nổi tiếng như Dell Inspiron 3520 sẽ là trợ thủ đắc lực giúp bạn xử lý đa nhiệm, sáng tạo nội dung và giải trí một cách mượt mà. Sản phẩm được trang bị loạt công nghệ tiên tiến, mang lại trải nghiệm tối ưu cho mọi nhu cầu.', 16490000, 'dell_inspiron_15_3520_silver_514aecbbe9.webp', 'dell_inspiron_15_3520_silver_3_23b22bc57f.webp', 'dell_inspiron_15_3520_silver_2_9dc801f831.webp'),
(22, 'Màn hình LG 24MR400-B/23.8 inch FullHD (1920x1080)/IPS 100Hz', 'Lên kệ với mức giá phải chăng và đến từ thương hiệu hàng đầu trong lĩnh vực màn hình máy tính, LG 24MR400-B cung cấp chất lượng hiển thị tuyệt vời thông qua tấm nền IPS chất lượng cao tần số quét 100Hz. Sản phẩm được trang bị công nghệ AMD FreeSync cùng nhiều chức năng bảo vệ sức khỏe thị lực, hứa hẹn là trợ thủ tuyệt vời cho cả tác vụ làm việc và giải trí.', 2190000, 'lg_24mr400_b_1_190c125dec.webp', 'lg_24mr400_b_2_703f8a08c7.webp', 'lg_24mr400_b_4_969f40ab19.webp'),
(23, 'Màn hình Samsung S70D 27 inch/4K(3,840 x 2,160)/IPS 60Hz', 'Là phương án hỗ trợ tuyệt vời cho giới thiết kế chuyên nghiệp và các nhà sáng tạo nội dung, màn hình Samsung ViewFinity S7 S70D UHD gây ấn tượng với độ phân giải UHD sắc nét, công nghệ HDR10 giúp màu sắc được hiển thị chân thật và độ tương phản sâu. Ngoài ra, chân đế Easy Setup giúp cho quá trình lắp đặt trở nên đơn giản, nhanh chóng hơn bao giờ hết', 5590000, 'samsung_viewfinity_s7_s70d_ls27d700eaexxv_972992155e.webp', 'samsung_viewfinity_s7_s70d_ls27d700eaexxv_2_46b6f69077.webp', 'samsung_viewfinity_s7_s70d_ls27d700eaexxv_3_30e17d8b1e.webp'),
(24, 'Màn hình Gaming LG 24GS50F-B.ATVQ/FullHD (1920x1080)/VA 180Hz', 'Chạm đến trải nghiệm gaming tuyệt đỉnh với màn hình LG 24GS50F-B.ATVQ. Sản phẩm không chỉ cung cấp góc nhìn sắc nét và chân thực mà còn đạt mức tần số quét lên đến 180Hz và có tốc độ phản hồi 1ms – giúp game thủ có được trải nghiệm hình ảnh mượt mà, luôn dẫn trước đối thủ ở những tình huống quyết định của game đấu.', 2690000, 'man_hinh_gaming_lg_24gs50f_batvq_fhd_4_a2d5d01e93.webp', 'man_hinh_gaming_lg_24gs50f_batvq_fhd_3_0d950b5a7c.webp', 'man_hinh_gaming_lg_24gs50f_batvq_fhd_5_a7eb525a5a.webp'),
(25, 'Màn hình đồ họa MSI Pro MP275Q/27 inch 2K(2560x1440)/IPS 100hz', 'MSI Pro MP275Q sẽ giúp bạn chuyên nghiệp hóa trải nghiệm công việc với tấm nền 27 inch rộng mở và độ phân giải 2K siêu sắc nét. Ngoài ra, sản phẩm còn cung cấp bộ tính năng hỗ trợ rất tốt cho giới văn phòng như công nghệ bảo vệ mắt EyesErgo, góc trông ảnh 178 độ và tần số quét 100Hz mượt mà.', 3890000, 'msi_pro_mp275q_27_inch_2k_1_1acec30944.webp', 'msi_pro_mp275q_27_inch_2k_5_6821763446.webp', 'msi_pro_mp275q_27_inch_2k_4_90102059d5.webp'),
(26, 'Màn hình Gaming Acer Nitro KG270 M5/27inch/FHD (1920X1080)/IPS 180Hz', 'Được thiết kế nhằm đáp ứng tốt nhu cầu của giới game thủ, màn hình Acer Nitro KG270 M5 có kích thước 27 inch rộng mở, sở hữu tấm nền IPS Full HD chất lượng cao và đặc biệt là tần số quét lên đến 180Hz. Độ phủ màu 99% sRGB cùng chuẩn HDR10 đảm bảo mọi khuôn hình đều được diễn đạt chân thực, mãn nhãn.', 3090000, 'acer_kg270_m5_1_cedc4618cb.webp', 'acer_kg270_m5_3_eb2e75fc81.webp', 'acer_kg270_m5_4_08cb800d0f.webp'),
(27, 'Màn hình LG 27MR400-B/27 inch FullHD (1920x1080)/IPS 100Hz', 'Màn hình LG 27MR400-B 27 inch ghi điểm nhờ mức giá dễ tiếp cận và kích cỡ 27 inch rộng mở. Tấm nền chất lượng cao đem đến trải nghiệm hình ảnh sắc nét mọi góc độ. Ngoài ra, bạn sẽ tìm thấy trên sản phẩm này loạt công nghệ hiện đại như tần số quét 100Hz, chế độ đọc sách, chống rung hình, AMD FreeSync và thiết kế đậm chất công thái học.', 2590000, 'lg_27mr400_b_1_016cc728c0.webp', 'lg_27mr400_b_3_4f84a90b1a.webp', 'lg_27mr400_b_4_acaf685acf.webp'),
(28, 'Webcam Rapoo C270L', 'Nằm trong dòng sản phẩm ghi hình chuyên dụng của Rapoo, bộ webcam Rapoo 270L có độ phân giải Full HD với khả năng ghi hình sắc nét. Sản phẩm có góc thu hình rộng 105 độ, cung cấp cái nhìn toàn cảnh khi tham gia cuộc họp và hội nghị. Ngoài ra, cơ chế xoay 360 độ linh hoạt cùng micro chống ồn giúp truyền tải rõ ràng giọng nói của bạn đến đầu dây bên kia.', 890000, 'webcam_rapoo_c270l_1_dec81618db.webp', 'webcam_rapoo_c270l_4_e94038d345.webp', 'webcam_rapoo_c270l_5_3814dccad9.webp'),
(29, 'Webcam Logitech Brio 300', 'Webcam Logitech Brio 300 là sản phẩm được thiết kế dành riêng cho các cuộc họp trực tuyến và gọi video cá nhân. Với công nghệ tiên tiến và thiết kế hiện đại, Brio 300 không chỉ mang đến hình ảnh sắc nét mà còn cung cấp nhiều tính năng hữu ích để cải thiện trải nghiệm giao tiếp trực tuyến. Nếu bạn đang tìm một webcam tin cậy và chất lượng cao, Logitech Brio 300 chắc chắn sẽ là một lựa chọn đáng để cân nhắc.', 1990000, '2024_5_30_638526580121386093_webcam-logitech-brio-300-3.webp', '2024_5_30_638526580121229773_webcam-logitech-brio-300-4.webp', '2024_5_30_638526580121698146_webcam-logitech-brio-300-1.webp'),
(30, 'Webcam Modern Microsoft', 'Microsoft Modern Webcam là một sản phẩm webcam cao cấp với nhiều tính năng thông minh và linh hoạt, mang đến cho bạn trải nghiệm gọi video chất lượng cao và hỗ trợ tối ưu trong việc sử dụng ứng dụng Microsoft Teams. Với khả năng lắp đặt linh hoạt, tích hợp các tính năng bảo mật và cải thiện chất lượng hình ảnh, webcam này sẽ là trợ thủ đắc lực giúp bạn tạo ra những cuộc họp trực tuyến hiệu quả và chuyên nghiệp.', 2250000, '2023_6_5_638215545364017461_WEBCAM-MODERN-MICROSOFT-1.webp', '2023_6_5_638215545364017461_WEBCAM-MODERN-MICROSOFT-2.webp', '2023_6_5_638215545364017461_WEBCAM-MODERN-MICROSOFT-3.webp'),
(31, 'Webcam Hyper HD 1080p HC437', 'Với các tính năng như độ phân giải Full HD 1080p, nắp che riêng tư, micro stereo, góc quan sát rộng và khả năng tương thích đa nền tảng, webcam HyperCam 1080p chắc chắn sẽ giúp nâng cao trải nghiệm ghi và truyền hình ảnh của bạn đến một tầm cao mới.', 790000, '2023_7_10_638245803725877235_WEBCAM-HYPER-HC437-1.webp', '2023_7_10_638245803725877235_WEBCAM-HYPER-HC437-2.webp', '2023_7_10_638245803725877235_WEBCAM-HYPER-HC437-3.webp'),
(32, 'Webcam tích hợp Micro Logitech HD Brio 100', 'Với nhiều tính năng nổi bật, webcam Logitech HD Brio 100 không chỉ đáp ứng tốt nhu cầu sử dụng hàng ngày mà còn mang lại trải nghiệm hình ảnh và âm thanh vượt trội, làm hài lòng cả những người dùng khó tính nhất.Độ phân giải Full HD 1080p', 1049000, '2024_5_14_638512990391423317_webcam-tich-hop-micro-logitech-hd-brio-100-1.webp', '2024_5_14_638512990391423317_webcam-tich-hop-micro-logitech-hd-brio-100-2.webp', '2024_5_14_638512990391423317_webcam-tich-hop-micro-logitech-hd-brio-100-3.webp'),
(33, 'Tai nghe Bluetooth choàng đầu Gaming ICore BGH99', 'Tai nghe Bluetooth choàng đầu Gaming iCore BGH99 là lựa chọn lý tưởng cho các game thủ mong muốn trải nghiệm âm thanh sống động với thiết kế cuốn hút, đậm chất gaming. Chưa hết, thời lượng pin của tai nghe lên đến 18 giờ giúp bạn thoải mái chơi game trong thời gian dài mà không cần lo lắng về việc sạc pin thường xuyên.', 890000, 'tainghe1_1.webp', 'tainghe1_2.webp', 'tainghe1_3.webp'),
(34, 'Tai nghe không dây choàng đầu Gaming Havit Fuxi-H3', 'Tai nghe không dây choàng đầu Gaming Havit Fuxi-H3 là sản phẩm nổi bật dành cho game thủ với nhiều tính năng tiên tiến. Với nhiều tính năng cao cấp, sản phẩm này hứa hẹn sẽ mang lại trải nghiệm tuyệt vời cho cộng đồng đam mê eSports.', 880000, 'tainghe2_1.webp', 'tainghe2_2.webp', 'tainghe2_3.webp'),
(35, 'Tai nghe choàng đầu có mic Gaming Havit H2038U', 'Tai nghe Havit H2038U mang đến trải nghiệm chơi game sống động với âm thanh vòm 7.1, màng loa 50mm và đèn LED ấn tượng. Với thiết kế thoải mái, micro đa hướng khử tiếng ồn và đầu cắm USB tiện lợi, sản phẩm này sẽ là một lựa chọn tuyệt vời cho các game thủ đam mê trải nghiệm chơi game chất lượng cao.', 600000, 'tainghe3_1.webp', 'tainghe3_2.webp', 'tainghe3_3.webp'),
(36, 'Tai nghe choàng đầu có mic Gaming Havit H2230D', 'Tai nghe chụp tai Gaming Havit H2230D là sự lựa chọn hoàn hảo cho các game thủ nhiệt huyết, những người luôn tìm kiếm trải nghiệm đỉnh cao trong các tựa game chiến đấu. Với tai nghe này, âm thanh trở thành một yếu tố cực kỳ quan trọng, giúp bạn tối ưu hóa hiệu suất và tinh thần khi tham gia các cuộc chiến đầy kịch tính. Havit H2230D luôn sẵn sàng đáp ứng mọi yêu cầu của bạn về âm thanh trong thế giới game.', 520000, 'tainghe4_1.webp', 'tainghe4_2.webp', 'tainghe4_3.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'qwerty', 'lttoan291204@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
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
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
