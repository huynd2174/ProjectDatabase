SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234, 'tester1@gmail.com', 'admin', '2023-07-05 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`, `CreationDate`) VALUES
(1, 'Xe 4 bánh', '2023-11-29 11:06:50'),
(2, 'Xe 2 bánh', '2023-11-29 11:07:09'),
(3, 'Xe 3 bánh', '2023-12-01 16:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(10) NOT NULL,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCategory` varchar(120) NOT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint(10) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ParkingCharge` varchar(120) NOT NULL,
  `Remark` mediumtext NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `ParkingCharge`, `Remark`, `Status`) VALUES
(1, '521796069', 'Xe 2 bánh', 'Hyundai', '29K1-678787', 'Rammus Hollund', 8956232528, '2023-11-28 05:58:38', '2023-11-29 11:09:36', '5000', 'NA', 'Out'),
(2, '469052796', 'Xe 2 bánh', 'Activa', '29M1-895623', 'Harry Maguire', 8989898989, '2023-11-29 08:58:38', '2023-11-29 11:09:33', '3000', 'NA', 'Out'),
(3, '734465023', 'Xe 4 bánh', 'Hondacity', '36H1-562389', 'Garnacho', 7845123697, '2023-11-29 08:58:38', '2023-11-30 08:59:36', '5000', 'Vehicle Out', 'Out'),
(4, '432190880', 'Xe 2 bánh', 'AB', '18N1-451236', 'Onana', 2132654447, '2023-11-29 08:58:38', '2023-11-30 09:53:35', '3000', 'Vehicle Out', 'Out'),
(5, '323009894', 'Xe 2 bánh', 'Activa', '15E1-55776', 'Varane', 4654654654, '2023-11-29 08:58:38', '2023-11-306 08:59:24', '', '', ''),
(6, '522578915', 'Xe 2 bánh', 'Hondacity', '15D1-895623', 'Athony', 7978999879, '2023-11-29 08:58:38', NULL, '', '', ''),
(7, '917725207', 'Xe 2 bánh', 'Honda', '37C1-RT2323', 'TAA', 1234567890, '2023-11-29 11:03:05', '2023-11-30 10:38:21', '5000 ', 'Time out', 'Out'),
(8, '486258836', 'Xe 2 bánh', 'Honda Activa', '37C1-R3929', 'Test User', 1234567890, '2023-11-07 11:32:02', '2023-11-07 11:32:42', '4000', 'Vehicle Out', 'Out'),
(9, '756792554', 'Xe 4 bánh', 'Honda', '11K1-11111', 'Lindelof', 9816672263, '2023-11-30 10:35:57', '2023-11-30 10:36:35', '120', 'Out', 'Out'),
(10, '819816720', 'Xe 2 bánh', 'SYM', '11K1-13299', 'Rashford', 9814140613, '2023-11-30 10:39:25', '2023-11-30 10:43:06', '120', 'Vehicle Out', 'Out'),
(11, '841547689', 'Xe 2 bánh', 'Yamaha', '32M1-3929', 'Casemiro', 9815445458, '2023-11-30 10:41:24', '2023-11-30 10:42:20', '2000', 'Vehicle Out', 'Out'),
(12, '437305592', 'Xe 4 bánh', 'Honda', '33M1-8243', 'Tony Stark', 98989898, '2023-11-30 07:54:40', '2023-11-30 07:56:50', '5000', 'Out of Parking', 'Out'),
(13, '514013148', 'Xe 4 bánh', 'RR', '8888', 'Stone', 9897858, '2023-11-04 16:17:15', '2023-11-04 16:17:49', '1000', 'out time', 'Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
