USE CCCS105;

INSERT INTO groups (group_name, debut_year, agency, members_count)
VALUES
('BTS', 2013, 'HYBE', 7),
('BLACKPINK', 2016, 'YG Entertainment', 4),
('TWICE', 2015, 'JYP Entertainment', 9),
('EXO', 2012, 'SM Entertainment', 9),
('SEVENTEEN', 2015, 'Pledis Entertainment', 13),
('NCT', 2016, 'SM Entertainment', 20),
('Stray Kids', 2018, 'JYP Entertainment', 8),
('ITZY', 2019, 'JYP Entertainment', 5),
('aespa', 2020, 'SM Entertainment', 4),
('LE SSERAFIM', 2022, 'HYBE', 5),
('IVE', 2021, 'Starship Entertainment', 6),
('NewJeans', 2022, 'ADOR', 5),
('TXT', 2019, 'HYBE', 5),
('ENHYPEN', 2020, 'Belift Lab', 7),
('ATEEZ', 2018, 'KQ Entertainment', 8),
('THE BOYZ', 2017, 'IST Entertainment', 11),
('SHINee', 2008, 'SM Entertainment', 4),
('Super Junior', 2005, 'SM Entertainment', 9),
('Girls'' Generation', 2007, 'SM Entertainment', 8),
('Red Velvet', 2014, 'SM Entertainment', 5),
('MAMAMOO', 2014, 'RBW Entertainment', 4),
('(G)I-DLE', 2018, 'Cube Entertainment', 5),
('Apink', 2011, 'IST Entertainment', 5),
('GFRIEND', 2015, 'Source Music', 6),
('Oh My Girl', 2015, 'WM Entertainment', 6),
('STAYC', 2020, 'High Up Entertainment', 6),
('Kep1er', 2022, 'WakeOne', 9),
('ZEROBASEONE', 2023, 'WakeOne', 9),
('RIIZE', 2023, 'SM Entertainment', 7),
('BABYMONSTER', 2023, 'YG Entertainment', 7),
('TREASURE', 2020, 'YG Entertainment', 10),
('MONSTA X', 2015, 'Starship Entertainment', 6),
('BTOB', 2012, 'Cube Entertainment', 6),
('VIXX', 2012, 'Jellyfish Entertainment', 6),
('INFINITE', 2010, 'Woollim Entertainment', 6),
('2PM', 2008, 'JYP Entertainment', 6),
('2NE1', 2009, 'YG Entertainment', 4),
('f(x)', 2009, 'SM Entertainment', 4),
('Wonder Girls', 2007, 'JYP Entertainment', 4),
('T-ARA', 2009, 'MBK Entertainment', 4),
('SISTAR', 2010, 'Starship Entertainment', 4),
('Girl''s Day', 2010, 'Dream T Entertainment', 4),
('AOA', 2012, 'FNC Entertainment', 5),
('iKON', 2015, 'YG Entertainment', 6),
('WINNER', 2014, 'YG Entertainment', 4),
('BIGBANG', 2006, 'YG Entertainment', 4),
('GOT7', 2014, 'JYP Entertainment', 7),
('DAY6', 2015, 'JYP Entertainment', 4),
('CNBLUE', 2009, 'FNC Entertainment', 3),
('FTISLAND', 2007, 'FNC Entertainment', 5);

INSERT INTO idols
(stage_name, real_name, birthdate, nationality, position, instagram, group_id)
VALUES

-- BTS (group_id = 1)
('RM', 'Kim Namjoon', '1994-09-12', 'Korean', 'Leader, Rapper', 'rkive', 1),
('Jin', 'Kim Seokjin', '1992-12-04', 'Korean', 'Vocalist', 'jin', 1),
('Suga', 'Min Yoongi', '1993-03-09', 'Korean', 'Rapper', 'agustd', 1),
('J-Hope', 'Jung Hoseok', '1994-02-18', 'Korean', 'Rapper, Dancer', 'uarmyhope', 1),
('Jimin', 'Park Jimin', '1995-10-13', 'Korean', 'Vocalist, Dancer', 'j.m', 1),
('V', 'Kim Taehyung', '1995-12-30', 'Korean', 'Vocalist', 'thv', 1),
('Jungkook', 'Jeon Jungkook', '1997-09-01', 'Korean', 'Main Vocalist', 'jungkook97', 1),

