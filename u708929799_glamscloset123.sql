-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2022 at 09:48 AM
-- Server version: 10.5.13-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u708929799_glamscloset123`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_type` varchar(100) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_adsense_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`adv_id`, `adv_location`, `adv_type`, `adv_photo`, `adv_url`, `adv_adsense_code`) VALUES
(1, 'Above Welcome Section', 'Image Advertisement', 'ad-1.png', '', ''),
(2, 'Above Featured Product', 'Image Advertisement', 'ad-2.png', '', ''),
(3, 'Above Latest Product', 'Image Advertisement', 'ad-3.png', '', ''),
(4, 'Above Popular Product', 'Image Advertisement', 'ad-4.png', '', ''),
(5, 'Above Testimonial Section', 'Image Advertisement', 'ad-5.png', '', ''),
(6, 'Category Page Sidebar', 'Image Advertisement', 'ad-6.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'John Doe', 'ABC', 'customer@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', 'John Doe', 'ABC', '123-123-1234', 18, 'Test Address', 'Test City', 'N/A', '123456', 'John Doe', 'ABC', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '25d55ad283aa400af464c76d713c07ad', '', '2018-01-17 09:40:25', '', 1),
(2, 'Peter Smith', 'DEF', 'customer2@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '25d55ad283aa400af464c76d713c07ad', '', '2018-01-17 07:11:12', '1516194672', 1),
(3, 'Robert Bent', 'XYZ', 'customer3@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', 'Robert Bent', 'XYZ', '123-123-1234', 18, 'Test Address', 'Test City', 'N/A', '123456', 'Robert Bent', 'XYZ', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '1c0cf8531727fc9b407e5b40ec203338', '', '2018-02-06 11:44:27', '1517895867', 1),
(6, 'Saad', 'top', 'saadali88578@gmail.com', '0308778858', 167, 'Multan', 'Multan', 'Multan', '60000', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '983d74e0ff890570e29bfd3677538748', '82f8ce26ea05f786a6915a556ba2e0a6', '2022-06-01 07:39:48', '1654051188', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(24, 'All Products', 14),
(26, 'All Products', 15),
(27, 'All Products', 16),
(28, 'All Products', 17),
(29, 'All Products', 18),
(30, 'All Products', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(5, 'What is the delivery Time?', '<p><span style=\"color: rgb(96, 96, 96); font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px;\">We provide shipping all over Pakistan through TCS. Deliveries can take 3-5 business days. Bridal Wear delivery times are determined after reviewing your requirements and the season of delivery.</span><br></p>'),
(6, 'Can I cancel my order?', '<p><span style=\"color: rgb(96, 96, 96); font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px;\">You can cancel your order before the item is shipped.</span><br></p>'),
(7, 'What is the Exchange Policy?', '<p><span style=\"color: rgb(96, 96, 96); font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px;\">If you are not satisfied with your purchase, you may exchange it with another product. You must bring the article that needs to be exchanged to the nearest Maria B store within 7 days of purchase along with the original receipt after informing and approval at official.glamscloset@gmail.com</span><br></p>'),
(8, 'How do I can track my order?', '<p><span style=\"color: rgb(96, 96, 96); font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px;\">On dispatch, you will be provided a Tracking ID for your order through email and SMS. You can log on to TCS website for local order respectively, insert youâ€™re tracking ID and track your order.&nbsp;</span><a href=\"http://www.tcscouriers.com/pk/tracking/default.aspx\" style=\"margin: 0px; padding: 0px; touch-action: manipulation; color: rgb(0, 0, 0); text-decoration-line: underline; transition: all 200ms ease-in-out 0s; font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px; outline: none !important;\">http://www.tcscouriers.com/pk/tracking/default.aspx</a><br></p>'),
(9, 'Can I return the product?', '<p><span style=\"color: rgb(96, 96, 96); font-family: FuturaStd-Medium; font-size: 12px; letter-spacing: 0.6px;\">We do not accept returns for online orders.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Rs'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(14, 'Women Clothing', 4),
(15, 'Male Clothing', 4),
(16, 'UnStitched', 4),
(17, 'Stitched', 4),
(18, 'Jewellery', 4),
(19, 'Multani  Khussa', 4),
(20, 'Perfumes', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"text-align: center; \"><b><br></b></p><p style=\"\"><span style=\"margin: 0px; padding: 0px;\"><b>Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.</b></span></p><p>Welcome to our store. Please ask anything from us.We are here to help.</p><p>We Sell Sitched or Unstitched Clothes for ladies &amp; Gents in very Reasonable Prices..</p><ul><li>Best Quality Prices</li><li>Free Delivery</li><li>Easily Exchange</li><li>No Extra charges</li><li>Product Delivery in 3-4 Days</li><li>Cash On Delivery Available&nbsp;</li></ul><p>Thank you. We hope your experience was awesome ðŸ¥°</p><p style=\"\"><span style=\"margin: 0px; padding: 0px;\"></span><b><br></b></p>\r\n', 'about-banner.jpg', 'GlamsCloset - About Us', 'about, about us, about team, about company', 'Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.', 'FAQ', 'faq-banner.jpg', 'GlamsCloset - FAQ', '', 'Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.', 'Blog', 'blog-banner.jpg', 'GlamsCloset- Blog', '', 'Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.', 'Contact Us', 'contact-banner.jpg', 'GlamsCloset - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'GlamsCloset - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'GlamsCloset- Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpeg'),
(2, 'Photo 2', 'photo-2.jpeg'),
(3, 'Photo 3', 'photo-3.jpeg'),
(4, 'Photo 4', 'photo-4.jpeg'),
(5, 'Photo 5', 'photo-5.jpeg'),
(6, 'Photo 6', 'photo-6.jpeg'),
(8, '4', 'photo-8.jpeg'),
(9, '1', 'photo-9.jpeg'),
(10, '2', 'photo-10.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(8, ' Dropshipping Tips and Resources', 'dropshiping', '<p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">For dropshippers, the&nbsp;<a href=\"https://www.oberlo.com/blog\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">Oberlo blog</a>&nbsp;is one of the most credible and informative resources out there. Unlike other types of ecommerce businesses, dropshipping requires regularly updated insights on trending products, social media advertising, and conversion optimization.<br style=\"text-underline-position: under; -webkit-font-smoothing: antialiased;\"></p><p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">If youâ€™re interested in dropshipping, check out Oberloâ€™s posts on&nbsp;<a href=\"https://www.oberlo.com/what-to-sell\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">what to sell</a>&nbsp;and&nbsp;<a href=\"https://www.oberlo.com/marketing-your-store\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">marketing your store</a>&nbsp;for tips on getting ahead in this highly competitive arena.</p>\r\n', '18-04-2022', 'post-8.png', 2, 12, ' Dropshipping Tips and Resources', '', ''),
(9, 'Online Business & Ecommerce Blog', 'online-bussiness', '<p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">Launched 7 years ago,&nbsp;<a href=\"https://www.nosto.com/blog/\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">Nosto</a>&nbsp;is an AI-powered ecommerce intelligence engine that empowers sellers with their world-class personalization platform. Targeting large merchants focused on explosive growth,&nbsp;<a href=\"https://www.nosto.com/blog/\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">Nostoâ€™s ecommerce blog</a>&nbsp;specializes in customer segmentation, data insights, advanced trigger capabilities, and many other topics that use personalization to enhance both customer experience and sales.<br style=\"text-underline-position: under; -webkit-font-smoothing: antialiased;\"></p><p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">Their post â€œ<a href=\"https://www.nosto.com/blog/product-recommendations-examples/\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">6 Product Recommendation Examples in Ecommerce and Best Practices to Use Them Wisely</a>â€ offers valuable lessons to those looking for fast growth.</p>\r\n', '18-04-2022', 'post-9.png', 1, 12, 'Online Business & Ecommerce Blog', '', ''),
(10, 'Build your Brand', 'build-your-brand', '<p style=\"margin-bottom: 1.66667em; padding: 0px; line-height: inherit; font-size: 18px; color: rgb(33, 35, 38); font-family: ShopifySans, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif;\">A thoughtful, deliberate blogging strategy can help you nurture customer relationships, generate recurring inbound traffic, and give you a way to promote new products and services while building your brand.</p><p style=\"margin-bottom: 1.66667em; padding: 0px; line-height: inherit; font-size: 18px; color: rgb(33, 35, 38); font-family: ShopifySans, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Blogging also gives you room to get creative with different types of content, tell customer stories, educate readers, or target key words and phrases to help your website rank higher on Google.&nbsp;</p><p style=\"margin-bottom: 1.66667em; padding: 0px; line-height: inherit; font-size: 18px; color: rgb(33, 35, 38); font-family: ShopifySans, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Blogs can be extremely beneficial to your business, but many ecommerce sites struggle with blogging because it takes time, care, and effort to get it right. Simply publishing a few posts a month isnâ€™t enough to regularly bring traffic to your site.&nbsp;</p><p style=\"margin-bottom: 1.66667em; padding: 0px; line-height: inherit; font-size: 18px; color: rgb(33, 35, 38); font-family: ShopifySans, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif;\">Thatâ€™s why weâ€™re going to take a close look at eight ecommerce blog examples. Weâ€™ll go through the topics the blogs cover, how they relate to what the shop sells, and what each blog does well. These blogs all have unique strengths that will help support you as you develop your own, no matter what kinds of topics youâ€™d like to cover or what format youâ€™re going for.</p><div><br></div>\r\n', '18-04-2022', 'post-10.jpg', 1, 4, 'Build your Brand', '', ''),
(11, 'Ecommerce Marketing and Selling', 'ecommerce-marketing-and-selling', '<p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">The blog is full of practical guides to email marketing, conversion optimization, customer success practices, and social marketing. Their&nbsp;<a href=\"https://beeketing.com/blog/growth-stories/\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">Growth Stories</a>&nbsp;are about big brands with proven success â€” a great resource for inspiration and tips to help you grow your business.<br style=\"text-underline-position: under; -webkit-font-smoothing: antialiased;\"></p><p style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; color: rgb(51, 51, 51); font-size: 16px; letter-spacing: 0.1px; font-family: Graphik, sans-serif;\">Beeketing offers 3 comprehensive guides for ecommerce beginners:<br style=\"text-underline-position: under; -webkit-font-smoothing: antialiased;\"></p><ol role=\"list\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 32px; margin-bottom: 24px; padding-left: 32px; overflow: hidden; font-family: Graphik, sans-serif; font-size: 16px;\"><li style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; color: rgb(51, 51, 51); line-height: 1.75;\"><a href=\"https://beeketing.com/how-to-sell-online-beeketing-guide-free-download\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\"><em style=\"text-underline-position: under; -webkit-font-smoothing: antialiased;\">How to Sell Online</em></a></li><li style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; color: rgb(51, 51, 51); line-height: 1.75;\">â€œ<a href=\"https://beeketing.com/blog/advertising-on-facebook/\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">The Definitive Guide to Facebook Advertising</a>â€</li><li style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 0px; color: rgb(51, 51, 51); line-height: 1.75;\">â€œ<a href=\"https://beeketing.com/blog/instagram-advertising/\" target=\"_blank\" style=\"text-underline-position: under; -webkit-font-smoothing: antialiased; text-decoration: inherit; color: rgb(51, 51, 51); font-size: inherit; box-shadow: rgb(51, 51, 51) 0px 1px 0px 0px;\">The Beginnerâ€™s Guide to Advertising on Instagram</a>â€</li></ol>\r\n', '18-04-2022', 'post-11.jpg', 1, 18, ' Ecommerce Marketing and Selling', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(138, 'NEELUM MUNEER (VOL 2022) <br> Category LAWN 2PC', '2499', '1999', 1, 'product-featured-138.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: NEELUM MUNEER (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF679</p><p>Product Description</p><p>â—¾Front Full Embroidery Double Head</p><p>â—¾Sleeves Embroidery Double Head</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1999-Exclude Delivery</p>', '', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: NEELUM MUNEER (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF679</p><p>Product Description</p><p>â—¾Front Full Embroidery Double Head</p><p>â—¾Sleeves Embroidery Double Head</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1999-Exclude Delivery</p>', '', '', 15, 1, 1, 27),
(139, 'AGHA NOOR (VOL 2022)<br> Category LAWN 2PC', '2299', '1899', 5, 'product-featured-139.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: AGHA NOOR (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF752</p><p>Product Description</p><p>â—¾Front Full Embroidery Double Head</p><p>â—¾Sleeves Embroidery</p><p>â—¾Daman Embroidery Patch</p><p>â—¾Trouser Embroidery Patch</p><p>â—¾Same As Original</p><p><br></p><p>&nbsp;ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '', '', '', 14, 1, 1, 27),
(140, 'KROSS KULTURE (VOL 2022) <br> Category LAWN 2PC', '2399', '1899', 5, 'product-featured-140.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: KROSS KULTURE (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF606</p><p>Product Description</p><p>â—¾Front Full Embroidery Sequence Work</p><p>â—¾Sleeves Embroidery&nbsp;</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>&nbsp;ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '', '', '', 24, 1, 1, 27),
(142, 'KAYSARIYA (VOL 2022) <br>Dress LAWN 2PC', '2500', '2000', 10, 'product-featured-142.jpg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: KAYSARIYA (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF457</p><p>Product Description</p><p>â—¾Front Full Embroided Sequence Work</p><p>â—¾Neck Embroided Patch</p><p>â—¾Sleeves Embroided</p><p>â—¾Daman Embroided Patch</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 2000 Exclude Delivery</p>', '', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: KAYSARIYA (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF457</p><p>Product Description</p><p>â—¾Front Full Embroided Sequence Work</p><p>â—¾Neck Embroided Patch</p><p>â—¾Sleeves Embroided</p><p>â—¾Daman Embroided Patch</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 2050 Exclude Delivery</p>', '', '', 10, 1, 1, 27),
(143, 'FIRDOUS (VOL 2022) <br> Category LAWN 3PC', '2399', '1899', 4, 'product-featured-143.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: FIRDOUS (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 19816</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery Sequence Work</p><p>â—¾Printed Trouser</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: FIRDOUS (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 19816</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery Sequence Work</p><p>â—¾Printed Trouser</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '', 8, 1, 1, 27),
(144, 'GUL AHMED (VOL 2022) <br> Category LAWN 3PC', '2499', '1850', 5, 'product-featured-144.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: GUL AHMED (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1600</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1850-Exclude Delivery</p>', '', '', '', '', 13, 1, 1, 27),
(145, 'LIME LIGHT (VOL 2022)  <br>Category LAWN 2PC', '2299', '1899', 5, 'product-featured-145.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: LIME LIGHT (VOL 2022)</p><p>Category LAWN 2PC\r\n<br class=\"Apple-interchange-newline\"></p><p>Dress Code: 1711</p><p>Product Description</p><p>â—¾Front Full Embroidery Double Head</p><p>â—¾Sleeves Embroidery</p><p>â—¾Daman Embroidery Patch</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '<p><br></p>', '', '', 13, 1, 1, 27),
(146, 'MUSHQ (VOL 2022) <br> Category LAWN 3PC', '4000', '3499', 5, 'product-featured-146.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: MUSHQ (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: DF707</p><p>Product Description</p><p>â—¾Front Full Embroidery Sequence Work</p><p>â—¾Neck Embroidery Patch Handmade Work</p><p>â—¾Sleeves Embroidery</p><p>â—¾Back Embroidery</p><p>â—¾Daman Embroidery PatchÂ </p><p>â—¾Dyed Trouser</p><p>â—¾With BAMBER Embroidery CHIFFON DupataÂ </p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 3499-Exclude Delivery</p>', '', '', '', '', 8, 0, 1, 27),
(147, 'Replica Lawn 2022 <br> Lawn 3 PC ', '1799', '2099', 5, 'product-featured-147.jpeg', '<p>Replica Lawn 2022 </p><p>Lawn 3 PCÂ </p><p>Color Gurrented</p><p>Lawn Embroidery 3 Pc WithÂ </p><p>Printed Shaffon Dupatta</p><p>Wholesale Price 1799 - Exclude Delivery</p>', '', '', '', '', 8, 1, 1, 27),
(148, 'Replica Lawn 2022 <br> Lawn 3 PC ', '2299', '1799', 5, 'product-featured-148.jpeg', '<p>Replica Lawn 2022</p><p>Lawn 3 PCÂ </p><p>Color Gurrented</p><p>Lawn Embroidery 3 Pc WithÂ </p><p>Printed Shaffon Dupatta</p><p>Wholesale Price 1799 - Exclude Delivery</p>', '', '<p>Replica Lawn 2022</p><p>Lawn 3 PCÂ </p><p>Color Gurrented</p><p>Lawn Embroidery 3 Pc WithÂ </p><p>Printed Shaffon Dupatta</p><p>Wholesale Price 1799 - Exclude Delivery</p>', '', '', 7, 0, 1, 24),
(149, 'RANG JA (VOL 2022) <br> CAMBRIC COTTON 2PC', '1899', '1399', 5, 'product-featured-149.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: RANG JA (VOL 2022)</p><p>Category CAMBRIC COTTON 2PC</p><p>Dress Code: MIX</p><p>Product Description</p><p><br></p><p>Whole sale price 1399 onlyâ—¾Cambric Cotton Fabric</p><p>â—¾All Over Printed Collection</p><p>â—¾2.5 Metter Shirt</p><p>â—¾2.5 Metter Trouser</p>', '', '', '', '', 11, 1, 1, 24),
(150, 'RANG JA (VOL 2022) <br> CAMBRIC COTTON 2PC', '1899', '1399', 5, 'product-featured-150.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: RANG JA (VOL 2022)</p><p>Category CAMBRIC COTTON 2PC</p><p>Dress Code: MIX</p><p>Product Description</p><p><br></p><p>Whole sale price 1399 onlyâ—¾Cambric Cotton Fabric</p><p>â—¾All Over Printed Collection</p><p>â—¾2.5 Metter Shirt</p><p>â—¾2.5 Metter Trouser</p>', '', '', '', '', 12, 0, 1, 24),
(151, 'RANG JA (VOL 2022) <br> CAMBRIC COTTON 2PC', '1899', '1399', 5, 'product-featured-151.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: RANG JA (VOL 2022)</p><p>Category CAMBRIC COTTON 2PC</p><p>Dress Code: MIX</p><p>Product Description</p><p><br></p><p>Whole sale price 1399 onlyâ—¾Cambric Cotton Fabric</p><p>â—¾All Over Printed Collection</p><p>â—¾2.5 Metter Shirt</p><p>â—¾2.5 Metter Trouser</p>', '', '', '', '', 13, 0, 1, 27),
(152, 'CHINYERE (VOL 2022) <br> Category LAWN 2PC', '2899', '2099', 5, 'product-featured-152.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: CHINYERE (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: DF742</p><p>Product Description</p><p>â—¾Front Full Embroidery Sequence Work</p><p>â—¾Neck Embroidery Patch</p><p>â—¾Sleeves Embroidery</p><p>â—¾Daman Embroidery Patch</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 2099-Exclude Delivery</p>', '', '', '', '', 9, 0, 1, 27),
(153, 'CHARIZMA (VOL 2022)  <br> Category LAWN 3PC', '2599', '2050', 5, 'product-featured-153.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: CHARIZMA (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: DF744</p><p>Product Description</p><p>â—¾Daman Embroidery+Seq Work Patch</p><p>â—¾Back Embroidery+Seq Work Patch</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 2050-Exclude Delivery</p>', '', '', '', '', 8, 0, 1, 27),
(154, ' NAKOOSH (VOL 2022)  <br>Category LAWN 2PC', '2599', '2099', 5, 'product-featured-154.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: NAKOOSH (VOL 2022)</p><p>Category LAWN 2PC</p><p>Dress Code: 1690</p><p>Product Description</p><p>â—¾Front Full Embroidery</p><p>â—¾Neck Embroidery Patch</p><p>â—¾Sleeevs Embroidery</p><p>â—¾Daman Embroidery Patch</p><p>â—¾Dyed Trouser</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 2099-Exclude Delivery</p>', '', '', '', '', 22, 1, 1, 27),
(155, 'EDENROBE (VOL 2022)  <br> Category LAWN 3PC', '2399', '1999', 5, 'product-featured-155.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: EDENROBE (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1934</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1999-Exclude Delivery</p>', '', '', '', '', 10, 1, 1, 27),
(156, 'FIRDOUS  (VOL 2022) <br>  Category LAWN 3PC', '2499', '1799', 5, 'product-featured-156.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: FIRDOUSÂ  (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1932</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1799-Exclude Delivery</p>', '', '', '', '', 9, 1, 1, 27),
(157, 'AFROZEH  (VOL 2022) <br> Category LAWN 2PC', '2399', '1899', 5, 'product-featured-157.jpeg', '<div>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</div><div>Brand Name: AFROZEHÂ  (VOL 2022)</div><div>Category LAWN 2PC</div><div>Dress Code: DF725</div><div>Product Description</div><div>â—¾Front Full Embroidery Sequence Work</div><div>â—¾Sleeves Embroidery</div><div>â—¾Daman Embroidery Patch</div><div>â—¾Trouser Embroidery</div><div>â—¾Same As Original</div><div><br></div><div>Â ðŸ‘‰ Wholesale Price 1899 Exclude Delivery</div>', '', '', '', '', 10, 0, 1, 27),
(158, 'AL-KARAM (VOL 2022) <br> Category LAWN 3PC', '2099', '1799', 5, 'product-featured-158.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: AL-KARAM (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1688</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed LAWN Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1799-Exclude Delivery</p>', '', '', '', '', 8, 0, 1, 27),
(159, 'AL-KARAM (VOL 2022)  <br>Category LAWN 3PC', '2099', '1799', 5, 'product-featured-159.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: AL-KARAM (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1688</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed LAWN Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1799-Exclude Delivery</p>', '', '', '', '', 8, 0, 1, 27),
(160, 'LIME LIGHT (VOL 2022) <br> Category LAWN 3PC', '2399', '1899', 5, 'product-featured-160.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: LIME LIGHT (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1665</p><p>Product Description</p><p>â—¾Daman Heavy Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1899-Exclude Delivery</p>', '', '', '', '', 8, 0, 1, 27),
(161, 'ZAHA  (VOL 2022) <br> Category LAWN 3PC', '2299', '1750', 5, 'product-featured-161.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: ZAHAÂ  (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: ZH132</p><p>Product Description</p><p>â—¾Front Full Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1750-Exclude Delivery</p>', '', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: ZAHAÂ  (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: ZH132</p><p>Product Description</p><p>â—¾Front Full Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1750-Exclude Delivery</p>', '', '', 8, 0, 1, 27),
(162, 'KHAADI (VOL 2022)  <br> Category LAWN 3PC', '2199', '1799', 5, 'product-featured-162.jpeg', '<p>ðŸŒ¼ SUMMER COLLECTION ðŸŒ¼</p><p>Brand Name: KHAADI (VOL 2022)</p><p>Category LAWN 3PC</p><p>Dress Code: 1547</p><p>Product Description</p><p>â—¾Neck Heavy Embroidery</p><p>â—¾With Printed CHIFFON Dupata</p><p>â—¾Same As Original</p><p><br></p><p>Â ðŸ‘‰ Wholesale Price 1799-Exclude Delivery</p>', '', '', '', '', 7, 1, 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(7, 1, 138),
(8, 2, 138);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(224, '224.jpeg', 138),
(225, '225.jpeg', 138),
(226, '226.jpeg', 139),
(227, '227.jpeg', 140),
(230, '230.jpeg', 142),
(231, '231.jpeg', 143),
(232, '232.jpeg', 144),
(233, '233.jpeg', 145),
(234, '234.jpeg', 146),
(235, '235.jpeg', 146),
(236, '236.jpeg', 146),
(237, '237.jpeg', 147),
(238, '238.jpeg', 148),
(239, '239.jpeg', 149),
(240, '240.jpeg', 150),
(241, '241.jpeg', 151),
(242, '242.jpeg', 152),
(243, '243.jpeg', 153),
(244, '244.jpeg', 154),
(245, '245.jpeg', 155),
(246, '246.jpeg', 156),
(247, '247.jpeg', 157),
(248, '248.jpeg', 158),
(249, '249.jpeg', 159),
(250, '250.jpeg', 160),
(251, '251.jpeg', 161),
(252, '252.jpeg', 162);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(12, 29, 142),
(14, 29, 143),
(16, 29, 138),
(17, 29, 140),
(18, 29, 139),
(20, 29, 144),
(22, 29, 145),
(25, 29, 146),
(27, 29, 147),
(29, 29, 148),
(31, 29, 149),
(34, 29, 151),
(35, 29, 150),
(37, 29, 153),
(40, 29, 154),
(42, 29, 155),
(44, 29, 156),
(46, 29, 157),
(50, 29, 159),
(51, 29, 158),
(53, 29, 160),
(55, 29, 161),
(58, 29, 162);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `banner_blog` text NOT NULL,
  `cta_title` text NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` text NOT NULL,
  `cta_read_more_url` text NOT NULL,
  `cta_photo` text NOT NULL,
  `featured_product_title` text NOT NULL,
  `featured_product_subtitle` text NOT NULL,
  `latest_product_title` text NOT NULL,
  `latest_product_subtitle` text NOT NULL,
  `popular_product_title` text NOT NULL,
  `popular_product_subtitle` text NOT NULL,
  `testimonial_title` text NOT NULL,
  `testimonial_subtitle` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `blog_title` text NOT NULL,
  `blog_subtitle` text NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` text NOT NULL,
  `stripe_public_key` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`, `color`) VALUES
(1, 'logo.jpg', 'favicon.png', '<p><span style=\"\" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><b>Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.</b></span><br></p>\r\n', 'Copyright Â© 2022. All Rights Reserved.', 'Main Hussana Aghi Market Multan', 'official.glamscloset.com', '+92 316 6462662', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84040262736!2d-74.25819605476612!3d40.70583158628177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1485712851643\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'glamscloset.official@gmail.com', 'Visitor Email Message from Ecommerce Website', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 20, 20, 20, 'Glams Closet', 'ecommerce, cart, checkout, payment, paypal, shop, online shopping, online payment, payment gateway, products, shirt, jeans, t-shirt', 'Glams Closet as a name indicate our closet is full of vibrant color, luxurious and intriguingly innovative clothes that brings chromaticity to your life.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Store', 'Welcome to our store. Please ask anything from us.We are here to help.\r\nWe Sell Sitched or Unstitched Clothes for ladies & Gents in very Reasonable Prices..\r\nBest Quality Prices\r\nFree Delivery\r\nEasily Exchange\r\nNo Extra charges\r\nProduct Delivery in 3-4 Days\r\nCash On Delivery Available \r\nThank you. We hope your experience was awesome ðŸ¥°', 'Read More', 'https://www.facebook.com/glamsclosetoffical', 'cta.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Glams Closet Collections has been updated in Every Two Months.We ae available in Whatsapp For more Information Text us.', 'admin@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: Saad Ali\r\nAccount Number: 1222320234444\r\nBranch Name: HBL Limited\r\nCountry: Pakistan', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'GA_TRACKING_ID\');\r\n</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '', 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, '002D62');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(2, 167, '260');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, 'Un-Stiched');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(5, 'slider-5.jpg', '', '', '', '', 'Left'),
(6, 'slider-6.jpg', '', '', '', '', 'Left'),
(7, 'slider-7.jpg', '', '', '', '', 'Left'),
(8, 'slider-8.jpg', '', '', '', '', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://web.facebook.com/glamsclosetoffical', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '#', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(4, 'jbbr.1990@gmail.com', '2017-08-10', '2017-08-10 07:44:23', '', 1),
(5, 'abc@gmail.com', '2018-02-04', '2018-02-04 07:36:40', 'c1acf1f202e2df2b2afaa53e39f53677', 0),
(6, 'asdf@das.asd', '2018-02-05', '2018-02-05 07:07:08', 'ca71f3d85c8c51e2605b726791479de0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(4, 'Shop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(13, 'Saad Ali', 'admin@gmail.com', '', '983d74e0ff890570e29bfd3677538748', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
