-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2023 at 05:15 PM
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
  `products_id` int DEFAULT NULL,
  `use_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `created_at`, `products_id`, `use_id`) VALUES
(1, 1, 'Fri Mar 31 00:13:55 ICT 2023', 3, 1);

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
(1, 'Shirt');

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
(1, 'red'),
(4, 'Black');

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
(1, 'A handbag is a fashion accessory that is designed to hold personal items such as a wallet, phone, keys, makeup, and other essentials. Handbags come in a variety of shapes, sizes, colors, and styles, and are often made from materials such as leather, fabric, or synthetic materials.\r\n\r\nWhen choosing a handbag, there are several factors to consider, including the occasion for which it will be used, personal style preferences, and the functionality needed. Some common styles of handbags include shoulder bags, crossbody bags, tote bags, clutch bags, and backpacks.\r\n\r\nOne popular brand of women\'s handbags is Louis Vuitton, which is known for its high-quality leather goods and iconic monogram pattern. Louis Vuitton handbags are typically made from leather or coated canvas and feature classic designs such as the Speedy and the Neverfull. They often come with gold or silver hardware and may include features such as interior pockets, detachable straps, and key fobs.\r\n\r\nIn addition to designer handbags, there are many affordable options available from brands such as Michael Kors, Coach, and Kate Spade. These brands offer a range of styles and materials at various price points to suit different budgets and fashion preferences.\r\n\r\nOverall, a handbag is a versatile and practical fashion accessory that can add both style and functionality to any outfit.', 's-r-1.png', 'Red Shirt', 25, 4.8, 1, 1, 1),
(3, 'MÔ TẢ SẢN PHẨM\nÁo thun form rộng nữ tay lỡ oversize chất vải cotton Miucho\nÁo phông wash nữ form rộng đẹp tay lỡ oversize Miucho chính là chiếc áo thun dành cho các bạn nữ, một chiếc áo thun cổ tròn phong cách hàn quốc cao cấp được sử dụng chất vải thun cotton từ sợi bông tự nhiên đem đến cho người mặc trải nghiệm tuyệt vời nhất. \n- Nổi bật, tinh tế, đơn giản mà sang trọng\n- Không nhắn, không co rút sau khi giặt\n- Cảm giác mướt tay, êm ái và mềm mại ngay lần đầu chạm\n- Chất lượng cho độ dày dặn, co giãn tốt và quan trọng độ bền màu\n- Đặc biệt sợi Cotton pha Spandex được xử lý giúp chống tia UV và kháng khuẩn\nThông tin:  áo thun wash nữ form rộng unisex tay lỡ hàn quốc cotton\n- Kích thước: S, M, L, XL\n- Màu sắc: Đen xám\n- Xuất sứ: Made in VietNam\n- Chất Liệu : 100% cotton\n- Kiểu dáng: Form rộng tay lỡ, Oversize\nĐến với shop áo thun nữ Miucho:\n- Dịch vụ chất lượng, giao hàng toàn quốc\n- Hỗ trợ kiểm tra hàng trước khi thanh toán\n- Hỗ trợ đổi hàng khi không vừa Size\n- Áo được kiểm tra kĩ càng, cẩn thận trước khi giao\nHợp tác cùng Miucho:\n- In áo thun theo yêu cầu\n- Tuyển si và công tác viên\n#aothunnu #aothununisex #aothuntaylo #aophongnuformrong #aoformrong #aophongtaylo #aothuncotton #aothunnuformrong #aounisex #aophongnudep #aophongrongnu #aothundep #aothuntayloformrong #aothunhanquoc #aophongdep #aocotton #aophongnurong #aothuntaylounisex', ' https://down-vn.img.susercontent.com/file/sg-11134201-22120-vatlzw38zkkv7f_tn', ' Áo thun form rộng nữ tay lỡ oversize ', 159, 4.9, 3, 1, 4),
(5, 'MÔ TẢ SẢN PHẨM\nThông tin sản phẩm Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N\n- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam\n- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA\n------------------------------------ \nHướng dẫn sử dụng:\n🎗 Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n🎗 Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal\n🎗 Sản phẩm phù hợp cho giặt máy/giặt tay\n------------------------------------ \nTHÔNG TIN CHI TIẾT \n🎗 Chất liệu: Thun lạnh\n🎗 Màu sắc: Đen - Xanh than - trắng - ghi\n🎗 Thương hiệu: VESCA\n🎗 Xuất xứ: Việt Nam \n🎗Size: M - L- XL - XXL\n------------------------------------ \nHƯỚNG DẪN CÁCH ĐẶT HÀNG \n🎗 Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE \n🎗 Mã sản phẩm đã có trong ảnh \n🎗 Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship \n- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng \n- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” \n🎗 Shop luôn sẵn sàng trả lời inbox để tư vấn \n------------------------------------ \nChế độ bảo hành VESCA:\n🎗 Tất cả các sản phẩm đều được shop bảo hành\n🎗 Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n🎗 Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực\n------------------------------------ \nVESCA cam kết:\n🎗 VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n🎗 VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/def1efaa698ff15ab8f8045d76a396aa_tn', ' Áo Giữ Nhiệt Nam ', 45, 4.5, 3, 1, 4),
(6, 'MÔ TẢ SẢN PHẨM\n🔰  Thông tin chi tiết Áo sơ mi nam FEAER\n- Hàng Full tag, mác cực sang chảnh (xem video trên ảnh sản phẩm). \n- Chất liệu: Lụa Nhung gân  mềm mịn, siêu mát, thấm hút mồ hôi nhanh, sử dụng loại vải này còn mang lại cảm giác vô cùng ấm áp vào mùa đông mà vẫn mát mẻ vào mùa hè\n- Đường may tỉ mỉ, chắc chắn\n- Họa tiết trơn. Khách hàng phối với Jeans, Kaki, Short đều được. Mặc dạo phố, du lịch hay đến các buổi tiệc đều mang đến sự thoải mái, tự tin đẳng cấp dành cho khách hàng.\n- Màu: ĐEN\n\n⏩  Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\n⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn.\n⏩Bảng size mẫu Feaer:\nSize M: Nặng 55-64kg ; Cao 1m60-1m74\nSize L: Nặng 65-74kg ; Cao 1m75-1m79\nSize XL: Nặng 75-84kg ; Cao 1m80-1m83\nSize XXL: Nặng 85-94kg ; Cao 1m83-1m87\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\n\nHướng dẫn sử dụng sản phẩm Áo sơ mi nam FEAER\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n- Không được dùng hóa chất tẩy.\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\n\n🔰 Là khách của FEAER, bạn sẽ được:\nSản phẩm Áo sơ mi tay dài FEAER 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\nĐảm bảo vải chất lượng 100%\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\nHàng có sẵn, giao hàng ngay khi nhận được đơn \nHoàn tiền nếu sản phẩm không giống với mô tả\nChấp nhận đổi hàng khi size không vừa\nGiao hàng trên toàn quốc, nhận hàng trả tiền \nHỗ trợ đổi trả theo quy định của Shopee \n\n📣  CHÍNH SÁCH FEAER DENIM\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp được chấp nhận: \n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \n- Không đủ số lượng, không đủ bộ như trong đơn hàng \n3. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng \n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của FEAER\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,... \nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n\n#feaer #aosomi #sominam #aosominam #aonam #somifeaer #somi #somidep #somigiare #aosomidep #shirt #aosomitayngan #somitayngan #sominamtayngan #aosominamtayngan #ao #so #mi', ' https://down-vn.img.susercontent.com/file/bd8a5b4db00436f51df35d25f9b763f9_tn', ' Áo sơ mi nam FEAER DENIM ', 339, 4.9, 3, 1, 4),
(7, 'MÔ TẢ SẢN PHẨM\nThông tin sản phẩm Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N\n- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam\n- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA\n------------------------------------ \nHướng dẫn sử dụng:\n🎗 Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n🎗 Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal\n🎗 Sản phẩm phù hợp cho giặt máy/giặt tay\n------------------------------------ \nTHÔNG TIN CHI TIẾT \n🎗 Chất liệu: Thun lạnh\n🎗 Màu sắc: Đen - Xanh than - trắng - ghi\n🎗 Thương hiệu: VESCA\n🎗 Xuất xứ: Việt Nam \n🎗Size: M - L- XL - XXL\n------------------------------------ \nHƯỚNG DẪN CÁCH ĐẶT HÀNG \n🎗 Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE \n🎗 Mã sản phẩm đã có trong ảnh \n🎗 Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship \n- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng \n- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” \n🎗 Shop luôn sẵn sàng trả lời inbox để tư vấn \n------------------------------------ \nChế độ bảo hành VESCA:\n🎗 Tất cả các sản phẩm đều được shop bảo hành\n🎗 Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n🎗 Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực\n------------------------------------ \nVESCA cam kết:\n🎗 VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n🎗 VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/def1efaa698ff15ab8f8045d76a396aa_tn', ' Áo Giữ Nhiệt Nam Dài Tay Cao Cấp ', 45, 4.5, 3, 1, 4),
(8, 'MÔ TẢ SẢN PHẨM\n✅ CHI TIẾT SẢN PHẨM\n⚜️ Áo Sơ Mi Nam Trắng Đen Tay Dài Cổ Bẻ - LONG SLEEVE Shirt\n- Được thiết kế bởi Team POLYS.\n- Chất liệu: Vải Chéo Thái cao cấp, dày dặn, mềm mịn, ít nhăn, co giãn 4 chiều và thấm hút tốt. Giúp người mặc thoáng mát, không gò bó hay hầm bí. Cam kết không ra màu không bai nhãu.\n- Dáng áo suông vừa, lên form thoải mái nhưng vẫn vừa vặn với người mặc.\n- Thiết kế, trẻ trung, dễ dàng kết hợp cùng quần Jeans, Kaki hoặc Short. Đi tiệc, du lịch hay dạo phố cùng bạn bè đều phù hợp.\n✅ QUY CÁCH ĐÓNG GÓI ÁO SƠ MI\n- Từ ngày 5/1/2023 để tối ưu giá bán đến khách hàng, POLYS ngưng dịch vụ đóng gói BẢO VỆ X2 miễn phí.\n- Mọi đơn hàng sẽ được đóng gói trong hộp POLYS trắng sang trọng và túi niêm phong của Brand.\n- Khách hàng có nhu cầu tặng quà cần bảo vệ hộp POLYS, vui lòng liên hệ sau khi đặt hàng để được POLYS hỗ trợ thêm.\n✅ POLYS CAM KẾT\n- Sản phẩm đúng như hình ảnh và mô tả. Thiết kế bởi team POLYS và chính hãng 100%.\n- Sản phẩm được kiểm tra kĩ trước khi giao đến khách hàng.\n- Mới 100%, full tag, chưa qua giặt ủi và sử dụng.\n- Hoàn tiền 100% nếu sản phẩm không giống mô tả.\n- Thực hiện đúng các dịch vụ đã đưa ra.\n✅ CHÍNH SÁCH ĐỔI TRẢ\nTất cả sản phẩm sẽ nhận đổi trả trong vòng 7 ngày kể từ khi nhận hàng với:\n- Hàng còn nguyên tem, mác, chưa qua sử dụng, giặt ủi\n- Sản phẩm không phát hiện lỗi hoặc bẩn do khách hàng\n- POLYS xin từ chối đổi trả nếu quá hạn 7 ngày kể từ khi nhận sản phẩm\n✅ PHÍ ĐỔI TRẢ\n- THU SHIP 2 chiều nếu khách hàng cần đổi size (kể cả khi chọn size theo POLYS tư vấn).\n- Do mỗi khách hàng có sở thích form áo khác nhau, nhiều trường hợp khách hàng cung cấp chiều cao và cân nặng không chính xác nên mọi tư vấn chỉ là tương đối. Khi đổi size khách hàng vui lòng thanh toán phí ship 2 chiều cho vận chuyển.\n✅ HƯỚNG DẪN GIẶT ỦI VÀ BẢO QUẢN\n- Có thể giặt máy.\n- Giặt áo với nước nhiệt độ thấp hơn 30 độ C.\n- Không sử dụng nước tẩy.\n- Không vắt, không phơi nắng gắt.\n- Ủi hoặc sấy áo ở nhiệt độ thấp.\n✅ LƯU Ý\n- Do màn hình hiển thị độ sáng của điện thoại hay máy tính khác nhau nên màu của sản phẩm khi sẽ có chênh lệch một ít.\n- Do chính sách không được đồng kiểm sản phẩm của Shopee, vì vậy quý khách vui lòng quay video Unbox sản phẩm và liên trực tiếp qua tin nhắn để được POLYS hỗ trợ xử lý vấn đề khi phát gặp lỗi phát sinh.\n#polys #aosomi #sominam #aosominam #aonam #somi #aonam #sominamtaydai #somitaydai #aosomitaydai #aosominamtaydai #sominamtrangden #aosominamden #aosominamtrang #sominamtrangdentaydai', ' https://down-vn.img.susercontent.com/file/9a9e2f8916b64a0d275d83744a53a3b0_tn', ' Áo sơ mi nam tay dài ', 169, 4.9, 3, 1, 4),
(9, 'MÔ TẢ SẢN PHẨM\n🔰  Thông tin chi tiết Áo sơ mi nam FEAER\n- Hàng Full tag, mác cực sang chảnh (xem video trên ảnh sản phẩm). \n- Chất liệu: Lụa Nhung gân  mềm mịn, siêu mát, thấm hút mồ hôi nhanh, sử dụng loại vải này còn mang lại cảm giác vô cùng ấm áp vào mùa đông mà vẫn mát mẻ vào mùa hè\n- Đường may tỉ mỉ, chắc chắn\n- Họa tiết trơn. Khách hàng phối với Jeans, Kaki, Short đều được. Mặc dạo phố, du lịch hay đến các buổi tiệc đều mang đến sự thoải mái, tự tin đẳng cấp dành cho khách hàng.\n- Màu: ĐEN\n\n⏩  Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\n⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn.\n⏩Bảng size mẫu Feaer:\nSize M: Nặng 55-64kg ; Cao 1m60-1m74\nSize L: Nặng 65-74kg ; Cao 1m75-1m79\nSize XL: Nặng 75-84kg ; Cao 1m80-1m83\nSize XXL: Nặng 85-94kg ; Cao 1m83-1m87\nLưu ý: Đây là bảng thông số chọn size cơ bản, tùy thuộc và vào mỗi người mà có thể +/- 1 Size\n\nHướng dẫn sử dụng sản phẩm Áo sơ mi nam FEAER\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n- Không được dùng hóa chất tẩy.\n- Hạn chế sử dụng máy sấy và ủi (nếu có) thì ở nhiệt độ thích hợp.\n\n🔰 Là khách của FEAER, bạn sẽ được:\nSản phẩm Áo sơ mi tay dài FEAER 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\nĐảm bảo vải chất lượng 100%\nÁo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách\nHàng có sẵn, giao hàng ngay khi nhận được đơn \nHoàn tiền nếu sản phẩm không giống với mô tả\nChấp nhận đổi hàng khi size không vừa\nGiao hàng trên toàn quốc, nhận hàng trả tiền \nHỗ trợ đổi trả theo quy định của Shopee \n\n📣  CHÍNH SÁCH FEAER DENIM\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \n- Hàng hoá vẫn còn mới, chưa qua sử dụng \n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \n2. Trường hợp được chấp nhận: \n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \n- Không đủ số lượng, không đủ bộ như trong đơn hàng \n3. Trường hợp không đủ điều kiện áp dụng chính sách: \n- Quá 07 ngày kể từ khi Quý khách nhận hàng \n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của FEAER\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,... \nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%\n\n#feaer #aosomi #sominam #aosominam #aonam #somifeaer #somi #somidep #somigiare #aosomidep #shirt #aosomitayngan #somitayngan #sominamtayngan #aosominamtayngan #ao #so #mi', ' https://down-vn.img.susercontent.com/file/bd8a5b4db00436f51df35d25f9b763f9_tn', ' Áo sơ mi nam FEAER DENIM ', 339, 4.9, 3, 1, 4),
(10, 'MÔ TẢ SẢN PHẨM\nThông tin sản phẩm Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N\n- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam\n- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA\n------------------------------------ \nHướng dẫn sử dụng:\n🎗 Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n🎗 Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal\n🎗 Sản phẩm phù hợp cho giặt máy/giặt tay\n------------------------------------ \nTHÔNG TIN CHI TIẾT \n🎗 Chất liệu: Thun lạnh\n🎗 Màu sắc: Đen - Xanh than - trắng - ghi\n🎗 Thương hiệu: VESCA\n🎗 Xuất xứ: Việt Nam \n🎗Size: M - L- XL - XXL\n------------------------------------ \nHƯỚNG DẪN CÁCH ĐẶT HÀNG \n🎗 Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE \n🎗 Mã sản phẩm đã có trong ảnh \n🎗 Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship \n- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng \n- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” \n🎗 Shop luôn sẵn sàng trả lời inbox để tư vấn \n------------------------------------ \nChế độ bảo hành VESCA:\n🎗 Tất cả các sản phẩm đều được shop bảo hành\n🎗 Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n🎗 Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực\n------------------------------------ \nVESCA cam kết:\n🎗 VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n🎗 VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/def1efaa698ff15ab8f8045d76a396aa_tn', ' Áo Giữ Nhiệt Nam Dài Tay ', 45, 4.5, 3, 1, 4),
(11, 'MÔ TẢ SẢN PHẨM\n✅ CHI TIẾT SẢN PHẨM\n⚜️ Áo Sơ Mi Nam Trắng Đen Tay Dài Cổ Bẻ - LONG SLEEVE Shirt\n- Được thiết kế bởi Team POLYS.\n- Chất liệu: Vải Chéo Thái cao cấp, dày dặn, mềm mịn, ít nhăn, co giãn 4 chiều và thấm hút tốt. Giúp người mặc thoáng mát, không gò bó hay hầm bí. Cam kết không ra màu không bai nhãu.\n- Dáng áo suông vừa, lên form thoải mái nhưng vẫn vừa vặn với người mặc.\n- Thiết kế, trẻ trung, dễ dàng kết hợp cùng quần Jeans, Kaki hoặc Short. Đi tiệc, du lịch hay dạo phố cùng bạn bè đều phù hợp.\n✅ QUY CÁCH ĐÓNG GÓI ÁO SƠ MI\n- Từ ngày 5/1/2023 để tối ưu giá bán đến khách hàng, POLYS ngưng dịch vụ đóng gói BẢO VỆ X2 miễn phí.\n- Mọi đơn hàng sẽ được đóng gói trong hộp POLYS trắng sang trọng và túi niêm phong của Brand.\n- Khách hàng có nhu cầu tặng quà cần bảo vệ hộp POLYS, vui lòng liên hệ sau khi đặt hàng để được POLYS hỗ trợ thêm.\n✅ POLYS CAM KẾT\n- Sản phẩm đúng như hình ảnh và mô tả. Thiết kế bởi team POLYS và chính hãng 100%.\n- Sản phẩm được kiểm tra kĩ trước khi giao đến khách hàng.\n- Mới 100%, full tag, chưa qua giặt ủi và sử dụng.\n- Hoàn tiền 100% nếu sản phẩm không giống mô tả.\n- Thực hiện đúng các dịch vụ đã đưa ra.\n✅ CHÍNH SÁCH ĐỔI TRẢ\nTất cả sản phẩm sẽ nhận đổi trả trong vòng 7 ngày kể từ khi nhận hàng với:\n- Hàng còn nguyên tem, mác, chưa qua sử dụng, giặt ủi\n- Sản phẩm không phát hiện lỗi hoặc bẩn do khách hàng\n- POLYS xin từ chối đổi trả nếu quá hạn 7 ngày kể từ khi nhận sản phẩm\n✅ PHÍ ĐỔI TRẢ\n- THU SHIP 2 chiều nếu khách hàng cần đổi size (kể cả khi chọn size theo POLYS tư vấn).\n- Do mỗi khách hàng có sở thích form áo khác nhau, nhiều trường hợp khách hàng cung cấp chiều cao và cân nặng không chính xác nên mọi tư vấn chỉ là tương đối. Khi đổi size khách hàng vui lòng thanh toán phí ship 2 chiều cho vận chuyển.\n✅ HƯỚNG DẪN GIẶT ỦI VÀ BẢO QUẢN\n- Có thể giặt máy.\n- Giặt áo với nước nhiệt độ thấp hơn 30 độ C.\n- Không sử dụng nước tẩy.\n- Không vắt, không phơi nắng gắt.\n- Ủi hoặc sấy áo ở nhiệt độ thấp.\n✅ LƯU Ý\n- Do màn hình hiển thị độ sáng của điện thoại hay máy tính khác nhau nên màu của sản phẩm khi sẽ có chênh lệch một ít.\n- Do chính sách không được đồng kiểm sản phẩm của Shopee, vì vậy quý khách vui lòng quay video Unbox sản phẩm và liên trực tiếp qua tin nhắn để được POLYS hỗ trợ xử lý vấn đề khi phát gặp lỗi phát sinh.\n#polys #aosomi #sominam #aosominam #aonam #somi #aonam #sominamtaydai #somitaydai #aosomitaydai #aosominamtaydai #sominamtrangden #aosominamden #aosominamtrang #sominamtrangdentaydai', ' https://down-vn.img.susercontent.com/file/9a9e2f8916b64a0d275d83744a53a3b0_tn', ' Áo sơ mi nam tay dài Trắng Đen ', 169, 4.9, 3, 1, 4),
(12, 'MÔ TẢ SẢN PHẨM\nThông tin sản phẩm Áo Giữ Nhiệt Nam Dài Tay Cao Cấp VESCA N\n- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam\n- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA\n------------------------------------ \nHướng dẫn sử dụng:\n🎗 Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n🎗 Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal\n🎗 Sản phẩm phù hợp cho giặt máy/giặt tay\n------------------------------------ \nTHÔNG TIN CHI TIẾT \n🎗 Chất liệu: Thun lạnh\n🎗 Màu sắc: Đen - Xanh than - trắng - ghi\n🎗 Thương hiệu: VESCA\n🎗 Xuất xứ: Việt Nam \n🎗Size: M - L- XL - XXL\n------------------------------------ \nHƯỚNG DẪN CÁCH ĐẶT HÀNG \n🎗 Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE \n🎗 Mã sản phẩm đã có trong ảnh \n🎗 Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship \n- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng \n- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” \n🎗 Shop luôn sẵn sàng trả lời inbox để tư vấn \n------------------------------------ \nChế độ bảo hành VESCA:\n🎗 Tất cả các sản phẩm đều được shop bảo hành\n🎗 Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n🎗 Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực\n------------------------------------ \nVESCA cam kết:\n🎗 VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n🎗 VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/def1efaa698ff15ab8f8045d76a396aa_tn', ' Áo Giữ Nhiệt Nam Dài Tay ', 45, 4.5, 3, 1, 4),
(13, 'MÔ TẢ SẢN PHẨM\nÁo Thun Nam Tay Dài Giữ Nhiệt Cao Cấp Vải Thun Co Giãn 4 Chiều Ấm Áp ABANDON N\n-------------------------------------------------------------------------\n\n- Màu sắc: đen - xám - than - trắng\n- Size. M - L - XL - XXL\n- Xuất xứ: Việt Nam\n\nHướng dẫn sử dụng:\n- Nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của sản phẩm\n- Sản phẩm phù hợp cho giặt máy/giặt tay\n\nBảng size có trong mô tả ảnh sản phẩm\n\nLưu ý về sản phẩm:\n- Nếu chưa chắc chắn về chọn size sản phẩm\n- Nếu khách form người không cân đối (Béo, gầy, thấp...)\n- Nếu khách thích mặc ôm body hoặc mặc rộng thoải mái\n INBOX trực tiếp cho shop để được tư vấn size nhé\n\nChế độ bảo hành ABANDON\n- Tất cả các sản phẩm đều được shop hỗ trợ đổi trả\n- Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n- Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của ELEVEN sẽ hết hiệu lực\n\nABANDON cam kết:\n- ABANDON cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n- ABANDON cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n\n\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/3d2a89e7fb0e97a5045a04323ac017bd_tn', ' Áo Thun Nam Tay ', 39, 4.6, 3, 1, 4),
(14, 'MÔ TẢ SẢN PHẨM\nÁo Giữ Nhiệt Nam Thun Dài Tay Cao Cấp Cổ Cao Ấm Áp ABANDON N2\n\n- Màu sắc: đen - xám - than - trắng\n- Size. M - L - XL - XXL\n- Xuất xứ: Việt Nam\n\nHướng dẫn sử dụng:\n- Nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác\n- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của sản phẩm\n- Sản phẩm phù hợp cho giặt máy/giặt tay\n\nBảng size có trong mô tả ảnh sản phẩm\n\nLưu ý về sản phẩm:\n- Nếu chưa chắc chắn về chọn size sản phẩm\n- Nếu khách form người không cân đối (Béo, gầy, thấp...)\n- Nếu khách thích mặc ôm body hoặc mặc rộng thoải mái\n INBOX trực tiếp cho shop để được tư vấn size nhé\n\nChế độ bảo hành ABANDON\n- Tất cả các sản phẩm đều được shop hỗ trợ đổi trả\n- Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)\n- Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của ELEVEN sẽ hết hiệu lực\n\nABANDON cam kết:\n- ABANDON cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá\n- ABANDON cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)\n\n\n#áo_thun_nam_tay_dài\n#áo_thun_tay_dài_nam\n#áo_thun_dài_tay_nam\n#áo_giữ_nhiệt_nam\n#áo_thun_nam_dài_tay\n#áo_phông_dài_tay_nam\n#áo_phông_nam_dài_tay', ' https://down-vn.img.susercontent.com/file/263554f8ac2e531b55b45bf9cbfd997d_tn', ' Áo Giữ Nhiệt Nam Thun Dài Tay Cao ', 39, 4.5, 3, 1, 4),
(15, 'MÔ TẢ SẢN PHẨM\nKill System mong muốn đem đến bạn những trải nghiệm mua sắm tốt nhất với giá cả phải chăng, chất lượng và mẫu mã sản phẩm luôn được cập nhật theo xu hướng.\nÁo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System do Kill System thiết kế và sản xuất mang phong cách streetwear trẻ trung, năng động - Đảm bảo chất lượng giống mô tả 100%\n* Chi tiết sản phẩm Áo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System:\n+ Chất liệu thun co giãn tốt, thấm hút mồ hôi và thoải mái không gò bó khi vận động.\n+ Thích hợp mặc hằng ngày, tiện lợi dễ dàng mix cùng các loại trang phục. \n+ Thiết kế đơn giản tạo sự thoải mái khi mặc.\n*Kích cỡ:\n* Hướng dẫn bảo quản Áo thun tay dài Irina Sporty Slim Fit T-Shirt Kill System:\n+ Giặt mặt trái ở nhiệt độ bình thường với đồ có màu tương tự.\n+ Không dùng chất tẩy,  không ngâm sản phẩm quá lâu với bột giặt.\n+ Lộn mặt trái khi phơi tránh bị nhanh phai màu.\n+ Hạn chế sử dụng máy sấy và dùng nhiệt độ phù hợp khi ủi.\n* Cam kết & chính sách đổi trả:\n- Chất lượng sản phẩm 100% giống mô tả.\n- Hình ảnh chân thật 100% do shop tự chụp.\n--------\n- Đổi hàng trong vòng 7 ngày đối với:\n + Sản phẩm còn mới hoàn toàn, chưa qua sử dụng.\n + Sản phẩm bị lỗi do vận chuyển hoặc nhà sản xuất.\n--------\n- Quay lại video quá trình mở hàng để KIST hỗ trợ bạn một cách tốt nhất khi gặp vấn đề về sản phẩm nhé!\nLƯU Ý: Khi bạn gặp bất kì vấn đề gì cần khiếu nại đừng vội đánh giá mà hãy liên hệ với Kist ở mục tin nhắn để Kist được hỗ trợ bạn nhanh chóng nhất.\n_____________________________________________________________\n* Hệ thống cửa hàng :\n- Hồ Chí Minh: \n+ 84 Trần Quang Diệu , phường 14 , quận 3.\n+ The New Playground , Lê Lai , quận 1.\n* Hotline : 0945 696 700\n#aothuncroptop #aocroptop #croptop #killsystem #killsystemvn #kist  #streetwear  #aothunkillsystem ', ' https://down-vn.img.susercontent.com/file/sg-11134201-22120-uhlk0212fplvea_tn', ' Áo thun nữ Kill System tay dài ', 189, 4.9, 3, 1, 4);

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
  `user_id` int DEFAULT NULL
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
(1, 'HCM', '23-3-2020', 'a', 'a b', '$2y$10$yirNNZfPpmHxyTus4ciAXeU6t/YqA8whvCB8YIQvHBE1huGmrYo22', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1w3c61ds5k8hk2ah45kbrr6ub` (`products_id`),
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
  ADD KEY `FKt3qx69ktr8yb15b3smuaem287` (`bra_id`),
  ADD KEY `FK5yhiu7ri51c4oigkb28skv0b2` (`cat_id`),
  ADD KEY `FKe1xjy5copyubxyicjxrxe90er` (`col_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  ADD CONSTRAINT `FK1w3c61ds5k8hk2ah45kbrr6ub` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKpesgxru7sco2we2h67bankqyb` FOREIGN KEY (`use_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK5yhiu7ri51c4oigkb28skv0b2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKe1xjy5copyubxyicjxrxe90er` FOREIGN KEY (`col_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `FKt3qx69ktr8yb15b3smuaem287` FOREIGN KEY (`bra_id`) REFERENCES `brand` (`id`);

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