-- BLACKPINK (group_id = 2)
('Jennie', 'Kim Jennie', '1996-01-16', 'Korean', 'Rapper, Vocalist', 'jennierubyjane', 2),
('Lisa', 'Lalisa Manobal', '1997-03-27', 'Thai', 'Rapper, Dancer', 'lalalalisa_m', 2),
('Jisoo', 'Kim Jisoo', '1995-01-03', 'Korean', 'Vocalist', 'sooyaaa__', 2),
('Rosé', 'Roseanne Park', '1997-02-11', 'Korean-New Zealander', 'Main Vocalist', 'roses_are_rosie', 2),

-- TWICE (group_id = 3)
('Nayeon', 'Im Nayeon', '1995-09-22', 'Korean', 'Lead Vocalist', 'nayeonyny', 3),
('Jeongyeon', 'Yoo Jeongyeon', '1996-11-01', 'Korean', 'Vocalist', 'jy_piece', 3),
('Momo', 'Hirai Momo', '1996-11-09', 'Japanese', 'Main Dancer', 'momo', 3),
('Sana', 'Minatozaki Sana', '1996-12-29', 'Japanese', 'Vocalist', 'm.by__sana', 3),
('Jihyo', 'Park Jihyo', '1997-02-01', 'Korean', 'Leader, Main Vocalist', 'zyozyo', 3),
('Mina', 'Myoui Mina', '1997-03-24', 'Japanese', 'Dancer', 'mina_sr_my', 3),
('Dahyun', 'Kim Dahyun', '1998-05-28', 'Korean', 'Rapper', 'dahhyunnee', 3),
('Chaeyoung', 'Son Chaeyoung', '1999-04-23', 'Korean', 'Rapper', 'chaeyo.0', 3),
('Tzuyu', 'Chou Tzuyu', '1999-06-14', 'Taiwanese', 'Visual', 'thinkaboutzu', 3),

-- EXO (group_id = 4)
('Xiumin', 'Kim Minseok', '1990-03-26', 'Korean', 'Vocalist', 'e_xiu_o', 4),
('Suho', 'Kim Junmyeon', '1991-05-22', 'Korean', 'Leader', 'kimjuncotton', 4),
('Lay', 'Zhang Yixing', '1991-10-07', 'Chinese', 'Dancer', 'layzhang', 4),
('Baekhyun', 'Byun Baekhyun', '1992-05-06', 'Korean', 'Main Vocalist', 'baekhyunee_exo', 4),
('Chen', 'Kim Jongdae', '1992-09-21', 'Korean', 'Main Vocalist', 'chen', 4),
('Chanyeol', 'Park Chanyeol', '1992-11-27', 'Korean', 'Main Rapper', 'real__pcy', 4),
('D.O.', 'Do Kyungsoo', '1993-01-12', 'Korean', 'Main Vocalist', 'd.o.kyungsoo', 4),
('Kai', 'Kim Jongin', '1994-01-14', 'Korean', 'Main Dancer', 'zkdlin', 4),
('Sehun', 'Oh Sehun', '1994-04-12', 'Korean', 'Rapper', 'oohsehun', 4),

-- SEVENTEEN (group_id = 5)
('S.Coups', 'Choi Seungcheol', '1995-08-08', 'Korean', 'Leader', 'sound_of_coups', 5),
('Jeonghan', 'Yoon Jeonghan', '1995-10-04', 'Korean', 'Vocalist', 'jeonghaniyoo_n', 5),
('Joshua', 'Hong Jisoo', '1995-12-30', 'American', 'Vocalist', 'joshu_acoustic', 5),
('Jun', 'Wen Junhui', '1996-06-10', 'Chinese', 'Dancer', 'junhui_moon', 5),
('Hoshi', 'Kwon Soonyoung', '1996-06-15', 'Korean', 'Main Dancer', 'ho5hi_kwon', 5),
('Wonwoo', 'Jeon Wonwoo', '1996-07-17', 'Korean', 'Rapper', 'everyone_woo', 5),
('Woozi', 'Lee Jihoon', '1996-11-22', 'Korean', 'Producer', 'woozi_universefactory', 5),

