-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2024 at 03:03 PM
-- Server version: 8.0.36
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbtalent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `mobile`, `email`, `profile_picture`) VALUES
('abhiramdalai', 'Abhi', 'Abhiram', '8456040822', 'abhiram.dalai@marlinbluetech.com', 'uploads/radha krishna.webp'),
('kjuneja', 'kjuneja', 'K Juneja', '7008990878', 'kj@gmail.com', 'uploads/asian-paints.png'),
('pintunayak', 'pintu', 'Pintu Nayak', '9114144603', 'pintu@gmail.com', 'uploads/Kam dev.jpg'),
('raja', 'raja', 'raja', '890', 'ra@gmail.com', 'uploads/Beautiful-certificate-of-achievement-template-1180x883.jpg'),
('ranjitswain', 'ranjit', 'Ranjit Swain', '9178649037', 'ranjitswain@gmail.com', 'uploads/mahadev.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int NOT NULL,
  `attempt_id` int DEFAULT NULL,
  `stuId` varchar(8) DEFAULT NULL,
  `exam_id` varchar(50) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `selected_option` varchar(1) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `answer_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `attempt_id`, `stuId`, `exam_id`, `question_id`, `selected_option`, `is_correct`, `answer_time`) VALUES
(1685, 1724758677, 'MBT0001', '5th-GK', 48, 'B', 0, '2024-08-27 11:37:57'),
(1686, 1724758677, 'MBT0001', '5th-GK', 49, 'C', 0, '2024-08-27 11:37:57'),
(1687, 1724758677, 'MBT0001', '5th-GK', 50, 'B', 0, '2024-08-27 11:37:57'),
(1688, 1724758677, 'MBT0001', '5th-GK', 54, 'B', 0, '2024-08-27 11:37:57'),
(1689, 1724758677, 'MBT0001', '5th-GK', 55, 'B', 0, '2024-08-27 11:37:57'),
(1690, 1724758699, 'MBT0001', '5th-GK', 48, 'A', 1, '2024-08-27 11:38:19'),
(1691, 1724758699, 'MBT0001', '5th-GK', 49, 'B', 1, '2024-08-27 11:38:19'),
(1692, 1724758699, 'MBT0001', '5th-GK', 50, 'C', 1, '2024-08-27 11:38:19'),
(1693, 1724758699, 'MBT0001', '5th-GK', 51, 'D', 1, '2024-08-27 11:38:19'),
(1694, 1724758699, 'MBT0001', '5th-GK', 55, 'D', 1, '2024-08-27 11:38:19'),
(1695, 1724758743, 'MBT0001', '5th-GK', 49, 'B', 1, '2024-08-27 11:39:03'),
(1696, 1724758743, 'MBT0001', '5th-GK', 50, 'C', 1, '2024-08-27 11:39:03'),
(1697, 1724758743, 'MBT0001', '5th-GK', 51, 'C', 0, '2024-08-27 11:39:03'),
(1698, 1724758743, 'MBT0001', '5th-GK', 53, 'C', 0, '2024-08-27 11:39:03'),
(1699, 1724758743, 'MBT0001', '5th-GK', 54, 'C', 1, '2024-08-27 11:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_no` int NOT NULL,
  `exam_id` varchar(50) NOT NULL,
  `standard` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `fullMarks` int NOT NULL,
  `passingMarks` int NOT NULL,
  `examDate` date NOT NULL,
  `examDuration` varchar(20) NOT NULL,
  `examTime` varchar(20) NOT NULL,
  `totalQuestions` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_no`, `exam_id`, `standard`, `subject`, `fullMarks`, `passingMarks`, `examDate`, `examDuration`, `examTime`, `totalQuestions`) VALUES
(39, '5th-GK-01', '5th', 'GK', 5, 2, '2024-08-24', '5', '11:41 AM', 5),
(48, '5th-GK', '5th', 'GK', 5, 2, '2024-08-27', '5', '22:20', 5),
(49, '5th-Math', '5th', 'Math', 5, 2, '2024-08-27', '5', '22:15', 5),
(50, '5th-English', '5th', 'English', 5, 2, '2024-08-27', '5', '21:15', 5);

-- --------------------------------------------------------

--
-- Table structure for table `exam_certificates`
--

CREATE TABLE `exam_certificates` (
  `certificate_id` int NOT NULL,
  `attempt_id` int DEFAULT NULL,
  `exam_id` varchar(50) NOT NULL,
  `student_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `title`, `date`, `description`) VALUES
