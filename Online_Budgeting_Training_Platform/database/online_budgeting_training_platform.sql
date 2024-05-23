-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 12:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_budgeting_training_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminID` int(50) NOT NULL,
  `Username` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminID`, `Username`, `Email`, `Password`, `Image`) VALUES
(1, 'Laurier HABIYAREMYE', 'laurier@gmail.com', '$2y$10$rYik6UeqXZ1HkMg17Gu6guoQLlSdB5so8ELv4ZPfv6PfYio8oTldm', 0x75706c6f6164732f74656163686572382e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `archivements`
--

CREATE TABLE `archivements` (
  `ArchivementID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ArchivementName` text NOT NULL,
  `ArchivementDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archivements`
--

INSERT INTO `archivements` (`ArchivementID`, `UserID`, `ArchivementName`, `ArchivementDate`) VALUES
(1, 1, 'Completion of courses', '2024-05-12 16:48:47'),
(2, 1, 'Completion of courses', '2024-05-12 17:11:34'),
(3, 1, 'Completion of courses', '2024-05-12 17:13:37'),
(4, 1, 'Completion of courses', '2024-05-12 17:20:21'),
(5, 1, 'Completion of courses', '2024-05-12 17:21:37'),
(6, 1, 'Completion of courses', '2024-05-12 17:21:48'),
(7, 1, 'Completion of courses', '2024-05-12 20:14:20'),
(8, 1, 'Completion of courses', '2024-05-12 20:19:05'),
(9, 1, 'Completion of courses', '2024-05-12 20:19:09'),
(10, 1, 'Completion of courses', '2024-05-12 20:21:47'),
(11, 1, 'Completion of courses', '2024-05-12 20:22:34'),
(12, 1, 'Completion of courses', '2024-05-12 20:22:43'),
(13, 1, 'Completion of courses', '2024-05-12 20:26:30'),
(14, 1, 'Completion of courses', '2024-05-12 20:32:35'),
(15, 1, 'Completion of courses', '2024-05-12 20:32:39'),
(16, 1, 'Completion of courses', '2024-05-12 20:34:21'),
(17, 1, 'Completion of courses', '2024-05-12 20:35:12'),
(18, 1, 'Completion of courses', '2024-05-12 20:35:28'),
(19, 1, 'Completion of courses', '2024-05-12 20:35:47'),
(20, 1, 'Completion of courses', '2024-05-12 20:36:06'),
(21, 1, 'Completion of courses', '2024-05-12 20:36:21'),
(22, 1, 'Completion of courses', '2024-05-12 20:37:06'),
(23, 1, 'Completion of courses', '2024-05-12 20:37:26'),
(24, 1, 'Completion of courses', '2024-05-12 20:37:41'),
(25, 1, 'Completion of courses', '2024-05-12 20:38:22'),
(26, 1, 'Completion of courses', '2024-05-12 20:39:04'),
(27, 1, 'Completion of courses', '2024-05-12 20:39:07'),
(28, 1, 'Completion of courses', '2024-05-12 20:41:02'),
(29, 1, 'Completion of courses', '2024-05-12 20:41:24'),
(30, 1, 'Completion of courses', '2024-05-12 20:41:44'),
(31, 1, 'Completion of courses', '2024-05-12 21:42:24'),
(32, 1, 'Completion of courses', '2024-05-12 21:49:30'),
(33, 1, 'Completion of courses', '2024-05-12 21:49:43'),
(34, 1, 'Completion of courses', '2024-05-12 21:51:15'),
(35, 1, 'Completion of courses', '2024-05-12 21:51:48'),
(36, 1, 'Completion of courses', '2024-05-12 21:53:06'),
(37, 1, 'Completion of courses', '2024-05-12 21:57:19'),
(38, 1, 'Completion of courses', '2024-05-12 21:57:44'),
(39, 1, 'Completion of courses', '2024-05-12 21:58:13'),
(40, 1, 'Completion of courses', '2024-05-12 21:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `AssessmentID` int(50) NOT NULL,
  `Title` text NOT NULL,
  `Question` text NOT NULL,
  `CorrectAnswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`AssessmentID`, `Title`, `Question`, `CorrectAnswer`) VALUES
(1, 'Saving', 'How much do you have to save monthly, in percentage ?', 'Atleast 20%'),
(2, 'Budgeting essentials and development', 'What are the three 3 essential parts of developing a budget?', 'People, Data and Process'),
(3, 'Classification of budgets', 'What is the classification of budgets?', 'The economic classification identifies the type of expenditure incurred, for example, salaries, goods and services, transfers and interest payments, or capital spending.'),
(4, 'Types of Budgets', 'What are the 8 types of budget?', 'Operating budget, The operating budget or operational budget, Financial budget, Sales budget, Cash flow budget,  Production budget, Labour budget, Static budget., Master budget.'),
(5, 'Categories are in a budget?', 'How many categories are in a budget?', '(3)Three main categories: Fixed expenses, flex expenses, and non-monthly expenses.');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(50) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `InstructorID` int(50) NOT NULL,
  `Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `Title`, `Description`, `InstructorID`, `Link`) VALUES
(2, 'Saving Techniques', 'Housing: Perhaps you’d be able to rent out a bedroom. Maybe you’d be able to ask your landlord for a reduction in rent - or, look into moving to a less expensive area when your lease is up. If you own a home, look into shopping around for home insurance, make sure to adjust the thermostat to save money when you don’t need it, reduce water usage, you have a TON of ways to reduce costs here, and - by implementing a few of these…you should be able to AT LEAST save an extra $10 per day. ', 1, 'https://youtu.be/udHzPjxq2lg'),
(3, ' Budgeting essentials and development', 'In this course, learners will have a deeper understanding of the budgeting process, its challenges, common issues, and approaches to mitigate the problems and improve the learning curve of budget planning.\r\nIt is integrative by emphasizing the transition between the corporate strategy and the budget. It is practical by following a structured process of going through a framework that illustrates and demonstrates how to analyze, develop and control the budget.', 4, 'https://youtu.be/59EWt1jXGSs'),
(4, 'Classification of budgets', 'Management Accounting series takes you on a journey through the basics to complex topics of the subject. Management Accounting is the branch of Accounting that helps in the analysis of the accounting information to take business decisions.\r\n\r\nThe video covers the Classification of Budgets. Classification on basis of time, condition, flexibility and Function are covered in this video tutorial.\r\n', 5, 'https://youtu.be/OIlFhpIvht0'),
(5, 'The types of budget', 'Below, there are different budget types that help different business units to estimate their budgeting needs.\r\n\r\nCapital Budget: The capital budget is used to determine whether the long term investments on various elements specified below are worthy or not.', 5, 'https://youtu.be/tQUJHbCfJHs');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` int(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `CourseID` int(50) NOT NULL,
  `EnrollmentDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `UserID`, `CourseID`, `EnrollmentDate`) VALUES
(2, 1, 1, '2024-05-12 22:00:49.642329'),
(3, 1, 2, '2024-05-12 22:01:38.567401');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `Rating` text NOT NULL,
  `Comment` text NOT NULL,
  `FeedbackDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `UserID`, `Rating`, `Comment`, `FeedbackDate`) VALUES
(1, 1, '5', 'Thank you for the help', '2024-05-12 16:24:24.000000'),
(2, 1, '4', 'Thank you for the help', '2024-05-12 16:31:21.000000'),
(3, 1, '4', 'That\'s good for us', '2024-05-12 16:32:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `GoalID` int(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `GoalAmount` text NOT NULL,
  `TargetDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`GoalID`, `UserID`, `GoalAmount`, `TargetDate`) VALUES
