-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2022 at 03:30 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_pembayaranspp_midtrands`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `order_id` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `gross_amount` int(11) DEFAULT NULL,
  `payment_type` varchar(15) NOT NULL,
  `transaction_time` varchar(19) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `va_number` varchar(30) NOT NULL,
  `pdf_url` text NOT NULL,
  `status_code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`order_id`, `nama`, `kelas`, `gross_amount`, `payment_type`, `transaction_time`, `bank`, `va_number`, `pdf_url`, `status_code`) VALUES
('1265228912', '', '', 500000, 'bank_transfer', '2022-12-05 09:43:38', 'bca', '50345120358', 'https://app.sandbox.midtrans.com/snap/v1/transactions/95778698-eb8c-4e0a-8cfb-0727d112d7c1/pdf', '201'),
('1405433095', '', '', 500000, 'bank_transfer', '2022-12-05 09:29:16', 'bca', '50345449899', 'https://app.sandbox.midtrans.com/snap/v1/transactions/3aa85640-20d6-4552-b645-094d99e729ba/pdf', '201'),
('1525823577', 'Agus KK', 'VII', 600000, 'bank_transfer', '2022-12-06 10:17:26', 'bca', '50345823446', 'https://app.sandbox.midtrans.com/snap/v1/transactions/6b470158-a816-4f46-a642-ff26da3d5ebc/pdf', '201'),
('1744713787', '', '', 1000000, 'bank_transfer', '2022-12-06 09:29:46', 'bca', '50345231336', 'https://app.sandbox.midtrans.com/snap/v1/transactions/74e41a62-d36c-4af5-a0ff-70bd914298e5/pdf', '201'),
('1923379657', '', '', 500000, 'bank_transfer', '2022-12-06 09:45:07', 'bca', '50345969624', 'https://app.sandbox.midtrans.com/snap/v1/transactions/4aa6fb88-458d-4ebc-8617-66efb3feb972/pdf', '201'),
('265234639', 'asdasd', 'VII', 2134444, 'bank_transfer', '2022-12-06 10:06:19', 'bca', '50345040437', 'https://app.sandbox.midtrans.com/snap/v1/transactions/5647199d-35ff-4b40-880a-4fbc2bb76611/pdf', '201'),
('6254674', 'Jennie', 'VIII', 400000, 'bank_transfer', '2022-12-06 10:04:44', 'bca', '50345246882', 'https://app.sandbox.midtrans.com/snap/v1/transactions/ae8b312a-f389-4868-9bb7-9f921def8f88/pdf', '201');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
