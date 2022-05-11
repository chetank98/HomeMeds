-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 08:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'yashmodi@gmail.com', 'yashmodi@96'),
(2, 'chetanadmin@gmail.com', 'Chetan@98');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `quantity` int(11) NOT NULL,
  `checkedout` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_email`, `quantity`, `checkedout`) VALUES
(51, 4, 'simrana@gmail.com', 1, 0),
(62, 1, 'yk@gmail.com', 2, 0),
(66, 5, 'yash@yahoo.in', 1, 0),
(67, 9, 'yash@yahoo.in', 1, 0),
(69, 11, 'rutali@gmail.com', 1, 0),
(71, 1, 'chetancool.kumar1998@gmail.com', 2, 0),
(72, 6, 'chetancool.kumar1998@gmail.com', 1, 0),
(73, 11, 'chetancool.kumar1998@gmail.com', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_status`) VALUES
(1, 'Flu & Cold', '1'),
(2, 'Vitamins & Supplements', '1'),
(3, 'Chickenpox', '1'),
(4, 'Covid Essentials', '1'),
(5, 'Devices', '1'),
(6, 'Diabities', '1'),
(7, 'EyeWear', '1'),
(8, 'Mom and Child', '1');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `deal_name` varchar(50) NOT NULL,
  `deal_cost` int(15) NOT NULL,
  `deal_count` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`deal_name`, `deal_cost`, `deal_count`) VALUES
('', 1, NULL),
('bigsaving', 5, 11),
('smartdeal', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `full_name`, `phone_number`) VALUES
('chetancool.kumar1998@gmail.com', '$2y$10$nPW8E/QBhOuM/YJ/MfHhKuWE68D03kjb9EWQTVeDOJ/qyjJiU.qlm', 'Chetan kumar', '9910901883'),
('rutali@gmail.com', '$2y$10$nE3VGZM6bT3wSCsRM3kApO.zEAr6zokEJO45ujsjSBRXuV2g72ZqW', 'RutaliBandivadekar', '1452148875'),
('rutalib@gmail.com', 'abcd123', 'Rutali', '9898989898'),
('sagar@gmail.com', 'Sagarabcd@123', 'Sagar', '8977584521'),
('simran@gmail.com', 'Simranarora@12', 'SimranArora', '9875845896'),
('simrana@gmail.com', '$2y$10$sipQ/pXv5Gp7h4ypEWowfuY58w8oNt3cCUnQ1gG.6xji.JJ6BXllO', 'Simran Arora', '5498658754'),
('yash@gmail.com', 'Yashabcd@12', 'YashModi', '4521578954'),
('yash@yahoo.in', '$2y$10$gNCsbXnjoG0PH4aazUlPaOLNdQjc7KPT6yugz2f/0GuZ.NlmnTxCK', 'Yash Modi', '9898989898'),
('yashmodi@gmail.com', '$2y$10$PCoC/DZCoZsOE8ozKq3IoOxTkES7SVahJTdie/36Ixbgrq/9t6UjG', 'Yash Modi', '9865321452'),
('yk@gmail.com', '$2y$10$9Z4bCFU/aFR3.5spR78T7uTktoK0DYzh2AwY6Jz.wdpnrtdTVRzXK', 'Yash Kawthankar', '9898989898');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `state_country` varchar(50) NOT NULL,
  `postalcode` varchar(6) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `deal_code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `order_id` int(5) NOT NULL,
  `customer_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`fname`, `lname`, `address`, `state_country`, `postalcode`, `email`, `phone_number`, `deal_code`, `order_id`, `customer_id`, `total`) VALUES