-- TXT (group_id = 13)
('Soobin', 'Choi Soobin', '2000-12-05', 'Korean', 'Leader', 'page.soobin', 13),
('Yeonjun', 'Choi Yeonjun', '1999-09-13', 'Korean', 'Rapper, Dancer', 'yawnzzn', 13),
('Beomgyu', 'Choi Beomgyu', '2001-03-13', 'Korean', 'Vocalist', 'bamgyuuuu', 13),
('Taehyun', 'Kang Taehyun', '2002-02-05', 'Korean', 'Vocalist', 'txt_taehyun', 13),
('Huening Kai', 'Kai Kamal Huening', '2002-08-14', 'Korean-American', 'Maknae', 'hueningkai', 13),

-- ENHYPEN (group_id = 14)
('Jungwon', 'Yang Jungwon', '2004-02-09', 'Korean', 'Leader', 'enhypen', 14),
('Heeseung', 'Lee Heeseung', '2001-10-15', 'Korean', 'Main Vocalist', 'enhypen', 14),
('Jay', 'Park Jongseong', '2002-04-20', 'Korean-American', 'Rapper', 'enhypen', 14),
('Jake', 'Sim Jaeyun', '2002-11-15', 'Australian', 'Vocalist', 'enhypen', 14),
('Sunghoon', 'Park Sunghoon', '2002-12-08', 'Korean', 'Visual', 'enhypen', 14),
('Sunoo', 'Kim Sunoo', '2003-06-24', 'Korean', 'Vocalist', 'enhypen', 14),
('Ni-ki', 'Nishimura Riki', '2005-12-09', 'Japanese', 'Main Dancer', 'enhypen', 14),

-- aespa (group_id = 9)
('Karina', 'Yu Jimin', '2000-04-11', 'Korean', 'Leader', 'katarinabluu', 9),
('Winter', 'Kim Minjeong', '2001-01-01', 'Korean', 'Vocalist', 'imwinter', 9),
('Giselle', 'Uchinaga Aeri', '2000-10-30', 'Japanese-Korean', 'Rapper', 'aerichandesu', 9),
('Ningning', 'Ning Yizhuo', '2002-10-23', 'Chinese', 'Main Vocalist', 'ningning', 9),

-- Stray Kids (group_id = 7)
('Bang Chan', 'Christopher Bang', '1997-10-03', 'Australian', 'Leader, Producer', 'gnabnahc', 7),
('Lee Know', 'Lee Minho', '1998-10-25', 'Korean', 'Dancer', 't.leeknow', 7),
('Changbin', 'Seo Changbin', '1999-08-11', 'Korean', 'Rapper', 'jutdwae', 7),
('Hyunjin', 'Hwang Hyunjin', '2000-03-20', 'Korean', 'Dancer, Rapper', 'hynjinnnn', 7),
('Han', 'Han Jisung', '2000-09-14', 'Korean', 'Rapper, Producer', 'doolsetnet', 7),
('Felix', 'Lee Felix', '2000-09-15', 'Australian', 'Dancer, Rapper', 'yong.lixx', 7),
('Seungmin', 'Kim Seungmin', '2000-09-22', 'Korean', 'Main Vocalist', 'miniverse.___', 7),
('I.N', 'Yang Jeongin', '2001-02-08', 'Korean', 'Maknae', 'i.2.n.8', 7);

INSERT INTO albums
(album_name, release_date, album_type, group_id)
VALUES

-- BTS (group_id = 1)
('2 Cool 4 Skool', '2013-06-12', 'Single Album', 1),
('O!RUL8,2?', '2013-09-11', 'EP', 1),
('Skool Luv Affair', '2014-02-12', 'EP', 1),
('Dark & Wild', '2014-08-20', 'Studio Album', 1),
('The Most Beautiful Moment in Life Pt.1', '2015-04-29', 'EP', 1),
('The Most Beautiful Moment in Life Pt.2', '2015-11-30', 'EP', 1),
('Young Forever', '2016-05-02', 'Compilation Album', 1),
('Wings', '2016-10-10', 'Studio Album', 1),
('You Never Walk Alone', '2017-02-13', 'Repackage Album', 1),
('Love Yourself: Her', '2017-09-18', 'EP', 1),

