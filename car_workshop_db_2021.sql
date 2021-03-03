-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 04:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_workshop_db_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `license_plate` varchar(11) NOT NULL,
  `owner_identification` varchar(10) NOT NULL,
  `mark` varchar(15) NOT NULL,
  `model` varchar(15) NOT NULL,
  `km` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`license_plate`, `owner_identification`, `mark`, `model`, `km`) VALUES
('mkz78d', '1111111111', 'mazda', 'x2', 10000),
('jyf13', '2222222222', 'kia', 'sportage', 145000);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `identification_card` varchar(11) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `identification_card`, `direction`, `phone`) VALUES
(4, 'camila', '1111111111', 'avenida sur', '8882536'),
(5, 'Cesar Cardona', '2222222222', 'avenida norte', '8852626');

-- --------------------------------------------------------

--
-- Table structure for table ` pieces`
--

CREATE TABLE ` pieces` (
  `reference` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table ` pieces`
--

INSERT INTO ` pieces` (`reference`, `description`, `price`, `stock`) VALUES
('1', 'rin 24 para kia xs', 2000, 2),
('2', 'bateria para carro grande', 1500, 3);

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `repair_number` int(11) NOT NULL,
  `license_plate` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `admission_date` date NOT NULL,
  `departure_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`repair_number`, `license_plate`, `description`, `admission_date`, `departure_date`) VALUES
(2, 'mkz78d', 'cliente reporta problema con encendido. solicita revision y cambio de bateria', '2021-02-02', '2021-02-04'),
(3, 'jyf13', 'cliente solicita cambio de aceite y de llantas traseras', '2021-02-03', '2021-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `repair_detail`
--

CREATE TABLE `repair_detail` (
  `repair_number` int(11) NOT NULL,
  `replacement_parts` varchar(60) NOT NULL,
  `units` int(20) NOT NULL,
  `installation_price` float NOT NULL,
  ` total_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repair_detail`
--

INSERT INTO `repair_detail` (`repair_number`, `replacement_parts`, `units`, `installation_price`, ` total_price`) VALUES
(2, 'bateria carro', 1, 30000, 'se realiza instalacion bateria, la cual funciona correctamente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table ` pieces`
--
ALTER TABLE ` pieces`
  ADD PRIMARY KEY (`reference`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`repair_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `repair_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
