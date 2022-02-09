-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2022 at 02:18 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsale_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'bebida energetica'),
(2, 'pisco'),
(3, 'ron'),
(4, 'bebida'),
(5, 'snack'),
(6, 'cerveza'),
(7, 'vodka');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `url_image` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `discount` int NOT NULL,
  `category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `url_image`, `price`, `discount`, `category`) VALUES
(5, 'ENERGETICA MR BIG', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg', 1490, 20, 1),
(6, 'ENERGETICA RED BULL', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/redbull8381.jpg', 1490, 0, 1),
(7, 'ENERGETICA SCORE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/logo7698.png', 1290, 0, 1),
(8, 'PISCO ALTO DEL CARMEN 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto8532.jpg', 7990, 10, 2),
(9, 'PISCO ALTO DEL CARMEN 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/alto408581.jpg', 5990, 0, 2),
(10, 'PISCO ARTESANOS 35º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/artesanos8818.jpg', 3990, 0, 2),
(11, 'PISCO BAUZA 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bauza408831.jpg', 4990, 0, 2),
(12, 'PISCO CAMPANARIO 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario8845.jpg', 2990, 20, 2),
(13, 'PISCO CAMPANARIO 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/campanario408881.jpg', 3990, 20, 2),
(14, 'PISCO ESPIRITU DEL ELQUI 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8936.jpg', 5990, 20, 2),
(15, 'PISCO ESPIRITU DEL ELQUI 45º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/espiritu8957.jpg', 6990, 5, 2),
(16, 'PISCO HORCON QUEMADO 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon359049.jpg', 6990, 20, 2),
(17, 'PISCO HORCON QUEMADO 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon409062.jpg', 7990, 20, 2),
(18, 'PISCO HORCON QUEMADO 46º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/horcon469075.jpg', 8990, 20, 2),
(19, 'PISCO MISTRAL 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral359200.jpg', 4990, 20, 2),
(20, 'PISCO MISTRAL 40º ', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mistral409215.jpg', 4990, 20, 2),
(21, 'PISCO TRES ERRES 35º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr359305.jpg', 4590, 20, 2),
(22, 'PISCO TRES ERRES 40º', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/rrr409319.jpg', 4990, 20, 2),
(23, 'RON BACARDI AÑEJO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardi9450.jpg', 4990, 0, 3),
(24, 'RON BACARDI 8 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/bacardianejo9463.jpg', 5990, 0, 3),
(25, 'RON ABUELO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/abuelo9475.jpg', 3990, 0, 3),
(26, 'RON BARCELO AÑEJO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/barceloanejo9553.jpg', 4990, 0, 3),
(27, 'RON BARCELO DORADO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/barcelodorado9567.jpg', 3990, 0, 3),
(28, 'RON FLOR DE CAÑA 4 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor49664.jpg', 3990, 0, 3),
(29, 'RON FLOR DE CAÑA 5 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/flor59677.jpg', 4590, 0, 3),
(30, 'RON HAVANA AÑEJO RESERVA', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaan-ejo9750.jpg', 6990, 0, 3),
(31, 'RON HAVANA ESPECIAL', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/havanaespecial9768.jpg', 5990, 20, 3),
(32, 'RON PAMPERO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/pampero-especial0296.jpg', 5490, 20, 3),
(33, 'RON PAMPERO ANIVERSARIO', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/ron_pampero_aniversario0311.jpg', 20000, 15, 3),
(34, 'ENERGETICA MONSTER RIPPER', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mosterriper0436.jpg', 1990, 0, 1),
(35, 'ENERGETICA MAKKA DRINKS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/makka-drinks-250ml0455.jpg', 1190, 0, 1),
(36, 'ENERGETICA MONSTER VERDE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/monsterverde0476.jpg', 1990, 0, 1),
(37, 'COCA COLA ZERO DESECHABLE', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/cocazero9766.jpg', 1490, 0, 4),
(38, 'RON BOTRAN AÑEJO 5 AÑOS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/ronbotran9337.jpg', 4990, 0, 3),
(39, 'RON MITJANS', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/mitjan6396.jpg', 2990, 0, 3),
(47, 'Maní salado', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisaladomp4415.jpg', 600, 0, 5),
(48, 'SPRITE 1 1/2 Lts', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-lata-33cl5575.jpg', 1500, 0, 4),
(50, 'SPRITE 2 Lt', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/sprite-2lt4365.jpg', 1800, 0, 4),
(52, 'Fanta', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/fanta_2lt5236.jpg', 1500, 0, 4),
(53, 'Mani Sin Sal', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/manisinsalmp6988.jpg', 500, 0, 5),
(54, 'Papas Fritas Lisas Bolsa Grande', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisasgrande7128.jpg', 1490, 0, 5),
(55, 'Papas Fritas Bolsa Pequeña', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/papaslisas7271.jpg', 500, 0, 5),
(56, 'Papas Fritas Tarro', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/78028005335657432.jpg', 1990, 0, 5),
(57, 'COCA COLA NORMAL DESECHABLE 1500cc', '', 1500, 0, 4),
(58, 'COCA COLA LIGHT DESECHABLE', '', 1500, 0, 4),
(68, 'Bebida Sprite 1 Lt', '', 1250, 10, 4),
(77, 'ENERGETICA MONSTER RIPPER', '', 1990, 0, 1),
(79, 'ENERGETICA MONSTER VERDE', '', 1990, 0, 1),
(87, 'PISCO MISTRAL 35°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/358978.jpg', 4990, 0, 2),
(88, 'PISCO MISTRAL GRAN NOBEL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/grannobel9104.jpg', 19900, 0, 2),
(89, 'PISCO MISTRAL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/409346.jpg', 4990, 0, 2),
(90, 'PISCO MISTRAL 46°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/469463.jpg', 7890, 0, 2),
(91, 'PISCO MISTRAL NOBEL 40°', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobel409551.jpg', 19990, 0, 2),
(92, 'PISCO MISTRAL NOBEL 46', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/nobelanejado9639.jpg', 15990, 15, 2),
(98, 'Cerveza Escudo Normal LATA 350CC', '', 600, 0, 6),
(99, 'Cerveza Escudo Sin Filtrar LATA 350CC', '', 800, 0, 6),
(104, 'ABSOLUT', 'https://dojiw2m9tvv09.cloudfront.net/11132/product/absolut21381.png', 8990, 30, 7);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
