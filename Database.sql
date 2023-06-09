-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Apr 30, 2023 at 04:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `im_finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_t`
--

CREATE TABLE `admin_t` (
  `aUserID` varchar(6) NOT NULL,
  `adminUsername` varchar(50) NOT NULL,
  `adminPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `author_t`
--

CREATE TABLE `author_t` (
  `authorID` varchar(6) NOT NULL,
  `authorFName` varchar(50) NOT NULL,
  `authorLName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookauthor_t`
--

CREATE TABLE `bookauthor_t` (
  `bookAuthorID` int(11) NOT NULL,
  `bookISBN` varchar(6) NOT NULL,
  `authorID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookcondition_t`
--

CREATE TABLE `bookcondition_t` (
  `conditionID` varchar(10) NOT NULL,
  `bookCode` varchar(8) NOT NULL,
  `aUserID` varchar(6) NOT NULL,
  `bookCondition` varchar(10) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookcopy_t`
--

CREATE TABLE `bookcopy_t` (
  `bookCode` varchar(8) NOT NULL,
  `bookISBN` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booklocation_t`
--

CREATE TABLE `booklocation_t` (
  `bookCode` varchar(8) NOT NULL,
  `locationID` varchar(5) NOT NULL,
  `copyDate` date DEFAULT NULL,
  `availabilityStatus` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_t`
--

CREATE TABLE `book_t` (
  `bookISBN` varchar(6) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `bookEdition` int(2) DEFAULT NULL,
  `editionTotalSeries` int(2) DEFAULT NULL,
  `publisherID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borrowline_t`
--

CREATE TABLE `borrowline_t` (
  `borrowNumber` varchar(10) NOT NULL,
  `userID` varchar(6) NOT NULL,
  `bookCode` varchar(8) NOT NULL,
  `borrowDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fine_t`
--

CREATE TABLE `fine_t` (
  `fineID` varchar(10) NOT NULL,
  `borrowNumber` varchar(10) NOT NULL,
  `fineTotal` int(11) NOT NULL,
  `fineDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_t`
--

CREATE TABLE `location_t` (
  `locationID` varchar(5) NOT NULL,
  `sectionNumber` int(3) NOT NULL,
  `shelfNumber` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher_t`
--

CREATE TABLE `publisher_t` (
  `publisherID` varchar(6) NOT NULL,
  `publisherName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_t`
--

CREATE TABLE `user_t` (
  `userID` varchar(6) NOT NULL,
  `userFName` varchar(50) NOT NULL,
  `userLName` varchar(50) NOT NULL,
  `userPhoneNum` varchar(13) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userType` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_t`
--

INSERT INTO `admin_t` (`aUserID`, `adminUsername`, `adminPassword`) VALUES
                                                                        ('000001', 'admin1', 'password1'),
                                                                        ('000007', 'admin2', 'password2'),
                                                                        ('000009', 'admin3', 'password3'),
                                                                        ('000014', 'admin4', 'password4'),
                                                                        ('000018', 'admin5', 'password5'),
                                                                        ('000023', 'admin6', 'password6'),
                                                                        ('000025', 'admin7', 'password7'),
                                                                        ('000029', 'admin8', 'password8'),
                                                                        ('000017', 'admin9', 'password9'),
                                                                        ('000008', 'admin10', 'password10');





--
-- Dumping data for table `author_t`
--

INSERT INTO `author_t` (`authorID`, `authorFName`, `authorLName`) VALUES
                                                                      ('000001', 'Jane', 'Austen'),
                                                                      ('000002', 'Fyodor', 'Dostoevsky'),
                                                                      ('000003', 'Ernest', 'Hemingway'),
                                                                      ('000004', 'William', 'Faulkner'),
                                                                      ('000005', 'Toni', 'Morrison'),
                                                                      ('000006', 'Gabriel', 'García Márquez'),
                                                                      ('000007', 'Virginia', 'Woolf'),
                                                                      ('000008', 'George', 'Orwell'),
                                                                      ('000009', 'Harper', 'Lee'),
                                                                      ('000010', 'Mark', 'Twain'),
                                                                      ('000011', 'J.K.', 'Rowling'),
                                                                      ('000012', 'C.S.', 'Lewis'),
                                                                      ('000013', 'J.R.R.', 'Tolkien'),
                                                                      ('000014', 'Stephen', 'King'),
                                                                      ('000015', 'Sylvia', 'Plath'),
                                                                      ('000016', 'Maya', 'Angelou'),
                                                                      ('000017', 'Leo', 'Tolstoy'),
                                                                      ('000018', 'Char', 'Dickens'),
                                                                      ('000019', 'Cotte', 'Bronte'),
                                                                      ('000020', 'Emi', 'Bronte'),
                                                                      ('000021', 'J.F.', 'Row'),
                                                                      ('000022', 'A.S.', 'Lewis'),
                                                                      ('000023', 'J.A.R.', 'Tolken'),
                                                                      ('000024', 'Step', 'Kig'),
                                                                      ('000025', 'Syl', 'Path'),
                                                                      ('000026', 'May', 'Angel'),
                                                                      ('000027', 'Le', 'Toy'),
                                                                      ('000028', 'Chas', 'Dens'),
                                                                      ('000029', 'Charlotte', 'Bre'),
                                                                      ('000030', 'Emiy', 'Bre');


--
-- Dumping data for table `bookauthor_t`
--

INSERT INTO `bookauthor_t` (`bookAuthorID`, `bookISBN`, `authorID`) VALUES
                                                                        (1, '000101', '000001'),
                                                                        (2, '000101', '000008'),
                                                                        (3, '000102', '000001'),
                                                                        (4, '000103', '000001'),
                                                                        (5, '000104', '000001'),
                                                                        (6, '000104', '000008'),
                                                                        (7, '000105', '000001'),
                                                                        (8, '000201', '000005'),
                                                                        (9, '000201', '000005'),
                                                                        (10, '000301', '000002'),
                                                                        (11, '000301', '000003'),
                                                                        (12, '000301', '000009'),
                                                                        (13, '000401', '000019'),
                                                                        (14, '000401', '000018'),
                                                                        (15, '000402', '000019'),
                                                                        (16, '000402', '000018'),
                                                                        (17, '000403', '000019'),
                                                                        (18, '000404', '000019'),
                                                                        (19, '000404', '000018'),
                                                                        (20, '000405', '000019'),
                                                                        (21, '000501', '000006'),
                                                                        (22, '000502', '000006'),
                                                                        (23, '000503', '000006'),
                                                                        (24, '000504', '000006'),
                                                                        (25, '000505', '000006'),
                                                                        (26, '000505', '000007'),
                                                                        (27, '000506', '000006'),
                                                                        (28, '000507', '000006'),
                                                                        (29, '000508', '000006'),
                                                                        (30, '000509', '000006'),
                                                                        (31, '000510', '000006'),
                                                                        (32, '000601', '000010'),
                                                                        (33, '000602', '000010'),
                                                                        (34, '000603', '000010'),
                                                                        (35, '000701', '000011'),
                                                                        (36, '000702', '000011'),
                                                                        (37, '000703', '000011'),
                                                                        (38, '000704', '000011');


--
-- Dumping data for table `bookcondition_t`
--

INSERT INTO `bookcondition_t` (`conditionID`, `bookCode`, `aUserID`, `bookCondition`, `remarks`) VALUES
                                                                                                     ('C023000001', '00010101', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000002', '00010102', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000003', '00010103', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000004', '00010201', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000005', '00010202', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000006', '00010301', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000007', '00010401', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000008', '00010501', '000001', 'complete', 'no tears or damages'),
                                                                                                     ('C023000009', '00020101', '000007', 'incomplete', 'pages 13-19 are torn'),
                                                                                                     ('C023000010', '00020102', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000011', '00020201', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000012', '00020202', '000008', 'complete', 'no tears or damages'),
                                                                                                     ('C023000013', '00030101', '000008', 'complete', 'no tears or damages'),
                                                                                                     ('C023000014', '00030102', '000008', 'complete', 'no tears or damages'),
                                                                                                     ('C023000015', '00030103', '000008', 'complete', 'no tears or damages'),
                                                                                                     ('C023000016', '00030104', '000008', 'incomplete', 'last 20 pages are missing'),
                                                                                                     ('C023000017', '00030105', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000018', '00040101', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000019', '00040201', '000007', 'complete', 'no tears or damages'),
                                                                                                     ('C023000020', '00040301', '000007', 'incomplete', 'half of the cover page is burnt');



--
-- Dumping data for table `bookcopy_t`
--

INSERT INTO `bookcopy_t` (`bookCode`, `bookISBN`) VALUES
                                                      ('00010101', '000101'),
                                                      ('00010102', '000101'),
                                                      ('00010103', '000101'),
                                                      ('00010201', '000102'),
                                                      ('00010202', '000102'),
                                                      ('00010301', '000103'),
                                                      ('00010401', '000104'),
                                                      ('00010501', '000105'),

                                                      ('00020101', '000201'),
                                                      ('00020102', '000201'),
                                                      ('00020201', '000202'),
                                                      ('00020202', '000202'),

                                                      ('00030101', '000301'),
                                                      ('00030102', '000301'),
                                                      ('00030103', '000301'),
                                                      ('00030104', '000301'),
                                                      ('00030105', '000301'),

                                                      ('00040101', '000401'),
                                                      ('00040201', '000402'),
                                                      ('00040301', '000403'),
                                                      ('00040401', '000404'),
                                                      ('00040501', '000405'),

                                                      ('00050101', '000501'),
                                                      ('00050201', '000502'),
                                                      ('00050301', '000503'),
                                                      ('00050401', '000504'),
                                                      ('00050501', '000505'),
                                                      ('00050601', '000506'),
                                                      ('00050701', '000507'),
                                                      ('00050801', '000508'),
                                                      ('00050901', '000509'),
                                                      ('00051001', '000510'),

                                                      ('00060101', '000601'),
                                                      ('00060201', '000602'),
                                                      ('00060301', '000603'),

                                                      ('00070101', '000701'),
                                                      ('00070201', '000702'),
                                                      ('00070301', '000703'),
                                                      ('00070401', '000704');



--
-- Dumping data for table `booklocation_t`
--

INSERT INTO `booklocation_t` (`bookCode`, `locationID`, `copyDate`, `availabilityStatus`) VALUES
                                                                                              ('00010101', '00101', '2023-05-06', 'NO'),
                                                                                              ('00010102', '00101', '2023-05-06', 'YES'),
                                                                                              ('00010103', '00101', '2023-05-06', 'YES'),
                                                                                              ('00010201', '00101', '2023-05-06', 'NO'),
                                                                                              ('00010202', '00101', '2023-05-06', 'YES'),
                                                                                              ('00010301', '00101', '2023-05-06', 'NO'),
                                                                                              ('00010401', '00101', '2023-05-06', 'YES'),
                                                                                              ('00010501', '00101', '2023-05-06', 'YES'),
                                                                                              ('00020101', '00101', '2023-05-07', 'YES'),
                                                                                              ('00020102', '00101', '2023-05-07', 'NO'),
                                                                                              ('00020201', '00101', '2023-05-08', 'YES'),
                                                                                              ('00020202', '00101', '2023-05-08', 'YES'),
                                                                                              ('00030101', '00101', '2023-05-09', 'YES'),
                                                                                              ('00030102', '00101', '2023-05-09', 'NO'),
                                                                                              ('00030103', '00101', '2023-05-12', 'YES'),
                                                                                              ('00030104', '00101', '2023-05-13', 'NO'),
                                                                                              ('00030105', '00101', '2023-05-20', 'NO'),
                                                                                              ('00040101', '00101', '2023-05-20', 'NO'),
                                                                                              ('00040201', '00101', '2023-05-20', 'YES'),
                                                                                              ('00040301', '00101', '2023-05-20', 'YES'),
                                                                                              ('00040301', '00102', '2023-05-20', 'YES'),
                                                                                              ('00040401', '00102', '2023-05-20', 'YES'),
                                                                                              ('00040501', '00102', '2023-05-20', 'YES'),
                                                                                              ('00050101', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050201', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050301', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050401', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050501', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050601', '00201', '2023-05-23', 'NO'),
                                                                                              ('00050701', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050801', '00201', '2023-05-23', 'YES'),
                                                                                              ('00050901', '00201', '2023-05-23', 'NO'),
                                                                                              ('00051001', '00201', '2023-05-23', 'NO'),
                                                                                              ('00060101', '00201', '2023-05-25', 'YES'),
                                                                                              ('00060201', '00201', '2023-05-25', 'YES'),
                                                                                              ('00060301', '00201', '2023-05-25', 'YES'),
                                                                                              ('00070101', '00201', '2023-05-25', 'YES'),
                                                                                              ('00070201', '00201', '2023-05-25', 'NO'),
                                                                                              ('00070301', '00201', '2023-05-25', 'YES'),
                                                                                              ('00070401', '00201', '2023-05-25', 'NO');



--
-- Dumping data for table `book_t`
--

INSERT INTO `book_t` (`bookISBN`, `bookTitle`, `bookEdition`, `editionTotalSeries`, `publisherID`) VALUES
                                                                                                       ('000101', 'Midnight Chronicle', 1, 5, '000002'),
                                                                                                       ('000102', 'Midnight Chronicle', 2, 5, '000002'),
                                                                                                       ('000103', 'Midnight Chronicle', 3, 5, '000002'),
                                                                                                       ('000104', 'Midnight Chronicle', 4, 5, '000002'),
                                                                                                       ('000105', 'Midnight Chronicle', 5, 5, '000012'),
                                                                                                       ('000201', 'Echo in the Abyss', 1, 2, '000001'),
                                                                                                       ('000202', 'Echo in the Abyss', 2, 2, '000001'),
                                                                                                       ('000301', 'Victims of the Final Exam', 1, 1, '000011'),
                                                                                                       ('000401', 'The Last Navigator Secret', 1, 5, '000001'),
                                                                                                       ('000402', 'The Last Navigator Secret', 2, 5, '000001'),
                                                                                                       ('000403', 'The Last Navigator Secret', 3, 5, '000001'),
                                                                                                       ('000404', 'The Last Navigator Secret', 4, 5, '000011'),
                                                                                                       ('000405', 'The Last Navigator Secret', 5, 5, '000011'),
                                                                                                       ('000501', 'The Lost City of Shadows', 1, 10, '000011'),
                                                                                                       ('000502', 'The Lost City of Shadows', 2, 10, '000012'),
                                                                                                       ('000503', 'The Lost City of Shadows', 3, 10, '000012'),
                                                                                                       ('000504', 'The Lost City of Shadows', 4, 10, '000012'),
                                                                                                       ('000505', 'The Lost City of Shadows', 5, 10, '000012'),
                                                                                                       ('000506', 'The Lost City of Shadows', 6, 10, '000011'),
                                                                                                       ('000507', 'The Lost City of Shadows', 7, 10, '000011'),
                                                                                                       ('000508', 'The Lost City of Shadows', 8, 10, '000011'),
                                                                                                       ('000509', 'The Lost City of Shadows', 9, 10, '000019'),
                                                                                                       ('000510', 'The Lost City of Shadows', 10, 10, '000019'),
                                                                                                       ('000601', 'Gacha Hell Experience', 1, 3, '000005'),
                                                                                                       ('000602', 'Gacha Hell Experience', 2, 3, '000005'),
                                                                                                       ('000603', 'Gacha Hell Experience', 3, 3, '000014'),
                                                                                                       ('000701', 'Shattered Kingdom', 1, 4, '000007'),
                                                                                                       ('000702', 'Shattered Kingdom', 2, 4, '000008'),
                                                                                                       ('000703', 'Shattered Kingdom', 3, 4, '000007'),
                                                                                                       ('000704', 'Shattered Kingdom', 4, 4, '000007');



--
-- Dumping data for table `borrowline_t`
--

INSERT INTO `borrowline_t` (`borrowNumber`, `userID`, `bookCode`, `borrowDate`, `returnDate`) VALUES
                                                                                                  ('B023000001', '000001', '00010101', '2023-06-01', '2023-06-18'),
                                                                                                  ('B023000002', '000012', '00010201', '2023-06-01', ''),
                                                                                                  ('B023000003', '000002', '00010103', '2023-06-06', '2023-06-12'),
                                                                                                  ('B023000004', '000050', '00010301', '2023-06-08', ''),
                                                                                                  ('B023000005', '000010', '00020102', '2023-06-09', ''),
                                                                                                  ('B023000006', '000002', '00020101', '2023-06-12', '2023-06-13'),
                                                                                                  ('B023000007', '000003', '00030102', '2023-06-12', ''),
                                                                                                  ('B023000008', '000015', '00050701', '2023-06-12', '2023-06-17'),
                                                                                                  ('B023000009', '000015', '00030104', '2023-06-14', ''),
                                                                                                  ('B023000010', '000002', '00070401', '2023-06-26', ''),
                                                                                                  ('B023000011', '000002', '00070101', '2023-06-26', '2023-06-30'),
                                                                                                  ('B023000012', '000049', '00020101', '2023-06-26', '2023-06-30'),
                                                                                                  ('B023000013', '000030', '00010202', '2023-06-26', '2023-07-05'),
                                                                                                  ('B023000014', '000017', '00070201', '2023-06-26', ''),
                                                                                                  ('B023000015', '000009', '00030105', '2023-06-27', ''),
                                                                                                  ('B023000016', '000009', '00040101', '2023-06-27', ''),
                                                                                                  ('B023000017', '000010', '00050101', '2023-06-27', '2023-07-05'),
                                                                                                  ('B023000018', '000010', '00050201', '2023-06-27', '2023-07-05'),
                                                                                                  ('B023000019', '000010', '00050301', '2023-06-27', '2023-07-05'),
                                                                                                  ('B023000020', '000010', '00050401', '2023-06-27', '2023-07-05'),
                                                                                                  ('B023000021', '000010', '00050501', '2023-06-27', '2023-07-05'),
                                                                                                  ('B023000022', '000025', '00030101', '2023-06-28', '2023-06-30'),
                                                                                                  ('B023000023', '000003', '00050901', '2023-06-28', ''),
                                                                                                  ('B023000024', '000002', '00051001', '2023-06-28', ''),
                                                                                                  ('B023000025', '000021', '00010101', '2023-06-28', '');



--
-- Dumping data for table `fine_t`
--
INSERT INTO `fine_t` (`fineID`, `borrowNumber`, `fineTotal`, `fineDate`) VALUES
                                                                             ('F023000001', 'B023000001', 150.00, '2023-06-18'),
                                                                             ('F023000002', 'B023000007', 150.00, '2023-06-18');



--
-- Dumping data for table `location_t`
--

INSERT INTO `location_t` (`locationID`, `sectionNumber`,  `shelfNumber`) VALUES
                                                                             ('00101', '001', '01'),
                                                                             ('00102', '001', '02'),
                                                                             ('00103', '001', '03'),
                                                                             ('00104', '001', '04'),
                                                                             ('00105', '001', '05'),
                                                                             ('00106', '001', '06'),
                                                                             ('00201', '002', '01'),
                                                                             ('00202', '002', '02'),
                                                                             ('00203', '002', '03'),
                                                                             ('00204', '002', '04'),
                                                                             ('00205', '002', '05'),
                                                                             ('00206', '002', '06'),
                                                                             ('00301', '003', '01'),
                                                                             ('00302', '003', '02'),
                                                                             ('00303', '003', '03'),
                                                                             ('00304', '003', '04'),
                                                                             ('00305', '003', '05'),
                                                                             ('00306', '003', '06'),
                                                                             ('00401', '004', '01'),
                                                                             ('00402', '004', '02'),
                                                                             ('00403', '004', '03'),
                                                                             ('00404', '004', '04'),
                                                                             ('00405', '004', '05'),
                                                                             ('00406', '004', '06'),
                                                                             ('00501', '005', '01'),
                                                                             ('00502', '005', '02'),
                                                                             ('00503', '005', '03'),
                                                                             ('00504', '005', '04'),
                                                                             ('00505', '005', '05'),
                                                                             ('00506', '005', '06');


--
-- Dumping data for table `publisher_t`
--

INSERT INTO `publisher_t` (`publisherID`, `publisherName`) VALUES
                                                               ('000001', 'Penguin Random House'),
                                                               ('000002', 'HarperCollins'),
                                                               ('000003', 'Simon & Schuster'),
                                                               ('000004', 'Hachette Book Group'),
                                                               ('000005', 'Macmillan Publishers'),
                                                               ('000006', 'Oxford University Press'),
                                                               ('000007', 'Cambridge University Press'),
                                                               ('000008', 'Pearson Education'),
                                                               ('000009', 'Bloomsbury Publishing'),
                                                               ('000010', 'Scholastic Corporation'),
                                                               ('000011', 'Wiley'),
                                                               ('000012', 'John Wiley & Sons'),
                                                               ('000013', 'Cengage Learning'),
                                                               ('000014', 'Springer Nature'),
                                                               ('000015', 'Taylor & Francis'),
                                                               ('000016', 'Routledge'),
                                                               ('000017', 'Elsevier'),
                                                               ('000018', 'O Reilly Media'),
                                                               ('000019', 'Addison-Wesley Professional'),
                                                               ('000020', 'Emiliebooks'),
                                                               ('000021', 'Joker Publishing'),
                                                               ('000022', 'Phoenixes'),
                                                               ('000023', 'HR Publishing'),
                                                               ('000024', 'Steph King Pub'),
                                                               ('000025', 'Sylviabooks'),
                                                               ('000026', 'Maya Publishing'),
                                                               ('000027', 'Noelbooks'),
                                                               ('000028', 'CharliePub'),
                                                               ('000029', 'Char and A'),
                                                               ('000030', 'Emi and Emi');


--
-- Dumping data for table `user_t`
--

INSERT INTO `user_t` (`userId`, `userFName`, `userLName`, `userPhoneNum`, `userEmail`, `userType`) VALUES
                                                                                                       ('000001', 'John', 'Doe', '0901 234 5678', 'johndoe@gmail.com', 'admin'),
                                                                                                       ('000002', 'Jane', 'Doe', '0912 345 6789', 'janedoe@yahoo.com', 'user'),
                                                                                                       ('000003', 'Mark', 'Smith', '0923 456 7890', 'marksmith@gmail.com', 'user'),
                                                                                                       ('000004', 'Samantha', 'Johnson', '0934 567 8901', 'samanthajohnson@yahoo.com', 'user'),
                                                                                                       ('000005', 'Michael', 'Lee', '0945 678 9012', 'michaellee@gmail.com', 'user'),
                                                                                                       ('000006', 'Elizabeth', 'Taylor', '0956 789 0123', 'elizabethtaylor@gmail.com', 'user'),
                                                                                                       ('000007', 'William', 'Brown', '0967 890 1234', 'williambrown@yahoo.com', 'admin'),
                                                                                                       ('000008', 'Megan', 'Davis', '0978 901 2345', 'megandavis@gmail.com', 'admin'),
                                                                                                       ('000009', 'David', 'Johnson', '0989 012 3456', 'davidjohnson@yahoo.com', 'admin'),
                                                                                                       ('000010', 'Sarah', 'Miller', '0990 123 4567', 'sarahmiller@gmail.com', 'user'),
                                                                                                       ('000011', 'Jonathan', 'Davis', '0911 234 5678', 'jonathandavis@yahoo.com', 'user'),
                                                                                                       ('000012', 'Melissa', 'Wilson', '0922 345 6789', 'melissawilson@gmail.com', 'user'),
                                                                                                       ('000013', 'Christopher', 'Moore', '0933 456 7890', 'christophermoore@yahoo.com', 'user'),
                                                                                                       ('000014', 'Amanda', 'Brown', '0944 567 8901', 'amandabrown@gmail.com', 'admin'),
                                                                                                       ('000015', 'Andrew', 'Taylor', '0955 678 9012', 'andrewtaylor@yahoo.com', 'user'),
                                                                                                       ('000016', 'Stephanie', 'Smith', '0966 789 0123', 'stephaniesmith@gmail.com', 'user'),
                                                                                                       ('000017', 'Robert', 'Lee', '0977 890 1234', 'robertlee@yahoo.com', 'admin'),
                                                                                                       ('000018', 'Jennifer', 'Johnson', '0988 901 2345', 'jenniferjohnson@gmail.com', 'admin'),
                                                                                                       ('000019', 'Joseph', 'Davis', '0999 012 3456', 'josephdavis@yahoo.com', 'user'),
                                                                                                       ('000020', 'Emily', 'Miller', '0910 123 4567', 'emilymiller@gmail.com', 'user'),
                                                                                                       ('000021', 'Lauren', 'Wilson', '0902 345 6789', 'laurenwilson@gmail.com', 'user'),
                                                                                                       ('000022', 'Nicholas', 'Moore', '0913 456 7890', 'nicholasmoore@yahoo.com', 'user'),
                                                                                                       ('000023', 'Rachel', 'Brown', '0924 567 8901', 'rachelbrown@gmail.com', 'admin'),
                                                                                                       ('000024', 'Brandon', 'Taylor', '0935 678 9012', 'brandontaylor@yahoo.com', 'user'),
                                                                                                       ('000025', 'Christina', 'Lee', '0946 789 0123', 'christinalee@gmail.com', 'admin'),
                                                                                                       ('000026', 'Justin', 'Johnson', '0957 890 1234', 'justinjohnson@yahoo.com', 'user'),
                                                                                                       ('000027', 'Olivia', 'Davis', '0968 901 2345', 'oliviadavis@gmail.com', 'user'),
                                                                                                       ('000028', 'Tyler', 'Miller', '0979 012 3456', 'tylermiller@yahoo.com', 'user'),
                                                                                                       ('000029', 'Victoria', 'Brown', '0980 123 4567', 'victoriabrown@gmail.com', 'admin'),
                                                                                                       ('000030', 'Jacob', 'Taylor', '0991 234 5678', 'jacobtaylor@yahoo.com', 'user'),
                                                                                                       ('000031', 'Natalie', 'Smith', '0903 345 6789', 'nataliesmith@gmail.com', 'user'),
                                                                                                       ('000032', 'Ethan', 'Lee', '0914 456 7890', 'ethanlee@yahoo.com', 'user'),
                                                                                                       ('000033', 'Ashley', 'Johnson', '0925 567 8901', 'ashleyjohnson@gmail.com', 'user'),
                                                                                                       ('000034', 'Tyler', 'Wilson', '0936 678 9012', 'tylerwilson@yahoo.com', 'user'),
                                                                                                       ('000035', 'Isabella', 'Moore', '0947 789 0123', 'isabellamoore@gmail.com', 'user'),
                                                                                                       ('000036', 'Jonathan', 'Davis', '0958 890 1234', 'jonathandavis@gmail.com', 'user'),
                                                                                                       ('000037', 'Avery', 'Taylor', '0969 901 2345', 'averytaylor@yahoo.com', 'user'),
                                                                                                       ('000038', 'Sophia', 'Lee', '0980 012 3456', 'sophialee@gmail.com', 'user'),
                                                                                                       ('000039', 'William', 'Johnson', '0991 123 4567', 'williamjohnson@yahoo.com', 'user'),
                                                                                                       ('000040', 'Madison', 'Brown', '0902 234 5678', 'madisonbrown@gmail.com', 'user'),
                                                                                                       ('000041', 'Alexander', 'Taylor', '0913 345 6789', 'alexandertaylor@yahoo.com', 'user'),
                                                                                                       ('000042', 'Hailey', 'Smith', '0924 456 7890', 'haileysmith@gmail.com', 'user'),
                                                                                                       ('000043', 'Christopher', 'Lee', '0935 567 8901', 'christopherlee@yahoo.com', 'user'),
                                                                                                       ('000044', 'Emma', 'Johnson', '0946 678 9012', 'emmajohnson@gmail.com', 'user'),
                                                                                                       ('000045', 'Andrew', 'Wilson', '0955 123 4313', 'andrewwilson@gmail.com', 'user'),
                                                                                                       ('000046', 'Megan', 'Davis', '0967 890 1234', 'megandavis@gmail.com', 'user'),
                                                                                                       ('000047', 'Joshua', 'Moore', '0978 901 2345', 'joshuamoore@yahoo.com', 'user'),
                                                                                                       ('000048', 'Chloe', 'Brown', '0989 012 3456', 'chloebrown@gmail.com', 'user'),
                                                                                                       ('000049', 'Kevin', 'Taylor', '0990 123 4567', 'kevintaylor@yahoo.com', 'user'),
                                                                                                       ('000050', 'Sophie', 'Lee', '0901 234 5678', 'sophielee@gmail.com', 'user');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_t`
--
ALTER TABLE `admin_t`
  ADD PRIMARY KEY (`aUserID`),
  ADD UNIQUE KEY `aUserID` (`aUserID`);

--
-- Indexes for table `author_t`
--
ALTER TABLE `author_t`
  ADD PRIMARY KEY (`authorID`),
  ADD UNIQUE KEY `authorID` (`authorID`);

--
-- Indexes for table `bookauthor_t`
--
ALTER TABLE `bookauthor_t`
  ADD PRIMARY KEY (`bookAuthorID`),
  ADD KEY `bookAuthorFK1` (`bookISBN`),
  ADD KEY `bookAuthorFK2` (`authorID`),
  ADD UNIQUE KEY `bookAuthorID` (`bookAuthorID`);

--
-- Indexes for table `bookcondition_t`
--
ALTER TABLE `bookcondition_t`
  ADD PRIMARY KEY (`conditionID`),
  ADD KEY `bookConditionFK1` (`bookCode`),
  ADD KEY `bookConditionFK2` (`aUserID`),
  ADD UNIQUE KEY `conditionID` (`conditionID`);
  
--
-- Indexes for table `bookcopy_t`
--
ALTER TABLE `bookcopy_t`
  ADD PRIMARY KEY (`bookCode`),
  ADD KEY `bookConditionFK` (`bookISBN`),
  ADD UNIQUE KEY `bookCode` (`bookCode`);
  
--
-- Indexes for table `booklocation_t`
--
ALTER TABLE `booklocation_t`
  ADD PRIMARY KEY (`bookCode`, `locationID`),
  ADD KEY `bookLocationFK1` (`bookCode`),
  ADD KEY `bookLocationFK2` (`locationID`);

--
-- Indexes for table `book_t`
--
ALTER TABLE `book_t`
  ADD PRIMARY KEY (`bookISBN`),
  ADD KEY `bookFK` (`publisherID`),
  ADD UNIQUE KEY `bookISBN` (`bookISBN`);

--
-- Indexes for table `borrowline_t`
--
ALTER TABLE `borrowline_t`
  ADD PRIMARY KEY (`borrowNumber`),
  ADD KEY `borrowlineFK1` (`userID`),
  ADD KEY `borrowlineFK2` (`bookCode`),
  ADD UNIQUE KEY `borrowNumber` (`borrowNumber`);

--
-- Indexes for table `fine_t`
--
ALTER TABLE `fine_t`
  ADD PRIMARY KEY (`fineID`),
  ADD KEY `fineFK` (`borrowNumber`),
  ADD UNIQUE KEY `fineID` (`fineID`);

--
-- Indexes for table `location_t`
--
ALTER TABLE `location_t`
  ADD PRIMARY KEY (`locationID`),
  ADD UNIQUE KEY `locationID` (`locationID`);

--
-- Indexes for table `publisher_t`
--
ALTER TABLE `publisher_t`
  ADD PRIMARY KEY (`publisherID`),
  ADD UNIQUE KEY `publisherID` (`publisherID`);
  
--
-- Indexes for table `user_t`
--
ALTER TABLE `user_t`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_t`
--
ALTER TABLE `admin_t`
  ADD CONSTRAINT `adminFK` FOREIGN KEY (`aUserID`) REFERENCES `user_t` (`userID`);

--
-- Constraints for table `bookauthor_t`
--
ALTER TABLE `bookauthor_t`
  ADD CONSTRAINT `bookAuthorFK1` FOREIGN KEY (`bookISBN`) REFERENCES `book_t` (`bookISBN`),
  ADD CONSTRAINT `bookAuthorFK2` FOREIGN KEY (`authorID`) REFERENCES `author_t` (`authorID`);

--
-- Constraints for table `bookcondition_t`
--
ALTER TABLE `bookcondition_t`
  ADD CONSTRAINT `bookConditionFK1` FOREIGN KEY (`bookCode`) REFERENCES `bookcopy_t` (`bookCode`),
  ADD CONSTRAINT `bookConditionFK2` FOREIGN KEY (`aUserID`) REFERENCES `admin_t` (`aUserID`);
  
--
-- Constraints for table `bookcopy_t`
--
ALTER TABLE `bookcopy_t`
  ADD CONSTRAINT `bookConditionFK` FOREIGN KEY (`bookISBN`) REFERENCES `book_t` (`bookISBN`);

--
-- Constraints for table `booklocation_t`
--
ALTER TABLE `booklocation_t`
  ADD CONSTRAINT `bookLocationFK1` FOREIGN KEY (`bookCode`) REFERENCES `bookcopy_t` (`bookCode`),
  ADD CONSTRAINT `bookLocationFK2` FOREIGN KEY (`locationID`) REFERENCES `location_t` (`locationID`);

--
-- Constraints for table `book_t`
--
ALTER TABLE `book_t`
  ADD CONSTRAINT `bookFK` FOREIGN KEY (`publisherID`) REFERENCES `publisher_t` (`publisherID`);

--
-- Constraints for table `borrowline_t`
--
ALTER TABLE `borrowline_t`
  ADD CONSTRAINT `borrowLineFK1` FOREIGN KEY (`userID`) REFERENCES `user_t` (`userID`),
  ADD CONSTRAINT `borrowlineFK2` FOREIGN KEY (`bookCode`) REFERENCES `bookcopy_t` (`bookCode`);

--
-- Constraints for table `fine_t`
--
ALTER TABLE `fine_t`
  ADD CONSTRAINT `fineFK` FOREIGN KEY (`borrowNumber`) REFERENCES `borrowline_t` (`borrowNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