(2, ' Employee Recognition Lunch', '2024-05-07', 'Employee Recognition Lunch will be held on 12-05-2024 in company premises. All employee should present that day.'),
(4, 'Annual Science Fair', '2024-06-01', 'The Annual Science Fair will be held on June 15, 2024. All students are encouraged to participate and showcase their projects. Prizes will be awarded for the best projects in each category.'),
(6, 'New Project', '2024-07-08', 'We will have a meeting on 10-07-2024 regarding our new project SMS.'),
(15, 'test', '2024-07-22', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `standard` varchar(10) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `exam_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_id` int NOT NULL,
  `question` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `optionA` varchar(1000) NOT NULL,
  `optionB` varchar(1000) NOT NULL,
  `optionC` varchar(1000) NOT NULL,
  `optionD` varchar(1000) NOT NULL,
  `correctOption` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`standard`, `subject`, `exam_id`, `question_id`, `question`, `optionA`, `optionB`, `optionC`, `optionD`, `correctOption`) VALUES
('5th', 'English', '5th-English', 41, 'test1', 'a', 'b', 'c', 'd', 'A'),
('5th', 'English', '5th-English', 42, 'test2', 'a', 'b', 'c', 'd', 'B'),
('5th', 'English', '5th-English', 43, 'test3', 'a', 'b', 'c', 'd', 'C'),
('5th', 'English', '5th-English', 44, 'test4', 'a', 'b', 'c', 'd', 'D'),
('5th', 'English', '5th-English', 45, 'test5', 'a', 'b', 'c', 'd', 'A'),
('9th', 'Math', '9th-Math', 46, '\\( ax^2 + bx + c = 0 \\)', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 47, '<img src=\"https://latex.codecogs.com/svg.image?\\frac{a}{b}\" title=\"\\frac{a}{b}\" />', 'a', 'b', 'c', 'd', 'D'),
('5th', 'GK', '5th-GK', 48, 'test1', 'a', 'b', 'c', 'd', 'A'),
('5th', 'GK', '5th-GK', 49, 'test2', 'a', 'b', 'c', 'd', 'B'),
('5th', 'GK', '5th-GK', 50, 'test3', 'a', 'b', 'c', 'd', 'C'),
('5th', 'GK', '5th-GK', 51, 'test4', 'a', 'b', 'c', 'd', 'D'),
('5th', 'GK', '5th-GK', 52, 'test5', 'a', 'b', 'c', 'd', 'A'),
('5th', 'GK', '5th-GK', 53, 'test6', 'a', 'b', 'c', 'd', 'B'),
('5th', 'GK', '5th-GK', 54, 'test7', 'a', 'b', 'c', 'd', 'C'),
('5th', 'GK', '5th-GK', 55, 'test8', 'a', 'b', 'c', 'd', 'D'),
('5th', 'Math', '5th-Math', 56, 'if <img src=\"https://latex.codecogs.com/svg.image?x^{2}-2x&plus;3=9\" title=\"x^{2}-2x+3=9\" />, then prove that I am a good boy', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 58, 'test1', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 59, '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 60, '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', 'b', 'c', 'd', 'B'),
('5th', 'Math', '5th-Math', 61, '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\" title=\" ax^{2}\" />', '<img src=\"https://latex.codecogs.com/svg.image?&space;ax^{2}\\iint_{a}^{b}\" title=\" ax^{2}\\iint_{a}^{b}\" />', '<img src=\"https://latex.codecogs.com/svg.image?{y_{a}}^{b}+x^{3}+\\int_{0}^{10}+6\" title=\"{y_{a}}^{b}+x^{3}+\\int_{0}^{10}+6\" />', '<img src=\"https://latex.codecogs.com/svg.image?a\\subseteq&space;b=b\\supseteq&space;c\" title=\"a\\subseteq b=b\\supseteq c\" />', 'B'),
('5th', 'Math', '5th-Math', 62, 'what is the <img src=\"https://latex.codecogs.com/svg.image?6x^{4}&plus;3x^{2}&plus;8x&plus;5\" title=\"6x^{4}+3x^{2}+8x+5\" />', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 63, '<img src=\"https://latex.codecogs.com/svg.image?x^{3}\" title=\"x^{3}\" /> , <img src=\"https://latex.codecogs.com/svg.image?6x^{4}&plus;3x^{2}&plus;8x&plus;5\" title=\"6x^{4}+3x^{2}+8x+5\" />', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 64, 'what is the coefficient of <img src=\"https://latex.codecogs.com/svg.image?6x^{4}&plus;3x^{2}&plus;8x&plus;5\" title=\"6x^{4}+3x^{2}+8x+5\" /> in ', 'a', 'b', 'c', 'd', 'B'),
('5th', 'Math', '5th-Math', 65, 'what is the coefficient of <img src=\"https://latex.codecogs.com/svg.image?6x^{4}&plus;3x^{2}&plus;8x&plus;5\" title=\"6x^{4}+3x^{2}+8x+5\" /> in polynomial', 'a', 'b', 'c', 'd', 'B'),
('5th', 'Math', '5th-Math', 66, 'what is the coefficient of <img src=\"https://latex.codecogs.com/svg.image?6x^{4}&plus;3x^{2}&plus;8x&plus;5\" title=\"6x^{4}+3x^{2}+8x+5\" /> in polynomial <img src=\"https://latex.codecogs.com/svg.image?6x^{4}\" title=\"6x^{4}\" />', 'a', 'b', 'c', 'd', 'A'),
('5th', 'Math', '5th-Math', 67, 'what is the coefficient of <img src=\"https://latex.codecogs.com/svg.image?x^{3}\" title=\"x^{3}\" /> in polynomial <img src=\"https://latex.codecogs.com/svg.image?6x^{4}+3x^{2}+8x+5\" title=\"6x^{4}+3x^{2}+8x+5\" /> ?', 'a', 'b', 'c', 'd', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stuId` varchar(8) NOT NULL,
  `stuAadhar` varchar(12) DEFAULT NULL,
  `stuName` varchar(45) DEFAULT NULL,
  `stuGender` enum('Male','Female','Other') NOT NULL,
  `stuDob` date DEFAULT NULL,
  `stuMobile` varchar(15) DEFAULT NULL,
  `stuEmail` varchar(45) DEFAULT NULL,
  `stuPassword` varchar(32) DEFAULT NULL,
  `stuStandard` varchar(13) DEFAULT NULL,
  `stuProfilePicture` varchar(255) DEFAULT NULL,
  `stuSchool` varchar(50) DEFAULT NULL,
  `stuAddress` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stuId`, `stuAadhar`, `stuName`, `stuGender`, `stuDob`, `stuMobile`, `stuEmail`, `stuPassword`, `stuStandard`, `stuProfilePicture`, `stuSchool`, `stuAddress`) VALUES
('MBT0001', '481496741692', 'Abhiram Dalai', 'Male', '2000-06-16', '9861613880', 'abhiramdalai5462@gmail.com', 'abhi', '5th', 'uploads/Abhiram.jpeg', 'Trident Academy of Technology', 'Singhapur'),
('MBT0002', '492371087385', 'ABHI', 'Male', '2000-08-07', '7325845792', 'abhi@gmail.com', 'abhi', '6th', 'uploads/ram sita.jpg', 'DAV Public School', 'Bhubaneswar'),
('MBT0003', '427365294273', 'Raja Dalai', 'Male', '2001-08-23', '8456040822', 'Raja@gmail.com', 'raja', '7th', 'uploads/mahadev.jpg', 'Sagargaon High School', 'Khordha'),
('MBT0004', '432897521789', 'Pintu Nayak', 'Male', '2000-10-11', '7887', 'pintu@gmail.com', 'pintu', '5th', 'uploads/star-badge-icon-design.jpg', 'Sagargaon High School', 'Khordha'),
('MBT0005', '427810362729', 'Soumyaranjan Balabantaray', 'Male', '2000-01-14', '9237184520', 'babul@gmail.com', 'babul', '7th', NULL, 'Chhatrapada', 'Chhatrapada'),
('MBT0006', '348176598735', 'Rupesh Pradhan', 'Male', '2000-07-15', '8658721529', 'rupesh@gmail.com', 'rupesh', '7th', 'uploads/shree ganesh.jpg', 'St. Latera School', 'Kandhamal'),
('MBT0007', '637362816281', 'Pravudatta Nayak', 'Male', '2000-09-21', '8018691372', 'pravudatta@gmail.com', 'pravu', '9th', NULL, 'ODM Public School', 'Kendrapada'),
('MBT0008', '358742912036', 'Nishikanta Sahoo', 'Male', '2000-12-24', '9556595283', 'paida@gmail.com', 'paida', '6th', 'uploads/ram sita.jpg', 'Banamalipur PS', 'Nayagarh'),
('MBT0009', '68736278299', 'Jyotirmayee Nayak', 'Female', '2001-03-28', '6371949012', 'jyoti@gmail.com', 'Jyoti', '6th', 'uploads/maa laxmi.jpg', 'Trident college', 'Bhadrak'),
('MBT0010', '675464234', 'Srikanta Sutar', 'Male', '2000-05-11', '9767836561', 'srikanta@gmail.com', 'Srikanta', '7th', 'shree ganesh.jpg', 'Trident college', 'Bhadrak'),
('MBT0011', '536289213647', 'Somnath Narendra', 'Male', '2024-06-16', '7608905674', 'somnath@gmail.com', 'somnath', '8th', '', 'Trident college', 'Badapokharia'),
('MBT0012', '719028414618', 'Aradhya B Ray', 'Female', '2019-03-10', '84560', 'a@gmail.com', 'Aradhya', '7', 'uploads/image.png', 'SSM', 'elapada'),
('MBT0013', '123456789102', 'Shreyanshi', 'Female', '2020-05-16', '73258', 's@gmail.com', 'Shreyanshi', '7', 'uploads/image.png', 'SSM', 'Mahulia'),
('MBT0014', '123456789012', 'Shyam', 'Male', '2023-12-20', '986161', 's@gmail.com', 'Shyam', '7th', 'uploads/Certificate.png', 'SSM', 'abc'),
('MBT0015', '123456789012', 'hurrah', 'Female', '1995-10-12', '9861', 's@gmail.com', 'Satya', '7th', 'uploads/Ranjit-Signature.png', 'PS', 'Puri'),
('MBT0017', '715626901371', 'BD', 'Male', '1992-02-12', '637116', 'bd@gmail.com', 'bd', '5th', 'uploads/Ranjit-Signature.png', 'a', 'q'),
('MBT0018', '890823', 'Akhil', 'Male', '2024-07-01', '35134', 'ak@gmail.com', 'akhil', '8th', 'uploads/Ranjit-Signature.png', 'sdf', 'saedf'),
('MBT0019', '865876', 'Alok', 'Male', '2024-07-04', ' 34634', 'a@gmail.com', 'alok', '5th', 'uploads/certificateBG.png', 'sa', 'sadf'),
('MBT0020', '789789789789', 'juneja', 'Female', '2024-05-01', '7896541234', 'jk@gmail.com', 'kjuneja', '10th', 'uploads/basins.png', 'loyola', 'sg');

-- --------------------------------------------------------

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int NOT NULL,
  `standard` varchar(10) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `file_url` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_materials`
--

INSERT INTO `study_materials` (`id`, `standard`, `subject`, `title`, `description`, `file_url`, `upload_date`) VALUES
(8, '10th', 'Math', '1', 'test', 'uploads/image.png', '2024-07-10 12:08:53'),
(9, '7th', 'Math', '123', 'test', 'uploads/star-badge-icon-design.jpg', '2024-07-10 12:16:57'),
(10, '5th', 'MIL', 'asd', 'asfsf', 'uploads/Ranjit-Signature.png', '2024-07-22 06:42:54'),
(11, '6th', 'MIL', 'mil', 'mil desc', 'uploads/Ranjit-Signature.png', '2024-07-22 07:35:51'),
(12, '5th', 'Alternative English', '23', '12', 'uploads/Ranjit-Signature.png', '2024-07-22 07:36:38'),
(13, '5th', 'English', 'rre', 'sXdgvb', 'uploads/Abhiram.jpeg', '2024-08-16 05:35:49'),
(14, '5th', 'Math', 'asf', 'asfsf', 'uploads/Abhiram.jpeg', '2024-08-16 05:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject`) VALUES
('01', 'Math'),
('02', 'Science'),
('03', 'English'),
('04', 'History'),
('05', 'GK'),
('06', 'Alternative English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD UNIQUE KEY `unique_answer` (`stuId`,`exam_id`,`question_id`,`attempt_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_no`);

--
-- Indexes for table `exam_certificates`
--
ALTER TABLE `exam_certificates`
  ADD PRIMARY KEY (`certificate_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD UNIQUE KEY `question_id_UNIQUE` (`question_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stuId`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1700;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `exam_certificates`
--
ALTER TABLE `exam_certificates`
  MODIFY `certificate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