('Rutali', 'Bandivadekar', '7575 Frankford Road', 'Texas', '75252', 'rutalib@gmail.com', '8787878589', 'smartdeal', 14, 'rutalib@gmail.com', '$58'),
('Simran', 'Arora', '7575 Frankford Road', 'Texas', '75252', 'simran@gmail.com', '7878744555', 'smartdeal', 24, 'rutalib@gmail.com', '$58'),
('Rutali', 'Bandivadekar', '7575 Frankford Road', 'Texas', '75252', 'rutali@gmail.com', '5896547854', 'smartdeal', 25, 'rutali@gmail.com', '$26'),
('Yash', 'Modi', 'Cambell', 'Texas', '752452', 'yash@gmail.com', '8756896541', 'bigsaving', 28, 'rutali@gmail.com', '$2.75'),
('Simran', 'Arora', '7575 Frankford Road', 'United States', '752521', 'simran@gmail.com', '8765986587', 'smartdeal', 34, 'rutali@gmail.com', '$11.99'),
('Sagar', 'Kawthankar', 'Mccallum', 'United States', '578874', 'sagar@gmail.com', '8989875645', '', 47, 'rutali@gmail.com', '$32.99'),
('Rutali', 'Bandivadekar', 'University of Texas at Dallas', 'Texas', '752520', 'rutali@gmail.com', '9898876598', '', 48, 'rutali@gmail.com', '$34.75'),
('Yash', 'Modi', 'Campbell', 'United States', '985895', 'yash@gmail.com', '8765549854', 'smartdeal', 49, 'rutali@gmail.com', '$12'),
('Rutali', 'Bandivadekar', '7575 Frankford Road', 'Texas', '752521', 'rutali@gmail.com', '9858965415', 'bigsaving', 50, 'rutali@gmail.com', '$22.98'),
('Rutali', 'Bandivadekar', '7575 Frankford Road', 'Texas', '075252', 'rutali@gmail.com', '8989857450', 'bigsaving', 51, 'rutali@gmail.com', '$6.2'),
('Rutali', 'Bandivadekar', '7575 Frankford Road', 'Texas', '752520', 'rutali@gmail.com', '9865896541', 'smartdeal', 52, 'rutali@gmail.com', '$8'),
('Sagar', 'Kawthankar', 'Chatham Courts', 'Texas', '012457', 'sagar@gmail.com', '9856859564', 'smartdeal', 53, 'rutali@gmail.com', '$16.99'),
('Yash', 'Modi', 'Ashwood', 'Texas', '024589', 'yash@gmail.com', '9898989898', 'bigsaving', 54, 'yash@yahoo.in', '$6.75');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_cost` float NOT NULL,
  `product_description` varchar(512) NOT NULL,
  `product_image` varchar(10000) NOT NULL,
  `product_count` int(10) NOT NULL,
  `product_characteristic` varchar(8096) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_cost`, `product_description`, `product_image`, `product_count`, `product_characteristic`, `product_category`, `product_status`) VALUES
