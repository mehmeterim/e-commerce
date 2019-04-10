-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Nis 2019, 19:58:02
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `e-commerce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `costumerId` int(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `phone_numbers` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adress`
--

INSERT INTO `adress` (`id`, `description`, `costumerId`, `city`, `town`, `district`, `street`, `phone_numbers`) VALUES
(1, 'my adress', 1, 'bursa', 'yıldırım', 'demetevler', 'a245', '51231232131'),
(2, 'my adress22', 1, 'ankara', 'merkez', 'demetevler', 'he', '12313'),
(3, 'my adress3', 1, 'istanbul', 'asdsad', 'adad', 'adasd', '1231312'),
(4, 'adresim', 2, 'elazig', 'merkez', 'sokak', 'sokak', '2313'),
(16, '1', 9, 'bursa', 'asdas', 'asdad', 'asdasd', '12321'),
(17, '12312', 10, '312312', '213213', '213123', '213', '12321'),
(18, 'asdadasd', 11, '1', '2', '3', '4', '213123'),
(19, 'sadadsada', 12, 'ist', 'ist1', 'ist2', 'ist3', '1231231');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `costumerId` int(255) NOT NULL,
  `date` datetime NOT NULL,
  `total` int(255) NOT NULL,
  `billing_address` text NOT NULL,
  `shipping_address` text NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `basket`
--

INSERT INTO `basket` (`id`, `costumerId`, `date`, `total`, `billing_address`, `shipping_address`, `status`) VALUES
(55, 12, '2019-04-08 15:19:36', 1200, '19', '19', 1),
(56, 12, '2019-04-08 15:34:26', 1200, '19', '19', 1),
(57, 1, '2019-04-09 23:09:40', 3000, '1', '1', 1),
(58, 1, '2019-04-10 18:44:39', 3749, '1', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket_product`
--

CREATE TABLE `basket_product` (
  `id` int(11) NOT NULL,
  `basketId` int(255) NOT NULL,
  `productId` int(255) NOT NULL,
  `productAmount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `basket_product`
--

INSERT INTO `basket_product` (`id`, `basketId`, `productId`, `productAmount`) VALUES
(35, 55, 2, 1),
(36, 56, 2, 1),
(37, 57, 1, 1),
(38, 58, 3, 1),
(39, 58, 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `images`) VALUES
(1, 'Bilgisayar', 'bbbbb', ''),
(2, 'Telefon', 'bbb', ''),
(3, 'Television', '......', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `costumer`
--

CREATE TABLE `costumer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `costumer`
--

INSERT INTO `costumer` (`id`, `name`, `surname`, `email`, `password`, `phone`) VALUES
(1, 'mehmet', 'erim', 'a@hotmail.com', 'mehmet563', '21312312321321'),
(2, 'ahmet', 'asdasd', 'ahmet@hotmail.com', 'mehmet563', '1231231232'),
(9, 'akan', 'erim', 'akan@hotmail.com', 'mehmet563', '12321'),
(11, 'akan', 'erim', 'aka2@hotmail.com', 'mehmet563', '213123'),
(12, 'adasd', 'asdas', 'akan3@hotmail.com', 'mehmet563', '1231231');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `stock` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `categoryid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `name`, `brand`, `description`, `stock`, `price`, `images`, `categoryid`) VALUES
(1, 'Macbook', 'Apple Computer', '2.3GHz dual-core 7th-generation Intel Core i5 processor Turbo Boost up to 3.6GHz Intel Iris Plus Graphics 640 8GB 2133MHz LPDDR3 memory 128GB SSD storage1 Retina display Two Thunderbolt 3 ports', 18, 3000, 'http://demo.kodsozluk.com/images/urunler/f519b6add13b1356c7ad9dc9cf03c86d.jpg', 1),
(2, 'IPhone X', 'Apple Phone', '21312321312321321', 7, 1200, 'http://demo.kodsozluk.com/images/urunler/7ce395b2c8419a4232a40c87739be362.jpg', 2),
(3, 'SONY XPERİA XA1', 'Sony', 'SONY XPERİA XA1SONY XPERİA XA1SONY XPERİA XA1SONY XPERİA XA1SONY XPERİA XA1SONY XPERİA XA1', 96, 750, 'http://demo.kodsozluk.com/images/urunler/sony-xperia-l1-negro-g3311-7311271583844.jpg', 2),
(4, 'LG 55HLDS', 'LG', '.....', 49, 2999, 'http://demo.kodsozluk.com/images/urunler/838-lg-55lh615v-led-televizyon_251982.jpg', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `statusName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `status`
--

INSERT INTO `status` (`id`, `statusName`) VALUES
(1, 'Waiting'),
(2, 'Ready'),
(3, 'Sending');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basket_product`
--
ALTER TABLE `basket_product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Tablo için AUTO_INCREMENT değeri `basket_product`
--
ALTER TABLE `basket_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
