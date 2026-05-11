-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2026 at 09:26 AM
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
-- Database: `cccs105`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `release_date` date DEFAULT NULL,
  `album_type` varchar(50) DEFAULT NULL,
  `total_tracks` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`album_id`, `album_name`, `release_date`, `album_type`, `total_tracks`, `group_id`) VALUES
(1, '2 Cool 4 Skool', '2013-06-12', 'Single Album', NULL, 1),
(2, 'O!RUL8,2?', '2013-09-11', 'EP', NULL, 1),
(3, 'Skool Luv Affair', '2014-02-12', 'EP', NULL, 1),
(4, 'Dark & Wild', '2014-08-20', 'Studio Album', NULL, 1),
(5, 'The Most Beautiful Moment in Life Pt.1', '2015-04-29', 'EP', NULL, 1),
(6, 'The Most Beautiful Moment in Life Pt.2', '2015-11-30', 'EP', NULL, 1),
(7, 'Young Forever', '2016-05-02', 'Compilation Album', NULL, 1),
(8, 'Wings', '2016-10-10', 'Studio Album', NULL, 1),
(9, 'You Never Walk Alone', '2017-02-13', 'Repackage Album', NULL, 1),
(10, 'Love Yourself: Her', '2017-09-18', 'EP', NULL, 1),
(11, 'Square One', '2016-08-08', 'Single Album', NULL, 2),
(12, 'Square Two', '2016-11-01', 'Single Album', NULL, 2),
(13, 'Square Up', '2018-06-15', 'EP', NULL, 2),
(14, 'Kill This Love', '2019-04-05', 'EP', NULL, 2),
(15, 'The Album', '2020-10-02', 'Studio Album', NULL, 2),
(16, 'Born Pink', '2022-09-16', 'Studio Album', NULL, 2),
(17, 'The Story Begins', '2015-10-20', 'EP', NULL, 3),
(18, 'Page Two', '2016-04-25', 'EP', NULL, 3),
(19, 'Twicecoaster: Lane 1', '2016-10-24', 'EP', NULL, 3),
(20, 'Signal', '2017-05-15', 'EP', NULL, 3),
(21, 'Twicetagram', '2017-10-30', 'Studio Album', NULL, 3),
(22, 'What is Love?', '2018-04-09', 'EP', NULL, 3),
(23, 'Feel Special', '2019-09-23', 'EP', NULL, 3),
(24, 'Eyes Wide Open', '2020-10-26', 'Studio Album', NULL, 3),
(25, 'Taste of Love', '2021-06-11', 'EP', NULL, 3),
(26, 'Formula of Love', '2021-11-12', 'Studio Album', NULL, 3),
(27, 'Mama', '2012-04-09', 'EP', NULL, 4),
(28, 'XOXO', '2013-06-03', 'Studio Album', NULL, 4),
(29, 'Overdose', '2014-05-07', 'EP', NULL, 4),
(30, 'Exodus', '2015-03-30', 'Studio Album', NULL, 4),
(31, 'Sing For You', '2015-12-10', 'EP', NULL, 4),
(32, 'Ex’Act', '2016-06-09', 'Studio Album', NULL, 4),
(33, 'For Life', '2016-12-19', 'EP', NULL, 4),
(34, 'The War', '2017-07-18', 'Studio Album', NULL, 4),
(35, 'Universe', '2017-12-26', 'EP', NULL, 4),
(36, 'Don’t Mess Up My Tempo', '2018-11-02', 'Studio Album', NULL, 4),
(37, '17 Carat', '2015-05-29', 'EP', NULL, 5),
(38, 'Boys Be', '2015-09-10', 'EP', NULL, 5),
(39, 'Love & Letter', '2016-04-25', 'Studio Album', NULL, 5),
(40, 'Going Seventeen', '2016-12-05', 'EP', NULL, 5),
(41, 'Al1', '2017-05-22', 'EP', NULL, 5),
(42, 'Teen, Age', '2017-11-06', 'Studio Album', NULL, 5),
(43, 'You Make My Day', '2018-07-16', 'EP', NULL, 5),
(44, 'An Ode', '2019-09-16', 'Studio Album', NULL, 5),
(45, 'The Dream Chapter: STAR', '2019-03-04', 'EP', NULL, 13),
(46, 'The Dream Chapter: MAGIC', '2019-10-21', 'Studio Album', NULL, 13),
(47, 'Minisode1: Blue Hour', '2020-10-26', 'EP', NULL, 13),
(48, 'The Chaos Chapter: Freeze', '2021-05-31', 'Studio Album', NULL, 13),
(49, 'Minisode 2: Thursday’s Child', '2022-05-09', 'EP', NULL, 13),
(50, 'The Name Chapter: TEMPTATION', '2023-01-27', 'EP', NULL, 13),
(51, 'Border: Day One', '2020-11-30', 'EP', NULL, 14),
(52, 'Border: Carnival', '2021-04-26', 'EP', NULL, 14),
(53, 'Dimension: Dilemma', '2021-10-12', 'Studio Album', NULL, 14),
(54, 'Manifesto: Day 1', '2022-07-04', 'EP', NULL, 14),
(55, 'Dark Blood', '2023-05-22', 'EP', NULL, 14),
(56, 'Savage', '2021-10-05', 'EP', NULL, 9),
(57, 'Girls', '2022-07-08', 'EP', NULL, 9),
(58, 'My World', '2023-05-08', 'EP', NULL, 9),
(59, 'Drama', '2023-11-10', 'EP', NULL, 9),
(60, 'I Am NOT', '2018-03-26', 'EP', NULL, 7),
(61, 'I Am WHO', '2018-08-06', 'EP', NULL, 7),
(62, 'Clé 1: MIROH', '2019-03-25', 'EP', NULL, 7),
(63, 'Go Live', '2020-06-17', 'Studio Album', NULL, 7),
(64, 'NOEASY', '2021-08-23', 'Studio Album', NULL, 7),
(65, 'Oddinary', '2022-03-18', 'EP', NULL, 7),
(66, 'MAXIDENT', '2022-10-07', 'EP', NULL, 7),
(67, '5-STAR', '2023-06-02', 'Studio Album', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `debut_year` year(4) DEFAULT NULL,
  `agency` varchar(100) DEFAULT NULL,
  `members_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `debut_year`, `agency`, `members_count`) VALUES
(1, 'BTS', '2013', 'HYBE', 7),
(2, 'BLACKPINK', '2016', 'YG Entertainment', 4),
(3, 'TWICE', '2015', 'JYP Entertainment', 9),
(4, 'EXO', '2012', 'SM Entertainment', 9),
(5, 'SEVENTEEN', '2015', 'Pledis Entertainment', 13),
(6, 'NCT', '2016', 'SM Entertainment', 20),
(7, 'Stray Kids', '2018', 'JYP Entertainment', 8),
(8, 'ITZY', '2019', 'JYP Entertainment', 5),
(9, 'aespa', '2020', 'SM Entertainment', 4),
(10, 'LE SSERAFIM', '2022', 'HYBE', 5),
(11, 'IVE', '2021', 'Starship Entertainment', 6),
(12, 'NewJeans', '2022', 'ADOR', 5),
(13, 'TXT', '2019', 'HYBE', 5),
(14, 'ENHYPEN', '2020', 'Belift Lab', 7),
(15, 'ATEEZ', '2018', 'KQ Entertainment', 8),
(16, 'THE BOYZ', '2017', 'IST Entertainment', 11),
(17, 'SHINee', '2008', 'SM Entertainment', 4),
(18, 'Super Junior', '2005', 'SM Entertainment', 9),
(19, 'Girls\' Generation', '2007', 'SM Entertainment', 8),
(20, 'Red Velvet', '2014', 'SM Entertainment', 5),
(21, 'MAMAMOO', '2014', 'RBW Entertainment', 4),
(22, '(G)I-DLE', '2018', 'Cube Entertainment', 5),
(23, 'Apink', '2011', 'IST Entertainment', 5),
(24, 'GFRIEND', '2015', 'Source Music', 6),
(25, 'Oh My Girl', '2015', 'WM Entertainment', 6),
(26, 'STAYC', '2020', 'High Up Entertainment', 6),
(27, 'Kep1er', '2022', 'WakeOne', 9),
(28, 'ZEROBASEONE', '2023', 'WakeOne', 9),
(29, 'RIIZE', '2023', 'SM Entertainment', 7),
(30, 'BABYMONSTER', '2023', 'YG Entertainment', 7),
(31, 'TREASURE', '2020', 'YG Entertainment', 10),
(32, 'MONSTA X', '2015', 'Starship Entertainment', 6),
(33, 'BTOB', '2012', 'Cube Entertainment', 6),
(34, 'VIXX', '2012', 'Jellyfish Entertainment', 6),
(35, 'INFINITE', '2010', 'Woollim Entertainment', 6),
(36, '2PM', '2008', 'JYP Entertainment', 6),
(37, '2NE1', '2009', 'YG Entertainment', 4),
(38, 'f(x)', '2009', 'SM Entertainment', 4),
(39, 'Wonder Girls', '2007', 'JYP Entertainment', 4),
(40, 'T-ARA', '2009', 'MBK Entertainment', 4),
(41, 'SISTAR', '2010', 'Starship Entertainment', 4),
(42, 'Girl\'s Day', '2010', 'Dream T Entertainment', 4),
(43, 'AOA', '2012', 'FNC Entertainment', 5),
(44, 'iKON', '2015', 'YG Entertainment', 6),
(45, 'WINNER', '2014', 'YG Entertainment', 4),
(46, 'BIGBANG', '2006', 'YG Entertainment', 4),
(47, 'GOT7', '2014', 'JYP Entertainment', 7),
(48, 'DAY6', '2015', 'JYP Entertainment', 4),
(49, 'CNBLUE', '2009', 'FNC Entertainment', 3),
(50, 'FTISLAND', '2007', 'FNC Entertainment', 5);

-- --------------------------------------------------------

--
-- Table structure for table `idols`
--

CREATE TABLE `idols` (
  `idol_id` int(11) NOT NULL,
  `stage_name` varchar(100) NOT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `idols`
--

INSERT INTO `idols` (`idol_id`, `stage_name`, `real_name`, `birthdate`, `nationality`, `position`, `instagram`, `group_id`) VALUES
(1, 'RM', 'Kim Namjoon', '1994-09-12', 'Korean', 'Leader, Rapper', 'rkive', 1),
(2, 'Jin', 'Kim Seokjin', '1992-12-04', 'Korean', 'Vocalist', 'jin', 1),
(3, 'Suga', 'Min Yoongi', '1993-03-09', 'Korean', 'Rapper', 'agustd', 1),
(4, 'J-Hope', 'Jung Hoseok', '1994-02-18', 'Korean', 'Rapper, Dancer', 'uarmyhope', 1),
(5, 'Jimin', 'Park Jimin', '1995-10-13', 'Korean', 'Vocalist, Dancer', 'j.m', 1),
(6, 'V', 'Kim Taehyung', '1995-12-30', 'Korean', 'Vocalist', 'thv', 1),
(7, 'Jungkook', 'Jeon Jungkook', '1997-09-01', 'Korean', 'Main Vocalist', 'jungkook97', 1),
(8, 'Jennie', 'Kim Jennie', '1996-01-16', 'Korean', 'Rapper, Vocalist', 'jennierubyjane', 2),
(9, 'Lisa', 'Lalisa Manobal', '1997-03-27', 'Thai', 'Rapper, Dancer', 'lalalalisa_m', 2),
(10, 'Jisoo', 'Kim Jisoo', '1995-01-03', 'Korean', 'Vocalist', 'sooyaaa__', 2),
(11, 'Rosé', 'Roseanne Park', '1997-02-11', 'Korean-New Zealander', 'Main Vocalist', 'roses_are_rosie', 2),
(12, 'Nayeon', 'Im Nayeon', '1995-09-22', 'Korean', 'Lead Vocalist', 'nayeonyny', 3),
(13, 'Jeongyeon', 'Yoo Jeongyeon', '1996-11-01', 'Korean', 'Vocalist', 'jy_piece', 3),
(14, 'Momo', 'Hirai Momo', '1996-11-09', 'Japanese', 'Main Dancer', 'momo', 3),
(15, 'Sana', 'Minatozaki Sana', '1996-12-29', 'Japanese', 'Vocalist', 'm.by__sana', 3),
(16, 'Jihyo', 'Park Jihyo', '1997-02-01', 'Korean', 'Leader, Main Vocalist', 'zyozyo', 3),
(17, 'Mina', 'Myoui Mina', '1997-03-24', 'Japanese', 'Dancer', 'mina_sr_my', 3),
(18, 'Dahyun', 'Kim Dahyun', '1998-05-28', 'Korean', 'Rapper', 'dahhyunnee', 3),
(19, 'Chaeyoung', 'Son Chaeyoung', '1999-04-23', 'Korean', 'Rapper', 'chaeyo.0', 3),
(20, 'Tzuyu', 'Chou Tzuyu', '1999-06-14', 'Taiwanese', 'Visual', 'thinkaboutzu', 3),
(21, 'Xiumin', 'Kim Minseok', '1990-03-26', 'Korean', 'Vocalist', 'e_xiu_o', 4),
(22, 'Suho', 'Kim Junmyeon', '1991-05-22', 'Korean', 'Leader', 'kimjuncotton', 4),
(23, 'Lay', 'Zhang Yixing', '1991-10-07', 'Chinese', 'Dancer', 'layzhang', 4),
(24, 'Baekhyun', 'Byun Baekhyun', '1992-05-06', 'Korean', 'Main Vocalist', 'baekhyunee_exo', 4),
(25, 'Chen', 'Kim Jongdae', '1992-09-21', 'Korean', 'Main Vocalist', 'chen', 4),
(26, 'Chanyeol', 'Park Chanyeol', '1992-11-27', 'Korean', 'Main Rapper', 'real__pcy', 4),
(27, 'D.O.', 'Do Kyungsoo', '1993-01-12', 'Korean', 'Main Vocalist', 'd.o.kyungsoo', 4),
(28, 'Kai', 'Kim Jongin', '1994-01-14', 'Korean', 'Main Dancer', 'zkdlin', 4),
(29, 'Sehun', 'Oh Sehun', '1994-04-12', 'Korean', 'Rapper', 'oohsehun', 4),
(30, 'S.Coups', 'Choi Seungcheol', '1995-08-08', 'Korean', 'Leader', 'sound_of_coups', 5),
(31, 'Jeonghan', 'Yoon Jeonghan', '1995-10-04', 'Korean', 'Vocalist', 'jeonghaniyoo_n', 5),
(32, 'Joshua', 'Hong Jisoo', '1995-12-30', 'American', 'Vocalist', 'joshu_acoustic', 5),
(33, 'Jun', 'Wen Junhui', '1996-06-10', 'Chinese', 'Dancer', 'junhui_moon', 5),
(34, 'Hoshi', 'Kwon Soonyoung', '1996-06-15', 'Korean', 'Main Dancer', 'ho5hi_kwon', 5),
(35, 'Wonwoo', 'Jeon Wonwoo', '1996-07-17', 'Korean', 'Rapper', 'everyone_woo', 5),
(36, 'Woozi', 'Lee Jihoon', '1996-11-22', 'Korean', 'Producer', 'woozi_universefactory', 5),
(37, 'Soobin', 'Choi Soobin', '2000-12-05', 'Korean', 'Leader', 'page.soobin', 13),
(38, 'Yeonjun', 'Choi Yeonjun', '1999-09-13', 'Korean', 'Rapper, Dancer', 'yawnzzn', 13),
(39, 'Beomgyu', 'Choi Beomgyu', '2001-03-13', 'Korean', 'Vocalist', 'bamgyuuuu', 13),
(40, 'Taehyun', 'Kang Taehyun', '2002-02-05', 'Korean', 'Vocalist', 'txt_taehyun', 13),
(41, 'Huening Kai', 'Kai Kamal Huening', '2002-08-14', 'Korean-American', 'Maknae', 'hueningkai', 13),
(42, 'Jungwon', 'Yang Jungwon', '2004-02-09', 'Korean', 'Leader', 'enhypen', 14),
(43, 'Heeseung', 'Lee Heeseung', '2001-10-15', 'Korean', 'Main Vocalist', 'enhypen', 14),
(44, 'Jay', 'Park Jongseong', '2002-04-20', 'Korean-American', 'Rapper', 'enhypen', 14),
(45, 'Jake', 'Sim Jaeyun', '2002-11-15', 'Australian', 'Vocalist', 'enhypen', 14),
(46, 'Sunghoon', 'Park Sunghoon', '2002-12-08', 'Korean', 'Visual', 'enhypen', 14),
(47, 'Sunoo', 'Kim Sunoo', '2003-06-24', 'Korean', 'Vocalist', 'enhypen', 14),
(48, 'Ni-ki', 'Nishimura Riki', '2005-12-09', 'Japanese', 'Main Dancer', 'enhypen', 14),
(49, 'Karina', 'Yu Jimin', '2000-04-11', 'Korean', 'Leader', 'katarinabluu', 9),
(50, 'Winter', 'Kim Minjeong', '2001-01-01', 'Korean', 'Vocalist', 'imwinter', 9),
(51, 'Giselle', 'Uchinaga Aeri', '2000-10-30', 'Japanese-Korean', 'Rapper', 'aerichandesu', 9),
(52, 'Ningning', 'Ning Yizhuo', '2002-10-23', 'Chinese', 'Main Vocalist', 'ningning', 9),
(53, 'Bang Chan', 'Christopher Bang', '1997-10-03', 'Australian', 'Leader, Producer', 'gnabnahc', 7),
(54, 'Lee Know', 'Lee Minho', '1998-10-25', 'Korean', 'Dancer', 't.leeknow', 7),
(55, 'Changbin', 'Seo Changbin', '1999-08-11', 'Korean', 'Rapper', 'jutdwae', 7),
(56, 'Hyunjin', 'Hwang Hyunjin', '2000-03-20', 'Korean', 'Dancer, Rapper', 'hynjinnnn', 7),
(57, 'Han', 'Han Jisung', '2000-09-14', 'Korean', 'Rapper, Producer', 'doolsetnet', 7),
(58, 'Felix', 'Lee Felix', '2000-09-15', 'Australian', 'Dancer, Rapper', 'yong.lixx', 7),
(59, 'Seungmin', 'Kim Seungmin', '2000-09-22', 'Korean', 'Main Vocalist', 'miniverse.___', 7),
(60, 'I.N', 'Yang Jeongin', '2001-02-08', 'Korean', 'Maknae', 'i.2.n.8', 7);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `duration` time DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `track_number` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_name`, `duration`, `genre`, `track_number`, `album_id`) VALUES
(1, 'No More Dream', '03:42:00', 'Hip-Hop', NULL, 1),
(2, 'N.O', '03:30:00', 'Hip-Hop', NULL, 2),
(3, 'Boy In Luv', '03:51:00', 'K-Pop', NULL, 3),
(4, 'Danger', '04:05:00', 'K-Pop', NULL, 4),
(5, 'I Need U', '03:30:00', 'K-Pop', NULL, 5),
(6, 'Run', '03:57:00', 'K-Pop', NULL, 6),
(7, 'Fire', '03:23:00', 'EDM', NULL, 7),
(8, 'Blood Sweat & Tears', '03:37:00', 'Moombahton', NULL, 8),
(9, 'Spring Day', '04:34:00', 'Ballad', NULL, 9),
(10, 'DNA', '03:43:00', 'Pop', NULL, 10),
(11, 'Boombayah', '04:00:00', 'EDM', NULL, 11),
(12, 'Playing With Fire', '03:17:00', 'Pop', NULL, 12),
(13, 'DDU-DU DDU-DU', '03:29:00', 'Trap Pop', NULL, 13),
(14, 'Kill This Love', '03:13:00', 'Pop Rock', NULL, 14),
(15, 'How You Like That', '03:01:00', 'Hip-Hop', NULL, 15),
(16, 'Pink Venom', '03:07:00', 'Hip-Hop', NULL, 16),
(17, 'Like OOH-AHH', '03:35:00', 'Dance Pop', NULL, 17),
(18, 'Cheer Up', '03:28:00', 'K-Pop', NULL, 18),
(19, 'TT', '03:32:00', 'K-Pop', NULL, 19),
(20, 'Signal', '03:16:00', 'Electropop', NULL, 20),
(21, 'Likey', '03:29:00', 'Dance Pop', NULL, 21),
(22, 'What is Love?', '03:28:00', 'Pop', NULL, 22),
(23, 'Feel Special', '03:26:00', 'Synth Pop', NULL, 23),
(24, 'I Can’t Stop Me', '03:25:00', 'Synthwave', NULL, 24),
(25, 'Alcohol-Free', '03:30:00', 'Bossa Nova', NULL, 25),
(26, 'Scientist', '03:14:00', 'Pop', NULL, 26),
(27, 'Mama', '03:28:00', 'Orchestral Pop', NULL, 27),
(28, 'Growl', '03:27:00', 'Dance Pop', NULL, 28),
(29, 'Overdose', '03:25:00', 'Hip-Hop', NULL, 29),
(30, 'Call Me Baby', '03:31:00', 'Pop', NULL, 30),
(31, 'Sing For You', '03:45:00', 'Ballad', NULL, 31),
(32, 'Monster', '03:41:00', 'EDM', NULL, 32),
(33, 'For Life', '03:58:00', 'Ballad', NULL, 33),
(34, 'Ko Ko Bop', '03:10:00', 'Reggae Pop', NULL, 34),
(35, 'Universe', '04:24:00', 'Ballad', NULL, 35),
(36, 'Tempo', '03:44:00', 'Hip-Hop', NULL, 36),
(37, 'Adore U', '03:06:00', 'Funk Pop', NULL, 37),
(38, 'Mansae', '03:15:00', 'Dance Pop', NULL, 38),
(39, 'Pretty U', '03:27:00', 'K-Pop', NULL, 39),
(40, 'Boom Boom', '03:26:00', 'Dance Pop', NULL, 40),
(41, 'Don’t Wanna Cry', '03:23:00', 'EDM', NULL, 41),
(42, 'Clap', '02:56:00', 'Funk Rock', NULL, 42),
(43, 'Oh My!', '03:16:00', 'Pop', NULL, 43),
(44, 'Fear', '03:20:00', 'Dark Pop', NULL, 44),
(45, 'Crown', '03:50:00', 'Synth Pop', NULL, 45),
(46, 'Run Away', '03:32:00', 'Pop Rock', NULL, 46),
(47, 'Blue Hour', '03:29:00', 'Disco Pop', NULL, 47),
(48, '0X1=LOVESONG', '03:22:00', 'Pop Punk', NULL, 48),
(49, 'Good Boy Gone Bad', '03:11:00', 'Rock', NULL, 49),
(50, 'Sugar Rush Ride', '03:06:00', 'Dream Pop', NULL, 50),
(51, 'Given-Taken', '03:04:00', 'Pop', NULL, 51),
(52, 'Drunk-Dazed', '03:13:00', 'Rock', NULL, 52),
(53, 'Tamed-Dashed', '03:29:00', 'New Wave', NULL, 53),
(54, 'Future Perfect', '03:25:00', 'Hip-Hop', NULL, 54),
(55, 'Bite Me', '02:37:00', 'Pop', NULL, 55),
(56, 'Savage', '03:58:00', 'Hyperpop', NULL, 56),
(57, 'Girls', '04:00:00', 'Dance Pop', NULL, 57),
(58, 'Spicy', '03:17:00', 'Dance', NULL, 58),
(59, 'Drama', '03:34:00', 'Hip-Hop', NULL, 59),
(60, 'District 9', '03:31:00', 'Hip-Hop', NULL, 60),
(61, 'My Pace', '03:09:00', 'Pop', NULL, 61),
(62, 'MIROH', '03:28:00', 'EDM', NULL, 62),
(63, 'God’s Menu', '02:47:00', 'Hip-Hop', NULL, 63),
(64, 'Thunderous', '03:03:00', 'Traditional Hip-Hop', NULL, 64),
(65, 'MANIAC', '03:02:00', 'Trap', NULL, 65),
(66, 'CASE 143', '03:14:00', 'Pop', NULL, 66),
(67, 'S-Class', '03:15:00', 'Hip-Hop', NULL, 67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `idols`
--
ALTER TABLE `idols`
  ADD PRIMARY KEY (`idol_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `idols`
--
ALTER TABLE `idols`
  MODIFY `idol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `idols`
--
ALTER TABLE `idols`
  ADD CONSTRAINT `idols_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
