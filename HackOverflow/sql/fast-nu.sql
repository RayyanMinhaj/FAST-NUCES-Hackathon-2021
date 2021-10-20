-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 02:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast-nu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_schedule`
--

CREATE TABLE `admission_schedule` (
  `date_id` int(11) NOT NULL,
  `date_name` varchar(256) NOT NULL,
  `BS_date` varchar(255) NOT NULL,
  `MS_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_schedule`
--

INSERT INTO `admission_schedule` (`date_id`, `date_name`, `BS_date`, `MS_date`) VALUES
(1, 'Last date for Application Submission:	', 'Jul 30 (Thu)	', 'Jul 30 (Thu)\r\n'),
(2, 'Admission Tests	', 'No Admission Test	', 'From Aug 6 (THU)\r\n'),
(3, 'Declaration of selected/ Test Qualified Candidates	', 'Aug 5 (Wed) 11:00 PM	', 'Aug 17 (Mon) 06:00 PM\r\n'),
(4, 'Interviews	', 'Aug 6-13 (Thu-Thu)\r\n(Financial Aid Applicants)	', 'Aug 18-21 (Tue-Fri)\r\n(Graduate Admissions)'),
(5, 'Admission Formalities	', 'Aug 17-24 (Mon-Mon)	', 'Aug 24-27 (Mon-Thu)\r\n'),
(6, 'Commencement of online classes for current students	', 'Aug 31 (Mon)	', 'Aug 31 (Mon)\r\n'),
(7, 'Start of on-campus classes for all students *	', 'Sep 15 (Tue)	', 'Sep 15 (Tue)\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `deans_list`
--

CREATE TABLE `deans_list` (
  `S. No.` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Id` varchar(10) NOT NULL,
  `Batch No.` int(5) NOT NULL,
  `Department` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deans_list`
--

INSERT INTO `deans_list` (`S. No.`, `Name`, `Id`, `Batch No.`, `Department`) VALUES
(1, 'Sameen Jawaid', '17K-3868', 2017, 'CS'),
(2, 'Rayyan Minhaj', '20K-0143', 2020, 'CS'),
(3, 'Kainat Afzal', '20K-0281', 2020, 'CS'),
(4, 'Ayaan Danish', '20K-0245', 2020, 'CS'),
(5, 'Hafiza Amna Sadiq', '17K-3679', 2017, 'CS'),
(6, 'Mohsin Ahmed', '20K-1234', 2020, 'CS'),
(7, 'Umar Akmal', '18K-4567', 2018, 'EE'),
(8, 'Abid Raza', '19K-8910', 2019, 'BBA'),
(9, 'Bilal Ahmed', '18K-1278', 2018, 'EE'),
(10, 'Arham Afzal', '19K-1266', 2019, 'EE');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(256) NOT NULL,
  `hod_id` int(11) NOT NULL,
  `contact_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `hod_id`, `contact_info`) VALUES
(1, 'Computer Science', 2, 'Tahir Mehmood\r\nPhone# 021-4656165-78\r\nRoom# 56\r\n\r\nMurtaza Habib\r\nPhone# 021-4656165-78\r\nRoom# 56\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(256) NOT NULL,
  `event_caption` text NOT NULL,
  `event_date` varchar(20) NOT NULL,
  `event_by` varchar(255) NOT NULL,
  `img_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_caption`, `event_date`, `event_by`, `img_url`) VALUES