(1, 1, '8679', '2024-05-16 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `InstructorID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`InstructorID`, `Name`, `Email`, `Password`, `Bio`) VALUES
(4, 'James GATETE', 'james@gmail.com', '$2y$10$dVjF2YibrHtok9ihkrIY.OSWbuEDTkJxwH5ciEugxCnPmQDxOhKiK', 'Budgeting specialist and Data Analyst for 12 years'),
(5, 'Onana SOMBE', 'onana@gmail.com', '$2y$10$vF3HTyBHDjSqCABkHJpL2e/2tNEKS.soPJ1OgsDoAwlVp07UdIpgW', 'Specialist in salaries, goods and services, transfers and interest payments,');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(50) NOT NULL,
  `UserID` int(50) NOT NULL,
  `Amount` text NOT NULL,
  `Category` text NOT NULL,
  `TransactionDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `Notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `UserID`, `Amount`, `Category`, `TransactionDate`, `Notes`) VALUES
(1, 1, '65', 'Expense', '2024-05-11 22:00:00.000000', 'ANy'),
(2, 1, '65', 'Expense', '2024-05-11 22:00:00.000000', 'ANy'),
(3, 1, '65', 'Expense', '2024-05-11 22:00:00.000000', 'A'),
(4, 1, '76', 'Savings', '2024-05-11 22:00:00.000000', 'GTS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(50) NOT NULL,
  `Username` text NOT NULL,
  `Photo` blob NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `DateJoined` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Photo`, `Email`, `Password`, `DateJoined`) VALUES
(1, 'Jackson MUHIRA', 0x75706c6f6164732f74656163686572362e6a7067, 'jackson@gmail.com', 'jackson123', '2024-05-12 14:44:40.129466'),
(2, 'Chris HAGENAYEZU', 0x75706c6f6164732f74656163686572362e6a7067, 'chris@gmail.com', 'chris123', '2024-05-12 22:06:40.416214');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `archivements`
--
ALTER TABLE `archivements`
  ADD PRIMARY KEY (`ArchivementID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`AssessmentID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `InstructorID` (`InstructorID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`GoalID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`InstructorID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `archivements`
--
ALTER TABLE `archivements`
  MODIFY `ArchivementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `AssessmentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `EnrollmentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `GoalID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `InstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archivements`
--
ALTER TABLE `archivements`
  ADD CONSTRAINT `archivements_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
