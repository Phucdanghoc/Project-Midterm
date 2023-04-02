-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 09:25 AM
-- Server version: 8.0.32
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `address`, `phone`, `name`) VALUES
(1, 'USA', '0', 'XXI STORE'),
(3, 'HCM', '0', 'Phuc');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `use_id` int NOT NULL,
  `pro_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `created_at`, `use_id`, `pro_id`) VALUES
(20, 3, 'Sun Apr 02 00:02:37 ICT 2023', 1, 3),
(21, 4, 'Sun Apr 02 01:56:38 ICT 2023', 1, 3),
(22, 1, 'Sun Apr 02 01:57:51 ICT 2023', 1, 7),
(23, 1, 'Sun Apr 02 02:27:56 ICT 2023', 1, 7),
(24, 1, 'Sun Apr 02 15:41:03 ICT 2023', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'áo'),
(2, 'quần');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'đỏ'),
(4, 'đen'),
(5, 'xám'),
(6, 'trắng'),
(7, 'Nâu'),
(8, 'kem'),
(9, 'xanh lá');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img_src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rate` double NOT NULL,
  `bra_id` int DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `col_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `detail`, `img_src`, `name`, `price`, `rate`, `bra_id`, `cat_id`, `col_id`) VALUES
(3, 'MÔ TẢ SẢN PHẨM\nÁo thun form rộng nữ tay lỡ oversize chất vải cotton Miucho\nÁo phông wash nữ form rộng đẹp tay lỡ oversize Miucho chính là chiếc áo thun dành cho các bạn nữ, một chiếc áo thun cổ tròn phong cách hàn quốc cao cấp được sử dụng chất vải thun cotton từ sợi bông tự nhiên đem đến cho người mặc trải nghiệm tuyệt vời nhất. \n- Nổi bật, tinh tế, đơn giản mà sang trọng\n- Không nhắn, không co rút sau khi giặt\n- Cảm giác mướt tay, êm ái và mềm mại ngay lần đầu chạm\n- Chất lượng cho độ dày dặn, co giãn tốt và quan trọng độ bền màu\n- Đặc biệt sợi Cotton pha Spandex được xử lý giúp chống tia UV và kháng khuẩn\nThông tin:  áo thun wash nữ form rộng unisex tay lỡ hàn quốc cotton\n- Kích thước: S, M, L, XL\n- Màu sắc: Đen xám\n- Xuất sứ: Made in VietNam\n- Chất Liệu : 100% cotton\n- Kiểu dáng: Form rộng tay lỡ, Oversize\nĐến với shop áo thun nữ Miucho:\n- Dịch vụ chất lượng, giao hàng toàn quốc\n- Hỗ trợ kiểm tra hàng trước khi thanh toán\n- Hỗ trợ đổi hàng khi không vừa Size\n- Áo được kiểm tra kĩ càng, cẩn thận trước khi giao\nHợp tác cùng Miucho:\n- In áo thun theo yêu cầu\n- Tuyển si và công tác viên\n#aothunnu #aothununisex #aothuntaylo #aophongnuformrong #aoformrong #aophongtaylo #aothuncotton #aothunnuformrong #aounisex #aophongnudep #aophongrongnu #aothundep #aothuntayloformrong #aothunhanquoc #aophongdep #aocotton #aophongnurong #aothuntaylounisex', ' https://down-vn.img.susercontent.com/file/sg-11134201-22120-vatlzw38zkkv7f_tn', ' Áo thun form rộng nữ tay lỡ oversize ', 159, 4.9, 3, 1, 5),
(6, 'MÔ TẢ SẢN PHẨM\n🔰  Thông tin chi tiết Áo sơ mi nam FEAER\n- Hàng Full tag, mác cực sang chảnh (xem video trên ảnh sản phẩm). \n- Chất liệu: Lụa Nhung gân  mềm mịn, siêu mát, thấm hút mồ hôi nhanh, sử dụng loại vải này còn mang lại cảm giác vô cùng ấm áp vào mùa đông mà vẫn mát mẻ vào mùa hè\n- Đường may tỉ mỉ, chắc chắn\n- Họa tiết trơn. Khách hàng phối với Jeans, Kaki, Short đều được. Mặc dạo phố, du lịch hay đến các buổi tiệc đều mang đến sự thoải mái, tự tin đẳng cấp dành cho khách hàng.\n- Màu: ĐEN\n\n⏩  Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\n⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn.\n⏩Bảng size mẫu Feaer:\nSize M: Nặng 55-64kg ; Cao 1m60-1m74\nSize L: Nặng 65-74kg ; Cao 1m75-1m79\nSize XL: Nặng 75-84kg ; Cao 1m80-1m83\nSize XXL: Nặng 85-94kg ; Cao 1m83-1m87\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\n\nHướng dẫn sử dụng sản phẩm Áo sơ mi nam FEAER\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n- Không được dùng hóa chất tẩy.\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\n\n🔰 Là khách của FEAER, bạn sẽ được:\nSản phẩm Áo sơ mi tay dài FEAER 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\nĐảm bảo vải chất lượng 100%\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\nHàng có sẵn, giao hàng ngay khi nhận được đơn \nHoàn tiền nếu sản phẩm không giống với mô tả\nChấp nhận đổi hàng khi size không vừa\nGiao hàng trên toàn quốc, nhận hàng trả tiền \nHỗ trợ đổi trả theo quy định của Shopee \n\n📣  CHÍNH SÁCH FEAER DENIM\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp được chấp nhận: \n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \n- Không đủ số lượng, không đủ bộ như trong đơn hàng \n3. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng \n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của FEAER\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,... \nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n\n#feaer #aosomi #sominam #aosominam #aonam #somifeaer #somi #somidep #somigiare #aosomidep #shirt #aosomitayngan #somitayngan #sominamtayngan #aosominamtayngan #ao #so #mi', ' https://down-vn.img.susercontent.com/file/bd8a5b4db00436f51df35d25f9b763f9_tn', ' Áo sơ mi nam FEAER DENIM ', 339, 4.9, 3, 1, 4),
(7, 'MÔ TẢ SẢN PHẨM\nThông tin sản phẩm Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N\n- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam\n- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA\n------------------------------------ \nHướng dẫn sử dụng:\n🎗 Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n🎗 Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal\n🎗 Sản phẩm phù hợp cho giặt máy/giặt tay\n------------------------------------ \nTHÔNG TIN CHI TIẾT \n🎗 Chất liệu: Thun lạnh\n🎗 Màu sắc: Đen - Xanh than - trắng - ghi\n🎗 Thương hiệu: VESCA\n🎗 Xuất xứ: Việt Nam \n🎗Size: M - L- XL - XXL\n------------------------------------ \nHƯỚNG DẪN CÁCH ĐẶT HÀNG \n🎗 Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE \n🎗 Mã sản phẩm đã có trong ảnh \n🎗 Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship \n- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng \n- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” \n🎗 Shop luôn sẵn sàng trả lời inbox để tư vấn \n------------------------------------ \nChế độ bảo hành VESCA:\n🎗 Tất cả các sản phẩm đều được shop bảo hành\n🎗 Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n🎗 Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực\n------------------------------------ \nVESCA cam kết:\n🎗 VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n🎗 VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/def1efaa698ff15ab8f8045d76a396aa_tn', ' Áo Giữ Nhiệt Nam Dài Tay Cao Cấp ', 45, 4.5, 3, 1, 4),
(9, 'MÔ TẢ SẢN PHẨM\n🔰  Thông tin chi tiết Áo sơ mi nam FEAER\n- Hàng Full tag, mác cực sang chảnh (xem video trên ảnh sản phẩm). \n- Chất liệu: Lụa Nhung gân  mềm mịn, siêu mát, thấm hút mồ hôi nhanh, sử dụng loại vải này còn mang lại cảm giác vô cùng ấm áp vào mùa đông mà vẫn mát mẻ vào mùa hè\n- Đường may tỉ mỉ, chắc chắn\n- Họa tiết trơn. Khách hàng phối với Jeans, Kaki, Short đều được. Mặc dạo phố, du lịch hay đến các buổi tiệc đều mang đến sự thoải mái, tự tin đẳng cấp dành cho khách hàng.\n- Màu: ĐEN\n\n⏩  Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\n⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn.\n⏩Bảng size mẫu Feaer:\nSize M: Nặng 55-64kg ; Cao 1m60-1m74\nSize L: Nặng 65-74kg ; Cao 1m75-1m79\nSize XL: Nặng 75-84kg ; Cao 1m80-1m83\nSize XXL: Nặng 85-94kg ; Cao 1m83-1m87\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\n\nHướng dẫn sử dụng sản phẩm Áo sơ mi nam FEAER\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n- Không được dùng hóa chất tẩy.\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\n\n🔰 Là khách của FEAER, bạn sẽ được:\nSản phẩm Áo sơ mi tay dài FEAER 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\nĐảm bảo vải chất lượng 100%\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\nHàng có sẵn, giao hàng ngay khi nhận được đơn \nHoàn tiền nếu sản phẩm không giống với mô tả\nChấp nhận đổi hàng khi size không vừa\nGiao hàng trên toàn quốc, nhận hàng trả tiền \nHỗ trợ đổi trả theo quy định của Shopee \n\n📣  CHÍNH SÁCH FEAER DENIM\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp được chấp nhận: \n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \n- Không đủ số lượng, không đủ bộ như trong đơn hàng \n3. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng \n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của FEAER\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,... \nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n\n#feaer #aosomi #sominam #aosominam #aonam #somifeaer #somi #somidep #somigiare #aosomidep #shirt #aosomitayngan #somitayngan #sominamtayngan #aosominamtayngan #ao #so #mi', ' https://down-vn.img.susercontent.com/file/bd8a5b4db00436f51df35d25f9b763f9_tn', ' Áo sơ mi nam FEAER DENIM ', 339, 4.9, 3, 1, 4),
(13, 'MÔ TẢ SẢN PHẨM\nÁo Thun Nam Tay Dài Giữ Nhiệt Cao Cấp Vải Thun Co Giãn 4 Chiều Ấm Áp ABANDON N\n-------------------------------------------------------------------------\n\n- Màu sắc: đen - xám - than - trắng\n- Size. M - L - XL - XXL\n- Xuất xứ: Việt Nam\n\nHướng dẫn sử dụng:\n- Nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của sản phẩm\n- Sản phẩm phù hợp cho giặt máy/giặt tay\n\nBảng size có trong mô tả ảnh sản phẩm\n\nLưu ý về sản phẩm:\n- Nếu chưa chắc chắn về chọn size sản phẩm\n- Nếu khách form người không cân đối (Béo, gầy, thấp...)\n- Nếu khách thích mặc ôm body hoặc mặc rộng thoải mái\n INBOX trực tiếp cho shop để được tư vấn size nhé\n\nChế độ bảo hành ABANDON\n- Tất cả các sản phẩm đều được shop hỗ trợ đổi trả\n- Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n- Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của ELEVEN sẽ hết hiệu lực\n\nABANDON cam kết:\n- ABANDON cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n- ABANDON cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n\n\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/3d2a89e7fb0e97a5045a04323ac017bd_tn', ' Áo Thun Nam Tay ', 39, 4.6, 3, 1, 6),
(14, 'MÔ TẢ SẢN PHẨM\nÁo Giữ Nhiệt Nam Thun Dài Tay Cao Cấp Cổ Cao Ấm Áp ABANDON N2\n\n- Màu sắc: đen - xám - than - trắng\n- Size. M - L - XL - XXL\n- Xuất xứ: Việt Nam\n\nHướng dẫn sử dụng:\n- Nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của sản phẩm\n- Sản phẩm phù hợp cho giặt máy/giặt tay\n\nBảng size có trong mô tả ảnh sản phẩm\n\nLưu ý về sản phẩm:\n- Nếu chưa chắc chắn về chọn size sản phẩm\n- Nếu khách form người không cân đối (Béo, gầy, thấp...)\n- Nếu khách thích mặc ôm body hoặc mặc rộng thoải mái\n INBOX trực tiếp cho shop để được tư vấn size nhé\n\nChế độ bảo hành ABANDON\n- Tất cả các sản phẩm đều được shop hỗ trợ đổi trả\n- Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n- Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của ELEVEN sẽ hết hiệu lực\n\nABANDON cam kết:\n- ABANDON cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n- ABANDON cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n\n\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/263554f8ac2e531b55b45bf9cbfd997d_tn', ' Áo Giữ Nhiệt Nam Thun Dài Tay Cao ', 39, 4.5, 3, 1, 6),
(15, 'MÔ TẢ SẢN PHẨM\nKill System mong muốn đem đến bạn những trải nghiệm mua sắm tốt nhất với giá cả phải chăng, chất lượng và mẫu mã sản phẩm luôn được cập nhật theo xu hướng.\nÁo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System do Kill System thiết kế và sản xuất mang phong cách streetwear trẻ trung, năng động - Đảm bảo chất lượng giống mô tả 100%\n* Chi tiết sản phẩm Áo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System:\n+ Chất liệu thun co giãn tốt, thấm hút mồ hôi và thoải mái không gò bó khi vận động.\n+ Thích hợp mặc hằng ngày, tiện lợi dễ dàng mix cùng các loại trang phục. \n+ Thiết kế đơn giản tạo sự thoải mái khi mặc.\n*Kích cỡ:\n* Hướng dẫn bảo quản Áo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System:\n+ Giặt mặt trái ở nhiệt độ bình thường với đồ có màu tương tự.\n+ Không dùng chất tẩy,  không ngâm sản phẩm quá lâu với bột giặt.\n+ Lộn mặt trái khi phơi tránh bị nhanh phai màu.\n+ Hạn chế sử dụng máy sấy và dùng nhiệt độ phù hợp khi ủi.\n* Cam kết & chính sách đổi trả:\n- Chất lượng sản phẩm 100% giống mô tả.\n- Hình ảnh chân thật 100% do shop tự chụp.\n--------\n- Đổi hàng trong vòng 7 ngày đối với:\n + Sản phẩm còn mới hoàn toàn, chưa qua sử dụng.\n + Sản phẩm bị lỗi do vận chuyển hoặc nhà sản xuất.\n--------\n- Quay lại video quá trình mở hàng để KIST hỗ trợ bạn một cách tốt nhất khi gặp vấn đề về sản phẩm nhé!\nLƯU Ý: Khi bạn gặp bất kì vấn đề gì cần khiếu nại đừng vội đánh giá mà hãy liên hệ với Kist ở mục tin nhắn để Kist được hỗ trợ bạn nhanh chóng nhất.\n_____________________________________________________________\n* Hệ thống cửa hàng :\n- Hồ Chí Minh: \n+ 84 Trần Quang Diệu , phường 14 , quận 3.\n+ The New Playground , Lê Lai , quận 1.\n* Hotline : 0945 696 700\n#aothuncroptop #aocroptop #croptop #killsystem #killsystemvn #kist  #streetwear  #aothunkillsystem ', ' https://down-vn.img.susercontent.com/file/sg-11134201-22120-uhlk0212fplvea_tn', ' Áo thun nữ Kill System tay dài ', 189, 4.9, 3, 1, 6),
(16, 'MÔ TẢ SẢN PHẨM\nÁo Thun (Áo Phông) Trơn #Aothunmaudo\n Đầy đủ size cho cả nam và nữ. #aothundodo\n(Khách hàng chú ý Áp Dụng các mã khuyến mãi vận chuyển nếu có khi Mua Hàng để được giảm shiping)\n🎈 Màu sắc: Màu Đỏ Đô\nHàng có sẵn, Ship hàng nhanh chóng. Xường may - in tại Tp.HCM\n🎈 #aothuntron Chất liệu thun cotton 4 chiều dày mịn, mềm mại co giãn tốt, thoáng mát\n🎈 Sản xuất: Áo Thun nhanh 24h\n🎈 Thiết kế thời trang: #aothunhanquoc phù hợp xu hướng hiện nay\n🎈 Kiểu dáng #aothuncotron đa phong cách\n🎈 Đường may tinh tế sắc sảo\n🎈 #aothunnu #aothunnam được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\n🎈 Dễ dàng phối trang phục, thích hợp đi chơi đi làm đi dạo phố\n🎈 Thích hợp cho sự kết hợp với quần jean, sọt,legging...\n🎈 #aogiare uy tín đảm bảo nhất thị trường\n🎈 #aothungiasi bán lẻ dù 1 sản phẩm\nXưởng may cũng nhận may và in theo yêu cầu.', 'https://down-vn.img.susercontent.com/file/2b3df431497cadc04eef472af1b4e715_tn', 'Áo Thun Trơn Màu Đỏ Đô Thời Trang 24h Vải Dày Đủ Size Ngắn Tay Cổ Tròn Nam và Nữ', 49, 4.9, 3, 1, 1),
(17, 'MÔ TẢ SẢN PHẨM\nÁo Thun (Áo Phông) Trơn #Aothunmaudo\n Đầy đủ size cho cả nam và nữ. #aothundodo\n(Khách hàng chú ý Áp Dụng các mã khuyến mãi vận chuyển nếu có khi Mua Hàng để được giảm shiping)\n🎈 Màu sắc: Màu Đỏ Đô\nHàng có sẵn, Ship hàng nhanh chóng. Xường may - in tại Tp.HCM\n🎈 #aothuntron Chất liệu thun cotton 4 chiều dày mịn, mềm mại co giãn tốt, thoáng mát\n🎈 Sản xuất: Áo Thun nhanh 24h\n🎈 Thiết kế thời trang: #aothunhanquoc phù hợp xu hướng hiện nay\n🎈 Kiểu dáng #aothuncotron đa phong cách\n🎈 Đường may tinh tế sắc sảo\n🎈 #aothunnu #aothunnam được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\n🎈 Dễ dàng phối trang phục, thích hợp đi chơi đi làm đi dạo phố\n🎈 Thích hợp cho sự kết hợp với quần jean, sọt,legging...\n🎈 #aogiare uy tín đảm bảo nhất thị trường\n🎈 #aothungiasi bán lẻ dù 1 sản phẩm\nXưởng may cũng nhận may và in theo yêu cầu.', 'https://down-vn.img.susercontent.com/file/2b3df431497cadc04eef472af1b4e715_tn', 'Áo Thun Trơn Màu Đỏ Đô Thời Trang 24h Vải Dày Đủ Size Ngắn Tay Cổ Tròn Nam và Nữ', 49, 4.9, 3, 1, 1),
(18, 'MÔ TẢ SẢN PHẨM\n⭐Hàng tồn kho sản phẩm ➡️ 【Spot】 ✔️\n\n⭐Thời gian giao hàng theo đơn đặt hàng➡️ 【Ngay trong ngày】 ✔️\n\n⭐Thời gian giao hàng dự kiến➡️ 【3 ngày】 ✔️\n\n⭐Kiểm tra vận chuyển sản phẩm➡️ 【Kiểm tra chất lượng】✔️\n \n⭐ Đánh giá sự hài lòng về sản phẩm➡️ 【5⭐】 ✔️\n\nThông tin sản phẩm\n\n- Xuất xứ: Hồ Chí Minh\n\n- Chất liệu:  polyester\n\n\n• Lưu ý: Khách lẻ có thể mua lẻ với giá sỉ bằng cách theo dõi cửa hàng.      Giảm giá cho tất cả các sản phẩm là giá đã chiết khấu.\n\n\n- Cửa hàng không nhận đặt hàng qua tin nhắn và ghi chú.      Các danh mục sản phẩm trong cửa hàng rất rõ ràng.      Nếu danh mục không được chọn, có nghĩa là danh mục đó đã hết hàng.      Sản phẩm không được phân loại sẽ được vận chuyển ngẫu nhiên như đã nêu trong mô tả.      Vui lòng đọc mô tả sản phẩm trước khi mua, mô tả có chứa tất cả các thông tin cần thiết.\n\n- Hướng dẫn đặt mua nhiều sản phẩm, màu, mẫu, kích thước trong 1 đơn hàng: Bạn phải chọn từng màu, mẫu hoặc kích thước mình muốn rồi thêm vào giỏ hàng.      Sau khi chọn đủ, bạn vào giỏ hàng để tiếp tục mua hàng.      Nếu muốn, bạn có thể điều chỉnh số lượng mua trong giỏ hàng.\n\n- Cửa hàng không đồng ý hủy đơn hàng đã xác nhận và có mã vận đơn của nhà vận chuyển.      Nếu đơn hàng không có mã vận đơn, quý khách tự do hủy và sắp xếp lại mà không cần sự đồng ý của chúng tôi.', 'https://down-vn.img.susercontent.com/file/sg-11134201-7qvcv-lf2wi9q3k8528e_tn', 'Quần dài thể thao nữ kiểu Mỹ ống rộng ống rộng quần ống rộng giản dị quần giảm béo', 100, 0, 3, 2, 4),
(19, 'MÔ TẢ SẢN PHẨM\nQuần jean nam đen baggy ống suông rộng 20we chất vải bò cao cấp dày dặn dáng đứng T01 hottrend 2022\n\n✅ Quần jean nam đen với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh\n✅ Quần baggy nam đen từ vải Denim jeans đen chất bò cao cấp nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.\n✅ Dáng quan jean nam baggy ống suông rộng trẻ trung  tạo nên form dáng đứng jeans nam cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.\n✅ quần jean baggy nam xanh đen màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.\n✅ Size: 27 đến 34\n✅ Xuất xứ: quần bò nam đen cao cấp được thiết kế và gia công bởi 20WE.OFFICIAL\n\n✔️ BẢNG SIZE THAM KHẢO:\n👖 Size 26 (Từ 38 - 42kg Cao Dưới 1m71)\n👖 Size 27  (Từ 42 - 49kg Cao Dưới 1m71)\n👖 Size 28  (Từ 50 - 54kg Cao Dưới 1m75)\n👖 Size 29 (Từ 55 - 58 kg Cao Dưới 1m80) \n👖 Size 30  ( Từ 59- 62 kg Cao Dưới 1m80) \n👖 Size 31 (Từ 63 - 65 kg Cao Dưới 1m80)  \n👖 Size 32  (Từ 66 - 69 kg Cao Dưới 1m80)  \n👖 Size 33  (Từ 70- 73 kg Cao Dưới 1m85)  \n👖 Size 34  (Từ 74 - 77 kg Cao Dưới 1m85)  \n👖 Size 35  (Từ 78 - 85 kg Cao Dưới 1m89) \n👖 Size 36  (Từ 86 - 93 kg Cao Dưới 1m89)   \n👖 Size 37 ( Từ 95kg-105kg Cao Dưới 1m89)   \nNOTE : Hãy nhắn tin cho shop để được tư vấn size chuẩn nhất với bạn.\n.............................................................................................................\n✔️ Loại  : quần jeans nam, quần bò nam ,quần jean baggy nam\n✔️ Màu sắc: quần jean nam đen, quần jean nam xanh, quần jean nam xám, quần jean nam trắng ( màu theo mã trên hình ) \n✔️ Thích hợp : Quần baggy nam jean ống suông rộng  thích hợp cho Đi Chơi,  Công Sở, Đời Thường\n✔️Chất liệu  : quần rin nam được làm từ chất jeans\n✔️kiểu dáng: jean baggy nam, quần jean nam ống suông, quần baggy nam ống đứng\n\n✔️ QUẦN NAM JEAN BAGGY ĐEN DÁNG ỐNG SUÔNG, RỘNG NAM CAO CẤP\n- Có phải bạn đang muốn tìm cho mình một chiếc quần jean baggy đen cao cấp mang style hàn quốc? \nMay mắn là bạn đã tìm thấy chúng tôi.\n-  Chiếc quần jeans nam baggy dành cho  nam này tại cửa hàng chúng tôi bán khoảng 600 chiếc mỗi tháng.\nĐã bán hơn 6.000 chiếc chỉ tính riêng trên hệ thống của Shopee Việt Nam, chưa kể đến những kênh bán khác!\n-  Bạn cũng sẽ là một trong số những người sẽ sở hữu chiếc quần jean trắng nam mang phong cách hàn quốc này.\nBởi vì đây là một chiếc quần jean mà cực kỳ dễ phối đồ từ áo thun....\nQuần baggy nam jean  đen ống suông rộng dáng đứng chất jeans bò cao cấp rin trơn phom xuông unisex hàn quốc 20WE\n(FILE ẢNH GỐC TRÊN)\n#quanbaggynam #quannam #quanjeannam #quanbonam #quanongrongnam #baggynam #quanjeanbaggynam #quanbaggydennam #quanongrong #baggy #quanbeggynam #quan #quanjeandennam #20WE #quầnjeannamden #quầnjeansnam #quầnbònam #quanjeannamdep #quầnjeansnamden #quầnjeanốngrộngnam', 'https://down-vn.img.susercontent.com/file/7c8bb3f6a9e09ce459efcad6172f43a3_tn', 'Quần jean nam đen baggy ống suông rộng 20we chất vải bò cao cấp dày dặn, không xù top xu hướng TR01 hottrend 2022', 145, 4.8, 3, 2, 4),
(20, 'MÔ TẢ SẢN PHẨM\nQuần jean nam đen baggy ống suông rộng 20we chất vải bò cao cấp dày dặn dáng đứng T01 hottrend 2022\n\n✅ Quần jean nam đen với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh\n✅ Quần baggy nam đen từ vải Denim jeans đen chất bò cao cấp nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.\n✅ Dáng quan jean nam baggy ống suông rộng trẻ trung  tạo nên form dáng đứng jeans nam cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.\n✅ quần jean baggy nam xanh đen màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.\n✅ Size: 27 đến 34\n✅ Xuất xứ: quần bò nam đen cao cấp được thiết kế và gia công bởi 20WE.OFFICIAL\n\n✔️ BẢNG SIZE THAM KHẢO:\n👖 Size 26 (Từ 38 - 42kg Cao Dưới 1m71)\n👖 Size 27  (Từ 42 - 49kg Cao Dưới 1m71)\n👖 Size 28  (Từ 50 - 54kg Cao Dưới 1m75)\n👖 Size 29 (Từ 55 - 58 kg Cao Dưới 1m80) \n👖 Size 30  ( Từ 59- 62 kg Cao Dưới 1m80) \n👖 Size 31 (Từ 63 - 65 kg Cao Dưới 1m80)  \n👖 Size 32  (Từ 66 - 69 kg Cao Dưới 1m80)  \n👖 Size 33  (Từ 70- 73 kg Cao Dưới 1m85)  \n👖 Size 34  (Từ 74 - 77 kg Cao Dưới 1m85)  \n👖 Size 35  (Từ 78 - 85 kg Cao Dưới 1m89) \n👖 Size 36  (Từ 86 - 93 kg Cao Dưới 1m89)   \n👖 Size 37 ( Từ 95kg-105kg Cao Dưới 1m89)   \nNOTE : Hãy nhắn tin cho shop để được tư vấn size chuẩn nhất với bạn.\n.............................................................................................................\n✔️ Loại  : quần jeans nam, quần bò nam ,quần jean baggy nam\n✔️ Màu sắc: quần jean nam đen, quần jean nam xanh, quần jean nam xám, quần jean nam trắng ( màu theo mã trên hình ) \n✔️ Thích hợp : Quần baggy nam jean ống suông rộng  thích hợp cho Đi Chơi,  Công Sở, Đời Thường\n✔️Chất liệu  : quần rin nam được làm từ chất jeans\n✔️kiểu dáng: jean baggy nam, quần jean nam ống suông, quần baggy nam ống đứng\n\n✔️ QUẦN NAM JEAN BAGGY ĐEN DÁNG ỐNG SUÔNG, RỘNG NAM CAO CẤP\n- Có phải bạn đang muốn tìm cho mình một chiếc quần jean baggy đen cao cấp mang style hàn quốc? \nMay mắn là bạn đã tìm thấy chúng tôi.\n-  Chiếc quần jeans nam baggy dành cho  nam này tại cửa hàng chúng tôi bán khoảng 600 chiếc mỗi tháng.\nĐã bán hơn 6.000 chiếc chỉ tính riêng trên hệ thống của Shopee Việt Nam, chưa kể đến những kênh bán khác!\n-  Bạn cũng sẽ là một trong số những người sẽ sở hữu chiếc quần jean trắng nam mang phong cách hàn quốc này.\nBởi vì đây là một chiếc quần jean mà cực kỳ dễ phối đồ từ áo thun....\nQuần baggy nam jean  đen ống suông rộng dáng đứng chất jeans bò cao cấp rin trơn phom xuông unisex hàn quốc 20WE\n(FILE ẢNH GỐC TRÊN)\n#quanbaggynam #quannam #quanjeannam #quanbonam #quanongrongnam #baggynam #quanjeanbaggynam #quanbaggydennam #quanongrong #baggy #quanbeggynam #quan #quanjeandennam #20WE #quầnjeannamden #quầnjeansnam #quầnbònam #quanjeannamdep #quầnjeansnamden #quầnjeanốngrộngnam', 'https://down-vn.img.susercontent.com/file/7c8bb3f6a9e09ce459efcad6172f43a3_tn', 'Quần jean nam đen baggy ống suông rộng 20we chất vải bò cao cấp dày dặn, không xù top xu hướng TR01 hottrend 2022', 145, 4.8, 3, 2, 4),
(21, 'MÔ TẢ SẢN PHẨM\n+SHOP thời trang Nam SUMY FASHION chuyên cung cấp sỉ lẻ thời trang Nam,Nữ đa dạng mẫu mã.\n+Đổi trả hàng trong vòng 7 ngày từ khi nhận hàng\n+Uy Tín luôn đặt hàng đầu\n+Quần Jean Nam với 4 màu căn bản:Đen,Xám Chuột,Xanh Nhạt,Xanh Đậm.\n-Bảng size:28 tới 40 (từ 45kg đến 102kg).A e nào bụng bia INBOX Shop hỗ trợ nhé.\n* LƯU Ý: KHÁCH HÀNG NÊN NHẮN TIN VỚI SHOP ĐỂ SHOP TƯ VẤN SIZE CHUẨN CHO MÌNH NHÉ \n+Size 28:từ 45kg đến 49kg\n+Size 29:từ 50kg đến 54kg\nKHÁCH IU VUI LÒNG NHẮN TIN CHO SHOP ĐỂ SHOP TƯ VẤN SIZE CHUẨN CHO MÌNH NHEN NHEN>\n+Size 30:từ 55kg đến 58kg\n+Size 31:từ 59kg đến 63kg\n+Size 32:từ 64kg đến 67kg\n+Size 33:từ 68kg đến 71kg\n+Size 34: từ 72 kg đến 75kg\n+Size 35:từ 76 kg đến 79kg\n+Size 36: từ 80kg đến 84kg\n+Size 37:từ 85 tới 88 kg\n+ Size 38: 89 đến 92kg\n+ Size 39: 93 đến 96kgkg\n✅ Sản phẩm quần jean đen nam trơn được đặt may riêng theo mẫu thiết kế của  SuMy fashion \n✅ Quần jeans nam với thiết kế mới và mẫu mã mới hot trend hiện nay.\n✅ Quần may từ chất bò cao cấp nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.\n✅ Dáng quần jean nam ống côn trẻ trung ôm body tạo nên form cực chuẩn cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.\n✅ Màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.\n✅  hình ảnh sản phẩm được shop chụp thực tế kèm clip\n✅ Size: 36 đến 40\n#Quannam #quanjean #quanjeannam #quangchau #quanjeannamgiare #jeans #jeannam #jeansnam #quanjeannamrachgoi #quanbonam #quanjeandennam #quanborachgoi  #quanboden #jean #quanjeandennam #quanrachgoinam #quanjeangiare #quanjeansrachgoi #quanjeannamcaocap #fashion #sumyfashion ', 'https://down-vn.img.susercontent.com/file/a86cd5fbc3534276120cfd693493b6a0_tn', '( MUA DE NHAN QUA) Quần jeans nam đen trơn chất bò cao cấp co dãn 4 chiều cực đẹp KÈM NHIỀU MẪU MỚI (có bigsize)', 139, 4.7, 3, 2, 4),
(22, 'MÔ TẢ SẢN PHẨM\nQuần jogger được thiết kế từ ý tưởng những chiếc quần thể thao truyền thống và được cải tiến cho gọn gàng, hợp thời trang hơn. Đặc điểm của quần jogger nam là có phần cuối của ống quần có thun túm lại, tạo cảm giác gọn gàng, thoải mái, thuận tiện cho người mặc khi vận động.\n\n📍 THÔNG TIN SẢN PHẨM\n• Chất liệu: Thun poly cotton 4 chiều\n• Thành phần nguyên liệu: Polyester & Cotton\n• Độ dày: Thông thường\n• Màu sắc: Đen, Xanh đen.\n• Size: M, L, XL, XXL, XXXL (40-95kg)\n• Xuất xứ: Việt Nam\n\n📍 ĐẶC ĐIỂM NỔI BẬT\n• Chất liệu vải thun poly cotton mềm mịn, co giãn thoải mái, độ dày vừa phải, thấm hút mồ hôi tốt, thoáng mát.\n• Quần thể thao nam màu trơn, kiểu dáng đơn giản.\n• Quần jogger nam gọn gàng. Lưng thun co giãn thoải mái, có dây rút.\n• Đường may sắc sảo, tinh tế.\n• Quần thể dục dễ dàng phối đồ với các loại trang phục và phụ kiện khác.\n• Quần thun nam có thể mặc đi làm, đi chơi, đi học,... và nhiều sự kiện khác nữa.\n• Quan thể dục nam thiết kế đầy trẻ trung, năng động, tiện lợi, có thể mặc từ nhà ra phố với rất nhiều style khác nhau.\n• Phù hợp cho cả nam và nữ.\n\n📍 BẢNG SIZE\n- Size M: 40-53kg, dưới 1m65, chiều dài quần 92cm\n- Size L: 54-63kg, dưới 1m70, chiều dài quần 94cm\n- Size XL: 64-73kg, dưới 1m80, chiều dài quần 96cm\n- Size XXL: 74-83kg, dưới 1m85, chiều dài quần 98cm\n- Size XXXL (inbox): 84-95kg, dưới 1m85, chiều dài quần 98cm\n*Bảng size chỉ mang tính chất tham khảo. Inbox cho shop để được tư vấn cụ thể.\n\n❗ LƯU Ý\n👉 Do điều kiện ánh sáng và chế độ cài đặt màn hình khác nhau nên màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10% so với hình ảnh.\n👉 Vui lòng cho phép sai số 1-3cm do kích thước của sản phẩm được đo lường bằng phương pháp thủ công.\n\n✔ CHÍNH SÁCH ĐỔI TRẢ\n- Đổi trả trong 7 ngày với bất kỳ lý do gì.\n- Hoàn tiền nếu sản phẩm không giống mô tả.\n- Đổi trả miễn phí nếu hàng bị lỗi do sản xuất.\n- Dịch vụ đổi trả tận nơi.\n*Điều kiện áp dụng: sản phẩm còn nguyên tem mác và chưa qua sử dụng.\n*Vui lòng quay lại video quá trình mở gói hàng để được hỗ trợ giải quyết tốt nhất.\n\n📍 HƯỚNG DẪN BẢO QUẢN\n- Nên giặt sản phẩm trước khi sử dụng.\n- Không giặt máy trong 10 lần giặt đầu.\n- Khuyến khích giặt tay.\n- Khi giặt máy, nên chọn chế độ giặt nhẹ.\n- Không chà mạnh bằng bàn chải có sợi cứng. \n- Giặt ở nhiệt độ bình thường.\n- Đồ trắng và đồ màu không nên giặt chung.\n- Không sử dụng chất tẩy mạnh. Tránh ngâm với chất tẩy trong thời gian quá lâu.\n- Nên lộn trái sản phẩm khi giặt và phơi.\n- Phơi nơi thoáng mát, tránh ánh nắng gay gắt.\n- Ủi ở nhiệt độ trung bình.\n\n👉 Quần jogger nam hứa hẹn sẽ là sự lựa chọn hoàn hảo cho bạn, hãy nhanh tay đặt hàng để sở hữu cho mình chiếc quần thun cực chất này nhé!\n\n🎁 Nhấn “Theo dõi shop” để nhận Voucher khuyến mãi.\n\n#Khanhstore24 #quannam #quandai #quandainam #quanjogger #quanjoggernam #jogger #joggernam #quanthethao #quanthethaonam #quanthun #quanthunnam #quantheduc #quantheducnam #quantapgym #hiphop #streetwear #unisex', 'https://down-vn.img.susercontent.com/file/7a29ae8566301025958da09f5c5e14e7_tn', 'Quần Thể Thao Nam Nữ Dài Trơn Basic Ống Suông Thun Poly Phong Cách Thể Dục Unisex', 85, 4.8, 3, 2, 4),
(23, 'MÔ TẢ SẢN PHẨM\nTCE Shop chuyên cung cấp các mặt hàng thời trang nam: Quần Tây Nam, áo sơ mi, áo thun, quần short.. chất liệu cao cấp, giá thành hợp lý, sỉ lẻ giá tốt.  Là địa chỉ mua hàng đáng tin cậy của bạn !\n- Quần Tây Nam dáng công sở hot nhất hiện nay.\n- Màu: Ghi sáng, Đen, xanh đen.\n- Ống: ÔM.\n- Quần Tây Nam: Vải co dãn , mặc mát và chất liệu nhẹ hơn so với vải bình thường cũng như làm giảm hiện tượng nhăn vải , giảm xù bông vải.\n👖Xin quý khách lưu ý: \nSize sản phẩm quý khách tham khảo trong ảnh sản phẩm shop thường xuyên cập nhật ạ.\nHoặc quý khách có thể nhắn tin trực tiếp với shop để được tư vấn về size số nếu bảng size không phù hợp ạ.\n\n----------------------------------------\nSản phẩm và Chính sách bán hàng:\n👍 Cam kết hàng chất lượng tốt.\n👍 Nếu hàng có lỗi bạn vui lòng kiểm tra đơn hàng và nhắn tin với shop để được hỗ trợ tốt nhất trong mọi trường hợp.\n👍 Shop cam kết giải quyết mọi vấn đề và hỗ trợ khách hàng trong trường hợp sản phẩm bị lỗi (lỗi chỉ , may , vải ,..)\ntừ 1-2 ngày làm việc.\n----------------------------------------\nChính sách đổi trả hàng:\n👉 Quần Tây Nam mua rồi được đổi thoải mái khi phát hiện ra lỗi của shop ( lỗi sản phẩm hoặc sai màu)\n👉 Shop chỉ giải quyết khiếu nại cho bạn khi người mua vẫn giữ nguyên bao bì ở ngoài và quần. Bạn vui lòng chụp toàn bộ sản phẩm cũng như bao bì để shop xác nhận nhé.\n👉 Khi đổi trả hàng mà không phải lỗi của shop bạn phải trả toàn bộ phí vận chuyển gửi đi và gửi lại. \n----------------------------------------\nTất cả Quần Tây Nam của chúng tôi đều được chúng tôi tuyển chọn một cách kỹ lưỡng sao cho phù hợp với phong cách Châu Á và bắt nhịp cùng xu hướng trẻ.\nĐến với chúng tôi khách hàng có thể yên tâm mua hàng với nhiều mẫu mã được cập nhật thường xuyên và nhiều khuyến mại hấp dẫn.\nCam kết giá cả làm hài lòng quý khách.\n#quan, #quannam , #quanaunamcaocap, #quanaunam, #quanaunamhanquoc, #quantay , #quantaynam #quantaycongso #quantaynamcongso #quantaynamcaocap #quanaunamcaocap #quanaunamsoaica #quanaunamcogian #quanaunamdep #quanaudep #quandainam #quantaydai #quantaydep #quanaudai #quanaudep #quantayaunam #nam #quandai #hot #nhat \nQuần Tây Nam, đẹp, hot', 'https://down-vn.img.susercontent.com/file/a60d6c1307b588e57130fdc6a03eec75_tn', '[Mã FAX253A giảm 15k đơn 50k] Quần Tây Nam - Quần Âu Nam TCE dáng ôm công sở vải co giãn nhẹ chống nhăn chống xù', 65, 4.6, 3, 2, 4),
(24, 'MÔ TẢ SẢN PHẨM\nTrendyman xin phép giới thiệu đến các bạn mẫu sản phẩm mới: Quần Tây Nam - quần nam Trendyman Công Sở Đen Cá Tính Dáng Ôm Chuẩn Vải mỏng nhẹ Không Nhăn không xù\n------------------------------------------\n * THÔNG TIN SẢN PHẨM:\n- Sản Phẩm Quần Âu đen nam lần này của shop sẽ được lựa chọn vải Mỏng hơn để tạo cảm giác thoải mái khi mặc , khách hàng có yêu cầu vải dày thì cân nhắc trước khi đặt hàng nha ạ\n- Quần âu nam ống côn sẽ giúp các chàng trông chuẩn soái ca.\n- Trong tủ có e này thì cực dễ phối đồ: sơmi, thun, vest đều đẹp\n- Chất Liệu: Vải lụa co giãn nhẹ, mềm mịn , Mỏng nhẹ\n- Giá Thành Tiết kiệm chi phí cho mình , sản phẩm dùng để mặc hằng ngày đi làm đi học\nquần vãi nam ống côn đủ size từ 28 đến 35 cho khách từ 45-80 kg mặc vừa:\nSize 28 : Dưới 42-50kg, cao 1m60 - 1m65 / Chiều dài quần 94cm, vòng bụng 74cm, ống 16 cm\nSize 29 : Cân nặng 49 - 55kg, cao 1m62 - 1m72 / Chiều dài quần 95cm, vòng bụng 76cm, ống 16,5 cm\nSize 30 : Cân nặng 55 - 60kg, cao 1m63 - 1m73 / Chiều dài quần 96cm, vòng bụng 78cm, ống côn 17 cm\nSize 31 : Cân nặng 60 - 64kg, cao 1m65 - 1m74 / Chiều dài quần 97cm, vòng bụng 80cm, ống côn 17,5 cm\nSize 32 : Cân nặng 64 - 68kg, cao 1m68 - 1m75 / Chiều dài quần 98cm, vòng bụng 84cm, ống côn 18  cm\nSize 33 : Cân nặng 68 - 71kg, cao 1m72 - 1m77 / Chiều dài quần 99cm, vòng bụng 88cm, ống côn 18,5 cn\nSize 34 : Cân nặng 71 - 74kg, cao 1m72 - 1m80 / Chiều dài quần 100cm, vòng bụng 90cm, ống côn 18,5 cm\nSize 35 : Cân nặng 74 - 78kg, cao 1m75 - 1m85 / Chiều dài quần 102 cm, vòng bụng 92cm, ống côn 19,5 cm\nSize 36 : Cân nặng 78 - 82kg, cao 1m75 - 1m85 / Chiều dài quần 104 cm, vòng bụng 94cm, ống côn 21,5 cm\n- Có 3 màu cơ bản: Đen, Xanh than và Ghi sáng\n* Bảng size chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể và chất liệu vải khác nhau sẽ có sự chênh lệch nhất định. \n===============\n* Quần tây đen nam Trendyman CAM KẾT: \n- SHOP không bán hàng giả, hàng nhái, chất lượng luôn là hàng đầu để shop có thể phát triển thương hiệu và vươn xa. \n- Quần vải đi học đen ống côn 100% giống mô tả\n- Tư vấn nhiệt tình, chu đáo luôn lắng nghe khách hàng để phục vụ tốt. \n- Giao hàng nhanh đúng tiến độ không phải để quý khách chờ đợi lâu để nhận hàng. \n==============\n* Đổi trả theo đúng quy định của Shopee \n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm): \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất. \n2. Trường hợp được chấp nhận: \n- Không đủ số lượng, không đủ bộ như trong đơn hàng\n3. Trường hợp không đủ điều kiện áp dụng chính sách:\n - Quá 07 ngày kể từ khi Quý khách nhận hàng \n - Gửi lại hàng không đúng mẫu mã, không phải hàng của shop.\n - Đặt nhầm sản phẩm, chủng loại, không thích, không hợp,...\nẤn theo dõi để ủng hộ Trendyman và tham khảo các sản phẩm mới của shop, “ Quần âu áo sơ mi Trendyman” rất hân hạnh được phục vụ quý khách.\n#quan #trendyman #au #nam #tay #den #quanaunam #quantaynam #quanaucapcao #quanvainam #quanaudennam #quannam', 'https://down-vn.img.susercontent.com/file/1f4c06c0338ab7911dda0acedd940bd0_tn', 'Quần Tây Nam - Quần Âu Nam Trendyman Công Sở Dáng Ôm Chuẩn Vải lụa Không Nhăn Không Xù cao cấp', 82, 4.7, 3, 2, 4),
(25, 'MÔ TẢ SẢN PHẨM\n[Mẫu Mới] Quần Nam Kaki Basic Dáng Baggy Trơn Màu Phong Cách Trẻ Trung Thời Trang Zenkonu QUAN NAM 1000060V1\n* THÔNG TIN SẢN PHẨM:\n🔸Chât liệu: vải kaki mềm mại, thấm hút mồ hôi.\n🔸 Kích thước: XS   S   M   L    XL\n🔸 Xuất xứ: Việt Nam\nVới thiết kế trẻ trung năng động, phù hợp nhiều hoàn cảnh, phong cách Ulzzang cập nhập xu hướng mới nhất.\n* Chi tiết Size:\nSize XS: cho bạn có cân nặng từ 40 - 45kg tùy chiều cao \nSize S: cho bạn có cân nặng từ 45 - 50kg tùy chiều cao \nSize M: cho bạn có cân nặng từ 50 - 55kg tùy chiều cao \nSize L: cho bạn có cân nặng từ 55 - 60kg tùy chiều cao \nSize XL: cho bạn có cân nặng từ 60 - 65kg tùy chiều cao \n🔰 Thông tin thêm:\n- Để bảo quản áo cũng như chất liệu hình in, shop khuyên bạn lộn mặt trái khi giặt và ủi nha\n- Bảng size chỉ mang tính chất tham khảo, tùy thuộc hình thể mỗi người và chất liệu nên có chênh lệch. Hãy ibox cho shop khi cần tư vấn cụ thể nha ^^\n Hãy theo dõi để ủng hộ shop và cập nhập các chương trình khuyến mãi cũng như các mẫu sản phẩm mới nhất của shop nhé!\n🔸 Lưu ý: Shop chỉ hỗ trợ xử lý đơn hàng đổi trả trong vòng 15 ngày kể từ khi giao hàng thành công!', 'https://down-vn.img.susercontent.com/file/66d0e218804f53e87b4170955dc72bb9_tn', '[Mẫu Mới] Quần Nam Kaki Basic Dáng Baggy Trơn Màu Phong Cách Trẻ Trung Thời Trang Zenkonu QUAN NAM 1000060V1', 65, 4.5, 3, 2, 4),
(26, 'MÔ TẢ SẢN PHẨM\nTHÔNG TIN SẢN PHẨM:\n\n✔️ Tên sản phẩm: Quần Bò Jean nam supper ống côn sang xịn mịn\n✔️ Xuất xứ: Việt Nam\n✔️ Chất liệu: Vải Jean Denim 100% siêu dày dặn, không nhăn không phai màu, độ bền cao , co giãn nhẹ và thấm hút mồ hôi tốt\n✔️ Kích cỡ: 28/29/30/31/32/34 (40-73kg)\n✔️ Phối đồ: Quần jean đã trở thành một món đồ khum thể thiếu of mỗi người bởi nó cực dễ phối với mọi loại giày, áo và tạo lên những outfit năng động, phá cách, thanh lịch, sang chảnh,…\n\nHƯỚNG DẪN CHỌN SIZE QUẦN JEANS:\n\n✔️ Size 28: Nặng 40-50kg ~ Cao 1m55-1m65\n✔️ Size 29: Nặng 50-54kg ~ Cao 1m60-1m70\n✔️ Size 30: Nặng 54-59kg ~ Cao 1m63-1m72\n✔️ Size 31: Nặng 59-62kg ~ Cao 1m65-1m74\n✔️ Size 32: Nặng 62-70kg ~ Cao 1m68-1m78\n✔️ Size 34: Nặng 70-73kg ~ Cao 1m70-1m80\n  ( LƯU Ý MNG MUỐN MẶC THOẢI MÁI THÌ LẤY LÊN 1 SIZE NHA)\n📌 Thông số trên chỉ trang tính chất tham khảo. B muốn mặc form vừa vặn, thoải mái hay ôm sát, hãy lên xuống size tuỳ theo sở thích ăn mặc của bạn\n\nNGỎ Ý: Bạn đang “bất lực” trong công cuộc tìm rước những món hàng xịn xò về tủ đồ vì Shopee tràn lan quá nhiều sp giá rẻ thiết kế tương tự nhưng chất lượng thì … thêm ba chấm:)) Vậy thì ngay tại đây, hãy để shop được phép lấy đi sự “ bất lực” đó và trả lại cho b một chiếc “Wow” cùng nụ cười toả nắng trên môi với trải nghiệm một chiếc quần jean theo đúng nghĩa của tiêu chí NGON- BỔ- RẺ\n\nCHÍNH SÁCH BÁN HÀNG:\n\n✔️ SHOP cam kết sản phẩm giống mô tả 100%. Hình ảnh/video sản phẩm được Shop chụp bằng cam thường chân thật nhất\n✔️ Sản phẩm được kiểm tra kĩ lưỡng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho quý khách\n✔️ Hàng luôn sẵn, giao hàng ngay khi nhận được đơn\n✔️ Hoàn tiền 100% nếu sản phẩm khác hình, mô tả\n✔️ Hỗ trợ nhận đổi size nếu khách không vừa\n✔️ Giao hàng toàn quốc, nhận hàng thanh toán tại nhà\n✔️ Đổi trả miễn phí nếu shop gửi sai hàng hoặc hàng lỗi do nhà sản xuất\n- - - - - - - - - - \n\n #jean #bo #quan #xanh #den #khoa #amiri #dsq #jeans #denim #skinny #slimfit #jeannam #quanjean #quanbo #quannam #biker #quanbiker #quancon #quanongbo #quanjeandep #quanbonam #jeangiare #con #suong\n- - - - - - - - - -\n\n✅Rất hân hạnh được phục vụ quý khách!!!', 'https://down-vn.img.susercontent.com/file/vn-11134201-23020-46b1asx9hsnvdf_tn', '[Mã FAX243B giảm 25k đơn 150k] Quần jean vá da,Quần bò vá da AIMIRI khâu viền 🔥 Cao cấp SIÊU HOT', 219, 4.9, 3, 2, 4),
(27, 'MÔ TẢ SẢN PHẨM\n Chi tiết Quần Jean Roway\n- Chất liệu: Denim 100% cotton co giãn nhẹ \n- Phom dáng: slim mặc thoải mái\n - Hoàn thiện: tỉ mỉ cao\n  Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\n  Bảng size mẫu Roway\n  𝐒𝐚̉𝐧 𝐩𝐡𝐚̂̉𝐦 đ𝐮̛𝐨̛̣𝐜 đ𝐨́𝐧𝐠 𝟐 𝐥𝐨̛́𝐩 𝐡𝐨̣̂𝐩 𝐜𝐡𝐨̂́𝐧𝐠 𝐦𝐨́𝐩 𝐦𝐞́𝐨 𝐤𝐡𝐢 𝐯𝐚̣̂𝐧 𝐜𝐡𝐮𝐲𝐞̂̉𝐧\n 𝐋𝐚̀ 𝐤𝐡𝐚́𝐜𝐡 𝐡𝐚̀𝐧𝐠 𝐜𝐮̉𝐚 𝐑𝐨𝐰𝐚𝐲, 𝐜𝐡𝐮́𝐧𝐠 𝐭𝐨̂𝐢 𝐜𝐚𝐦 𝐤𝐞̂́𝐭 𝐛𝐚̣𝐧 𝐬𝐞̃ đ𝐮̛𝐨̛̣𝐜:\n1. Sản phẩm giống mô tả và hình ảnh thật 100% của Shop giữ bản quyền hình ảnh.\n2. Đảm bảo vải chất lượng sản phẩm 100%\n3. Cam kết được đổi trả hàng trong vòng 30 ngày.\n4. Hoàn tiền nếu sản phẩm không giống với mô tả\n+ Hàng phải còn mới đầy đủ tem mác và chưa qua sử dụng\n+ Sản phẩm bị lỗi do vận chuyển và do nhà sản xuất\n 𝑯𝒖̛𝒐̛́𝒏𝒈 𝒅𝒂̂̃𝒏 𝒔𝒖̛̉ 𝒅𝒖̣𝒏𝒈 𝒔𝒂̉𝒏 𝒑𝒉𝒂̂̉𝒎 𝑹𝒐𝒘𝒂𝒚\n+ Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n+ Không được dùng hóa chất tẩy.\n+ Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp.\n+ Lộn mặt trái khi phơi tránh bị nhanh phai màu\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n📌 LƯU Ý: Khi quý khách có gặp bất kì vấn đề gì về sản phẩm và vận chuyển đừng vội đánh giá mà hãy liên hệ Shop để đc hỗ trợ 1 cách tốt nhất nhé.mi  #jeannam #quanjeannam', 'https://down-vn.img.susercontent.com/file/vn-11134201-23030-20eu5y26baov6b_tn', 'Quần jean nam ROWAY vải denim co giãn nhẹ, form slim , Jean đen rách gối', 299, 4.9, 3, 2, 8),
(28, 'MÔ TẢ SẢN PHẨM\nChào mừng bạn đến với không gian thời trang\nNhớ Thích + Theo dõi Để Nhận Phiếu giảm giá!\nHướng dẫn bán hàng trước chất lượng cao, dịch vụ sau bán hàng hoàn hảo!\nTrang phục Hợp thời trang Phải Bắt đầu!Nho rất tốt, cắt ba kích thước, hiệu ứng thân trên được nâng cao rất nhiều, bình thường và phù hợp với trang trọng.\nNếu Bạn Thích Quần Áo Lỏng Thông Thường, Bạn Cũng Có Thể Mua Một Cỡ Lớn Hơn\nTất cả các mặt hàng trong cửa hàng của chúng tôi đều hiện tại và mới\nCác đơn hàng được đặt trước 12:00 chiều mỗi ngày sẽ được xử lý và vận chuyển ngay trong ngày.\nMô hình nhà máy Warehouse\nChào mừng đến với Bán lại!\nLoại sản phẩm: Quần thường\nKích thước: S-3XL\nVải: Sợi Polyester\nLoại eo: Eo giữa\nĐộ đàn hồi: Độ đàn hồi vi mô\nPhong cách cơ bản: Thời trang trẻ\nMùa áp dụng: Bốn mùa\nĐộ dày: Chung\nPhù hợp đeo hàng ngày\nPhong cách quần áo: Loose\nThích hợp cho: Tất cả\nGhi chú:\n1.Do Hiển Thị Vải, Cài đặt Màn Hình Và Các Yếu tố khác, Màu Sự Thực Tế của Sản Phẩm Có Thể Khác Một chút so với Màu Của Hình Ảnh.\n2. Kích thước chỉ mang tính chất tham khảo.\n3. Do Lô cắt và sản xuất khác nhau, bản in có thể có sự khác biệt. Vui lòng đọc kỹ trước khi mua.\n4.Do Lý do Vận chuyển, Nếu Sản Phẩm Nhận Được Xếp Hạng, Đừng Lo lắng, Sẽ Biến Mất Sau Khi Giặt, Nếu Còn, Nên Ủi Sắt.\nNhãn sản phẩm:#Hip Hop #Quần #Quần âu #Quần nam #Quần áo nam #Xu hướng phong cách Hàn Quốc #Quần thời trang #Quần đen #Ins quần #Quần kiểu đại học #Quần âu #Quần thẳng #Quần Jogger #Phong cách Hồng Kông #Cổ điển #Bf Wind #Thanh niên văn học #Giao ngay #Xu hướng #Chụp đường phố #Quà tặng ngày lễ #Công nhân văn phòng ', 'https://down-vn.img.susercontent.com/file/c1d1018f4a4111a8306dbdb93caee537_tn', 'Quần Dài Ống Rộng Phong Cách Hip Hop Thời Trang Đường Phố Cá Tính', 149, 4.5, 3, 2, 7),
(29, 'MÔ TẢ SẢN PHẨM\nQuần thun đen ống rộng nam PHong cách hàn quốc - vải co giãn tốt\n💪  CÁCH CHỌN SIZE\n👖 Size S  (Từ 40 - 47kg Cao Dưới 1m65)\n👖 Size M  (Từ 48 - 55kg Cao Dưới 1m65)\n👖 Size L  (Từ 55 - 65kg Cao Dưới 1m70) \n👖 Size XL  ( Từ 65- 70kg Cao Dưới 1m79) \n👖 Size XXL  (Từ 70 - 89kg Cao Dưới 1m80)  \n\nLƯU Ý: Hãy nhắn tin cho shop để được tư vấn size chuẩn nhất với bạn\n------------------------------------\n👄  VỀ SẢN PHẨM:\n✅ Sản phẩm được đặt may riêng theo mẫu thiết kế. \n✅ Quần jean nam nữ với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh\n✅ Quần may bằng vải thun nên rất mềm và thoải mái khi mặc, đảm bảo sẽ không hề cảm thấy gò bó ngay cả khi di chuyển nhiều.\n✅ Dáng quần vải thun ống rộng trẻ trung ôm body tạo nên form cực chuẩn cho người mặc túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.\n✅ Màu sắc chuẩn được nhuộm kỹ đến hai lần giúp hạn chế tối đa việc phai màu khi sử dụng.\n✅ Vài ảnh chụp cận cảnh để làm rõ thêm sự sắc nét của từng đường may, sớ vải.\n✅ Size: S đến XXL\n✅ Xuất xứ: được thiết kế và gia công bởi KM tại Việt Nam.\n------------------------------------\n✔️ Loại  : Quần thun ống rộng\n✔️ Kiểu dáng  : Hàn Quốc,  Đi Chơi,  Công Sở, Đời Thường\n✔️Chất liệu  : Vải  thun\n✔️Thích hợp  : 4 mùa\n------------------------------------', 'https://down-vn.img.susercontent.com/file/0a3670fa471ad258884508395866ad8b_tn', '[Mã FAX253A giảm 15k đơn 50k] Quần thun đen ống rộng nam - quần nam ống suông PHong cách hàn quốc - vải co giãn tốt', 99, 4.7, 3, 2, 4),
(30, 'MÔ TẢ SẢN PHẨM\nThông Tin Sản Phẩm:\n-Shop Brand: W WIND\n-Suất Xứ : Việt Nam\n-Chất Liệu: Thun Da Cá dày dặn, siêu thấm hút mồ hôi (chất liệu chủ yếu vải thun da cá là 100% sợi bông Cotton) \n-Đường may chuẩn chỉnh, tỉ mỉ, chắc chắc\n-Màu sắc : 2 màu (Đen, Xám)\n-Size quần jogger ống rộng: Gồm 4 size M - L-XL – 2XL (35kg-80kg)\n-Size M: dưới 50kg, cao dưới 1m5\n-Size L: dưới 55kg, cao dưới 1m6 \n-Size XL: dưới 70kg, cao dưới 1m72\n-Size 2XL: dưới 80kg, cao dưới 1m8\nCùng Shop Tìm Hiểu Về quần jogger nhé!\nQuần jogger nam có lẽ không còn xa lạ gì đối với các bạn trẻ đặc biệt những bạn yêu thích phong cách street style. Với xu hướng bùng nổ thời trang thể thao và thời trang đường phố hiện nay thì với jogger nam - đại diện cho phong cách street style cũng phất lên như diều gặp gió.\nQuần jogger nam ống rộngnày đang được nhiều bạn trẻ lựa chọn để tập thể dục thể thao hoặc đồ mặc ở nhà bởi sự thoáng mát và tính co giãn nó mang lại. Tuy nó thường được sử dụng để mặc đi tập gym, workout nhưng bạn mặc ra ngoài dạo phố thì hoàn toàn được nhé! Bởi dù là chất liệu nào thì chiếc quần jogger nữ vẫn luôn giữ cho mình phong cách thể thao vốn có. Vì thế hãy thử một lần mặc chúng trong những cuộc đi chơi, hay hẹn hò của bạn nhé\nƯu điểm của quần jogger nữ:\nDù thời tiết lạnh giá hay nóng queo thì nam giới cũng cần một chiếc áo khoác nam làm phụ kiện kết hợp với set đồ của mình. Quần jogger ống suông với đặc trưng quần bo thun ở gấu quần tạo điểm nhấn cho set đồ. Để set đồ phá cách hơn nữa bạn đừng quên kết hợp với các phụ kiện nhỏ lẻ khác nhé như mắt kính, balo ..-Hack tuổi, đem đến sự trẻ trung, năng nổ\nCách phối đồ với quần jogger ống rộng nên bỏ túi ngay hôm nay\n1.Phối áo from rộng nam với quần jogger nam\nMặc quần jogger nữ với áo thun trơn phù hợp cho cô nàng thích đơn giản nhưng vẫn đủ để tạo cá tính. Bản thân quần đã có một chút cách điệu ở phần ống, nên bạn chỉ cần tập trung vào việc phối màu sao cho phù hợp. Black and white là một ý tưởng không tồi để tạo điểm nhấn hoàn hảo.\n2. Phối với Áo hoodie sành điệu\nVì cùng là dáng thể thao nên việc kết hợp Jogger nữ và áo thể thao giúp các cô nàng trông sành điệu và một chút đáng yêu. Cách phối đồ với quần jogger nữ cực kỳ đa dạng, bạn có thể phối với quần jogger kaki và áo hoodie để tạo nét thanh lịch cho trang phục.\n3. Áo khoác thể thao năng động\nPhong cách thời trang luôn thay đổi và phát triển, chính vì thế mà các mẫu quần jogger cũng trở nên đa dạng để phục vụ người dùng. Bên cạnh quần jogger nữ thun phổ biến, item này còn được sản xuất với các chất liệu khác nhau để phục vụ cho nhiều nhu cầu khác như là:\n•Quần jogger kaki nữ giúp tôn lên vẻ lịch lãm và sang trọng. Phối đồ với áo sơ mi hay vest trông vẫn ổn để đi chơi hay đi làm.\n•Quần jogger nỉ nữ giúp giữ form dáng tốt và có khả năng giữ nhiệt nên phù hợp với những ngày thời tiết mát mẻ hoặc se lạnh.\n•Quần jogger jean, denim cho nữ là sản phẩm khá mới lạ, điểm mạnh của item này là vừa tạo sự thoải mái khi mặc, lại phù hợp để phối với nhiều kiểu giày khác như như quần jean cơ bản.\nWIND luôn không ngừng cập nhật những xu hướng mới nhất, những phong cách độc đáo được mọi người hướng đến, những kiểu cách trang phục, outfit đón đầu xu hướng.\n WIND CAM KẾT:\n-Chất Lượng sản phẩm như mô tả, cả về chất liệu và hình ảnh\n-Freeship cho đơn hàng từ 50k\n-Áo được kiểm tra kỹ, cẩn thận và tư vấn nhiệt tình \n-Hàng có sẵn, giao hàng ngay khi nhận được đơn \n-Hoàn tiền nếu sản phẩm không giống với mô tả \n-Chấp nhận đổi hàng khi size không vừa \n-Giao hàng trên toàn quốc, nhận hàng trả tiền\nMẹo bảo quản quần jogger nữ luôn ngon hơn người yêu cũ\n- Lần đầu đem về bạn chỉ cần xả nước lạnh rồi phơi khô \n- Sau 3 ngày nhận áo thì hẵng đem em nó đi giặt nè. \n- Mỗi khi giặt nhớ lộn trái áo và không giặt ngâm. \n- Không sử dụng thuốc tẩy. \n- Khi phơi nhớ lộn phải và không phơi trực tiếp dưới ánh nắng mặt trời.\nQUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp được chấp nhận: \n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \n- Không đủ số lượng, không đủ bộ như trong đơn hàng \n3. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng \n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của WIND.\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,...\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n#quan #jogger #ong #rong #nam #nu #thoitrang #wind #unisex #oversize #ulzzang #bo #chun #day #rut', 'https://down-vn.img.susercontent.com/file/90bd0a3f781e52b2e793aac75a5739a5_tn', 'Quần jogger ống rộng WIND unisex dây rút bo chun Basic overszie nam nữ ulzzang', 109, 4.8, 3, 2, 4);
INSERT INTO `product` (`id`, `detail`, `img_src`, `name`, `price`, `rate`, `bra_id`, `cat_id`, `col_id`) VALUES
(31, 'MÔ TẢ SẢN PHẨM\nTHÔNG TIN SẢN PHẨM:\n\n✔️ Tên sản phẩm: Quần jean bò nam ống côn phối gối hở nổi chữ\n✔️ Xuất xứ: Việt Nam\n✔️ Chất liệu: Jean denim bò dày dặn, co dãn đàn hồi tốt, thấm hút mồ hôi tốt, mặc cực kì ôm chân lên dáng mà lại dễ chịu, thoải mái cho mọi hoạt động\n✔️ Kích cỡ: 28/29/30/31/32 (Khách cần tư vấn size chính xác thì ib cho shop chiều cao+ cân nặng ạ)\n✔️ Màu sắc: Đen\n✔️ Kiểu thiết kế: Quần phối trơn gối hở nổi chữ và tag mác với độ sắc nét rõ ràng, thời trang\n✔️ Phối đồ: Quần jean không hề xa lạ với chúng ta bởi nó cực dễ phối với mọi loại giày, áo và tạo được điểm nhấn nổi bật, cá tính hơn hẳn mà không hề bị “rườm rà” hay “làm quá”\n\nBẠN CẦN BIẾT: Hiện nay trên thị trường đang tràn lan rất nhiều các sản phẩm thiết kế tương tự nhưng chất lượng cực kì “tệ”. Vậy nên, hãy là người mua hàng thông thái, kẻo để cái giá làm mờ mắt rồi nhận phải trái đắng nhá khách iu!!! \n\nCHÍNH SÁCH BÁN HÀNG:\n\n✔️ PB cam kết sản phẩm giống hình, giống mô tả 100%\n✔️ Sản phẩm được kiểm tra kĩ lưỡng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho quý khách\n✔️ Hàng luôn sẵn, giao hàng ngay khi nhận được đơn\n✔️ Hoàn tiền 100% nếu sản phẩm khác hình, mô tả\n✔️ Chỉ nhận đổi hàng khi size không vừa\n✔️ Giao hàng toàn quốc, nhận hàng thanh toán tại nhà\n✔️ Đổi trả miễn phí nếu hàng lỗi do nhà sản xuất\n- - - - - - - - - - \n\n✅Slogan shop: Sự hài lòng tuyệt đối từ bạn là mục tiêu duy nhất của tôi !!!\n- - - - - - - - - - \n#jean #bò #quần #denim #quanjean #quanbo #quannam #biker #quanbiker #quancon #quanongbo #quanjeandep #quanbonam #quan #quandsq\n- - - - - - - - - -\n\n🏠Địa chỉ: Hoàng Nha- Minh Hải- Văn Lâm- Hưng Yên\n📲Facebook: Lê Hồng Phi( Thời trang nam)\n☎️Call & Zalo: 0389143111\n✅Rất hân hạnh được phục vụ quý khách', 'https://down-vn.img.susercontent.com/file/eb5a03f8c0821d6e3766d572bfce7728_tn', 'Quần Bò Đen Nam Pha Gối Hở Nổi Chữ Trắng Đơn Giản Đẹp QJ11P', 249, 4.8, 3, 2, 4),
(32, 'MÔ TẢ SẢN PHẨM\nQuần Baggy Kaki unisex N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang:\n- Vải Kaki 13% cotton, 87% PE. Sẽ bị xù sau một thời gian sử dụng, vui lòng cân nhắc trước khi mua.\n- Hàng có sẵn, giao hàng ngay khi nhận được đơn đặt hàng .\n- Hoàn tiền 100% nếu sản phẩm lỗi, nhầm hoặc không giống với mô tả.\n- Chấp nhận đổi hàng khi size không vừa (vui lòng nhắn tin riêng cho shop).\nThông tin sản phẩm Quần Baggy Kaki unisex N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang\n- Hàng chuẩn N7 sản xuất, tem mác chuẩn chính hãng.\n- Chất liệu: Kaki 13% cotton, 87% PE.\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại trang phục.\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ\n- Thông số chọn size:\nSize M: 1m55-1m65 (50-60kg) \nSize L: 1m60-1m70 (55-65kg) \nSize XL: 1m65- 1m75 (60-70kg) \nSize 2XL: 1m70- 1m80 (65-75kg)\n(Bảng trên chỉ mang tính chất tham khảo, chọn mặc fom vừa vặn thoải mái, lên xuống size tuỳ theo sở thích ăn mặc của bạn)\nHướng dẫn sử dụng sản phẩm Quần Baggy Kaki unisex N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang\n- Nên giặt ngâm qua với nước trước lần đầu cho bay hết bụi vải.\n- Không giặt máy trong 2 lần giặt đầu.\n- Không giặt chung với quần áo trắng sáng màu.\n- Không sử dụng thuốc tẩy\n1. Điều kiện áp dụng đổi sản phẩm (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới nguyên tem mác, chưa qua sử dụng.\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng từ shopee.\n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của N7.\n- Không thích, không hợp, đặt nhầm mã, nhầm màu, yêu cầu kiểm tra hàng trước khi thanh toán.\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%\nChúng tôi không chịu trách nhiệm trong trường hợp quý khách chọn nhầm màu sắc, hoa văn, kích thước; bên cạnh đó các vấn đề khiếm khuyết nhỏ không đáng kể hay độ lệch màu ít giữa sản phẩm thực tế và hình ảnh minh họa sẽ không gây ảnh hưởng đến vấn đề chất lượng…\nTrong trường hợp nhận được các sản phẩm có vấn đề không đáng kể ví dụ như bề mặt hơi bẩn có thể hết sau khi giặt, có chỉ thừa.... chúng tôi hy vọng bạn có thể tự mình giải quyết các vấn đề đó. Nếu bạn là người cầu toàn và sẽ bận tâm về các vấn đề đó, mong bạn cân nhắc cẩn thận trước khi đặt sản phẩm.\nNẾU CÂN NẶNG CỦA BẠN QUÁ CỠ - XIN ĐỪNG CHỌN MUA SẢN PHẨM NÀY - CHỌN KÍCH CỠ SAI SẼ KHIẾN BẠN CẢM THẤY KHÔNG HÀI LÒNG VÀ ĐƯA RA PHẢN HỒI TIÊU CỰC.\n#quan #quankakiongrong#quanbaggy #quanbaggykaki #baggy #baggykaki #ongrong #rong #n7 #ongsuong #quanongrong #quanongsuong #oversize #quankakiongrong #quakaki #quanunisex #quankakinam #quankakinu #quanbaggynu #quanbaggynam #quannam # quannu', 'https://down-vn.img.susercontent.com/file/20d43d6bac58200cda209d085ab8d089_tn', 'Quần Baggy Kaki unisex N7 Basic nam nữ cạp chun ống rộng phong cách Hàn Quốc ulzzang', 139, 4.9, 3, 2, 4),
(33, 'MÔ TẢ SẢN PHẨM\nquần jogger thể thao vải nỉ ngoại thoáng mát co giãn cam kết chuẩn hình\nSỈ SỐ LƯỢNG LỚN INBOX\n---------------------------------\nTHÔNG SỐ SẢN PHẨM:\n- Size M : 43-52kg, cao dưới 1m6  ,quần dài 91cm\n- Size L 50-62kg, cao dưới 1m69  ,quần dài 94cm\n- Size  XL 63-70kg,  cao dưới 1m74, quần dài 95cm\n- Size XXL: 70-78kg, cao dưới 1m80, quần dài 98cm\nLưu ý: thông số các số đo có thể bị chênh lệch 1-2cm\n\n------------------------------------ \n🔰 THÔNG TIN CHI TIẾT\n🎗 Chất liệu: Poly 2 Da 4 Chiều ngoại nhập chính phẩm .\n🎗Màu sắc: Đen Sọc Trắng - Đen Sọc Đen\n🎗 Xuất xứ: Việt Nam \n------------------------------------\n\n 🥝 🍓 Ngập tràn mẫu mới 🍓 🥝\n 👉 Quần Baggy, Quần sọc, Quần dài\n✈ Form rộng Unisex cho cả nam và nữ \n🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc \n🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh\n🌸 Vải đẹp , không xù , không co rút , mềm mịn dày dặn , hút mồ hôi cực nhanh, mặc siêu mát . \n\n#quầnthểthaonam #quanthethaonam #quanthethao #quandainam #quandai #quầnthểthao3sọc\n#quanthethao3soc #quandainam #jogger #quanthethao #quannam #quandaithethao #quan3soc #adidas #quanjogger', 'https://down-vn.img.susercontent.com/file/414d844019c0c3e0b0e6df99a36558f7_tn', 'Quần Thể Thao Nam 3 Sọc Quần Nam Thu Đông Co Giãn Ống Suông ,Ống Côn', 56.88, 4.9, 3, 2, 6),
(34, 'MÔ TẢ SẢN PHẨM\nQuần Jean Nam Đen Trơn Skinny & Slim Ống Côn Co Dãn Tôn Dáng\nCách chọn size Quần jean em có để bảng tham khảm ở dưới mọi người vào xem nhé cảm ơn ạ \n* BẢNG SIZE Quần Jean Nam Đen :\nCách chọn size Quần jean \nSize 27 dưới 45kg\n+ Size 28 : Chiều cao: 1m50-1m65, Cân nặng: dưới 53kg.\n+ Size 29 : Chiều cao: 1m50-1m68, Cân nặng: dưới 56kg.\n+ Size 30 : Chiều cao: 1m60-1m75, Cân nặng: 60kg.\n+ Size 31 : Chiều cao: 1m65-1m75, Cân nặng: 65kg.\n+ Size 32 : Chiều cao: 1m70-1m80, Cân nặng: 70kg.\n+ Size 33: Chiều cao: 1m70-1m80, Cân nặng: 73kg\n+ Size 34 : Chiều cao: 1m70-1m85, Cân nặng: 76kg\n+ Size 35  Chiều cao: 1m70-1m80, Cân nặng: 79kg\n+ Size 36 : Chiều cao: 1m75-1m85, Cân nặng: 89\nBéo Bụng mình lên 1 size nhé\n\n\n* THÔNG TIN SẢN PHẨM:\n- Full tem tag\n- Màu sắc: đen\n- Form: Skinny & Slim fit\n- Quần Jean Nam Đen Trơnđược làm từ chất jean cao cấp, dày dặn, co dãn tốt\n- Hàng VNXK chất jean cao cấp không thô ráp, không xù lông, nút quần được khắc khóa sắc nét\n- Quần jean hay còn được gọi là quần bò cực kỳ dễ phối đồ, nhất là quần jean màu đen trơn dễ phối đồ với áo thun, somi, polo đều đẹp.\nQUẦN JEANS NAM ĐEN TRƠN SKINNY CAO CẤP\nFULL TEM TAG \n***LƯU Ý: \n1) TRÊN QUẦN GẮN TAG \"SLIM FIT\" NHƯNG QUẦN NÀY FORM ÔM BÓ, ỐNG 15CM NHƯ FORM SKINNY Ạ\n2) ĐỢT QUẦN MỚI CÓ THAY ĐỔI 1 CHÚT VỀ TAG TEM NHƯNG KHÔNG THAY ĐỔI CHẤT VẢI HAY FORM. CAM KẾT LÀ KHÔNG ẢNH HƯỞNG GÌ TỚI CHẤT LƯỢNG NÊN KHÔNG NHẬN ĐỔI TRẢ VÌ LÝ DO KHÁC TEM TAG NÊN KHÁCH LƯU Ý TRƯỚC KHI ĐẶT DÙM SHOP. \n3) SHOP CÓ CHỤP VÀ QUAY CLIP 3 TAG TEM ĐỂ KHÁCH XEM. SHOP SẼ BÁN CẢ 3 TAG TEM LUÔN Ạ, TÙY THEO ĐỢT NHẬP CÓ TEM NÀO LẤY TEM ĐÓ VÌ CHẤT QUẦN NÓ CHẲNG KHÁC GÌ NHAU. HÀNG TỐT, ĐẸP, GIÁ TỐT THÌ CÓ HÀNG LÀ EM PHẢI LẤY LIỀN KHÔNG KÉN CHỌN ĐƯỢC Ạ', 'https://down-vn.img.susercontent.com/file/2fb9b12f1b094c5d3d94f2f2a5b3a150_tn', 'Quần jean nam trơn hàn quốc - jean dày co giãn tốt', 159, 4.3, 3, 2, 4),
(36, 'MÔ TẢ SẢN PHẨM\nÁo Thun Tay Lỡ Nam Nữ Crew Love Unisex Áo Phông Form Rộng Màu Xanh Cổ Vịt Xanh Lá Vải Cotton Mềm Mịn Thoáng Mát\nÁo Thun Nam Áo Thun Nữ\n\nÁo thun forom rộng , áo phông Unisex ao thun \nCó ảnh thật, đảm bảo mặc đúng Size lên form đẹp như ảnh\nVải đẹp, không co rút , mềm mịn, Hình in lụa bên trong vải không gây khó chịu như những hình in bình thường.\nVải thấm hút mồ hôi\n\nXưởng chuyên sản xuất áo thun áo phông streetwear ( ao thun ao phong )\n\nBảng size mang tính chất tham khảo và phù hợp 80-90% sở thích các cậu ạ. Các bạn chọn size phù hợp rồi đặt hàng ủng hộ shop nha !)\n\n-Size M: dưới 60kg, Cao dưới 1m65\n-Size L: dưới 70kg, Cao dưới 1m75\n-Size xL: dưới 80kg , Cao dưới 1m80\n\nÁo thun, áo phông unisex siêu rẻ.\n 🛩🛩nhận oder và ship hàng toàn quốc\nDòng thời trang UNISEX\n🤟🏽🤟🏽Chuyên sỉ và lẻ về lĩnh vực thời trang quần áo HOT nhất Hiện Nay.\nGIá Lẻ Vô Cùng Hạt Dẻ Phù Hợp Với Các Bạn Học SInh Sinh Viên.\nGIá Rẻ Nhưng Bảo Đảm Chất Lượng.\nĐổi Trả Nếu Hàng Bị Lỗi.\nUnisex Là Gì?\nUnisex là một phong cách thời trang nghe lạ tay mà khá quen thuộc với giới trẻ hiện đại đang dần chiếm ưu thế trong đời sống thời trang hiện nay.\nBạn có thể sẽ nhìn thấy những cô gái ăn mặc rất nam tính nhưng đầy vẻ quyến rũ và thu hút hay một anh chàng với loại quần áo nhiều màu sắc và phụ kiện nhưng chỉnh chu và đĩnh đạc.\nĐây là một dạng phong cách thời trang với những món đồ không phân biệt giới tính nhưng vẫn mang lại dáng vẻ trẻ trung, năng động.\nThời trang Unisex đang dần chiếm chỗ trong tủ đồ của các tín đồ mua sắm trong những năm gần đây không chỉ bởi sự đơn giản mà con là phong cách rất riêng biệt.\nCám ơn các ACE đã ghé thăm shop.\naothuntaylo #aothununisex #ao #aothun #aodoi#aothunnam #aophongnam #aophonggiare #aothungiare #aothunnu #aophongnu  #jean #aophongnamdep #aothuncotron #aophongcotron #aophonghanquoc #aophonghe #aophongkhongco', 'https://down-vn.img.susercontent.com/file/18abdb63713aab4d4d4795be7aa03dc6_tn', 'Áo Thun Tay Lỡ Nam Nữ Crew Love Unisex Áo Phông Form Rộng Màu Xanh Cổ Vịt Xanh Lá Vải Cotton Mềm Mịn Thoáng Mát', 75, 4.6, 3, 1, 9),
(37, 'MÔ TẢ SẢN PHẨM\nÁo Thun (Áo Phông) Trơn #Aothunmauxanhreu, #aothunxanhlinh\n Đầy đủ size: ÁO FORM RÔNG CHO CẢ NAM VÀ NỮ. #aophomrong #aoformrong\n(Khách hàng chú ý Áp Dụng các mã khuyến mãi vận chuyển nếu có khi Mua Hàng để được giảm shiping)\n🎈 Màu sắc: Màu Xanh Rêu\nHàng có sẵn, Ship hàng nhanh chóng. Xường may - in tại Tp.HCM\n🎈 #aothuntron Chất liệu thun cotton 4 chiều dày mịn, mềm mại co giãn tốt, thoáng mát\n🎈 Sản xuất: Áo Thun nhanh 24h\n🎈 Thiết kế thời trang: #aothunhanquoc phù hợp xu hướng hiện nay\n🎈 Kiểu dáng #aothuncotron đa phong cách\n🎈 Đường may tinh tế sắc sảo\n🎈 #aothunnu #aothunnam được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\n🎈 Dễ dàng phối trang phục, thích hợp đi chơi đi làm đi dạo phố\n🎈 Thích hợp cho sự kết hợp với quần jean, sọt,legging...\n🎈 #aogiare uy tín đảm bảo nhất thị trường\n🎈 #aothungiasi bán lẻ dù 1 sản phẩm\nXưởng may cũng nhận may và in theo yêu cầu.', 'https://down-vn.img.susercontent.com/file/6f9f5047523c618903be0aa88b402e98_tn', 'Áo Thun Trơn Màu Xanh Rêu Xanh Lính THOITRANG24H vải Dày Mịn Không Xù Lông', 49, 4.9, 3, 1, 9),
(39, 'MÔ TẢ SẢN PHẨM\n📢 📢 ！Rất quan trọng. Vui lòng đảm bảo rằng số điện thoại và địa chỉ của bạn là chính xác và chúng tôi không thể thay đổi hoặc sửa chữa bất cứ điều gì nếu có lỗi xảy ra trước khi đặt hàng. 🔥\nChúng tôi nhấn mạnh chất lượng cao và giá thấp! 🧸\nNếu bạn thích sản phẩm của chúng tôi, xin vui lòng cho chúng vào giỏ, cảm ơn bạn rất nhiều! 🧸\n-------------------------------------------------------------------\nTên vải: Polyester\nMô hình: Màu rắn\nThủ công: Cắt dán / Nối\nPhong cách: địu\nHình thức kết hợp: Một mảnh\nChiều dài: váy dài giữa\nLoại: Váy chữ A\nLoại cổ áo: cổ áo một dòng\nLoại tay áo: tay áo phồng\nChiều dài tay áo: Tay áo ngắn\nLoại eo: Eo cao\nYếu tố phổ biến: Nối\nThành phần vải chính: polyester (Sợi polyester)\nLoại phong cách: Nhật Bản và Hàn Quốc giản dị\nVạt: Áo chui đầu\nNội dung vải: 80% (không bao gồm) -90% (bao gồm)\nPhong cách: Bình thường\nLoại phong cách: Thoải mái và giản dị\n-------------------------------------------------------------------\nMọi thắc mắc về việc mua hàng vui lòng liên hệ với chúng tôi, chúng tôi sẽ giải đáp thỏa đáng nhất cho bạn.\nNếu vấn đề là do cửa hàng gây ra, bạn có thể tìm thấy nó bằng cách tìm kiếm.\nNếu không có vấn đề gì với sản phẩm, xin đừng quên cho chúng tôi nhận xét và nhận xét của bạn, chúng tôi hy vọng sẽ nhận được đánh giá 5 sao của bạn.⭐⭐⭐⭐⭐⭐⭐⭐⭐\nTất cả các điểm đều quan trọng đối với cửa hàng của chúng tôi và cảm ơn tất cả khách hàng của chúng tôi 🌼🌼🌼\nChúng tôi luôn có sản phẩm mới. Hãy theo dõi các bản cập nhật mới nhất. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và chiết khấu.', 'https://down-vn.img.susercontent.com/file/vn-11134201-23020-8opq1woqjynvae_tn', 'Đầm Dài Dáng Rộng Hở Vai Màu Xanh Lá Cây Thời Trang Cao Cấp Dành Cho Nữ', 129, 5, 3, 1, 9),
(40, 'MÔ TẢ SẢN PHẨM\nÁo Thun Tay Lỡ Xanh Lá EIGHTEEN Nam Nữ Phong Cách Ulzzang Unisex GTM \n\nSỐ ĐO ÁO: (có thể xê xích 0.5cm - 1.5cm ạ)\n-Size M: Ngang 50cm -- Dài 70cm\n-Size L: Ngang 52cm -- Dài 72cm\n-Size XL: Ngang 54cm -- Dài 74cm\n(Bảng size mang tính chất tham khảo và phù hợp 80-90% sở thích các cậu ạ. Các bạn muốn chọn size phù hợp có thể xem hình feedback các khách đã mua hoặc inbox cho Shop nhé ^^)\n\n -------------------------------------------------------------------------- \n #aothunnu #unisex \n#ao #re #giare  #sale #flashsale #big-size #aothun #ao-thun \n#XANH #XANH_LÁ #eighteen ', 'https://down-vn.img.susercontent.com/file/63d5896d0c8cf22581f71bc3fdf08de3_tn', 'Áo Thun Tay Lỡ Xanh Lá EIGHTEEN Nam Nữ Phong Cách Ulzzang Unisex GTM', 50, 4.8, 3, 1, 9),
(41, 'MÔ TẢ SẢN PHẨM\nVải / chất liệu: Polyester / Polyester (Sợi Polyester)\nHàm lượng thành phần: 51% (bao gồm) -70% (bao gồm)\nCác yếu tố phổ biến: chữ in khâu\nPhiên bản áo: Dáng rộng\nPhong cách: công sở đơn giản / Hàn Quốc\nChiều dài / chiều dài tay áo: Kiểu thông thường / Tay áo ngắn\nLoại cổ áo: cổ tròn\nĐộ tuổi sử dụng: Thanh niên (18-25 tuổi)\nCó thêm nhung: không lót nhung\nMùa niêm yết: Mùa hè năm 2022\nLoại tay áo: thông thường', 'https://down-vn.img.susercontent.com/file/3bbbff58f339014b9990aae9d5632bfa_tn', 'Áo Thun Tay Ngắn Cổ Tròn In Họa Tiết Tranh Sơn Dầu Màu Xanh Lá Đậm Phong Cách Đường Phố Mỹ oversize Dễ Phối Đồ 100 Dành Cho Cặp Đôi', 49.778, 4.4, 3, 1, 9),
(46, 'MÔ TẢ SẢN PHẨM\nÁo phông nữ form rộng tay lỡ unisex đẹp, áo thun nữ form rộng tay lỡ unisex cotton hàn quốc Miucho in hình\nÁo phông nữ form rộng tay lỡ unisex đẹp Miucho chính là chiếc áo thun dành cho các bạn nữ, một chiếc áo thun cổ tròn phong cách hàn quốc cao cấp được sử dụng chất vải thun cotton từ sợi bông tự nhiên đem đến cho người mặc trải nghiệm tuyệt vời nhất. \n- Nổi bật, tinh tế, đơn giản mà sang trọng\n- Không nhắn, không co rút sau khi giặt\n- Cảm giác mướt tay, êm ái và mềm mại ngay lần đầu chạm\n- Chất lượng cho độ dày dặn, co giãn tốt và quan trọng độ bền màu\n- Đặc biệt sợi Cotton pha Spandex được xử lý giúp chống tia UV và kháng khuẩn\nThông tin:  Áo thun nữ form rộng tay lỡ unisex cotton hàn quốc\n- Kích thước: S, M, L, XL\n- Màu sắc: Trắng, Đen\n- Xuất sứ: Made in VietNam\n- Chất Liệu : 95% Cotton, 5% Spandex\n- Kiểu dáng: Form rộng tay lỡ, Oversize\nĐến với shop áo thun nữ Miucho:\n- Dịch vụ chất lượng, giao hàng toàn quốc\n- Hỗ trợ kiểm tra hàng trước khi thanh toán\n- Hỗ trợ đổi hàng khi không vừa Size\n- Áo được kiểm tra kĩ càng, cẩn thận trước khi giao\nHợp tác cùng Miucho:\n- In áo thun theo yêu cầu\n- Tuyển sí và công tac viên\n#aothunnu #aothununisex #aothuntaylo #aophongnuformrong #aoformrong #aophongtaylo #aothuncotton #aothunnuformrong #aounisex #aophongnudep #aophongrongnu #aothundep #aothuntayloformrong #aothunhanquoc #aophongdep #aocotton #aophongnurong #aothuntaylounisex', 'https://down-vn.img.susercontent.com/file/9111f3bdc14cf136faab335f5ff4f5cb_tn', 'Áo phông mlb nữ form rộng tay lỡ unisex chất vải cotton AT120 Miucho in logo', 159, 4.9, 3, 1, 9),
(47, 'MÔ TẢ SẢN PHẨM\n[LƯU Ý ĐỌC KĨ HƯỚNG DẪN VÀ CHÚ Ý KHI ĐẶT HÀNG] 599269056085\n\n🌟🌟 Do nhiều yếu tố khách quan, màu sắc sản phẩm có thể có sự chênh lệch 2-4%!\n----\n🌟 Về Nelly \nNELLY là một nhà phân phối thời trang giá rẻ nội địa Trung nổi tiếng với chất lượng sản phẩm chất lượng với giá phải chăng. Sản phẩm Nelly phân phối với các thiết kế trẻ trung phù hợp với các bạn thanh thiếu niên, Các sản phẩm này được Nelly phân phối chủ yếu đến từ các hãng Heybig, Laylow, Superon, DCBOY, v..v...\nVì là nhà phân phối, nên tất cả sản phẩm từ Nelly sẽ KHÔNG CÓ TEM MÁC NELLY, mà tem mác của các hãng thời trang ở trên (các bạn cực lưu ý vấn đề này nha vì hiện tại có rất nhiều xưởng sản xuất làm mẫu mã giống và gắn tag Nelly).\n\n🌟 Về Shop mình\nShop nguonhangchina có kinh nghiệm nhiều năm trong lĩnh vực order các sản phẩm nước ngoài nói chung và Nelly nói riêng, uy tín được khẳng định từ các đánh giá tốt của khách hàng trên shopee, Shop luôn luôn cố gắng đảm bảo các tiêu chí:\n- Giá luôn dẫn đầu.\n- Nhiều chương trình khuyến mãi.\n- Nhiều hậu mãi sau mua hàng hấp dẫn\n- Mẫu mã mới nhất được cập nhật thường xuyên.\n- Luôn có trách nhiệm đối với sản phẩm mình bán ra.\n\n🌟 Các vấn đề lưu ý khi mua hàng Nelly\n1. Sản phẩm của Nelly như đã nói  ở trên rất đa dạng về mẫu mã và hãng phân phối, vì vậy cũng sẽ có rất nhiều size, form khác nhau, ở mỗi sản phẩm, shop đều có bảng size theo số đo được dịch chính xác từ hãng. Vì vậy nếu mua nhiều hơn 1 sản phẩm, các bạn hãy chú ý 1 chút kẻo sẽ gặp tình trạng cùng 1 size nhưng form và số đo khác nhau nhé.\n2. Các đơn hàng sẽ được gửi đúng phân loại màu - size như khách hàng đã đặt, shop sẽ không thực hiện thay đổi size, mã trong inbox theo yêu cầu.\n3. Tem mác và thông tin trên tem mác có thể thay đổi tùy theo nhà cung cấp hoặc theo từng lô sản phẩm.\n4. Màu của sản phẩm có thể chênh lệch không đáng kể tùy vào lô hàng.\n\n🌟 Các vấn đề lưu ý khi sử dụng\n+Một số mã áo cảm giác cầm ban đầu có vẻ bí và nóng, nhưng sau khi giặt qua vài lần vải sẽ trở nên mềm mại và thấm hút hơn.\n+Đối với các sản phẩm áo phông màu, nên ngâm cùng nước muối pha loãng ở nhiệt độ thường trong vòng 1-2h Sau đó xả hết nước muối giũ sạch rồi phơi, như vậy áo sẽ hạn chế ra màu cũng như giữ được màu sắc lâu nhất. \n(chỉ nên ngâm lần đầu tiên không nên ngâm nhiều lần sau đó) \n+Trong vài lần giặt đầu tiên chỉ nên giặt bằng nước thường không nên dùng bột giặt.\n+Nên giặt tay, hạn chế giặt máy và không nên sử dụng nước nóng khi giặt.\n+Không đổ bột giặt, nước tẩy, nước xả vài trực tiếp lên hình in.\n+Khi giặt ở khu vực hình in nên chà nhẹ, tránh vò mạnh.\n+Khi là ủi hoặc sấy nên tránh khu vực hình in nhằm hạn chế bị vỡ hình.\n+Khi phơi áo nên lộn mặt in hình vào trong để trắng ánh nắng trực tiếp.\n\n🌟Trách nhiệm của shop với khách đặt hàng.\n1. Cam kết đúng mẫu, đúng size, đúng chất lượng.\n2. Chịu trách nhiệm xử lý đổi trả, bảo hành trong thời gian quy định nếu sản phẩm có lỗi.', 'https://down-vn.img.susercontent.com/file/4278b2811e400e9a330b38c4967678ca_tn', 'Áo phông Nelly Heybig tay ngắn trơn màu xanh lá đậm', 99, 4.9, 3, 1, 9),
(49, 'MÔ TẢ SẢN PHẨM\nKính gửi người mua, chào mừng đến với Cửa hàng quần áo Beauties😄😄\nCung cấp cho bạn trải nghiệm mua sắm tốt, vui lòng nhận phiếu giảm giá cửa hàng và theo dõi cửa hàng này để nhận quà theo dõi để được giảm giá nhiều hơn❣❣\n\nLoại vải: sợi polyester\nThành phần vải chính: sợi polyester (polyester)\nThành phần vải chính 2: Sợi polyester (polyester)\nHọa tiết: màu trơn\nPhong cách: bảo hiểm rủi ro\nChiều dài tay áo: Tay ngắn\nThủ công: cắt dán / khâu\nMã số: 2021 Màu tinh khiết (Kho 4)\nThương hiệu: Huajianting\nKiểu dáng: Vừa vặn\nChiều dài: Kiểu thông thường (50cm <chiều dài ≤ 65cm)\nLoại cổ áo: cổ tròn\nLoại tay áo: thông thường\nThiết kế: in\nNăm / mùa niêm yết: Mùa hè 2020\nMàu sắc: đỏ, xanh lá., cam., Thẻ nhạt., Đen., Tím., Đỏ hồng, Cà phê, xám nhạt, xám đậm, trắng.\nKích thước: M, L, XL, XXL\nLoại phong cách: tính khí đi làm\nHàm lượng thành phần vải chính: 95% trở lên\nPhong cách: phong cách đi làm\nLoại phong cách xuyên biên giới: thoải mái và giản dị\nNguồn hàng cung cấp xuyên biên giới: Có\nThành phần vải chính 2 hàm lượng: 95% trở lên\nKhu vực bán hàng hạ nguồn chính 1: Đông Nam Á\nKhu vực bán hàng hạ nguồn chính 2: Đông Nam Á\n\nLưu ý:📢：\n1.Mua nhiều sản phẩm, vui lòng thêm vào giỏ hàng trước và cuối cùng mua cùng.😃😃\n2.Đơn hàng cần sửa đổi do màu sắc, kích thước, số lượng và các lý do khác, vui lòng hủy đơn hàng trước khi giao hàng và đặt hàng lại\n3.Cửa hàng này không chấp nhận trả lại bất hợp lý. Nếu sản phẩm bị hư hỏng do người mua, nó sẽ ảnh hưởng đến doanh số bán hàng phụ và sẽ không được hoàn lại tiền, để không ảnh hưởng đến trải nghiệm mua sắm của những người mua khác🙅🙅\n4.Nếu bạn có bất kỳ câu hỏi hoặc đề xuất nào sau khi nhận được sản phẩm, vui lòng liên hệ với bộ phận chăm sóc khách hàng để trao đổi, chúng tôi sẽ tích cực giải quyết phản hồi của bạn và trả lời nhanh chóng để mang lại cho bạn trải nghiệm mua sắm thuận tiện và tốt💯💯\n5.Dịch vụ khách hàng trả lời thời gian☎: Am 8: 00-PM 18: 00\n6.Shop chúng tôi vận chuyển từ nước ngoài, thời gian hậu cần từ 5-15 ngày, vui lòng kiên nhẫn chờ đợi👏👏\n\n\nThông tin người bán & Tuyên bố từ chối trách nhiệm:\nCuộc sống công ty: Thâm Quyến Huotong Bafang xuyên biên giới Công ty TNHH Thương mại điện tử., Ltd\nĐịa chỉ: Phòng 310, Không 2007, Đường Baoyuan, Cộng đồng Lao động, Đường Xixiang, Quận Baoan, Thâm Quyến\nGiấy phép kinh doanh cuộc sống: 91440300Ma5g3kt301\nMọi vấn đề cuộc sống của chúng tôi thông qua cuộc sống web của cửa hàng!\nTuyên bố từ chối trách nhiệm: Chúng tôi sẽ giữ mọi trách nhiệm về hàng hóa không phải Shopee.', 'https://down-vn.img.susercontent.com/file/21fbb2b5a739e1ecaafee28c2cddfd26_tn', 'Áo Thun Tay Ngắn Dáng Ôm Thời Trang Mùa Hè 2022 Màu Xanh Lá Phong Cách Mới Cho Nữ', 59, 4.5, 3, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `total` double NOT NULL,
  `car_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `created_at`, `email`, `name`, `password`, `phone`) VALUES
