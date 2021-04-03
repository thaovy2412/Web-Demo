-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2021 lúc 06:16 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `product`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productlist`
--

CREATE TABLE `productlist` (
  `maSanPham` int(11) NOT NULL,
  `tenSanPham` text NOT NULL,
  `hinhAnh` text NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productlist`
--

INSERT INTO `productlist` (`maSanPham`, `tenSanPham`, `hinhAnh`, `soLuong`) VALUES
(112, 'iPhone 12 Pro Max', 'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-new-600x600-200x200.jpg', 30),
(113, 'Samsung Galaxy S21 Ultra 5G', 'https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', 10),
(114, 'iPhone 12 mini', 'https://cdn.tgdd.vn/Products/Images/42/228741/iphone-mini-do-new-600x600-600x600.jpg', 11),
(115, 'Vivo Y51', 'https://cdn.tgdd.vn/Products/Images/42/228950/vivo-y51-bac-600x600-600x600.jpg', 42),
(116, 'Samsung Galaxy Z Fold2 5G', 'https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-vang-dong-600x600.jpg', 2),
(117, 'Xiaomi Redmi Note 10', 'https://cdn.tgdd.vn/Products/Images/42/222758/xiaomi-redmi-note-10-thumb-green-600x600-1-600x600.jpg', 8),
(118, 'OPPO Reno3 Pro', 'https://cdn.tgdd.vn/Products/Images/42/216172/oppo-reno3-pro-den-new-600x600-600x600.jpg', 24),
(119, 'Realme 6 Pro', 'https://cdn.tgdd.vn/Products/Images/42/214645/realme-6-pro-do-new-600x600-600x600.jpg', 5),
(120, 'Samsung Galaxy Note 20 Ultra 5G', 'https://cdn.tgdd.vn/Products/Images/42/225063/sam-sung-note-20-ultra-vang-dong-600x600.jpg', 10),
(121, 'iPhone 12 Pro', 'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-bac-new-600x600-600x600.jpg', 18);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