(1, 'Crocin', 10, 'Crocin is a carotenoid chemical compound that is found in the flowers crocus and gardenia. Crocin is the chemical primarily responsible for the color of saffron. Chemically, crocin is the diester formed from the disaccharide gentiobiose and the dicarboxylic acid crocetin.', 'crocin.jpg', 294, '', 1, '1'),
(2, 'Febrex', 12.5, 'Febrex 500 MG Tablet is used to temporarily relieve fever and mild to moderate pain such as muscle ache, headache, toothache, arthritis, and backache. This medicine should be used with caution in patients with liver diseases due to the increased risk of severe adverse effects.', 'febrex.jpg', 100, '', 1, '0'),
(3, 'Advil', 11.75, 'Make pain a distant memory. Advil® is the #1 selling pain reliever,* providing safe, effective pain relief for over 30 years. So whether you have a headache, muscle aches, backaches, menstrual pain, minor arthritis and other joint pain, or aches and pains from the common cold, nothing\'s stronger or longer lasting. The medicine in Advil® is #1 doctor recommended for pain relief.', 'advil.jpg', 99, '', 1, '1'),
(4, 'Tylenol', 13, 'An estimated 50 million Americans use acetaminophen each week to treat conditions such as pain, fever and aches and pains associated with cold and flu symptoms. To help encourage the safe use of acetaminophen, the makers of TYLENOL® have lowered the maximum daily dose for single-ingredient Extra Strength TYLENOL® (acetaminophen) products sold in the U.S. from 8 pills per day (4,000 mg) to 6 pills per day (3,000 mg). ', 'tylenol.jpg', 8, '', 1, '0'),
(5, 'Sudafed', 11.08, 'Reach for products from the makers of SUDAFED® to rescue you from your sinus symptoms and sinus related problems, like allergies and colds. You can find our products either behind the counter, in the cold and allergy aisle, or online.', 'sudafed.jpg', 8, '', 1, '1'),
(6, 'Benadryl', 14.12, 'Benadryl Dry Cough & Nasal Congestion is used to relieve the symptoms of cold and cough such as runny nose, nasal congestion and dry cough. Dextromethorphan is a cough suppressant that acts on the cough centre in the brain to suppress a dry cough.', 'benadryl.jpg', 6, '', 1, '1'),
(7, 'Mucinex DM', 14, 'Mucinex DM is a cough medicine that contains dextromethorphan, a cough suppressant, and guaifenesin, an expectorant. This combination of two drugs helps loosen mucus and phlegm, and thin out bronchial secretions, making coughs more productive.', 'mucinexdm.jpg', 6, '', 1, '1'),
(8, 'Theraflu', 13.99, 'Theraflu Nighttime Severe Cold And Cough (Acetaminophen / Diphenhydramine / Phenylephrine) is good for treating multiple cold and flu symptoms, but it won\'t relieve coughing. ', 'theraflu.jpg', 6, '', 1, '1'),
(9, 'Omega 3', 18, 'Omega-3 fish oil contains both docosahexaenoic acid (DHA) and eicosapentaenoic acid (EPA). Omega-3 fatty acids are essential nutrients that are important in preventing and managing heart disease. ', 'omega3.jpg', 8, '', 2, '1'),
(10, 'Vitamin', 25.5, 'The health benefits of vitamins include their ability to prevent and treat various diseases including heart problems, high cholesterol levels, and eye and skin disorders. Most vitamins facilitate many of the body’s mechanisms and perform functions which cannot be performed by any other nutrients.\r\n', 'vitamins.jpg', 8, '', 2, '1'),
(11, 'Whey Protein', 34.99, 'Whey is the liquid remaining after milk has been curdled and strained. It is a byproduct of the manufacture of cheese or casein and has several commercial uses. Sweet whey is a byproduct produced during the manufacture of rennet types of hard cheese, like Cheddar or Swiss cheese.', 'wheyprotein.jpeg', 7, '', 2, '1'),
(12, 'BCAA', 21.75, 'Branched-chain amino acids (BCAAs) are a group of three essential amino acids: leucine, isoleucine and valine. BCAA supplements are commonly taken in order to boost muscle growth and enhance exercise performance. They may also help with weight loss and reduce fatigue after exercise.', 'bcaa.jpg', 9, '', 2, '1'),
(13, 'Creatine', 11.2, 'Creatine is an organic compound with the nominal formula CNCH₂CO₂H. This species exists in various modifications in solution. Creatine is found in vertebrates where it facilitates recycling of adenosine triphosphate, the energy currency of the cell, primarily in muscle and brain tissue.', 'creatine.jpg', 8, '', 2, '1'),
(14, 'Glutamine', 9.75, 'Glutamine is an α-amino acid that is used in the biosynthesis of proteins. Its side chain is similar to that of glutamic acid, except the carboxylic acid group is replaced by an amide. It is classified as a charge-neutral, polar amino acid. ', 'glutamine.jpg', 10, '', 2, '1'),
(15, 'Minerals', 7.75, 'A mineral is, broadly speaking, a solid chemical compound that occurs naturally in pure form. A rock may consist of a single mineral, or may be an aggregate of two or more different minerals, spacially segregated into distinct phases.', 'mineral.jpg', 9, '', 2, '1'),
(16, 'Disprin', 4, 'Blood thinners and nonsteroidal anti-inflammatory drug\r\nIt can treat pain, fever, headache, and inflammation. It can also reduce the risk of heart attack.', 'disprin.jpg', 50, 'Ecotrin, Durlaza, Ecotrin Low Strength, Aspir-Trin, Bayer Plus Extra Strength, Lo-Dose Aspirin, Aspirin Childrens, E.C. Prin, Bayer Advanced, Bufferin, and more', 1, '0'),
(17, 'Saridon', 8.99, 'Propyphenazone/paracetamol/caffeine is an analgesic combination indicated for the management of headache. It contains the analgesics propyphenazone and paracetamol and the stimulant caffeine.', 'Saridon.jpg', 23, 'Analgesic', 1, '1'),
(18, 'Oscillo', 30, '<p>Flu</p>', 'panadol.jpg', 50, 'Flu Cold', 2, '0'),
(19, 'Oscillococcinum', 20, 'Flu and Cold ', 'oscillococcinum.jpg', 50, 'Cold', 1, '1'),
(20, '3 PLY Mask', 20, 'A 3ply mask help to protect the face from the virus and pollution.', '3ply mask.jpg', 100, '', 4, '1'),
(21, 'N-95 Mask', 255, '', 'N95mask.jpg', 100, '', 4, '1'),
(22, 'Dettol', 176, '\r\nDettol Antiseptic Liquid provides protection to you and your family against illness-causing germs and comes in a fresh pine fragrance. The topical antiseptic liquid sanitizes your home and helps maintain your personal hygiene.', 'dettol.jpg', 50, '', 4, '1'),
(23, 'santizer can', 2125, '', 'santizer500ml.jpg', 150, '', 4, '1'),
(24, 'AvisKabasuraKudineerChooranam', 95, 'Avis Kabasura Kudineer is a Siddha medicine that consists of a whopping 15 herbal ingredients, each of them having unique characteristic features of its own.', 'AvisKabasuraKudineerChooranam.jpg', 150, '', 4, '1'),
(25, 'Face Sheild', 350, 'Face Sheild helps you to protect the face from covid virus.', 'FaceShield.jpg', 200, '', 4, '1'),
(26, 'Oxygen Can', 650, 'Oxygen can capacity of 6 litres.', 'OxygenCan.jpg', 0, '', 4, '1'),
(27, 'InfraredThermameter', 1524, 'Infrared Thermameter is used to measure the temperature of the human as well as objects.', 'InfraredThermameter.jpg', 50, '', 5, '1'),
(28, 'Tynor Elastic Shoulder Immobiliser', 596, 'Tynor Elastic Shoulder Immobilizer is a lightweight, sleek and smart design to provide immobilization in shoulder dislocation and post-operative rehabilitation of the shoulder. It reduces abduction and arm rotation by positioning the arm close to the body', 'TynorElasticShoulderImmobilizer.jpg', 50, '', 5, '1'),
(29, 'Digital Thermameter', 197, 'Digital thermameter used to measure the temperature of the the human body.', 'Thermamater.jpg', 200, '', 5, '1'),
(30, 'Finger Pulse Oximeter', 2400, 'Finger Pulse Oximeter is used to measure the oxygen level through finger.', 'Oximeter.jpg', 300, '', 5, '1'),
(31, 'Blood Pressure Monitor', 2144, 'Blood Pressure Monitor is used to measure the blood pressure f the human body.', 'BPMonitor.jpg', 200, '', 5, '1'),
(32, 'Sahyog Wellness Piston Compressor Nebulizer for Children & Adults with Flow Adjuster', 1458, '', 'Sahyog Wellness Piston Compressor Nebulizer for Children & Adults with Flow Adjuster.jpg', 125, '', 5, '1'),
(33, 'Accu-Chek Instant S Blood Glucose Monitor with Free 10 Test Strips', 824.25, '\r\nEffortless Bluetooth synchronization with mySugar diabetes management app. Monitor your blood glucose level easily, get visual reassurance and personalize it to suit your goals with intuitive target range indicator.', 'Accu-Chek Instant S Blood Glucose Monitor with Free 10 Test Strips.jpg', 300, '', 6, '1'),
(34, 'Onetouch Verio Test Strip 100\'s', 1797.4, '\r\nThese test strips from OneTouch are used for testing blood glucose. The test strips are used with the blood glucose monitoring system for measuring the level of sugar in the capillary blood vessels.', 'Onetouch Verio Test Strip 100\'s.jpg', 200, '', 6, '1'),
(35, 'Dr.Vaidya\'s Diabex Pills 30\'s', 107.2, 'Dr. Vaidya’s Diabex Capsule is an Ayurvedic medication for diabetes and prediabetes that can help in the management of Type-2 Diabetes. This natural diabetes medicine is made solely from Ayurvedic herbs that have proven benefits for diabetics as they can help regulate blood glucose levels and improve insulin sensitivity.', 'Dr.Vaidya\'s Diabex Pills 30\'s.jpg', 100, '', 6, '1'),
(36, 'Haslab Drox 07 Diabet Drops 30 ml', 150, '* Mfr: Hahnemann Scientific Laboratory (India) Pvt. Ltd.\r\n* Country of Origin: India', 'Haslab Drox 07 Diabet Drops 30 ml.jpg', 200, '', 6, '1'),
(37, 'So Sweet 100% Natural Sugarfree Sweetener Stevia Spoonable Powder 1000 gm', 1125.75, '', 'So Sweet 100% Natural Sugarfree Sweetener Stevia Spoonable Powder 1000 gm.jpg', 300, '', 6, '1'),
(38, 'Pro360 Diabetic Care Powder - Real Badam Flavour 500 gm', 616.25, 'The dietary needs of a diabetic have to be calculated carefully lest it spikes their sugar levels. PRO360 Diabetic delivers a healthy dose of methylcobalamin, calcium, and DHA can become a wholesome meal supplement for diabetic patients. Packed with the goodness of triprotein (Whey, Milk & Soy), PRO360 Diabetic can totally fulfill a diabetic’s sweet cravings and yet keep them healthy. With extra calcium, PRO360’s special formula helps to rebuild and boosts their skeletal strength. It also helps to neutraliz', 'Pro360 Diabetic Care Powder - Real Badam Flavour 500 gm.jpg', 200, '', 6, '1'),
(39, 'Sugar Free Natura Sweet 200 Drops 10 ml', 126, '* Mfr: Cadila Healthcare Ltd (Zydus)\r\n* Country of Origin: India', 'Sugar Free Natura Sweet 200 Drops 10 ml.jpg', 300, '', 6, '1'),
(40, 'BD Ultra Fine 100IU/31G Syringe 1 x 10\'s', 89, 'BD Insulin Syringes with BD Ultra-Fine Needle is the latest injection technique that reduces the risk of a painful injection into the muscle. It is as effective as longer needles. 4, 5 and 6 mm needles may be used by any adult patient including obese ones.', 'BD Ultra Fine 100IU/31G Syringe 1 x 10\'s.jpg', 250, '', 6, '1'),
(41, 'Bausch & Lomb Optima 38 Yearly Contact Lens - 1 Lens/Box (-2.25)', 855, 'An easy-to-fit low water content spherical soft lens manufactured using \"Reverse Process III\" technology and designed for use in the correction of myopia and hyperopia on a daily wear basis.', 'Bausch & Lomb Optima 38 Yearly Contact Lens - 1 Lens/Box (-2.25).jpg', 50, '', 7, '1'),
(42, 'Vision Express UV Block Ready Reader - Red (+2.00)', 899.4, 'Full Rim, Rectangle, Red, Medium(52-18-145), Women, Reading Glasses Blue lens, (+2.00)', 'Vision Express UV Block Ready Reader - Red (+2.00).jpg', 100, '', 7, '1'),
(43, 'Vision Express 12033 AF (including lens with Anti-reflective coating) - Matt Black', 1099.25, '\r\nFull Rim, Oval, Matt Black, Medium, 53-18-140, Mens. This \"soft\" rectangular frame flatters any face. Single Vision 1.5 index lens with anti-reflection coating. VX fog ID on lens is proof of authenticity.', 'Vision Express 12033 AF (including lens with Anti-reflective coating) - Matt Black.jpg', 100, '', 7, '1'),
(44, 'Vision Express Ready Reader - Black (+2.50)', 599, 'Full Rim, Rectangle, Black, Medium(51-20-140), Men, Reading Glasses, (+2.50)', 'Vision Express Ready Reader - Black (+2.50).jpg', 100, '', 7, '1'),
(45, 'Vision Express 12018 Brown Brown Gradient Aviator Sunglasses 1\'s', 824.25, '', 'Vision Express 12018 Brown Brown Gradient Aviator Sunglasses 1\'s.jpg', 100, '', 7, '1'),
(46, 'MamyPoko Extra Absorb Diaper Pants (M) 4\'s', 44, '', 'MamyPoko Extra Absorb Diaper Pants (M) 4\'s.jpg', 300, '', 8, '1'),
(47, 'Mothercare Narrow Neck Bottle - Pink 150 ml', 152, '\r\nMothercare is a specialist brand that offers a wide range of products for mothers to be, babies and children up to the age of eight. Mothercare aims to be the world’s leading mother and baby specialist in the markets in which they operate. Mothercare product offering includes clothing & footwear with children’s ranges from entry price offering mums’ everyday value to the more premium, our maternity range; Home & travel which includes pushchairs, car seats, furniture, bedding, feeding and bathing equipment', 'Mothercare Narrow Neck Bottle - Pink 150 ml.jpg', 500, '', 8, '1'),
(48, 'Similac IQ+ Stage 1 (Upto 6 Months) 400 gm Powder Tin', 680, '', 'Similac IQ+ Stage 1 (Upto 6 Months) 400 gm Powder Tin.jpg', 300, '', 8, '1'),
(49, 'I Know Ovulation Strip', 466, '', 'I Know Ovulation Strip.jpg', 0, '', 8, '1'),
(50, 'Stayfree Secure Ultra Thin Dry Cover With Wings (XL) Sanitary Pad 40\'s', 199, 'Stayfree Dry max all night Pads is the only overnight pad with Night guard Zone and eighteen anti-leak channels, designed to help block leaks from side to side, and front to back, too. Stayfree Dry max all night Pads provides maximum leak protection.\r\n\r\nCombine that remarkable absorbency with the cottony softness of Stayfree Overnight pads to feel comfortable and confident throughout the night.', 'Stayfree Secure Ultra Thin Dry Cover With Wings (XL) Sanitary Pad 40\'s.jpg', 200, '', 8, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`deal_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `deal_code` (`deal_code`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category` (`product_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_email`) REFERENCES `login` (`email`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `login` (`email`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`deal_code`) REFERENCES `deal` (`deal_name`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