-- BLACKPINK (group_id = 2)
('Square One', '2016-08-08', 'Single Album', 2),
('Square Two', '2016-11-01', 'Single Album', 2),
('Square Up', '2018-06-15', 'EP', 2),
('Kill This Love', '2019-04-05', 'EP', 2),
('The Album', '2020-10-02', 'Studio Album', 2),
('Born Pink', '2022-09-16', 'Studio Album', 2),

-- TWICE (group_id = 3)
('The Story Begins', '2015-10-20', 'EP', 3),
('Page Two', '2016-04-25', 'EP', 3),
('Twicecoaster: Lane 1', '2016-10-24', 'EP', 3),
('Signal', '2017-05-15', 'EP', 3),
('Twicetagram', '2017-10-30', 'Studio Album', 3),
('What is Love?', '2018-04-09', 'EP', 3),
('Feel Special', '2019-09-23', 'EP', 3),
('Eyes Wide Open', '2020-10-26', 'Studio Album', 3),
('Taste of Love', '2021-06-11', 'EP', 3),
('Formula of Love', '2021-11-12', 'Studio Album', 3),

-- EXO (group_id = 4)
('Mama', '2012-04-09', 'EP', 4),
('XOXO', '2013-06-03', 'Studio Album', 4),
('Overdose', '2014-05-07', 'EP', 4),
('Exodus', '2015-03-30', 'Studio Album', 4),
('Sing For You', '2015-12-10', 'EP', 4),
('Ex’Act', '2016-06-09', 'Studio Album', 4),
('For Life', '2016-12-19', 'EP', 4),
('The War', '2017-07-18', 'Studio Album', 4),
('Universe', '2017-12-26', 'EP', 4),
('Don’t Mess Up My Tempo', '2018-11-02', 'Studio Album', 4),

-- SEVENTEEN (group_id = 5)
('17 Carat', '2015-05-29', 'EP', 5),
('Boys Be', '2015-09-10', 'EP', 5),
('Love & Letter', '2016-04-25', 'Studio Album', 5),
('Going Seventeen', '2016-12-05', 'EP', 5),
('Al1', '2017-05-22', 'EP', 5),
('Teen, Age', '2017-11-06', 'Studio Album', 5),
('You Make My Day', '2018-07-16', 'EP', 5),
('An Ode', '2019-09-16', 'Studio Album', 5),

-- TXT (group_id = 13)
('The Dream Chapter: STAR', '2019-03-04', 'EP', 13),
('The Dream Chapter: MAGIC', '2019-10-21', 'Studio Album', 13),
('Minisode1: Blue Hour', '2020-10-26', 'EP', 13),
('The Chaos Chapter: Freeze', '2021-05-31', 'Studio Album', 13),
('Minisode 2: Thursday’s Child', '2022-05-09', 'EP', 13),
('The Name Chapter: TEMPTATION', '2023-01-27', 'EP', 13),

-- ENHYPEN (group_id = 14)
('Border: Day One', '2020-11-30', 'EP', 14),
('Border: Carnival', '2021-04-26', 'EP', 14),
('Dimension: Dilemma', '2021-10-12', 'Studio Album', 14),
('Manifesto: Day 1', '2022-07-04', 'EP', 14),
('Dark Blood', '2023-05-22', 'EP', 14),

-- aespa (group_id = 9)
('Savage', '2021-10-05', 'EP', 9),
('Girls', '2022-07-08', 'EP', 9),
('My World', '2023-05-08', 'EP', 9),
('Drama', '2023-11-10', 'EP', 9),

-- Stray Kids (group_id = 7)
('I Am NOT', '2018-03-26', 'EP', 7),
('I Am WHO', '2018-08-06', 'EP', 7),
('Clé 1: MIROH', '2019-03-25', 'EP', 7),
('Go Live', '2020-06-17', 'Studio Album', 7),
('NOEASY', '2021-08-23', 'Studio Album', 7),
('Oddinary', '2022-03-18', 'EP', 7),
('MAXIDENT', '2022-10-07', 'EP', 7),
('5-STAR', '2023-06-02', 'Studio Album', 7);

INSERT INTO songs
(song_name, duration, genre, album_id)
VALUES