(1, 'Developers Day 2021', 'Developers\' Day, hosted by the ACM, revolves around Job Fair, Competitions, Tech Talks and Panel Discussions. The event is free of cost for the participants and henceforth, it has single handedly revamped the entire job searching procedure by acting as the', '17th April 2021', 'ACM-NUCES', 'http://khi.nu.edu.pk/assets/images/event/pic1.jpg'),
(2, 'PROCOM\'20', 'Procom is the flagship event of the students of FAST, Karachi. For the past 20 years, Procom has proven to be the biggest educational event for students across the nation. Procom not only has a variety of competitions and tech talks, but it is also home to', '22nd March 2021', 'Procom', 'https://10pearls.com/wp-content/uploads/2018/03/Procom-7-1.jpg'),
(3, 'NUFEST\'21', 'Nu-Fest is a two-day inter schools, colleges and universities event with the objective to promote soft skills of the students and to reflect the positive strong image of FAST that is towards extracurricular and management skills. This event includes competitions, games and a lot of food. It is attended by numerous students from around the city which adds to its prestige. triangle with all three sides equal..', '29th January 2021', 'NuFest', 'http://pcgofficial.com/Images/BlogsGallery/cover405478681.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(256) NOT NULL,
  `Karachi` tinyint(1) NOT NULL,
  `Islamabad` tinyint(1) NOT NULL,
  `faislabad` tinyint(1) NOT NULL,
  `peshawar` tinyint(1) NOT NULL,
  `Lahore` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `societies`
--

CREATE TABLE `societies` (
  `s_id` int(11) NOT NULL,
  `society_name` varchar(256) NOT NULL,
  `img_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `societies`
--

INSERT INTO `societies` (`s_id`, `society_name`, `img_url`) VALUES
(1, 'The Literary Club', 'https://khi.nu.edu.pk/assets/images/event/tlc.png'),
(2, 'The Webmasters', 'https://khi.nu.edu.pk/assets/images/event/webmasters.jpg'),
(3, 'ACM NUCES', 'https://khi.nu.edu.pk/assets/images/event/acm.jpg'),
(4, 'Character Building Socierty', 'https://khi.nu.edu.pk/assets/images/event/cbs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff_members`
--

CREATE TABLE `staff_members` (
  `faculty_id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Department` varchar(5) NOT NULL,
  `email` varchar(25) NOT NULL,
  `position` varchar(255) NOT NULL,
  `Room` int(11) NOT NULL,
  `Ext.` int(11) NOT NULL,
  `img_url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_members`
--

INSERT INTO `staff_members` (`faculty_id`, `Name`, `Department`, `email`, `position`, `Room`, `Ext.`, `img_url`) VALUES
(1, 'Atif Tahir', 'CS', 'atif.tahir@nu.edu.pk', 'Professor', 102, 336, 'https://www.nu.edu.pk/public/Faculty/5308.jpg'),
(2, 'Zulfiqar Memon', 'CS', 'zulfiqar.memon@nu.edu.pk', 'HOD', 0, 0, 'https://media-exp1.licdn.com/dms/image/C4D03AQE8GE-gDxvlfg/profile-displayphoto-shrink_200_200/0/1516606198347?e=1625702400&v=beta&t=o5hMsHaXK8haGqEuPucNxA0Rqc1VGu8ZcE_YxVvJYzU'),
(3, 'Jawwad Shamsi', 'CS', 'jawwad.shamsi@nu.edu.pk', 'Director', 0, 0, 'https://media-exp1.licdn.com/dms/image/C4D03AQG2shmnVm9TWg/profile-displayphoto-shrink_200_200/0/1588344431380?e=1625702400&v=beta&t=dSFSquvrKgWQlPPWt0nstuEMQHM15WSrZBIubeQH_mc'),
(4, 'Ghufran Ahmed', 'CS', 'ghufran.ahmed@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(5, 'Suffian Hamed', 'CS', 'suffian.hamed@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(6, 'Muhammad Nouman', 'CS', 'muhammad.nouman@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(7, 'Hassan Jamil', 'CS', 'hassan.jamil@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(8, 'Nadeem Kafi', 'CS', 'nadeem.kafi@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(9, 'M. Shahzed', 'CS', 'mshahzed@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(10, 'Farrukh Hassan', 'CS', 'farrukh.hassan@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(11, 'Aqsa Aslam', 'CS', 'aqsa.aslam@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(12, 'Fahad Sherwani', 'CS', 'fahad.sherwani@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(13, 'Safia', 'CS', 'safia@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(14, 'Rizwan Qureshi', 'CS', 'rizwan.qureshi@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(15, 'Nida Munawar', 'CS', 'nida.munawar@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(16, 'Romasha Khurshid', 'CS', 'romasha.khurshid@nu.edu.p', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(17, 'Anam Qureshi', 'CS', 'anam.qureshi@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(18, 'Sandia Kumari', 'CS', ' sandia.kumari@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(19, 'Shahar Bano', 'CS', 'shahar.bano@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(20, 'Shoaib Rauf', 'CS', 'shoaib.rauf@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(21, 'Sobia Iftikhar', 'CS', 'sobia.iftikhar@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(22, 'Farah Sadia', 'CS', 'farah.sadia@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(23, 'Talha Khan', 'CS', 'talha.khan@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(24, 'Tania Iram', 'CS', 'tania.iram@nu.edu.pk', '', 0, 0, 'http://www.nu.edu.pk/public/Faculty/9551.jpg'),
(25, 'Zain Hassan', 'CS', 'zain.hassan@nu.edu.pk', '', 0, 0, 'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png'),
(26, 'Nausheen Shoaib', 'CS', 'nausheen.shoaib@nu.edu.pk', '', 0, 0, ''),
(27, 'Anaum Hamid', 'CS', 'anaum.hamid@nu.edu.pk', '', 0, 0, ''),
(28, 'Basit Jasani', 'CS', 'basit.jasani@nu.edu.pk', '', 0, 0, ''),
(29, 'Bakhtawer Abbasi', 'CS', 'bakhtawer.abbasi@nu.edu.p', '', 0, 0, ''),
(30, 'Javeria Farooq', 'CS', 'javeria.farooq@nu.edu.pk', '', 0, 0, 'http://www.nu.edu.pk/public/Faculty/5096.jpg'),
(31, 'Atiya Jokhio', 'CS', 'atiya.jokhio@nu.edu.pk', '', 0, 0, ''),
(32, 'M. Danish', 'CS', 'm.danish@nu.edu.pk', '', 0, 0, ''),
(33, 'M. Shoail Afzal', 'CS', 'msohail.afzal@nu.edu.pk', '', 0, 0, ''),
(34, 'Musawar Ali', 'CS', 'musawar.ali@nu.edu.pk', '', 0, 0, ''),
(35, 'M. Fahim', 'CS', 'm.fahim@nu.edu.pk', '', 0, 0, ''),
(36, 'Aqsa Zahid', 'CS', 'aqsa.zahid@nu.edu.pk', '', 0, 0, ''),
(37, 'Mubashra Fayyaz', 'CS', 'mubashra.fayyaz@nu.edu.pk', '', 0, 0, ''),
(38, 'Sumaiyah', 'CS', 'sumaiyah@nu.edu.pk', '', 0, 0, 'https://media-exp1.licdn.com/dms/image/C4E03AQEYxu1ji04W8g/profile-displayphoto-shrink_200_200/0/1517487006142?e=1625702400&v=beta&t=orclhS_31gMImWMcNuIjkTPN0IReYiaqeozfi3YhclM'),
(39, 'Hamza Ahmed', 'CS', 'hamza.ahmed@nu.edu.pk', '', 0, 0, ''),
(40, 'Nimra Iqbal', 'CS', 'nimra.iqbal@nu.edu.pk', '', 0, 0, ''),
(41, 'Fizza Aqeel', 'CS', 'fizza.aqeel@nu.edu.pk', '', 0, 0, ''),
(42, 'Kariz Kamal', 'CS', 'kariz.kamal@nu.edu.pk', '', 0, 0, ''),
(43, 'Abeer Gauher', 'CS', 'abeer.gauher@nu.edu.pk', '', 0, 0, ''),
(44, 'Zeshan Khan', 'CS', 'zeshan.khan@nu.edu.pk', '', 0, 0, ''),
(45, 'Muhammad Rafi', 'CS', 'muhammad.rafi@nu.edu.pk', '', 0, 0, ''),
(46, 'Syed Ali Raza', 'CS', 'syed.aliraza@nu.edu.pk', '', 0, 0, ''),
(47, 'Behraj Khan', 'CS', 'behraj.khan@nu.edu.pk', '', 0, 0, ''),
(48, 'Saeeda Kanwal', 'CS', 'saeeda.kanwal@nu.edu.pk', '', 0, 0, ''),
(49, 'Fahad Samad', 'CS', 'fahad.samad@nu.edu.pk', '', 0, 0, ''),
(50, 'Shahbaz Siqqiqui', 'CS', 'shahbaz.siddiqui@nu.edu.p', '', 0, 0, ''),
(51, 'Amin Sadiq', 'CS', 'amin.sadiq@nu.edu.pk', '', 0, 0, ''),
(52, 'Abdullah Zarshaid', 'CS', 'abdullah.zarshaid@nu.edu.', '', 0, 0, ''),
(53, 'Shoaib Raza', 'CS', 'shoaib.raza@nu.edu.pk', '', 0, 0, ''),
(54, 'Rabia Ansari', 'CS', 'rabia.ansari@nu.edu.pk', '', 0, 0, ''),
(55, 'Abdul Aziz', 'CS', 'abdulaziz@nu.edu.pk', '', 0, 0, ''),
(56, 'Rauf Malick', 'CS', 'rauf.malick@nu.edu.pk', '', 0, 0, ''),
(57, 'Abdul Rahman ', 'CS', 'abdulrahman@nu.edu.pk', '', 0, 0, ''),
(58, 'Ubaid Aftab', 'CS', 'ubaid.aftab@nu.edu.pk', '', 0, 0, ''),
(59, 'Rubab Jaffar', 'CS', 'rubab.jaffar@nu.edu.pk', '', 0, 0, ''),
(60, 'Ali Fatmi', 'CS', 'ali.fatmi@nu.edu.pk', '', 0, 0, ''),
(61, 'Muhammad Nadeem', 'CS', 'muhammad.nadeem@nu.edu.pk', '', 0, 0, ''),
(62, 'Muhammad Rafi', 'AI', 'muhammad.rafi@nu.edu.pk', '', 0, 0, ''),
(63, 'Syed Ali Raza', 'AI', 'syed.aliraza@nu.edu.pk', '', 0, 0, ''),
(64, 'Behraj Khan', 'AI', 'behraj.khan@nu.edu.pk', '', 0, 0, ''),
(65, 'Saeeda Kanwal', 'AI', 'saeeda.kanwal@nu.edu.pk', '', 0, 0, ''),
(66, 'Zeshan Khan', 'AI', 'zeshan.khan@nu.edu.pk', '', 0, 0, ''),
(67, 'Kariz Kamal', 'AI', 'kariz.kamal@nu.edu.pk', '', 0, 0, ''),
(68, 'Nimra Iqbal', 'AI', 'nimra.iqbal@nu.edu.pk', '', 0, 0, ''),
(69, 'Fahad Samad', 'CYS', 'fahad.samad@nu.edu.pk', '', 0, 0, ''),
(70, 'Shahbaz Siddiqui', 'CYS', 'shahbaz.siddiqui@nu.edu.p', '', 0, 0, ''),
(71, 'Abdullah Zarshaid', 'CYS', 'abdullah.zarshaid@nu.edu.', '', 0, 0, ''),
(72, 'Shoaid Raza', 'CYS', 'shoaib.raza@nu.edu.pk', '', 0, 0, ''),
(73, 'Amin Sadiq', 'CYS', 'amin.sadiq@nu.edu.pk', '', 0, 0, ''),
(74, 'Rabia Ansari', 'CYS', 'rabia.ansari@nu.edu.pk', '', 0, 0, ''),
(75, 'Abdul Aziz', 'SE', 'abdulaziz@nu.edu.pk', '', 0, 0, ''),
(76, 'Abdul Rahman', 'SE', 'abdulrahman@nu.edu.pk', '', 0, 0, ''),
(77, 'Rauf Malick', 'SE', 'rauf.malick@nu.edu.pk', '', 0, 0, ''),
(78, 'Ubaid Aftab', 'SE', 'ubaid.aftab@nu.edu.pk', '', 0, 0, ''),
(79, 'Rubab Jaffar', 'SE', 'rubab.jaffar@nu.edu.pk', '', 0, 0, ''),
(80, 'Ali Fatmi', 'SE', 'ali.fatmi@nu.edu.pk', '', 0, 0, ''),
(81, 'Muhammad Nadeem', 'SE', 'muhammad.nadeem@nu.edu.pk', '', 0, 0, 'http://nu.edu.pk/public/Faculty/9335.jpg'),
(82, 'Fareeha Sultan', 'HS', 'fareeha.sultan@nu.edu.pk', '', 0, 0, ''),
(83, 'Rabia Tabassum', 'HS', 'rabia.tabassum@nu.edu.pk', '', 0, 0, ''),
(84, 'Faiza Mumtaz', 'HS', 'faiza.mumtaz@nu.edu.pk', '', 0, 0, ''),
(85, 'Shehzad Sheikh', 'HS', 'shehzad.sheik@nu.edu.pk', '', 0, 0, ''),
(86, 'Kishwer Nazli ', 'HS', 'kishwer.nazli@nu.edu.pk', '', 0, 0, ''),
(87, 'Hubrah Razi', 'HS', 'hubrah.razi@nu.edu.pk', '', 0, 0, ''),
(88, 'Javeria Ali', 'HS', 'javeria.ali@nu.edu.pk', '', 0, 0, ''),
(89, 'Amber Shaikh', 'HS', 'amber.shaikh@nu.edu.pk', '', 0, 0, ''),
(90, 'Javed Iqbal', 'HS', 'javed.iqbal@nu.edu.pk', '', 0, 0, ''),
(91, 'Asma Masood', 'HS', 'asma.masood@nu.edu.pk', '', 0, 0, ''),
(92, 'Nadeem Arif', 'HS', 'nadeem.arif@nu.edu.pk', '', 0, 0, ''),
(93, 'Sameera Sultan', 'HS', 'sameera.sultan@nu.edu.pk', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_events`
--

CREATE TABLE `sub_events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(256) NOT NULL,
  `event_date` varchar(256) NOT NULL,
  `img_url` text NOT NULL,
  `event_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_events`
--

INSERT INTO `sub_events` (`event_id`, `event_name`, `event_date`, `img_url`, `event_by`) VALUES
(1, 'Week Of TLC', '24th Feb 2021', 'https://media-exp1.licdn.com/dms/image/C4D22AQF1RqFtQAWW8A/feedshare-shrink_2048_1536/0/1617769262509?e=1623283200&v=beta&t=peJq5uhTJFn461CT0jqqvoV4QVZCMo5up_CTheanPUY', 'TLC'),
(2, 'Data Warehousing Bootcamp\'21', '29th April 2021', 'https://media-exp1.licdn.com/dms/image/C4D22AQE4Dzw93OBqHA/feedshare-shrink_1280/0/1615788830288?e=1623283200&v=beta&t=-mW5w-RMozIlTOHc4K46yRIu_-Rn7E5QCefuCuCTkeQ', 'Astera');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_schedule`
--
ALTER TABLE `admission_schedule`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `deans_list`
--
ALTER TABLE `deans_list`
  ADD PRIMARY KEY (`S. No.`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `societies`
--
ALTER TABLE `societies`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `staff_members`
--
ALTER TABLE `staff_members`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `sub_events`
--
ALTER TABLE `sub_events`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deans_list`
--
ALTER TABLE `deans_list`
  MODIFY `S. No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `societies`
--
ALTER TABLE `societies`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_members`
--
ALTER TABLE `staff_members`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
