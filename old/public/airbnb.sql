-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2021 at 04:00 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letswech_airbnb_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `currency_code`, `account`, `payment_method_id`, `selected`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', 'info@sangvish.com', 1, 'No', '2021-08-11 15:02:12', '2021-08-11 15:02:12'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', 'athi@gmail.com', 4, 'No', '2021-08-11 15:03:28', '2021-08-11 15:03:28'),
(3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', 'demo@gmail.com', 1, 'No', '2021-08-15 13:21:03', '2021-08-15 13:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `profile_image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$8BSDvS1kCxcXxzqW.oXcXOKGSNqEiwM/wA6qLOpZSoPTo7t1Sq6Xq', NULL, 'Active', NULL, '2021-06-29 00:21:02', '2021-06-29 00:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `title`, `description`, `symbol`, `type_id`, `status`) VALUES
(1, 'Essentials', 'Towels, bed sheets, soap and toilet paper', 'essentials', 1, 'Active'),
(2, 'TV', '', 'tv', 1, 'Active'),
(3, 'Cable TV', '', 'desktop', 1, 'Active'),
(4, 'Air Conditioning ', '', 'air-conditioning', 1, 'Active'),
(5, 'Heating', 'Heating', 'heating', 1, 'Active'),
(6, 'Kitchen', 'Kitchen', 'meal', 1, 'Active'),
(7, 'Internet', 'Internet', 'internet', 1, 'Active'),
(8, 'Gym', 'Gym', 'gym', 1, 'Active'),
(9, 'Elevator in Building', '', 'elevator', 1, 'Active'),
(10, 'Indoor Fireplace', '', 'fireplace', 1, 'Active'),
(11, 'Buzzer/Wireless Intercom', '', 'intercom', 1, 'Active'),
(12, 'Doorman', '', 'doorman', 1, 'Active'),
(13, 'Shampoo', '', 'smoking', 1, 'Active'),
(14, 'Wireless Internet', 'Wireless Internet', 'wifi', 1, 'Active'),
(15, 'Hot Tub', '', 'hot-tub', 1, 'Active'),
(16, 'Washer', 'Washer', 'washer', 1, 'Active'),
(17, 'Pool', 'Pool', 'pool', 1, 'Active'),
(18, 'Dryer', 'Dryer', 'dryer', 1, 'Active'),
(19, 'Breakfast', 'Breakfast', 'cup', 1, 'Active'),
(20, 'Free Parking on Premises', '', 'parking', 1, 'Active'),
(21, 'Family/Kid Friendly', 'Family/Kid Friendly', 'family', 1, 'Active'),
(22, 'Smoking Allowed', '', 'smoking', 1, 'Active'),
(23, 'Suitable for Events', 'Suitable for Events', 'balloons', 1, 'Active'),
(24, 'Pets Allowed', '', 'paw', 1, 'Active'),
(25, 'Pets live on this property', '', 'ok', 1, 'Active'),
(26, 'Wheelchair Accessible', 'Wheelchair Accessible', 'accessible', 1, 'Active'),
(27, 'Smoke Detector', 'Smoke Detector', 'ok', 2, 'Active'),
(28, 'Carbon Monoxide Detector', 'Carbon Monoxide Detector', 'ok', 2, 'Active'),
(29, 'First Aid Kit', '', 'ok', 2, 'Active'),
(30, 'Safety Card', 'Safety Card', 'ok', 2, 'Active'),
(31, 'Fire Extinguisher', 'Essentials', 'ok', 2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_type`
--

CREATE TABLE `amenity_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_type`
--

INSERT INTO `amenity_type` (`id`, `name`, `description`) VALUES
(1, 'Common Amenities', ''),
(2, 'Safety Amenities', '');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2021-08-05-074511.sql', '2021-08-05 11:45:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `heading`, `subheading`, `image`, `status`) VALUES
(1, 'World leading tour and travels Booking', 'Website packages of worldwide.', 'banner_1628061086.jpg', 'Active'),
(3, 'Get your Rental Home', 'Experiences Local things to do, wherever you are.', 'banner_1628956370.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_type`
--

INSERT INTO `bed_type` (`id`, `name`) VALUES
(1, 'king'),
(2, 'Queen'),
(3, 'Double'),
(4, 'Single'),
(5, 'Sofa bed'),
(6, 'Sofa'),
(7, 'Sofa bed'),
(8, 'Bunk bed'),
(9, 'Air mattress'),
(10, 'Floor mattress'),
(11, 'Toddler bed'),
(12, 'Crib'),
(13, 'Water bed'),
(14, 'Hammock');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Accepted','Pending','Cancelled','Declined','Expired','Processing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `guest` int(11) NOT NULL DEFAULT '0',
  `total_night` int(11) NOT NULL DEFAULT '0',
  `per_night` double NOT NULL DEFAULT '0',
  `custom_price_dates` text COLLATE utf8mb4_unicode_ci,
  `base_price` double NOT NULL DEFAULT '0',
  `cleaning_charge` double NOT NULL DEFAULT '0',
  `guest_charge` double NOT NULL DEFAULT '0',
  `service_charge` double NOT NULL DEFAULT '0',
  `security_money` double NOT NULL DEFAULT '0',
  `iva_tax` double NOT NULL DEFAULT '0',
  `accomodation_tax` double NOT NULL DEFAULT '0',
  `host_fee` double NOT NULL DEFAULT '0',
  `total` double NOT NULL DEFAULT '0',
  `booking_type` enum('request','instant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_with_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancellation` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT '0',
  `accepted_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` enum('Host','Guest') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `property_id`, `code`, `host_id`, `user_id`, `start_date`, `end_date`, `status`, `guest`, `total_night`, `per_night`, `custom_price_dates`, `base_price`, `cleaning_charge`, `guest_charge`, `service_charge`, `security_money`, `iva_tax`, `accomodation_tax`, `host_fee`, `total`, `booking_type`, `currency_code`, `date_with_price`, `cancellation`, `transaction_id`, `payment_method_id`, `accepted_at`, `expired_at`, `declined_at`, `cancelled_at`, `cancelled_by`, `created_at`, `updated_at`) VALUES
(1, 5, 'Txi29W', 1, 3, '1970-01-01', '1970-01-01', 'Pending', 1, 1, 15, NULL, 16, 0, 0, 1, 0, 0, 0, 0, 16, 'request', 'USD', '[{\"price\":15,\"date\":\"1970-01-01\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2021-07-21 12:23:46', '2021-07-21 12:23:46'),
(2, 6, 'QA2yT3', 2, 1, '2021-08-05', '2021-08-06', 'Pending', 1, 1, 50, NULL, 53, 0, 0, 3, 0, 0, 0, 0, 53, 'request', 'USD', '[{\"price\":50,\"date\":\"2021-08-05\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-06 08:03:39', '2021-08-06 08:03:39'),
(3, 4, 'Y7gdXt', 1, 2, '2021-08-09', '2021-08-10', 'Accepted', 1, 1, 20, NULL, 21, 0, 0, 1, 0, 0, 0, 0, 21, 'instant', 'USD', '[{\"price\":20,\"date\":\"2021-08-09\"}]', 'Flexible', 'ch_3JMRUHDpvvQP5tMR4qf6cylg', 2, NULL, NULL, NULL, NULL, NULL, '2021-08-09 13:57:24', '2021-08-09 13:57:24'),
(4, 4, 'fTGQi2', 1, 2, '2021-08-11', '2021-08-11', 'Accepted', 1, 1, 20, NULL, 21, 0, 0, 1, 0, 0, 0, 0, 21, 'instant', 'USD', '[{\"price\":20,\"date\":\"2021-08-11\"}]', 'Flexible', 'ch_3JMRW0DpvvQP5tMR3g5cBVqB', 2, NULL, NULL, NULL, NULL, NULL, '2021-08-09 13:59:11', '2021-08-09 13:59:11'),
(5, 4, 'uvj2Mi', 1, 2, '1970-01-01', '1970-01-01', 'Pending', 1, 1, 20, NULL, 21, 0, 0, 1, 0, 0, 0, 0, 21, 'request', 'USD', '[{\"price\":20,\"date\":\"1970-01-01\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-13 16:38:04', '2021-08-13 16:38:04'),
(6, 6, 'HWG35c', 2, 13, '2021-08-24', '2021-08-25', 'Pending', 1, 1, 50, NULL, 53, 0, 0, 3, 0, 0, 0, 0, 53, 'request', 'USD', '[{\"price\":50,\"date\":\"2021-08-24\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-24 10:22:33', '2021-08-24 10:22:33'),
(7, 59, 'bwPM8m', 14, 15, '2021-08-24', '2021-08-25', 'Pending', 1, 1, 85, NULL, 101, 5, 0, 4, 7, 0, 0, 0, 101, 'request', 'USD', '[{\"price\":85,\"date\":\"2021-08-24\"}]', 'Flexible', '', 0, NULL, NULL, NULL, NULL, NULL, '2021-08-24 16:46:04', '2021-08-24 16:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `field`, `value`) VALUES
(1, 1, 'country', ''),
(2, 2, 'country', ''),
(3, 3, 'country', 'IN'),
(4, 4, 'country', 'IN'),
(5, 5, 'country', ''),
(6, 6, 'country', ''),
(7, 7, 'country', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `useremail`, `message`) VALUES
(1, 'aaa', 'athiivps09@gmail.com', 'sds'),
(2, 'admin', 'athiivps09@gmail.com', 'hfgh'),
(3, 'admin', 'athiivps09@gmail.com', 'gdfg'),
(4, 'admin', 'athiivps09@gmail.com', 'dffd'),
(5, 'athi', 'athiivps09@gmail.com', 'gdfg'),
(6, 'athi', 'athiivps09@gmail.com', 'msg'),
(7, 'athi', 'athiivps09@gmail.com', 'test msg'),
(8, 'gaa', 'mshop@test.com', 'fddf');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `short_name`, `name`, `iso3`, `number_code`, `phone_code`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93'),
(2, 'AL', 'Albania', 'ALB', '8', '355'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1684'),
(5, 'AD', 'Andorra', 'AND', '20', '376'),
(6, 'AO', 'Angola', 'AGO', '24', '244'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1264'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268'),
(10, 'AR', 'Argentina', 'ARG', '32', '54'),
(11, 'AM', 'Armenia', 'ARM', '51', '374'),
(12, 'AW', 'Aruba', 'ABW', '533', '297'),
(13, 'AU', 'Australia', 'AUS', '36', '61'),
(14, 'AT', 'Austria', 'AUT', '40', '43'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1242'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880'),
(19, 'BB', 'Barbados', 'BRB', '52', '1246'),
(20, 'BY', 'Belarus', 'BLR', '112', '375'),
(21, 'BE', 'Belgium', 'BEL', '56', '32'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501'),
(23, 'BJ', 'Benin', 'BEN', '204', '229'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1441'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387'),
(28, 'BW', 'Botswana', 'BWA', '72', '267'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0'),
(30, 'BR', 'Brazil', 'BRA', '76', '55'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226'),
(35, 'BI', 'Burundi', 'BDI', '108', '257'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237'),
(38, 'CA', 'Canada', 'CAN', '124', '1'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1345'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236'),
(42, 'TD', 'Chad', 'TCD', '148', '235'),
(43, 'CL', 'Chile', 'CHL', '152', '56'),
(44, 'CN', 'China', 'CHN', '156', '86'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672'),
(47, 'CO', 'Colombia', 'COL', '170', '57'),
(48, 'KM', 'Comoros', 'COM', '174', '269'),
(49, 'CG', 'Congo', 'COG', '178', '242'),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225'),
(54, 'HR', 'Croatia', 'HRV', '191', '385'),
(55, 'CU', 'Cuba', 'CUB', '192', '53'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420'),
(58, 'DK', 'Denmark', 'DNK', '208', '45'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253'),
(60, 'DM', 'Dominica', 'DMA', '212', '1767'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1809'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593'),
(63, 'EG', 'Egypt', 'EGY', '818', '20'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291'),
(67, 'EE', 'Estonia', 'EST', '233', '372'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679'),
(72, 'FI', 'Finland', 'FIN', '246', '358'),
(73, 'FR', 'France', 'FRA', '250', '33'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0'),
(77, 'GA', 'Gabon', 'GAB', '266', '241'),
(78, 'GM', 'Gambia', 'GMB', '270', '220'),
(79, 'GE', 'Georgia', 'GEO', '268', '995'),
(80, 'DE', 'Germany', 'DEU', '276', '49'),
(81, 'GH', 'Ghana', 'GHA', '288', '233'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350'),
(83, 'GR', 'Greece', 'GRC', '300', '30'),
(84, 'GL', 'Greenland', 'GRL', '304', '299'),
(85, 'GD', 'Grenada', 'GRD', '308', '1473'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590'),
(87, 'GU', 'Guam', 'GUM', '316', '1671'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502'),
(89, 'GN', 'Guinea', 'GIN', '324', '224'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245'),
(91, 'GY', 'Guyana', 'GUY', '328', '592'),
(92, 'HT', 'Haiti', 'HTI', '332', '509'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39'),
(95, 'HN', 'Honduras', 'HND', '340', '504'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852'),
(97, 'HU', 'Hungary', 'HUN', '348', '36'),
(98, 'IS', 'Iceland', 'ISL', '352', '354'),
(99, 'IN', 'India', 'IND', '356', '91'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964'),
(103, 'IE', 'Ireland', 'IRL', '372', '353'),
(104, 'IL', 'Israel', 'ISR', '376', '972'),
(105, 'IT', 'Italy', 'ITA', '380', '39'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1876'),
(107, 'JP', 'Japan', 'JPN', '392', '81'),
(108, 'JO', 'Jordan', 'JOR', '400', '962'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7'),
(110, 'KE', 'Kenya', 'KEN', '404', '254'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856'),
(117, 'LV', 'Latvia', 'LVA', '428', '371'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266'),
(120, 'LR', 'Liberia', 'LBR', '430', '231'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352'),
(125, 'MO', 'Macao', 'MAC', '446', '853'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261'),
(128, 'MW', 'Malawi', 'MWI', '454', '265'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60'),
(130, 'MV', 'Maldives', 'MDV', '462', '960'),
(131, 'ML', 'Mali', 'MLI', '466', '223'),
(132, 'MT', 'Malta', 'MLT', '470', '356'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230'),
(137, 'YT', 'Mayotte', NULL, NULL, '269'),
(138, 'MX', 'Mexico', 'MEX', '484', '52'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373'),
(141, 'MC', 'Monaco', 'MCO', '492', '377'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1664'),
(144, 'MA', 'Morocco', 'MAR', '504', '212'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95'),
(147, 'NA', 'Namibia', 'NAM', '516', '264'),
(148, 'NR', 'Nauru', 'NRU', '520', '674'),
(149, 'NP', 'Nepal', 'NPL', '524', '977'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505'),
(155, 'NE', 'Niger', 'NER', '562', '227'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234'),
(157, 'NU', 'Niue', 'NIU', '570', '683'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670'),
(160, 'NO', 'Norway', 'NOR', '578', '47'),
(161, 'OM', 'Oman', 'OMN', '512', '968'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92'),
(163, 'PW', 'Palau', 'PLW', '585', '680'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970'),
(165, 'PA', 'Panama', 'PAN', '591', '507'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595'),
(168, 'PE', 'Peru', 'PER', '604', '51'),
(169, 'PH', 'Philippines', 'PHL', '608', '63'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0'),
(171, 'PL', 'Poland', 'POL', '616', '48'),
(172, 'PT', 'Portugal', 'PRT', '620', '351'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1787'),
(174, 'QA', 'Qatar', 'QAT', '634', '974'),
(175, 'RE', 'Reunion', 'REU', '638', '262'),
(176, 'RO', 'Romania', 'ROM', '642', '40'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1758'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784'),
(184, 'WS', 'Samoa', 'WSM', '882', '684'),
(185, 'SM', 'San Marino', 'SMR', '674', '378'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966'),
(188, 'SN', 'Senegal', 'SEN', '686', '221'),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, '381'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232'),
(192, 'SG', 'Singapore', 'SGP', '702', '65'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677'),
(196, 'SO', 'Somalia', 'SOM', '706', '252'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0'),
(199, 'ES', 'Spain', 'ESP', '724', '34'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94'),
(201, 'SD', 'Sudan', 'SDN', '736', '249'),
(202, 'SR', 'Suriname', 'SUR', '740', '597'),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47'),
(204, 'SZ', 'Swaziland', 'SWZ', '748', '268'),
(205, 'SE', 'Sweden', 'SWE', '752', '46'),
(206, 'CH', 'Switzerland', 'CHE', '756', '41'),
(207, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963'),
(208, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886'),
(209, 'TJ', 'Tajikistan', 'TJK', '762', '992'),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255'),
(211, 'TH', 'Thailand', 'THA', '764', '66'),
(212, 'TL', 'Timor-Leste', NULL, NULL, '670'),
(213, 'TG', 'Togo', 'TGO', '768', '228'),
(214, 'TK', 'Tokelau', 'TKL', '772', '690'),
(215, 'TO', 'Tonga', 'TON', '776', '676'),
(216, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868'),
(217, 'TN', 'Tunisia', 'TUN', '788', '216'),
(218, 'TR', 'Turkey', 'TUR', '792', '90'),
(219, 'TM', 'Turkmenistan', 'TKM', '795', '7370'),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649'),
(221, 'TV', 'Tuvalu', 'TUV', '798', '688'),
(222, 'UG', 'Uganda', 'UGA', '800', '256'),
(223, 'UA', 'Ukraine', 'UKR', '804', '380'),
(224, 'AE', 'United Arab Emirates', 'ARE', '784', '971'),
(225, 'GB', 'United Kingdom', 'GBR', '826', '44'),
(226, 'US', 'United States', 'USA', '840', '1'),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1'),
(228, 'UY', 'Uruguay', 'URY', '858', '598'),
(229, 'UZ', 'Uzbekistan', 'UZB', '860', '998'),
(230, 'VU', 'Vanuatu', 'VUT', '548', '678'),
(231, 'VE', 'Venezuela', 'VEN', '862', '58'),
(232, 'VN', 'Viet Nam', 'VNM', '704', '84'),
(233, 'VG', 'Virgin Islands, British', 'VGB', '92', '1284'),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340'),
(235, 'WF', 'Wallis and Futuna', 'WLF', '876', '681'),
(236, 'EH', 'Western Sahara', 'ESH', '732', '212'),
(237, 'YE', 'Yemen', 'YEM', '887', '967'),
(238, 'ZM', 'Zambia', 'ZMB', '894', '260'),
(239, 'ZW', 'Zimbabwe', 'ZWE', '716', '263');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `rate`, `status`, `default`) VALUES
(1, 'US Dollar', 'USD', '&#36;', 1.00, 'Active', '1'),
(2, 'Pound Sterling', 'GBP', '&pound;', 0.65, 'Active', '0'),
(3, 'Europe', 'EUR', '&euro;', 0.88, 'Active', '0'),
(4, 'Australian Dollar', 'AUD', '&#36;', 1.41, 'Active', '0'),
(5, 'Singapore', 'SGD', '&#36;', 1.41, 'Active', '0'),
(6, 'Swedish Krona', 'SEK', 'kr', 8.24, 'Active', '0'),
(7, 'Danish Krone', 'DKK', 'kr', 6.58, 'Active', '0'),
(8, 'Mexican Peso', 'MXN', '$', 16.83, 'Active', '0'),
(9, 'Brazilian Real', 'BRL', 'R$', 3.88, 'Active', '0'),
(10, 'Malaysian Ringgit', 'MYR', 'RM', 4.31, 'Active', '0'),
(11, 'Philippine Peso', 'PHP', 'P', 46.73, 'Active', '0'),
(12, 'Swiss Franc', 'CHF', '&euro;', 0.97, 'Active', '0'),
(13, 'India', 'INR', '&#x20B9;', 66.24, 'Active', '0'),
(14, 'Argentine Peso', 'ARS', '&#36;', 9.35, 'Active', '0'),
(15, 'Canadian Dollar', 'CAD', '&#36;', 1.33, 'Active', '0'),
(16, 'Chinese Yuan', 'CNY', '&#165;', 6.37, 'Active', '0'),
(17, 'Czech Republic Koruna', 'CZK', 'K&#269;', 23.91, 'Active', '0'),
(18, 'Hong Kong Dollar', 'HKD', '&#36;', 7.75, 'Active', '0'),
(19, 'Hungarian Forint', 'HUF', 'Ft', 276.41, 'Active', '0'),
(20, 'Indonesian Rupiah', 'IDR', 'Rp', 14249.50, 'Active', '0'),
(21, 'Israeli New Sheqel', 'ILS', '&#8362;', 3.86, 'Active', '0'),
(22, 'Japanese Yen', 'JPY', '&#165;', 120.59, 'Active', '0'),
(23, 'South Korean Won', 'KRW', '&#8361;', 1182.69, 'Active', '0'),
(24, 'Norwegian Krone', 'NOK', 'kr', 8.15, 'Active', '0'),
(25, 'New Zealand Dollar', 'NZD', '&#36;', 1.58, 'Active', '0'),
(26, 'Polish Zloty', 'PLN', 'z&#322;', 3.71, 'Active', '0'),
(27, 'Russian Ruble', 'RUB', 'p', 67.75, 'Active', '0'),
(28, 'Thai Baht', 'THB', '&#3647;', 36.03, 'Active', '0'),
(29, 'Turkish Lira', 'TRY', '&#8378;', 3.05, 'Active', '0'),
(30, 'New Taiwan Dollar', 'TWD', '&#36;', 32.47, 'Active', '0'),
(31, 'Vietnamese Dong', 'VND', '&#8363;', 22471.00, 'Active', '0'),
(32, 'South African Rand', 'ZAR', 'R', 13.55, 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('email','sms') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `temp_id`, `subject`, `body`, `link_text`, `lang`, `type`, `lang_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Your Payout information has been updated in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            We hope this message finds you well. Your {site_name} payout account information was recently changed on {date_time}. To help keep your account secure, we wanted to reach out to confirm that you made this change. Feel free to disregard this message if you updated your payout account information on {date_time}.\r\n                            <br><br>\r\n                            If you did not make this change to your account, please contact us.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(2, 2, 'Your Payout information has been updated in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your {site_name} payout information was updated on {date_time}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(3, 3, 'Your Payout information has been deleted in {site_name}', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your {site_name} payout information was deleted on {date_time}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(4, 4, 'Booking inquiry for {property_name}', 'Hi {owner_first_name},\r\n                            <br><br>\r\n            				<h1>Respond to {user_first_name}’s Inquiry</h1>\r\n            				<br>\r\n            				{total_night} {night/nights} at {property_name}\r\n            				<br>\r\n            				{messages_message}\r\n            				<br>\r\n            				Property Name:  {property_name}\r\n            				<br>\r\n            				Number of Guest: {total_guest}\r\n            				<br>\r\n            				Number of Night: {total_night}\r\n            				<br>\r\n                            Check in Time: {start_date}', NULL, 'en', 'email', 1, NULL, NULL),
(5, 5, 'Please confirm your e-mail address', 'Hi {first_name},\r\n                            <br><br>\r\n                            Welcome to {site_name}! Please confirm your account.', NULL, 'en', 'email', 1, NULL, NULL),
(6, 6, 'Reset your Password', 'Hi {first_name},\r\n                            <br><br>\r\n                            Your requested password reset link is below. If you didn\'t make the request, just ignore this email.', NULL, 'en', 'email', 1, NULL, NULL),
(7, 7, 'Please set a payment account', 'Hi {first_name},\r\n                            <br><br>\r\n                            Amount {currency_symbol}{payout_amount} is waiting for you but you did not add any payout account to send the money. Please add a payout method.', NULL, 'en', 'email', 1, NULL, NULL),
(8, 8, 'Payout Sent', 'Hi {first_name},\r\n                            <br><br>\r\n                            We\'ve issued you a payout of  {currency_symbol}{payout_amount} via PayPal. This payout should arrive in your account, taking into consideration weekends and holidays.', NULL, 'en', 'email', 1, NULL, NULL),
(9, 9, 'Booking Cancelled', 'Hi {owner_first_name},\r\n                            <br><br>\r\n                            {user_first_name} cancelled booking of {property_name}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(10, 10, 'Booking {Accepted/Declined}', 'Hi {guest_first_name},\r\n                            <br><br>\r\n                            {host_first_name} {Accepted/Declined} the booking of {property_name}.<br>', NULL, 'en', 'email', 1, NULL, NULL),
(11, 11, 'Booking request send for {property_name}', 'Hi {user_first_name},\r\n                            <br><br>\r\n                            <h1>Booking request send to {owner_first_name}</h1>\r\n                            <br>\r\n                            {total_night} {night/nights} at {property_name}\r\n                            <br>\r\n                            Property Name:  {property_name}\r\n                            <br>\r\n                            Number of Guest: {total_guest}\r\n                            <br>\r\n                            Number of Night: {total_night}\r\n                            <br>\r\n                            Check in Time: {start_date}', NULL, 'en', 'email', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `short_name`, `status`, `default`) VALUES
(1, 'English', 'en', 'Active', '1'),
(2, 'عربى', 'ar', 'Active', '0'),
(3, '中文 (繁體)', 'ch', 'Active', '0'),
(4, 'Français', 'fr', 'Active', '0'),
(5, 'Português', 'pt', 'Active', '0'),
(6, 'Русский', 'ru', 'Active', '0'),
(7, 'Español', 'es', 'Active', '0'),
(8, 'Türkçe', 'tr', 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `star` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `property_id`, `booking_id`, `sender_id`, `receiver_id`, `message`, `type_id`, `read`, `archive`, `star`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 2, 1, 'df', 4, 1, 0, 0, '2021-07-21 08:23:46', '2021-08-14 15:33:01'),
(2, 6, 2, 1, 2, 'Hi  interested to rent', 4, 1, 0, 0, '2021-08-06 04:03:39', '2021-08-24 09:54:47'),
(3, 4, 3, 2, 1, 'gfg', 4, 1, 0, 0, '2021-08-09 09:57:24', '2021-08-14 13:29:07'),
(4, 4, 4, 2, 1, 'fsdf', 4, 1, 0, 0, '2021-08-09 09:59:11', '2021-08-14 12:14:53'),
(5, 4, 4, 1, 2, 'ok', 1, 1, 0, 0, '2021-08-09 14:28:42', '2021-08-24 09:54:39'),
(6, 4, 4, 1, 2, 'gfg', 1, 1, 0, 0, '2021-08-10 11:31:38', '2021-08-24 09:54:39'),
(7, 4, 3, 1, 2, 'sdf', 1, 1, 0, 0, '2021-08-11 17:28:11', '2021-08-24 09:54:28'),
(8, 4, 5, 2, 1, 'Hi, Im test', 4, 1, 0, 0, '2021-08-13 12:38:04', '2021-08-14 12:14:46'),
(9, 6, 2, 1, 2, 'asdf', 1, 1, 0, 0, '2021-08-13 14:35:00', '2021-08-24 09:54:47'),
(10, 4, 5, 1, 2, 'hh', 1, 1, 0, 0, '2021-08-14 11:40:57', '2021-08-24 09:54:30'),
(11, 4, 5, 1, 2, 'hgfh', 1, 1, 0, 0, '2021-08-14 11:47:20', '2021-08-24 09:54:30'),
(12, 4, 3, 1, 2, 'gfgf', 1, 1, 0, 0, '2021-08-14 11:47:25', '2021-08-24 09:54:28'),
(13, 4, 4, 2, 1, 'jhj', 1, 0, 0, 0, '2021-08-24 09:54:39', '2021-08-24 09:54:39'),
(14, 6, 2, 2, 1, 'jjj', 1, 0, 0, 0, '2021-08-24 09:54:47', '2021-08-24 09:54:47'),
(15, 6, 6, 13, 2, 'hiiiiiii', 4, 1, 0, 0, '2021-08-24 10:22:33', '2021-08-24 10:29:34'),
(16, 6, 6, 2, 13, 'ss', 1, 0, 0, 0, '2021-08-24 10:29:34', '2021-08-24 10:29:34'),
(17, 59, 7, 15, 14, 'Book House', 4, 0, 0, 0, '2021-08-24 16:46:04', '2021-08-24 16:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `message_type`
--

CREATE TABLE `message_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_type`
--

INSERT INTO `message_type` (`id`, `name`, `description`) VALUES
(1, 'query', NULL),
(2, 'guest_cancellation', NULL),
(3, 'host_cancellation', NULL),
(4, 'booking_request', NULL),
(5, 'booking_accecpt', NULL),
(6, 'booking_decline', NULL),
(7, 'booking_expire', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_09_26_161159_entrust_setup_tables', 1),
(4, '2015_10_05_153204_create_timezone_table', 1),
(5, '2017_02_08_044609_create_accounts_table', 1),
(6, '2017_02_08_045108_create_pages_table', 1),
(7, '2017_02_08_045204_create_reports_table', 1),
(8, '2017_02_08_045412_create_country_table', 1),
(9, '2017_02_08_045643_create_language_table', 1),
(10, '2017_02_08_045745_create_currency_table', 1),
(11, '2017_02_23_110333_create_backup_table', 1),
(12, '2017_02_27_124315_create_seo_metas_table', 1),
(13, '2017_03_01_130507_create_user_details_table', 1),
(14, '2017_03_29_070352_create_payment_methods_table', 1),
(15, '2017_04_02_110016_create_notification_table', 1),
(16, '2017_05_04_102846_create_admin_table', 1),
(17, '2017_05_04_103841_create_property_type_table', 1),
(18, '2017_05_04_104010_create_amenities_table', 1),
(19, '2017_05_04_104406_create_amenity_type_table', 1),
(20, '2017_05_04_104509_create_rules_table', 1),
(21, '2017_05_04_105120_create_settings_table', 1),
(22, '2017_05_04_105515_create_properties_table', 1),
(23, '2017_05_04_105605_create_property_description_table', 1),
(24, '2017_05_04_105636_create_property_price_table', 1),
(25, '2017_05_04_105726_create_property_address_table', 1),
(26, '2017_05_04_105742_create_property_photos_table', 1),
(27, '2017_05_04_105800_create_property_details_table', 1),
(28, '2017_05_04_112613_create_property_dates_table', 1),
(29, '2017_05_04_112728_create_property_rules_table', 1),
(30, '2017_05_04_112954_create_property_fees_table', 1),
(31, '2017_05_04_113049_create_bookings_table', 1),
(32, '2017_05_04_113223_create_penalty_table', 1),
(33, '2017_05_04_113243_create_payout_table', 1),
(34, '2017_05_04_113355_create_payout_penalties_table', 1),
(35, '2017_05_04_113622_create_booking_details_table', 1),
(36, '2017_05_04_114011_create_reviews_table', 1),
(37, '2017_05_04_114131_create_messages_table', 1),
(38, '2017_05_04_114152_create_bed_types_table', 1),
(39, '2017_05_04_114215_create_banners_table', 1),
(40, '2017_05_04_114238_create_starting_cities_table', 1),
(41, '2017_05_07_133954_create_message_type_table', 1),
(42, '2017_05_08_073511_create_property_beds_table', 1),
(43, '2017_05_13_055552_create_space_type_table', 1),
(44, '2017_05_18_121707_create_property_steps_table', 1),
(45, '2017_06_18_080440_create_table_user_verification', 1),
(46, '2019_02_02_111427_create_email_templates_table', 1),
(47, '2019_03_03_100404_create_property_icalimports_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2020_08_06_062818_create_testimonials_table', 1),
(50, '2020_11_19_082447_create_wallets_table', 1),
(51, '2020_11_19_084031_create_withdrawals_table', 1),
(52, '2020_11_19_102628_create_payout_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Help', 'help', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h2 class=\"font-weight-600 pb-3\">Help</h2>\r\n<p class=\"pt-2\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div class=\"col-lg-8 offset-lg-2 col-md-12\">\r\n<ul class=\"faq-list mt-5\">\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', NULL, '2021-08-16 15:30:17'),
(2, 'About', 'about', '<h2>About</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'first', 'Active', NULL, NULL),
(3, 'Policies', 'policies', '<h2>Policies</h2><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'second', 'Active', NULL, NULL),
(4, 'Privacy', 'privacy', '<h2><strong>Privacy</strong></h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>&nbsp;</p>', 'second', 'Active', NULL, '2021-07-05 06:20:04'),
(5, 'Contact Us', 'contact-us', '<div class=\"container\">\r\n<div class=\"row\" align=\"center\">\r\n<div class=\"col-md-12\">\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<div class=\"row\" align=\"center\">\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Email Us</h2>\r\n<p><a>demo@gmail.com</a></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Call Us</h2>\r\n<p><a>+1 111 111 1111</a></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\r\n<h2 class=\"pt-5 mb-3 font-weight-600\">Contact Address</h2>\r\n<p>City, State, Country</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'first', 'Active', '2021-07-05 06:20:30', '2021-08-16 15:32:13'),
(7, 'Terms of Service', 'terms-of-service', '<ul>\r\n	<li><a href=\"https://makent.trioangle.com/terms_of_service\">Terms of Service</a></li>\r\n</ul>', 'first', 'Active', '2021-07-05 06:21:23', '2021-07-05 06:21:23'),
(8, 'Become Host', 'become-host', '<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner host-banner-bg\">\r\n<div class=\"host-overlay\">&nbsp;</div>\r\n<div class=\"container\">\r\n<div class=\"col-ms-12\" align=\"center\">\r\n<div class=\"join_banner_txt\">\r\n<h4>You can host anything,</h4>\r\n<h4>anywhere</h4>\r\n<button class=\"btn green-theme-btn\"><a href=\"../../airbnb-new/signup\">Get Started</a></button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n<p>&nbsp;</p>\r\n<!--why partner-->\r\n<section class=\"partner-sec\">\r\n<div class=\"container\">\r\n<div data-testid=\"how-it-works-section\">\r\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\r\n<div class=\"Container_root__1WntK\">\r\n<div>\r\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\r\n</div>\r\n<div class=\"SectionSteps_stepsWrapper__231A6\">\r\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\r\n</div>\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\r\n</div>\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\r\n<div class=\"SectionSteps_stepHeader__3LkpP\">\r\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\r\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\r\n</div>\r\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--why partner-->\r\n<p>&nbsp;</p>\r\n<!--Customized for your bussiness-->\r\n<section class=\"pb-70 business-sec\">\r\n<div class=\"asd\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead section-intro text-center mt-70\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\r\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\r\n</div>\r\n</div>\r\n<div class=\"row mt-5\">\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img1\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Ask</div>\r\n<p class=\"details\">Ask a Superhost</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img2\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Experience</div>\r\n<p class=\"details\">Host your experience</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 mt-4 host-page\">\r\n<div class=\"item card-1 img3\">\r\n<div class=\"img-card-content\">\r\n<div class=\"name font-weight-600\">Support Host</div>\r\n<p class=\"details\">Learn how we support hosts</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section id=\"start-sec\" class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\r\n</div>\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<div data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\r\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\r\n</div>\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\r\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\r\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\r\n</div>\r\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n<section class=\"faq-sec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"recommandedhead text-center col-md-12\">\r\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\r\n</div>\r\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\r\n<ul class=\"faq-list\">\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n<li>\r\n<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\r\n<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--faq-->\r\n<p>&nbsp;</p>\r\n<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\r\n<div class=\"join-overlay\">&nbsp;</div>\r\n<div class=\"container\">\r\n<div class=\"col-ms-12\" align=\"center\">\r\n<div class=\"join_banner_txt\">\r\n<h4 class=\"join-txt\">Join Now!</h4>\r\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\r\n<button class=\"btn green-theme-btn\"><a href=\"../../airbnb-new/signup\">Get Started</a></button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--banner-->\r\n<section class=\"hero-banner magic-ball\">\r\n<div class=\"container\">\r\n<div class=\"col-ms-12\" align=\"center\">\r\n<div class=\"more-qn-sec\">\r\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\r\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@shikar.co.nz\">support@shikar.co.nz</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'first', 'Active', '2021-08-05 10:22:25', '2021-08-13 14:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('demo@gmail.com', 'B4BcN0FmyOkVO8zEf6aw64mAgctYVc6ZoN43bftTNE9JrefDDm460PbzX5pehU9lL0HscZpaDOFxVwWi9j9lVIsOFO2YgYtY8wlI', '2021-07-05 05:20:37'),
('testuser@gmail.com', 'VqJih3cingiIQJy3hXywenLoNViOEW2Fln81RtbCroQ5209LGZzkfl2DGKV7yaQoV6h7xyvKwFG4SHbRLqeGbnpEnejWPs08RMqQ', '2021-07-20 05:49:23'),
('aaaaaaaaa@gmail.com', 'mAckdmmmph78DoIXQ8iP7Zf2e6u77RUgKuRwtFEwXCmbYlHdsyfPKKwZPoOUUrE9bHFJ5XU9i0KBGtHxVfGmTSwQW593PEoIDLXj', '2021-07-31 11:40:33'),
('bbbb@gmail.com', 'nRQ6q537K410jfBakmMkeewHWKhnIJsHYZ86IOyrQZqut8NYksUJMLLLfzNYRCTHiLNUdHp3QCjJEvxzFNcz0jsRjFcDHGqkoJQb', '2021-07-31 11:42:23'),
('athi@gmail.com', '0lcPVPgAnDGsesJwz0nPbiy6lostctuyYjRPwYaasZDhDwfZj7bdaWKO9YiwgyTe6VcfEwhC8xZxFF4wxMG1hSUwVUTNsfSVCT7U', '2021-08-11 17:36:15'),
('test10@gmail.com', 'C7nWArAFzrtKNKivqLnhkpGfPXNoOzobhYiD6eCgvZ03rIRwfoL2Ve65ez0HxWv8jeFEgNAiteMJas1IQykDNqMhKQkDfi6Vd7nt', '2021-08-17 10:44:03'),
('mshop@test.com', '3vWWG3LPQdrcNs21Ez28cRWqz1Uk368W1MHgIMvvLFSXrCQhYYHDP5QDvaBYkLecZjo9kygb7mRKJFrln2VWvGaOGtk7YG4faUYv', '2021-08-17 10:46:11'),
('aaaa@gmail.com', 'JtOh8vSvOb0PA8F86ZrbpGKevUUxhM5kv3JbNklODMMizw5bF6XJoqKmY30NjwuJQXx07zuX4qhlblPlIYrjneJ1gYYHiCR5a5MR', '2021-08-17 11:08:39'),
('mshopfg@test.com', 'pmtzqfgh8krEkE9wpWLkpzBMOfi6acqfCxp8PckvCOTaGjah50222XpfyohpR7nCMPSAeuuETydFZTXSfkxdAXKTgIU9fRhuvLWq', '2021-08-17 11:21:11'),
('hghg@sdhfhsgd.com', '11DGmSxAqTiliqL4kKJMNSnsT6VnGlmWitjJFNaAaOIR9A0dDScMKVGinAV2X4X9md3hIaNiEunX3J37tXHjfo7aIZoMsaNRFKHb', '2021-08-17 11:25:03'),
('vifyebiknu@biyac.com', 'JXelDM8UrNvPqcJfXGnNYXLSAkZUCzaERotmc3pkOG1nsxFkNdfvBTVnVePWZmICYuzOR76PH9n4O5vFvWbwkSOWye8yiNJ5oz8k', '2021-08-17 11:42:20'),
('test10@gmail.com', 'q3HM8GrJ8nVVq1Gjj1JKENlLKHoOyQ2AFzTJGQF9PpFM3u590QP32OdljyfUkcZnJxpw0bpYsUTphCEJAHR2dce3VjBBvYbaluFh', '2021-08-17 13:07:47'),
('albert@demo.com', 'P4Afh4Go1yBBUJngb59ZgCrDkCks2SjbeA7MjxJCpltpTzx6nkcYAGr3hatpVgFBnaNyHkgfm1I9tTlSmoHOSytztPAyrZZ5wqo7', '2021-08-23 15:41:47'),
('anna@demo.com', 'RlMnrdSXb6a3pQUbn4y3xOdQRVWliw2JUhOMwl3Mrg7N1okWDdZUvgdfzJsh1ZSe6mxe7tEKPXnhqyJrv3Yv1Mkpmv14xb8A4L9F', '2021-08-23 15:46:59'),
('vosheo@scrsot.com', '1yQz6s5GnG8lIXNeDY0OtzoILHpbz2jO32xN4fsEhyt9bOBaWnx6X0HnF6BvrqPTxBckOdDEX2r1BkSpejli6PudmgKX3NarojT1', '2021-08-26 10:17:15'),
('aaaa@gmail.com', 'DBEuGbVDq4VeaCRq1j7E8sI9DM6qdfV0m75jKSgWxZIHyud7Aob7env8PK1yAzbj8q9zFbKsA0PTq0pHsRr355DOkkWF66aLs9hv', '2021-08-26 10:18:27'),
('dfsgdf@hfghfd.com', 'CnBOG3JEXGw8MPnYtZM1WdRqqiZ9k76etvOsr8Y7N9bqP0SKKhNqlKqydE2ERiqz0V4rqrGrQCy1XNgaEaDZOI0dX646sB7QXY9l', '2021-08-26 10:19:59'),
('dfsgdf@gmaill.com', 'bfV2erTvg0UMZPnBse3ALoOZA65BgwMbhEb9zZSLtpXEtzRXhZIoJVU7CQyjhXC7EihCFcxhP5ba7raHGec3rVLt1rAnT9r5Zk4Q', '2021-08-26 10:20:15'),
('dfsgdf@gmail.com', 'jVXOSBoTD0NBJ6SghcBSoYT4X8dd2BdtvkV5AikYAGNlTsDujJBeFX8Fn2P9rGk0PUqMcR7ynuyIixrDQnS0LoUTVGs6pTRYusvo', '2021-08-26 10:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `status`) VALUES
(1, 'Paypal', 'Active'),
(2, 'Stripe', 'Active'),
(3, 'Wallet', 'Active'),
(4, 'Bank', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `penalty_amount` double NOT NULL DEFAULT '0',
  `status` enum('Completed','Future') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `booking_id`, `user_id`, `property_id`, `user_type`, `account`, `amount`, `penalty_amount`, `status`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 4, 'Host', NULL, 20, 0, 'Future', 'USD', '2021-08-09 09:57:24', '2021-08-09 09:57:24'),
(2, 4, 1, 4, 'Host', NULL, 20, 0, 'Future', 'USD', '2021-08-09 09:59:11', '2021-08-09 09:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `payout_penalties`
--

CREATE TABLE `payout_penalties` (
  `id` int(10) UNSIGNED NOT NULL,
  `payout_id` int(11) NOT NULL,
  `penalty_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_settings`
--

CREATE TABLE `payout_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_settings`
--

INSERT INTO `payout_settings` (`id`, `user_id`, `type`, `email`, `account_name`, `account_number`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `country`, `swift_code`, `bank_name`, `is_active`, `selected`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'info@sangvish.com', 'Athi Lakshmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'No', '2021-08-11 15:02:12', '2021-08-11 15:02:12'),
(2, 1, 4, 'athi@gmail.com', 'Athi', '123445566', 'anna nagar', 'madurai', 'anna nagar', 99, 'SBI000012', 'SBI', 1, 'No', '2021-08-11 15:03:28', '2021-08-11 15:03:28'),
(3, 2, 1, 'demo@gmail.com', 'Demo Demo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'No', '2021-08-15 13:21:03', '2021-08-15 13:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `remaining_penalty` double NOT NULL DEFAULT '0',
  `reason` enum('cancelation','demurrage','violation_of_rules') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_admin', 'Manage Admin', 'Manage Admin Users', NULL, NULL),
(2, 'customers', 'View Customers', 'View Customer', NULL, NULL),
(3, 'add_customer', 'Add Customer', 'Add Customer', NULL, NULL),
(4, 'edit_customer', 'Edit Customer', 'Edit Customer', NULL, NULL),
(5, 'properties', 'View Properties', 'View Properties', NULL, NULL),
(6, 'add_properties', 'Add Properties', 'Add Properties', NULL, NULL),
(7, 'edit_properties', 'Edit Properties', 'Edit Properties', NULL, NULL),
(8, 'delete_property', 'Delete Property', 'Delete Property', NULL, NULL),
(9, 'manage_bookings', 'Manage Bookings', 'Manage Bookings', NULL, NULL),
(10, 'manage_email_template', 'Manage Email Template', 'Manage Email Template', NULL, NULL),
(11, 'view_payouts', 'View Payouts', 'View Payouts', NULL, NULL),
(12, 'manage_amenities', 'Manage Amenities', 'Manage Amenities', NULL, NULL),
(13, 'manage_pages', 'Manage Pages', 'Manage Pages', NULL, NULL),
(14, 'manage_reviews', 'Manage Reviews', 'Manage Reviews', NULL, NULL),
(15, 'view_reports', 'View Reports', 'View Reports', NULL, NULL),
(16, 'general_setting', 'Settings', 'Settings', NULL, NULL),
(17, 'preference', 'Preference', 'Preference', NULL, NULL),
(18, 'manage_banners', 'Manage Banners', 'Manage Banners', NULL, NULL),
(19, 'starting_cities_settings', 'Starting Cities Settings', 'Starting Cities Settings', NULL, NULL),
(20, 'manage_property_type', 'Manage Property Type', 'Manage Property Type', NULL, NULL),
(21, 'space_type_setting', 'Space Type Setting', 'Space Type Setting', NULL, NULL),
(22, 'manage_bed_type', 'Manage Bed Type', 'Manage Bed Type', NULL, NULL),
(23, 'manage_currency', 'Manage Currency', 'Manage Currency', NULL, NULL),
(24, 'manage_country', 'Manage Country', 'Manage Country', NULL, NULL),
(25, 'manage_amenities_type', 'Manage Amenities Type', 'Manage Amenities Type', NULL, NULL),
(26, 'email_settings', 'Email Settings', 'Email Settings', NULL, NULL),
(27, 'manage_fees', 'Manage Fees', 'Manage Fees', NULL, NULL),
(28, 'manage_language', 'Manage Language', 'Manage Language', NULL, NULL),
(29, 'manage_metas', 'Manage Metas', 'Manage Metas', NULL, NULL),
(30, 'api_informations', 'Api Credentials', 'Api Credentials', NULL, NULL),
(31, 'payment_settings', 'Payment Settings', 'Payment Settings', NULL, NULL),
(32, 'social_links', 'Social Links', 'Social Links', NULL, NULL),
(33, 'manage_roles', 'Manage Roles', 'Manage Roles', NULL, NULL),
(34, 'database_backup', 'Database Backup', 'Database Backup', NULL, NULL),
(35, 'manage_sms', 'Manage SMS', 'Manage SMS', NULL, NULL),
(36, 'manage_messages', 'Manage Messages', 'Manage Messages', NULL, NULL),
(37, 'edit_messages', 'Edit Messages', 'Edit Messages', NULL, NULL),
(38, 'manage_testimonial', 'Manage Testimonial', 'Manage Testimonial', NULL, NULL),
(39, 'add_testimonial', 'Add Testimonial', 'Add Testimonial', NULL, NULL),
(40, 'edit_testimonial', 'Edit Testimonial', 'Edit Testimonial', NULL, NULL),
(41, 'delete_testimonial', 'Delete Testimonial', 'Delete Testimonial', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `bedrooms` tinyint(4) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `bed_type` int(10) UNSIGNED DEFAULT NULL,
  `bathrooms` double(8,2) DEFAULT NULL,
  `amenities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` int(11) NOT NULL DEFAULT '0',
  `space_type` int(11) NOT NULL DEFAULT '0',
  `accommodates` tinyint(4) DEFAULT NULL,
  `booking_type` enum('instant','request') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `cancellation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flexible',
  `status` enum('Unlisted','Listed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unlisted',
  `recomended` tinyint(4) DEFAULT NULL,
  `admin_approval` int(50) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `slug`, `url_name`, `host_id`, `bedrooms`, `beds`, `bed_type`, `bathrooms`, `amenities`, `property_type`, `space_type`, `accommodates`, `booking_type`, `cancellation`, `status`, `recomended`, `admin_approval`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Private room in Chennai', 'private-room-in-chennai', NULL, 1, 1, 2, 1, 0.50, '1,2,3,5,9,10,27', 1, 2, 3, 'instant', 'Flexible', 'Listed', 1, 0, '2021-08-27 10:30:49', '2021-07-05 05:29:19', '2021-08-27 10:30:49'),
(4, 'Shared room in New York', 'shared-room-in-new-york', NULL, 1, 3, 2, 1, 2.00, '1,2,3,6,27,28,29,30,31', 2, 1, 4, 'request', 'Flexible', 'Listed', 1, 0, NULL, '2021-07-05 15:21:19', '2021-08-27 18:54:09'),
(5, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai-1', NULL, 1, 1, 1, 1, 0.50, '2,3', 1, 1, 2, 'instant', 'Flexible', 'Listed', 1, 0, NULL, '2021-07-06 01:21:19', '2021-07-30 11:29:25'),
(6, 'Unique stays in', 'unique-stays-in-1', NULL, 2, 1, 1, 1, 0.50, '2,3', 5, 4, 2, 'request', 'Flexible', 'Listed', 1, 0, NULL, '2021-07-05 05:21:19', '2021-08-27 11:07:15'),
(7, 'Private room in  chennai', 'private-room-in-chennai-1', NULL, 1, 1, 1, 1, 0.50, '2,3,4', 1, 2, 1, 'instant', 'Flexible', 'Listed', 0, 0, '2021-08-27 10:29:50', '2021-07-30 11:36:59', '2021-08-27 10:29:50'),
(8, 'Entire home/apt in Chennai', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:29:38', '2021-08-05 10:33:28', '2021-08-27 10:29:38'),
(9, 'Entire home/apt in Madurai', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:01:22', '2021-08-05 11:00:02', '2021-08-27 10:01:22'),
(10, 'Entire home/apt in Tiruchirappalli', 'entire-homeapt-in-tiruchirappalli-1', NULL, 2, 1, 1, 1, 0.50, '1,2,3,4,5,6,7,8,27,30', 2, 1, 3, 'instant', 'Flexible', 'Listed', 0, 0, '2021-08-27 10:06:58', '2021-08-05 18:24:52', '2021-08-27 10:06:58'),
(11, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai', NULL, 1, 1, 1, 1, 0.50, '1', 1, 1, 1, 'request', 'Flexible', 'Unlisted', 0, 0, '2021-08-27 10:29:15', '2021-08-06 15:33:02', '2021-08-27 10:29:15'),
(12, 'Entire home/apt in Madurai', 'entire-homeapt-in-madurai-2', NULL, 1, 1, 1, 1, 0.50, '27', 1, 1, 1, 'request', 'Flexible', 'Unlisted', 0, 0, '2021-08-27 10:29:28', '2021-08-08 10:02:42', '2021-08-27 10:29:28'),
(13, 'testingg', 'testingg-1', NULL, 1, 1, 1, 1, 0.50, '1,2,31', 2, 2, 1, 'request', 'Flexible', 'Unlisted', 0, 0, '2021-08-27 10:26:57', '2021-08-09 11:13:25', '2021-08-27 10:26:57'),
(14, 'Entire home/apt in ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:25:41', '2021-08-09 12:56:42', '2021-08-27 10:25:41'),
(15, 'Entire home/apt in', 'entire-homeapt-in', NULL, 1, 2, 2, 2, 2.00, '1,3,5,7,9,27,29', 17, 1, 4, 'instant', 'Flexible', 'Listed', NULL, 0, '2021-08-27 10:23:25', '2021-08-09 14:06:18', '2021-08-27 10:23:25'),
(16, 'Entire home/apt in', 'entire-homeapt-in-1', NULL, 1, 1, 1, 1, 0.50, '1,2,3,4,5,6', 1, 1, 1, 'instant', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:22:55', '2021-08-10 12:33:17', '2021-08-27 10:22:55'),
(17, 'Entire home/apt in Chennai', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:22:45', '2021-08-12 13:42:50', '2021-08-27 10:22:45'),
(18, 'Entire home/apt in ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:22:20', '2021-08-13 08:55:26', '2021-08-27 10:22:20'),
(19, 'Entire home/apt in Wadgaon', '', NULL, 1, NULL, NULL, NULL, NULL, '2,4', 1, 1, 10, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:18:38', '2021-08-13 12:00:48', '2021-08-27 10:18:38'),
(20, 'Entire home/apt in Madurai', 'entire-homeapt-in-madurai-1', NULL, 2, 1, 1, 1, 0.50, '24,25,27,28', 1, 1, 1, 'instant', 'Flexible', 'Listed', 1, 0, '2021-08-27 10:05:40', '2021-08-17 15:05:48', '2021-08-27 10:05:40'),
(21, 'Private room in Madurai', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 2, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:01:49', '2021-08-17 17:00:48', '2021-08-27 10:01:49'),
(22, 'Entire home/apt in Chennai', '', NULL, 1, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:17:45', '2021-08-18 09:35:31', '2021-08-27 10:17:45'),
(23, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai-2', NULL, 1, 1, 1, 1, 0.50, '22', 1, 1, 1, 'request', 'Flexible', 'Unlisted', 0, 0, '2021-08-27 10:17:31', '2021-08-18 16:07:05', '2021-08-27 10:17:31'),
(24, 'Entire home/apt in', 'entire-homeapt-in-3', NULL, 1, 1, 1, 1, 0.50, '1', 2, 1, 1, 'request', 'Flexible', 'Listed', 0, 0, '2021-08-27 10:17:09', '2021-08-18 18:05:24', '2021-08-27 10:17:09'),
(25, 'Entire home/apt in Madrid', 'entire-homeapt-in-madrid', NULL, 2, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:05:21', '2021-08-19 09:19:38', '2021-08-27 10:05:21'),
(26, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai-3', NULL, 1, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:14:59', '2021-08-19 09:20:47', '2021-08-27 10:14:59'),
(27, 'Entire home/apt in England', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:05:04', '2021-08-19 10:23:53', '2021-08-27 10:05:04'),
(28, 'Entire home/apt in England', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:04:47', '2021-08-19 10:29:01', '2021-08-27 10:04:47'),
(29, 'Entire home/apt in Madrid', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:04:25', '2021-08-19 11:07:48', '2021-08-27 10:04:25'),
(30, 'Entire home/apt in Madurai', 'entire-homeapt-in-madurai', NULL, 2, 1, 1, 1, 0.50, '1,2', 1, 1, 10, 'instant', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:04:04', '2021-08-19 11:09:28', '2021-08-27 10:04:04'),
(31, 'Entire home/apt in England', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:03:43', '2021-08-19 11:33:10', '2021-08-27 10:03:43'),
(32, 'Entire home/apt in England', 'entire-homeapt-in-england', NULL, 2, 1, 1, 1, 0.50, '17', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:02:43', '2021-08-19 11:37:07', '2021-08-27 10:02:43'),
(33, 'Entire home/apt in Independence', '', NULL, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:02:23', '2021-08-19 13:01:16', '2021-08-27 10:02:23'),
(34, 'Entire home/apt in Toronto', 'entire-homeapt-in-toronto-1', NULL, 2, 1, 1, 1, 0.50, '1', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:01:00', '2021-08-19 13:04:37', '2021-08-27 10:01:00'),
(35, 'Entire home/apt in Chennai', '', NULL, 1, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:16:53', '2021-08-19 13:11:03', '2021-08-27 10:16:53'),
(36, 'Entire home/apt in Madrid', 'entire-homeapt-in-madrid-1', NULL, 2, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:00:23', '2021-08-19 13:16:44', '2021-08-27 10:00:23'),
(37, 'Entire home/apt in Martínez', 'entire-homeapt-in-martinez-1', NULL, 2, 1, 1, 1, 0.50, '10', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:00:10', '2021-08-19 13:39:37', '2021-08-27 10:00:10'),
(38, 'Entire home/apt in Madurai', 'entire-homeapt-in-madurai-4', NULL, 2, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', 0, 0, '2021-08-27 09:56:54', '2021-08-19 14:31:34', '2021-08-27 09:56:54'),
(39, 'Private room in Thanjavur', 'private-room-in-thanjavur', NULL, 1, 1, 1, 1, 0.50, '3,4,31', 2, 2, 2, 'request', 'Flexible', 'Listed', 0, 0, '2021-08-27 10:16:28', '2021-08-19 14:58:18', '2021-08-27 10:16:28'),
(40, 'Entire home/apt in New York', 'entire-homeapt-in-new-york-1', NULL, 14, 3, 3, 1, 3.00, '1,2,4,5,7,29,31', 2, 1, 5, 'request', 'Flexible', 'Listed', NULL, 0, NULL, '2021-08-23 15:49:16', '2021-08-26 18:36:50'),
(41, 'Private room in New York', 'private-room-in-new-york', NULL, 14, 1, 1, 1, 1.00, '6,8,17,19,28,30', 3, 2, 2, 'instant', 'Flexible', 'Listed', NULL, 0, NULL, '2021-08-23 16:07:48', '2021-08-26 18:29:06'),
(42, 'House in New York', 'house-in-new-york', NULL, 14, 5, 5, 2, 5.00, '1,2,3,4,8,15,19,20,23,27,31', 7, 1, 7, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 16:21:19', '2021-08-27 18:58:02'),
(43, 'Villa in New York', 'villa-in-new-york', NULL, 14, 10, 10, 3, 8.00, '1,3,4,6,10,15,21,23,27,29,30', 9, 3, 15, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 16:34:19', '2021-08-27 18:57:51'),
(44, 'Boat House in New York', 'boat-house-in-new-york', NULL, 14, 3, 3, 3, 3.00, '3,6,16,19', 13, 4, 5, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 16:41:39', '2021-08-27 18:57:39'),
(45, 'Treehouse in New York', 'treehouse-in-new-york-1', NULL, 14, 2, 2, 1, 1.00, '1,6', 12, 3, 3, 'instant', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 16:52:03', '2021-08-27 18:57:29'),
(46, 'Tent House in New York', 'tent-house-in-new-york', NULL, 14, 1, 1, 7, 1.00, '5,10,22,24,29,30', 26, 4, 1, 'instant', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 17:06:34', '2021-08-27 19:00:41'),
(47, 'Island', 'island-1', NULL, 14, 2, 2, 3, 2.00, '1,5,6,10,15,18,19,27,30', 21, 3, 4, 'request', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 17:14:44', '2021-08-27 19:01:13'),
(48, 'Hut in New York', 'hut-in-new-york-1', NULL, 14, 1, 1, 2, 1.00, '1,19,24', 24, 2, 2, 'instant', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 17:23:54', '2021-08-27 19:01:17'),
(49, 'Castle in New York', 'castle-in-new-york-1', NULL, 14, 3, 3, 4, 3.00, '5,6,12,15,18,19,21,31', 10, 3, 4, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 17:35:55', '2021-08-27 18:56:55'),
(50, 'Dorm in New York', 'dorm-in-new-york-1', NULL, 14, 2, 2, 4, 1.00, '1,2,7,29,30,31', 11, 3, 2, 'instant', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 17:59:04', '2021-08-27 18:56:46'),
(51, 'Townhouse Sydney Olympic Park', 'townhouse-sydney-olympic-park', NULL, 14, 2, 2, 3, 2.00, '2,3,6,10,13,14,15,16,18,20,21,27,29,31', 5, 2, 2, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 18:05:38', '2021-08-27 18:56:39'),
(52, 'Private House in Paris', 'private-house-in-paris', NULL, 14, 3, 3, 3, 3.00, '2,5,6,7,12,15,27,28,29,30,31', 2, 2, 5, 'request', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 18:15:03', '2021-08-27 19:01:21'),
(53, 'Villa in Barcelona', 'villa-in-barcelona-1', NULL, 14, 5, 5, 3, 3.00, '2,5,7,10,11,17,20,29,31', 9, 1, 10, 'request', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 18:21:28', '2021-08-27 19:01:25'),
(54, 'Cave in Berlin', 'cave-in-berlin-1', NULL, 14, 1, 1, 2, 1.00, '1,6,13,31', 20, 2, 2, 'instant', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 18:52:41', '2021-08-27 19:01:51'),
(55, 'Apartment in Budapest', 'apartment-in-budapest-1', NULL, 14, 5, 5, 2, 5.00, '1,2,5,6,8,11,15,17,18,21,23,29,31', 7, 1, 12, 'instant', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 18:58:08', '2021-08-27 19:01:54'),
(56, 'Island in Singapore', 'island-in-singapore-1', NULL, 14, 2, 2, 2, 2.00, '2,4,5,15,19,20,27,31', 21, 2, 2, 'instant', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 19:04:20', '2021-08-27 18:55:59'),
(57, 'House in New Delhi', 'house-in-new-delhi-1', NULL, 14, 2, 2, 2, 2.00, '1,2,6,7,14,15,18,31', 2, 1, 3, 'instant', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 19:11:34', '2021-08-27 18:55:51'),
(58, 'Individual Room in Delhi', 'individual-room-in-delhi-1', NULL, 14, 2, 2, 3, 2.00, '1,2,6,7,12,15,16,18,21,27,28,29,30,31', 3, 2, 2, 'request', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-23 19:16:15', '2021-08-27 19:02:04'),
(59, 'Cabin House in Singapore', 'cabin-house-in-singapore-1', NULL, 14, 2, 2, 2, 2.00, '1,2,4,5,6,15,17,19,21,23,30,31', 22, 1, 4, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-23 19:23:13', '2021-08-27 18:55:33'),
(60, 'Single room in  Budapest', 'single-room-in-budapest-1', NULL, 15, 2, 2, 4, 1.00, '1,2,19,31', 3, 2, 2, 'request', 'Flexible', 'Listed', NULL, 1, NULL, '2021-08-24 09:14:43', '2021-08-27 18:55:21'),
(61, 'Entire home/apt in ', '', NULL, 1, 1, 1, 1, 0.50, NULL, 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 10:15:13', '2021-08-24 12:29:44', '2021-08-27 10:15:13'),
(62, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai-4', NULL, 2, 2, 1, 1, 0.50, '1,4,27,28', 1, 1, 1, 'instant', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 09:59:39', '2021-08-24 16:49:57', '2021-08-27 09:59:39'),
(63, 'Home in  Singapore', 'home-in-singapore', NULL, 15, 1, 1, 1, 0.50, '14,28', 1, 1, 1, 'instant', 'Flexible', 'Listed', 1, 1, NULL, '2021-08-24 18:03:02', '2021-08-27 19:00:22'),
(64, 'Entire home/apt in Chennai', 'entire-homeapt-in-chennai-6', NULL, 2, 1, 1, 1, 0.50, '1,2', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 09:59:51', '2021-08-25 09:44:20', '2021-08-27 09:59:51'),
(65, 'Entire home/apt in', 'entire-homeapt-in-2', NULL, 2, 1, 1, 1, 0.50, '1,2', 1, 1, 1, 'request', 'Flexible', 'Unlisted', NULL, 0, '2021-08-27 09:59:25', '2021-08-25 15:36:55', '2021-08-27 09:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `property_address`
--

CREATE TABLE `property_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_address`
--

INSERT INTO `property_address` (`id`, `property_id`, `address_line_1`, `address_line_2`, `latitude`, `longitude`, `city`, `state`, `country`, `postal_code`) VALUES
(1, 1, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(2, 2, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(3, 3, 'Delhi Junction, Mori Gate, New Delhi, Delhi 110006, India', NULL, '28.6609677', '77.2276704', 'New Delhi', 'Delhi', 'IN', '110006'),
(4, 4, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(5, 5, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(6, 6, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'AF', '10007'),
(7, 7, '5th Ave, Anna Nagar, Chennai, Tamil Nadu 600040, India', NULL, '13.0849557', '80.2101342', 'Chennai', 'Tamil Nadu', 'IN', '600040'),
(8, 8, 'Raja Muthiah Rd', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(9, 9, NULL, NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(10, 10, 'A2 175, Hanifa Colony, bhel, Tiruchirappalli, Tamil Nadu 620020, India', NULL, '10.7904833', '78.7046725', 'Tiruchirappalli', 'Tamil Nadu', 'IN', '620020'),
(11, 11, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(12, 12, 'W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India', NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(13, 13, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(14, 14, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(15, 15, 'No. 766, I Floor, 100 feet road, Annanagar, Anna Nagar, Madurai, Tamil Nadu 625020, India', 'madurai', '9.923559876114252', '78.14115216452635', 'Madurai', 'Tamil Nadu', 'IN', '625020'),
(16, 16, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'AF', '600007'),
(17, 17, 'Raja Muthiah Rd', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(18, 18, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(19, 19, 'HXV7+F4H, Khattalwada, Wadgaon, Maharashtra 442305, India', NULL, '20.593684', '78.96288', 'Wadgaon', 'Maharashtra', 'IN', '442305'),
(20, 20, 'W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India', NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(21, 21, NULL, NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(22, 22, 'Raja Muthiah Rd', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(23, 23, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(24, 24, '5th Ave, Anna Nagar, Chennai, Tamil Nadu 600040, India', NULL, '13.0849557', '80.2101342', 'Chennai', 'Tamil Nadu', 'IN', '600040'),
(25, 25, NULL, NULL, '40.4167754', '-3.7037902', 'Madrid', 'Comunidad de Madrid', 'ES', '28013'),
(26, 26, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(27, 27, NULL, NULL, '51.5073509', '-0.1277583', 'England', 'England', 'GB', 'SW1A 2DX'),
(28, 28, NULL, NULL, '51.5073509', '-0.1277583', 'England', 'England', 'GB', 'SW1A 2DX'),
(29, 29, NULL, NULL, '40.4167754', '-3.7037902', 'Madrid', 'Comunidad de Madrid', 'ES', '28013'),
(30, 30, 'W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India', NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(31, 31, NULL, NULL, '51.5073509', '-0.1277583', 'England', 'England', 'GB', 'SW1A 2DX'),
(32, 32, 'South Tottenham, London SW1A 2DX, UK', NULL, '51.5073509', '-0.1277583', 'England', 'England', 'GB', 'SW1A 2DX'),
(33, 33, 'Estate Enighed', NULL, '37.09024', '-95.712891', 'Independence', 'Kansas', 'US', '67301'),
(34, 34, '65 Front St W, Toronto, ON M5J 1E6, Canada', NULL, '43.64531969999999', '-79.3804062', 'Toronto', 'Ontario', 'CA', 'M5J 1E6'),
(35, 35, 'Raja Muthiah Rd', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(36, 36, NULL, NULL, '40.4167754', '-3.7037902', 'Madrid', 'Comunidad de Madrid', 'ES', '28013'),
(37, 37, 'Paraná 3745, Martínez, Provincia de Buenos Aires, Argentina', NULL, '-34.5075603', '-58.52525079999999', 'Martínez', 'Provincia de Buenos Aires', 'AR', NULL),
(38, 38, NULL, NULL, '9.9252007', '78.1197754', 'Madurai', 'Tamil Nadu', 'IN', '625001'),
(39, 39, 'Thanjavur Tanjore - Old Bus Stand, S Rampart Rd, Rajakrisnapuram, Thanjavur, Tamil Nadu 613001, India', NULL, '10.7869994', '79.13782739999999', 'Thanjavur', 'Tamil Nadu', 'IN', '613001'),
(40, 40, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(41, 41, '254 Broadway, New York, NY 10007, USA', NULL, '40.7129032', '-74.0063033', 'New York', 'New York', 'US', '10007'),
(42, 42, '2 Beach St, New York, NY 10013, USA', NULL, '40.7200964', '-74.0059816', 'New York', 'New York', 'US', '10013'),
(43, 43, '150 Nassau St, New York, NY 10038, USA', NULL, '40.71146239999999', '-74.0059409', 'New York', 'New York', 'US', '10038'),
(44, 44, '506 6th St, Brooklyn, NY 11215, USA', NULL, '40.6678362', '-73.97912989999999', 'New York', 'New York', 'US', '11215'),
(45, 45, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(46, 46, '452 Broadway, New York, NY 10013, USA', NULL, '40.720357', '-74.0005647', 'New York', 'New York', 'US', '10013'),
(47, 47, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(48, 48, '43 West 4th Street, New York, NY 10012, USA', NULL, '40.72951339999999', '-73.9964609', 'New York', 'New York', 'US', '10012'),
(49, 49, '32 Hudson Yards, New York, NY 10001, USA', NULL, '40.7542629', '-74.0023166', 'New York', 'New York', 'US', '10001'),
(50, 50, '254 Broadway, New York, NY 10007, USA', NULL, '40.7127753', '-74.0059728', 'New York', 'New York', 'US', '10007'),
(51, 51, '110-140 King St, Sydney NSW 2000, Australia', NULL, '-33.8688197', '151.2092955', 'Sydney', 'Sydney', 'AU', '2000'),
(52, 52, '4 Pl. de l\'Hôtel de Ville, 75004 Paris, France', NULL, '48.856614', '2.3522219', 'Paris', 'Paris', 'FR', '75004'),
(53, 53, 'Ede ekene, 08002 Barcelona, Spain', NULL, '41.3850639', '2.1734035', 'Barcelona', 'Barcelona', 'ES', '08002'),
(54, 54, 'B5 7, 10178 Berlin, Germany', NULL, '52.52000659999999', '13.404954', 'Berlin', 'Berlin', 'DE', '10178'),
(55, 55, 'Budapest, Unnamed Road, 1013 Hungary', NULL, '47.497912', '19.040235', 'Budapest', 'Budapest', 'HU', '1013'),
(56, 56, 'Unnamed Road Singapore', NULL, '1.352083', '103.819836', 'Singapore', 'Singapore', 'SG', NULL),
(57, 57, '169, Block G, Seemapuri, New Delhi, Delhi 110011, India', NULL, '28.6139391', '77.2090212', 'New Delhi', 'Delhi', 'IN', '110011'),
(58, 58, '169, Block G, Seemapuri, New Delhi, Delhi 110011, India', NULL, '28.6139391', '77.2090212', 'New Delhi', 'Delhi', 'IN', '110011'),
(59, 59, '50 Raffles Pl, Singapore 048623', NULL, '1.2847487', '103.8519923', 'Singapore', 'Singapore', 'SG', '048623'),
(60, 60, 'Budapest, Unnamed Road, 1013 Hungary', NULL, '47.497912', '19.040235', 'Budapest', 'Budapest', 'HU', '1013'),
(61, 61, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(62, 62, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(63, 63, 'Unnamed Road Singapore', NULL, '1.352083', '103.819836', 'Singapore', 'Singapore', 'SG', NULL),
(64, 64, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'IN', '600007'),
(65, 65, 'Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India', NULL, '13.0826802', '80.2707184', 'Chennai', 'Tamil Nadu', 'AF', '600007');

-- --------------------------------------------------------

--
-- Table structure for table `property_beds`
--

CREATE TABLE `property_beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `bed_type_id` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_dates`
--

CREATE TABLE `property_dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `status` enum('Available','Not available') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `price` int(11) NOT NULL DEFAULT '0',
  `min_stay` tinyint(4) NOT NULL DEFAULT '0',
  `min_day` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `color` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('calendar','normal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_dates`
--

INSERT INTO `property_dates` (`id`, `property_id`, `status`, `price`, `min_stay`, `min_day`, `date`, `color`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'Not available', 20, 0, 0, '2021-08-09', NULL, 'normal', '2021-08-09 09:57:24', '2021-08-09 09:57:24'),
(2, 16, 'Available', 20, 1, 2, '2021-08-11', NULL, 'normal', '2021-08-11 15:15:27', '2021-08-11 15:15:27'),
(3, 16, 'Not available', 20, 0, 0, '2021-08-12', NULL, 'normal', '2021-08-11 15:15:27', '2021-08-11 15:16:43'),
(4, 16, 'Not available', 20, 0, 0, '2021-08-13', NULL, 'normal', '2021-08-11 15:15:27', '2021-08-11 15:16:43'),
(5, 40, 'Available', 32, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(6, 40, 'Available', 32, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(7, 40, 'Available', 32, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(8, 40, 'Available', 32, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(9, 40, 'Available', 32, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(10, 40, 'Available', 32, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(11, 40, 'Available', 32, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(12, 40, 'Available', 32, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(13, 40, 'Available', 32, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(14, 40, 'Available', 32, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(15, 40, 'Available', 32, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(16, 40, 'Available', 32, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(17, 40, 'Available', 32, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(18, 40, 'Available', 32, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(19, 40, 'Available', 32, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(20, 40, 'Available', 32, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(21, 40, 'Available', 32, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(22, 40, 'Available', 32, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(23, 40, 'Available', 32, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(24, 40, 'Available', 32, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(25, 40, 'Available', 32, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(26, 40, 'Available', 32, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(27, 40, 'Available', 32, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(28, 40, 'Available', 32, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(29, 40, 'Available', 32, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(30, 40, 'Available', 32, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(31, 40, 'Available', 32, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(32, 40, 'Available', 32, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(33, 40, 'Available', 32, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(34, 40, 'Available', 32, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(35, 40, 'Available', 32, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(36, 40, 'Available', 32, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(37, 40, 'Available', 32, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(38, 40, 'Available', 32, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(39, 40, 'Available', 32, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(40, 40, 'Available', 32, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(41, 40, 'Available', 32, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(42, 40, 'Available', 32, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(43, 40, 'Available', 32, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 16:02:05', '2021-08-23 16:02:05'),
(44, 41, 'Available', 22, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-23 16:19:21', '2021-08-23 16:19:21'),
(45, 41, 'Available', 22, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 16:19:21', '2021-08-23 16:19:21'),
(46, 41, 'Available', 22, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 16:19:21', '2021-08-23 16:19:21'),
(47, 41, 'Available', 22, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 16:19:21', '2021-08-23 16:19:21'),
(48, 41, 'Available', 22, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 16:19:21', '2021-08-23 16:19:21'),
(49, 42, 'Available', 37, 1, 7, '2021-08-26', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(50, 42, 'Available', 37, 1, 7, '2021-08-27', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(51, 42, 'Available', 37, 1, 7, '2021-08-28', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(52, 42, 'Available', 37, 1, 7, '2021-08-29', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(53, 42, 'Available', 37, 1, 7, '2021-08-30', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(54, 42, 'Available', 37, 1, 7, '2021-08-31', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(55, 42, 'Available', 37, 1, 7, '2021-09-01', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(56, 42, 'Available', 37, 1, 7, '2021-09-02', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(57, 42, 'Available', 37, 1, 7, '2021-09-03', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(58, 42, 'Available', 37, 1, 7, '2021-09-04', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(59, 42, 'Available', 37, 1, 7, '2021-09-05', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(60, 42, 'Available', 37, 1, 7, '2021-09-06', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(61, 42, 'Available', 37, 1, 7, '2021-09-07', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(62, 42, 'Available', 37, 1, 7, '2021-09-08', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(63, 42, 'Available', 37, 1, 7, '2021-09-09', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(64, 42, 'Available', 37, 1, 7, '2021-09-10', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(65, 42, 'Available', 37, 1, 7, '2021-09-11', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(66, 42, 'Available', 37, 1, 7, '2021-09-12', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(67, 42, 'Available', 37, 1, 7, '2021-09-13', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(68, 42, 'Available', 37, 1, 7, '2021-09-14', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(69, 42, 'Available', 37, 1, 7, '2021-09-15', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(70, 42, 'Available', 37, 1, 7, '2021-09-16', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(71, 42, 'Available', 37, 1, 7, '2021-09-17', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(72, 42, 'Available', 37, 1, 7, '2021-09-18', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(73, 42, 'Available', 37, 1, 7, '2021-09-19', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(74, 42, 'Available', 37, 1, 7, '2021-09-20', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(75, 42, 'Available', 37, 1, 7, '2021-09-21', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(76, 42, 'Available', 37, 1, 7, '2021-09-22', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(77, 42, 'Available', 37, 1, 7, '2021-09-23', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(78, 42, 'Available', 37, 1, 7, '2021-09-24', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(79, 42, 'Available', 37, 1, 7, '2021-09-25', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(80, 42, 'Available', 37, 1, 7, '2021-09-26', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(81, 42, 'Available', 37, 1, 7, '2021-09-27', NULL, 'normal', '2021-08-23 16:31:56', '2021-08-23 16:31:56'),
(82, 43, 'Available', 42, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(83, 43, 'Available', 42, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(84, 43, 'Available', 42, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(85, 43, 'Available', 42, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(86, 43, 'Available', 42, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(87, 43, 'Available', 42, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(88, 43, 'Available', 42, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(89, 43, 'Available', 42, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(90, 43, 'Available', 42, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 16:40:28', '2021-08-23 16:40:28'),
(91, 44, 'Available', 25, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(92, 44, 'Available', 25, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(93, 44, 'Available', 25, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(94, 44, 'Available', 25, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(95, 44, 'Available', 25, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(96, 44, 'Available', 25, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(97, 44, 'Available', 25, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(98, 44, 'Available', 25, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(99, 44, 'Available', 25, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(100, 44, 'Available', 25, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(101, 44, 'Available', 25, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(102, 44, 'Available', 25, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(103, 44, 'Available', 25, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(104, 44, 'Available', 25, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(105, 44, 'Available', 25, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(106, 44, 'Available', 25, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(107, 44, 'Available', 25, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(108, 44, 'Available', 25, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(109, 44, 'Available', 25, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(110, 44, 'Available', 25, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(111, 44, 'Available', 25, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(112, 44, 'Available', 25, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 16:45:36', '2021-08-23 16:45:36'),
(113, 44, 'Available', 25, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(114, 44, 'Available', 25, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(115, 44, 'Available', 25, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(116, 44, 'Available', 25, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(117, 44, 'Available', 25, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(118, 44, 'Available', 25, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(119, 44, 'Available', 25, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(120, 44, 'Available', 25, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(121, 44, 'Available', 25, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-23 16:45:37', '2021-08-23 16:45:37'),
(122, 44, 'Available', 25, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(123, 44, 'Available', 25, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(124, 44, 'Available', 25, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(125, 44, 'Available', 25, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(126, 44, 'Available', 25, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(127, 44, 'Available', 25, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(128, 44, 'Available', 25, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(129, 44, 'Available', 25, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(130, 44, 'Available', 25, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(131, 44, 'Available', 25, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(132, 44, 'Available', 25, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-23 16:50:59', '2021-08-23 16:50:59'),
(133, 45, 'Available', 25, 0, 0, '2021-11-01', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(134, 45, 'Available', 25, 0, 0, '2021-11-02', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(135, 45, 'Available', 25, 0, 0, '2021-11-03', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(136, 45, 'Available', 25, 0, 0, '2021-11-04', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(137, 45, 'Available', 25, 0, 0, '2021-11-05', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(138, 45, 'Available', 25, 0, 0, '2021-11-06', NULL, 'normal', '2021-08-23 16:59:14', '2021-08-23 16:59:14'),
(139, 46, 'Available', 24, 0, 0, '2021-11-01', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(140, 46, 'Available', 24, 0, 0, '2021-11-02', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(141, 46, 'Available', 24, 0, 0, '2021-11-03', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(142, 46, 'Available', 24, 0, 0, '2021-11-04', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(143, 46, 'Available', 24, 0, 0, '2021-11-05', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(144, 46, 'Available', 24, 0, 0, '2021-11-06', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(145, 46, 'Available', 24, 0, 0, '2021-11-07', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(146, 46, 'Available', 24, 0, 0, '2021-11-08', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(147, 46, 'Available', 24, 0, 0, '2021-11-09', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(148, 46, 'Available', 24, 0, 0, '2021-11-10', NULL, 'normal', '2021-08-23 17:13:30', '2021-08-23 17:13:30'),
(149, 47, 'Available', 50, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(150, 47, 'Available', 50, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(151, 47, 'Available', 50, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(152, 47, 'Available', 50, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(153, 47, 'Available', 50, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(154, 47, 'Available', 50, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(155, 47, 'Available', 50, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(156, 47, 'Available', 50, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(157, 47, 'Available', 50, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(158, 47, 'Available', 50, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(159, 47, 'Available', 50, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(160, 47, 'Available', 50, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(161, 47, 'Available', 50, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(162, 47, 'Available', 50, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(163, 47, 'Available', 50, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(164, 47, 'Available', 50, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 17:20:51', '2021-08-23 17:20:51'),
(165, 48, 'Available', 20, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(166, 48, 'Available', 20, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(167, 48, 'Available', 20, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(168, 48, 'Available', 20, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(169, 48, 'Available', 20, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(170, 48, 'Available', 20, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(171, 48, 'Available', 20, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(172, 48, 'Available', 20, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(173, 48, 'Available', 20, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(174, 48, 'Available', 20, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(175, 48, 'Available', 20, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(176, 48, 'Available', 20, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(177, 48, 'Available', 20, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(178, 48, 'Available', 20, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 17:34:47', '2021-08-23 17:34:47'),
(179, 49, 'Available', 70, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(180, 49, 'Available', 70, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(181, 49, 'Available', 70, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(182, 49, 'Available', 70, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(183, 49, 'Available', 70, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(184, 49, 'Available', 70, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(185, 49, 'Available', 70, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(186, 49, 'Available', 70, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(187, 49, 'Available', 70, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(188, 49, 'Available', 70, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(189, 49, 'Available', 70, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(190, 49, 'Available', 70, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(191, 49, 'Available', 70, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(192, 49, 'Available', 70, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(193, 49, 'Available', 70, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(194, 49, 'Available', 70, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(195, 49, 'Available', 70, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(196, 49, 'Available', 70, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(197, 49, 'Available', 70, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(198, 49, 'Available', 70, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(199, 49, 'Available', 70, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(200, 49, 'Available', 70, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(201, 49, 'Available', 70, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(202, 49, 'Available', 70, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(203, 49, 'Available', 70, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(204, 49, 'Available', 70, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(205, 49, 'Available', 70, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(206, 49, 'Available', 70, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(207, 49, 'Available', 70, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(208, 49, 'Available', 70, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(209, 49, 'Available', 70, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(210, 49, 'Available', 70, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(211, 49, 'Available', 70, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(212, 49, 'Available', 70, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-23 17:41:36', '2021-08-23 17:41:36'),
(213, 48, 'Available', 20, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(214, 48, 'Available', 20, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(215, 48, 'Available', 20, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(216, 48, 'Available', 20, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(217, 48, 'Available', 20, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(218, 48, 'Available', 20, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 17:45:08', '2021-08-23 17:45:08'),
(219, 47, 'Available', 50, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(220, 47, 'Available', 50, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(221, 47, 'Available', 50, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(222, 47, 'Available', 50, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(223, 47, 'Available', 50, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(224, 47, 'Available', 50, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(225, 47, 'Available', 50, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(226, 47, 'Available', 50, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 17:48:27', '2021-08-23 17:48:27'),
(227, 48, 'Available', 20, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(228, 48, 'Available', 20, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(229, 48, 'Available', 20, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(230, 48, 'Available', 20, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(231, 48, 'Available', 20, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(232, 48, 'Available', 20, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(233, 48, 'Available', 20, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(234, 48, 'Available', 20, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(235, 48, 'Available', 20, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 17:50:20', '2021-08-23 17:50:20'),
(236, 46, 'Available', 24, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(237, 46, 'Available', 24, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(238, 46, 'Available', 24, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(239, 46, 'Available', 24, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(240, 46, 'Available', 24, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(241, 46, 'Available', 24, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(242, 46, 'Available', 24, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(243, 46, 'Available', 24, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(244, 46, 'Available', 24, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(245, 46, 'Available', 24, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(246, 46, 'Available', 24, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(247, 46, 'Available', 24, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(248, 46, 'Available', 24, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(249, 46, 'Available', 24, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(250, 46, 'Available', 24, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(251, 46, 'Available', 24, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 17:53:25', '2021-08-23 17:53:25'),
(252, 45, 'Available', 25, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(253, 45, 'Available', 25, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(254, 45, 'Available', 25, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(255, 45, 'Available', 25, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(256, 45, 'Available', 25, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(257, 45, 'Available', 25, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(258, 45, 'Available', 25, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(259, 45, 'Available', 25, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(260, 45, 'Available', 25, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(261, 45, 'Available', 25, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(262, 45, 'Available', 25, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(263, 45, 'Available', 25, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(264, 45, 'Available', 25, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(265, 45, 'Available', 25, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(266, 45, 'Available', 25, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(267, 45, 'Available', 25, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(268, 45, 'Available', 25, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(269, 45, 'Available', 25, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(270, 45, 'Available', 25, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(271, 45, 'Available', 25, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(272, 45, 'Available', 25, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(273, 45, 'Available', 25, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(274, 45, 'Available', 25, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(275, 45, 'Available', 25, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 17:55:15', '2021-08-23 17:55:15'),
(276, 45, 'Available', 25, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-23 17:57:08', '2021-08-23 17:57:08'),
(277, 45, 'Available', 25, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-23 17:57:08', '2021-08-23 17:57:08'),
(278, 45, 'Available', 25, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 17:57:08', '2021-08-23 17:57:08'),
(279, 45, 'Available', 25, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 17:57:08', '2021-08-23 17:57:08'),
(280, 45, 'Available', 25, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 17:57:08', '2021-08-23 17:57:08'),
(281, 50, 'Available', 15, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-23 18:03:01', '2021-08-23 18:03:01'),
(282, 50, 'Available', 15, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-23 18:03:01', '2021-08-23 18:03:01'),
(283, 50, 'Available', 15, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(284, 50, 'Available', 15, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(285, 50, 'Available', 15, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(286, 50, 'Available', 15, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(287, 50, 'Available', 15, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(288, 50, 'Available', 15, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(289, 50, 'Available', 15, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(290, 50, 'Available', 15, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(291, 50, 'Available', 15, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(292, 50, 'Available', 15, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(293, 50, 'Available', 15, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(294, 50, 'Available', 15, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(295, 50, 'Available', 15, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(296, 50, 'Available', 15, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(297, 50, 'Available', 15, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(298, 50, 'Available', 15, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(299, 50, 'Available', 15, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(300, 50, 'Available', 15, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(301, 50, 'Available', 15, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(302, 50, 'Available', 15, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(303, 50, 'Available', 15, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(304, 50, 'Available', 15, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(305, 50, 'Available', 15, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(306, 50, 'Available', 15, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(307, 50, 'Available', 15, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 18:03:02', '2021-08-23 18:03:02'),
(308, 51, 'Available', 40, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(309, 51, 'Available', 40, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(310, 51, 'Available', 40, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(311, 51, 'Available', 40, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(312, 51, 'Available', 40, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(313, 51, 'Available', 40, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(314, 51, 'Available', 40, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(315, 51, 'Available', 40, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(316, 51, 'Available', 40, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(317, 51, 'Available', 40, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(318, 51, 'Available', 40, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(319, 51, 'Available', 40, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(320, 51, 'Available', 40, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(321, 51, 'Available', 40, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(322, 51, 'Available', 40, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(323, 51, 'Available', 40, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(324, 51, 'Available', 40, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 18:10:10', '2021-08-23 18:10:10'),
(325, 51, 'Available', 40, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(326, 51, 'Available', 40, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(327, 51, 'Available', 40, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(328, 51, 'Available', 40, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(329, 51, 'Available', 40, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(330, 51, 'Available', 40, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(331, 51, 'Available', 40, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(332, 51, 'Available', 40, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(333, 51, 'Available', 40, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(334, 51, 'Available', 40, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(335, 51, 'Available', 40, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(336, 51, 'Available', 40, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(337, 51, 'Available', 40, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(338, 51, 'Available', 40, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(339, 51, 'Available', 40, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(340, 51, 'Available', 40, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(341, 51, 'Available', 40, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(342, 51, 'Available', 40, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(343, 51, 'Available', 40, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(344, 51, 'Available', 40, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(345, 51, 'Available', 40, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(346, 51, 'Available', 40, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(347, 51, 'Available', 40, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(348, 51, 'Available', 40, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(349, 51, 'Available', 40, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(350, 51, 'Available', 40, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(351, 51, 'Available', 40, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(352, 51, 'Available', 40, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(353, 51, 'Available', 40, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(354, 51, 'Available', 40, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(355, 51, 'Available', 40, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(356, 51, 'Available', 40, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(357, 51, 'Available', 40, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(358, 51, 'Available', 40, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(359, 51, 'Available', 40, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(360, 51, 'Available', 40, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-23 18:13:28', '2021-08-23 18:13:28'),
(361, 52, 'Available', 35, 0, 0, '2021-11-01', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(362, 52, 'Available', 35, 0, 0, '2021-11-02', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(363, 52, 'Available', 35, 0, 0, '2021-11-03', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(364, 52, 'Available', 35, 0, 0, '2021-11-04', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(365, 52, 'Available', 35, 0, 0, '2021-11-05', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(366, 52, 'Available', 35, 0, 0, '2021-11-06', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(367, 52, 'Available', 35, 0, 0, '2021-11-07', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(368, 52, 'Available', 35, 0, 0, '2021-11-08', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(369, 52, 'Available', 35, 0, 0, '2021-11-09', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(370, 52, 'Available', 35, 0, 0, '2021-11-10', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(371, 52, 'Available', 35, 0, 0, '2021-11-11', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(372, 52, 'Available', 35, 0, 0, '2021-11-12', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(373, 52, 'Available', 35, 0, 0, '2021-11-13', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(374, 52, 'Available', 35, 0, 0, '2021-11-14', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(375, 52, 'Available', 35, 0, 0, '2021-11-15', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(376, 52, 'Available', 35, 0, 0, '2021-11-16', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(377, 52, 'Available', 35, 0, 0, '2021-11-17', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(378, 52, 'Available', 35, 0, 0, '2021-11-18', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(379, 52, 'Available', 35, 0, 0, '2021-11-19', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(380, 52, 'Available', 35, 0, 0, '2021-11-20', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(381, 52, 'Available', 35, 0, 0, '2021-11-21', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(382, 52, 'Available', 35, 0, 0, '2021-11-22', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(383, 52, 'Available', 35, 0, 0, '2021-11-23', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(384, 52, 'Available', 35, 0, 0, '2021-11-24', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(385, 52, 'Available', 35, 0, 0, '2021-11-25', NULL, 'normal', '2021-08-23 18:20:10', '2021-08-23 18:20:10'),
(386, 53, 'Available', 47, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(387, 53, 'Available', 47, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(388, 53, 'Available', 47, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(389, 53, 'Available', 47, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(390, 53, 'Available', 47, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(391, 53, 'Available', 47, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(392, 53, 'Available', 47, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 18:51:44', '2021-08-23 18:51:44'),
(393, 54, 'Available', 85, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 18:57:06', '2021-08-23 18:57:06'),
(394, 54, 'Available', 85, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 18:57:06', '2021-08-23 18:57:06'),
(395, 54, 'Available', 85, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 18:57:06', '2021-08-23 18:57:06'),
(396, 54, 'Available', 85, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 18:57:06', '2021-08-23 18:57:06'),
(397, 55, 'Available', 55, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(398, 55, 'Available', 55, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(399, 55, 'Available', 55, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(400, 55, 'Available', 55, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(401, 55, 'Available', 55, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(402, 55, 'Available', 55, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(403, 55, 'Available', 55, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(404, 55, 'Available', 55, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(405, 55, 'Available', 55, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(406, 55, 'Available', 55, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(407, 55, 'Available', 55, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(408, 55, 'Available', 55, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(409, 55, 'Available', 55, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(410, 55, 'Available', 55, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(411, 55, 'Available', 55, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(412, 55, 'Available', 55, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(413, 55, 'Available', 55, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(414, 55, 'Available', 55, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(415, 55, 'Available', 55, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(416, 55, 'Available', 55, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(417, 55, 'Available', 55, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(418, 55, 'Available', 55, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(419, 55, 'Available', 55, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(420, 55, 'Available', 55, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(421, 55, 'Available', 55, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(422, 55, 'Available', 55, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(423, 55, 'Available', 55, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(424, 55, 'Available', 55, 0, 0, '2021-10-29', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(425, 55, 'Available', 55, 0, 0, '2021-10-30', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(426, 55, 'Available', 55, 0, 0, '2021-10-31', NULL, 'normal', '2021-08-23 19:03:12', '2021-08-23 19:03:12'),
(427, 56, 'Available', 70, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(428, 56, 'Available', 70, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(429, 56, 'Available', 70, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(430, 56, 'Available', 70, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(431, 56, 'Available', 70, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(432, 56, 'Available', 70, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(433, 56, 'Available', 70, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(434, 56, 'Available', 70, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(435, 56, 'Available', 70, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-23 19:10:39', '2021-08-23 19:10:39'),
(436, 57, 'Available', 45, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(437, 57, 'Available', 45, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(438, 57, 'Available', 45, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(439, 57, 'Available', 45, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(440, 57, 'Available', 45, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(441, 57, 'Available', 45, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(442, 57, 'Available', 45, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(443, 57, 'Available', 45, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(444, 57, 'Available', 45, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(445, 57, 'Available', 45, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(446, 57, 'Available', 45, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(447, 57, 'Available', 45, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(448, 57, 'Available', 45, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(449, 57, 'Available', 45, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-23 19:15:17', '2021-08-23 19:15:17'),
(450, 58, 'Available', 25, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(451, 58, 'Available', 25, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(452, 58, 'Available', 25, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(453, 58, 'Available', 25, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(454, 58, 'Available', 25, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(455, 58, 'Available', 25, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(456, 58, 'Available', 25, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(457, 58, 'Available', 25, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(458, 58, 'Available', 25, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-23 19:20:43', '2021-08-23 19:20:43'),
(459, 59, 'Available', 85, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(460, 59, 'Available', 85, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(461, 59, 'Available', 85, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(462, 59, 'Available', 85, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11');
INSERT INTO `property_dates` (`id`, `property_id`, `status`, `price`, `min_stay`, `min_day`, `date`, `color`, `type`, `created_at`, `updated_at`) VALUES
(463, 59, 'Available', 85, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(464, 59, 'Available', 85, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(465, 59, 'Available', 85, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(466, 59, 'Available', 85, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(467, 59, 'Available', 85, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(468, 59, 'Available', 85, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(469, 59, 'Available', 85, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(470, 59, 'Available', 85, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-23 19:28:11', '2021-08-23 19:28:11'),
(471, 60, 'Available', 35, 0, 0, '2021-08-15', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(472, 60, 'Available', 35, 0, 0, '2021-08-16', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(473, 60, 'Available', 35, 0, 0, '2021-08-17', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(474, 60, 'Available', 35, 0, 0, '2021-08-18', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(475, 60, 'Available', 35, 0, 0, '2021-08-19', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(476, 60, 'Available', 35, 0, 0, '2021-08-20', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(477, 60, 'Available', 35, 0, 0, '2021-08-21', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(478, 60, 'Available', 35, 0, 0, '2021-08-22', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(479, 60, 'Available', 35, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(480, 60, 'Available', 35, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(481, 60, 'Available', 35, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(482, 60, 'Available', 35, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(483, 60, 'Available', 35, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(484, 60, 'Available', 35, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(485, 60, 'Available', 35, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(486, 60, 'Available', 35, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(487, 60, 'Available', 35, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-24 09:25:26', '2021-08-24 09:25:26'),
(488, 59, 'Available', 85, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(489, 59, 'Available', 85, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(490, 59, 'Available', 85, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(491, 59, 'Available', 85, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(492, 59, 'Available', 85, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(493, 59, 'Available', 85, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(494, 59, 'Available', 85, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(495, 59, 'Available', 85, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(496, 59, 'Available', 85, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(497, 59, 'Available', 85, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(498, 59, 'Available', 85, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(499, 59, 'Available', 85, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(500, 59, 'Available', 85, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(501, 59, 'Available', 85, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(502, 59, 'Available', 85, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(503, 59, 'Available', 85, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(504, 59, 'Available', 85, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(505, 59, 'Available', 85, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(506, 59, 'Available', 85, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(507, 59, 'Available', 85, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(508, 59, 'Available', 85, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(509, 59, 'Available', 85, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(510, 59, 'Available', 85, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(511, 59, 'Available', 85, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(512, 59, 'Available', 85, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-24 10:06:09', '2021-08-24 10:06:09'),
(513, 57, 'Available', 45, 0, 0, '2021-08-24', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(514, 57, 'Available', 45, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(515, 57, 'Available', 45, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(516, 57, 'Available', 45, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(517, 57, 'Available', 45, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(518, 57, 'Available', 45, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(519, 57, 'Available', 45, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(520, 57, 'Available', 45, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-24 10:11:54', '2021-08-24 10:11:54'),
(521, 57, 'Available', 45, 0, 0, '2021-08-01', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(522, 57, 'Available', 45, 0, 0, '2021-08-02', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(523, 57, 'Available', 45, 0, 0, '2021-08-03', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(524, 57, 'Available', 45, 0, 0, '2021-08-04', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(525, 57, 'Available', 45, 0, 0, '2021-08-05', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(526, 57, 'Available', 45, 0, 0, '2021-08-06', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(527, 57, 'Available', 45, 0, 0, '2021-08-07', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(528, 57, 'Available', 45, 0, 0, '2021-08-08', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(529, 57, 'Available', 45, 0, 0, '2021-08-09', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(530, 57, 'Available', 45, 0, 0, '2021-08-10', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(531, 57, 'Available', 45, 0, 0, '2021-08-11', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(532, 57, 'Available', 45, 0, 0, '2021-08-12', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(533, 57, 'Available', 45, 0, 0, '2021-08-13', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(534, 57, 'Available', 45, 0, 0, '2021-08-14', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(535, 57, 'Available', 45, 0, 0, '2021-08-15', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(536, 57, 'Available', 45, 0, 0, '2021-08-16', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(537, 57, 'Available', 45, 0, 0, '2021-08-17', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(538, 57, 'Available', 45, 0, 0, '2021-08-18', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(539, 57, 'Available', 45, 0, 0, '2021-08-19', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(540, 57, 'Available', 45, 0, 0, '2021-08-20', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(541, 57, 'Available', 45, 0, 0, '2021-08-21', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(542, 57, 'Available', 45, 0, 0, '2021-08-22', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(543, 57, 'Available', 45, 0, 0, '2021-08-23', NULL, 'normal', '2021-08-24 11:29:48', '2021-08-24 11:29:48'),
(544, 62, 'Available', 100, 1, 2, '2021-08-26', NULL, 'normal', '2021-08-24 16:54:21', '2021-08-24 16:54:21'),
(545, 58, 'Available', 25, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(546, 58, 'Available', 25, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(547, 58, 'Available', 25, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(548, 58, 'Available', 25, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(549, 58, 'Available', 25, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(550, 58, 'Available', 25, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(551, 58, 'Available', 25, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(552, 58, 'Available', 25, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(553, 58, 'Available', 25, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(554, 58, 'Available', 25, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(555, 58, 'Available', 25, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(556, 58, 'Available', 25, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(557, 58, 'Available', 25, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(558, 58, 'Available', 25, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(559, 58, 'Available', 25, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(560, 58, 'Available', 25, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(561, 58, 'Available', 25, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(562, 58, 'Available', 25, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(563, 58, 'Available', 25, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(564, 58, 'Available', 25, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(565, 58, 'Available', 25, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(566, 58, 'Available', 25, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(567, 58, 'Available', 25, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(568, 58, 'Available', 25, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(569, 58, 'Available', 25, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(570, 58, 'Available', 25, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(571, 58, 'Available', 25, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(572, 58, 'Available', 25, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(573, 58, 'Available', 25, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(574, 58, 'Available', 25, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(575, 58, 'Available', 25, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(576, 58, 'Available', 25, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(577, 58, 'Available', 25, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(578, 58, 'Available', 25, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(579, 58, 'Available', 25, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(580, 58, 'Available', 25, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(581, 58, 'Available', 25, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(582, 58, 'Available', 25, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(583, 58, 'Available', 25, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(584, 58, 'Available', 25, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(585, 58, 'Available', 25, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(586, 58, 'Available', 25, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(587, 58, 'Available', 25, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(588, 58, 'Available', 25, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(589, 58, 'Available', 25, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(590, 58, 'Available', 25, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(591, 58, 'Available', 25, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(592, 58, 'Available', 25, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(593, 58, 'Available', 25, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(594, 58, 'Available', 25, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(595, 58, 'Available', 25, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(596, 58, 'Available', 25, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(597, 58, 'Available', 25, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(598, 58, 'Available', 25, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(599, 58, 'Available', 25, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(600, 58, 'Available', 25, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(601, 58, 'Available', 25, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(602, 58, 'Available', 25, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-25 18:12:20', '2021-08-25 18:12:20'),
(603, 56, 'Available', 70, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(604, 56, 'Available', 70, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(605, 56, 'Available', 70, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(606, 56, 'Available', 70, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(607, 56, 'Available', 70, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(608, 56, 'Available', 70, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(609, 56, 'Available', 70, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(610, 56, 'Available', 70, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(611, 56, 'Available', 70, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(612, 56, 'Available', 70, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(613, 56, 'Available', 70, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(614, 56, 'Available', 70, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(615, 56, 'Available', 70, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(616, 56, 'Available', 70, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(617, 56, 'Available', 70, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(618, 56, 'Available', 70, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(619, 56, 'Available', 70, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(620, 56, 'Available', 70, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(621, 56, 'Available', 70, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(622, 56, 'Available', 70, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(623, 56, 'Available', 70, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(624, 56, 'Available', 70, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(625, 56, 'Available', 70, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(626, 56, 'Available', 70, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(627, 56, 'Available', 70, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(628, 56, 'Available', 70, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:22:45', '2021-08-25 18:22:45'),
(629, 55, 'Available', 55, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(630, 55, 'Available', 55, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(631, 55, 'Available', 55, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(632, 55, 'Available', 55, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(633, 55, 'Available', 55, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(634, 55, 'Available', 55, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(635, 55, 'Available', 55, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(636, 55, 'Available', 55, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(637, 55, 'Available', 55, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(638, 55, 'Available', 55, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(639, 55, 'Available', 55, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(640, 55, 'Available', 55, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(641, 55, 'Available', 55, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(642, 55, 'Available', 55, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(643, 55, 'Available', 55, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(644, 55, 'Available', 55, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(645, 55, 'Available', 55, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(646, 55, 'Available', 55, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(647, 55, 'Available', 55, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(648, 55, 'Available', 55, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(649, 55, 'Available', 55, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(650, 55, 'Available', 55, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(651, 55, 'Available', 55, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(652, 55, 'Available', 55, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(653, 55, 'Available', 55, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(654, 55, 'Available', 55, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(655, 55, 'Available', 55, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 18:30:50', '2021-08-25 18:30:50'),
(656, 54, 'Available', 85, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(657, 54, 'Available', 85, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(658, 54, 'Available', 85, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(659, 54, 'Available', 85, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(660, 54, 'Available', 85, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(661, 54, 'Available', 85, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(662, 54, 'Available', 85, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(663, 54, 'Available', 85, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(664, 54, 'Available', 85, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(665, 54, 'Available', 85, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(666, 54, 'Available', 85, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(667, 54, 'Available', 85, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(668, 54, 'Available', 85, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(669, 54, 'Available', 85, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(670, 54, 'Available', 85, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(671, 54, 'Available', 85, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(672, 54, 'Available', 85, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(673, 54, 'Available', 85, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(674, 54, 'Available', 85, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(675, 54, 'Available', 85, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(676, 54, 'Available', 85, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(677, 54, 'Available', 85, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(678, 54, 'Available', 85, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(679, 54, 'Available', 85, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(680, 54, 'Available', 85, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(681, 54, 'Available', 85, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(682, 54, 'Available', 85, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(683, 54, 'Available', 85, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(684, 54, 'Available', 85, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(685, 54, 'Available', 85, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(686, 54, 'Available', 85, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(687, 54, 'Available', 85, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(688, 54, 'Available', 85, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(689, 54, 'Available', 85, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(690, 54, 'Available', 85, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(691, 54, 'Available', 85, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(692, 54, 'Available', 85, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(693, 54, 'Available', 85, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(694, 54, 'Available', 85, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(695, 54, 'Available', 85, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(696, 54, 'Available', 85, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(697, 54, 'Available', 85, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(698, 54, 'Available', 85, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(699, 54, 'Available', 85, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(700, 54, 'Available', 85, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(701, 54, 'Available', 85, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(702, 54, 'Available', 85, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(703, 54, 'Available', 85, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(704, 54, 'Available', 85, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(705, 54, 'Available', 85, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(706, 54, 'Available', 85, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(707, 54, 'Available', 85, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(708, 54, 'Available', 85, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(709, 54, 'Available', 85, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(710, 54, 'Available', 85, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(711, 54, 'Available', 85, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(712, 54, 'Available', 85, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(713, 54, 'Available', 85, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(714, 54, 'Available', 85, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(715, 54, 'Available', 85, 0, 0, '2021-10-29', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(716, 54, 'Available', 85, 0, 0, '2021-10-30', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(717, 54, 'Available', 85, 0, 0, '2021-10-31', NULL, 'normal', '2021-08-25 18:36:27', '2021-08-25 18:36:27'),
(718, 53, 'Available', 47, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(719, 53, 'Available', 47, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(720, 53, 'Available', 47, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(721, 53, 'Available', 47, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(722, 53, 'Available', 47, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(723, 53, 'Available', 47, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(724, 53, 'Available', 47, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(725, 53, 'Available', 47, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(726, 53, 'Available', 47, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(727, 53, 'Available', 47, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(728, 53, 'Available', 47, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(729, 53, 'Available', 47, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(730, 53, 'Available', 47, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(731, 53, 'Available', 47, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(732, 53, 'Available', 47, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(733, 53, 'Available', 47, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(734, 53, 'Available', 47, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(735, 53, 'Available', 47, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(736, 53, 'Available', 47, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(737, 53, 'Available', 47, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(738, 53, 'Available', 47, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(739, 53, 'Available', 47, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(740, 53, 'Available', 47, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(741, 53, 'Available', 47, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(742, 53, 'Available', 47, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(743, 53, 'Available', 47, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(744, 53, 'Available', 47, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(745, 53, 'Available', 47, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(746, 53, 'Available', 47, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(747, 53, 'Available', 47, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 18:45:23', '2021-08-25 18:45:23'),
(748, 52, 'Available', 35, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(749, 52, 'Available', 35, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(750, 52, 'Available', 35, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(751, 52, 'Available', 35, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(752, 52, 'Available', 35, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(753, 52, 'Available', 35, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(754, 52, 'Available', 35, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(755, 52, 'Available', 35, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(756, 52, 'Available', 35, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(757, 52, 'Available', 35, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(758, 52, 'Available', 35, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(759, 52, 'Available', 35, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(760, 52, 'Available', 35, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(761, 52, 'Available', 35, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(762, 52, 'Available', 35, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(763, 52, 'Available', 35, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(764, 52, 'Available', 35, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(765, 52, 'Available', 35, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(766, 52, 'Available', 35, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(767, 52, 'Available', 35, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(768, 52, 'Available', 35, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(769, 52, 'Available', 35, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(770, 52, 'Available', 35, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(771, 52, 'Available', 35, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(772, 52, 'Available', 35, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(773, 52, 'Available', 35, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(774, 52, 'Available', 35, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(775, 52, 'Available', 35, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(776, 52, 'Available', 35, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(777, 52, 'Available', 35, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(778, 52, 'Available', 35, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(779, 52, 'Available', 35, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(780, 52, 'Available', 35, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(781, 52, 'Available', 35, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(782, 52, 'Available', 35, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 18:52:53', '2021-08-25 18:52:53'),
(783, 51, 'Available', 40, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(784, 51, 'Available', 40, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(785, 51, 'Available', 40, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(786, 51, 'Available', 40, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(787, 51, 'Available', 40, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(788, 51, 'Available', 40, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(789, 51, 'Available', 40, 0, 0, '2021-10-29', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(790, 51, 'Available', 40, 0, 0, '2021-10-30', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(791, 51, 'Available', 40, 0, 0, '2021-10-31', NULL, 'normal', '2021-08-25 19:00:56', '2021-08-25 19:00:56'),
(792, 50, 'Available', 15, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(793, 50, 'Available', 15, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(794, 50, 'Available', 15, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(795, 50, 'Available', 15, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(796, 50, 'Available', 15, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(797, 50, 'Available', 15, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(798, 50, 'Available', 15, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(799, 50, 'Available', 15, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(800, 50, 'Available', 15, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(801, 50, 'Available', 15, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 19:05:30', '2021-08-25 19:05:30'),
(802, 49, 'Available', 70, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(803, 49, 'Available', 70, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(804, 49, 'Available', 70, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(805, 49, 'Available', 70, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(806, 49, 'Available', 70, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(807, 49, 'Available', 70, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(808, 49, 'Available', 70, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(809, 49, 'Available', 70, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(810, 49, 'Available', 70, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(811, 49, 'Available', 70, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(812, 49, 'Available', 70, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 19:08:56', '2021-08-25 19:08:56'),
(813, 48, 'Available', 20, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(814, 48, 'Available', 20, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(815, 48, 'Available', 20, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(816, 48, 'Available', 20, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(817, 48, 'Available', 20, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(818, 48, 'Available', 20, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(819, 48, 'Available', 20, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(820, 48, 'Available', 20, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 19:12:17', '2021-08-25 19:12:17'),
(821, 47, 'Available', 50, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(822, 47, 'Available', 50, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(823, 47, 'Available', 50, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(824, 47, 'Available', 50, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(825, 47, 'Available', 50, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(826, 47, 'Available', 50, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(827, 47, 'Available', 50, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(828, 47, 'Available', 50, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(829, 47, 'Available', 50, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(830, 47, 'Available', 50, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(831, 47, 'Available', 50, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(832, 47, 'Available', 50, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 19:19:58', '2021-08-25 19:19:58'),
(833, 46, 'Available', 24, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(834, 46, 'Available', 24, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(835, 46, 'Available', 24, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(836, 46, 'Available', 24, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(837, 46, 'Available', 24, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(838, 46, 'Available', 24, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 19:27:08', '2021-08-25 19:27:08'),
(839, 45, 'Available', 25, 0, 0, '2021-08-25', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(840, 45, 'Available', 25, 0, 0, '2021-08-26', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(841, 45, 'Available', 25, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(842, 45, 'Available', 25, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(843, 45, 'Available', 25, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(844, 45, 'Available', 25, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(845, 45, 'Available', 25, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(846, 45, 'Available', 25, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-25 19:31:43', '2021-08-25 19:31:43'),
(847, 44, 'Available', 25, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(848, 44, 'Available', 25, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(849, 44, 'Available', 25, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(850, 44, 'Available', 25, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(851, 44, 'Available', 25, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(852, 44, 'Available', 25, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(853, 44, 'Available', 25, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(854, 44, 'Available', 25, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(855, 44, 'Available', 25, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(856, 44, 'Available', 25, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(857, 44, 'Available', 25, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(858, 44, 'Available', 25, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(859, 44, 'Available', 25, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(860, 44, 'Available', 25, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(861, 44, 'Available', 25, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(862, 44, 'Available', 25, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(863, 44, 'Available', 25, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(864, 44, 'Available', 25, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(865, 44, 'Available', 25, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(866, 44, 'Available', 25, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(867, 44, 'Available', 25, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(868, 44, 'Available', 25, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(869, 44, 'Available', 25, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(870, 44, 'Available', 25, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(871, 44, 'Available', 25, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(872, 44, 'Available', 25, 0, 0, '2021-10-29', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(873, 44, 'Available', 25, 0, 0, '2021-10-30', NULL, 'normal', '2021-08-25 19:38:23', '2021-08-25 19:38:23'),
(874, 43, 'Available', 42, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(875, 43, 'Available', 42, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(876, 43, 'Available', 42, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(877, 43, 'Available', 42, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(878, 43, 'Available', 42, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(879, 43, 'Available', 42, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(880, 43, 'Available', 42, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(881, 43, 'Available', 42, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(882, 43, 'Available', 42, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(883, 43, 'Available', 42, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(884, 43, 'Available', 42, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(885, 43, 'Available', 42, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(886, 43, 'Available', 42, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(887, 43, 'Available', 42, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(888, 43, 'Available', 42, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(889, 43, 'Available', 42, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(890, 43, 'Available', 42, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(891, 43, 'Available', 42, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(892, 43, 'Available', 42, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(893, 43, 'Available', 42, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(894, 43, 'Available', 42, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(895, 43, 'Available', 42, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-25 19:45:20', '2021-08-25 19:45:20'),
(896, 43, 'Available', 42, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(897, 43, 'Available', 42, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(898, 43, 'Available', 42, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(899, 43, 'Available', 42, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(900, 43, 'Available', 42, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(901, 43, 'Available', 42, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(902, 43, 'Available', 42, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(903, 43, 'Available', 42, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(904, 43, 'Available', 42, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(905, 43, 'Available', 42, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(906, 43, 'Available', 42, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(907, 43, 'Available', 42, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(908, 43, 'Available', 42, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(909, 43, 'Available', 42, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(910, 43, 'Available', 42, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(911, 43, 'Available', 42, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(912, 43, 'Available', 42, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(913, 43, 'Available', 42, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(914, 43, 'Available', 42, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(915, 43, 'Available', 42, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(916, 43, 'Available', 42, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-25 19:45:21', '2021-08-25 19:45:21'),
(917, 41, 'Available', 22, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(918, 41, 'Available', 22, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(919, 41, 'Available', 22, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(920, 41, 'Available', 22, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(921, 41, 'Available', 22, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(922, 41, 'Available', 22, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(923, 41, 'Available', 22, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39');
INSERT INTO `property_dates` (`id`, `property_id`, `status`, `price`, `min_stay`, `min_day`, `date`, `color`, `type`, `created_at`, `updated_at`) VALUES
(924, 41, 'Available', 22, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(925, 41, 'Available', 22, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(926, 41, 'Available', 22, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(927, 41, 'Available', 22, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(928, 41, 'Available', 22, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(929, 41, 'Available', 22, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(930, 41, 'Available', 22, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(931, 41, 'Available', 22, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(932, 41, 'Available', 22, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(933, 41, 'Available', 22, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(934, 41, 'Available', 22, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(935, 41, 'Available', 22, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(936, 41, 'Available', 22, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(937, 41, 'Available', 22, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(938, 41, 'Available', 22, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(939, 41, 'Available', 22, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(940, 41, 'Available', 22, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(941, 41, 'Available', 22, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(942, 41, 'Available', 22, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(943, 41, 'Available', 22, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(944, 41, 'Available', 22, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(945, 41, 'Available', 22, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(946, 41, 'Available', 22, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(947, 41, 'Available', 22, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(948, 41, 'Available', 22, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(949, 41, 'Available', 22, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(950, 41, 'Available', 22, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-26 18:32:39', '2021-08-26 18:32:39'),
(951, 40, 'Available', 32, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(952, 40, 'Available', 32, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(953, 40, 'Available', 32, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(954, 40, 'Available', 32, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(955, 40, 'Available', 32, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(956, 40, 'Available', 32, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(957, 40, 'Available', 32, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(958, 40, 'Available', 32, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(959, 40, 'Available', 32, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(960, 40, 'Available', 32, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(961, 40, 'Available', 32, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(962, 40, 'Available', 32, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-26 18:38:23', '2021-08-26 18:38:23'),
(963, 63, 'Available', 25, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(964, 63, 'Available', 25, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(965, 63, 'Available', 25, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(966, 63, 'Available', 25, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(967, 63, 'Available', 25, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(968, 63, 'Available', 25, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(969, 63, 'Available', 25, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(970, 63, 'Available', 25, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(971, 63, 'Available', 25, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(972, 63, 'Available', 25, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(973, 63, 'Available', 25, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(974, 63, 'Available', 25, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(975, 63, 'Available', 25, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(976, 63, 'Available', 25, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(977, 63, 'Available', 25, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(978, 63, 'Available', 25, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(979, 63, 'Available', 25, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(980, 63, 'Available', 25, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(981, 63, 'Available', 25, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(982, 63, 'Available', 25, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(983, 63, 'Available', 25, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(984, 63, 'Available', 25, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(985, 63, 'Available', 25, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(986, 63, 'Available', 25, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(987, 63, 'Available', 25, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(988, 63, 'Available', 25, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(989, 63, 'Available', 25, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(990, 63, 'Available', 25, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(991, 63, 'Available', 25, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(992, 63, 'Available', 25, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(993, 63, 'Available', 25, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(994, 63, 'Available', 25, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(995, 63, 'Available', 25, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(996, 63, 'Available', 25, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(997, 63, 'Available', 25, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(998, 63, 'Available', 25, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(999, 63, 'Available', 25, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(1000, 63, 'Available', 25, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(1001, 63, 'Available', 25, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(1002, 63, 'Available', 25, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(1003, 63, 'Available', 25, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-26 18:49:59', '2021-08-26 18:49:59'),
(1004, 60, 'Available', 35, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1005, 60, 'Available', 35, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1006, 60, 'Available', 35, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1007, 60, 'Available', 35, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1008, 60, 'Available', 35, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1009, 60, 'Available', 35, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1010, 60, 'Available', 35, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1011, 60, 'Available', 35, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1012, 60, 'Available', 35, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1013, 60, 'Available', 35, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1014, 60, 'Available', 35, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1015, 60, 'Available', 35, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1016, 60, 'Available', 35, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1017, 60, 'Available', 35, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1018, 60, 'Available', 35, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1019, 60, 'Available', 35, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1020, 60, 'Available', 35, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1021, 60, 'Available', 35, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1022, 60, 'Available', 35, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1023, 60, 'Available', 35, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1024, 60, 'Available', 35, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1025, 60, 'Available', 35, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1026, 60, 'Available', 35, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1027, 60, 'Available', 35, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1028, 60, 'Available', 35, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1029, 60, 'Available', 35, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1030, 60, 'Available', 35, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1031, 60, 'Available', 35, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1032, 60, 'Available', 35, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1033, 60, 'Available', 35, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-26 18:56:36', '2021-08-26 18:56:36'),
(1034, 6, 'Available', 50, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1035, 6, 'Available', 50, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1036, 6, 'Available', 50, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1037, 6, 'Available', 50, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1038, 6, 'Available', 50, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1039, 6, 'Available', 50, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1040, 6, 'Available', 50, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1041, 6, 'Available', 50, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1042, 6, 'Available', 50, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1043, 6, 'Available', 50, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1044, 6, 'Available', 50, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1045, 6, 'Available', 50, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1046, 6, 'Available', 50, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1047, 6, 'Available', 50, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1048, 6, 'Available', 50, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1049, 6, 'Available', 50, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1050, 6, 'Available', 50, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1051, 6, 'Available', 50, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1052, 6, 'Available', 50, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1053, 6, 'Available', 50, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1054, 6, 'Available', 50, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1055, 6, 'Available', 50, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1056, 6, 'Available', 50, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1057, 6, 'Available', 50, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1058, 6, 'Available', 50, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1059, 6, 'Available', 50, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1060, 6, 'Available', 50, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1061, 6, 'Available', 50, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1062, 6, 'Available', 50, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1063, 6, 'Available', 50, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1064, 6, 'Available', 50, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1065, 6, 'Available', 50, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1066, 6, 'Available', 50, 0, 0, '2021-09-29', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1067, 6, 'Available', 50, 0, 0, '2021-09-30', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1068, 6, 'Available', 50, 0, 0, '2021-10-01', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1069, 6, 'Available', 50, 0, 0, '2021-10-02', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1070, 6, 'Available', 50, 0, 0, '2021-10-03', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1071, 6, 'Available', 50, 0, 0, '2021-10-04', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1072, 6, 'Available', 50, 0, 0, '2021-10-05', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1073, 6, 'Available', 50, 0, 0, '2021-10-06', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1074, 6, 'Available', 50, 0, 0, '2021-10-07', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1075, 6, 'Available', 50, 0, 0, '2021-10-08', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1076, 6, 'Available', 50, 0, 0, '2021-10-09', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1077, 6, 'Available', 50, 0, 0, '2021-10-10', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1078, 6, 'Available', 50, 0, 0, '2021-10-11', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1079, 6, 'Available', 50, 0, 0, '2021-10-12', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1080, 6, 'Available', 50, 0, 0, '2021-10-13', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1081, 6, 'Available', 50, 0, 0, '2021-10-14', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1082, 6, 'Available', 50, 0, 0, '2021-10-15', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1083, 6, 'Available', 50, 0, 0, '2021-10-16', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1084, 6, 'Available', 50, 0, 0, '2021-10-17', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1085, 6, 'Available', 50, 0, 0, '2021-10-18', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1086, 6, 'Available', 50, 0, 0, '2021-10-19', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1087, 6, 'Available', 50, 0, 0, '2021-10-20', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1088, 6, 'Available', 50, 0, 0, '2021-10-21', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1089, 6, 'Available', 50, 0, 0, '2021-10-22', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1090, 6, 'Available', 50, 0, 0, '2021-10-23', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1091, 6, 'Available', 50, 0, 0, '2021-10-24', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1092, 6, 'Available', 50, 0, 0, '2021-10-25', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1093, 6, 'Available', 50, 0, 0, '2021-10-26', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1094, 6, 'Available', 50, 0, 0, '2021-10-27', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1095, 6, 'Available', 50, 0, 0, '2021-10-28', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1096, 6, 'Available', 50, 0, 0, '2021-10-29', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1097, 6, 'Available', 50, 0, 0, '2021-10-30', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1098, 6, 'Available', 50, 0, 0, '2021-10-31', NULL, 'normal', '2021-08-27 11:17:17', '2021-08-27 11:17:17'),
(1099, 4, 'Available', 35, 0, 0, '2021-08-27', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1100, 4, 'Available', 35, 0, 0, '2021-08-28', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1101, 4, 'Available', 35, 0, 0, '2021-08-29', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1102, 4, 'Available', 35, 0, 0, '2021-08-30', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1103, 4, 'Available', 35, 0, 0, '2021-08-31', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1104, 4, 'Available', 35, 0, 0, '2021-09-01', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1105, 4, 'Available', 35, 0, 0, '2021-09-02', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1106, 4, 'Available', 35, 0, 0, '2021-09-03', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1107, 4, 'Available', 35, 0, 0, '2021-09-04', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1108, 4, 'Available', 35, 0, 0, '2021-09-05', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1109, 4, 'Available', 35, 0, 0, '2021-09-06', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1110, 4, 'Available', 35, 0, 0, '2021-09-07', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1111, 4, 'Available', 35, 0, 0, '2021-09-08', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1112, 4, 'Available', 35, 0, 0, '2021-09-09', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1113, 4, 'Available', 35, 0, 0, '2021-09-10', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1114, 4, 'Available', 35, 0, 0, '2021-09-11', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1115, 4, 'Available', 35, 0, 0, '2021-09-12', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1116, 4, 'Available', 35, 0, 0, '2021-09-13', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1117, 4, 'Available', 35, 0, 0, '2021-09-14', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1118, 4, 'Available', 35, 0, 0, '2021-09-15', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1119, 4, 'Available', 35, 0, 0, '2021-09-16', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1120, 4, 'Available', 35, 0, 0, '2021-09-17', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1121, 4, 'Available', 35, 0, 0, '2021-09-18', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1122, 4, 'Available', 35, 0, 0, '2021-09-19', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1123, 4, 'Available', 35, 0, 0, '2021-09-20', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1124, 4, 'Available', 35, 0, 0, '2021-09-21', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1125, 4, 'Available', 35, 0, 0, '2021-09-22', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1126, 4, 'Available', 35, 0, 0, '2021-09-23', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1127, 4, 'Available', 35, 0, 0, '2021-09-24', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1128, 4, 'Available', 35, 0, 0, '2021-09-25', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1129, 4, 'Available', 35, 0, 0, '2021-09-26', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1130, 4, 'Available', 35, 0, 0, '2021-09-27', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24'),
(1131, 4, 'Available', 35, 0, 0, '2021-09-28', NULL, 'normal', '2021-08-27 11:30:24', '2021-08-27 11:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `property_description`
--

CREATE TABLE `property_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `place_is_great_for` text COLLATE utf8mb4_unicode_ci,
  `about_place` text COLLATE utf8mb4_unicode_ci,
  `guest_can_access` text COLLATE utf8mb4_unicode_ci,
  `interaction_guests` text COLLATE utf8mb4_unicode_ci,
  `other` text COLLATE utf8mb4_unicode_ci,
  `about_neighborhood` text COLLATE utf8mb4_unicode_ci,
  `get_around` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_description`
--

INSERT INTO `property_description` (`id`, `property_id`, `summary`, `place_is_great_for`, `about_place`, `guest_can_access`, `interaction_guests`, `other`, `about_neighborhood`, `get_around`) VALUES
(1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'desccc', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'New York Shared room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 'Unique stay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 'dssdsd s dsdsdsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 'Trichy apartment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 'gh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 'uiy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 'dfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but alsoLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', 'Aldus PageMaker including versions of Lorem Ipsum.', '1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the.'),
(16, 16, 'jkhj', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 'sfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 'xcvxcvx', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 'hbjbjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 'hgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 'Asfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 'xcvxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, 'dfgdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 'zcc', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, 'asdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, 'gdfgd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, 'Private House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, 'Apartment House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, 'Private Room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42, 'Bungalow', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, 'Villa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44, 'Boat House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 45, 'Tree House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 46, 'Tent House', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 47, 'Island stay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 48, 'Hut house', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 49, 'Castle', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, 'Dorm', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51, 'Townhouse', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52, 'Private house', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53, 'Barcelona Villa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 54, 'Cave house', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 55, 'Apartment', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 56, 'Island Singapore', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57, 'Entire house in New Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 58, 'Rooms in Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 59, 'Cabin house', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 60, 'Single room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 62, 'testing message', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 63, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 64, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 65, 'hj', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE `property_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_fees`
--

CREATE TABLE `property_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_fees`
--

INSERT INTO `property_fees` (`id`, `field`, `value`) VALUES
(1, 'more_then_seven', '0'),
(2, 'less_then_seven', '0'),
(3, 'host_service_charge', '0'),
(4, 'guest_service_charge', '5'),
(5, 'cancel_limit', '0'),
(6, 'currency', 'USD'),
(7, 'host_penalty', '0'),
(8, 'iva_tax', '0'),
(9, 'accomodation_tax', '0');

-- --------------------------------------------------------

--
-- Table structure for table `property_icalimports`
--

CREATE TABLE `property_icalimports` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `icalendar_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icalendar_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icalendar_last_sync` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_photos`
--

CREATE TABLE `property_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(105) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` int(11) NOT NULL DEFAULT '0',
  `serial` int(11) NOT NULL DEFAULT '0',
  `type` enum('photo','video') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_photos`
--

INSERT INTO `property_photos` (`id`, `property_id`, `photo`, `message`, `cover_photo`, `serial`, `type`) VALUES
(1, 1, '1625464337_img.jpg', NULL, 1, 1, 'photo'),
(2, 6, '1625484527_img2.jpg', NULL, 1, 1, 'photo'),
(3, 5, '1625484701_img3.jpg', NULL, 1, 1, 'photo'),
(4, 4, '1625484861_img4.jpg', NULL, 1, 1, 'photo'),
(16, 5, '1626870842_65e9fef6-1141-4e3c-bc9f-f0972b7033a2.jpg', NULL, 0, 2, 'photo'),
(17, 5, '1626870842_ethnotel-hotel-inside-view.jpg', NULL, 0, 3, 'photo'),
(18, 5, '1626870842_Hotel-ICON-1.jpg', NULL, 0, 4, 'photo'),
(19, 5, '1626870842_TWA-airport-hotel-room-1200x835.jpg', NULL, 0, 5, 'photo'),
(20, 10, '1628173586_default-banner.jpg', NULL, 1, 1, 'photo'),
(24, 10, '1628228720_hosting-banner.jpg', NULL, 0, 2, 'photo'),
(26, 10, '1628230254_chicago-1578405673.jpg', NULL, 0, 3, 'photo'),
(27, 10, '1628231449_california-1578405673.jpg', NULL, 0, 4, 'photo'),
(28, 10, '1628232921_new-oleans-1578405674.jpg', NULL, 0, 5, 'photo'),
(29, 5, 'https://www.youtube.com/embed/uQ6xbsl6kSo', NULL, 0, 1, 'video'),
(31, 5, 'https://www.youtube.com/embed/as5v7lHQ5bY', NULL, 0, 2, 'video'),
(42, 15, 'https://www.youtube.com/embed/TaVDljl01d0', NULL, 0, 2, 'video'),
(43, 15, '1628503917_best-weather-for-deer-hunting-hunter.jpg', NULL, 0, 1, 'photo'),
(44, 15, '1628503988_kyle-glenn-xY4r7y-Cllo-unsplash.jpg', NULL, 1, 2, 'photo'),
(45, 13, '1628508271_img.jpg', NULL, 1, 1, 'photo'),
(48, 10, 'https://www.youtube.com/embed/TaVDljl01d0', NULL, 0, 1, 'video'),
(49, 40, '1629719672_ny1.jpg', NULL, 1, 1, 'photo'),
(50, 41, '1629721216_ny2.jpg', NULL, 1, 1, 'photo'),
(51, 42, '1629721749_ny3.jpg', NULL, 1, 1, 'photo'),
(52, 43, '1629722281_ny4.jpg', NULL, 1, 1, 'photo'),
(54, 44, '1629722998_ny5.jpg', NULL, 1, 2, 'photo'),
(55, 45, '1629723435_ny6.jpg', NULL, 1, 1, 'photo'),
(56, 46, '1629724316_ny7.jpg', NULL, 1, 1, 'photo'),
(58, 48, '1629725388_ny9.jpg', NULL, 1, 1, 'photo'),
(59, 49, '1629726009_ny10.jpg', NULL, 1, 1, 'photo'),
(60, 50, '1629727321_ny11.jpg', NULL, 1, 1, 'photo'),
(61, 51, '1629727691_syd1.jpg', NULL, 1, 1, 'photo'),
(64, 53, '1629728681_barce1.jpg', NULL, 1, 1, 'photo'),
(65, 54, '1629730577_berlin1.jpg', NULL, 1, 1, 'photo'),
(66, 55, '1629730932_budapest1.jpg', NULL, 1, 1, 'photo'),
(67, 56, '1629731385_sing1.jpg', NULL, 1, 1, 'photo'),
(68, 57, '1629731653_del1.jpg', NULL, 1, 1, 'photo'),
(69, 58, '1629731972_del2.jpg', NULL, 1, 1, 'photo'),
(70, 59, '1629732358_sing2.jpg', NULL, 1, 1, 'photo'),
(71, 60, '1629782423_budapest2.jpg', NULL, 1, 1, 'photo'),
(72, 59, '1629785128_cabin-sing.jpg', NULL, 0, 2, 'photo'),
(73, 57, '1629785372_ndelhi2.jpg', NULL, 0, 2, 'photo'),
(74, 57, '1629785451_ndelhi3.jpg', NULL, 0, 3, 'photo'),
(75, 62, 'https://www.youtube.com/embed/JZgdqhLV4i4', NULL, 0, 1, 'video'),
(76, 58, '1629900495_del4.jpg', NULL, 0, 2, 'photo'),
(77, 58, '1629900709_del5.jpg', NULL, 0, 3, 'photo'),
(78, 56, '1629901154_new1.jpg', NULL, 0, 2, 'photo'),
(79, 56, '1629901165_new2.jpg', NULL, 0, 3, 'photo'),
(80, 56, '1629901327_new3.jpg', NULL, 0, 4, 'photo'),
(81, 55, '1629901789_new5.jpg', NULL, 0, 2, 'photo'),
(82, 55, '1629901812_new6.jpg', NULL, 0, 3, 'photo'),
(83, 54, '1629902137_new7.jpg', NULL, 0, 2, 'photo'),
(84, 53, '1629902630_1.jpg', NULL, 0, 2, 'photo'),
(85, 53, '1629902692_2.jpg', NULL, 0, 3, 'photo'),
(86, 52, '1629903108_3.jpg', NULL, 0, 2, 'photo'),
(87, 52, '1629903118_4.jpg', NULL, 1, 3, 'photo'),
(88, 52, '1629903129_5.jpg', NULL, 0, 4, 'photo'),
(89, 52, '1629903140_6.jpg', NULL, 0, 5, 'photo'),
(90, 52, '1629903359_7.jpg', NULL, 0, 6, 'photo'),
(91, 51, '1629903550_8.jpg', NULL, 0, 2, 'photo'),
(92, 50, '1629903803_9.jpg', NULL, 0, 2, 'photo'),
(93, 50, '1629903899_10.jpg', NULL, 0, 3, 'photo'),
(94, 49, '1629904107_11.jpg', NULL, 0, 2, 'photo'),
(95, 48, '1629904309_12.jpg', NULL, 0, 2, 'photo'),
(96, 47, '1629904717_13.jpg', NULL, 1, 2, 'photo'),
(97, 47, '1629904757_14.jpg', NULL, 0, 3, 'photo'),
(98, 47, '1629904975_15.jpg', NULL, 0, 4, 'photo'),
(99, 46, '1629905199_16.jpg', NULL, 0, 2, 'photo'),
(100, 45, '1629905461_17.jpg', NULL, 0, 2, 'photo'),
(101, 45, '1629905471_18.jpg', NULL, 0, 3, 'photo'),
(102, 44, '1629905851_19.jpg', NULL, 0, 3, 'photo'),
(103, 44, '1629905863_20.jpg', NULL, 0, 4, 'photo'),
(104, 43, '1629906270_21.jpg', NULL, 0, 2, 'photo'),
(105, 43, '1629906284_22.jpg', NULL, 0, 3, 'photo'),
(106, 43, '1629906295_23.jpg', NULL, 0, 4, 'photo'),
(107, 42, '1629988070_new8.jpg', NULL, 0, 2, 'photo'),
(108, 41, '1629988308_new9.jpg', NULL, 0, 2, 'photo'),
(109, 41, '1629988323_new10.jpg', NULL, 0, 3, 'photo'),
(110, 40, '1629988640_new11.jpg', NULL, 0, 2, 'photo'),
(111, 40, '1629988657_new12.jpg', NULL, 0, 3, 'photo'),
(112, 40, '1629988669_new13.jpg', NULL, 0, 4, 'photo'),
(113, 63, '1629989324_new14.jpg', NULL, 1, 1, 'photo'),
(114, 63, '1629989349_new15.jpg', NULL, 0, 2, 'photo'),
(115, 60, '1629989737_new16.jpg', NULL, 0, 2, 'photo'),
(116, 60, '1629989756_new17.jpg', NULL, 0, 3, 'photo'),
(117, 6, '1630048529_new18.jpg', NULL, 0, 2, 'photo'),
(118, 4, '1630049374_new19.jpg', NULL, 0, 2, 'photo');

-- --------------------------------------------------------

--
-- Table structure for table `property_price`
--

CREATE TABLE `property_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `cleaning_fee` int(11) NOT NULL DEFAULT '0',
  `guest_after` int(11) NOT NULL DEFAULT '0',
  `guest_fee` int(11) NOT NULL DEFAULT '0',
  `security_fee` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `weekend_price` int(11) NOT NULL DEFAULT '0',
  `weekly_discount` int(11) NOT NULL DEFAULT '0',
  `monthly_discount` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_price`
--

INSERT INTO `property_price` (`id`, `property_id`, `cleaning_fee`, `guest_after`, `guest_fee`, `security_fee`, `price`, `weekend_price`, `weekly_discount`, `monthly_discount`, `currency_code`) VALUES
(1, 1, 0, 1, 0, 0, 10, 0, 0, 0, 'USD'),
(2, 2, 0, 1, 0, 0, 20, 0, 0, 0, 'USD'),
(3, 3, 0, 1, 0, 0, 30, 0, 0, 0, 'USD'),
(4, 4, 7, 1, 0, 0, 35, 0, 0, 0, 'USD'),
(5, 5, 0, 1, 0, 0, 15, 0, 0, 0, 'USD'),
(6, 6, 5, 1, 0, 0, 50, 0, 0, 0, 'USD'),
(7, 7, 0, 1, 0, 0, 30, 0, 0, 0, 'USD'),
(8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(10, 10, 0, 1, 0, 0, 12, 0, 0, 0, 'USD'),
(11, 11, 0, 1, 0, 0, 67, 0, 0, 0, 'USD'),
(12, 12, 0, 1, 0, 20, 10, 15, 10, 20, 'USD'),
(13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(15, 15, 10, 1, 50, 50, 100, 120, 10, 20, 'USD'),
(16, 16, 0, 1, 0, 0, 20, 0, 0, 0, 'USD'),
(17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(19, 19, 0, 1, 0, 0, 5, 0, 0, 0, 'USD'),
(20, 20, 0, 1, 10, 0, 10, 0, 0, 0, 'CNY'),
(21, 21, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(22, 22, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(23, 23, 0, 1, 0, 0, 10, 0, 0, 0, 'USD'),
(24, 24, 0, 1, 0, 0, 12, 0, 0, 0, 'USD'),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(27, 27, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(29, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(30, 30, 0, 1, 0, 0, 10, 0, 0, 0, 'GBP'),
(31, 31, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(32, 32, 0, 1, 0, 0, 12, 0, 0, 0, 'USD'),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(34, 34, 0, 1, 0, 0, 12, 0, 0, 0, 'USD'),
(35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(36, 36, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(37, 37, 0, 1, 0, 0, 10, 0, 0, 0, 'USD'),
(38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(39, 39, 5, 2, 5, 10, 25, 5, 2, 5, 'USD'),
(40, 40, 15, 2, 20, 14, 32, 10, 0, 0, 'USD'),
(41, 41, 5, 1, 0, 0, 22, 0, 0, 0, 'USD'),
(42, 42, 0, 1, 5, 5, 37, 0, 0, 0, 'USD'),
(43, 43, 15, 1, 0, 0, 42, 5, 0, 0, 'USD'),
(44, 44, 12, 1, 0, 0, 25, 0, 0, 0, 'USD'),
(45, 45, 0, 1, 0, 0, 25, 5, 2, 7, 'USD'),
(46, 46, 0, 1, 10, 0, 24, 0, 0, 0, 'USD'),
(47, 47, 5, 1, 0, 12, 50, 3, 0, 0, 'USD'),
(48, 48, 4, 1, 0, 0, 20, 0, 2, 5, 'USD'),
(49, 49, 0, 2, 5, 4, 70, 0, 10, 15, 'USD'),
(50, 50, 5, 1, 0, 0, 15, 0, 0, 0, 'USD'),
(51, 51, 0, 2, 12, 0, 40, 0, 0, 0, 'USD'),
(52, 52, 0, 1, 0, 0, 35, 4, 2, 8, 'USD'),
(53, 53, 0, 1, 0, 10, 47, 0, 4, 7, 'USD'),
(54, 54, 10, 1, 0, 0, 85, 0, 5, 7, 'USD'),
(55, 55, 2, 1, 3, 5, 55, 5, 3, 7, 'USD'),
(56, 56, 5, 1, 7, 0, 70, 0, 7, 12, 'USD'),
(57, 57, 5, 1, 7, 0, 45, 0, 2, 5, 'USD'),
(58, 58, 8, 1, 12, 0, 25, 4, 0, 0, 'USD'),
(59, 59, 5, 1, 5, 7, 85, 3, 2, 7, 'USD'),
(60, 60, 5, 1, 0, 0, 35, 3, 0, 7, 'USD'),
(61, 61, 0, 0, 0, 0, 0, 0, 0, 0, 'USD'),
(62, 62, 0, 1, 20, 0, 100, 0, 0, 0, 'USD'),
(63, 63, 5, 1, 0, 10, 25, 0, 0, 0, 'USD'),
(64, 64, 0, 1, 0, 0, 10, 0, 0, 0, 'USD'),
(65, 65, 0, 1, 0, 0, 5, 0, 0, 0, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `property_rules`
--

CREATE TABLE `property_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_steps`
--

CREATE TABLE `property_steps` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `basics` int(11) NOT NULL DEFAULT '0',
  `description` int(11) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `photos` int(11) NOT NULL DEFAULT '0',
  `pricing` int(11) NOT NULL DEFAULT '0',
  `booking` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_steps`
--

INSERT INTO `property_steps` (`id`, `property_id`, `basics`, `description`, `location`, `photos`, `pricing`, `booking`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 1, 0, 1, 1),
(3, 3, 1, 1, 1, 0, 1, 1),
(4, 4, 1, 1, 1, 1, 1, 1),
(5, 5, 1, 1, 1, 1, 1, 1),
(6, 6, 1, 1, 1, 1, 1, 1),
(7, 7, 1, 1, 1, 0, 1, 1),
(8, 8, 0, 0, 0, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0, 0),
(10, 10, 1, 1, 1, 1, 1, 1),
(11, 11, 1, 1, 1, 0, 1, 0),
(12, 12, 1, 1, 1, 0, 1, 1),
(13, 13, 1, 1, 1, 1, 0, 0),
(14, 14, 0, 0, 0, 0, 0, 0),
(15, 15, 1, 1, 1, 1, 1, 1),
(16, 16, 1, 1, 1, 0, 1, 1),
(17, 17, 0, 0, 0, 0, 0, 0),
(18, 18, 0, 0, 0, 0, 0, 0),
(19, 19, 0, 0, 1, 0, 1, 1),
(20, 20, 1, 1, 1, 0, 1, 1),
(21, 21, 0, 0, 0, 0, 0, 0),
(22, 22, 1, 0, 0, 0, 0, 0),
(23, 23, 1, 1, 1, 0, 1, 1),
(24, 24, 1, 1, 1, 0, 1, 1),
(25, 25, 1, 1, 0, 0, 0, 0),
(26, 26, 1, 1, 1, 0, 0, 0),
(27, 27, 0, 0, 0, 0, 0, 0),
(28, 28, 0, 0, 0, 0, 0, 0),
(29, 29, 0, 0, 0, 0, 0, 0),
(30, 30, 1, 1, 1, 0, 1, 1),
(31, 31, 0, 0, 0, 0, 0, 0),
(32, 32, 1, 1, 1, 0, 1, 1),
(33, 33, 0, 0, 0, 0, 0, 0),
(34, 34, 1, 1, 1, 0, 1, 1),
(35, 35, 1, 0, 0, 0, 0, 0),
(36, 36, 1, 1, 0, 0, 0, 0),
(37, 37, 1, 1, 1, 0, 1, 1),
(38, 38, 1, 1, 0, 0, 0, 0),
(39, 39, 1, 1, 1, 0, 1, 1),
(40, 40, 1, 1, 1, 1, 1, 1),
(41, 41, 1, 1, 1, 1, 1, 1),
(42, 42, 1, 1, 1, 1, 1, 1),
(43, 43, 1, 1, 1, 1, 1, 1),
(44, 44, 1, 1, 1, 1, 1, 1),
(45, 45, 1, 1, 1, 1, 1, 1),
(46, 46, 1, 1, 1, 1, 1, 1),
(47, 47, 1, 1, 1, 1, 1, 1),
(48, 48, 1, 1, 1, 1, 1, 1),
(49, 49, 1, 1, 1, 1, 1, 1),
(50, 50, 1, 1, 1, 1, 1, 1),
(51, 51, 1, 1, 1, 1, 1, 1),
(52, 52, 1, 1, 1, 1, 1, 1),
(53, 53, 1, 1, 1, 1, 1, 1),
(54, 54, 1, 1, 1, 1, 1, 1),
(55, 55, 1, 1, 1, 1, 1, 1),
(56, 56, 1, 1, 1, 1, 1, 1),
(57, 57, 1, 1, 1, 1, 1, 1),
(58, 58, 1, 1, 1, 1, 1, 1),
(59, 59, 1, 1, 1, 1, 1, 1),
(60, 60, 1, 1, 1, 1, 1, 1),
(61, 61, 1, 0, 0, 0, 0, 0),
(62, 62, 1, 1, 1, 0, 1, 1),
(63, 63, 1, 1, 1, 1, 1, 1),
(64, 64, 1, 1, 1, 0, 1, 1),
(65, 65, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `name`, `description`, `status`) VALUES
(1, 'Apartment', 'Apartment', 'Active'),
(2, 'House', 'House', 'Active'),
(3, 'Bed & Break Fast', 'Bed & Break Fast', 'Active'),
(4, 'Loft', 'Loft', 'Active'),
(5, 'Townhouse', 'Townhouse', 'Active'),
(6, 'Condominium', 'Condominium', 'Active'),
(7, 'Bungalow', 'Bungalow', 'Active'),
(8, 'Cabin', 'Cabin', 'Active'),
(9, 'Villa', 'Villa', 'Active'),
(10, 'Castle', 'Castle', 'Active'),
(11, 'Dorm', 'Dorm', 'Active'),
(12, 'Treehouse', 'Treehouse', 'Active'),
(13, 'Boat', 'Boat', 'Active'),
(14, 'Plane', 'Plane', 'Active'),
(15, 'Camper/RV', 'Camper/RV', 'Active'),
(16, 'Lgloo', 'Lgloo', 'Active'),
(17, 'Lighthouse', 'Lighthouse', 'Active'),
(18, 'Yurt', 'Yurt', 'Active'),
(19, 'Tipi', 'Tipi', 'Active'),
(20, 'Cave', 'Cave', 'Active'),
(21, 'Island', 'Island', 'Active'),
(22, 'Chalet', 'Chalet', 'Active'),
(23, 'Earth House', 'Earth House', 'Active'),
(24, 'Hut', 'Hut', 'Active'),
(25, 'Train', 'Train', 'Active'),
(26, 'Tent', 'Tent', 'Active'),
(27, 'Other', 'Other', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` enum('unsolved','solved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unsolved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `reviewer` enum('guest','host') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `secret_feedback` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `improve_message` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `accuracy_message` text COLLATE utf8mb4_unicode_ci,
  `location` int(11) DEFAULT NULL,
  `location_message` text COLLATE utf8mb4_unicode_ci,
  `communication` int(11) DEFAULT NULL,
  `communication_message` text COLLATE utf8mb4_unicode_ci,
  `checkin` int(11) DEFAULT NULL,
  `checkin_message` text COLLATE utf8mb4_unicode_ci,
  `cleanliness` int(11) DEFAULT NULL,
  `cleanliness_message` text COLLATE utf8mb4_unicode_ci,
  `amenities` int(11) DEFAULT NULL,
  `amenities_message` text COLLATE utf8mb4_unicode_ci,
  `value` int(11) DEFAULT NULL,
  `value_message` text COLLATE utf8mb4_unicode_ci,
  `house_rules` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `sender_id`, `receiver_id`, `booking_id`, `property_id`, `reviewer`, `message`, `secret_feedback`, `comments`, `improve_message`, `rating`, `accuracy`, `accuracy_message`, `location`, `location_message`, `communication`, `communication_message`, `checkin`, `checkin_message`, `cleanliness`, `cleanliness_message`, `amenities`, `amenities_message`, `value`, `value_message`, `house_rules`, `recommend`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, 4, 'host', 'good', 'dfsdfsdfs fddsfdfdfdsfsdfs dsfsdf', NULL, NULL, 5, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 5, NULL, '2021-08-12 18:21:11', '2021-08-12 18:21:11'),
(2, 2, 1, 3, 4, 'guest', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 5, 4, NULL, 5, NULL, 5, NULL, 2, NULL, 5, NULL, 3, NULL, 5, NULL, NULL, NULL, '2021-08-12 18:25:28', '2021-08-12 18:25:41'),
(3, 2, 1, 4, 4, 'guest', 'its awesome', 'its awesome', NULL, 'nothing', 5, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, 5, NULL, NULL, NULL, '2021-08-25 14:19:17', '2021-08-25 14:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_admin`
--

CREATE TABLE `role_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_admin`
--

INSERT INTO `role_admin` (`admin_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `message`, `status`) VALUES
(1, 'Suitable for children (2-12 years)', 'Active'),
(2, 'Suitable for infants (Under 2 years)', 'Active'),
(3, 'Suitable for pets', 'Active'),
(4, 'Smoking allowed', 'Active'),
(5, 'Events or parties allowed', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `seo_metas`
--

CREATE TABLE `seo_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_metas`
--

INSERT INTO `seo_metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, '/', 'Home | Rental  Marketplace Script', 'Rental marketplace to Add your listing & Earn', 'rental business'),
(2, 'login', 'Log In', 'Log In', ''),
(3, 'register', 'Register', 'Register', ''),
(4, 'newest', 'Newest Photos', 'Newest Photos', ''),
(5, 'forgot_password', 'Forgot Password', 'Forgot Password', ''),
(6, 'dashboard', 'Feeds', 'Feeds', ''),
(7, 'uploads', 'Uploads', 'Uploads', ''),
(8, 'notification', 'Notification', 'Notification', ''),
(9, 'profile', 'Profile', 'Profile', ''),
(10, 'profile/{id}', 'Profile', 'Profile', ''),
(11, 'manage-photos', 'Manage Photos', 'Manage Photos', ''),
(12, 'earning', 'Earning', 'Earning', ''),
(13, 'purchase', 'Purchase', 'Purchase', ''),
(14, 'settings', 'Settings', 'Settings', ''),
(15, 'settings/account', 'Settings', 'Settings', ''),
(16, 'settings/payment', 'Settings', 'Settings', ''),
(17, 'photo/single/{id}', 'Photo Single', 'Photo Single', ''),
(18, 'payments/success', 'Payment Success', 'Payment Success', ''),
(19, 'payments/cancel', 'Payment Cancel', 'Payment Cancel', ''),
(20, 'profile-uploads/{type}', 'Profile Uploads', 'Profile Uploads', ''),
(21, 'photo-details/{id}', 'Photo Details', 'Photo Details', ''),
(22, 'withdraws', 'Withdraws', 'Withdraws', ''),
(23, 'photos/download/{id}', 'Photos Download', 'Photos Download', ''),
(24, 'users/reset_password/{secret?}', 'Reset Password', 'Reset Password', ''),
(25, 'search/{word}', 'Search Result', 'Search Result', ''),
(26, 'search/user/{word}', 'Search User Result', 'Search User Result', ''),
(27, 'signup', 'Signup', 'Signup', ''),
(28, 'property/create', 'Create New Property', 'Create New Property', ''),
(29, 'listing/{id}/{step}', 'Property Listing', 'Property Listing', ''),
(30, 'properties', 'Properties', 'Properties', ''),
(31, 'my_bookings', 'My Bookings', 'My Bookings', ''),
(32, 'trips/active', 'Your Trips', 'Your Trips', ''),
(33, 'users/profile', 'Edit Profile', 'Edit Profile', ''),
(34, 'users/account_preferences', 'Account Preferences', 'Account Preferences', ''),
(35, 'users/transaction_history', 'Transaction History', 'Transaction History', ''),
(36, 'users/security', 'Security', 'Security', ''),
(37, 'search', 'Search', 'Search', ''),
(38, 'inbox', 'Inbox', 'Inbox', ''),
(39, 'users/profile/media', 'Profile Photo', 'Profile Photo', ''),
(40, 'booking/requested', 'Payment Completed', 'Payment Completed', '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `type`) VALUES
(1, 'name', 'Buy2Rental', 'general'),
(2, 'logo', '1628150190_logo.png', 'general'),
(3, 'favicon', '1628150085_favicon.png', 'general'),
(4, 'head_code', '', 'general'),
(5, 'default_currency', '1', 'general'),
(6, 'default_language', '1', 'general'),
(7, 'email_logo', 'email_logo.png', 'general'),
(8, 'username', 'support@migrateshop.com', 'PayPal'),
(9, 'password', 'migrateshop', 'PayPal'),
(10, 'signature', 'SDFWEFwejfsldjsldjfwaeSDJflwsjw', 'PayPal'),
(11, 'mode', 'sandbox', 'PayPal'),
(12, 'paypal_status', '1', 'PayPal'),
(13, 'publishable', 'pk_test_ASDwefkasjdkfjwawe', 'Stripe'),
(14, 'secret', 'sk_test_WESDJALsdfjasldjaw', 'Stripe'),
(15, 'stripe_status', '1', 'Stripe'),
(16, 'driver', 'smtp', 'email'),
(17, 'host', 'mail.demowpthemes.com', 'email'),
(18, 'port', '465', 'email'),
(19, 'from_address', 'test@demowpthemes.com', 'email'),
(20, 'from_name', 'Buy2Rental', 'email'),
(21, 'encryption', 'ssl', 'email'),
(22, 'username', 'test@demowpthemes.com', 'email'),
(23, 'password', 'YNwDh.0?wXzL', 'email'),
(24, 'facebook', '#', 'join_us'),
(25, 'google_plus', '#', 'join_us'),
(26, 'twitter', '#', 'join_us'),
(27, 'linkedin', '#', 'join_us'),
(28, 'pinterest', '#', 'join_us'),
(29, 'youtube', '#', 'join_us'),
(30, 'instagram', '#', 'join_us'),
(31, 'key', 'AIzaSyAUYIaL0SLglnBoHXwGhpP2k-hHms8xfK0', 'googleMap'),
(32, 'client_id', '673970283138-om7qt5erh1bd3a92ftcvt4pv2tg4mhlj.apps.googleusercontent.com', 'google'),
(33, 'client_secret', 'B8SZ7qyNwoGkRlSlXZpZWIjy', 'google'),
(34, 'client_id', '337273813338799', 'facebook'),
(35, 'client_secret', 'a678e247401b80488e7caffd48f89e32', 'facebook'),
(36, 'email_status', '1', 'email'),
(37, 'row_per_page', '25', 'preferences'),
(38, 'date_separator', '-', 'preferences'),
(39, 'date_format', '1', 'preferences'),
(40, 'dflt_timezone', 'UTC', 'preferences'),
(41, 'money_format', 'before', 'preferences'),
(42, 'date_format_type', 'dd-mm-yyyy', 'preferences'),
(43, 'front_date_format_type', 'dd-mm-yy', 'preferences'),
(44, 'search_date_format_type', 'd-m-yy', 'preferences'),
(45, 'auto_approval', 'no', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `space_type`
--

CREATE TABLE `space_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `space_type`
--

INSERT INTO `space_type` (`id`, `name`, `description`, `status`) VALUES
(1, 'Entire home/apt', 'Entire home/apt', 'Active'),
(2, 'Private room', 'Private room', 'Active'),
(3, 'Shared room', 'Shared room', 'Active'),
(4, 'Unique stays', 'Unique stays', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `starting_cities`
--

CREATE TABLE `starting_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `starting_cities`
--

INSERT INTO `starting_cities` (`id`, `name`, `image`, `status`) VALUES
(1, 'New York', 'starting_city_1.jpg', 'Active'),
(2, 'Sydney', 'starting_city_2.jpg', 'Active'),
(3, 'Paris', 'starting_city_3.jpg', 'Active'),
(4, 'Barcelona', 'starting_city_4.jpg', 'Active'),
(5, 'Berlin', 'starting_city_5.jpg', 'Active'),
(6, 'Budapest', 'starting_city_6.jpg', 'Active'),
(7, 'Singapore', 'starting_city_1627625434.jpg', 'Active'),
(8, 'New Delhi', 'starting_city_1627625602.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sv_doc_verification`
--

CREATE TABLE `sv_doc_verification` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sv_doc_verification`
--

INSERT INTO `sv_doc_verification` (`id`, `user_id`, `doc`, `type`, `created_at`) VALUES
(9, '1', '1629203998.original.jpg', 'image/jpeg', '2021-08-17 16:39:58'),
(10, '1', '1629203999.default-profile.png', 'image/png', '2021-08-17 16:39:59'),
(11, '2', '1629204085.4262156.jpg', 'image/jpeg', '2021-08-17 16:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `description`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'Traveller', 'testimonial_1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL),
(2, 'Adam Smith', 'Traveller', 'testimonial_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL),
(3, 'Alysa', 'Photographer', 'testimonial_3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 5, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `zone`, `value`) VALUES
(1, '(GMT-11:00) International Date Line West', 'Pacific/Kwajalein'),
(2, '(GMT-11:00) Midway Island', 'Pacific/Midway'),
(3, '(GMT-11:00) Samoa', 'Pacific/Samoa'),
(4, '(GMT-10:00) Hawaii', 'Pacific/Honolulu'),
(5, '(GMT-10:00) Pacific/Honolulu', 'Pacific/Honolulu'),
(6, '(GMT-09:00) Alaska', 'US/Alaska'),
(7, '(GMT-08:00) America/Los_Angeles', 'America/Los_Angeles'),
(8, '(GMT-08:00) Pacific Time (US &amp; Canada)', 'America/Los_Angeles'),
(9, '(GMT-08:00) Tijuana', 'America/Tijuana'),
(10, '(GMT-07:00) America/Denver', 'America/Denver'),
(11, '(GMT-07:00) America/Phoenix', 'America/Phoenix'),
(12, '(GMT-07:00) Arizona', 'US/Arizona'),
(13, '(GMT-07:00) Chihuahua', 'America/Chihuahua'),
(14, '(GMT-07:00) Mazatlan', 'America/Mazatlan'),
(15, '(GMT-07:00) Mountain Time (US &amp; Canada)', 'US/Mountain'),
(16, '(GMT-06:00) America/Chicago', 'America/Chicago'),
(17, '(GMT-06:00) America/Mexico_City', 'America/Mexico_City'),
(18, '(GMT-06:00) Central America', 'America/Managua'),
(19, '(GMT-06:00) Central Time (US &amp; Canada)', 'US/Central'),
(20, '(GMT-06:00) Guadalajara', 'America/Mexico_City'),
(21, '(GMT-06:00) Mexico City', 'America/Mexico_City'),
(22, '(GMT-06:00) Monterrey', 'America/Monterrey'),
(23, '(GMT-06:00) Saskatchewan', 'Canada/Saskatchewan'),
(24, '(GMT-05:00) America/Nassau', 'America/Nassau'),
(25, '(GMT-05:00) America/New_York', 'America/New_York'),
(26, '(GMT-05:00) America/Port-au-Prince', 'America/Port-au-Prince'),
(27, '(GMT-05:00) America/Toronto', 'America/Toronto'),
(28, '(GMT-05:00) Bogota', 'America/Bogota'),
(29, '(GMT-05:00) Eastern Time (US &amp; Canada)', 'US/Eastern'),
(30, '(GMT-05:00) Indiana (East)', 'US/East-Indiana'),
(31, '(GMT-05:00) Lima', 'America/Lima'),
(32, '(GMT-05:00) Quito', 'America/Bogota'),
(33, '(GMT-04:30) Caracas', 'America/Caracas'),
(34, '(GMT-04:00) Atlantic Time (Canada)', 'Canada/Atlantic'),
(35, '(GMT-04:00) Georgetown', 'America/Argentina/Buenos_Aires'),
(36, '(GMT-04:00) La Paz', 'America/La_Paz'),
(37, '(GMT-03:30) Newfoundland', 'Canada/Newfoundland'),
(38, '(GMT-03:00) America/Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires'),
(39, '(GMT-03:00) America/Cordoba', 'America/Cordoba'),
(40, '(GMT-03:00) America/Fortaleza', 'America/Fortaleza'),
(41, '(GMT-03:00) America/Montevideo', 'America/Montevideo'),
(42, '(GMT-03:00) America/Santiago', 'America/Santiago'),
(43, '(GMT-03:00) America/Sao_Paulo', 'America/Sao_Paulo'),
(44, '(GMT-03:00) Brasilia', 'America/Sao_Paulo'),
(45, '(GMT-03:00) Buenos Aires', 'America/Argentina/Buenos_Aires'),
(46, '(GMT-03:00) Greenland', 'America/Godthab'),
(47, '(GMT-03:00) Santiago', 'America/Santiago'),
(48, '(GMT-02:00) Mid-Atlantic', 'America/Noronha'),
(49, '(GMT-01:00) Azores', 'Atlantic/Azores'),
(50, '(GMT-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde'),
(51, '(GMT+00:00) Africa/Casablanca', 'Africa/Casablanca'),
(52, '(GMT+00:00) Atlantic/Canary', 'Atlantic/Canary'),
(53, '(GMT+00:00) Atlantic/Reykjavik', 'Atlantic/Reykjavik'),
(54, '(GMT+00:00) Casablanca', 'Africa/Casablanca'),
(55, '(GMT+00:00) Dublin', 'Etc/Greenwich'),
(56, '(GMT+00:00) Edinburgh', 'Europe/London'),
(57, '(GMT+00:00) Europe/Dublin', 'Europe/Dublin'),
(58, '(GMT+00:00) Europe/Lisbon', 'Europe/Lisbon'),
(59, '(GMT+00:00) Europe/London', 'Europe/London'),
(60, '(GMT+00:00) Lisbon', 'Europe/Lisbon'),
(61, '(GMT+00:00) London', 'Europe/London'),
(62, '(GMT+00:00) Monrovia', 'Africa/Monrovia'),
(63, '(GMT+00:00) UTC', 'UTC'),
(64, '(GMT+01:00) Amsterdam', 'Europe/Amsterdam'),
(65, '(GMT+01:00) Belgrade', 'Europe/Belgrade'),
(66, '(GMT+01:00) Berlin', 'Europe/Berlin'),
(67, '(GMT+01:00) Bern', 'Europe/Berlin'),
(68, '(GMT+01:00) Bratislava', 'Europe/Bratislava'),
(69, '(GMT+01:00) Brussels', 'Europe/Brussels'),
(70, '(GMT+01:00) Budapest', 'Europe/Budapest'),
(71, '(GMT+01:00) Copenhagen', 'Europe/Copenhagen'),
(72, '(GMT+01:00) Europe/Amsterdam', 'Europe/Amsterdam'),
(73, '(GMT+01:00) Europe/Belgrade', 'Europe/Belgrade'),
(74, '(GMT+01:00) Europe/Berlin', 'Europe/Berlin'),
(75, '(GMT+01:00) Europe/Bratislava', 'Europe/Bratislava'),
(76, '(GMT+01:00) Europe/Brussels', 'Europe/Brussels'),
(77, '(GMT+01:00) Europe/Budapest', 'Europe/Budapest'),
(78, '(GMT+01:00) Europe/Copenhagen', 'Europe/Copenhagen'),
(79, '(GMT+01:00) Europe/Ljubljana', 'Europe/Ljubljana'),
(80, '(GMT+01:00) Europe/Madrid', 'Europe/Madrid'),
(81, '(GMT+01:00) Europe/Monaco', 'Europe/Monaco'),
(82, '(GMT+01:00) Europe/Oslo', 'Europe/Oslo'),
(83, '(GMT+01:00) Europe/Paris', 'Europe/Paris'),
(84, '(GMT+01:00) Europe/Podgorica', 'Europe/Podgorica'),
(85, '(GMT+01:00) Europe/Prague', 'Europe/Prague'),
(86, '(GMT+01:00) Europe/Rome', 'Europe/Rome'),
(87, '(GMT+01:00) Europe/Stockholm', 'Europe/Stockholm'),
(88, '(GMT+01:00) Europe/Tirane', 'Europe/Tirane'),
(89, '(GMT+01:00) Europe/Vienna', 'Europe/Vienna'),
(90, '(GMT+01:00) Europe/Warsaw', 'Europe/Warsaw'),
(91, '(GMT+01:00) Europe/Zagreb', 'Europe/Zagreb'),
(92, '(GMT+01:00) Europe/Zurich', 'Europe/Zurich'),
(93, '(GMT+01:00) Ljubljana', 'Europe/Ljubljana'),
(94, '(GMT+01:00) Madrid', 'Europe/Madrid'),
(95, '(GMT+01:00) Paris', 'Europe/Paris'),
(96, '(GMT+01:00) Prague', 'Europe/Prague'),
(97, '(GMT+01:00) Rome', 'Europe/Rome'),
(98, '(GMT+01:00) Sarajevo', 'Europe/Sarajevo'),
(99, '(GMT+01:00) Skopje', 'Europe/Skopje'),
(100, '(GMT+01:00) Stockholm', 'Europe/Stockholm'),
(101, '(GMT+01:00) Vienna', 'Europe/Vienna'),
(102, '(GMT+01:00) Warsaw', 'Europe/Warsaw'),
(103, '(GMT+01:00) West Central Africa', 'Africa/Lagos'),
(104, '(GMT+01:00) Zagreb', 'Europe/Zagreb'),
(105, '(GMT+02:00) Asia/Beirut', 'Asia/Beirut'),
(106, '(GMT+02:00) Asia/Jerusalem', 'Asia/Jerusalem'),
(107, '(GMT+02:00) Asia/Nicosia', 'Asia/Nicosia'),
(108, '(GMT+02:00) Athens', 'Europe/Athens'),
(109, '(GMT+02:00) Bucharest', 'Europe/Bucharest'),
(110, '(GMT+02:00) Cairo', 'Africa/Cairo'),
(111, '(GMT+02:00) Europe/Athens', 'Europe/Athens'),
(112, '(GMT+02:00) Europe/Helsinki', 'Europe/Helsinki'),
(113, '(GMT+02:00) Europe/Istanbul', 'Europe/Istanbul'),
(114, '(GMT+02:00) Europe/Riga', 'Europe/Riga'),
(115, '(GMT+02:00) Europe/Sofia', 'Europe/Sofia'),
(116, '(GMT+02:00) Harare', 'Africa/Harare'),
(117, '(GMT+02:00) Helsinki', 'Europe/Helsinki'),
(118, '(GMT+02:00) Istanbul', 'Europe/Istanbul'),
(119, '(GMT+02:00) Jerusalem', 'Asia/Jerusalem'),
(120, '(GMT+02:00) Kyiv', 'Europe/Helsinki'),
(121, '(GMT+02:00) Pretoria', 'Africa/Johannesburg'),
(122, '(GMT+02:00) Riga', 'Europe/Riga'),
(123, '(GMT+02:00) Sofia', 'Europe/Sofia'),
(124, '(GMT+02:00) Tallinn', 'Europe/Tallinn'),
(125, '(GMT+02:00) Vilnius', 'Europe/Vilnius'),
(126, '(GMT+03:00) Baghdad', 'Asia/Baghdad'),
(127, '(GMT+03:00) Europe/Minsk', 'Europe/Minsk'),
(128, '(GMT+03:00) Europe/Moscow', 'Europe/Moscow'),
(129, '(GMT+03:00) Kuwait', 'Asia/Kuwait'),
(130, '(GMT+03:00) Minsk', 'Europe/Minsk'),
(131, '(GMT+03:00) Moscow', 'Europe/Moscow'),
(132, '(GMT+03:00) Nairobi', 'Africa/Nairobi'),
(133, '(GMT+03:00) Riyadh', 'Asia/Riyadh'),
(134, '(GMT+03:00) St. Petersburg', 'Europe/Moscow'),
(135, '(GMT+03:00) Volgograd', 'Europe/Volgograd'),
(136, '(GMT+03:30) Tehran', 'Asia/Tehran'),
(137, '(GMT+04:00) Abu Dhabi', 'Asia/Muscat'),
(138, '(GMT+04:00) Asia/Dubai', 'Asia/Dubai'),
(139, '(GMT+04:00) Asia/Tbilisi', 'Asia/Tbilisi'),
(140, '(GMT+04:00) Baku', 'Asia/Baku'),
(141, '(GMT+04:00) Muscat', 'Asia/Muscat'),
(142, '(GMT+04:00) Tbilisi', 'Asia/Tbilisi'),
(143, '(GMT+04:00) Yerevan', 'Asia/Yerevan'),
(144, '(GMT+04:30) Kabul', 'Asia/Kabul'),
(145, '(GMT+05:00) Ekaterinburg', 'Asia/Yekaterinburg'),
(146, '(GMT+05:00) Indian/Maldives', 'Indian/Maldives'),
(147, '(GMT+05:00) Islamabad', 'Asia/Karachi'),
(148, '(GMT+05:00) Karachi', 'Asia/Karachi'),
(149, '(GMT+05:00) Tashkent', 'Asia/Tashkent'),
(150, '(GMT+05:30) Asia/Calcutta', 'Asia/Calcutta'),
(151, '(GMT+05:30) Asia/Colombo', 'Asia/Colombo'),
(152, '(GMT+05:30) Chennai', 'Asia/Calcutta'),
(153, '(GMT+05:30) Kolkata', 'Asia/Kolkata'),
(154, '(GMT+05:30) Mumbai', 'Asia/Calcutta'),
(155, '(GMT+05:30) New Delhi', 'Asia/Calcutta'),
(156, '(GMT+05:30) Sri Jayawardenepura', 'Asia/Calcutta'),
(157, '(GMT+05:45) Kathmandu', 'Asia/Katmandu'),
(158, '(GMT+06:00) Almaty', 'Asia/Almaty'),
(159, '(GMT+06:00) Astana', 'Asia/Dhaka'),
(160, '(GMT+06:00) Dhaka', 'Asia/Dhaka'),
(161, '(GMT+06:00) Novosibirsk', 'Asia/Novosibirsk'),
(162, '(GMT+06:00) Urumqi', 'Asia/Urumqi'),
(163, '(GMT+06:30) Rangoon', 'Asia/Rangoon'),
(164, '(GMT+07:00) Asia/Bangkok', 'Asia/Bangkok'),
(165, '(GMT+07:00) Asia/Jakarta', 'Asia/Jakarta'),
(166, '(GMT+07:00) Bangkok', 'Asia/Bangkok'),
(167, '(GMT+07:00) Hanoi', 'Asia/Bangkok'),
(168, '(GMT+07:00) Jakarta', 'Asia/Jakarta'),
(169, '(GMT+07:00) Krasnoyarsk', 'Asia/Krasnoyarsk'),
(170, '(GMT+08:00) Asia/Chongqing', 'Asia/Chongqing'),
(171, '(GMT+08:00) Asia/Hong_Kong', 'Asia/Hong_Kong'),
(172, '(GMT+08:00) Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur'),
(173, '(GMT+08:00) Asia/Macau', 'Asia/Macau'),
(174, '(GMT+08:00) Asia/Makassar', 'Asia/Makassar'),
(175, '(GMT+08:00) Asia/Shanghai', 'Asia/Shanghai'),
(176, '(GMT+08:00) Asia/Taipei', 'Asia/Taipei'),
(177, '(GMT+08:00) Beijing', 'Asia/Hong_Kong'),
(178, '(GMT+08:00) Chongqing', 'Asia/Chongqing'),
(179, '(GMT+08:00) Hong Kong', 'Asia/Hong_Kong'),
(180, '(GMT+08:00) Irkutsk', 'Asia/Irkutsk'),
(181, '(GMT+08:00) Kuala Lumpur', 'Asia/Kuala_Lumpur'),
(182, '(GMT+08:00) Perth', 'Australia/Perth'),
(183, '(GMT+08:00) Singapore', 'Asia/Singapore'),
(184, '(GMT+08:00) Taipei', 'Asia/Taipei'),
(185, '(GMT+08:00) Ulaan Bataar', 'Asia/Ulan_Bator'),
(186, '(GMT+09:00) Asia/Seoul', 'Asia/Seoul'),
(187, '(GMT+09:00) Asia/Tokyo', 'Asia/Tokyo'),
(188, '(GMT+09:00) Osaka', 'Asia/Tokyo'),
(189, '(GMT+09:00) Sapporo', 'Asia/Tokyo'),
(190, '(GMT+09:00) Seoul', 'Asia/Seoul'),
(191, '(GMT+09:00) Tokyo', 'Asia/Tokyo'),
(192, '(GMT+09:00) Yakutsk', 'Asia/Yakutsk'),
(193, '(GMT+09:30) Adelaide', 'Australia/Adelaide'),
(194, '(GMT+09:30) Darwin', 'Australia/Darwin'),
(195, '(GMT+10:00) Australia/Brisbane', 'Australia/Brisbane'),
(196, '(GMT+10:00) Australia/Hobart', 'Australia/Hobart'),
(197, '(GMT+10:00) Australia/Melbourne', 'Australia/Melbourne'),
(198, '(GMT+10:00) Australia/Sydney', 'Australia/Sydney'),
(199, '(GMT+10:00) Brisbane', 'Australia/Brisbane'),
(200, '(GMT+10:00) Canberra', 'Australia/Canberra'),
(201, '(GMT+10:00) Guam', 'Pacific/Guam'),
(202, '(GMT+10:00) Hobart', 'Australia/Hobart'),
(203, '(GMT+10:00) Magadan', 'Asia/Magadan'),
(204, '(GMT+10:00) Melbourne', 'Australia/Melbourne'),
(205, '(GMT+10:00) Port Moresby', 'Pacific/Port_Moresby'),
(206, '(GMT+10:00) Solomon Is.', 'Asia/Magadan'),
(207, '(GMT+10:00) Sydney', 'Australia/Sydney'),
(208, '(GMT+10:00) Vladivostok', 'Asia/Vladivostok'),
(209, '(GMT+11:00) New Caledonia', 'Asia/Magadan'),
(210, '(GMT+12:00) Auckland', 'Pacific/Auckland'),
(211, '(GMT+12:00) Fiji', 'Pacific/Fiji'),
(212, '(GMT+12:00) Kamchatka', 'Asia/Kamchatka'),
(213, '(GMT+12:00) Marshall Is.', 'Pacific/Fiji'),
(214, '(GMT+12:00) Pacific/Auckland', 'Pacific/Auckland'),
(215, '(GMT+12:00) Wellington', 'Pacific/Auckland'),
(216, '(GMT+13:00) Nuku&#39;alofa', 'Pacific/Tongatapu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatted_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `formatted_phone`, `carrier_code`, `default_country`, `password`, `profile_image`, `balance`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'athi', 'lakshmi', 'athiivps09@gmail.com', '9874563210', '+919874563210', '91', 'in', '$2y$10$uxkGI6FQ0caPj39qjUDKhewpcM3aTqLY8Hc7OkMvjx/jyQnckX9Ki', 'profile_1628762449.jpg', 0, 'Active', NULL, '2021-07-05 00:14:49', '2021-08-12 14:00:49'),
(2, 'demo', 'demo', 'demo@gmail.com', '9874563212', '+919874563212', '91', 'in', '$2y$10$PY6r3zg/etDszFJhN4ZWbe4FJXcRITu/zs8JVL1wUzUVSPvWSjE1i', NULL, 0, 'Active', NULL, '2021-07-05 05:20:37', '2021-07-05 05:20:37'),
(11, 'suspogerzi', 'biyac', 'suspogerzi@biyac.com', '2013433433', '+12013433433', '1', 'us', '$2y$10$jVTV0og6vi16HPGSKu1zmOzdxEsoRD83brX.mvzVSS5iWdKruDsx2', NULL, 0, 'Active', NULL, '2021-08-17 11:40:33', '2021-08-17 11:40:33'),
(12, 'vifyebiknu', 'biyac', 'vifyebiknu@biyac.com', '9876543211', '+919876543211', '91', 'in', '$2y$10$DpjS8YN9NBPsWOHViVi5U.Y9Wembwr1Lurz3y784MJ8WaWtKsOX9C', NULL, 0, 'Active', NULL, '2021-08-17 11:42:20', '2021-08-17 11:42:20'),
(13, 'test10', 'test', 'test10@gmail.com', '9876543210', '+919876543210', '91', 'in', '$2y$10$svSqYigYZHE7eQ5SGeMpTenmdr.C9HaFr3a96ApNUGRtFz8.wm0Ki', NULL, 0, 'Active', NULL, '2021-08-17 13:07:47', '2021-08-17 13:07:47'),
(14, 'Albert', 'Stephen', 'albert@demo.com', NULL, NULL, '1', 'us', '$2y$10$3Exj5j5vnPYXgH6pHuXfVOOkKLrrzNumYoDsscUwsQmZ9HRMRw30a', NULL, 0, 'Active', NULL, '2021-08-23 15:41:47', '2021-08-23 15:41:47'),
(15, 'Anna', 'Grace', 'anna@demo.com', NULL, '+1', '1', 'us', '$2y$10$mdcc9h.tpLFC7df8BSuDweGD2Tb.VAgNIXIagZ.LOpF0p4q3djI9u', NULL, 0, 'Active', NULL, '2021-08-23 15:46:59', '2021-08-23 15:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `users_verification`
--

CREATE TABLE `users_verification` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `facebook` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `google` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `linkedin` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `phone` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `fb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_for_disapprove` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verification`
--

INSERT INTO `users_verification` (`id`, `user_id`, `email`, `facebook`, `google`, `linkedin`, `phone`, `document`, `fb_id`, `google_id`, `linkedin_id`, `reason_for_disapprove`) VALUES
(1, 1, 'yes', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, 'testttt'),
(2, 2, 'no', 'no', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(5, 5, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(6, 6, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(7, 7, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(8, 8, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(9, 9, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(10, 10, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(11, 11, 'yes', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(12, 12, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(17, 17, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(18, 18, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(19, 19, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `field` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `field`, `value`) VALUES
(1, 3, 'date_of_birth', '2000-2-3'),
(2, 4, '', NULL),
(3, 5, '', NULL),
(4, 1, 'live', 'Chennai'),
(5, 1, 'about', 'desccccccccc'),
(6, 6, '', NULL),
(7, 7, '', NULL),
(8, 8, '', NULL),
(9, 9, '', NULL),
(10, 10, '', NULL),
(11, 11, '', NULL),
(12, 12, '', NULL),
(13, 13, '', NULL),
(14, 16, '', NULL),
(15, 17, '', NULL),
(16, 18, '', NULL),
(17, 19, '', NULL),
(18, 20, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency_id`, `balance`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 40.00, 1, '2021-07-05 00:14:49', '2021-08-09 09:59:11'),
(2, 2, 1, 0.00, 1, '2021-07-05 05:20:37', '2021-07-05 05:20:37'),
(3, 3, 1, 0.00, 1, '2021-07-20 05:49:23', '2021-07-20 05:49:23'),
(4, 4, 1, 0.00, 1, '2021-07-31 11:40:33', '2021-07-31 11:40:33'),
(5, 5, 1, 0.00, 1, '2021-07-31 11:42:23', '2021-07-31 11:42:23'),
(6, 6, 1, 0.00, 1, '2021-08-17 10:44:03', '2021-08-17 10:44:03'),
(7, 7, 1, 0.00, 1, '2021-08-17 10:46:11', '2021-08-17 10:46:11'),
(8, 8, 1, 0.00, 1, '2021-08-17 11:08:39', '2021-08-17 11:08:39'),
(9, 9, 1, 0.00, 1, '2021-08-17 11:21:11', '2021-08-17 11:21:11'),
(10, 10, 1, 0.00, 1, '2021-08-17 11:25:03', '2021-08-17 11:25:03'),
(11, 11, 1, 0.00, 1, '2021-08-17 11:40:33', '2021-08-17 11:40:33'),
(12, 12, 1, 0.00, 1, '2021-08-17 11:42:20', '2021-08-17 11:42:20'),
(13, 13, 1, 0.00, 1, '2021-08-17 13:07:47', '2021-08-17 13:07:47'),
(14, 14, 1, 0.00, 1, '2021-08-23 15:41:47', '2021-08-23 15:41:47'),
(15, 15, 1, 0.00, 1, '2021-08-23 15:46:59', '2021-08-23 15:46:59'),
(16, 16, 1, 0.00, 1, '2021-08-26 10:17:15', '2021-08-26 10:17:15'),
(17, 17, 1, 0.00, 1, '2021-08-26 10:18:27', '2021-08-26 10:18:27'),
(18, 18, 1, 0.00, 1, '2021-08-26 10:19:59', '2021-08-26 10:19:59'),
(19, 19, 1, 0.00, 1, '2021-08-26 10:20:15', '2021-08-26 10:20:15'),
(20, 20, 1, 0.00, 1, '2021-08-26 10:20:27', '2021-08-26 10:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `propertyid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userid`, `propertyid`, `status`) VALUES
(39, '1', '11', '0'),
(41, '1', '7', '0'),
(43, '1', '4', '1'),
(51, '1', '5', '1'),
(52, '1', '10', '0'),
(53, '1', '15', '1'),
(55, '1', '6', '0'),
(56, '2', '20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `payment_method_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `payout_id`, `currency_id`, `payment_method_id`, `uuid`, `subtotal`, `amount`, `payment_method_info`, `email`, `account_number`, `bank_name`, `swift_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '6113aed3a088d', 10.00, NULL, NULL, 'info@sangvish.com', NULL, NULL, NULL, 'Pending', '2021-08-11 15:04:51', '2021-08-11 15:04:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_username_unique` (`username`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_type`
--
ALTER TABLE `amenity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_short_name_unique` (`short_name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_code_unique` (`code`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_type`
--
ALTER TABLE `message_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_penalties`
--
ALTER TABLE `payout_penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_settings`
--
ALTER TABLE `payout_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_address`
--
ALTER TABLE `property_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_beds`
--
ALTER TABLE `property_beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_dates`
--
ALTER TABLE `property_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_description`
--
ALTER TABLE `property_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_fees`
--
ALTER TABLE `property_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_icalimports`
--
ALTER TABLE `property_icalimports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_photos`
--
ALTER TABLE `property_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_price`
--
ALTER TABLE `property_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_rules`
--
ALTER TABLE `property_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_steps`
--
ALTER TABLE `property_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD PRIMARY KEY (`admin_id`,`role_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_metas`
--
ALTER TABLE `seo_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `space_type`
--
ALTER TABLE `space_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starting_cities`
--
ALTER TABLE `starting_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sv_doc_verification`
--
ALTER TABLE `sv_doc_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_verification`
--
ALTER TABLE `users_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `amenity_type`
--
ALTER TABLE `amenity_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `message_type`
--
ALTER TABLE `message_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payout_penalties`
--
ALTER TABLE `payout_penalties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_settings`
--
ALTER TABLE `payout_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `property_address`
--
ALTER TABLE `property_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `property_beds`
--
ALTER TABLE `property_beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_dates`
--
ALTER TABLE `property_dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1132;

--
-- AUTO_INCREMENT for table `property_description`
--
ALTER TABLE `property_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `property_details`
--
ALTER TABLE `property_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_fees`
--
ALTER TABLE `property_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `property_icalimports`
--
ALTER TABLE `property_icalimports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_photos`
--
ALTER TABLE `property_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `property_price`
--
ALTER TABLE `property_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `property_rules`
--
ALTER TABLE `property_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_steps`
--
ALTER TABLE `property_steps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_metas`
--
ALTER TABLE `seo_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `space_type`
--
ALTER TABLE `space_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `starting_cities`
--
ALTER TABLE `starting_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sv_doc_verification`
--
ALTER TABLE `sv_doc_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_verification`
--
ALTER TABLE `users_verification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