-- BTS Albums
('No More Dream', '03:42', 'Hip-Hop', 1),
('N.O', '03:30', 'Hip-Hop', 2),
('Boy In Luv', '03:51', 'K-Pop', 3),
('Danger', '04:05', 'K-Pop', 4),
('I Need U', '03:30', 'K-Pop', 5),
('Run', '03:57', 'K-Pop', 6),
('Fire', '03:23', 'EDM', 7),
('Blood Sweat & Tears', '03:37', 'Moombahton', 8),
('Spring Day', '04:34', 'Ballad', 9),
('DNA', '03:43', 'Pop', 10),

-- BLACKPINK Albums
('Boombayah', '04:00', 'EDM', 11),
('Playing With Fire', '03:17', 'Pop', 12),
('DDU-DU DDU-DU', '03:29', 'Trap Pop', 13),
('Kill This Love', '03:13', 'Pop Rock', 14),
('How You Like That', '03:01', 'Hip-Hop', 15),
('Pink Venom', '03:07', 'Hip-Hop', 16),

-- TWICE Albums
('Like OOH-AHH', '03:35', 'Dance Pop', 17),
('Cheer Up', '03:28', 'K-Pop', 18),
('TT', '03:32', 'K-Pop', 19),
('Signal', '03:16', 'Electropop', 20),
('Likey', '03:29', 'Dance Pop', 21),
('What is Love?', '03:28', 'Pop', 22),
('Feel Special', '03:26', 'Synth Pop', 23),
('I Can’t Stop Me', '03:25', 'Synthwave', 24),
('Alcohol-Free', '03:30', 'Bossa Nova', 25),
('Scientist', '03:14', 'Pop', 26),

-- EXO Albums
('Mama', '03:28', 'Orchestral Pop', 27),
('Growl', '03:27', 'Dance Pop', 28),
('Overdose', '03:25', 'Hip-Hop', 29),
('Call Me Baby', '03:31', 'Pop', 30),
('Sing For You', '03:45', 'Ballad', 31),
('Monster', '03:41', 'EDM', 32),
('For Life', '03:58', 'Ballad', 33),
('Ko Ko Bop', '03:10', 'Reggae Pop', 34),
('Universe', '04:24', 'Ballad', 35),
('Tempo', '03:44', 'Hip-Hop', 36),

-- SEVENTEEN Albums
('Adore U', '03:06', 'Funk Pop', 37),
('Mansae', '03:15', 'Dance Pop', 38),
('Pretty U', '03:27', 'K-Pop', 39),
('Boom Boom', '03:26', 'Dance Pop', 40),
('Don’t Wanna Cry', '03:23', 'EDM', 41),
('Clap', '02:56', 'Funk Rock', 42),
('Oh My!', '03:16', 'Pop', 43),
('Fear', '03:20', 'Dark Pop', 44),

-- TXT Albums
('Crown', '03:50', 'Synth Pop', 45),
('Run Away', '03:32', 'Pop Rock', 46),
('Blue Hour', '03:29', 'Disco Pop', 47),
('0X1=LOVESONG', '03:22', 'Pop Punk', 48),
('Good Boy Gone Bad', '03:11', 'Rock', 49),
('Sugar Rush Ride', '03:06', 'Dream Pop', 50),

-- ENHYPEN Albums
('Given-Taken', '03:04', 'Pop', 51),
('Drunk-Dazed', '03:13', 'Rock', 52),
('Tamed-Dashed', '03:29', 'New Wave', 53),
('Future Perfect', '03:25', 'Hip-Hop', 54),
('Bite Me', '02:37', 'Pop', 55),

-- aespa Albums
('Savage', '03:58', 'Hyperpop', 56),
('Girls', '04:00', 'Dance Pop', 57),
('Spicy', '03:17', 'Dance', 58),
('Drama', '03:34', 'Hip-Hop', 59),

-- Stray Kids Albums
('District 9', '03:31', 'Hip-Hop', 60),
('My Pace', '03:09', 'Pop', 61),
('MIROH', '03:28', 'EDM', 62),
('God’s Menu', '02:47', 'Hip-Hop', 63),
('Thunderous', '03:03', 'Traditional Hip-Hop', 64),
('MANIAC', '03:02', 'Trap', 65),
('CASE 143', '03:14', 'Pop', 66),
('S-Class', '03:15', 'Hip-Hop', 67);