(1, 'HCM', '23-3-2020', 'customer@gmail.com', 'Customer', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`,`use_id`,`pro_id`),
  ADD KEY `FKi5pjpkux988kw9vpd1jvchtk0` (`pro_id`),
  ADD KEY `FKpesgxru7sco2we2h67bankqyb` (`use_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5yhiu7ri51c4oigkb28skv0b2` (`cat_id`),
  ADD KEY `FKe1xjy5copyubxyicjxrxe90er` (`col_id`),
  ADD KEY `FKt3qx69ktr8yb15b3smuaem287` (`bra_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8sewwnpamngi6b1dwaa88askk` (`name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK77o69v21rcks03ecuyy1ivnv` (`car_id`),
  ADD KEY `FKsg7jp0aj6qipr50856wf6vbw1` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FKi5pjpkux988kw9vpd1jvchtk0` FOREIGN KEY (`pro_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKpesgxru7sco2we2h67bankqyb` FOREIGN KEY (`use_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK5yhiu7ri51c4oigkb28skv0b2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKe1xjy5copyubxyicjxrxe90er` FOREIGN KEY (`col_id`) REFERENCES `color` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKt3qx69ktr8yb15b3smuaem287` FOREIGN KEY (`bra_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK77o69v21rcks03ecuyy1ivnv` FOREIGN KEY (`car_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FKsg7jp0aj6qipr50856wf6vbw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
