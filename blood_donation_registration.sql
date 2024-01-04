-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 12:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

CREATE TABLE `blood_donation` (
  `donator_full_name` text NOT NULL,
  `donator_email` varchar(40) NOT NULL,
  `donator_age` int(2) NOT NULL,
  `donator_gender` text NOT NULL,
  `donator_contact_number` varchar(11) NOT NULL,
  `donator_address` varchar(100) NOT NULL,
  `donator_donation_date` varchar(20) NOT NULL,
  `donator_blood_type` text NOT NULL,
  `donator_chronic_disease` text NOT NULL,
  `donator_previous_travelled` text NOT NULL,
  `donator_physical_factor` text NOT NULL,
  `donator_medical_center` text NOT NULL,
  `donator_height` varchar(10) NOT NULL,
  `donator_weight` varchar(10) NOT NULL,
  `donator_BMI` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_donation`
--

INSERT INTO `blood_donation` (`donator_full_name`, `donator_email`, `donator_age`, `donator_gender`, `donator_contact_number`, `donator_address`, `donator_donation_date`, `donator_blood_type`, `donator_chronic_disease`, `donator_previous_travelled`, `donator_physical_factor`, `donator_medical_center`, `donator_height`, `donator_weight`, `donator_BMI`) VALUES
('MUHAMMAD HANIF AIMAN BIN KAMARUZAMAN', 'hanifaiman2004@gmail.com', 20, 'MALE', '11', 'Kuala Berang Hulu, Terengganu, Terengganu', '20 January 2024', 'B', 'None', 'EUROPE', 'obesity', 'Hospital Hulu Terengganu (TERENGGANU)', '1.89', '78', '21.8358948'),
('MUHAMMAD HANIF AIMAN BIN KAMARUZAMAN', 'hanifaiman2004@gmail.com', 20, 'MALE', '1121955708', 'Kuala Berang Hulu, Terengganu, Terengganu', '20 January 2024', 'B', 'None', 'EUROPE', 'obesity', 'Hospital Hulu Terengganu (TERENGGANU)', '1.89', '78', '21.8358948'),
('MUHAMMAD HANIF AIMAN BIN KAMARUZAMAN', 'hanifaiman2004@gmail.com', 20, 'MALE', '01121955708', 'Kuala Berang Hulu, Terengganu, Terengganu', '20 January 2024', 'B', 'None', 'EUROPE', 'obesity', 'Hospital Hulu Terengganu (TERENGGANU)', '1.89', '78', '21.8358948'),
('AFIF IRFAN BIN ZAIDI ', 'apip04@gmail.com', 22, 'MALE', '0142186796', '250 Jalan Purta, Alor setar, Kedah ', '20 January 2024', 'O', 'None', 'AUSTRALIA', 'None', 'Hospital Sultanah Bahiyah (KEDAH)', '1.76', '97', '31.3145661'),
('AFIF IRFAN BIN ZAIDI ', 'apip04@gmail.com', 22, 'MALE', '0142186796', '250 Jalan Purta, Alor setar, Kedah ', '20 January 2024', 'O', 'None', 'AUSTRALIA', 'None', 'Hospital Sultanah Bahiyah (KEDAH)', '1.76', '97', '31.3145661'),
('DANISH ALFIAN BIN ZULLKIFLI', 'danfian@gmail.com', 27, 'MALE', '0106547423', 'A020 machang, kelantan', '27 January 2024', 'O', 'None', 'AUSTRALIA', 'None', 'Hospital Bahagia Ulu Kinta (PERAK)', '1.71', '66', '22.5710475'),
('MUHAMMAD HAFIZ AIMAN BIN KAMARUZAMAN ', 'hafizaman2004@gmail.com', 27, 'MALE', '01638294576', 'Kuala Berang, Terengganu', '27 January 2024', 'AB', 'ASTHMA', 'AUSTRALIA', 'obesity', 'Hospital Sultan Ismail Johor Bahru (JOHOR)', '1.78', '124', '39.1364726'),
('MUHAMMAD MAAMOR BIN FAIZAL', 'mazal90@gmail.com', 33, 'MALE', '0172553723', '	59, Jalan Betik 1, Taman Kota Masai, Pasir Gudang, 81700, Pasir Gudan', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'None', 'obesity', 'Hospital Mersing (JOHOR)', '1.90', '87', '24.0997229'),
('Ting Niau He', 'Niauxx56@gmail.com', 37, 'FEMALE', '0166777778', 'PT 2109, Sri Senawang Light Industrial Centre, 70450, Senawang, Negeri', '20 January 2024', 'AB', 'None', 'ANTARTICA', 'pregnant', 'Hospital Tampin (NEGERI SEMBILAN)', '1.56', '58', '23.8330046'),
('Siti Nur Sufiah Binti Kamal', 'sufiahKAMAL89@gmail.com', 22, 'FEMALE', '0172536183', 'Lot PT 1809, Putra Jaya Presint 8, Putra Jaya, 62000, Putrajaya, WP Pu', '20 January 2024', 'AB', 'HIGH BLOOD PRESURE', 'AFRICA', 'Blind', 'Hospital Putrajaya (WP PUTRAJAYA)', '1.46', '52', '24.3948207'),
('Nurul Nursyafika Sofi binti Kemat Hakam', 'syafikaSofi111@gmail.com', 25, 'FEMALE', '014-646 231', '16, Lebuh Nipah 5, Bayan Lepas, 11900, Bayan Lepas, Pulau Pinang', '20 January 2024', 'A', 'None', 'ASIA', 'obesity', 'Hospital Sultan Ismail Johor Bahru (JOHOR)', '1.81', '79', '24.1140380'),
('Chee Haa Kah', 'CHK0404@gmail.com', 27, 'FEMALE', '019-774 231', 'Kawasan Perindustrian Mara, 16100, Kota Bharu, Kelantan', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'AFRICA', 'None', 'Hospital Sultan Ismail Petra (KELANTAN)', '1.67', '105', '37.6492523'),
('Chee Haa Kah', 'CHK0404@gmail.com', 27, 'FEMALE', '019-774 231', 'Kawasan Perindustrian Mara, 16100, Kota Bharu, Kelantan', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'AFRICA', 'None', 'Hospital Sultan Ismail Petra (KELANTAN)', '1.67', '105', '37.6492523'),
('Chee Haa Kah', 'CHK0404@gmail.com', 27, 'FEMALE', '019-774 231', 'Kawasan Perindustrian Mara, 16100, Kota Bharu, Kelantan', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'AFRICA', 'None', 'Hospital Sultan Ismail Petra (KELANTAN)', '1.67', '105', '37.6492523'),
('Chee Haa Kah', 'CHK0404@gmail.com', 27, 'FEMALE', '019-774 231', 'Kawasan Perindustrian Mara, 16100, Kota Bharu, Kelantan', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'AFRICA', 'None', 'Hospital Sultan Ismail Petra (KELANTAN)', '1.67', '105', '37.6492523'),
('Chia Tia Shey', 'Tiashey18@gmail.com', 18, 'FEMALE', '018-282 343', 'Jalan Parameswara, 75000, Bandaraya Melaka, Melaka', '20 January 2024', 'B', 'ASTHMA', 'EUROPE', 'obesity', 'Hospital Alor Gajah (MELAKA)', '1.79', '75', '23.4075091'),
('	Rasammah a/l Gopinathan', '', 21, 'MALE', '016-335 284', 'Lorong Tun Ismail 9, 25000, Kuantan,Pahang', '27 January 2024', 'O', 'DIABETES', 'ASIA', 'obesity', 'Hospital Pekan (PAHANG)', '1.89', '98', ''),
('	Rasammah a/l Gopinathan', 'ammaha/lgopi 00@gmail.com', 21, 'MALE', '016-335 284', 'Lorong Tun Ismail 9, 25000, Kuantan,Pahang', '27 January 2024', 'O', 'DIABETES', 'ASIA', 'obesity', 'Hospital Pekan (PAHANG)', '1.89', '98', '27.4348422'),
('	Alice Chow Khee Kua', 'Alicekua23@gmail.com', 24, 'FEMALE', '015-806 950', '4 Jalan Sultan Mansor, 34000, Taiping, Perak', '27 January 2024', 'B', 'ASTHMA', 'None', 'None', 'Hospital Bahagia Ulu Kinta (PERAK)', '1.45', '50', '23.7812128'),
('Yao Liat Ke', 'YLTlebit@gmail.com', 18, 'MALE', '017-418 811', 'No 1 Jalan Wawasan, 88300, Kota Kinabalu, Sabah ', '27 January 2024', 'O', 'None', 'ASIA', 'None', 'Hospital Queen Elizabeth (SABAH)', '2.01', '104', '25.7419370'),
('Jajuenne binti Zahani', 'Jahani1998@', 25, 'FEMALE', '018-272 988', 'Blk 29, Jalan Pelabuhan Lama, 900000, Sandakan, Sabah ', '27 January 2024', 'A', 'HIGH BLOOD PRESURE', 'ASIA', 'None', 'Hospital Pasir Mas (KELANTAN)', '1.83', '79', '23.5898354'),
('', '', 0, '', '', '83 Jalan Raja Ekram, 30300,	Ipoh, Perak', '27 January 2024', 'AB', 'None', 'None', 'None', 'Hospital Teluk Intan(PERAK)', '1.67', '57', ''),
('Siao Siang Mai', 'xavier/mai19@gmail.com', 38, 'MALE', '015-255 660', '83 Jalan Raja Ekram, 30300,	Ipoh, Perak', '27 January 2024', 'AB', 'None', 'None', 'None', 'Hospital Teluk Intan(PERAK)', '1.67', '57', '20.4381655'),
('Nur Izzati binti Mat Nazir', 'izzatiNazer@gmail.com', 20, 'FEMALE', '011-3788 39', 'Teluk Intan, Perak', '27 January 2024', 'B', 'DIABETES', 'ASIA', 'obesity', 'Hospital Teluk Intan(PERAK)', '1.72', '57', '19.2671714'),
('Muhammed Husaini bin Maskor', 'husainiMaskor@gmail.com', 18, 'MALE', '013-8880 35', 'Istana Kehakiman Presint 3, Jalan Permodenan, 60506, Putrajaya', '27 January 2024', 'AB', 'None', 'None', 'Blind', 'Hospital Putrajaya (WP PUTRAJAYA)', '2.10', '105', '23.8095238'),
('Mohamad Hj Nik Muzzammil bin Wan Hakimi', 'zamill44@gmail.com', 30, 'MALE', '014-976 055', '59, Jalan Jubli Perak, 01000, Kangar, Perlis', '27 January 2024', 'B', 'None', 'SOUTH AMERICA', 'Blind', 'Hospital Tuanku Fauziah (PERLIS)', '1.56', '78', '32.0512820'),
('Che Hussin bin Che Basyir', 'Hussinbasyir@gmail.com', 34, 'FEMALE', '014-658 354', '38 Tingkat Tembaga, Butterworth, 11600, Pulau Pinang ', '27 January 2024', 'B', 'None', 'None', 'None', 'Hospital Balik Pulau (PULAU PINANG)', '1.95', '95', '24.9835634'),
('Nuur Nabila Fazil binti Tunan', 'NabilaTunan@gmail.com', 18, 'FEMALE', '014-656 488', '559-G Jalan Sungai Dua, Gelugor, 11700, Gelugor, Pulau Pinang', '20 January 2024', 'O', 'HIV', 'NORTH AMERICA', 'None', 'Hospital Sungai Bakap(PULAU PINANG)', '1.72', '102', '34.4780962'),
('Merican a/l Vinod', 'vinod12@gmail.com', 25, 'MALE', '017-425 008', 'Lot TL 207901933,[], Jalan Tanjung Kubung, Peti Surat 82238, 87032, Labuan, Wilayah Persekutuan Labu', '27 January 2024', 'AB', 'DIABETES', 'None', 'obesity', 'Hospital Labuan (WP LABUAN)', '1.75', '69', '22.5306122'),
('S. A. Renuga', 'renuga_29@gmail.com', 35, 'FEMALE', '017-418 853', 'NO.U0170, Jalan Okk Ag Besar, Wilayah Persekutuan Labuan', '27 January 2024', 'A', 'DIABETES', 'None', 'pregnant', 'Hospital Labuan (WP LABUAN)', '1.78', '85', '26.8274207'),
('Muhamed Nik Idzwan Sufian bin Syed ', '', 26, 'MALE', '018-411 337', '1st Floor, Lot 1, Lazenda Warehouse, Kampung Sungai Keling, Jalan Patau Patau, Labuan, Sabah, 87000,', '27 January 2024', 'B', 'HIGH BLOOD PRESURE', 'None', 'Blind', 'Hospital Labuan (WP LABUAN)', '1.87', '87', ''),
('Cindy Ang Kia Whey', 'cindy_whey@gmail.com', 23, 'MALE', '015-423 460', '7, First Floor, Blok F, Gudang MPL, Jalan Patau Patau, Labuan, 87000, Labuan, WP Labuan', '27 January 2024', 'O', 'CANSER', 'EUROPE', 'None', 'Hospital Labuan (WP LABUAN)', '1.67', '74', '26.5337588'),
('Thayaparan Nair a/l Rueben', 'Nair_rueben@gmail.com', 30, 'MALE', '019-660 555', '	25/1, Jalan Matahari 1/1, Matahari Height, Seremban, 70450, Seremban, Negeri Sembilan', '27 January 2024', 'B', 'DIABETES', 'None', 'None', 'Hospital Port Dickson (NEGERI SEMBILAN)', '1.80', '120', '37.0370370'),
('	Thayaparan Shivraj a/l Anbil ', 'shivraj_anbil@gmail.com', 22, 'MALE', '016-651 650', '	4, KM3, Jalan Seremban, 71000, Port Dickson, Negeri Sembilan', '27 January 2024', 'AB', 'DIABETES', 'None', 'obesity', 'Hospital Tampin (NEGERI SEMBILAN)', '1.89', '130', '36.3931580'),
('Siu Yang Khi', 'Siu_kamui@gmail.com', 24, 'FEMALE', '012-646 318', 'No. 27, Jalan Persiaran, 71010, Port Dickson, Negeri Sembilan', '27 January 2024', 'A', 'CANSER', 'ASIA', 'None', 'Hospital Port Dickson (NEGERI SEMBILAN)', '1.73', '78', '26.0616793'),
('Gao Chon Ha', 'Goa_ha@gmail.com', 24, 'FEMALE', '013-2274 94', 'Jalan Mahmud, P.O.Box 222, 15720 Kotah Bharu, Kelantan', '20 January 2024', 'B', 'DIABETES', 'None', 'pregnant', 'Hospital Sultan Ismail Petra (KELANTAN)', '1.87', '97', '27.7388544'),
('Gao Chon Ha', 'Goa-ha667@gmail.com', 25, 'FEMALE', '015-2274 94', 'Jalan Mahmud, P.O.Box 222, 15720 Kotah Bharu, Kelantan', '27 January 2024', 'AB', 'DIABETES', 'None', 'None', 'Hospital Pasir Mas (KELANTAN)', '1.72', '89', '30.0838290'),
('	Muhammet Thalahuddin bin Nasrodin', 'Thalahuddin_nasron@gmail.com ', 37, 'MALE', '019-552 406', '63, Jalan Haji Abdul Aziz, 25000, Kuantan, Pahang', '20 January 2024', 'B', 'None', 'None', 'obesity', 'Hospital Pekan (PAHANG)', '1.96', '87', '22.6468138'),
('Poon Gam Tia', 'Poon_xenos1625@gmail.com', 24, 'FEMALE', '', 'Kuantan No. 69, Shoplex Treeunder, Pantai Teluk Chempedak, Pahang', '27 January 2024', '', 'None', 'None', 'None', 'Hospital Sarikei (SARAWAK)', '', '', ''),
('Chee Fui Miing', 'miing67182@gmail.com', 29, 'FEMALE', '014-977 318', '96, Persiaran Jubli Emas, 01000, Kangar, Perlis', '20 January 2024', 'B', 'DIABETES', 'AFRICA', 'pregnant', 'Hospital Tuanku Fauziah (PERLIS)', '1.87', '86', '24.5932111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
