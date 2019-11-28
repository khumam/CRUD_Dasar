-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 05:39 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(250) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `is_delete`, `date`) VALUES
(1, 'admin', 0, '2019-11-14 14:58:54'),
(2, 'operator', 0, '2019-11-14 14:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `level_menu`
--

CREATE TABLE `level_menu` (
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_menu`
--

INSERT INTO `level_menu` (`id_menu`, `id_level`, `id`) VALUES
(2, 1, 3),
(2, 2, 4),
(1, 2, 5),
(3, 1, 6),
(4, 2, 7),
(5, 1, 8),
(5, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `level_pengguna`
--

CREATE TABLE `level_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_pengguna`
--

INSERT INTO `level_pengguna` (`id_pengguna`, `id_level`, `id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `url`, `is_delete`, `date`) VALUES
(1, 'Mahasiswa', 'mahasiswa', 0, '2019-11-14 14:58:17'),
(2, 'Dashboard', 'dashboard', 0, '2019-11-14 14:58:17'),
(3, 'Profil', 'profil', 0, '2019-11-21 14:28:18'),
(4, 'Settings', 'settings', 0, '2019-11-21 14:28:18'),
(5, 'Pie Chart', 'pie', 0, '2019-11-21 15:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `myTable`
--

CREATE TABLE `myTable` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(13) DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myTable`
--

INSERT INTO `myTable` (`id`, `nama`, `alamat`, `nohp`, `del`) VALUES
(7, 'Damon Horne', '5166 Integer St.', '1690120853299', 0),
(8, 'Darius Sawyer', 'Ap #839-5451 Vestibulum Street', '1631020454599', 0),
(9, 'Hall Porter', 'P.O. Box 969, 1116 Ante. St.', '1627062435399', 0),
(10, 'Tyler Gillespie', '9287 Nibh. Rd.', '1621091300799', 0),
(11, 'Yasir Santos', '5216 Augue St.', '1691061378099', 0),
(12, 'Connor Manning', 'Ap #180-974 A Rd.', '1666101562199', 0),
(13, 'Oren Justice', '3560 Aliquam Road', '1642032590199', 0),
(14, 'Carter Mcleod', '884-1578 Lacus St.', '1614042572599', 0),
(15, 'Vincent Fischer', '5179 Varius. St.', '1672081680799', 0),
(16, 'Jamal Collins', '919-946 Mollis. Rd.', '1621051744999', 0),
(17, 'Kyle Pace', 'P.O. Box 896, 9221 In Av.', '1650121146499', 0),
(18, 'Gavin Ewing', '754-1046 Morbi Rd.', '1639022607599', 0),
(19, 'Octavius Oneal', '7594 Ac St.', '1626110447399', 0),
(20, 'Ulysses Peters', '1186 Nullam Av.', '1620122764199', 0),
(21, 'Chancellor Middleton', '3981 Rutrum Rd.', '1665040470299', 0),
(22, 'Joseph Bishop', '1809 Non Avenue', '1666101821199', 0),
(23, 'Bevis Mathis', 'Ap #166-1315 In Road', '1612060297999', 0),
(24, 'Barrett Jenkins', '947-2178 Tellus. St.', '1609083051099', 0),
(25, 'Duncan Sanchez', '894-3525 Id, Rd.', '1636060286299', 0),
(26, 'Lucius Heath', '463-9100 Accumsan Rd.', '1683041127899', 0),
(27, 'Marsden Snider', 'P.O. Box 409, 219 Viverra. Street', '1621070348799', 0),
(28, 'Tyler Neal', 'P.O. Box 683, 1801 Tempor Rd.', '1629071541199', 0),
(29, 'Valentine Petty', '1511 Nulla. Street', '1647112525199', 0),
(30, 'Alden Schwartz', '2630 Dis Av.', '1672110884599', 0),
(31, 'Emery Schmidt', 'P.O. Box 525, 2311 Vestibulum Ave', '1628021161399', 0),
(32, 'Nicholas Hamilton', 'Ap #992-6363 Sed Ave', '1655072331699', 0),
(33, 'David Nicholson', '7990 Lacinia Road', '1643082317599', 0),
(34, 'Hall Hayes', '7520 Lacus Rd.', '1654060770599', 0),
(35, 'Bruce Workman', '2958 Nec, Rd.', '1653031396799', 0),
(36, 'Fletcher Nicholson', '9633 Nibh. St.', '1697102294299', 0),
(37, 'Harper Wolfe', '633-6065 Gravida Rd.', '1611092329699', 0),
(38, 'Noah Maxwell', '9109 Id Ave', '1691051637899', 0),
(39, 'Derek Swanson', '577-8836 Mi. Avenue', '1689122441299', 0),
(40, 'Laith Bell', '6952 Sit St.', '1685061753599', 0),
(41, 'Brendan Dixon', '9520 Sociosqu Rd.', '1657050613999', 0),
(42, 'Hu Bauer', '1467 Eleifend Avenue', '1606121275699', 0),
(43, 'Acton Mendoza', '7587 Luctus Rd.', '1676092973799', 0),
(44, 'Yasir Wiley', 'Ap #802-3518 Blandit St.', '1634012295799', 0),
(45, 'Reece Alexander', '832-6644 Nullam Rd.', '1645082747099', 0),
(46, 'Holmes Gallagher', 'P.O. Box 247, 6130 Diam Av.', '1676030157899', 0),
(47, 'Alexander Estrada', '346-1325 Faucibus Street', '1600020985099', 0),
(48, 'Vladimir Olson', 'P.O. Box 710, 5271 Risus Av.', '1609071965099', 0),
(49, 'Victor Fox', 'Ap #196-3401 Mauris. Avenue', '1647051365599', 0),
(50, 'Scott French', 'P.O. Box 501, 4366 Mauris Rd.', '1679121284399', 0),
(51, 'Cedric Mccall', 'Ap #283-1638 Ac St.', '1692110261799', 0),
(52, 'Barrett Gray', '3571 Ornare. Avenue', '1651091406399', 0),
(53, 'Allistair Head', '971-2802 Pede Av.', '1611062080799', 0),
(54, 'Paul Chandler', 'P.O. Box 727, 3029 Pharetra. Av.', '1605021158799', 0),
(55, 'Martin Lynn', '617-6233 Phasellus Rd.', '1632062800099', 0),
(56, 'Avram Guy', '7693 Natoque Av.', '1674072606999', 0),
(57, 'Craig Gilliam', 'P.O. Box 760, 9456 Sed St.', '1640081988899', 0),
(58, 'Benedict Keith', 'P.O. Box 480, 2804 Lectus Av.', '1687032317499', 0),
(59, 'Harlan Lucas', 'Ap #690-7527 Ut St.', '1694082169399', 0),
(60, 'Honorato Sargent', '8495 Sed St.', '1685081936399', 0),
(61, 'Rafael Cox', '489 Ipsum Ave', '1699110646799', 0),
(62, 'Warren Mosley', 'Ap #655-2956 Ridiculus Rd.', '1666072672799', 0),
(63, 'Drake Mcintyre', 'P.O. Box 687, 598 Mi. Rd.', '1630083012099', 0),
(64, 'Luke Gamble', 'P.O. Box 223, 1580 Natoque Rd.', '1665071905599', 0),
(65, 'Carlos Shaffer', 'P.O. Box 538, 4509 Molestie. Rd.', '1635063088399', 0),
(66, 'Xander Osborn', 'Ap #772-8757 Commodo St.', '1671112582599', 0),
(67, 'Jelani Crawford', '765-5736 Accumsan Av.', '1696121323899', 0),
(68, 'Walter Sanders', 'Ap #236-2550 Maecenas Street', '1645122388399', 0),
(69, 'Edward Kline', 'P.O. Box 332, 8088 Aliquam St.', '1621120480599', 0),
(70, 'Jonah Wilkinson', 'Ap #270-4488 Hendrerit Rd.', '1626020137199', 0),
(71, 'Stephen Barlow', 'P.O. Box 992, 4571 Quis Street', '1613080947099', 0),
(72, 'Mufutau Ross', '144-4812 Erat, Avenue', '1678031845499', 0),
(73, 'Donovan Jimenez', '105-3321 Adipiscing Rd.', '1642052752299', 0),
(74, 'Leonard Nielsen', '6544 Varius Street', '1638042248199', 0),
(75, 'Eaton Foreman', 'Ap #715-1948 Mauris Road', '1657072844099', 0),
(76, 'Nicholas Delgado', 'P.O. Box 450, 9202 Sit Avenue', '1627080637799', 0),
(77, 'Lars Trevino', 'Ap #945-6408 Diam. Av.', '1600100525599', 0),
(78, 'Keith Cooke', '8152 Hendrerit Ave', '1661072256799', 0),
(79, 'Aaron Lynch', 'Ap #879-5926 Pharetra. Ave', '1620021733099', 0),
(80, 'Michael Roth', 'Ap #427-843 Ipsum. Ave', '1614110112999', 0),
(81, 'Thane Gray', '546-7797 Donec Avenue', '1662100982099', 0),
(82, 'Tobias Anthony', '2154 Nulla. Ave', '1682042518799', 0),
(83, 'Chester Cox', 'Ap #965-7872 Tincidunt Ave', '1691042602399', 0),
(84, 'Bradley Holman', 'P.O. Box 775, 6555 Lectus Av.', '1620050823999', 0),
(85, 'Murphy Whitley', '7978 Ligula Ave', '1619052596999', 0),
(86, 'Thane Fuller', 'P.O. Box 455, 1291 Non Rd.', '1679060710399', 0),
(87, 'Octavius Mooney', '340 Porttitor St.', '1656082997399', 0),
(88, 'Kenyon Martin', 'Ap #282-4640 Cras Rd.', '1694020591799', 0),
(89, 'Wesley Preston', 'Ap #462-9841 Vehicula Avenue', '1626011673499', 0),
(90, 'Lane Mcdowell', 'Ap #168-2441 Ac Rd.', '1617103058399', 0),
(91, 'Jacob Reeves', '457-4906 Interdum Street', '1656092572199', 0),
(92, 'Walter Hopper', 'Ap #245-9989 Commodo Av.', '1656022861899', 0),
(93, 'Jonas Vasquez', 'Ap #679-9560 Nisl Rd.', '1667020836499', 0),
(94, 'Chandler Cotton', '412-4980 Leo. Ave', '1663021173299', 0),
(95, 'Timothy Clarke', 'P.O. Box 714, 1967 Diam Av.', '1651021770299', 0),
(96, 'Sawyer Mercer', '442-8797 Sed, Street', '1606062577199', 0),
(97, 'Todd Kirk', 'Ap #646-8813 Ligula Rd.', '1649071764699', 0),
(98, 'Tarik Bolton', 'P.O. Box 227, 8114 Maecenas St.', '1632102875699', 0),
(99, 'Baxter Kelly', 'Ap #110-341 A St.', '1686070672899', 0),
(100, 'Alfonso Jackson', '532-4579 Tincidunt Rd.', '1688100779699', 0),
(101, 'Khoerul Umam', 'BREBES', '1902009060', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `is_delete`, `date`) VALUES
(1, 'umam', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2019-11-14 08:03:15'),
(2, 'khoerul', '81dc9bdb52d04dc20036dbd8313ed055', 0, '2019-11-14 08:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_menu`
--
ALTER TABLE `level_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_pengguna`
--
ALTER TABLE `level_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myTable`
--
ALTER TABLE `myTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level_menu`
--
ALTER TABLE `level_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level_pengguna`
--
ALTER TABLE `level_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myTable`
--
ALTER TABLE `myTable`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
