-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql211.epizy.com
-- Generation Time: May 27, 2021 at 07:35 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_28632739_novamedpharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'sourabhdhaware321@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-04-19 05:08:56', '10-05-2021 01:24:40 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Capsule', 'All Capsules ', '2021-04-13 07:17:37', '13-04-2021 12:22:24 AM'),
(4, 'Liquid', 'liquid type medicines', '2021-04-13 07:18:32', ''),
(5, 'Powder', 'powder medicines', '2021-04-13 07:18:54', ''),
(6, 'Soaps', 'Soaps', '2021-04-13 07:19:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '2', 5, '2021-05-20 11:37:18', 'COD', NULL),
(2, 1, '20', 5, '2021-05-20 12:14:47', 'COD', NULL),
(3, 2, '1', 5, '2021-05-20 14:06:17', 'COD', 'in Process'),
(4, 2, '16', 5, '2021-05-20 14:26:08', 'COD', NULL),
(5, 1, '19', 5, '2021-05-24 10:33:18', 'COD', NULL),
(6, 1, '15', 5, '2021-05-25 06:07:27', 'COD', NULL),
(7, 6, '16', 5, '2021-05-25 06:33:34', 'COD', NULL),
(8, 1, '1', 5, '2021-05-25 13:48:22', 'COD', NULL),
(9, 1, '21', 5, '2021-05-26 06:13:53', 'COD', NULL),
(10, 1, '15', 5, '2021-05-26 07:13:11', 'COD', NULL),
(11, 6, '16', 5, '2021-05-26 09:52:21', 'COD', NULL),
(12, 1, '18', 5, '2021-05-26 14:10:47', 'COD', NULL),
(13, 1, '2', 5, '2021-05-26 14:15:30', 'COD', NULL),
(14, 1, '17', 5, '2021-05-26 14:16:39', 'COD', NULL),
(15, 5, '3', 5, '2021-05-26 14:30:41', 'COD', NULL),
(16, 5, '15', 5, '2021-05-26 14:30:41', 'COD', NULL),
(17, 6, '1', 5, '2021-05-26 14:31:43', 'COD', NULL),
(18, 8, '1', 5, '2021-05-27 05:18:37', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'On the Way!!', '2021-05-20 14:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productDescription`, `productImage1`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 13, 'Light Liquid Paraffin Milk', 'Sodico', '<ul><li>Liquid paraffin milk of magnesia sodium Picosulfate\r\nLiquid Paraffin + Milk of Magnesia + Sodium Picosulfate is a combination of three laxatives: Liquid Paraffin , Milk of Magnesia and Sodium Picosulfate that relieves constipation. Sodium Picosulfate is a stimulant laxative which increases peristalsis (the wave-like movement of the intestines) to push the stools forward.</li></ul>', 'Sodico Light Liquid Paraffin Milk Of Magnesia and Sodium Picosulfate Syrup liquid.jpg', 'In Stock', '2021-04-15 04:54:35', ''),
(2, 4, 14, 'Soon Plus Liquid Paraffin, Milk Of Magnesia & Sodium Picosulphate Suspension', 'Soon Plus', '<ul><li>Sodium Picosulfate+Liquid Paraffin+Milk Of Magnesia is used in the treatment of constipation. Sodium Picosulfate + Liquid Paraffin + Milk Of Magnesia is a combination of three laxatives: Sodium picosulfate, liquid paraffin and milk of magnesia, which relieves constipation.</li></ul>', 'Soon Plus Liquid Paraffin, Milk Of Magnesia & Sodium Picosulphate Suspension liquid2.jpg', 'In Stock', '2021-04-16 04:59:00', ''),
(3, 4, 14, 'Liquid Paraffin Milk Magnesia and Sodium Picosulphate Suspension', 'Laxoreg', '<ul><li>Sodium Picosulfate+Liquid Paraffin+Milk Of Magnesia is used in the treatment of constipation. Sodium Picosulfate + Liquid Paraffin + Milk Of Magnesia is a combination of three laxatives: Sodium picosulfate, liquid paraffin and milk of magnesia, which relieves constipation.</li></ul>', 'Liquid Paraffin Milk Magnesia and Sodium Picosulphate Suspension liquid3.jpg', 'In Stock', '2021-04-15 05:03:15', ''),
(15, 3, 8, 'Finpecia Allopathic Hair Loss Medicines, 1 mg, 1x10 Tablets', 'Finpecia', '<ul><li>Finpecia is a synthetic antiandrogen that acts by inhibiting type II 5-alpha reductase, the enzyme that converts testosterone to dihydrotestosterone (DHT). It is used as a treatment in benign prostatic hyperplasia (BPH) in low doses, and prostate cancer in higher doses. A May, 2008 study indicates that Finpecia reduces the rate of prostate cancer by 30%</li></ul>', 'Finpecia (Finasteride) Capsule1.jpg', 'In Stock', '2021-04-15 05:09:17', ''),
(16, 3, 8, 'VITACIP CAPSULE-10 capsules-CIPLA LTD', 'Cipla', '<ul><li>Vitacip Capsule is a dietary supplement enriched with Ginseng, Multivitamins and Multiminerals. Ginseng possesses anti-fatigue, anti-stress, and CNS stimulant properties. Ginseng increases both physical and mental efficiency, Ginseng gives good health in diabetes and stressed life.</li></ul>', 'VITACIP CAPSULE-10 capsules-CIPLA LTD capsule2.jpg', 'In Stock', '2021-04-16 05:22:23', ''),
(17, 5, 16, 'Neosporin Powder 10gm', 'Neosporin', '<ul><li>Neosporin Powder is used externally for the skin conditions with superficial bacterial infection or likely have a bacterial infection. It contains a combination of three antibiotics: Neomycin, Polymyxin B and Bacitracin. It is applied on open wounds, cuts, minor burns and surgical wounds to prevent infection. The side effects of this medicine are low. </li></ul>', 'Neosporin Powder 10gm powder1.jpg', 'In Stock', '2021-04-15 05:40:37', ''),
(18, 5, 16, 'Addiction Killer Powder for Personal Use', 'Ayurvedic', '<ul><li>Addiction Killer is a trusted online supplier of ayurvedic remedy prescribed for the treatment of alcohol addiction, smoking cigarettes, marijuana and drug abuse.Clinically approved Addiction Killer helps addicts to get rid of their dependency effectively, WITHOUT ANY SIDE EFFECTS. Hence, we assure a healthy ayurvedic cure for alcohol abuse, tobacco addiction, smoking addiction, marijuana addiction, smack addiction, cocaine abuse and other drug addictions.</li></ul>', 'Addiction Killer Powder for Personal Use.jpg', 'In Stock', '2021-04-15 05:09:10', ''),
(19, 6, 15, 'Himalaya Cucumber & Coconut Soap 125 gm', 'Himalaya', '<ul><li>Himalaya Cucumber & Coconut Soap is ideal for rejuvenating and refreshing your skin. Blended together with the extracts of Cucumber and Coconut Oil, the soap tones your skin, leaving it soothed, nourished and moisturised. \r\n\r\nCucumber is an excellent toner as it immediately tightens open pores. The abundant antioxidants in cucumber rejuvenate the skin, leaving it feeling soft and smooth. Coconut Oil acts as an effective Moisturiser for all skin types including dry skin.</li></ul>', 'Himalaya Cucumber & Coconut Soap 125 gm.jpg', 'In Stock', '2021-04-16 05:05:03', ''),
(20, 6, 15, 'Dettol Soap, Cool 75gm', 'Dettol ', '<ul><li>Dettol is a brand of cleaning supplies and disinfectant and antiseptic, introduced in 1932 and the manufacturer owned by the British company Reckitt.</li></ul>', 'Dettol Soap, Cool 75gm.jpg', 'In Stock', '2021-04-16 05:19:22', ''),
(21, 3, 13, 'ACECLOFENAC 120 mg', 'ACELEZ – SP', 'Our reputation in the market is largely attributable to our precisely formulated Aceclofenac 100 mg, Paracetamol , Serratiopeptidase Tablet.', 'ACELEZ-SP.jpg', 'In Stock', '2021-05-11 18:05:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 3, 'Medicines', '2021-05-10 12:59:45', '12-05-2021 01:15:09 PM'),
(14, 4, 'NeoCell', '2021-05-11 18:28:20', NULL),
(15, 6, 'Mankind', '2021-05-11 18:30:20', NULL),
(16, 5, 'Doctors_Best', '2021-05-11 18:31:51', '12-05-2021 01:25:43 AM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'sourabhdhaware321@gmail.com', 0x3135322e35372e3136302e3932000000, '2021-05-20 11:35:37', NULL, 1),
(2, 'dineshsalunkhe123@gmail.com', 0x3135322e35372e3133322e3135390000, '2021-05-20 13:57:07', '20-05-2021 08:27:20 PM', 1),
(3, 'dineshsalunkhe123@gmail.com', 0x3135322e35372e3133322e3135390000, '2021-05-20 14:04:43', NULL, 1),
(4, 'dineshsalunkhe123@gmail.com', 0x3135322e35372e3133322e3135390000, '2021-05-20 14:23:52', NULL, 0),
(5, 'dineshsalunkhe123@gmail.com', 0x3135322e35372e3133322e3135390000, '2021-05-20 14:24:06', NULL, 1),
(6, 'abc@gmail.com', 0x3130362e3232302e39352e3235300000, '2021-05-21 18:17:27', '22-05-2021 12:49:26 AM', 1),
(7, 'abc@gmail.com', 0x3130362e3232302e39352e3235300000, '2021-05-21 18:20:52', NULL, 1),
(8, 'abc@gmail.com', 0x3135372e33332e36362e313400000000, '2021-05-21 18:28:01', NULL, 1),
(9, 'abc@gmail.com', 0x3135372e33332e3132352e3433000000, '2021-05-24 10:31:05', NULL, 0),
(10, 'sourabhdhaware321@gamil.com', 0x3135372e33332e3132352e3433000000, '2021-05-24 10:32:41', NULL, 0),
(11, 'sourabhdhaware321@gmail.com', 0x3135372e33332e3132352e3433000000, '2021-05-24 10:32:58', NULL, 1),
(12, 'sourabhdhaware321@gmail.com', 0x3135322e35372e3132382e3137340000, '2021-05-25 06:07:13', '25-05-2021 01:54:46 PM', 1),
(13, 'architmane@gmail.com', 0x3135372e33332e38342e313000000000, '2021-05-25 06:21:46', NULL, 1),
(14, 'bahekar.shubham7@gmail.com', 0x3135372e33332e3132372e3330000000, '2021-05-25 06:26:20', NULL, 0),
(15, 'bahekar.shubham7@gmail.com', 0x3135372e33332e3132372e3330000000, '2021-05-25 06:26:55', NULL, 1),
(16, 'adwaitbilaskarb@gmail.com', 0x34352e3234392e3235322e3132310000, '2021-05-25 06:30:06', NULL, 1),
(17, 'vikasgholav02@gmail.com', 0x3135322e35372e39392e353700000000, '2021-05-25 06:34:51', NULL, 1),
(18, 'sourabhdhaware321@gmail.com', 0x3135322e35372e3131322e3133320000, '2021-05-25 08:45:27', NULL, 1),
(19, 'sourabhdhaware321@gmail.com', 0x3135322e35372e33342e313138000000, '2021-05-25 13:47:58', NULL, 1),
(20, 'sourabhdhaware321@gmail.com', 0x3135322e35372e3130322e3232000000, '2021-05-26 06:13:29', NULL, 1),
(21, 'adwaitbilaskarb@gmail.com', 0x34352e3234392e3235322e3132310000, '2021-05-26 09:50:21', NULL, 1),
(22, 'adwaitbilaskarb@gmail.com', 0x34352e3234392e3235322e3132310000, '2021-05-26 09:51:17', NULL, 1),
(23, 'sourabhdhaware321@gmail.com', 0x3135322e35372e3130322e3137380000, '2021-05-26 14:10:37', '27-05-2021 11:44:40 AM', 1),
(24, 'bahekar.shubham7@gmail.com', 0x3135372e33332e3132302e3435000000, '2021-05-26 14:28:51', '26-05-2021 09:01:20 PM', 1),
(25, 'adwaitbilaskarb@gmail.com', 0x34352e3234392e3235322e3132310000, '2021-05-26 14:30:12', NULL, 1),
(26, 'test@test.com', 0x3130332e3131302e3136342e39340000, '2021-05-27 05:17:51', NULL, 0),
(27, 'test@test.com', 0x3130332e3131302e3136342e39340000, '2021-05-27 05:18:06', '27-05-2021 11:48:43 AM', 1),
(28, 'test@test.com', 0x3130332e3131302e3136342e39340000, '2021-05-27 05:20:53', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Sourabh Chandrakant Dhaware', 'sourabhdhaware321@gmail.com', 7020798948, 'afa52a376a03090b30f64e1cb9843ce4', 'Sahkar Nagar, Sangali Road', 'Maharashtra', 'Ichalkaranji', 416115, '2021-05-20 11:35:18', NULL),
(2, 'Dinesh salunkhe', 'dineshsalunkhe123@gmail.com', 8411838113, '4a793931e2659a91410232c423feed2f', '20/572/53 ,shree ram nagar ,bhonemal', 'Maharashtra', 'Ichalkaranji', 416115, '2021-05-20 13:56:42', NULL),
(3, 'Abc xyz', 'abc@gmail.com', 4567891356, 'b24331b1a138cde62aa1f679164fc62f', NULL, NULL, NULL, NULL, '2021-05-21 18:16:49', NULL),
(4, 'Archit Atul Mane', 'architmane@gmail.com', 8805656946, 'faad19301a55b8eecc9ee67682807f78', NULL, NULL, NULL, NULL, '2021-05-25 06:21:30', NULL),
(5, 'Shubham Mahesh Bahekar', 'bahekar.shubham7@gmail.com', 8669105053, '957fe7d1c7596c060782d87544ac7264', 'Gaonbhag ,Sangli', 'Maharashtra', 'Sangli', 416416, '2021-05-25 06:26:43', NULL),
(6, 'Adwait Uday Bilaskar', 'adwaitbilaskarb@gmail.com', 9011066007, '142124bd9857d37633ac6772abea6f37', 'Uuuu', 'Uuuu', 'Uui', 666666, '2021-05-25 06:29:43', NULL),
(7, 'Vikas Shivaji Ghol', 'vikasgholav02@gmail.com', 8956440706, '59e2578493027be07244674d39c63c01', NULL, NULL, NULL, NULL, '2021-05-25 06:34:39', NULL),
(8, 'test', 'test@test.com', 987654321, 'cc03e747a6afbbcbf8be7668acfebee5', ' ichalkaranji kolhapur 416115', 'Maharashtra', 'Ichalkaranji Kolhapur', 416115, '2021-05-27 05:17:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
