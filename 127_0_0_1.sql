-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 07:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arid`
--
CREATE DATABASE IF NOT EXISTS `arid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arid`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `cpm` varchar(5) DEFAULT NULL,
  `wpm` varchar(5) DEFAULT NULL,
  `hrate` varchar(6) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(200) NOT NULL,
  `legal_issue` varchar(250) NOT NULL DEFAULT '''''',
  `des_legal_issue` varchar(500) NOT NULL DEFAULT '''''',
  `bck_experience` varchar(1000) NOT NULL DEFAULT '''''',
  `request` varchar(3) NOT NULL DEFAULT '''''',
  `is_consultation` tinyint(4) NOT NULL DEFAULT 0,
  `friend_id` int(20) NOT NULL DEFAULT 0,
  `address` varchar(30) NOT NULL DEFAULT '''''',
  `fax` varchar(30) NOT NULL DEFAULT '''''',
  `website` varchar(30) NOT NULL DEFAULT '''''',
  `phone_num` varchar(20) NOT NULL DEFAULT '''''',
  `user_type` int(11) NOT NULL DEFAULT 1 COMMENT '1: Client; 2:Lawyer; ',
  `jurisdiction` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `license_number` varchar(255) DEFAULT '''''',
  `licence_status` int(11) NOT NULL DEFAULT 0,
  `device_token` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `avatar`, `cpm`, `wpm`, `hrate`, `fname`, `email`, `state`, `legal_issue`, `des_legal_issue`, `bck_experience`, `request`, `is_consultation`, `friend_id`, `address`, `fax`, `website`, `phone_num`, `user_type`, `jurisdiction`, `license_number`, `licence_status`, `device_token`) VALUES
(14, 'lawyer01', 'b8a7643f79552970fb129cb8f1bdf6d2', '1577460621.png', '165', '260', '1000', 'Dave Gomes', 'raygalvan@gmail.com', '4', 'Personal Injury Law', '', 'Hello', '', 0, 0, 'Fayetteville ', '', '', '', 2, 2, '\'', 1, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(15, 'client01', '123', 'M_15_1570410909.png', '0', '0', '0', 'Jane Doe', 'raygalvan@gmail.com', '2', 'Estate Planning Law', '', '', '', 0, 0, 'Juno ', '', '', '', 1, 0, '\'\'', 0, ''),
(41, 'client03', '123', 'M_41_1526790334.png', NULL, NULL, NULL, 'Al Imran', 'raygalvan@gmail.com', 'Other', 'Personal Injury Law', 'legal issue fields', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(42, 'client04', '25d55ad283aa400af464c76d713c07ad', '1577206003.png', '140', '122', '1500', 'Client04', 'raygalvan@me.com', '43', 'Personal Injury Law', '', '', '', 0, 0, 'Jono', '', '', '', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(47, 'Jon', '123', 'M_47_1523007413.jpeg', '100', '200', '150', 'Jon Jones', 'jon@lawmessenger.com', 'Tx', 'Criminal Law', '', 'Iâ€™ve gone to jail 3 times ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(48, 'Rick', '123', 'M_48_1523282874.jpeg', '80', '180', '200', 'Rick Galvan', 'rick@lawmessenger.com', 'TX', 'Employment Law', '', 'Not applicable... testing app', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(49, 'Chet', '123', 'M_49_1526793696.jpeg', '80', '150', '400', 'David Roy Galvan', 'chet@lawmessenger,com', 'The Rio Grande Valley', 'Criminal Law', '', 'Former MS13 Gang member now criminal defense lawyer.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(50, 'RaySr', 'f331f7b867e582cdaf6a4b55df9837f8', 'M_50_1526793457.jpg', '140', '200', '350', 'Ray Galvan, Sr.', 'raygalvan@ymail.com', 'Harlingen, Texas', 'General Practice Law', '', 'Colonel in Air Force. Korean War hero. ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(51, 'Client55', '123', 'M_51_1523222692.png', NULL, NULL, NULL, 'Sammy Hagar', 'client55@lawmessenger.com', 'Cabo San Lucas', 'Traffic Tickets', 'I canâ€™t drive 55', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(53, 'client3', '123', 'M_53_1523119618.jpeg', NULL, NULL, NULL, 'client3', 'client3@lawmessenger.com', 'TX', 'Personal Injury Law', 'None', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(54, 'RG', '25d55ad283aa400af464c76d713c07ad', '1577214479.png', '100', '220', '750', 'Ray Galvan, Jr.', 'lawupco@gmail.com', 'Texas', 'Personal Injury Law', '', 'SMU School of Law Graduate. 30 years of general practice experience.', '', 1, 0, '', '', '', '', 1, 0, '\'', 0, 'eSrqeb3ALlI:APA91bFZph0MMJQH4GuTYZQrOnE2raZ8epoPBobAIhF_Jwh4WtW2Rz2X4Mu0F5omheC5ppDOuJvGxWv391eIdD623CehD9qyPmriY_26jtxDLKKjqxErd95dzp02C3C-O1RtdsoCTga7'),
(55, 'Patti', '839e95737a90ab7c5c1c2787e0f6dc5a', 'M_55_1523020839.jpeg', '140', '200', '300', 'Patricia Gonzales', 'patti@lawmessenger.com', 'TX', 'Personal Injury Law', '', 'I was involved in a hit and run.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(56, 'Howard', '25d55ad283aa400af464c76d713c07ad', 'M_56_1523021153.jpeg', NULL, NULL, NULL, 'Howard Stern', 'howard@lawmessenger.com', 'NY', 'Contract Law', 'New contract with SirusXM', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(58, 'Homer', '123', 'M_58_1523031591.jpeg', NULL, NULL, NULL, 'Homer Simpson', 'homer@lawmessenger.com', 'TX', 'Criminal Law', 'Possession of controlled substance ', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(60, 'vml', '123', 'M_60_1522908470.png', '100', '300', '10', 'vml', 'v2vimal@gmail.com', 'Gujarat', 'General Practice Law', '', 'This is test account', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(61, 'Dave', '25d55ad283aa400af464c76d713c07ad', 'M_61_1523029584.jpeg', '100', '200', '250', 'Dave Gomes', 'dave@lawmessenger.com', '2', 'Employment Law', '', 'Harvard Law School. Former attorney and male model.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(64, 'DRG', '25d55ad283aa400af464c76d713c07ad', 'M_64_1526791911.png', NULL, NULL, NULL, 'David R. Galvan', 'drg@lawmessenger.com', 'New York', 'General Practice Law', 'I killed a pitcher of beer', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(66, 'Peanut', '123', 'M_66_1523023713.jpeg', NULL, NULL, NULL, 'Peanut', 'peanut@lawmessenger.com', 'TX', 'Immigration Law', 'Iâ€™m an illegal alien dog', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(67, 'raygalvan', '123', 'M_67_1523350568.jpeg', '140', '200', '350', 'Ray Galvan, Jr.', 'raygalvan@me.com', 'TX', 'Intellectual Property Law', '', 'Founder of LawMessenger ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(77, 'Andre', '25d55ad283aa400af464c76d713c07ad', '1577291146.png', '0', '0', '0', 'Andre the Giant', 'andre@lawmessenger.com', '9', 'Immigration Law', '', '', '', 0, 0, 'Miami', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(78, 'DB', '123', 'M_78_1523256476.jpg', '140', '250', '300', 'Darrin Berlof', 'darrin@lawmessenger.com', 'Dallas', 'Criminal Law', '', 'Texas A&M School of Law', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(80, 'RSG', '123', 'M_80_1523435571.png', '120', '250', '400', 'Robert S. Gregg', 'rsg@lawmessenger.com', '4423, 2024 Commerce St, Dallas, TX 75201', 'Criminal Law', '', 'Attorney Robert S. Gregg has been recognized by the NAJ as a Premier DUI, Criminal, and Personal Injury Trial Attorney.\r\nMr. Gregg is a reputable trial attorney, with an extremely strong track record of assertively and effectively advocating on behalf of clients charged with misdemeanors, felonies and DWIs. We will not plea bargain your case without exhausting every other possible avenue. We will appear in court on your behalf and advocate for the best possible outcome.\r\nEDUCATION\r\nWashburn University School of Law, Topeka, Kansas, 1990 J.D., Doctor of Jurisprudence\r\nUniversity of Houston, Houston, Texas, 1984 B.S., Bachelor of Science Major: Industrial Technology\r\nCREDENTIALS\r\nTexas Municipal Justice Bar Association past President\r\nMunicipal Justice Bar Association past President\r\nDallas Criminal Defense Bar Association\r\nTarrant County Criminal Defense Lawyer Association\r\nAmerican Bar Association', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(82, 'Kate', '25d55ad283aa400af464c76d713c07ad', 'M_82_1523767076.jpeg', '0', '0', '0', 'Kate B', 'kate@lawmessenger.com', '5', 'Intellectual Property Law', '', '', '', 0, 0, 'Los Angeles', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(83, 'Bob', 'c6f191cf8e565c19da2aca06d703f965', '1577093216.png', NULL, NULL, NULL, 'Dr. Robert Taylor', 'bob@lawmessenger.com', '5', 'Medical Malpractice Law', 'I cut off the wrong leg of a patient. ', '', '', 0, 0, 'LA', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(84, 'vim', '123', 'M_84_1524202123.png', NULL, NULL, NULL, '', 'v2vimal@gmail.com', 'test', 'General Practice Law', 'test', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(85, 'jay', '123', 'M_85_1524203045.png', '140', '200', '300', 'jay', 'jaysukh922@gmail.com', 'test', 'General Practice Law', '', 'test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(87, 'Tony', '123', 'M_87_1524444353.jpeg', NULL, NULL, NULL, 'Tony Bui', 'raygalvan@ymail.com', 'Texas', 'Medical Malpractice Law', 'I donâ€™t have any issues I just want advise.', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(89, 'SumDum', '123', 'M_89_1524458439.png', NULL, NULL, NULL, '', 'sumdumguyjr@gmail.com', 'TX', 'Criminal Law', 'Test', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(92, 'Selena', '25d55ad283aa400af464c76d713c07ad', 'M_92_1524502040.jpeg', NULL, NULL, NULL, 'Selena Gomez', 'selena@lawmessenger.com', 'TX', 'Immigration Law', 'Iâ€™m being deported ', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(93, 'Gramps', '123', 'M_93_1524514724.png', '100', '200', '650', 'Ray Galvan, Sr.', 'raygalvan@gmail.com', 'TX', 'Estate Planning Law', '', 'Former Harvard law professor. Partime bus driver.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(95, 'Gary', '123', 'M_95_1524890019.jpeg', NULL, NULL, NULL, 'Gary Dellabte', 'raygalvan@me.com', 'NYC', 'Contract Law', 'Contract negotiations ', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(96, 'Robin', '25d55ad283aa400af464c76d713c07ad', 'M_96_1524890489.jpeg', NULL, NULL, NULL, 'Robin Quivers', 'robin@lawmessenger.com', 'NYC', 'Medical Malpractice Law', 'Misdiagnosed', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(97, 'Johnny', '123', 'M_97_1525052105.jpeg', '120', '220', '500', 'Johnny', 'lawupco@gmail.com', 'LA', 'Criminal Law', '', 'Got a murderer off. ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(99, 'Bill', '123', 'M_99_1525242857.jpeg', NULL, NULL, NULL, 'Bill Gates', 'Bill@140cpm.com', 'Palo Alto, CA', 'Intellectual Property Law', 'Antitrust and patent infringement ', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(100, 'Beet', '135db1211123a234c3a3f69e9abd5987', 'M_100_1526848700.png', '15', '20', '500', 'Beetle Juice', 'beet@lawmessenger.com', '1', 'Intellectual Property Law', '', 'Iâ€™m Beetle and Iâ€™m bad as can.', '', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, ''),
(101, 'Les', '123', 'M_101_1525353223.png', '10', '15', '500', 'Lester', 'raygalvan@me.com', 'NYC', 'Criminal Law', '', 'Will get you off', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(103, 'mafe', 'mafemafe', 'M_103_1525591021.jpg', NULL, NULL, NULL, 'Hamaza', 'gulfam.khan.dev@gmail.com', 'Pakitan', 'Family Law', 'NIL', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(104, 'mafeII', 'mafe', 'M_104_1525591490.jpg', 'cpm', 'wpm', '12', 'test lawer', 'gulfam.khan.dev@gmail.com', 'Pakitan', 'Family Law', '', 'NIL NIL', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(105, 'Jj', '123', 'M_105_1525611620.png', '100', '200', '100', 'John jones', 'raygalvan@me.com', 'TX', 'Area of Legal Interest', '', 'Trst', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(108, 'Kirk', '123', 'M_108_1525708191.jpg', '150', '250', '450', 'Kirk Willis', 'raygalvan@gmail.com', 'TX', 'Civil Litigation Law', '', 'Founder of The Willis Law Group', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(110, 'David', '123', 'M_110_1525727834.jpg', NULL, NULL, NULL, 'David Galvan', 'raygalvan@me.com', 'TX', 'Area of Legal Interest', 'None', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(111, 'lawyer02', '123', 'M_111_1525926239.png', '100', '200', '300', 'Lawyer Profile', 'raygalvan@ymail.com', 'Texas', 'Family Law', '', 'test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(114, 'salman', '123', 'M_114_1526320276.png', '20', '30', '10', 'Salman Bhai', 'anjum.salman808@gmail.com', 'Pakistan', 'Criminal Law', '', '10 Years', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(115, 'vim2', '123', 'M_115_1526553381.png', NULL, NULL, NULL, 'vim2', 'vishnuparmar007@yandex.com', 'test', 'General Practice Law', 'This is new test client account.', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(116, 'vim3', '123', 'M_116_1526553589.png', NULL, NULL, NULL, 'vim3', 'v3vimal@gmail.com', 'test', 'General Practice Law', 'This is test client account', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(117, 'law1', '123', 'M_117_1526553812.png', '200', '300', '500', 'law1', 'law1@gmail.com', 'test', 'General Practice Law', '', 'This is test lawyer account', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(118, 'law2', '123', 'M_118_1526554691.png', '200', '300', '500', 'law2', 'law2@gmail.com', 'test', 'General Practice Law', '', 'test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(119, 'law3', '123', 'M_119_1526556964.png', '200', '300', '500', 'law3', 'law3@gmail.com', 'law3', 'General Practice Law', '', 'law3', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(120, 'vim4', '123', 'M_120_1526557351.png', NULL, NULL, NULL, 'vim4', 'vima4@gmail.com', 'test', 'General Practice Law', 'This is test client account', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(121, 'Lawyer11', '123', 'M_121_1526789496.jpeg', '140', '200', '400', 'F.Lee Bailey', 'raygalvan@gmail.com', 'New York', 'General Practice Law', '', 'Disbarred', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(124, 'Tam', '123', 'M_124_1526609285.jpeg', '100', '200', '450', 'Tamie Oxley', 'raygalvan@me.com', 'Dallas, Texas', 'Corporate Law', '', 'Test Profile', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(125, 'usr_gulfam', '123456', 'M_125_1526621897.jpg', '30', '30', '5', 'Gulfam Khan', 'gulfam.khan.dev@gmail.com', 'Pakistan', 'General Practice Law', '', 'Just for testing purpose.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(126, 'Dog', '123', 'M_126_1526659569.jpeg', '10', '3', '5', 'Peanut McBalls', 'raygalvan@me.com', 'TX', 'General Practice Law', '', 'Iâ€™m a dog ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(127, 'Client33', '123', 'M_127_1526659935.png', NULL, NULL, NULL, 'Client Jones', 'raygalvan@gmail.com', 'TX', 'General Practice Law', 'None', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(128, 'RGJ', '123', 'M_128_1526845544.jpeg', '140', '250', '400', 'Ray Galvan, Jr.', 'raygalvan@me.com', 'Dallas, Texas', 'General Practice Law', '', 'Test profile ðŸ‘¹', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(129, 'Lawyer99', '123', 'M_129_1526791176.png', '140', '200', '450', 'Lawyer99', 'raygalvan@me.com', 'TX', 'General Practice Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(130, 'RayJr', '123', 'M_130_1526781691.png', '100', '200', '350', 'Ray Galvan Jr', 'raygalvan@gmail.com', 'TX', 'General Practice Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(131, 'Lawyer44', '123', 'M_131_1526743640.png', '140', '200', '123', 'Lawyer44', 'raygalvan@gmail.com', 'TX', 'General Practice Law', '', 'None ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(132, 'Client99', '123', 'M_132_1526743766.png', NULL, NULL, NULL, '', 'raygalvan@me.com', 'TX', 'General Practice Law', 'Text', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(133, 'Client88', '123', 'M_133_1526759102.png', NULL, NULL, NULL, 'Client88', 'raygalvan@me.com', 'TX', 'General Practice Law', 'None', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(135, 'Lawyer66', '123', 'M_135_1526998254.png', '100', '200', '300', 'Lawyer66', 'raygalvan@me.com', 'Boston, Maine', 'Medical Malpractice Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(136, 'Demo', 'pass', 'M_136_1527151767.png', '140', '200', '500', 'John Q. Lawyer', 'info@lawmessenger.net', 'Californai', 'Bankruptcy Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(137, 'Lawyer07', '123', 'M_137_1527151903.png', NULL, NULL, NULL, 'Lawyer07', 'raygalvan@me.com', 'Denver, Colorado', 'Contract Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(139, 'BN', '123', 'M_139_1527152619.png', '140', '250', '300', 'Berlof & Newton', 'db@lawmessenger.com', 'Here', 'Criminal Law', '', 'www.dallasattorney.com', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(140, 'lawyer12', '25d55ad283aa400af464c76d713c07ad', '1576830763.png', '115', '220', '750', 'Lawyer12', 'lawyer12@lawmessenger.com', 'here', '3', '', 'test', '', 1, 0, '', '', '', '', 1, 2, '123345', 0, 'emcSGRkVAIE:APA91bH57F_pHMOf_mnhr0_PVeNyUAh6XEhMR1xKng8VD_C-ErXOQQovvNNY2S7ypyKEMV_OLUOkdZffctHFdTcbHnjQ7QbKmDYkBBEThL25j-Lda10j1dJBq0JGdq-YuZh3dcn92eHS'),
(141, 'Law101', '123', 'M_141_1527153781.png', '180', '400', '150', 'Law101', 'law@lawmessenger.com', 'Beach ', 'General Practice Law', '', 'Hey ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(142, 'Client11', '123', 'M_142_1527154084.png', NULL, NULL, NULL, '', 'raygalvan@gmail.com', 'Here, Alaska', 'Family Law', 'The Palins', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(143, 'Tim', '123', 'M_143_1527244282.png', '140', '250', '450', 'Tiny Tim', 'tinytim@lawmessenger.com', 'Kansas', 'Social Security Disability Law', '', 'Testing', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(144, 'Client22', '25d55ad283aa400af464c76d713c07ad', 'M_144_1527351677.png', NULL, NULL, NULL, 'Client22', 'client22@lawmessenger.com', 'Houston Texas', 'Criminal Law', 'Possession of controlled substance', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(145, 'Al', '123', 'M_145_1527436984.jpeg', '100', '300', '750', 'Al Dershowitz', 'raygalvan@me.com', 'NYC', 'Criminal Law', '', 'Represented OJ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(147, 'Cornaceae', '66eY^wr2pvL', 'M_147_1529802110.png', NULL, NULL, NULL, 'Cornaceae', 'ravi.raj.kumar143@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good man! Behold is  a good offer for you. http://bit.ly/2JVdMQh', 'Good man! Behold is  a good offer for you. http://bit.ly/2JVdMQh', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(148, 'Danishrehman', '12345678', 'M_148_1532494473.jpg', '50', '50', '10', 'Danish', 'danish.rehman08@gmail.com', 'Karachi Pakistan ', 'General Practice Law', '', 'Aaa', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(149, 'Lawyer', '202cb962ac59075b964b07152d234b70', 'M_149_1570260997.png', '140', '499', '500', 'Arvind', 'raygalvan@ymail.com', '10', 'Area of Legal Interest', '', 'Game show host', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(150, 'Ehsan', 'tahakhan', 'M_150_1532804018.png', '', '', '', 'Ehsan', 'ehsanumar1345@gmail.com', 'karachi', 'Social Security Disability Law', '', 'jsddsd', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(154, 'Test', '123', 'M_154_1534292323.png', '140', '200', '300', 'Test Lawyer ', 'raygalvan@me.com', 'TX', 'General Practice Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(155, 'Test2', '123', 'M_155_1534292543.jpg', '140', '200', '200', 'Test2 Lawyer', 'raygalvan@gmail.com', 'TX', 'Criminal Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(156, 'qaisarkhursheed@hotmail.com', 'qais@lahore', 'M_156_1534326961.jpg', 'jh', 'kjh', '20', 'Qaisar Mughal', 'qaisarkhursheed@hotmail.com', 'Lahore', 'Family Law', '', 'WebDeveloper', '', 0, 0, 'Lahore', 'NON', 'SignOfSolutions', '03029633211', 1, 0, '\'\'', 0, ''),
(158, 'kirk_kh', '9gr310', 'M_158_1534444211.jpg', '', '', '30', 'Oleksandr', 'kirk@kirk.kh.ua', 'Ukraine', 'Corporate Law', '', 'Test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(159, 'Client101', '123', 'M_159_1534921681.png', '150', '299', '599', 'CLient 101', 'raygalvan@me.com', 'Texas', 'Medical Malpractice Law', '', 'test', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(160, 'lawyersdfdaafdsf01', '123', 'M_14_1523041592.jpeg', '100', '200', '350', '\'.$myfname.\'', 'bd.2010news@gmail.com', 'Iowa', 'Personal Injury Law', '', '\'.$mybck_experience.\'', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(163, 'fjhgfjhf', '123', 'M_14_1523041592.jpeg', '100', '200', '350', '\'.$myfname.\'', 'bd.2010news@gmail.com', 'Iowa', 'Personal Injury Law', '', '\'.$mybck_experience.\'', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(164, 'Eshan', '1253', 'M_14_1523041592.jpeg', '100', '200', '350', '\'.$myfname.\'', 'bd.2010news@gmail.com', 'Iowa', 'Personal Injury Law', 'uugikg', 'iuytiyg', '554', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(165, 'QaisarKhan', '123456', 'M_14_1523041592.jpeg', '100', '200', '350', '\'.$myfname.\'', 'bd.2010news@gmail.com', 'Iowa', 'Personal Injury Law', '', '\'.$mybck_experience.\'', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(166, 'KeithDon', 'N8o%lcyo34I', 'M_166_1538076202.png', NULL, NULL, NULL, 'KeithDon', 'gcrcompane@yandex.ru', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good afternoon. \r\nInquiry. I wrote everything in the app, reply to my email. Thank you in advance. \r\n \r\nhttp://pohacage.beget.tech/inquiry.zip', 'Good afternoon. \r\nInquiry. I wrote everything in the app, reply to my email. Thank you in advance. \r\n \r\nhttp://pohacage.beget.tech/inquiry.zip', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(167, 'Dobbin', '66eY^wr2pvL', 'M_167_1539841999.png', NULL, NULL, NULL, 'Dobbin', 'sydneyhardy@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there, Good news ! - A pleasant surprise of $/â‚¬ 1600 welcome bonus  To qualify click on the link below http://bit.ly/2JU8ftc', ' Hy there, Good news ! - A pleasant surprise of $/â‚¬ 1600 welcome bonus  To qualify click on the link below http://bit.ly/2JU8ftc', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(168, 'Gregorynal', '96Qhb#2labN', 'M_168_1539981068.png', NULL, NULL, NULL, 'Gregorynal', 'roman_abibullaev868@mail.ru', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello! \r\nThat is \r\nan amazing \r\noffering for you. \r\n \r\nhttp://bit.ly/2RUwITz', 'Hello! \r\nThat is \r\nan amazing \r\noffering for you. \r\n \r\nhttp://bit.ly/2RUwITz', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(169, 'Neoceratodus', '66eY^wr2pvL', 'M_169_1540324653.png', NULL, NULL, NULL, 'Neoceratodus', 'gargamel.oce62@hotmail.fr', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi! Here is  nice present - the excellent collection of worldâ€™s top slots, roulette and blackjack games  Are you in?  http://bit.ly/2J8O8I8', 'Hi! Here is  nice present - the excellent collection of worldâ€™s top slots, roulette and blackjack games  Are you in?  http://bit.ly/2J8O8I8', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(170, 'DavidpaG', 'vaG96f6n@yE', 'M_170_1540746858.png', NULL, NULL, NULL, 'DavidpaG', '02rkn_rchs@mail.ru', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Ciao! Look at a fine offering for you. \r\n \r\nhttp://bit.ly/2ELy3tj', 'Ciao! Look at a fine offering for you. \r\n \r\nhttp://bit.ly/2ELy3tj', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(171, 'AndrewGat', 'cwx96R@7yiG', 'M_171_1541160171.png', NULL, NULL, NULL, 'AndrewGat', 'christina.hansson@demensforbundet.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good day! Please note a fine offers for you. \r\n \r\nhttp://bit.ly/2PxvejL', 'Good day! Please note a fine offers for you. \r\n \r\nhttp://bit.ly/2PxvejL', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(172, 'mullett', '66eY^wr2pvL', 'M_172_1541242559.png', NULL, NULL, NULL, 'mullett', 'winter_passion@live.co.uk', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good day! Please note an interesting offers - 500+ top quality slots, roulette and blackjack games to choose from.   http://bit.ly/2J6Gq18', 'Good day! Please note an interesting offers - 500+ top quality slots, roulette and blackjack games to choose from.   http://bit.ly/2J6Gq18', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(173, 'Michaelham', '77Bqrj$ib7G', 'M_173_1541569049.png', NULL, NULL, NULL, 'Michaelham', 'u0022info.brasil@christeyns.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  niceoffer \r\n Are you in?  \r\n \r\n \r\nhttp://facebook.topratinglist.com?16894', ' Hy there,  niceoffer \r\n Are you in?  \r\n \r\n \r\nhttp://facebook.topratinglist.com?16894', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(174, 'BarryCig', 't!5bIyj35sY', 'M_174_1542059657.png', NULL, NULL, NULL, 'BarryCig', 'info@dubront.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi Unspoilt direction ! an significantcome into consideration \r\n Straight up and down click on the curb answerable to to sort  \r\n \r\n \r\nhttps://drive.google.com/file/d/1difYHH7HXIzexSlPo7E88Zn8GRBWMYVj/preview', ' Hi Unspoilt direction ! an significantcome into consideration \r\n Straight up and down click on the curb answerable to to sort  \r\n \r\n \r\nhttps://drive.google.com/file/d/1difYHH7HXIzexSlPo7E88Zn8GRBWMYVj/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(175, 'Gothic', '66eY^wr2pvL', 'M_175_1542326438.png', NULL, NULL, NULL, 'Gothic', 'victorialynnbaby@aol.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good man! Here is  an interesting bonus - slots, roulette and blackjack games.  Try and be our next winner. http://bit.ly/2J6B1qP', 'Good man! Here is  an interesting bonus - slots, roulette and blackjack games.  Try and be our next winner. http://bit.ly/2J6B1qP', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(176, 'EdwinScors', 'c2v2Qz%j3uN', 'M_176_1542329062.png', NULL, NULL, NULL, 'EdwinScors', 'anneli.andersson@brt.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  Look what we have for you! an interestingoffer \r\n To qualify click on the link below  \r\n \r\nhttps://drive.google.com/file/d/1qK37tyykfEkDhFenm8bSTPsi1TFhz5Th/preview', '  Look what we have for you! an interestingoffer \r\n To qualify click on the link below  \r\n \r\nhttps://drive.google.com/file/d/1qK37tyykfEkDhFenm8bSTPsi1TFhz5Th/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(177, 'CharlesMaype', 'sY3ir^9ze9E', 'M_177_1542577473.png', NULL, NULL, NULL, 'CharlesMaype', 'robin@auto7h.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi an importantoffer \r\n Just click \r\n \r\nhttps://drive.google.com/file/d/1cOkFpbQs0InncjQZ22AyEKaiSRCJvT1y/preview', ' Hi an importantoffer \r\n Just click \r\n \r\nhttps://drive.google.com/file/d/1cOkFpbQs0InncjQZ22AyEKaiSRCJvT1y/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(178, 'JamesMek', '8hdt58hJ#qI', 'M_178_1543895537.png', NULL, NULL, NULL, 'JamesMek', 'post@juliusjakhelln.no', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  What we have here is , an importantoffer \r\n Are you in?  \r\n \r\nhttp://bit.ly/2jtGdZU', '  What we have here is , an importantoffer \r\n Are you in?  \r\n \r\nhttp://bit.ly/2jtGdZU', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(179, 'Stevenvum', 'dFxxw#48e8Y', 'M_179_1544230475.png', NULL, NULL, NULL, 'Stevenvum', 'info@vglbyggmontage.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  What we have here is , an amazingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttp://bit.ly/2HRVtKP', ' Hy there,  What we have here is , an amazingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttp://bit.ly/2HRVtKP', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(180, 'Michaelrhisy', 'i441Jn^vggD', 'M_180_1544623765.png', NULL, NULL, NULL, 'Michaelrhisy', 'cykelmastaren@live.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi an remarkablecharity \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2PzeQLS', ' Hi an remarkablecharity \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2PzeQLS', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(181, 'JosephJew', 'to74C^2uueS', 'M_181_1544915546.png', NULL, NULL, NULL, 'JosephJew', 'konferens@bluehotel.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  Look what we take looking with a deem you! an pivotalloosely transpire b naval way despatch \r\n To equipped click on the speciality a adverse unworthy of  \r\n \r\n \r\nhttp://bit.ly/2Uz2180', ' Hy there,  Look what we take looking with a deem you! an pivotalloosely transpire b naval way despatch \r\n To equipped click on the speciality a adverse unworthy of  \r\n \r\n \r\nhttp://bit.ly/2Uz2180', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(182, 'NIA', '66eY^wr2pvL', 'M_182_1545078892.png', NULL, NULL, NULL, 'NIA', 'winnerlhw0615@163.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi! Look at an amazing - 500+ top quality slots, roulette and blackjack games to choose from.  Try and be our next winner. http://bit.ly/2J9c7Hh', 'Hi! Look at an amazing - 500+ top quality slots, roulette and blackjack games to choose from.  Try and be our next winner. http://bit.ly/2J9c7Hh', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(183, 'Alexisvet', '9r9rA9^bppK', 'M_183_1545296347.png', NULL, NULL, NULL, 'Alexisvet', 'jens@brfposthuset.se', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi Look what we closed conducive to you! an appealinggenius \r\n Trustworthy click on the bond subordinate to to prime  \r\n \r\n \r\nhttp://red.studygood.com/UjoCzaeL', ' Hi Look what we closed conducive to you! an appealinggenius \r\n Trustworthy click on the bond subordinate to to prime  \r\n \r\n \r\nhttp://red.studygood.com/UjoCzaeL', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(184, 'Jeremynarse', '8wgj91adU%B', 'M_184_1545463592.png', NULL, NULL, NULL, 'Jeremynarse', 'yourmail@gmail.com', 'Togo', 'General Practice Law', 'Hello. And Bye.', 'Hello. And Bye.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(185, 'Alfredosex', 'rF8cxny76^Y', 'M_185_1545565682.png', NULL, NULL, NULL, 'Alfredosex', 'agajonesflowers@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  Look what we snatch confine looking inasmuch as you! a intermittentlygive-away \r\n High-minded click \r\n \r\n \r\nhttp://bit.ly/2rVnYB7', '  Look what we snatch confine looking inasmuch as you! a intermittentlygive-away \r\n High-minded click \r\n \r\n \r\nhttp://bit.ly/2rVnYB7', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(186, 'DavidSketa', '7oflHuk5&8W', 'M_186_1545875238.png', NULL, NULL, NULL, 'DavidSketa', 'plazaplazacounty@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  an invitingoffers \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2EIpb6m', ' Hy there,  an invitingoffers \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2EIpb6m', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(187, 'Brianacura', 'ac76p9&aCkC', 'M_187_1546192558.png', NULL, NULL, NULL, 'Brianacura', '35taoducoeur@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  What we hoax here is , a amercementoffers \r\n Untangle click on the engage answerable to the day-star to character  \r\n \r\n \r\nhttp://bit.ly/2EY3OhB', '  What we hoax here is , a amercementoffers \r\n Untangle click on the engage answerable to the day-star to character  \r\n \r\n \r\nhttp://bit.ly/2EY3OhB', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(188, 'Bobbycam', 'Odp8h2k^8aZ', 'M_188_1546389137.png', NULL, NULL, NULL, 'Bobbycam', 'bevmo64@yahoo.com', 'Iraq', 'General Practice Law', 'How To Make Extra Money From Home - $3000 Per Day Easy: http://webhop.se/bestinvestsystem46062', 'How To Make Extra Money From Home - $3000 Per Day Easy: http://webhop.se/bestinvestsystem46062', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(190, 'Snowdonian', '66eY^wr2pvL', 'M_190_1546539782.png', NULL, NULL, NULL, 'Snowdonian', '190814239@qq.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good man! There is a best - A pleasant surprise of $/â‚¬ 1600 welcome bonus.  Are you in?  http://bit.ly/2ytGcx8', 'Good man! There is a best - A pleasant surprise of $/â‚¬ 1600 welcome bonus.  Are you in?  http://bit.ly/2ytGcx8', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(191, 'GordonLicky', '3wSqy!za28U', 'M_191_1546598661.png', NULL, NULL, NULL, 'GordonLicky', 'james.rodthomas@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  Look what we bear looking allowing in place of on you! a be suitableforth \r\n Permitted click \r\n \r\n \r\nhttps://drive.google.com/file/d/1yHYqtTPMLC5bsIRbUm7D-IxTgL_ulIwN/preview', '  Look what we bear looking allowing in place of on you! a be suitableforth \r\n Permitted click \r\n \r\n \r\nhttps://drive.google.com/file/d/1yHYqtTPMLC5bsIRbUm7D-IxTgL_ulIwN/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(192, 'EnriqueHat', 'drjq81Gs#4K', 'M_192_1546919186.png', NULL, NULL, NULL, 'EnriqueHat', 'tathagata.sarker@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '  What we have here is , an interestingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttps://drive.google.com/file/d/13LfgUEO9Nmx-hlXUFCqhCo5vGtEOymlt/preview', '  What we have here is , an interestingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttps://drive.google.com/file/d/13LfgUEO9Nmx-hlXUFCqhCo5vGtEOymlt/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(194, 'Davidgog', '8b1ed%fv3FX', 'M_194_1547169575.png', NULL, NULL, NULL, 'Davidgog', 'boylk@hotmail.com', 'Poland', 'General Practice Law', '[OMG -  PROFIT in under 60 seconds: https://tinyurl.com/bestinvest-300043682', '[OMG -  PROFIT in under 60 seconds: https://tinyurl.com/bestinvest-300043682', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(195, 'Davidver', '17D^e9risoQ', 'M_195_1547234889.png', NULL, NULL, NULL, 'Davidver', 'cecilhot@hotmail.com', 'Sierra Leone', 'General Practice Law', 'How to make $450 per hour: https://aaa.moda/bestinvest300085461', 'How to make $450 per hour: https://aaa.moda/bestinvest300085461', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(196, 'Jameshot', '^zqWh75xr9N', 'M_196_1547335516.png', NULL, NULL, NULL, 'Jameshot', 'rchsallotment@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi Good news ! a goodoffer \r\n Just click on the link below to qualify  \r\n \r\nhttps://drive.google.com/file/d/1PWrcITk-T5ZrOW1QLO1nlezpZlrjqU2w/preview', ' Hi Good news ! a goodoffer \r\n Just click on the link below to qualify  \r\n \r\nhttps://drive.google.com/file/d/1PWrcITk-T5ZrOW1QLO1nlezpZlrjqU2w/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(197, 'Willielet', '6fJ9t@q4nhO', 'M_197_1547341201.png', NULL, NULL, NULL, 'Willielet', 'minordis@msn.com', 'Malta', 'General Practice Law', 'Where to invest $ 3000 once and receive every month from $ 55000: http://rih.co/howtoinvest300063106', 'Where to invest $ 3000 once and receive every month from $ 55000: http://rih.co/howtoinvest300063106', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(198, 'Georgemip', '1%qdnDgs45E', 'M_198_1547399088.png', NULL, NULL, NULL, 'Georgemip', 'burkeyjack@hotmail.com', 'The Bahamas', 'General Practice Law', 'Paid Surveys: Earn $30,000 Or More Per Week: http://www.short4free.us/bestinvestsystems19868', 'Paid Surveys: Earn $30,000 Or More Per Week: http://www.short4free.us/bestinvestsystems19868', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(199, 'Edmundruith', '35rnA!zpl5Y', 'M_199_1547687017.png', NULL, NULL, NULL, 'Edmundruith', 'jfletcher.writes@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Anton Pantura   Hy there,  Actual news ! a finetender \r\n Are you in?    http://bit.ly/2STKar3', 'Anton Pantura   Hy there,  Actual news ! a finetender \r\n Are you in?    http://bit.ly/2STKar3', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(200, 'sumit5522', 'octal@123', 'M_200_1547725814.png', '20', '20', '2000', 'Sumit Kumar ', 'sumit.kumar@octalsoftware.net', 'jaipur', 'Personal Injury Law', '', 'feffe fewjfmdc wh fewo oewjdw fiwdfe w idcx wfcwekc fwef', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(204, 'sachinkumar', 'sumit5522', 'M_204_1548063146.png', NULL, NULL, NULL, 'Sachin', 'sumit.kumar@octalsoftware.net', 'jaipur', 'Civil Litigation Law', 'dewd wdwxw dwd cwdewdw', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(206, 'Jamesamimi', 't&b3x48VnyZ', 'M_206_1548159498.png', NULL, NULL, NULL, 'Jamesamimi', 'adminkatana@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi What we keep here is , an compellingdonation \r\n Upstanding click   http://bit.ly/2S4usMm', ' Hi What we keep here is , an compellingdonation \r\n Upstanding click   http://bit.ly/2S4usMm', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(207, 'MatthewRed', '9%rx2vGuw6F', 'M_207_1548355705.png', NULL, NULL, NULL, 'MatthewRed', 'rogerervin@hotmail.com', 'Denmark', 'General Practice Law', 'Find yourself a girl for the night in your city: http://tropaadet.dk/bestadultdating48939', 'Find yourself a girl for the night in your city: http://tropaadet.dk/bestadultdating48939', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(209, 'Kevinhashy', '7cc%67DdwlG', 'M_209_1548518660.png', NULL, NULL, NULL, 'Kevinhashy', 'ivana78@msn.com', 'Kuwait', 'General Practice Law', 'Trouvez-vous une fille pour la nuit dans votre ville: https://arill.us/bestsexygirlsxxx18789', 'Trouvez-vous une fille pour la nuit dans votre ville: https://arill.us/bestsexygirlsxxx18789', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(210, 'Douglasnup', '57pyUn!8kpV', 'M_210_1548533040.png', NULL, NULL, NULL, 'Douglasnup', 'janetastleypp@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  Righteous dope ! an interestingtender \r\n Are you in?    http://bit.ly/2S4NMcu', ' Hy there,  Righteous dope ! an interestingtender \r\n Are you in?    http://bit.ly/2S4NMcu', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(212, 'Robertunlor', 'Br141gp!ojG', 'M_212_1548865387.png', NULL, NULL, NULL, 'Robertunlor', 'jornolaussen@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hy there,  Good news ! an invitingdonation \r\n Reasonable click   http://bit.ly/2S8fMMk', ' Hy there,  Good news ! an invitingdonation \r\n Reasonable click   http://bit.ly/2S8fMMk', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(217, 'VincentSor', '4!eo7q6OuwL', 'M_217_1549256068.png', NULL, NULL, NULL, 'VincentSor', 'takakura31@hotmail.com', 'Poland', 'General Practice Law', 'Meet sexy girls in your city: http://webhop.se/bestadultdatingsite19160', 'Meet sexy girls in your city: http://webhop.se/bestadultdatingsite19160', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(218, 'Josephnug', '1yu1^d7aBgQ', 'M_218_1550085455.png', NULL, NULL, NULL, 'Josephnug', 'ghinilambor700@yahoo.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello! \r\n \r\nWe spend third part of our lives at work. How to spend this time with benefit? \r\n \r\nYou can grow bitcoins by 10% spending 5 minutes a day! \r\nQuicker than a cup of coffee \r\n \r\nhttp://dcbtc.info increases bitcoins by 10% in 48 hours. \r\nYou will automatically make a profit on your bitcoin wallet. \r\n \r\nStart participating and make a profit! \r\nGuaranteed by the blockchain technology!', 'Hello! \r\n \r\nWe spend third part of our lives at work. How to spend this time with benefit? \r\n \r\nYou can grow bitcoins by 10% spending 5 minutes a day! \r\nQuicker than a cup of coffee \r\n \r\nhttp://dcbtc.info increases bitcoins by 10% in 48 hours. \r\nYou will automatically make a profit on your bitcoin wallet. \r\n \r\nStart participating and make a profit! \r\nGuaranteed by the blockchain technology!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(222, 'DavidGor', 'd6sqiH#2y3W', 'M_222_1551044372.png', NULL, NULL, NULL, 'DavidGor', 'kmillar1910@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hey Good front-page news ! superioroffers \r\n To qualify click on the tie-in below  \r\nhttp://servicerubin.ru', ' Hey Good front-page news ! superioroffers \r\n To qualify click on the tie-in below  \r\nhttp://servicerubin.ru', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(225, 'JavierTew', 'zt7$D99ygcR', 'M_225_1551217742.png', NULL, NULL, NULL, 'JavierTew', 'sairie@hotmail.com', 'Togo', 'General Practice Law', 'Get the new iPhone X for free with this giveaway: https://arill.us/ouinphone69311', 'Get the new iPhone X for free with this giveaway: https://arill.us/ouinphone69311', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(226, 'WilliamBobre', '#A1hthr94fL', 'M_226_1551217742.png', NULL, NULL, NULL, 'WilliamBobre', 'bcasteel@aol.com', 'Sierra Leone', 'General Practice Law', 'Nature\'s Way Alive Once Daily Men\'s 50+ Ultra Potency Tablets: https://aaa.moda/astongerined90943', 'Nature\'s Way Alive Once Daily Men\'s 50+ Ultra Potency Tablets: https://aaa.moda/astongerined90943', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(227, 'RobertHeinc', 'r&jq3Ad47hA', 'M_227_1551221180.png', NULL, NULL, NULL, 'RobertHeinc', 'wendydmk@gmail.com', 'Nepal', 'General Practice Law', 'Make $200 per hour doing this: https://arill.us/investcrypto90041314', 'Make $200 per hour doing this: https://arill.us/investcrypto90041314', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(228, 'MiguelRaits', '&33pa7cblEX', 'M_228_1551222364.png', NULL, NULL, NULL, 'MiguelRaits', 't_casey@hotmail.com', 'Bosnia and Herzegovina', 'General Practice Law', 'Natural Stress Solutions CBD Capsules Night (Sleep): https://arill.us/aturaltressolutions85525', 'Natural Stress Solutions CBD Capsules Night (Sleep): https://arill.us/aturaltressolutions85525', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(234, 'RobertHoure', 'n4Ky8^5vwfV', 'M_234_1551538903.png', NULL, NULL, NULL, 'RobertHoure', 'francineblanchet@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hi a goodoffers \r\n Are you in?  \r\n \r\nhttp://servicerubin.ru', ' Hi a goodoffers \r\n Are you in?  \r\n \r\nhttp://servicerubin.ru', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(235, 'RogerMox', 'liQ3uj%g62V', 'M_235_1551590943.png', NULL, NULL, NULL, 'RogerMox', 'mowbraycarpetsaccdept@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Confirm that you are not a robot, and learn how to earn $ 1000 a day \r\nhttp://guide-traveler.ru', 'Confirm that you are not a robot, and learn how to earn $ 1000 a day \r\nhttp://guide-traveler.ru', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(244, 'Jamespilla', '&uy4wP9vh3P', 'M_244_1552052118.png', NULL, NULL, NULL, 'Jamespilla', 'formforsome@yandex.ua', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello! \r\n \r\nI guess, me and you spend third part of our lives at work)) \r\nMaybe It help us to spent this time with benefit. \r\n \r\nSo my friend told me about way to make + 10% in just 5 minutes a day. Quicker than a coffee break \r\n \r\nIt is blockchain technology. \r\n \r\nPlease look on it  http://dc-btc.pro  and tell me what you think \r\nIt says +10% each other day and aytomaticall payout. \r\n \r\nWaiting for your reply!', 'Hello! \r\n \r\nI guess, me and you spend third part of our lives at work)) \r\nMaybe It help us to spent this time with benefit. \r\n \r\nSo my friend told me about way to make + 10% in just 5 minutes a day. Quicker than a coffee break \r\n \r\nIt is blockchain technology. \r\n \r\nPlease look on it  http://dc-btc.pro  and tell me what you think \r\nIt says +10% each other day and aytomaticall payout. \r\n \r\nWaiting for your reply!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(245, 'Kevinhor', '2Q!ab5jvs2Y', 'M_245_1552106041.png', NULL, NULL, NULL, 'Kevinhor', 'sample@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Confirm that you are not a robot, and  Please note a finebenefit for win. http://bit.ly/2ENE5b9', 'Confirm that you are not a robot, and  Please note a finebenefit for win. http://bit.ly/2ENE5b9', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(248, 'Hootiem', 'f$2s34qDhtNsa', 'M_248_1552562413.png', NULL, NULL, NULL, 'Hootiem', 'pofofedw32f@yandex.com', 'US', 'General Practice Law', 'I like rock bands! I really do! And my favourite rock band is Hootie and The Blowfish! All band members has re-united to perform more than 50 concerts to their fans in 2019! To know more about Hootie&Blowfish in 2019 visit website <a href=https://hootietheblowfishtour.com>Hootie and the Blowfish tour Atlanta</a>. You won\'t miss any performance this year if you visit the link!\r\n', 'I like rock bands! I really do! And my favourite rock band is Hootie and The Blowfish! All band members has re-united to perform more than 50 concerts to their fans in 2019! To know more about Hootie&Blowfish in 2019 visit website <a href=https://hootietheblowfishtour.com>Hootie and the Blowfish tour Atlanta</a>. You won\'t miss any performance this year if you visit the link!\r\n', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(256, 'Williamamapy', '4b#yilt2D4C', 'M_256_1553105284.png', NULL, NULL, NULL, 'Williamamapy', 'michaelVal@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hey an excitingoffers \r\n Simply click \r\n \r\nhttps://drive.google.com/file/d/1Jnpb_he0_B-vfT5ozPy7CPnRvXcoObB6/preview', ' Hey an excitingoffers \r\n Simply click \r\n \r\nhttps://drive.google.com/file/d/1Jnpb_he0_B-vfT5ozPy7CPnRvXcoObB6/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(261, 'rupaklohit', 'd6d6c1200216609fecffee01681ce73b', 'M_261_1553279524.jpeg', NULL, NULL, NULL, 'Rupak Lohit', 'rupak@coppermobile.com', '4100 Spring Valley Rd, Dallas, Texas 75024', 'Corporate Law', 'Test account', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(262, 'arvindsarin', 'copper22', 'M_262_1553279561.jpg', '150', '200', '550', 'Arvind Sarin', 'arvind@coppermobile.com', 'TX', 'General Practice Law', '', 'I am an attrorney for general practise.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(263, 'TheAbhiGoyal', 'asd123', 'M_263_1553279570.png', NULL, NULL, NULL, 'Abhi', 'Abhishek.g@coppermobile.com', 'Dallas, TX', 'Criminal Law', 'ABC', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(264, 'JeromeZew', 'hyu92s@6EtY', 'M_264_1553304816.png', NULL, NULL, NULL, 'JeromeZew', 'savemoney@takecreditcardsfree.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello I was wanting to see, if you wanted to stop paying fees to accept credit cards? I am with http://www.TakeCreditCardsFree.com and with us, you can take every type of credit card, you get your money deposited within 2 business days and you pay 0% plus $0.00 per transaction, the only thing you pay is a $25 per month account fee, and then you just use your existing terminal, or buy/lease one from us. Whatâ€™s the catch? The catch is, instead of charging you, your customer is charged a small co', 'Hello I was wanting to see, if you wanted to stop paying fees to accept credit cards? I am with http://www.TakeCreditCardsFree.com and with us, you can take every type of credit card, you get your money deposited within 2 business days and you pay 0% plus $0.00 per transaction, the only thing you pay is a $25 per month account fee, and then you just use your existing terminal, or buy/lease one from us. Whatâ€™s the catch? The catch is, instead of charging you, your customer is charged a small convenience fee via the credit card machine we send you,  of just 40 cents per every $10 to which the customer is spending and thatâ€™s it. Would you be interested in this? If so go to our website or call/text us at 720-791-3210 or go to our website http://www.takecreditcardsfree.com', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(265, 'Waynebyday', 'lIw#8c26wrN', 'M_265_1554684237.png', NULL, NULL, NULL, 'Waynebyday', 'pete-gvm-affiliate@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'My name is Pete and I want to share a proven system with you that makes me money while I sleep! This system allows you to TRY the whole thing for F R E E for a whole 30 days! That\'s right, you can finally change your future without giving up any sensitive information in advance! I signed up myself just a while ago and I\'m already making a nice profit. \r\n \r\nIn short, this is probably the BEST THING THAT EVER HAPPENED TO YOU IF YOU TAKE ACTION NOW!!! \r\n \r\nIf you\'re interested in knowing more about', 'My name is Pete and I want to share a proven system with you that makes me money while I sleep! This system allows you to TRY the whole thing for F R E E for a whole 30 days! That\'s right, you can finally change your future without giving up any sensitive information in advance! I signed up myself just a while ago and I\'m already making a nice profit. \r\n \r\nIn short, this is probably the BEST THING THAT EVER HAPPENED TO YOU IF YOU TAKE ACTION NOW!!! \r\n \r\nIf you\'re interested in knowing more about this system, go to http://globalviralmarketing.com/?ref=qkgWOPkN5RoC1NWh and try it out. Again, itâ€™s FREE! \r\n \r\nYou can thank me later \r\n \r\n/Pete', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(266, 'JamesDiava', 'R^42akpau8D', 'M_266_1554696394.png', NULL, NULL, NULL, 'JamesDiava', 'annacs1@hotmail.com', 'Afghanistan', 'General Practice Law', 'Enter to win an iPhone XS Max & AirPods in this free giveaway: http://www.abcagency.se/winiphone59736', 'Enter to win an iPhone XS Max & AirPods in this free giveaway: http://www.abcagency.se/winiphone59736', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(267, 'FrankNeano', 'x79sp!jcW5R', 'M_267_1554700383.png', NULL, NULL, NULL, 'FrankNeano', 'jdressendorfer@aol.com', 'Portugal', 'General Practice Law', 'iPhone X Giveaway 2019 - Participate to Win an iPhone X: http://www.abcagency.se/winiphone55551', 'iPhone X Giveaway 2019 - Participate to Win an iPhone X: http://www.abcagency.se/winiphone55551', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(268, 'Lonnieimals', '2ijz!67iUhS', 'M_268_1554700383.png', NULL, NULL, NULL, 'Lonnieimals', 'claud_strife@msn.com', 'Brazil', 'General Practice Law', 'Iphone X Giveaway! Win iPhone for free: https://lil.ink/winiphone28744', 'Iphone X Giveaway! Win iPhone for free: https://lil.ink/winiphone28744', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, '');
INSERT INTO `users` (`id`, `name`, `pass`, `avatar`, `cpm`, `wpm`, `hrate`, `fname`, `email`, `state`, `legal_issue`, `des_legal_issue`, `bck_experience`, `request`, `is_consultation`, `friend_id`, `address`, `fax`, `website`, `phone_num`, `user_type`, `jurisdiction`, `license_number`, `licence_status`, `device_token`) VALUES
(269, 'Clarkpoulp', 'l^z2z2h7ZlX', 'M_269_1554706561.png', NULL, NULL, NULL, 'Clarkpoulp', 'rod1179@hotmail.com', 'Ethiopia', 'General Practice Law', 'Win an iPhone X | Free Competitions: http://valeriemace.co.uk/winiphone63042', 'Win an iPhone X | Free Competitions: http://valeriemace.co.uk/winiphone63042', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(273, 'BlakeDroxy', '$8aydkKb65Z', 'M_273_1555081353.png', NULL, NULL, NULL, 'BlakeDroxy', 'lvfeebback123@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'We are often up to 50%-60% less than other VoIP providers. \r\n \r\nOur VoIP pricing method is really different. \r\n \r\nWe offer free SIP/VoIP trunks and just charge for minutes.  Don\'t worry, our service and quality is outstanding since 2009 (10 years)! \r\n \r\nTake a look at our pricing and contact us to set up your account. \r\nUsage is month to month, with no contract jail! \r\n \r\nhttps://legacyvoip.com/pricing-unlimited-sip-trunks-with-bundled-minutes-reduce-cost-now \r\n \r\nTry us out.  You really wonâ€™t', 'We are often up to 50%-60% less than other VoIP providers. \r\n \r\nOur VoIP pricing method is really different. \r\n \r\nWe offer free SIP/VoIP trunks and just charge for minutes.  Don\'t worry, our service and quality is outstanding since 2009 (10 years)! \r\n \r\nTake a look at our pricing and contact us to set up your account. \r\nUsage is month to month, with no contract jail! \r\n \r\nhttps://legacyvoip.com/pricing-unlimited-sip-trunks-with-bundled-minutes-reduce-cost-now \r\n \r\nTry us out.  You really wonâ€™t regret it! \r\n \r\nBusiness VoIP for premises based PBXs \r\nCloud Hosted PBXs \r\nCloud Hosted Call Centers \r\n \r\nWe support all SIP-able PBXs and phones. \r\n \r\nThank you, \r\n \r\nBob Green \r\nLegacy VoIP', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(274, 'Vidmm', 'f$2s34qDhtN', 'M_274_1555173269.png', NULL, NULL, NULL, 'Vidmm', 'ewrdfrgew32f@yandex.com', 'India', 'General Practice Law', 'Today almost everyone uses Youtube or any other video hosting provider to upload and watch videos, free films and other content. But sometimes you want to download a videofile and the hosting doesn\'t allow you to do so. That\'s where Vidmate is coming to help you. It provides with an ability for you to download a movie from may services, including YT, Facebook, Facebook and many other hosting services. To perform this you just need to open video page and click \"download\". Plus, the Vidmate app is', 'Today almost everyone uses Youtube or any other video hosting provider to upload and watch videos, free films and other content. But sometimes you want to download a videofile and the hosting doesn\'t allow you to do so. That\'s where Vidmate is coming to help you. It provides with an ability for you to download a movie from may services, including YT, Facebook, Facebook and many other hosting services. To perform this you just need to open video page and click \"download\". Plus, the Vidmate app is completely free of charge and very easy in use with your Android smartphone! Download Vidmate APK from <a href=https://vidmateapp.pro/apk/>https://vidmateapp.pro/apk/</a> now and start downloading very entertaining films to share them with your family and friends!\r\n', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(275, 'Michaelhoame', '@7xojug63BT', 'M_275_1555201368.png', NULL, NULL, NULL, 'Michaelhoame', 'leonardoChAbe@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'We offer you the opportunity to advertise your products and services. \r\nCiao! Behold is  an important offer for you. I can help you with sending  your commercial offers or messages through feedback forms. The advantage of this method is that the messages sent through the feedback forms are included in the white list. This method increases the chance that your message will be read. The same way you received this message. \r\n \r\nSending via Feedback Forms to any domain zones of the world. (more than', 'We offer you the opportunity to advertise your products and services. \r\nCiao! Behold is  an important offer for you. I can help you with sending  your commercial offers or messages through feedback forms. The advantage of this method is that the messages sent through the feedback forms are included in the white list. This method increases the chance that your message will be read. The same way you received this message. \r\n \r\nSending via Feedback Forms to any domain zones of the world. (more than 1000 domain zones.). \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. \r\nAll us sites that have a feedback form. (10 million messages sent) - $349 instead of $649 \r\nDomain zone .com - (12 million messages sent) - $399 instead of $699 \r\nAll domain zones in Europe- (8 million messages sent) - $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\n \r\nDiscounts are valid until April 20 \r\nFeedback and warranty! \r\nDelivery report! \r\n \r\nIn', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(285, 'JamesVek', '4q9&6gxsSzR', 'M_285_1555468442.png', NULL, NULL, NULL, 'JamesVek', 'cgorillamail@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'Tax Law', 'Hi, \r\n \r\nI\'ve been visiting your website a few times and decided to give you some positive feedback because I find it very useful. Well done. \r\n \r\nI was wondering if you as someone with experience of creating a useful website could help me out with my new site by giving some feedback about what I could improve? \r\n \r\nYou can find my site by searching for \"casino gorilla\" in Google (it\'s the gorilla themed online casino comparison). \r\n \r\nI would appreciate if you could check it out quickly and tel', 'Hi, \r\n \r\nI\'ve been visiting your website a few times and decided to give you some positive feedback because I find it very useful. Well done. \r\n \r\nI was wondering if you as someone with experience of creating a useful website could help me out with my new site by giving some feedback about what I could improve? \r\n \r\nYou can find my site by searching for \"casino gorilla\" in Google (it\'s the gorilla themed online casino comparison). \r\n \r\nI would appreciate if you could check it out quickly and tell me what you think. \r\n \r\ncasinogorilla.com \r\n \r\nThank you for help and I wish you a great week!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(286, 'Brian', 'iCk1d&41buT', 'M_286_1555495945.png', NULL, NULL, NULL, 'Brian', 'infopp75@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello, \r\n \r\nI have a female client who is very much interested to invest in any lucrative  business opportunity in your country that can generate 12% annually return on partnership basis. You are a business broker ?. You may only require a flat consulting fee for services rendered to cover your time, a reasonable flat fee for your services. Please write to my email address below with details :  j991892@gmail.com \r\n \r\nThank you \r\nBrian', 'Hello, \r\n \r\nI have a female client who is very much interested to invest in any lucrative  business opportunity in your country that can generate 12% annually return on partnership basis. You are a business broker ?. You may only require a flat consulting fee for services rendered to cover your time, a reasonable flat fee for your services. Please write to my email address below with details :  j991892@gmail.com \r\n \r\nThank you \r\nBrian', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(287, 'LouisTok', 'qF3&c5u3vdU', 'M_287_1555565704.png', NULL, NULL, NULL, 'LouisTok', 'svetlanacol0sova@yandex.ua', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Grow your bitcoins by 10% per 2 days. \r\nProfit comes to your btc wallet automatically. \r\n \r\nTry  http://bm-syst.xyz \r\nit takes 2 minutes only and let your btc works for you! \r\n \r\nGuaranteed by the blockchain technology!', 'Grow your bitcoins by 10% per 2 days. \r\nProfit comes to your btc wallet automatically. \r\n \r\nTry  http://bm-syst.xyz \r\nit takes 2 minutes only and let your btc works for you! \r\n \r\nGuaranteed by the blockchain technology!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(289, 'shashi.r', '9676a97ec0bee6fcda8da04324bda21b', 'M_289_1556004195.png', NULL, NULL, NULL, 'Shashi Ranjan', 'shashi.r@coppermobile.com', 'Delhi', 'Tax Law', 'for testing purpose', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(293, 'CherieVer', 'C36^ik5xkdN', 'M_293_1556095531.png', NULL, NULL, NULL, 'CherieVer', 'melody_fan@gmail.com', 'Italy', 'General Practice Law', 'Hello, I want to work in your company on a voluntary basis, can you offer me anything? \r\na little about me:https://about.me/ruthmcfarlane/', 'Hello, I want to work in your company on a voluntary basis, can you offer me anything? \r\na little about me:https://about.me/ruthmcfarlane/', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(299, 'Roberthople', '2V@5hhxp8oF', 'M_299_1556223855.png', NULL, NULL, NULL, 'Roberthople', 'conciergexleads@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi, \r\n \r\nLet\'s see how we can achieve better advertising result for your business. \r\n \r\nI would like to start by sharing with you a case study of a local campaign we ran for a Burger King franchise. \r\nTheir budget was only $1200 and we got them $4,825 in value of sales! \r\n \r\nSee how we did it - Click here https://www.conciergedigitalleads.com/uploads/sYvnOSwp/SuccessStories-ReachFrequency-BurgerKing.pdf to download the Burger King case study \r\n \r\nOur company runs full-service Facebook Advertisin', 'Hi, \r\n \r\nLet\'s see how we can achieve better advertising result for your business. \r\n \r\nI would like to start by sharing with you a case study of a local campaign we ran for a Burger King franchise. \r\nTheir budget was only $1200 and we got them $4,825 in value of sales! \r\n \r\nSee how we did it - Click here https://www.conciergedigitalleads.com/uploads/sYvnOSwp/SuccessStories-ReachFrequency-BurgerKing.pdf to download the Burger King case study \r\n \r\nOur company runs full-service Facebook Advertising campaigns with guaranteed results for as low as $375 for a one-off campaign. \r\n \r\nLet\'s schedule a quick call to see how we can get more clients for you on Facebook. \r\n \r\nOur process is super short and easy \r\n \r\n1.	We setup a 15min call in which we learn about your business \r\n2.	On the same call, we can design a campaign and start running \r\n3.	We do all the work â€“ a 100% \r\n4.	You can try us with a very low budget \r\n \r\nLetâ€™s talk today. Click here https://conciergeleads.youcanbook.me/ to Bo', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(300, 'Harlanwed', 'j&fj6qWw88X', 'M_300_1556322786.png', NULL, NULL, NULL, 'Harlanwed', 'gunrussia@scryptmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \r\nDetailed video reviews of our products you can see on our website. \r\nhttp://rusgun.000webhostapp.com/ \r\nIf the site is unavailable or blocked, email us at - Gunrussia@secmail.pro   or  Gunrussia@elude.in \r\nAnd we will send you the address of the backup site!', '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \r\nDetailed video reviews of our products you can see on our website. \r\nhttp://rusgun.000webhostapp.com/ \r\nIf the site is unavailable or blocked, email us at - Gunrussia@secmail.pro   or  Gunrussia@elude.in \r\nAnd we will send you the address of the backup site!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(301, 'Richardhop', '66eY^wr2pvL', 'M_301_1556661387.png', NULL, NULL, NULL, 'Richardhop', 'sitegreatwordpress@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello, i was looking into your website and i want to tell you that the template of your website is not that modern, \r\nI am a webdesign company and we do have modern premium templates for your website, we do work with wordpress. \r\nWe do install and manage the template updates for you, the price is 197$ for the template with free installation and updates. \r\nSend us a message and we will give you the right perfect template for your website. \r\nVisit our website https://www.sitegreat.com/templates an', 'Hello, i was looking into your website and i want to tell you that the template of your website is not that modern, \r\nI am a webdesign company and we do have modern premium templates for your website, we do work with wordpress. \r\nWe do install and manage the template updates for you, the price is 197$ for the template with free installation and updates. \r\nSend us a message and we will give you the right perfect template for your website. \r\nVisit our website https://www.sitegreat.com/templates and discover the templates you would like for your website \r\nhttps://SiteGreat.Com', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(308, 'FrancesFrautty', '66eY^wr2pvL', 'M_308_1556908339.png', NULL, NULL, NULL, 'FrancesFrautty', 'angelaLilt@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi!  lawmessenger.com \r\n \r\nWe propose \r\n \r\nSending your commercial offer through the Contact us form which can be found on the sites in the Communication partition. Contact form are filled in by our software and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This method improve the chances that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  commercial offer will be read by million', 'Hi!  lawmessenger.com \r\n \r\nWe propose \r\n \r\nSending your commercial offer through the Contact us form which can be found on the sites in the Communication partition. Contact form are filled in by our software and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This method improve the chances that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  commercial offer will be read by millions of site administrators and those who have access to the sites! \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. (you can select any country or country domain) \r\nAll USA - (10 million messages sent) - $399 instead of $699 \r\nAll Europe (7 million messages sent)- $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\n \r\n \r\nDiscounts are valid until May 10. \r\nFeedback and warranty! \r\nDelivery report! \r\nIn the process of sending messag', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(313, 'Matthewevesk', '3sRfrw!i63V', 'M_313_1556952610.png', NULL, NULL, NULL, 'Matthewevesk', 'plan.b.fundingoptions@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello from Plan B - Funding Options LLC \r\n \r\n \r\n*If you\'re thinking about starting your own business or if you need funding for most other reasons there\'s 3 things that you need to keep in mind. \r\n \r\n \r\n1. You need to make a well thought out plan, try to cover everything you want to accomplish and think of what could go wrong along the way. You could create a business plan and or executive summary to use as your guideline. As a rule, itâ€™s best NOT to ask family or friends for money its best to', 'Hello from Plan B - Funding Options LLC \r\n \r\n \r\n*If you\'re thinking about starting your own business or if you need funding for most other reasons there\'s 3 things that you need to keep in mind. \r\n \r\n \r\n1. You need to make a well thought out plan, try to cover everything you want to accomplish and think of what could go wrong along the way. You could create a business plan and or executive summary to use as your guideline. As a rule, itâ€™s best NOT to ask family or friends for money its best to use (other peopleâ€™s money) a funding source that you have no personal relationship with. \r\n \r\n2.  Expect your plan to fail in part or full in many cases this will happen no matter how well you thought out your plan. Unforeseen obstacles and speed bumps often will come in your path that prevent your plans from going as you had projected. \r\n \r\n3.Always without exception have a (Plan B). And that\'s where we come in. We are your Plan B! \r\n \r\n*Please visit our website for details at:  https://www.', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(314, 'Josephciz', 'f&9Qdxf44zI', 'M_314_1557351012.png', NULL, NULL, NULL, 'Josephciz', 'maryam.g@arshon.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello Dear, lawmessenger.com \r\nMy name is Maryam, I am the sales and marketing manager at Arshon Technology, we provide engineering and manufacturing services for any Electronic product. \r\nWe are able to deisgn any PCB and manufacture it in North America in a very cost efective way, we will beat any competitor quote on PCB and PCBA. \r\n \r\nSee our president message in below: https://youtu.be/jRlqM1LdKvA \r\n \r\nFeel free to reach us if you have any inquiry. \r\n \r\nBest Regards, \r\nMaryam \r\nSale and Mark', 'Hello Dear, lawmessenger.com \r\nMy name is Maryam, I am the sales and marketing manager at Arshon Technology, we provide engineering and manufacturing services for any Electronic product. \r\nWe are able to deisgn any PCB and manufacture it in North America in a very cost efective way, we will beat any competitor quote on PCB and PCBA. \r\n \r\nSee our president message in below: https://youtu.be/jRlqM1LdKvA \r\n \r\nFeel free to reach us if you have any inquiry. \r\n \r\nBest Regards, \r\nMaryam \r\nSale and Marketing manager @ Arshon Technology Inc. \r\ninfo@arshon.com \r\n1(877)207-2349 \r\n \r\nThis message is submitted via your contact page. \r\n \r\n \r\nSite: https://www.arshon.com', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(319, 'parth', 'asdf1234', 'M_319_1558000024.png', '12', '10', '100', 'parth', 'parth.g@coppermobile.com', 'Dallas', 'Bankruptcy Law', '', 'Lorem ipson', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(320, 'dummy', 'asdf1234', 'M_320_1558011623.png', NULL, NULL, NULL, 'Dummy', 'dummy@yopmail.com', 'Dallas', 'Area of Legal Interest', 'adad ad', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(323, 'Richardvus', 'Fa58hch6$tO', 'M_323_1558063153.png', NULL, NULL, NULL, 'Richardvus', 'westley_b@hotmail.com', 'Philippines', 'General Practice Law', 'Hey. I will sell a profitable database of email addresses (19 000 000 emails) only to 3 people. \r\nAs seen on the screenshot below, from May 1 to May 16, I earned $ 13,000 on just one affiliate program. \r\nThis is a very good result. You will be able to promote your proposals on this database and be in a huge plus. \r\nI do not provide email distribution services, I send only my offers. \r\nI sell the base because it is a good way to earn extra money + my earnings in affiliate programs, the relevance ', 'Hey. I will sell a profitable database of email addresses (19 000 000 emails) only to 3 people. \r\nAs seen on the screenshot below, from May 1 to May 16, I earned $ 13,000 on just one affiliate program. \r\nThis is a very good result. You will be able to promote your proposals on this database and be in a huge plus. \r\nI do not provide email distribution services, I send only my offers. \r\nI sell the base because it is a good way to earn extra money + my earnings in affiliate programs, the relevance of the base will not suffer from this. \r\nGEO base as you see mainly the United States and other developed solvent countries. \r\nI collected the base myself + bought from private sellers which you will not find anywhere else. \r\n \r\nBase format: \r\nmail1@gmail.com \r\nmail@mail.com \r\nMail3@hotmail.com \r\nThat is, only email addresses in a column. \r\nThe base price is $ 15,000 only in bitcoins at the current rate. \r\nIf you know why you need this database, you know how to make mass email mailings and are r', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(324, 'HiltonDaf', '1vJh!qr4n3J', 'M_324_1558067350.png', NULL, NULL, NULL, 'HiltonDaf', 'misscake2000@yahoo.com', 'Mexico', 'General Practice Law', 'Hey. I will sell a profitable database of email addresses (19 000 000 emails) only to 3 people. \r\nAs seen on the screenshot below, from May 1 to May 16, I earned $ 13,000 on just one affiliate program. \r\nThis is a very good result. You will be able to promote your proposals on this database and be in a huge plus. \r\nI do not provide email distribution services, I send only my offers. \r\nI sell the base because it is a good way to earn extra money + my earnings in affiliate programs, the relevance ', 'Hey. I will sell a profitable database of email addresses (19 000 000 emails) only to 3 people. \r\nAs seen on the screenshot below, from May 1 to May 16, I earned $ 13,000 on just one affiliate program. \r\nThis is a very good result. You will be able to promote your proposals on this database and be in a huge plus. \r\nI do not provide email distribution services, I send only my offers. \r\nI sell the base because it is a good way to earn extra money + my earnings in affiliate programs, the relevance of the base will not suffer from this. \r\nGEO base as you see mainly the United States and other developed solvent countries. \r\nI collected the base myself + bought from private sellers which you will not find anywhere else. \r\n \r\nBase format: \r\nmail1@gmail.com \r\nmail@mail.com \r\nMail3@hotmail.com \r\nThat is, only email addresses in a column. \r\nThe base price is $ 15,000 only in bitcoins at the current rate. \r\nIf you know why you need this database, you know how to make mass email mailings and are r', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(325, 'lawm', '123', 'M_325_1558088454.png', NULL, NULL, NULL, 'parth', 'lawm@yopmail.com', '13', 'Criminal Law', '', '123', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(326, 'lawmc', '1', 'M_326_1558088513.png', NULL, NULL, NULL, 'lawmc', 'lawmc@yopmail.com', '13', 'Employment Law', '1', '', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(328, 'TimmyMax', 'un7jb5jO3%D', 'M_328_1558196923.png', NULL, NULL, NULL, 'TimmyMax', 'micgyhaelVal@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', ' Hey an stimulatingoffers \r\n Right-minded click on the link less to ready  \r\nhttps://drive.google.com/file/d/15--LgWeGZUOgX9E3KubYX6wU1XcqN74P/preview', ' Hey an stimulatingoffers \r\n Right-minded click on the link less to ready  \r\nhttps://drive.google.com/file/d/15--LgWeGZUOgX9E3KubYX6wU1XcqN74P/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(337, 'Anthonyundep', '9o4Y$poi2pX', 'M_337_1558379183.png', NULL, NULL, NULL, 'Anthonyundep', 'svetlanacol0sova@yandex.ua', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Let your bitcoins brings you +10% per 2 days. \r\nGet paid automatically and earn again! \r\n \r\nTry  http://dc-btc.site \r\none click registration and getting asset \r\n \r\nPowered by Mutual assistance Algorithm and Blockchain. \r\nWarranty!', 'Let your bitcoins brings you +10% per 2 days. \r\nGet paid automatically and earn again! \r\n \r\nTry  http://dc-btc.site \r\none click registration and getting asset \r\n \r\nPowered by Mutual assistance Algorithm and Blockchain. \r\nWarranty!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(342, 'manishs', 'money', 'M_342_1558543534.png', '', '', '', 'Manish', 'manish.s@coppermobile.com', 'india', 'Family Law', '', 'i m good in it', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(343, 'RobertDus', '66eY^wr2pvL', 'M_343_1558946564.png', NULL, NULL, NULL, 'RobertDus', 'angelaLilt@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi!  lawmessenger.com \r\n \r\nWe propose \r\n \r\nSending your commercial offer through the Contact us form which can be found on the sites in the Communication section. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the chances that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  business proposition will be open by milli', 'Hi!  lawmessenger.com \r\n \r\nWe propose \r\n \r\nSending your commercial offer through the Contact us form which can be found on the sites in the Communication section. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the chances that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  business proposition will be open by millions of site administrators and those who have access to the sites! \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. (you can select any country or country domain) \r\nAll USA - (10 million messages sent) - $399 instead of $699 \r\nAll Europe (7 million messages sent)- $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\nThere is a possibility of FREE TEST MAILING. \r\n \r\n \r\nDiscounts are valid until May 31. \r\nFeedback and warranty! \r\nDe', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(344, 'Stevetralt', 'B!6dbk8dl4P', 'M_344_1559002806.png', NULL, NULL, NULL, 'Stevetralt', 'chrcarter@gmail.com', 'Angola', 'General Practice Law', 'Your computer, email and smartphone are hacked. We have all your photos, personal correspondence and access to bank accounts. \r\nOn June 3, we will post on the Internet and send to all people who you have in contacts and social networks all your photos, correspondence, access to bank accounts and payment systems. \r\nYou will be sued and the police will be interested in your person. \r\nA ransom is worth 1 Bitcoin. \r\nPay 1 BTC until June 3 to our bitcoin wallet: 1LNcUGLunEpDMo4sxNAgAKAGk8eAddTGW', 'Your computer, email and smartphone are hacked. We have all your photos, personal correspondence and access to bank accounts. \r\nOn June 3, we will post on the Internet and send to all people who you have in contacts and social networks all your photos, correspondence, access to bank accounts and payment systems. \r\nYou will be sued and the police will be interested in your person. \r\nA ransom is worth 1 Bitcoin. \r\nPay 1 BTC until June 3 to our bitcoin wallet: 1LNcUGLunEpDMo4sxNAgAKAGk8eAddTGW', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(345, 'JanetAppom', 'd2iX5xvl&5F', 'M_345_1559335843.png', NULL, NULL, NULL, 'JanetAppom', 'dinelpaut@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'We doing Instagram Blue Badge Service with 100% Guaranteed \r\n \r\nWho We Are.. \r\nWe have the ability to verify Facebook pages, Instagram accounts and Twitter accounts. But, this doesnâ€™t mean your crappy spam account will get verified. Social Media Verification is ONLY for accounts that actually deserve to be verified. If you feels \r\n \r\nCost will be $750 \r\n100% advance money in Paypal \r\nDelivery time 10 to 25 days only \r\n100% refundable \r\n \r\nFor more details visit our site and whatsapp \r\n+4475869', 'We doing Instagram Blue Badge Service with 100% Guaranteed \r\n \r\nWho We Are.. \r\nWe have the ability to verify Facebook pages, Instagram accounts and Twitter accounts. But, this doesnâ€™t mean your crappy spam account will get verified. Social Media Verification is ONLY for accounts that actually deserve to be verified. If you feels \r\n \r\nCost will be $750 \r\n100% advance money in Paypal \r\nDelivery time 10 to 25 days only \r\n100% refundable \r\n \r\nFor more details visit our site and whatsapp \r\n+447586983507 \r\nhttp://verify4mee.com/', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(348, 'Raphaeldub', 'z3pXo5!4wsV', 'M_348_1559612212.png', NULL, NULL, NULL, 'Raphaeldub', 'raphaeLilt@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good day!  lawmessenger.com \r\n \r\nWe put up of the sale \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the Communication section. Feedback forms are filled in by our program and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be read. \r\n \r\nOur database contains more than 25 million sites around the world to which we can ', 'Good day!  lawmessenger.com \r\n \r\nWe put up of the sale \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the Communication section. Feedback forms are filled in by our program and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be read. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 99 USD \r\n \r\nFREE TEST mailing of 50,000 messages to any country of your choice. \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nSkype â€“ live:contactform_18 \r\nEmail - ContactForm@make-success.com \r\nWhatsApp - +353899461815', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(349, 'How to Turn $30,000 into $128,000 http://cutt.us/s', 'x2lve1f#X4L', 'M_349_1559743767.png', NULL, NULL, NULL, 'How to Turn $30,000 into $128,000 http://cutt.us/sddBTUM4', 'ludwig.wuerth@gmx.de', 'Bulgaria', 'General Practice Law', '$15,000 a month (30mins â€œworkâ€ lol): https://clc.la/xyRPYX', '$15,000 a month (30mins â€œworkâ€ lol): https://clc.la/xyRPYX', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(350, 'Invest $ 5,000 in cryptocurrency once and get $ 7,', 'U2frs3#te7G', 'M_350_1559750288.png', NULL, NULL, NULL, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month https://clc.am/T4w9K', 'cffgttybfddmsnpptkt@hotmail.com', 'Cuba', 'General Practice Law', 'How to invest in bitcoins in 2019 and receive passive income of $ 7,000 per month: http://v.ht/0g9xB', 'How to invest in bitcoins in 2019 and receive passive income of $ 7,000 per month: http://v.ht/0g9xB', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(351, 'Turning $10,000 into $1 Million in Forex | DailyFo', 'kiH5yv9^d2N', 'M_351_1559751187.png', NULL, NULL, NULL, 'Turning $10,000 into $1 Million in Forex | DailyForex https://clc.am/0B9YP9I', 'mariegilbertson@yahoo.com', 'Jordan', 'General Practice Law', 'How You Can Make $100,000 Every Month Trading Forex: http://cutt.us/mNQy0Mn', 'How You Can Make $100,000 Every Month Trading Forex: http://cutt.us/mNQy0Mn', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(352, 'CharlesLyday', 'u1wYlv4r9$O', 'M_352_1559865366.png', NULL, NULL, NULL, 'CharlesLyday', 'micgyhaelVal@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'lawmessenger.com  Hy there,  Look what we arrange in the service of you! a virtuousoffer \r\n Reasonable click on the vinculum below to ready  \r\nhttps://drive.google.com/file/d/1es5STCXLlXomh0pz0xECVe71pab0nUlR/preview', 'lawmessenger.com  Hy there,  Look what we arrange in the service of you! a virtuousoffer \r\n Reasonable click on the vinculum below to ready  \r\nhttps://drive.google.com/file/d/1es5STCXLlXomh0pz0xECVe71pab0nUlR/preview', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(356, 'Davidrab', '9D^v2cl1ssI', 'M_356_1559941636.png', NULL, NULL, NULL, 'Davidrab', 'queencharlizebester@yandex.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'We specialize in legal degrees from USA universities. Apostle/Notarization/Embassy legalization. \r\n \r\nNow we have partnered up with schools, from kindergarten up to college level, in whole China ! \r\n \r\nFrom 1400 USD - 4000 USD a month, 4 hours per day on relaxed schedule. \r\nWe will assist you with *all* that\'s needed. You will have the working Z-visa before you leave your home country. \r\n \r\n1. Arrival assistance, SIM card and bank account arranged \r\n2. Accommodation or housing stipend given \r\n3.', 'We specialize in legal degrees from USA universities. Apostle/Notarization/Embassy legalization. \r\n \r\nNow we have partnered up with schools, from kindergarten up to college level, in whole China ! \r\n \r\nFrom 1400 USD - 4000 USD a month, 4 hours per day on relaxed schedule. \r\nWe will assist you with *all* that\'s needed. You will have the working Z-visa before you leave your home country. \r\n \r\n1. Arrival assistance, SIM card and bank account arranged \r\n2. Accommodation or housing stipend given \r\n3. Free meals at school \r\n4. Flight to China from anywhere in the world! \r\n5. Z-type work visa assistance \r\n6. Free TEFL course sponsorship \r\n7. Continual support and assistance from UK and South African office \r\n8. Mandarin classes provided :cn: \r\n9. Local foreign management team \r\n10. Bachelor degree for life, when needed ! \r\n \r\nCheck out details about our diplomas at https://www.degreeforlife.co.uk \r\n \r\n* Do you know somebody with interest ? Up to 300 USD through our affiliate program!', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(359, 'DavidFolop', 'lo9#2wsEw5Y', 'M_359_1560036514.png', NULL, NULL, NULL, 'DavidFolop', 'katie.sam.shea@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hello, \r\n \r\nLook Years Younger in 1 Minute without costly cosmetic surgery.  1 Minute Face Lift Anti-Wrinkle cream reduces Face & Eye Wrinkles, Under Eye Bags, Saggy Skin, Large Pores, Acne Scars, Crowâ€™s Feet and any Early Signs of Aging.  Stem Cell, Natural, Argireline and Omega-3 ingredients work beneath the skinâ€™s surface to reduce signs of aging.  Apply & Dry and watch the results right before your eyes, lasting up to 8-10 hours long.  No need for cosmetic surgery when you could have Ins', 'Hello, \r\n \r\nLook Years Younger in 1 Minute without costly cosmetic surgery.  1 Minute Face Lift Anti-Wrinkle cream reduces Face & Eye Wrinkles, Under Eye Bags, Saggy Skin, Large Pores, Acne Scars, Crowâ€™s Feet and any Early Signs of Aging.  Stem Cell, Natural, Argireline and Omega-3 ingredients work beneath the skinâ€™s surface to reduce signs of aging.  Apply & Dry and watch the results right before your eyes, lasting up to 8-10 hours long.  No need for cosmetic surgery when you could have Instant Results!  We Sell and Ship Worldwide @ https://www.EpiLift.com', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(361, 'ClintonItabs', '6pk5hj!zC8V', 'M_361_1560093369.png', NULL, NULL, NULL, 'ClintonItabs', 'echols82@netscape.net', 'Lebanon', 'General Practice Law', 'Adulte n Ð’Â° 1, application de rencontres pour iphone: http://tinyurl.com/y44xlvqj', 'Adulte n Ð’Â° 1, application de rencontres pour iphone: http://tinyurl.com/y44xlvqj', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(365, 'Beautiful women for sex in your town http://tinyur', 'rx5z2r9pI@E', 'M_365_1560203744.png', NULL, NULL, NULL, 'Beautiful women for sex in your town http://tinyurl.com/yyb94rh4', 'asaje@msn.com', 'Lebanon', 'General Practice Law', 'The best girls for sex in your town Canada: http://tinyurl.com/yy8sdaqj', 'The best girls for sex in your town Canada: http://tinyurl.com/yy8sdaqj', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(366, 'MathewWoura', 'E%1owuul11H', 'M_366_1560253723.png', NULL, NULL, NULL, 'MathewWoura', 'bosukyfezin@hotmail.com', 'Somalia', 'General Practice Law', 'Beautiful girls for sex in your city USA: https://clck.ru/GWDsg', 'Beautiful girls for sex in your city USA: https://clck.ru/GWDsg', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(367, 'Sexy girls for the night in your town USA https://', 'rx5z2r9pI@E', 'M_367_1560257687.png', NULL, NULL, NULL, 'Sexy girls for the night in your town USA https://clck.ru/GWF6H', 'sharettadillard@yahoo.com', 'Lebanon', 'General Practice Law', 'Find yourself a girl for the night in your city UK: http://tinyurl.com/y2omnfpq', 'Find yourself a girl for the night in your city UK: http://tinyurl.com/y2omnfpq', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(369, 'EdwinMek', '^bz88vSqt6Q', 'M_369_1560275391.png', NULL, NULL, NULL, 'EdwinMek', 'i_aon_za@msn.com', 'Antigua and Barbuda', 'General Practice Law', 'The best women for sex in your town UK: https://www.google.com/url?q=http://instameet-match33.com/?u%3Du348mwe%26o%3D6hle3ul%26t%3D1111111%26cid%3D111163v/?q%3Dtuc8bhx&source=gmail&ust=1560278896656000&usg=AFQjCNHUG7UuVCgty9WHDHLdScYfndnvDg', 'The best women for sex in your town UK: https://www.google.com/url?q=http://instameet-match33.com/?u%3Du348mwe%26o%3D6hle3ul%26t%3D1111111%26cid%3D111163v/?q%3Dtuc8bhx&source=gmail&ust=1560278896656000&usg=AFQjCNHUG7UuVCgty9WHDHLdScYfndnvDg', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(370, 'saxenamanish', 'manish2009', 'M_370_1560330586.png', NULL, NULL, NULL, 'Manish Saxena', 'saxenamanishar@gmail.com', 'India', 'Criminal Law', '', 'Experienced in criminal law', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(372, 'What is the best way to invest $10,000 for Austral', 'rx5z2r9pI@E', 'M_372_1560345416.png', NULL, NULL, NULL, 'What is the best way to invest $10,000 for Australians http://www.lookweb.it/bestinvest68223', 'francesc5@aol.com', 'Lebanon', 'General Practice Law', 'Smart ways to invest $10,000 for Australians: http://qps.ru/upBvD', 'Smart ways to invest $10,000 for Australians: http://qps.ru/upBvD', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(376, 'Anthonytus', 'kt1!9xEzv1E', 'M_376_1560407534.png', NULL, NULL, NULL, 'Anthonytus', 'marketing-team@aplana.us', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi! We are working with businesses like yours to support them in the creation of excellent websites and mobile apps of any complexity and specification. \r\nIf your CEO / CTO / CIO has plans to launch new digital resources or update existing ones (to iOS 13 for example), Aplana can be a valuable partner and assist in achieving those goals. \r\nAplana was featured on the Clutch Rating List of the Top-200 Best Custom Software Developers 2018 in the world (you may google this information). \r\nSince 1999', 'Hi! We are working with businesses like yours to support them in the creation of excellent websites and mobile apps of any complexity and specification. \r\nIf your CEO / CTO / CIO has plans to launch new digital resources or update existing ones (to iOS 13 for example), Aplana can be a valuable partner and assist in achieving those goals. \r\nAplana was featured on the Clutch Rating List of the Top-200 Best Custom Software Developers 2018 in the world (you may google this information). \r\nSince 1999 we have launched over 1500 small and large IT projects worldwide. We deliver digital projects to US customers through our highly skilled software teams in Eastern Europe. \r\nThis structure allows us to keep the cost for our services reasonable and justified while maintaining a quality of work that is exceptionally high. \r\nPlease contact us if you have any technical RFP ( request@aplana.us ) or visit us at http://aplana.us \r\nto get more info. \r\nPlease, accept our apology if it currently doesn\'t a', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(377, 'Marvinnut', '97Z^otp2prG', 'M_377_1560420439.png', NULL, NULL, NULL, 'Marvinnut', 'animatedexplainervideo1@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Convert your traffic into clients with Animated Explainer Videos \r\nLet?s face it. There?s only 1 reason you have a website. To generate business, Right? \r\n \r\nYou already have traffic. Want to convert more of your traffic into customers? \r\nThey say a picture is worth a thousand words. Well, an animated explainer video is worth much more. \r\n \r\nYou are too busy to read paragraph after paragraph of words on a website. Time is money and the quicker you can explain your business in an entertaining way', 'Convert your traffic into clients with Animated Explainer Videos \r\nLet?s face it. There?s only 1 reason you have a website. To generate business, Right? \r\n \r\nYou already have traffic. Want to convert more of your traffic into customers? \r\nThey say a picture is worth a thousand words. Well, an animated explainer video is worth much more. \r\n \r\nYou are too busy to read paragraph after paragraph of words on a website. Time is money and the quicker you can explain your business in an entertaining way to your visitors, the easier it is to convert them into your client. \r\n \r\nWatch this short 3 minute video and you?ll understand why successful businesses like Google, Amazon, Walmart and more use animated explainers video to get their message across. \r\n \r\njunepanama2000@gmail.com \r\nhttps://youtu.be/qCRNKMRETVg', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(389, 'lawmessenger.com', 'e3ogu62Pb%V', 'M_389_1560628835.png', NULL, NULL, NULL, 'lawmessenger.com', 'micgyhaelVal@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Here is  an interesting  gift for your team. lawmessenger.com \r\nhttp://bit.ly/2KBD5Kj', 'Here is  an interesting  gift for your team. lawmessenger.com \r\nhttp://bit.ly/2KBD5Kj', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(390, 'ContactForm', 'z3pXo5!4wsV', 'M_390_1560641374.png', NULL, NULL, NULL, 'ContactForm', 'raphaeLilt@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi!  lawmessenger.com \r\n \r\nWe offer \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our application and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the odds that your message will be open. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nTh', 'Hi!  lawmessenger.com \r\n \r\nWe offer \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the Communication partition. Contact form are filled in by our application and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique raise the odds that your message will be open. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing of 50,000 messages to any country of your choice. \r\n \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\nWhatsApp - +44 7598 509161', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(392, 'Jorgeemura', 'c3$rjgw97VJ', 'M_392_1560763216.png', NULL, NULL, NULL, 'Jorgeemura', 'bmbrown626@yahoo.com', 'Togo', 'General Practice Law', 'Hey. I\'m Jennifer Lopez, I\'m sorry to bother you. \r\nIs no time to explain what is happening, but I urgently need $ 750 in Bitcoins. \r\nI have money but they are on Paypalâ€™s wallet and I need it in Bitcoins for an hour, urgently. \r\nI offer you an exchange, you are now throwing me $ 750 on a bitcoin wallet 1CUy8HNo6vebvyGaBQuEdDtv5LSkibKGE3 and I will give you a $ 8,000 PayPal transfer as soon as I receive your transfer. \r\nAs your money comes, I will immediately email you to clarify your details.', 'Hey. I\'m Jennifer Lopez, I\'m sorry to bother you. \r\nIs no time to explain what is happening, but I urgently need $ 750 in Bitcoins. \r\nI have money but they are on Paypalâ€™s wallet and I need it in Bitcoins for an hour, urgently. \r\nI offer you an exchange, you are now throwing me $ 750 on a bitcoin wallet 1CUy8HNo6vebvyGaBQuEdDtv5LSkibKGE3 and I will give you a $ 8,000 PayPal transfer as soon as I receive your transfer. \r\nAs your money comes, I will immediately email you to clarify your details. \r\nI am ready to pay $ 8000 for your service without a hitch immediately after your $ 750 goes into my Bitcoin wallet. \r\nJust please send money during this hour. My bitcoin wallet 1CUy8HNo6vebvyGaBQuEdDtv5LSkibKGE3 I need $ 750', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(394, 'Paulaxows', 'v8ky5qN5&rE', 'M_394_1560793946.png', NULL, NULL, NULL, 'Paulaxows', 'veviralassistance@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'We all know promoting and advertising is difficult.Â Specially when your potential customers check your Instagram, Facebook or Twitter profiles and notice that no one is following you. Then, they will quickly find someone else who is active on social media and that has more followers than you. \r\n \r\nWhen you boost your social media you are not only taking your business (or personal page) to the next level and giving it a real boost, you are also giving yourself credibility and visual appeal. Itâ€', 'We all know promoting and advertising is difficult.Â Specially when your potential customers check your Instagram, Facebook or Twitter profiles and notice that no one is following you. Then, they will quickly find someone else who is active on social media and that has more followers than you. \r\n \r\nWhen you boost your social media you are not only taking your business (or personal page) to the next level and giving it a real boost, you are also giving yourself credibility and visual appeal. Itâ€™s a sad fact that very few will take a business with 100 followers seriously and just scroll right past. Followers on social media are a visual representation of how popular and reputed you are and thus a crucial part of standing out and drawing people in. Â A shining profile, adorned with a plethora of likes, views and followers will always go a long way in the competitive world of social media. \r\n \r\nThat\'s why at veviral.com we have thousands of successful customers who are constantly using o', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(395, 'MatthewKer', 'x!2yPg2i4aN', 'M_395_1560878020.png', NULL, NULL, NULL, 'MatthewKer', 'dudi1@toggo.de', 'Cambodia', 'General Practice Law', 'Sexy girls for the night in your town USA: http://xurl.es/pua96', 'Sexy girls for the night in your town USA: http://xurl.es/pua96', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(396, 'The best women for sex in your town http://xurl.es', 'rx5z2r9pI@E', 'M_396_1560878024.png', NULL, NULL, NULL, 'The best women for sex in your town http://xurl.es/cb573', 'bertha812@hotmail.com', 'Lebanon', 'General Practice Law', 'Meet sexy girls in your city: http://xurl.es/eddv9', 'Meet sexy girls in your city: http://xurl.es/eddv9', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(397, 'Waynerut', 'zy4f%27wqDB', 'M_397_1560885272.png', NULL, NULL, NULL, 'Waynerut', 'moniquesaulais@free.fr', 'The Bahamas', 'General Practice Law', 'Belles Filles Pour Le Sexe Dans Votre Ville: http://xurl.es/3u3i7', 'Belles Filles Pour Le Sexe Dans Votre Ville: http://xurl.es/3u3i7', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(398, 'Davidjoymn', 't2fi44!vAcY', 'M_398_1560905845.png', NULL, NULL, NULL, 'Davidjoymn', 'lulumba@web.de', 'Uganda', 'General Practice Law', 'Such dir ein Madchen fur die Nacht in deiner Stadt: http://xurl.es/41hmo', 'Such dir ein Madchen fur die Nacht in deiner Stadt: http://xurl.es/41hmo', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(404, 'Beautiful girls for sex in your city http://xurl.e', 'rx5z2r9pI@E', 'M_404_1561413044.png', NULL, NULL, NULL, 'Beautiful girls for sex in your city http://xurl.es/qvrpb', 'sammyk1@hotmail.com', 'Lebanon', 'General Practice Law', 'Find yourself a girl for the night in your city: http://xurl.es/seav7', 'Find yourself a girl for the night in your city: http://xurl.es/seav7', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(412, 'AnthonySendy', '7nIu!vj72pU', 'M_412_1561660241.png', NULL, NULL, NULL, 'AnthonySendy', 'gulfsrv94@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Good day!, lawmessenger.com \r\n \r\nOur customer want to speculate your sector for good returns. \r\n \r\nPlease contact us for more information on  +973 650 09688 or mh@indobsc.com \r\n \r\nBest regards \r\nMr. Mat Hernandez', 'Good day!, lawmessenger.com \r\n \r\nOur customer want to speculate your sector for good returns. \r\n \r\nPlease contact us for more information on  +973 650 09688 or mh@indobsc.com \r\n \r\nBest regards \r\nMr. Mat Hernandez', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, '');
INSERT INTO `users` (`id`, `name`, `pass`, `avatar`, `cpm`, `wpm`, `hrate`, `fname`, `email`, `state`, `legal_issue`, `des_legal_issue`, `bck_experience`, `request`, `is_consultation`, `friend_id`, `address`, `fax`, `website`, `phone_num`, `user_type`, `jurisdiction`, `license_number`, `licence_status`, `device_token`) VALUES
(415, 'RobertUnarm', 'oj#Bui8j57C', 'M_415_1562060393.png', NULL, NULL, NULL, 'RobertUnarm', 'animatedvideos33@gmail.com', 'Ð Â Ð Ñ•Ð¡ÐƒÐ¡ÐƒÐ Ñ‘Ð¡Ð', 'General Practice Law', 'Hi there, I just came across your website and wanted to get in touch. \r\n \r\nI run an animation studio that makes animated explainer videos helping companies to explain what they do, why it matters and how they\'re unique in less than 2 minutes. \r\n \r\nWatch some of our work here: \r\nhttp://bit.ly/302mW57 - what do you think? \r\n \r\nI would love to make an awesome animated video for you guys. \r\n \r\nWe have a smooth production process and handle everything needed for a high-quality video that typically ta', 'Hi there, I just came across your website and wanted to get in touch. \r\n \r\nI run an animation studio that makes animated explainer videos helping companies to explain what they do, why it matters and how they\'re unique in less than 2 minutes. \r\n \r\nWatch some of our work here: \r\nhttp://bit.ly/302mW57 - what do you think? \r\n \r\nI would love to make an awesome animated video for you guys. \r\n \r\nWe have a smooth production process and handle everything needed for a high-quality video that typically takes us 6 weeks to produce from start to finish. \r\n \r\nFirst, we nail the script, design storyboards you canâ€™t wait to see animated. Voice actors in your native language that capture your brand and animation that screams premium with sound design that brings it all together. \r\n \r\nOur videos are made from scratch and designed to make you stand out and get results. No templates, no cookie cutter animation that tarnishes your brand. \r\n \r\nIf youâ€™re interested in learning more, please get in touch ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(417, 'Sarah', '123', 'M_417_1562175422.png', '140', '220', '300', 'Sarah', 'raygalvan@ymail.com', 'Texas', 'General Practice Law', '', 'Extensive ', '', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, ''),
(471, 'test', 'd41d8cd98f00b204e9800998ecf8427e', '1568982029.png', '0', '0', '0', 'Shashi Facebook', 'shashi_raj40@yahoo.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Delhi noida', '', '', '', 1, 0, '\'\'', 0, ''),
(472, 'test', '202cb962ac59075b964b07152d234b70', '1568985275.png', NULL, NULL, NULL, 'test', 'testing@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(473, 'test', '202cb962ac59075b964b07152d234b70', '1568985288.png', NULL, NULL, NULL, 'test', 'testing12345@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(474, 'test', '202cb962ac59075b964b07152d234b70', '1568985315.png', NULL, NULL, NULL, 'test', 'testing123456@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(475, 'test', '202cb962ac59075b964b07152d234b70', '1568985435.png', NULL, NULL, NULL, 'test', 'testing12345678@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(476, 'test', '202cb962ac59075b964b07152d234b70', '1568985490.png', NULL, NULL, NULL, 'test', 'testing12@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(477, 'test', '202cb962ac59075b964b07152d234b70', '1568985778.png', '140', '197', '21', 'test', 'testing1234@yopmail.com', '2', '13', '\'\'', 'sdfdsf', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 2, '1234', 0, ''),
(478, 'test', '202cb962ac59075b964b07152d234b70', '1568986008.png', NULL, NULL, NULL, 'test', 'testing321@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(479, 'test', '202cb962ac59075b964b07152d234b70', '1568986078.png', NULL, NULL, NULL, 'test', 'testing231@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(481, 'Shashi Ranjan', '81dc9bdb52d04dc20036dbd8313ed055', '1569425232.png', '140', '343', '33', 'Shashi Ranjan', 'srshashiranjan@gmail.com', '3', '4', '', 'Nothing', '\'\'', 0, 0, '', '', '', '', 2, 5, '543127890', 0, ''),
(482, 'Ravi Ranjan', '25f9e794323b453885f5181f1b624d0b', '1569490424.png', NULL, NULL, NULL, 'Ravi Ranjan', 'ravi@yopmail.com', 'Noida', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(483, 'lawyer Test1', '25f9e794323b453885f5181f1b624d0b', '1581338631.png', '174', '269', '100', 'assignment n', 'lawyer@yopmail.com', '2', '1', '\'\'', 'description on your phone or', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '656889', 0, 'de_7Bqk5Uaw:APA91bHKd47kvgvkcZD4xu2kcrgp62DneCHVcahaPqPLGljSJYlJLw6u6mJ-fWE2-gisczI8qLoTKuZyOzP_bz4sx7Tcb9rY7TLKNa2uP2m2sMRwLwN1C0g7k4FzNmCKdKTU9avx4IFi'),
(484, 'Client Test1', '0fe856619dce9b413630625f09ed5807', '1569568984.png', '0', '0', '0', 'Client Test1', 'client@yopmail.com', '2', '\'\'', '', '', '\'\'', 0, 0, 'Uttar ,.m.m.mm', '', '', '', 1, 0, '\'\'', 0, 'dCn1QOMj6IY:APA91bFyW7OFUYfCWMa9Q9NyQksT0T3E8T89cOrOeAxqHnh40PoPY818ZPN3IbbIbwGYAoshQkI4Lv4k2VEXjj_dUKPWQUwf6vRZg25J1Ll9euQphVNFWxf9GR5uWt5YFVs2HGdzs5aL'),
(485, 'test', '25f9e794323b453885f5181f1b624d0b', '1569569204.png', NULL, NULL, NULL, 'test', 'testing323@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(486, 'Lawyer2', '25f9e794323b453885f5181f1b624d0b', 'M_486_1579177238.jpg', '146', '240', '100', 'Lawyer 2', 'lawyer2@yopmail.com', '9', '1', '', 'desc', '\'\'', 1, 0, '', '', '', '', 2, 2, '6', 0, 'cdi0f6i8z9A:APA91bEk1uXXLuxEqHOT3JY0OeSGT1_RZq5dtTsQh4FVkH0lT_tNVEbLqWfr8Bv5GY9IHipR5YkypziObFJz1yABGPDSn5Tw2qSAnKXr-gaNd3OHO_8Xu2EOyOZXZOzovcdjEilgEJDV'),
(487, 'Client Test 2', '25f9e794323b453885f5181f1b624d0b', '1577110929.png', '0', '0', '0', 'Client Test 2', 'client2@yopmail.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Noida', '', '', '', 1, 0, '\'\'', 0, 'de_7Bqk5Uaw:APA91bHKd47kvgvkcZD4xu2kcrgp62DneCHVcahaPqPLGljSJYlJLw6u6mJ-fWE2-gisczI8qLoTKuZyOzP_bz4sx7Tcb9rY7TLKNa2uP2m2sMRwLwN1C0g7k4FzNmCKdKTU9avx4IFi'),
(488, 'test', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '140', '200', '8', 'test', 'testinga@yopmail.com', '2', '\'\'', '', 'Nothing', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, ''),
(489, 'test', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'test', 'testing11d@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(490, 'Ray', '25d55ad283aa400af464c76d713c07ad', '1576692123.png', '165', '260', '1500', 'David Galvan', 'raygalvan@lawmessenger.com', '2', '2', '\'\'', ' 30 years ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '09619699', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(491, 'Ray', '202cb962ac59075b964b07152d234b70', 'M_491_1583832871.jpg', '140', '200', '1000', 'Ray Galvan', 'rg@lawmessenger.com', '43', '3', '', '30 years practicing law', '\'\'', 1, 0, '', '', '', '+19729831024', 2, 43, '07599300', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(492, 'Ray', 'e030c5845a8bed8f16b095c7d58b5948', 'lawyer_avt.png', '180', '100', '400', 'Ray', 'ray@lawmessenger.com', '2', '2', '\'\'', 'None', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(493, 'Lawyrt test 3', '25f9e794323b453885f5181f1b624d0b', '1577455194.png', '165', '260', '150', 'Lawyrt tes', 'lawyer3@yopmail.com', '2', '5', '', 'nothing', '\'\'', 1, 0, '', '', '', '', 2, 3, '12345678', 0, 'cHTOqscSxgA:APA91bGdTeKrhRi_X4Bj2gt5OViYflB0cbAM-bGjGCyUB5YRFaHwiSNiv5eug-Ih6RQDHjrKfpWmScH32FgM2h5UW0SBt8hRM5d83vEvbRirfqvizhtB5FVKJUgqYSVhJ5tJbFMGTPr1'),
(495, 'Sam', 'b806334dd222d91837141595e1276b86', 'lawyer_avt.png', '100', '200', '500', 'Sam', 'sam@lawmessenger.com', '2', '2', '\'\'', 'No experience in anything ', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '12345578', 0, ''),
(496, 'John P. Lawyer', '202cb962ac59075b964b07152d234b70', '1577214389.png', '115', '220', '1000', 'John', 'john@lawmessenger.com', '7', '3', '', 'None', '\'\'', 1, 0, '', '', '', '', 2, 2, '123456', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(497, 'Lawyer04', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', '', '', '', 'Lawyer04', '123@lawmessenger.com', '2', '2', '\'\'', '', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(498, 'Manish Saxena', 'd41d8cd98f00b204e9800998ecf8427e', 'client_avt.png', NULL, NULL, NULL, 'Manish Saxena', 'saxena_manish_ad@yahoo.com', '5', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Florida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(499, 'Manish Saxena', 'd41d8cd98f00b204e9800998ecf8427e', 'client_avt.png', NULL, NULL, NULL, 'Manish Saxena', 'saxenamanishar@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(500, 'Client Test 4', 'a71dccb1bfd0e651bd78c06d78178b2d', 'lawyer_avt.png', NULL, NULL, NULL, 'Client Test 4', 'clienttest4@yopmailcom', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(501, 'clienttest5', '6c4aa2cfdbdb5d9343ca525bc4dba46d', 'client_avt.png', NULL, NULL, NULL, 'clienttest5', 'clienttest5@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'dallas', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(502, 'clienttest6', 'd05a383435564ad190bd24b2bb3aecf6', 'client_avt.png', NULL, NULL, NULL, 'clienttest6', 'clienttest6@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'dallas', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(503, 'clienttest7', '5f3256c9c43291b7cfdccb5e29ff8171', 'lawyer_avt.png', NULL, NULL, NULL, 'clienttest7', 'clienttest7@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(504, 'clinettest8', '427ea62d5c579c46bb8ac0135942bc7c', 'client_avt.png', NULL, NULL, NULL, 'clinettest8', 'clienttest8@yopmail.com', '3', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'dallas', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(505, 'Client 11', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Client 11', 'clienttest11@yopmail.com', '2', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(506, 'lawyer test 11', '25f9e794323b453885f5181f1b624d0b', '1571053040.png', '140', '200', '222', 'lawyer test 11', 'lawyertest11@yopmail.com', '2', '2', '\'\'', 'NOthing', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '123456787', 0, ''),
(507, 'testclient14', '25f9e794323b453885f5181f1b624d0b', '1571057385.png', NULL, NULL, NULL, 'testclient14', 'testclient14@yopmail.com', '3', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(508, 'test22', 'b259a13685671772cfa78191d16ba097', '1571057512.png', NULL, NULL, NULL, 'test22', 'test22@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'eknWgulXywY:APA91bHDVAjm-eyFHis7Kfn7iyU4Bs0jJTjxnRfhXe0hg0gwX9dTQICv3GylvGEtz1OlCHTNcwFQI2ZK9kzD_3r90r8hXNpd3afbsNVzftpiud8cxv4zwvhKN4qtWgr2TGtOyOq82WFl'),
(509, 'test24', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', '0', '0', '0', '', 'test24@yopmail.com', '', '\'\'', '', '', '\'\'', 0, 0, '', '', '', '', 1, 0, '\'\'', 0, 'e5V0N9ROxwA:APA91bGJGFXrKGiC95t25uzpwAejPpJpuhbaOUzSawD9-943i75WTClZsVSz4cqvGDdt4aRUTKflhg9hXgNXo5QCAIZ-5Sp_8i7_xYUelk_S0skNLolFIX9Szi_yc98luMm44Rt8E4Vg'),
(510, 'law25', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '2', '5', '10', 'law25', 'test25@yopmail.com', '7', '2', '\'\'', 'hgvjbgj', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 7, '1234567489', 0, 'e5V0N9ROxwA:APA91bGJGFXrKGiC95t25uzpwAejPpJpuhbaOUzSawD9-943i75WTClZsVSz4cqvGDdt4aRUTKflhg9hXgNXo5QCAIZ-5Sp_8i7_xYUelk_S0skNLolFIX9Szi_yc98luMm44Rt8E4Vg'),
(511, 'law26', '25d55ad283aa400af464c76d713c07ad', '1571061477.png', NULL, NULL, NULL, 'law26', 'test26@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(512, 'law27', '25d55ad283aa400af464c76d713c07ad', '1571062032.png', NULL, NULL, NULL, 'law27', 'test27@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(513, 'testclient15', '25f9e794323b453885f5181f1b624d0b', '1571063049.png', NULL, NULL, NULL, 'testclient15', 'testclient15@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '123456789', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(514, 'testclient16', '25f9e794323b453885f5181f1b624d0b', '1571063417.png', NULL, NULL, NULL, 'testclient16', 'testclient16@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Delhi', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(515, 'law28', '25d55ad283aa400af464c76d713c07ad', '1571118177.png', NULL, NULL, NULL, 'law28', 'test28@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(516, 'lawyer29', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '5', '3', '10', 'lawyer29', 'test29@yopmail.com', '2', '2', '\'\'', 'gh', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(517, 'law30', '25d55ad283aa400af464c76d713c07ad', '1571120647.png', NULL, NULL, NULL, 'law30', 'test30@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(518, 'law31', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '2', '5', '10', 'law31', 'test31@yopmail.com', '2', '2', '', 'ghbvjhb', '\'\'', 0, 0, '', '', '', '', 2, 2, '', 0, 'e5V0N9ROxwA:APA91bGJGFXrKGiC95t25uzpwAejPpJpuhbaOUzSawD9-943i75WTClZsVSz4cqvGDdt4aRUTKflhg9hXgNXo5QCAIZ-5Sp_8i7_xYUelk_S0skNLolFIX9Szi_yc98luMm44Rt8E4Vg'),
(519, 'client32', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'client32', 'test32@yopmail.com', '6', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'noida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(520, 'Coppermobile Device', 'd41d8cd98f00b204e9800998ecf8427e', '1577345783.png', '165', '260', '20', 'Coppermobile Device ', 'device.coppermobile@gmail.com', '2', '3', '', 'NA', '\'\'', 1, 0, '', '', '', '', 2, 4, 'b25789p9', 0, 'cdi0f6i8z9A:APA91bEk1uXXLuxEqHOT3JY0OeSGT1_RZq5dtTsQh4FVkH0lT_tNVEbLqWfr8Bv5GY9IHipR5YkypziObFJz1yABGPDSn5Tw2qSAnKXr-gaNd3OHO_8Xu2EOyOZXZOzovcdjEilgEJDV'),
(521, 'test 33', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', '0', '0', '0', 'User', 'test33@yopmail.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Ghjj', '', '', '', 1, 0, '\'\'', 0, 'eUpz9SSbwyc:APA91bHQrhavN5T2NGAkFid998RktaU1ikd9gL1dCYFlRniDFyFlV2bdFq-XHTbXy7LSqTW11OFadHFU1fiSQF8C3yklHfXJzlY8MB2ZmCpgWk_ECpLjWba2bQkE4oho57OypClq9hnI'),
(522, 'law34', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '5', '5', '10', 'law34', 'test34@yopmail.com', '7', '4', '\'\'', 'qwrewt', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 7, 'fghjngv ', 0, ''),
(523, 'Test Lawyer21', '25f9e794323b453885f5181f1b624d0b', '1571205596.png', '100', '200', '120', 'Test Lawyer21', 'testlawyer21@yopmail.com', '3', '5', '\'\'', 'Nothing', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '123456789', 0, ''),
(524, 'test lawyer 22', '25f9e794323b453885f5181f1b624d0b', '1571205761.png', '100', '200', '250', 'test lawyer 22', 'testlawyer22@gmail.com', '3', '4', '\'\'', 'nothing', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '123456789', 0, ''),
(525, 'test35', '25d55ad283aa400af464c76d713c07ad', '1571205990.png', '100', '200', '200', 'test35', 'test35@yopmail.com', '3', '5', '\'\'', 'nothing', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, 'qfhjkk', 0, ''),
(526, 'test36', '25d55ad283aa400af464c76d713c07ad', '1571206344.png', NULL, NULL, NULL, 'test36', 'test36@yopmail.com', 'noida', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(527, 'test37', '25d55ad283aa400af464c76d713c07ad', '1571206372.png', NULL, NULL, NULL, 'test37', 'test37@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(528, 'testLawyer23', '25f9e794323b453885f5181f1b624d0b', '1571211633.png', NULL, NULL, NULL, 'testLawyer23', 'testlawyer23@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(529, 'Shubhangi Vaish', '7fbd655ce52cf93f545e87da0b138bdf', 'M_529_1571225162.png', '5', '2', '10', 'Shubh', 'shubhangi.v@coppermobile.com', '2', '2', '', 'jm ,h', '\'\'', 0, 0, '', '', '', '', 2, 2, 'ugjyhjhu', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(530, 'Atul', '25f9e794323b453885f5181f1b624d0b', '1571230248.png', '120', '220', '600', 'Atul', 'atul2@yopmail.com', '2', '5', '\'\'', 'hshshdjdhd', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '12345667', 0, ''),
(531, 'law38', '25d55ad283aa400af464c76d713c07ad', '1571230820.png', '71', '161', 's', 'law38', 'test38@yopmail.com', '5', '15', '\'\'', 'go hbv', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'fuuufyuv', 0, ''),
(532, 'law39', '25d55ad283aa400af464c76d713c07ad', '1571230913.png', '70', '160', '10', 'law39', 'test39@yopmail.com', '5', '6', '\'\'', 'cb', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'thh', 0, ''),
(533, 'law40', '25d55ad283aa400af464c76d713c07ad', '1571231142.png', '99', '199', '67', 'law40 changes ', 'test40@yopmail.com', '8', '14', '', 'djhd', '\'\'', 1, 0, '', '', '', '', 2, 9, 'duud', 0, ''),
(534, 'Puja Kumari', 'd41d8cd98f00b204e9800998ecf8427e', '1571232611.png', '200', '273', '200', 'Puja Kumari', 'srpujaranjan@gmail.com', '2', '15', '\'\'', 'Nothing', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '1234567', 0, ''),
(535, 'law41', '25d55ad283aa400af464c76d713c07ad', 'M_535_1571377242.jpeg', '200', '250', '5000', 'law41', 'test41@yopmail.com', '7', '6', '', 'ffjk', '\'\'', 1, 0, '', '', '', '', 2, 10, 'uduf', 0, ''),
(536, 'law42', '25d55ad283aa400af464c76d713c07ad', '1571294663.png', '500', '300', '1000', 'law42', 'test42@yopmail.com', '8', '6', '\'\'', 'gjn', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, 'vbtyughj', 0, ''),
(537, 'law 45', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '2', '1', '1000', 'law 45', 'test45@yopmail.com', '2', '2', '\'\'', 'fv', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, 'dCUJzt39yZk:APA91bHdHL8VewMkVPvGMGwpRAt1MgIU6BEoIqtYXMApmx6ISzlPdHEMx6gnbR53c4t1eLnKb9r5GuHKglnUN8nNhVXeoq5_A23QEmIOPtuZ9G-nNOUmwowE1MyFi2jFphqhyFwdJ37k'),
(538, 'test46', '25d55ad283aa400af464c76d713c07ad', '1571297097.png', '0', '0', '0', 'test46', 'test46@yopmail.com', '9', '\'\'', '', '', '\'\'', 0, 0, 'j', '', '', '', 1, 0, '\'\'', 0, ''),
(539, 'law48', '25d55ad283aa400af464c76d713c07ad', '1571303806.png', '50', '2', '500', 'law48', 'test48@yopmail.com', '9', '2', '', 'fjg', '\'\'', 0, 0, '', '', '', '', 2, 9, 'ugjyhjhu', 0, ''),
(540, 'test49', '25d55ad283aa400af464c76d713c07ad', '1571306245.png', NULL, NULL, NULL, 'test49', 'test49@yopmail.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'fvb', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(541, 'test50', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'test50', 'test50@yopmai', '7', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'jhb', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(542, 'test51', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'test51', 'test51yopmail', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'vb ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(543, '43', '35f4a8d465e6e1edc05f3d8ab658c551', 'client_avt.png', NULL, NULL, NULL, '43', 'h', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'fg', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(544, 'fg', '9f61408e3afb633e50cdf1b20de6f466', 'lawyer_avt.png', '7', '6', '790', 'fg', 'fg@fg.mfr', '6', '2', '\'\'', 'ftgjn', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 6, 'ugjyhjhu', 0, ''),
(545, 'law52', '25d55ad283aa400af464c76d713c07ad', '1571316087.png', NULL, NULL, NULL, 'law52', 'test52@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(546, 'law55', '25d55ad283aa400af464c76d713c07ad', '1571377649.png', NULL, NULL, NULL, 'law55', 'test55@yoomail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(547, 'test lawyer 41', '25f9e794323b453885f5181f1b624d0b', '1571378290.png', NULL, NULL, NULL, 'test lawyer 41', 'lawyer41@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'eCQDdlFZMMI:APA91bHET6TUb2Oj4ZIwGrygQTBwzKVRD9WX1cIOJlrDIuL35nwBFkHtx1MF4uTI6OKyFcdFWJRU1YX_C_KxiVGLnngnjADc-yZw_-Db2klVHCBpw0SQkdNvzCCHL6FOCJ4PeHegPy1C'),
(548, 'lawyer 42', '25f9e794323b453885f5181f1b624d0b', '1571378561.png', NULL, NULL, NULL, 'lawyer 42', 'lawyer42@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(549, 'Lawyer 43', '25f9e794323b453885f5181f1b624d0b', '1571378815.png', '200', '280', '1343', 'Lawyer 43', 'lawyer43@yopmail.coom', '3', '6', '\'\'', 'sdfsdfdsfsdf', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, 'sdfdsfdsf', 0, ''),
(550, 'lawyer44', '25f9e794323b453885f5181f1b624d0b', '1571379022.png', '200', '280', '222', 'lawyer44', 'lawyer44@yopmail.com', '3', '5', '\'\'', 'hfhfjfjgjvncjcjvjgk', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, 'dhdhfhfj', 0, ''),
(551, 'w56', '25d55ad283aa400af464c76d713c07ad', 'M_551_1573215620.jpeg', '89', '80', '100', '!@w56', 'test56@yopmail.com', '2', '\'\'', '', '\'\'', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(552, 'law57', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '100', '100', '258', 'law57', 'test57@yopmail.com', '10', '2', '', 'Sit ut clita ignÃ´ta Ã§Ã´nsÃ©ctÃ©tuer, nam Ã¯n elitr zril tÃªmpor. PÃ¨r in wisÃ® dÃ®cta. ErrÃ¨m definÃ®Ãªbas Ã¹t eÃ´s, has malis homero splÃ«ndide Ã©Ã¹! VidissÃª tritanÃ® aliquÃ ndo cÃ¹ est. DuÅ“ nÃ¹llam graecÃ¯ intÃ¨gre ad.\r\n\r\nNÃ© cÃ sÃ« incÃ´rrÃ¹ptÃ« Ã«st, quÅ“ Ã¯n fÃ¢cetÃ¨ complÃ¨Ã§titur, Ã«Ã¢ Ã©Ã¢m Ã dhuc Ã«tiam sÅ“lÃ¨Ã t. TÃª eÃ®rmod vÅ“luptÃ¢ria vix, copÃ®osae invidunt Ã©os cu? PerfectÃ´ Ã¨xpÃ©tÃªndÃ¢ no usÃ¹, sit Ã®n wisÃ® natum Ã¢Ã¹gÃ¹e. LabÅ“rÃ« Ã©lectram Ã¯mperdÃ¯et tÃ« his, vÃ®s pÃ¹tÃ«nt dÃ«nique Å“fficÃ®is Ã d. FÃ cilisi pÃªrfÃ©cto voluptariÃ¢ vÃ¨l te, id eam sÃ®nt clÃ¯tÃ¢ Ã§Ã¨tero, dÃ»o cu nÃ¹llÃ¢m mÅ“llis sÃ¢peret!\r\n\r\nNÃ© cÃ sÃ« incÃ´rrÃ¹ptÃ« Ã«st, quÅ“ Ã¯n fÃ¢cetÃ¨ complÃ¨Ã§titur, Ã«Ã¢ Ã©Ã¢m Ã dhuc Ã«tiam sÅ“lÃ¨Ã t. TÃª eÃ®rmod vÅ“luptÃ¢ria vix, copÃ®osae invidunt Ã©os cu?ffffffffvbbbbbgfbgfbnghnbghnmky NÃ© cÃ sÃ« incÃ´rrÃ¹ptÃ« Ã«st, quÅ“ Ã¯n fÃ¢cetÃ¨ complÃ¨Ã§titur, Ã«Ã¢ Ã©Ã¢m Ã dhuc Ã«tiam sÅ“lÃ¨Ã t. TÃª eÃ®rmod svgbbhgiknm NÃ© cÃ sÃ« incÃ´rrÃ¹ptÃ«  NÃ© cÃ sÃ« ghjjjtee', '\'\'', 0, 0, '', '', '', '', 2, 10, 'gffghg', 0, ''),
(553, 'test88', '25d55ad283aa400af464c76d713c07ad', '1571403165.png', '99', '199', '300', 'test88', 'test88@yopmail.com', '5', '6', '\'\'', 'guggujn', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'yhjh', 0, 'eUpz9SSbwyc:APA91bHQrhavN5T2NGAkFid998RktaU1ikd9gL1dCYFlRniDFyFlV2bdFq-XHTbXy7LSqTW11OFadHFU1fiSQF8C3yklHfXJzlY8MB2ZmCpgWk_ECpLjWba2bQkE4oho57OypClq9hnI'),
(554, 'law77', '25d55ad283aa400af464c76d713c07ad', '1571403423.png', '99', '199', '300', 'law77', 'test77@yopmail.com', '6', '3', '\'\'', 'jcicigigigi', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 6, 'ufjjc', 0, 'd2rFpTDQ4C0:APA91bHbfyo9Q-wigJEASzcmb8Cw7ui2bXOaNtZL-QlvFZzpvlyNvR1Ijre6okwXnhjyiX6yuNxvKQ4juhgILTJ0b4cHz3xffePoss8S7mkFaXjigbbsM7wK4RgoiFZIElqfSn4oWWlJ'),
(555, 'law99', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '300', '199', '1000', 'law99', 'test99@yopmail.com', '8', '8', '\'\'', 'ghfhghhj', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, 'fgbhrgh', 0, ''),
(556, 'user99', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'user99', 'user99@yopmail.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'fgdg', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(557, 'Patti', '76de971115e715e908d12062a31095d4', '1571428285.png', NULL, NULL, NULL, 'Patti', 'pattigonzales1415@gmail.com', 'Fayettville', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(558, 'Patti', '8585fda41605c25a35560d62839650c1', '1571428734.png', '140', '250', '500', 'Patti', 'laura@lawmessenger.com', '4', '3', '\'\'', 'lots', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '12#4567', 0, ''),
(559, 'Patti', '76de971115e715e908d12062a31095d4', '1571585074.png', '140', '240', '300', 'Patti', 'PG@LAWMESSENGER.com', '4', '4', '\'\'', 'Hello', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '123456', 0, ''),
(560, 'Jatin Kumar', 'd41d8cd98f00b204e9800998ecf8427e', '1571834609.png', '150', '260', '100', 'Jatin Kumar', 'jatin.k@coppermobile.com', '2', '3', '\'\'', 'hello f', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'hdkdkkc', 0, 'dEf7DMagKmA:APA91bGznC6wT1Fkl7BDsO109kXoVu7aIGMhVFintFhBkFBm4GrJHI1WzFyRn-NNEsAZsX6C7AdXA1XmffD_Kfeso4uq5ICcSpVFRURvFyjhXB8ZqRK7bNgeKnNppDz2DIOGrxHISBdS'),
(561, 'David', '673a28585b468a9429df6e104002ac74', '1571862755.png', '140', '240', '400', 'David', 'david@lawmessenger.com', '2', '3', '\'\'', 'none', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '12345678', 0, ''),
(562, 'manish999', 'c8c605999f3d8352d7bb792cf3fdb25b', '1571910193.png', '200', '260', '60', 'manish999', 'manish@yopmail.com', '5', '2', '\'\'', 'ghygvh j', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, '566778888', 0, ''),
(563, 'Rick', '673a28585b468a9429df6e104002ac74', '1572357010.png', '140', '240', '500', 'Rick', 'test@lawmessenger.com', '2', '2', '\'\'', 'retired', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '123456', 0, ''),
(564, 'Ralph', '673a28585b468a9429df6e104002ac74', '1572372091.png', '120', '200', '400', 'Ralph', 'ralphcrosby@lawmessenger.com', '4', '7', '\'\'', 'A lot ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '123556k', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(565, 'Client 33', '25d55ad283aa400af464c76d713c07ad', '1572382959.png', NULL, NULL, NULL, 'Client 33', 'client@lawmessenger.com', 'LA', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(566, 'lawyer101', '25f9e794323b453885f5181f1b624d0b', '1572433110.png', '120', '200', '200', 'lawyer 101', 'lawyer101@yopmail.com', '3', '4', '\'\'', 'na', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '6543899', 0, ''),
(567, 'client102', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Client 102', 'client102', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'dd', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(568, 'l1', '25f9e794323b453885f5181f1b624d0b', '1572436467.png', '100', '200', '666', 'lawyer one', 'l1@yopmail.com', '4', '2', '\'\'', 'cghjk', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'fyhhj89oo', 0, ''),
(569, '1234', '25d55ad283aa400af464c76d713c07ad', '1572436915.png', '70', '180', '8596', 'test 55', 'test55@yopmail.com', '4', '6', '', 'hi line ', '\'\'', 1, 0, '', '', '', '', 2, 4, 'hjk', 0, 'em7oVoTgc3U:APA91bEa8Z7Guej-fmOaXenYzvm49As6yGLal4YY9zllRT-t_Ngs3wO9QKT2jw5a-kOFqfSmspypb6yv6YTpBEcEgkoPsGM3_8RxWdsd6x0009I04xknNPl1rGegy7Fzv3LcRspAIGdL'),
(570, 'c55', '25d55ad283aa400af464c76d713c07ad', '1572437084.png', NULL, NULL, NULL, 'client 56', 'test78@yopmail.com', 'vhjj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '9', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(571, 'laww1', '25f9e794323b453885f5181f1b624d0b', '1576661443.png', '200', '250', '400', 'red band', 'law1@yopmail.com', '6', '2', '', ' test', '\'\'', 1, 0, '', '', '', '', 2, 7, '778889', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(572, 'ctt1', '25d55ad283aa400af464c76d713c07ad', '1576242665.png', NULL, NULL, NULL, 'ss', 'cl1@yopmail.com', '2', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fay_IBX8i60:APA91bH8Z0cBfqtY2OtXYSlV4uFqiz3eVVmPZtetsZp2CF-eceWnClzcNQIdAk7_WI8zSZ6paQ_XOqTXuDRejRA9VZ2oIWbsccysCpX2qrGrxHbZ00GBdksksmHc_3eoqTfyKxYy3FPP'),
(573, 'laww2', '25d55ad283aa400af464c76d713c07ad', '1572441588.png', '70', '180', '556', 'law two', 'laww2@yopmail.com', '5', '6', '\'\'', 'bjkl', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'ghhk', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(574, 'c1', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c1 client', 'c1@yopmail.com', 'hj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(575, 'c2', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c2', 'c2@yopmail.com', 'gg', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(576, 'c3', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c3', 'c3@yopmail.com', 'ghjj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(577, 'c4', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c4', 'c4@yopmail.com', 'gg', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(578, 'c5', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c5', 'c5@yopmail.com', 'hhjj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '3', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(579, 'c6', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c6', 'c6@yopmail.com', 'hhjj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '3', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'ecHwHbzOTyU:APA91bHQ09UcQm9qOTT40D5_z7CjhbHaJqeGwjukrTAB-PlUhyAZqkTB9Xdo29aYDp_wjGMNmLwmhFWV3Muo5r8R1ilTcyO82NOtCJCX4_uYDHumVXDsppLsADy8-0PZOwfTpnaCfeLV'),
(580, 'c7', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'c7', 'c7@yopmail.com', 'ghj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '3', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'ecHwHbzOTyU:APA91bHQ09UcQm9qOTT40D5_z7CjhbHaJqeGwjukrTAB-PlUhyAZqkTB9Xdo29aYDp_wjGMNmLwmhFWV3Muo5r8R1ilTcyO82NOtCJCX4_uYDHumVXDsppLsADy8-0PZOwfTpnaCfeLV'),
(581, 'c202', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '200', '160', '200', 'c 202', 'c202@yopmail.com', '2', '3', '\'\'', '12345678', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(582, 'l201', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '200', '160', '112', 'l 201', 'l201@yopmail.com', '3', '14', '\'\'', 'NA', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '123456789', 0, ''),
(583, 'lawyer88', '46154876370408e92e2a00b7b98ed2e6', 'lawyer_avt.png', '200', '140', '350', 'Ray', 'raygal@lawmessenger.com', '2', '2', '\'\'', 'None', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'lawyer01', 0, ''),
(584, 'raygal1975', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '140', '220', '500', 'Ray', 'raygal1975@lawmessenger.com', '2', '2', '\'\'', 'None', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '122456', 0, ''),
(585, 'test111', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'test 111', 'test111@yopmail.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Uttar Pradesh', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(586, 'test112', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'test 112', 'test112@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'ssss', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(587, 'test113', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '240', '200', '100', 'test 113', 'test113@yopmail.com', '4', '16', '\'\'', 'na', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '1234', 0, ''),
(588, 'test114', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'test 114', 'test114@yopmail.com', '2', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Uttar Pradesh', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(589, 'test115', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '4', '6', '222', 'test 115', 'test115@yopmail.com', '3', '16', '\'\'', 'sdf', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, 'sdfsdf', 0, ''),
(590, 'test116', '25f9e794323b453885f5181f1b624d0b', '1572965603.png', '200', '200', '100', 'test 116', 'test116@hotmail.com', '4', '16', '\'\'', 'ss', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'sss', 0, ''),
(591, 'client201', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Client test 201', 'client201@yopmail.com', 'dd', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'e4Q6cUJS2G0:APA91bGrq9Q33WzdiXmtOSFL1M7t5pj1iPniwY9vJxh74Dxx-VF91tafqfNIwiyweiryM13xfFjLOiOrFFEucbhAy2xA52CSihBVhsNTik1QxhQl4Aw06jhw3qa-EID5mhlyK8ne8gGj'),
(592, 'client202', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'client test 202', 'client202@yopmail.com', 'dd', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '6', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(593, 'client203', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'client 203', 'client203@yopmail.com', 'ss', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '6', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(594, 'lawyer201', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '102', '202', '404', 'lawyer 201', 'lawyer201@yopmail.com', '3', '6', '\'\'', 'na', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '123', 0, ''),
(595, 'raygal', '25d55ad283aa400af464c76d713c07ad', '1576680265.png', '140', '240', '500', 'Ray Galvan', '11@lawmessenger.com', '2', '4', '\'\'', 'none ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '07599300', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(596, 'patti21', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'Patti', 'pattig@lawmessenger.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(597, 'pea', '25d55ad283aa400af464c76d713c07ad', '1577214920.png', NULL, NULL, NULL, 'Peanut', 'pea@lawmessenger.com', '6', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'LA', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(598, '44lawyer', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '140', '220', '500', 'Ray Galvan', '44@lawmessenger.com', '2', '2', '\'\'', 'none', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '07599300', 0, ''),
(599, 'test100', '4cf0fc7cefdfd8e32e1c9ef5dc9dbb8d', 'client_avt.png', NULL, NULL, NULL, 'test100', 't100@yopmail.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(600, 'vm', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '70', '175', '586', 'Vikrant D Massey', 'vkm@yopmail.com', '10', '4', '\'\'', 'hsjsueh ejdv eudh ddidj dkdhe', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'hi line of ueh', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(601, 'client66', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client Taylor', '66@lawmessenger.com', 'Fayettville', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(602, 'Jimbo', '25d55ad283aa400af464c76d713c07ad', '1577477450.png', NULL, NULL, NULL, 'Jim', 'jm@lawmessenger.com', '6', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'LA', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(603, 'RalphC', '25d55ad283aa400af464c76d713c07ad', 'M_603_1581449032.jpg', '0', '0', '0', 'Ralph', 'ralph@lawmessenger.com', '43', '\'\'', '', '', '\'\'', 0, 0, 'Keller', '', '', '', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(604, 't12', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'test12', 't12@yopmail.com', 'jfjfiig', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '11', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(605, 'ajit123', 'afd3a6c5ea411209aedfd249d57a7adc', 'client_avt.png', NULL, NULL, NULL, 'ajit banerjee', 'ajit@gmwil.com', 'hshsj', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '6', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(606, 'testlaw', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '70', '170', '100', 'test lawyer', 'lawtest@yopmail.com', '4', '2', '\'\'', 'lorem ipsum ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '1235qwerty', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(607, 'testclient', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'test client', 'testc@yopmail.com', 'Alaska', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '2', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(608, 'newc', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'newc', 'newc@yopmail.com', '3', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'noida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(609, 'noopur', 'd41d8cd98f00b204e9800998ecf8427e', 'lawyer_avt.png', '100', '200', '580', 'noopur.g@coppermobile.com', 'noopur.g@coppermobile.com', '4', '5', '\'\'', 'ggh', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'dhjddj', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(610, 'tl', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '99', '170', '50', 'test lawyer', 'tl@yopmail.com', '10', '6', '\'\'', 'jfjfjg', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 10, 'ifkgkg', 0, 'f843XL-Wd6A:APA91bHgrs0dRK8m6hxpweoYd7l9qKk7hbVA0P5N5YRwJM9eUrxeRK-9qYtX6dqXz975GslEdRwS5muPXo6ImElbge_BpdBOnq1a09bwC-WkPs-J6jTkKc4bzDerlxhkL34SoCxRkOxq'),
(611, 'client57', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client Bob', 'bob57@lawmessenger.com', 'Fayetteville', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(612, 'client58', '25d55ad283aa400af464c76d713c07ad', '1577478018.png', NULL, NULL, NULL, 'Client 58(99)', 'client99@lawmessenger.com', '2', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Juno', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(613, 'client59', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'client test59', 'client59@lawmessenger.com', 'Fayetteville', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(614, 'Lawyer37', '25d55ad283aa400af464c76d713c07ad', '1576702534.png', '165', '260', '500', 'Nora Cortez', 'lawyer37@lawmessenger.com', '4', '6', '\'\'', 'Aviation Law, FAA Consultant', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, '274847', 0, 'eHCxD4yDCR0:APA91bE5A1n36zaNBxHT8_uLOdTBt_tXqeIlsGuC0nA9BH_-a2IvQ8vFBAFhhHdLy0-YG_wIf-UcD3oI-od54eSRCMMQVlM1fMziVqYT33bARbL0soYl7MJhqjV0OGZT7ZDlRdzVvnRy'),
(615, 'client13', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Test13 Client', 'client13@lawmessenger.com', 'Fayettevill', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(616, 'lawyer25', '25d55ad283aa400af464c76d713c07ad', '1577510805.png', '140', '240', '800', 'Lawyer25 Test', 'lawyer25@lawmessenger.com', '3', '6', '\'\'', 'test', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '1234567', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(617, 'lawyer31', '3568c9cdf4b59934b4215e95039abc27', 'M_617_1583190667.png', '165', '260', '1000', 'Lawyer 31', 'ray@messagebilling.com', '43', '4', '', 'na', '\'\'', 1, 0, '', '', '', '', 2, 2, '12456', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(618, 'TB', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '140', '240', '1500', 'Tom Brady ', 'tb@lawmesswnger.com', '3', '4', '\'\'', 'hddff', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '123466', 0, 'eFSWJaUjJt4:APA91bEjt8Z0mZpw1zs8LM2s58wHOlfPwB_F2UVaD6Sn7lhFK2vv8jNBrIl7ldHeJBuztCsKhfiaxBHYkJnkUHyBmmuNbR-gv_Y5QpMjzMMGsmROGBY9XiTy4741gfK7SGKvTBYen0Dv'),
(620, 'rudy', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'Rudy Gulianni', 'rudy@lawmessenger.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(621, 'c457', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'client 457', 'client457@yopmail.com', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'noida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(622, 'jam', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '200', '240', '100', 'james', 'jam@yopmail.com', '9', '7', '\'\'', 'ificivgivi', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 9, 'gguujyyjj', 0, 'cB0WhX_U5sc:APA91bEDFvDW8r2UrIOj74VFNi25IvVZspUXpdEwlhCBpvqvAOWiTsUaGdsqNP4ptr7UmaJB9S_GStAeFMlaFT5ORnfzjup-zVnKY2ALjmLvkgglxksW2IqkRn4DLvffjnSYuEgVtfYQ'),
(623, 'ck1', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'ctt1', 'ctt1@yopmail.com', 'vikvi', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '8', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'cB0WhX_U5sc:APA91bEDFvDW8r2UrIOj74VFNi25IvVZspUXpdEwlhCBpvqvAOWiTsUaGdsqNP4ptr7UmaJB9S_GStAeFMlaFT5ORnfzjup-zVnKY2ALjmLvkgglxksW2IqkRn4DLvffjnSYuEgVtfYQ'),
(624, 'l34', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '100', '200', '56', 'lawyer34', 'l34@yopmail.com', '9', '12', '\'\'', 'kfkfkckv', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 9, 'cncjcjck', 0, 'cB0WhX_U5sc:APA91bEDFvDW8r2UrIOj74VFNi25IvVZspUXpdEwlhCBpvqvAOWiTsUaGdsqNP4ptr7UmaJB9S_GStAeFMlaFT5ORnfzjup-zVnKY2ALjmLvkgglxksW2IqkRn4DLvffjnSYuEgVtfYQ'),
(625, 'ttr', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'ttt', 'ttr@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(626, 'lawyer9', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '240', '200', '200', 'Lawyer 09', 'lawyer9@yopmail.com', '3', '3', '\'\'', 'I am a family lawyer', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '1234321234', 0, ''),
(627, 'client9', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Client 09', 'client9@yopmail.com', '10', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Florida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(628, 'tt1', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'ttr1', 'tt1@yopnail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(629, 'ttr3', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'ttr3', 'ttr3@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'cB0WhX_U5sc:APA91bEDFvDW8r2UrIOj74VFNi25IvVZspUXpdEwlhCBpvqvAOWiTsUaGdsqNP4ptr7UmaJB9S_GStAeFMlaFT5ORnfzjup-zVnKY2ALjmLvkgglxksW2IqkRn4DLvffjnSYuEgVtfYQ'),
(630, 'l78', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '165', '260', '46', 'lawyer 78', 'l78@yopmail.com', '8', '6', '\'\'', 'dghikn', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, 'ghjj', 0, 'dQ6LIw8rOno:APA91bE6l17lQKFCFvMhnUWNdvAk8aj8YUi5j4zWOaudEN6oYjElbfICgw4R6i8qFfW5fsbwKS4IRkXg5Bfx9Phuquk5hpHD68GS_N49r4WUKCVyysM3Zu7nXWKMC9OGXKPwrKA_WAJU'),
(631, 'l54', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '200', '100', '10', 'l54', 'l54@yopmail.com', '2', '2', '\'\'', '567ghjbn', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'gfgh', 0, ''),
(632, 'at1', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'at1', 'at1@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(633, 'client45', '25d55ad283aa400af464c76d713c07ad', 'M_633_1574088851.png', '0', '0', '0', 'Client45 Jonez', 'client45@lawmessenger.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Mobile', '', '', '', 1, 0, '\'\'', 0, ''),
(634, 'client90', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'client90 galvan', 'client90@lawmessenger.com', 'fayetteville', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(635, 'shivanisingh122', '0d574b1882a2ea00c7b407343dcab361', 'lawyer_avt.png', '115', '220', '536556', 'shivani singh', 'singhshivani7376@gmail.com', '5', '5', '\'\'', ' i have vshjjjsjhbb hjsjnns hhhnsbbs jjbsbbbs jjshhs jjshhbsh jjshhhsbs jsjhhhsb', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, '123456', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(636, 'n22', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '85', '180', '100', 'newl22', 'n22@yopmail.com', '', '5', '\'\'', '\'ghjklm n', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 6, '\'vhjk', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(637, 'ni', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '165', '260', '86', 'ni', 'ni@yopmail.com', '5', '6', '\'\'', 'vhikkk', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'ghhj', 0, 'fEyWOkMO8qI:APA91bHavez6SFdIopkOhF7DcG3QFx1f8zXD1tUS6jNmDYdZbGp451WJE4YC2K70GTYkd8_8yb0EQWxlfcB1iKJsi5i4ASK_Vm4YIOvp_FIvwxN42LcZJeWJi0MfK8oBwyy1kPYGu-oK'),
(638, 'raygal2', 'd41d8cd98f00b204e9800998ecf8427e', 'lawyer_avt.png', '140', '220', '1000', 'Raygal2', 'deenjhon6@gmail.com', '2', '2', '\'\'', 'None', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '1234567', 0, ''),
(639, 'client48', '25d55ad283aa400af464c76d713c07ad', '1577205322.png', NULL, NULL, NULL, 'Red Sanford ', 'client48@lawmessenger.com', '2', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Mobile ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(640, 'client89', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'Client89 Smith', 'client89@lawmessenger.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'c0CX_qiPvy8:APA91bE0oxK7UWEAjoDHruBk4d1_vRqhUq_d4SsanuMMJCABbUuFLBuAclLspdcKHWXjvIvPiDyMD8jDHEJs1onHTrv6D3hSji0hc9S-nrvvI3Fbxyi4TuFfdr8nvRQEXUrw0A0-t2C8'),
(641, 'client60', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', '140', '240', '1000', 'Lawyer60 Jones', 'client60@lawmessenger.com', 'LA', '5', '\'\'', 'hello', '\'\'', 0, 0, '5', '\'\'', '\'\'', '\'\'', 1, 4, '12345678', 0, 'fPQwGV4DJ2c:APA91bGPerZF5LsDB6-f_DWjcoogqTSmR1di6eu36kz0uvDOMulMQOi0F0mm3Yy33TxwQWMgGg8aZ8wUzqNTtXAqCXEi9DxOGb__smq41CVcXOzKDuE3OeOE6GVdJqQNBLC_jxmrZjES');
INSERT INTO `users` (`id`, `name`, `pass`, `avatar`, `cpm`, `wpm`, `hrate`, `fname`, `email`, `state`, `legal_issue`, `des_legal_issue`, `bck_experience`, `request`, `is_consultation`, `friend_id`, `address`, `fax`, `website`, `phone_num`, `user_type`, `jurisdiction`, `license_number`, `licence_status`, `device_token`) VALUES
(642, '12Lawyer', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '165', '260', '800', '12Lawyer Holmes', '12Lawyer@lawmessenger.com', '3', '5', '\'\'', '1000 words', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '1234567', 0, 'ffGKhEiR094:APA91bFdCCFI3SRF4-oaakgNy-0VyNsox0wP-bEOm7oyFad1uHCf0NjwI44pboL68zJiGrFB1RuQFC8f3A_hYRp9grsciemuV2VtGGgp0BqYgzSAxSCqh8mlzKqQIZ0SAXkBP2tbVwHm'),
(643, 'shashiranjan', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Shashi\r\nranjan', 'shashi.r2@coppermobile.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, '1234'),
(644, 't1', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 't1', 't1@yopmail.com', 'rtyu', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '3', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fiwm00vMJhg:APA91bHrdQREe7PQ9CHInQOpRt-T4I_2u1NAp4MOeTHkAn9JqDw4iSvTRGOJR4EFXAmRzATgcKMntQoLErzv_paqUKav-UI1cQ6VxUrLnrsqbj44zg884dTyd7IZi_CwuPANjUAqif-C'),
(645, 't2', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 't2', 't2@yopmail.com', 'fff', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '4', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fiwm00vMJhg:APA91bHrdQREe7PQ9CHInQOpRt-T4I_2u1NAp4MOeTHkAn9JqDw4iSvTRGOJR4EFXAmRzATgcKMntQoLErzv_paqUKav-UI1cQ6VxUrLnrsqbj44zg884dTyd7IZi_CwuPANjUAqif-C'),
(646, 't3', '25f9e794323b453885f5181f1b624d0b', '1576053755.png', NULL, NULL, NULL, 't3', 't3@yopmail.com', '123456789', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '3', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'emx7kkv2ZGI:APA91bHe6O0BcvpdQlFSUX9_g5eap5CdUAUNQdkpEcovo1rYWdzPJ0vRV5DrbX8UAZKjxANTeg5pAw_jutVsN5_UmP0nkdqmfWhmmHUf9XLFHl9FEcNMhHi7bcSosmkYxXeP7H5bKkx5'),
(647, 't4', '25f9e794323b453885f5181f1b624d0b', '1576054198.png', NULL, NULL, NULL, 't4', 't4@yopmail.com', 'city1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '6', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'emx7kkv2ZGI:APA91bHe6O0BcvpdQlFSUX9_g5eap5CdUAUNQdkpEcovo1rYWdzPJ0vRV5DrbX8UAZKjxANTeg5pAw_jutVsN5_UmP0nkdqmfWhmmHUf9XLFHl9FEcNMhHi7bcSosmkYxXeP7H5bKkx5'),
(648, 't5', '25f9e794323b453885f5181f1b624d0b', '1576055571.png', NULL, NULL, NULL, 't4', 't5@yopmail.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '6', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'emx7kkv2ZGI:APA91bHe6O0BcvpdQlFSUX9_g5eap5CdUAUNQdkpEcovo1rYWdzPJ0vRV5DrbX8UAZKjxANTeg5pAw_jutVsN5_UmP0nkdqmfWhmmHUf9XLFHl9FEcNMhHi7bcSosmkYxXeP7H5bKkx5'),
(649, 't7', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 't7', 't7@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'ss', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(650, 't8', '25f9e794323b453885f5181f1b624d0b', '1576059040.png', NULL, NULL, NULL, 't8', 't8@yopmail.com', '11', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(651, 'c93', '25d55ad283aa400af464c76d713c07ad', '1576061156.png', '0', '0', '0', 'c93', 'c93@yopmail.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'vfgd', '', '', '', 1, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(652, 'l2', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '20', '9', '10', 'law2', 'l2@yopmail.com', '7', '6', '\'\'', 'sd', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 7, 'qwerty', 0, 'emx7kkv2ZGI:APA91bHe6O0BcvpdQlFSUX9_g5eap5CdUAUNQdkpEcovo1rYWdzPJ0vRV5DrbX8UAZKjxANTeg5pAw_jutVsN5_UmP0nkdqmfWhmmHUf9XLFHl9FEcNMhHi7bcSosmkYxXeP7H5bKkx5'),
(654, 'srashti.jk', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti ', 'srashti.aa@coppermobile.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(655, 'srashti.abc', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti Agrawal ', 'srashti.abc@coppermobile.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(656, 'srashti.abcd', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti Agrawal ', 'srashti.abcd@coppermobile.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(657, 'srashti1', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti ', 'srashti1@c.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(658, 's1', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti Agrawal ', 'srashti11@gmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(659, 'kkkk', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti Agrawal ', 'srashti.rr@gmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(660, 'srashti.pp', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti Agrawal ', 'srashti.pp@gmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(661, 'qwerty', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '160', '260', '', 'srashti Agrawal ', 'a@gmail.com', '4', '9', '\'\'', 'Shahjahan', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'haha', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(662, 'srashti_m', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '160', '260', '45', 'srashti Agrawal ', 'srashti.ss@gmail.com', '3', '4', '\'\'', 'a', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 3, '6678', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(663, 'srashti.pu', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'srashti ', 'srashti.pu@gmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(664, 'Jsjd', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '120', '220', '77', 'srashti ', 'sjsj@jj.ks', '2', '4', '\'\'', 'Slams', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '677', 1, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(665, 'ss22', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'ss22', 'ss22@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(666, 'c94', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c94', 'c94@yopmail.com', '7', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'fff', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(667, 'c95', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c95', 'c95@yopmail.com', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'DnD Nd ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(668, 'c96', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c96', 'c96@yopmail.com', '9', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'cycling ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(669, 'law4', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'law4', 'law4@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(670, 'law5', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'law5', 'law5@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(671, 'law6', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'law6', 'law6@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'd7e2ei1iRto:APA91bFtspKNk8sbhHIeqZjHTweE5gHT2f7F5jjY1WqFPBYwasEyKka32nL2ZclN8Fr_rbZBl4TOeCIO581aKbObAmW_mgQufWln5SYuxW4KN44OUjVB11eqja2g52CyuHCc2qWy4cW9'),
(672, 'client77', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client 77', 'client77@lawmessenger.com', '3', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Tucson ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 1, 'fPQwGV4DJ2c:APA91bGPerZF5LsDB6-f_DWjcoogqTSmR1di6eu36kz0uvDOMulMQOi0F0mm3Yy33TxwQWMgGg8aZ8wUzqNTtXAqCXEi9DxOGb__smq41CVcXOzKDuE3OeOE6GVdJqQNBLC_jxmrZjES'),
(679, 'try', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'srashti', 's@gmail.com', '7', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'rye', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fay_IBX8i60:APA91bH8Z0cBfqtY2OtXYSlV4uFqiz3eVVmPZtetsZp2CF-eceWnClzcNQIdAk7_WI8zSZ6paQ_XOqTXuDRejRA9VZ2oIWbsccysCpX2qrGrxHbZ00GBdksksmHc_3eoqTfyKxYy3FPP'),
(680, 'tytyuu', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'srashti', 's@gmaill.com', '7', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'did', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'dE4qw19S9x4:APA91bH-Vrsy2dUBQODopkMEZ-hjx8ZqD6nkVv7Vo3KtCK_VtGIY9PxFKQ5GGCXki9wpgDc8BeXIKSqMO3n6M88xHoN6LjnFjTl8GAucyILRrHHc5lVhnnhFR0CFP7_9HmaVZOsC3_i_'),
(681, 'ere', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'srashti', 'srashtii@gmail.com', '7', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '56', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'dE4qw19S9x4:APA91bH-Vrsy2dUBQODopkMEZ-hjx8ZqD6nkVv7Vo3KtCK_VtGIY9PxFKQ5GGCXki9wpgDc8BeXIKSqMO3n6M88xHoN6LjnFjTl8GAucyILRrHHc5lVhnnhFR0CFP7_9HmaVZOsC3_i_'),
(682, 'shashiranjan1', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Shashi ranjan', 'shashi.r3@coppermobile.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, '1234'),
(683, 'shashiranjan11', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Shashi ranjan', 'shashi.r11@coppermobile.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, '1234'),
(684, 'shashiranjan12', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Shashi ranjan', 'shashi.r12@coppermobile.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'city', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, '1234'),
(685, 'lawyer55', '25d55ad283aa400af464c76d713c07ad', '1577261524.png', '165', '260', '750', 'Ralph Crosby', 'lawyer55@lawmessenger.com', '5', '4', '\'\'', 'Aviation Lawyer and FAA consultant ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, '1234', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(686, 'srashti', 'd41d8cd98f00b204e9800998ecf8427e', '1576471768.png', NULL, NULL, NULL, 'Srashti Agrawal', 'srashti_a@yahoo.com', '6', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Agra', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'fay_IBX8i60:APA91bH8Z0cBfqtY2OtXYSlV4uFqiz3eVVmPZtetsZp2CF-eceWnClzcNQIdAk7_WI8zSZ6paQ_XOqTXuDRejRA9VZ2oIWbsccysCpX2qrGrxHbZ00GBdksksmHc_3eoqTfyKxYy3FPP'),
(687, 'Shubhangi', 'd41d8cd98f00b204e9800998ecf8427e', 'lawyer_avt.png', NULL, NULL, NULL, 'Shubhangi Vaish', 'shubhangivaish4@gmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(688, 'cc94', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c94', 'cc94@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'dfvgdf', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(689, 'cc95', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c95', 'cc95@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'cv bh', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(690, 'cc96', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'c96', 'cc96@yopmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'noida', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(691, 'law8', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '100', '100', '100', 'law8', 'law8@yopmail.com', '2', '10', '\'\'', 'mhn', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'efvec', 0, ''),
(692, 'client12', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', '0', '0', '0', 'client 12', 'client12@yopmail.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'LA', '', '', '', 1, 0, '\'\'', 0, ''),
(693, 'law9', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '50', '100', '100', 'law9', 'law9@yopmail.com', '2', '6', '', 'vvgfty ', '\'\'', 0, 0, '', '', '', '', 2, 2, 'hujjkkjmn', 0, ''),
(694, 'larrybud', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '140', '220', '1000', 'Larry Bud Mellman', 'larry@lawmessenger.com', '7', '2', '\'\'', 'Criminal ', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 7, '12345678', 0, ''),
(695, 'law10', '25d55ad283aa400af464c76d713c07ad', '1576655498.png', '165', '260', '4567', 'law10', 'law10@yopmail.com', '', '\'', '\'\'', '\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(696, 'law11', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'law11', 'law11@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(697, 'law12', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', 'ghh', 'law12', 'law12@yopmail.com', '4', '2', '\'\'', ' test', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '778889', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(698, 'law13', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', 'ghh', 'law13', 'law13@yopmail.com', '4', '2', '\'\'', 'Ghh', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'dfhhj', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(699, 'law14', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', 'ghh', 'law14', 'law14@yopmail.com', '4', '2', '\'\'', 'Ghh', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'dfhhj', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(700, 'law15', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', 'ghh', 'law15', 'law15@yopmail.com', '4', '2', '\'\'', 'Ghh', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'dfhhj', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(701, 'lawyer75', '25d55ad283aa400af464c76d713c07ad', '1577412472.png', '115', '220', '750', 'Lawyer75 Gonzales ', 'lawyer75@lawmessenger.com', '5', '6', '\'\'', 'No Background and no experience', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 10, '1234567', 1, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(702, 'HomerC', '25d55ad283aa400af464c76d713c07ad', '1576708605.png', '115', '220', '1000', 'Homer Cortez', 'homercortez@lawmessenger.com', '10', '11', '\'\'', 'Founder of H&R Block ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 10, '12234567', 1, 'fj_Bk90d-kU:APA91bHTJLfSW9fR7tKIfmBTWdknCtnAVn9uLxJ3Md665RdiDLFKmeYraQkY6ZbhXbLFPZB1SO70K0_6Tj50p6pFeEPLXU35NBw7_QWnjzeGDw3XBUs49ji3y2nG8Eri4Q9LR8FwDch1'),
(703, 'Blake', '25d55ad283aa400af464c76d713c07ad', '1577313265.png', NULL, NULL, NULL, 'Blake Witcher', 'blake@lawmessenger.com', '9', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Dover', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(704, 'client1001', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Client 1001', 'client1001@yopmail.com', '5', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'NZ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eTYBeAqIYos:APA91bFQOvb_InEuttv-2hvWZqvKoGk1DdZGMBnNnOEdKF86zb59TendARjNX9nyARedrF0AcSzjulSa2vlTwnnW9lOaKF0O171u0Y8WW6DCabJY0O9DN8pNM5S1TzrXPRT87SieoYCY'),
(705, 'Lawyer_Demo', '6e9bece1914809fb8493146417e722f6', '1578371458.png', '85', '180', '400', 'Lawyer_Demo', 'demo@lawmessenger.com', '5', '7', '\'\'', 'This is where my background and experience goes.', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, 'CA123457', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(706, 'shashiraj40', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Shashi Ranjan', 'shashiranjan40@yopmail.com', '10', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'ss', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(707, 'smithlawyer', '5e8667a439c68f5145dd2fcbecf02209', '1578324387.png', '140', '240', '590', 'Carol Smith', 'smith@lawmessenger.com', '11', '2', '\'\'', 'Experience ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 11, '1235GH', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(708, 'Client_Demo1', '25d55ad283aa400af464c76d713c07ad', '1578353164.png', NULL, NULL, NULL, 'Client1 Demo1', 'demo1@lawmessenger.com', '3', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Tempe', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(709, 'testclient1', '29238cd345942e6a8e4cc36a9aa5dc48', '1578458440.png', NULL, NULL, NULL, 'Test_Client', 'testclient@lawmessenger.com', '4', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Fort Smith', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(710, 'ClientDemo2', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'Client Demo2', 'clientdemo2@lawmessenger.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(711, 'testlaw123', '81dc9bdb52d04dc20036dbd8313ed055', 'lawyer_avt.png', '10', '10', '1', 'testlaw', 'test11@test.com', '2', '2', '\'\'', 'test', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(712, 'clienttest', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'clienttest', 'clienttest@clienttest.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'test', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(713, 'saxenamanishlawyer', '3665a76e271ada5a75368b99f774e404', 'lawyer_avt.png', '50', '100', '20', 'Manish Saxena', 'manish.saxena@yopmail.com', '2', '2', '\'\'', 'I am a criminal lawyer and have resolved high profile cases.\nJust to tell you that i have great connects with judges. I can be paid in step up payment model and make sure that results are achieved in quick time.', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'saxenamanishlawyer', 0, ''),
(714, 'noopurgautamlawyer', 'f379eaf3c831b04de153469d1bec345e', 'lawyer_avt.png', '140', '239', '10', 'Noopur Gautam', 'noopur@yopmail.com', '2', '2', '', 'I am criminal lawyer. I can handle any criminal case. You know what i have successfully got the 258 jurisdiction done for murder cases.<br />\r\nOut of those 157 murderers were hanged till death.<br />\r\nI am your one stop lawyer for all criminal cases.', '\'\'', 0, 0, '', '', '', '', 2, 2, 'noopurgautamlawyer', 0, ''),
(715, 'Californialawyer', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '165', '260', '600', 'California Lawyer', 'gearge@lawmessenger.com', '8', '2', '\'\'', 'Extensive ', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, '12345678', 0, ''),
(716, 'Demolawyer11', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '120', '220', '350', 'Demo Lawyer11', 'demo11@lawmessenger.com', '7', '6', '\'\'', 'Experience goes here', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 7, '123445', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(717, 'srashtilawyer', 'f379eaf3c831b04de153469d1bec345e', 'lawyer_avt.png', '99', '199', '40', 'Srashti Agrawal', 'srashti@yopmail.com', '2', '2', '\'\'', 'I am a criminal lawyer and have resolved high profile cases.\nJust to tell you that i have great connects with judges. I can be paid in.\n', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'noopurgautamlawyer', 0, ''),
(718, 'l1shashi', 'e10adc3949ba59abbe56e057f20f883e', 'lawyer_avt.png', '85', '180', '200', 'l1 shashi', 'l1shashi@yopmail.com', '2', '2', '\'\'', 'testing\nnew\nline\nbr', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(719, 'client2001', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'client2001', 'client2001@yopmail.com', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'NY', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(720, 'anillawyer', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', '200', 'Anil Lawyer', 'anillawyer@yopmail.com', '4', '16', '\'\'', 'Testing \nBackground\nExp\nNew \nLine', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '1234321', 0, ''),
(721, 'navneetclient', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'Navneet Client', 'navneetclient@yopmail.com', '6', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'NY', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(722, 'Lawyer001', '25d55ad283aa400af464c76d713c07ad', 'M_722_1581896011.jpeg', '140', '260', '250', 'Lawyer 001', 'lawyer001@lawmessenger.com', '2', '2', '', 'Background description', '\'\'', 1, 0, '', '', '', '', 2, 2, '12345678', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(723, 'Lawyer002', '25d55ad283aa400af464c76d713c07ad', 'M_723_1581896060.jpeg', '140', '220', '10000', 'Lawyer 002', 'lawyer002@lawmessenger.com', '2', '2', '', 'My background ', '\'\'', 0, 0, '', '', '', '19728489500', 2, 2, '1235677', 0, ''),
(724, 'Lawyer003', '25d55ad283aa400af464c76d713c07ad', 'M_724_1581896114.jpeg', '165', '260', '300', 'Lawyer 003', 'lawyer003@lawmessenger.com', '2', '3', '', 'My background in 1000 characters ', '\'\'', 0, 0, '', '', '', '', 2, 2, '1134578', 0, ''),
(725, 'lawyer004', '25d55ad283aa400af464c76d713c07ad', 'M_725_1581896192.jpeg', '140', '260', '600', 'Lawyer 004', 'lawyer004@lawmessenger.com', '11', '4', '', 'My experience ', '\'\'', 0, 0, '', '', '', '', 2, 11, '129495838', 0, ''),
(726, 'lawyer005', '25d55ad283aa400af464c76d713c07ad', 'M_726_1581896260.jpeg', '115', '220', '500', 'Lawyer 005', 'lawyer005@lawmessenger.com', '2', '5', '', 'My experience ', '\'\'', 0, 0, '', '', '', '', 2, 2, '1234555', 0, ''),
(727, 'Lawyer006', '25d55ad283aa400af464c76d713c07ad', 'M_727_1581896306.jpeg', '115', '220', '400', 'Lawyer 006', 'lawyer006@lawmessenger.com', '3', '6', '', 'Background  here', '\'\'', 0, 0, '', '', '', '', 2, 3, '1284848', 0, ''),
(728, 'lawyer007', '25d55ad283aa400af464c76d713c07ad', 'M_728_1581896362.jpeg', '140', '220', '250', 'ABA Lawyer 2020', 'lawyer007@lawmessemger.com', '43', '6', '', 'I am an attendee at the ABA TechShow 2020 - this is my demo profile page', '\'\'', 0, 0, '', '', '', '', 2, 6, '12456677', 0, ''),
(729, 'admin', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '85', '180', '500', 'Administrator', 'admin@lawmessenger.com', '2', '7', '', 'My Background ', '\'\'', 0, 0, '', '', '', '', 2, 2, '2346778', 0, ''),
(730, 'lawyer008', '25d55ad283aa400af464c76d713c07ad', 'M_730_1581896627.jpeg', '165', '260', '560', 'Lawyer 008', 'lawyer008@lawmessenger.com', '3', '7', '', 'My Background ', '\'\'', 0, 0, '', '', '', '', 2, 3, '8274839jdjd', 0, ''),
(731, 'Lawyer009', '25d55ad283aa400af464c76d713c07ad', 'M_731_1582010721.jpeg', '85', '180', '500', 'Lawyer 009', 'lawyer009@lawmessenger.com', '2', '2', '', 'Background ', '\'\'', 0, 0, '', '', '', '', 2, 2, '123344', 0, ''),
(732, 'Lawyer010', '25d55ad283aa400af464c76d713c07ad', 'M_732_1582010771.jpeg', '85', '180', '600', 'Lawyer 010', 'lawyer010@lawmessenger.com', '2', '3', '', 'Background ', '\'\'', 1, 0, '', '', '', '', 2, 2, '134567', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(733, 'lawyer202', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '85', '180', '300', 'lawyer201', 'lawyer202@yopmail.com', '4', '3', '\'\'', '2332', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '123456789', 0, ''),
(734, 'c111', '25f9e794323b453885f5181f1b624d0b', 'M_734_1580818226.png', '0', '0', '0', 'c111', 'c111@yopmail.com', '2', '\'\'', '', '', '\'\'', 0, 0, 'Delhi', '', '', '', 1, 0, '\'\'', 0, ''),
(735, 'c112', '25f9e794323b453885f5181f1b624d0b', '1580818967.png', NULL, NULL, NULL, 'c112', 'c112@yopmail.com', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '123456789', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(736, 'cl113', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'cl113', 'cl113@yopmail.com', '8', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '123456789', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(737, 'Lawyer011', '25d55ad283aa400af464c76d713c07ad', 'M_737_1581340458.png', '85', '180', '600', 'Lawyer 011', 'lawyer011@lawmessenger.com', '11', '2', '', 'Experience the ', '\'\'', 0, 0, '', '', '', '', 1, 11, '1234567', 0, ''),
(738, 'lawyer012', '25d55ad283aa400af464c76d713c07ad', 'M_738_1581341055.png', '85', '180', '300', 'Lawyer 012', 'lawyer012@lawmessenger.com', '2', '2', '', 'Experience', '\'\'', 0, 0, '', '', '', '', 2, 2, '1234567', 0, ''),
(739, 'lawyer013', '25d55ad283aa400af464c76d713c07ad', 'M_739_1581784287.jpg', '85', '180', '300', 'Lawyer 013', 'lawyer013@lawmessenger.com', '43', '\'\'', '', 'My Experience', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(740, 'Lawyer014', '25d55ad283aa400af464c76d713c07ad', 'M_740_1582010832.jpeg', '115', '260', '450', 'Lawyer 014', 'lawyer014@lawmessenger.com', '2', '\'\'', '', '\'\'', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, ''),
(741, 'Lawyer015', '25d55ad283aa400af464c76d713c07ad', 'M_741_1581644805.png', '115', '220', '700', 'Lawyer 015', 'lawyer015@lawmessenger.com', '5', '2', '', 'My Background ', '\'\'', 0, 0, '', '', '', '', 2, 5, '1234556', 0, ''),
(742, 'Lawyer016', '25d55ad283aa400af464c76d713c07ad', 'M_742_1581644109.png', '0', '0', '0', 'Lawyer 016', 'lawyer016@lawmessenger.com', '10', '\'\'', '', '', '\'\'', 0, 0, 'Miami', '', '', '', 1, 0, '\'\'', 0, ''),
(743, 'Lawyer017', '25d55ad283aa400af464c76d713c07ad', 'M_743_1581644706.png', '165', '260', '300', 'Lawyer 017', 'lawyer017@lawmessenger.com', '2', '2', '', 'My Experience ', '\'\'', 1, 0, '', '', '', '', 2, 2, '123577', 0, 'eNembGehAJs:APA91bEd0NcZVanxIttH9XLdjZdeqTZGtXLOq9VE_sdmtzkiKpBOCcoAJAiZ3P0x2I9Kj-a2NwYb52LBOjgFnciS6Ii675rCqbjPLdexAkmlGQ-HkKsA7WT7WwaRwZTS9e-npSrStUUB'),
(744, 'lawyer018', '25d55ad283aa400af464c76d713c07ad', 'M_744_1581646847.PNG', '85', '180', '500', 'Lawyer 018', 'lawyer018@lawmessenger.com', '6', '9', '', 'My Background goes here', '\'\'', 0, 0, '', '', '', '', 2, 6, '2837488', 0, ''),
(745, 'Client001', '25d55ad283aa400af464c76d713c07ad', 'M_745_1581648033.png', '0', '0', '0', 'Client 001', 'client001@lawmessenger.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Mobile', '', '', '', 1, 0, '\'\'', 0, ''),
(746, 'Lawyer019', '25d55ad283aa400af464c76d713c07ad', 'M_746_1582010888.jpeg', '115', '220', '699', 'Lawyer 019', 'lawyer019@lawmessenger.com', '2', '2', '', 'Background experience ', '\'\'', 0, 0, '', '', '', '', 2, 2, '', 0, ''),
(747, 'Lawyer020', '25d55ad283aa400af464c76d713c07ad', 'M_747_1582011056.jpeg', '115', '260', '700', 'Lawyer 020', 'lawyer020@lawmessenger.com', '7', '\'\'', '', '\'\'', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, ''),
(748, 'Lawyer022', '25d55ad283aa400af464c76d713c07ad', 'M_748_1582011639.jpg', '115', '220', '220', 'Lawyer 022', 'lawyer022@lawmessenger.com', '2', '2', '', 'My Background ', '\'\'', 0, 0, '', '', '', '', 2, 2, '', 0, ''),
(749, 'Lawyer021', '25d55ad283aa400af464c76d713c07ad', 'M_749_1582010978.jpeg', '85', '180', '200', 'Lawyer 021', 'lawyer021@lawmessenger.com', '2', '3', '', 'Background ', '\'\'', 0, 0, '', '', '', '', 2, 2, '457889', 0, ''),
(750, 'Lawyer024', '25d55ad283aa400af464c76d713c07ad', 'M_750_1581691303.png', '165', '260', '150', 'Lawyer 024', 'lawyer024@lawmessenger.com', '2', '5', '', 'Background ', '\'\'', 0, 0, '', '', '', '', 2, 2, '567533', 0, ''),
(751, 'Tt1t', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', '115', '220', '3000', 'Tt1t', 'tt1@yopmail.com', '8', '11', '\'\'', 'Hdhdhdhd', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 8, 'Hdhdhd', 0, ''),
(752, 'pranjal', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'pranjal', 'pranjal@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(753, 'q1', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'q1', 'q1@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(754, 'q2', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'q2', 'q2@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(755, 'qqq1', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', '115', '220', '12323', 'qqq1', 'qqq1@yopmail.com', '4', '13', '\'\'', 'asdasdasd', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'asdasd', 0, ''),
(756, 'Rsa', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'Rsa', 'rsa@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(757, 'Qwerty123', 'c20ad4d76fe97759aa27a0c99bff6710', 'lawyer_avt.png', '115', '220', '852', 'Qwerty', 'qwerty123@yopmail.com', '10', '12', '\'\'', 'Fgghjnn', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 10, 'Fhjkkkbv', 0, ''),
(758, 'rfd', '81dc9bdb52d04dc20036dbd8313ed055', 'lawyer_avt.png', '85', '220', '23', 'rfd', 'rfd@yopmail.com', '2', '14', '\'\'', 'sdfsdff23', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'sdfdf', 0, ''),
(759, 'Lawyer26', '25d55ad283aa400af464c76d713c07ad', 'M_759_1582469244.png', '85', '260', '500', 'Lawyer 026', 'lawyer026@lawmessenger.com', '2', '2', '', 'Back ground', '\'\'', 0, 0, '', '', '', '', 2, 2, '123567', 0, ''),
(760, 'Za', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', NULL, NULL, NULL, 'Za', 'za@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(761, 'Re', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', '165', '180', '52', 'Re', 're@yopmail.com', '2', '2', '\'\'', 'Ff', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'Rrr', 0, ''),
(762, 'Poi', '202cb962ac59075b964b07152d234b70', 'client_avt.png', '0', '0', '0', 'Poi', 'poi@yopmail.com', '46', '\'\'', '', '', '\'\'', 0, 0, 'Fff', '', '', '', 1, 0, '\'\'', 0, ''),
(763, 'Lawyer121', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'Poi', 'lawyer121@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(764, 'Saxenamanishar', 'fc5e038d38a57032085441e7fe7010b0', 'lawyer_avt.png', '165', '180', '40', 'Manish Saxena', 'hello@yopmail.com', '2', '6', '', 'Hs jati isejnsnknvvvshhs', '\'\'', 1, 0, '', '', '', '', 2, 2, 'Uw7772888iw', 0, ''),
(765, 'Client002', '25d55ad283aa400af464c76d713c07ad', 'M_765_1581897691.jpeg', '0', '0', '0', 'Client 002', 'client002@lawmessenger.com', '11', '\'\'', '', '', '\'\'', 0, 0, 'Dallas', '', '', '', 1, 0, '\'\'', 0, ''),
(766, 'client003', '25d55ad283aa400af464c76d713c07ad', 'M_766_1581897276.jpeg', '165', '220', '200', 'Lawyer 030', 'client003@lawmessenger.com', '2', '\'\'', '', 'â€˜â€™My Background ', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, 'fVMiBkp2y-M:APA91bEaaePddFvlzzxTBBwhSk1za1We-LYVDeHcrxNrco9i4D9oV94xTVpxm8_g0yffOHqlyUVzCQP7koiQ5hANQcX3V7z63ddpmVhg1_PK98xHUE_g5l4QzyyqdYfOFca2K9vW-75B'),
(767, 'Client004', '25d55ad283aa400af464c76d713c07ad', 'M_767_1581898359.jpg', '0', '0', '0', 'Client 004', 'client004@lawmessenger.com', '43', '\'\'', '', '', '\'\'', 0, 0, 'Dallas', '', '', '', 1, 0, '\'\'', 0, ''),
(768, 'Lawyer025', '25d55ad283aa400af464c76d713c07ad', 'M_768_1581806053.png', '165', '260', '500', 'Lawyer 025', 'lawyer025@lawmessenger.com', '2', '2', '', 'Background', '\'\'', 1, 0, '', '', '', '', 2, 2, '123456cc', 0, ''),
(769, 'Lawyer027', '25d55ad283aa400af464c76d713c07ad', 'M_769_1581897036.jpeg', '85', '180', '500', 'Lawyer 027', 'lawyer027@lawmessenger.com', '8', '2', '', 'None', '\'\'', 0, 0, '', '', '', '', 2, 8, '235643', 0, ''),
(770, 'Lawyer028', '25d55ad283aa400af464c76d713c07ad', 'M_770_1581842200.png', '115', '260', '150', 'Lawyer 028', 'lawyer028@lawmessenger.com', '15', '8', '', 'Experience ', '\'\'', 1, 0, '', '', '', '', 2, 15, '347873', 0, ''),
(771, 'Clinet005', 'f597d328c7eb92d2622f817629222029', 'M_771_1581896704.jpeg', '0', '0', '0', 'Client 005', 'client005@lawmessenger.com', '2', '\'\'', '', '', '\'\'', 0, 0, 'Kansas City', '', '', '', 1, 0, '\'\'', 0, ''),
(772, 'Lawyer029', '25d55ad283aa400af464c76d713c07ad', 'M_772_1581870287.jpg', '85', '220', '500', 'Lawyer 029', 'lawyer029@lawmessenger.com', '6', '2', '', 'Background ', '\'\'', 1, 0, '', '', '', '', 2, 6, '45678hg', 0, ''),
(773, 'Lawyer031', '5e8667a439c68f5145dd2fcbecf02209', 'M_773_1581906611.jpeg', '85', '180', '300', 'Lawyer 031', 'lawyer031@lawmessenger.com', '25', '10', '', 'Background ', '\'\'', 1, 0, '', '', '', '', 2, 25, 'Branson', 0, ''),
(774, 'Client006', '25d55ad283aa400af464c76d713c07ad', 'M_774_1582011308.png', '0', '0', '0', 'Client 006', 'client006@lawmessenger.com', '2', '\'\'', '', '', '\'\'', 0, 0, 'Las Vegas', '', '', '', 1, 0, '\'\'', 0, ''),
(775, 'cros365', '0911054d8ad47cc256400031197f3e97', 'lawyer_avt.png', '115', '220', '100', 'Ralph crosby', 'ralphdcrosby@yahoo.com', '43', '3', '', 'Experience ', '\'\'', 1, 0, '', '', '', '', 2, 43, '12345', 0, ''),
(776, 'Client008', '25d55ad283aa400af464c76d713c07ad', 'M_776_1582011401.jpeg', '165', '220', '500', 'Client 008', 'client008@lawmessenger.com', '8', '8', '', 'Background ', '\'\'', 1, 0, '', '', '', '', 2, 8, '1235677', 0, ''),
(777, 'Joemcgee44', '8c15a05a7c1b2fd86a36e4ba36d022f1', 'client_avt.png', NULL, NULL, NULL, 'Joe McGee ', 'joemcgee44@gmail.com', '43', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Plano', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(778, 'Pattigon', '7106a4f64b265df66afd5312a6d78de2', 'lawyer_avt.png', '85', '180', '500.00', 'Patti', 'patriciagonzales1415@gmail.com', '43', '2', '\'\'', 'Crazy ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 43, '12345', 0, ''),
(779, 'sayopaul', '58c57abc1e163571bb3573876bcef746', 'lawyer_avt.png', '85', '180', '80', 'Sayo Paul', 'yobizzi416@gmail.com', '40', '2', '\'\'', 'hjfj hf hjfjh fljhhhjf hjf hjf jhfj', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 40, '5685680', 0, ''),
(780, 'shashi', '25f9e794323b453885f5181f1b624d0b', 'lawyer_avt.png', NULL, NULL, NULL, 'Shashi Ranjan', 'shashi.r123456@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(781, 'Jaswantsingh', '827ccb0eea8a706c4c34a16891f84e7b', 'lawyer_avt.png', '115', '260', '489', 'Jaswant Singh', 'jaswant.s@coppermobile.com', '31', '4', '\'\'', 'Hello \n\nYes I am here', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 31, 'Hellohnji', 0, ''),
(782, 'ann07', '10b8e822d03fb4fd946188e852a4c3e2', 'client_avt.png', NULL, NULL, NULL, 'Annie', 'arpanait3022@gmail.com', '11', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Xyz', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(783, 'tre', '25f9e794323b453885f5181f1b624d0b', 'client_avt.png', NULL, NULL, NULL, 'tre', 'tre@yopmail.com', '15', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'na', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(784, 'Client009', '25d55ad283aa400af464c76d713c07ad', 'M_784_1582383954.jpg', '0', '0', '0', 'Client 009', 'client009@lawmessenger.com', '2', '\'\'', '', '', '\'\'', 0, 0, 'Fort Worth', '', '', '', 1, 0, '\'\'', 0, ''),
(785, 'Lawyer023', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '165', '180', '500', 'Lawyer 023', 'lawyer023@lawmessenger.net', '5', '7', '\'\'', 'Hello', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 5, '13467', 0, ''),
(786, 'Lawyer026', '25d55ad283aa400af464c76d713c07ad', 'M_786_1582469462.png', '165', '180', '700', 'Lawyer 026', 'lawyer026@lawmessenger.net', '9', '9', '', 'Hello', '\'\'', 1, 0, '', '', '', '', 2, 9, '134678', 0, ''),
(787, 'Lawyer30', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '85', '180', '500', 'Lawyer 30', 'lawyer30@lawmessenger.net', '2', '2', '\'\'', 'Hello', '\'\'', 1, 0, '', '\'\'', '\'\'', '2145052922', 2, 2, '', 0, ''),
(788, 'Nickalf', '1bf514d7f3eef093eb11de4b38e96f73', 'client_avt.png', '0', '0', '0', 'Nicholas', 'xalfaro08@gmail.com', '43', '\'\'', '', '', '\'\'', 0, 0, 'San Antonio', '', '', '', 1, 0, '\'\'', 0, ''),
(789, 'Ccanales238', '5d95494a5f7e1e0a8bdd0fa97d06d2b1', 'client_avt.png', NULL, NULL, NULL, 'Connie canales -perez', 'ccanales238@yahoo.com', '43', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'San Antonio ', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(790, 'carlosp966', 'f0c6226ddb88559456123098f3eaf302', 'client_avt.png', NULL, NULL, NULL, 'Carlos', 'carlosp966@gmail.com', '43', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'San Antonio', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(791, 'Benzgirl238', '5d95494a5f7e1e0a8bdd0fa97d06d2b1', 'M_791_1582515755.jpeg', '165', '260', '0', 'Connie canales Perez ', 'conniecp238@gmail.com', '43', '\'\'', '', '\'\'', '\'\'', 0, 0, '', '', '', '', 2, 0, '\'\'', 0, ''),
(792, 'gauravpareek', '537840b1600e8df3b4da17b9d86156d8', 'lawyer_avt.png', NULL, NULL, NULL, 'Gaurav Pareek', 'gaurav.ideabox@outlook.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(793, 'gauravpareek8989', '537840b1600e8df3b4da17b9d86156d8', 'client_avt.png', NULL, NULL, NULL, 'Gaurav', 'gaurav.hello24@gmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Rajasthan', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(794, 'test9090', '68a24878cc568766b735c62be5f306ed', 'client_avt.png', NULL, NULL, NULL, 'test', 'test@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '123123123', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(795, 'test0898978', '5d41402abc4b2a76b9719d911017c592', 'client_avt.png', NULL, NULL, NULL, 'test12313212', 'test1231232@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '111111', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(796, 'test120', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'test120', 'test120@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '1234', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(797, 'test909011111', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'test909', 'test10000@gmail.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '1234', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(798, 'test800', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'test800', 'test800@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '1234', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(799, 'test801', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'test801', 'test801@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '1234', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(800, 'test707', '81dc9bdb52d04dc20036dbd8313ed055', 'client_avt.png', NULL, NULL, NULL, 'test707', 'test707@live.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '1234', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(801, 'Lawyer032', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', '400', 'Lawyer 032', 'lawyer032@lawmessenger.net', '12', '2', '\'\'', 'Experience ', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 12, '134567', 0, ''),
(802, 'Lawyer033', '25d55ad283aa400af464c76d713c07ad', 'M_802_1582554894.png', '115', '220', '500', 'Lawyer 033', 'lawyer033@lawmessenger.net', '10', '8', '', 'Background and experience ', '\'\'', 1, 0, '', '', '', '', 2, 10, '23468', 0, ''),
(803, 'Lawyer035', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '85', '180', '500', 'Lawyer 035', 'lawyer035@lawyer.com', '4', '2', '\'\'', 'Work', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, '123456', 0, ''),
(804, 'Carlosperez966', 'f0c6226ddb88559456123098f3eaf302', 'lawyer_avt.png', NULL, NULL, NULL, 'Carlos Perez', 'carlosp966@hotmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(805, 'Sunnyeatonlaw', '30aaeb90912bcef540835beb94e3a011', 'lawyer_avt.png', NULL, NULL, NULL, 'Sunny Eaton', 'sunny@sunnyeatonlaw.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(806, 'Client010', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client 010', 'client010@lawmessenger.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'here', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(807, 'manish2020', '923404868b156309f00b257000d87738', 'lawyer_avt.png', '85', '180', '120', 'Manish Saxena', 'manishsax@yopmail.com', '2', '2', '\'\'', 'i am a a lawyer', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(808, 'mnb', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', '115', '220', '444', 'mnb', 'mnb@yopmail.com', '4', '16', '\'\'', 'xczczxc', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 4, 'sdfds', 0, ''),
(809, 'navneet', '827ccb0eea8a706c4c34a16891f84e7b', 'lawyer_avt.png', NULL, NULL, NULL, 'Navneet', 'navneet@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(810, 'pramod', 'f036cec99039cddd6c9cf4004891501d', 'lawyer_avt.png', '85', '180', '100', 'Pramod Kumar', 'pramod.k@coppermobile.com', '2', '2', '\'\'', 'Hello', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'ew3r2525325', 0, ''),
(811, 'jatin', 'e20f517179e9cd52ae29dae43c121b95', 'lawyer_avt.png', NULL, NULL, NULL, 'Jatin Kumar', 'jatin.k@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(812, 'subhan', '2947ca7a0336042b854a599c7a12f0cb', 'lawyer_avt.png', NULL, NULL, NULL, 'Subhan Ahmed', 'subhan@yopmail.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(813, 'Lawyer037', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', '1500', 'Lawyer 037', 'lawyer037@lawmessenger.com', '2', '2', '', 'Background ', '\'\'', 1, 0, '', '', '', '', 2, 2, '', 0, ''),
(814, 'Lawyer040', '25d55ad283aa400af464c76d713c07ad', 'M_814_1585292070.jpeg', '140', '180', '600', 'Lawyer 040', 'lawyer040@lawmessenger.ner', '27', '10', '', 'Iâ€™ll make you a lot of money if youâ€™re hurt bc of medical negligence.', '\'\'', 1, 0, '', '', '', '', 2, 27, '134678', 0, ''),
(815, 'Client041', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', NULL, NULL, NULL, 'Client 041', 'client41@lawmessenger.net', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(816, 'Lawyer041', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', '200', 'Lawyer 041', 'Lawyer041@test.com', '28', '2', '\'\'', 'I represent Criminals', '\'\'', 1, 0, '', '\'\'', '\'\'', '+12145052922', 2, 28, '1233444', 0, ''),
(817, 'Client013', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client 013', 'client013@test.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Mobike', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(818, 'Lawyer042', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '140', '180', '463', 'Lawywer 042', 'lawyer042@test.com', '2', '2', '\'\'', 'nsvk', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, '', 0, ''),
(819, 'Client019', '25d55ad283aa400af464c76d713c07ad', 'client_avt.png', NULL, NULL, NULL, 'Client 019', 'Client019@tetst.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Mobile', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(820, 'tjohn', 'e807f1fcf82d132f9bb018ca6738a19f', 'lawyer_avt.png', '85', '180', '2', 'TJohn', 'nerdslab101@gmail.com', '2', '3', '\'\'', 'test background experience', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'lawyer001', 0, ''),
(821, 'iuriiFromFiverr', '52739a4a0edbc3a645774d9aaffb933c', 'client_avt.png', NULL, NULL, NULL, 'iurii paimurzin', 'ufxcss@gmail.com', '9', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'HOLLYWOOD', '\'\'', '\'\'', '+19548896933', 1, 0, '\'\'', 0, ''),
(822, 'gauravideabox1234', '5d41402abc4b2a76b9719d911017c592', 'client_avt.png', NULL, NULL, NULL, 'gaurav', 'gaurav@thinklayer.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'Rajasthan', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(823, 'lawyervideo', '5870fce9bc07283530b727a731339f5e', 'lawyer_avt.png', NULL, NULL, NULL, 'video', 'albanprince555@outlook.com', '', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, '', '\'\'', '\'\'', '\'\'', 2, 0, '\'\'', 0, ''),
(824, 'videotester1', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '81', '180', '20', 'videotester1', 'webprofessional555@gmail.com', '2', '2', '\'\'', 'tester', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'lawyer001', 0, ''),
(825, 'testclient11', '5870fce9bc07283530b727a731339f5e', 'client_avt.png', NULL, NULL, NULL, 'testclient11', 'webking@outlook.com', '1', '\'\'', '\'\'', '\'\'', '\'\'', 0, 0, 'newyork', '\'\'', '\'\'', '\'\'', 1, 0, '\'\'', 0, ''),
(826, 'lawyer100', '202cb962ac59075b964b07152d234b70', 'lawyer_avt.png', '165', '180', '30', 'lawyer100', 'webkings@outlook.com', '2', '2', '\'\'', 'expert', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 2, 'lawyer100', 0, ''),
(827, 'Lawyer030', '25d55ad283aa400af464c76d713c07ad', 'lawyer_avt.png', '115', '220', '300', 'Lawyer 030', 'lawyer030@lawmessenger.com', '43', '2', '\'\'', 'None', '\'\'', 1, 0, '', '\'\'', '\'\'', '\'\'', 2, 43, '1234567', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;
--
-- Database: `bank`
--
CREATE DATABASE IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bank`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `comp_to` varchar(100) NOT NULL,
  `comp_from` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complain` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `fname`, `lname`, `comp_to`, `comp_from`, `subject`, `complain`, `date`) VALUES
(1, '', '', '2020-12-18', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `db_date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `open_date` date NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `db_date`, `address`, `country`, `email`, `phone`, `acc_no`, `balance`, `acc_type`, `open_date`, `pen`) VALUES
(1, 'Shaher', 'Yar', '1970-01-01', '1970-01-01', 'Islamabad', '', '', '123456789', '', '', '0000-00-00', 2345),
(2, 'Shaher', 'Yar', '2020-12-11', '2020-12-10', 'Islamabad', 'India', 'hsretra5@gmail.com', '03317717974', '', '0000000000', '0000-00-00', 0),
(3, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(4, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(5, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(6, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(7, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(8, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(9, 'Shaher', 'Yar', '2020-12-24', '2020-12-23', 'Islamabad', 'United States of America', 'hsretra5@gmail.com', '03317717974', '', '0987654321', '0000-00-00', 12345),
(10, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '123456789', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(10) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `loan_id` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `acc_no`, `loan_type`, `loan_id`, `amount`, `date`, `end_date`, `name`, `phone`, `email`, `status`) VALUES
(1, '123456789', 'Personal Loans', '12345', '1000', '2020-12-25', '1970-01-01', 'Shaher', '03317717974', 'hsretra5@gmail.com', 'issued'),
(2, '123456789', 'Personal Loans', '12345', '1000', '2020-12-25', '2020-12-31', 'Shaher', '03317717974', 'hsretra5@gmail.com', 'issued'),
(3, '123456789', 'Personal Loans', '12345', '1000', '2020-12-11', '2020-12-19', 'Shaher Yar', '03317717974', 'hsretra5@gmail.com', 'issued');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `trainId` varchar(100) NOT NULL,
  `tran_type` varchar(100) NOT NULL,
  `tran_method` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `cheq_num` varchar(100) NOT NULL,
  `Acc_num` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `current_bal` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `cus_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `acc_no`, `trainId`, `tran_type`, `tran_method`, `date`, `cheq_num`, `Acc_num`, `amount`, `current_bal`, `remark`, `cus_id`) VALUES
(1, '123456789', '2345', 'any', 'Islamabad', '2020-12-12', '80', '1234567', '1000', '', '000', '1'),
(2, '123456789', '2345', 'any', 'Islamabad', '2020-12-10', '80', '12345678', '1000', '', '000', '1'),
(3, '123456789', '2345', 'any', 'Islamabad', '2020-12-24', '80', '123456789', '1000', '', '000', '1'),
(4, '123456789', '2345', 'any', 'Islamabad', '2020-12-24', '80', '123456789', '1000', '', '000', '1'),
(5, '123456789', '2345', 'any', 'Islamabad', '2020-12-11', '80', '123456789', '1000', '', '000', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `bank1`
--
CREATE DATABASE IF NOT EXISTS `bank1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bank1`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_no` varchar(100) CHARACTER SET latin1 NOT NULL,
  `acc_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `comp_to` varchar(100) NOT NULL,
  `comp_from` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complain` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `fname`, `lname`, `comp_to`, `comp_from`, `subject`, `complain`, `date`) VALUES
(1, '', '', '2020-12-18', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `db_date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `acc_no` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `balance` varchar(100) NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `open_date` date NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `db_date`, `address`, `country`, `email`, `phone`, `acc_no`, `balance`, `acc_type`, `open_date`, `pen`) VALUES
(1, 'Shaher', 'Yar', '1970-01-01', '1970-01-01', 'Islamabad', '', '', '123456789', '', '', '0000-00-00', 2345),
(2, 'Shaher', 'Yar', '2020-12-11', '2020-12-10', 'Islamabad', 'India', 'hsretra5@gmail.com', '03317717974', '', '0000000000', '0000-00-00', 0),
(3, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(4, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(5, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(6, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(7, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(8, '', '', '2020-12-24', '1970-01-01', '', '', '', '', '', '', '0000-00-00', 0),
(9, 'Shaher', 'Yar', '2020-12-24', '2020-12-23', 'Islamabad', 'United States of America', 'hsretra5@gmail.com', '03317717974', '', '0987654321', '0000-00-00', 12345),
(10, '', '', '1970-01-01', '1970-01-01', '', '', '', '', '123456789', '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(10) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `loan_id` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `acc_no`, `loan_type`, `loan_id`, `amount`, `date`, `end_date`, `name`, `phone`, `email`, `status`) VALUES
(1, '123456789', 'Personal Loans', '12345', '1000', '2020-12-25', '1970-01-01', 'Shaher', '03317717974', 'hsretra5@gmail.com', 'issued'),
(2, '123456789', 'Personal Loans', '12345', '1000', '2020-12-25', '2020-12-31', 'Shaher', '03317717974', 'hsretra5@gmail.com', 'issued'),
(3, '123456789', 'Personal Loans', '12345', '1000', '2020-12-11', '2020-12-19', 'Shaher Yar', '03317717974', 'hsretra5@gmail.com', 'issued');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `trainId` varchar(100) NOT NULL,
  `tran_type` varchar(100) NOT NULL,
  `tran_method` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `cheq_num` varchar(100) NOT NULL,
  `Acc_num` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `current_bal` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `cus_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `acc_no`, `trainId`, `tran_type`, `tran_method`, `date`, `cheq_num`, `Acc_num`, `amount`, `current_bal`, `remark`, `cus_id`) VALUES
(1, '123456789', '2345', 'any', 'Islamabad', '2020-12-12', '80', '1234567', '1000', '', '000', '1'),
(2, '123456789', '2345', 'any', 'Islamabad', '2020-12-10', '80', '12345678', '1000', '', '000', '1'),
(3, '123456789', '2345', 'any', 'Islamabad', '2020-12-24', '80', '123456789', '1000', '', '000', '1'),
(4, '123456789', '2345', 'any', 'Islamabad', '2020-12-24', '80', '123456789', '1000', '', '000', '1'),
(5, '123456789', '2345', 'any', 'Islamabad', '2020-12-11', '80', '123456789', '1000', '', '000', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_no`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `bank3`
--
CREATE DATABASE IF NOT EXISTS `bank3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bank3`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(100) NOT NULL,
  `acc_no` int(100) NOT NULL,
  `acc_type` int(100) NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `acc_no`, `acc_type`, `pen`) VALUES
(1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `comp_to` varchar(100) NOT NULL,
  `comp_from` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complain` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `fname`, `lname`, `date`, `comp_to`, `comp_from`, `subject`, `complain`) VALUES
(1, 'Shaher', 'Yar', '0000-00-00', '2020-12-24', 'any', 'any', 'no'),
(2, 'A', 'B', '0000-00-00', '2020-12-26', 'any', 'any', 'no'),
(3, 'A', 'B', '0000-00-00', '2020-12-26', 'any', 'any', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `acc_no` int(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `acc_type` varchar(100) NOT NULL,
  `open_date` date NOT NULL,
  `pen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `date`, `address`, `country`, `email`, `phone`, `acc_no`, `balance`, `acc_type`, `open_date`, `pen`) VALUES
(2, 'a', 'b', '2020-12-02', 'abcde', 'pk', 'hsretra', '11', 123456789, '0', '', '2020-12-30', 1234),
(4, 'ABC', 'BCD', '2016-02-05', 'india', 'India', 'abc88@gmail.com', '03333', 7484278, '2700', 'Saving Banking Accounts', '2020-12-26', 6464),
(5, 'A', 'B', '2018-06-19', 'india', 'India', 'abc88@gmail.com', '03333', 7484278, '2700', 'Saving Banking Accounts', '2020-12-10', 6464);

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `id` int(100) NOT NULL,
  `dep_fname` varchar(100) NOT NULL,
  `dep_lname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `pen` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `old` int(100) NOT NULL,
  `interest` int(100) NOT NULL,
  `tot_bal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(100) NOT NULL,
  `acc_no` int(100) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `loan_id` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `fname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `acc_no`, `loan_type`, `loan_id`, `amount`, `date`, `end_date`, `fname`, `address`, `phone`, `email`, `status`) VALUES
(5, 7484278, 'Credit Card Loans', 12345, 500, '2020-12-26', '2020-12-30', 'ABC BCD', 'india', '03333', 'abc88@gmail.com', 'issued');

-- --------------------------------------------------------

--
-- Table structure for table `loan_status`
--

CREATE TABLE `loan_status` (
  `id` int(100) NOT NULL,
  `acc_no` int(100) NOT NULL,
  `load_id` int(100) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(100) NOT NULL,
  `acc_no` int(100) NOT NULL,
  `trainId` varchar(100) NOT NULL,
  `tran_type` varchar(100) NOT NULL,
  `tran_method` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `cheq_num` varchar(100) NOT NULL,
  `Acc_num` int(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `current_bal` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `cus_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `acc_no`, `trainId`, `tran_type`, `tran_method`, `date`, `cheq_num`, `Acc_num`, `amount`, `current_bal`, `remark`, `cus_id`) VALUES
(9, 7484278, '2345', 'any', 'Islamabad', '2020-12-26', '80', 7484278, '200', '1000', '000', 4),
(10, 7484278, '2345', 'any', 'any', '2020-12-26', '80', 7484278, '1500', '1200', '000', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_no` (`acc_no`),
  ADD KEY `acc_type` (`acc_type`),
  ADD KEY `pen` (`pen`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pen` (`pen`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_status`
--
ALTER TABLE `loan_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_id` (`load_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dependent`
--
ALTER TABLE `dependent`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_status`
--
ALTER TABLE `loan_status`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`acc_no`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`acc_type`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `accounts_ibfk_3` FOREIGN KEY (`pen`) REFERENCES `customers` (`id`);

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`pen`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `loan_status`
--
ALTER TABLE `loan_status`
  ADD CONSTRAINT `loan_status_ibfk_1` FOREIGN KEY (`load_id`) REFERENCES `loan` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'bank3', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"arid\",\"bank\",\"bank1\",\"bank3\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bank3\",\"table\":\"complaints\"},{\"db\":\"bank3\",\"table\":\"customers\"},{\"db\":\"bank3\",\"table\":\"transaction\"},{\"db\":\"bank3\",\"table\":\"loan\"},{\"db\":\"bank3\",\"table\":\"loan_status\"},{\"db\":\"bank3\",\"table\":\"interest\"},{\"db\":\"bank3\",\"table\":\"dependent\"},{\"db\":\"bank3\",\"table\":\"accounts\"},{\"db\":\"bank1\",\"table\":\"transaction\"},{\"db\":\"bank1\",\"table\":\"customers\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('arid', 'users', 'name'),
('bank1', 'customers', 'fname'),
('bank3', 'customers', 'fname'),
('bank3', 'dependent', 'dep_fname'),
('bank3', 'loan', 'loan_type'),
('bank3', 'loan_status', 'loan_type'),
('bank3', 'transaction', 'trainId');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-26 17:30:28', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
