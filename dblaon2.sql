-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2016 at 04:52 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dbloan_bank1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_approveloan`
--

CREATE TABLE `tbl_approveloan` (
  `approve_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสอนุมัติ',
  `bank_id` varchar(50) DEFAULT NULL COMMENT 'รหัสชื่อธนาคาร',
  `loanreq_id` int(11) DEFAULT NULL COMMENT 'รหัสขอสินเชื่อ',
  `firstname` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้กู้',
  `judgment` varchar(50) DEFAULT NULL COMMENT 'ผลการพิจารณา',
  `loanstatusbank` varchar(50) DEFAULT NULL COMMENT 'สถานะ',
  `approvedamount` double DEFAULT NULL COMMENT 'วงเงินอนุมัติเบื่องต้น',
  `installlments` double DEFAULT NULL COMMENT 'ยอดผ่อนชำละต่อเดือน',
  `timerepayment` varchar(2) DEFAULT NULL COMMENT 'ระยะเวลาการผ่อน',
  `position` varchar(50) DEFAULT NULL COMMENT 'ตำแหน่งผู้อนุมัติ',
  `createdby` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้อนุมัติ',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `updateby` varchar(50) DEFAULT NULL COMMENT 'ชื่อผุ้แก้ไข',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_approveloan`
--

INSERT INTO `tbl_approveloan` (`approve_id`, `bank_id`, `loanreq_id`, `firstname`, `judgment`, `loanstatusbank`, `approvedamount`, `installlments`, `timerepayment`, `position`, `createdby`, `created`, `updateby`, `updated`) VALUES
(1, '12345bkb', 129, NULL, '', 'อนุมัติ', 0, 0, '1', 'ผู้ตรวจสอบ', 'สุเมธ', '2016-12-18 20:29:29', NULL, '2016-12-18 20:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_main_menu`
--

CREATE TABLE `tbl_main_menu` (
  `mainMenuId` int(11) NOT NULL,
  `menuName` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) DEFAULT NULL,
  `groupMenu` varchar(1) DEFAULT '1' COMMENT '1 = 1 menu, 2 = groupmenu',
  `todoMethod` varchar(100) DEFAULT NULL,
  `onclick` varchar(100) DEFAULT NULL,
  `cssclass` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `seqNo` int(11) DEFAULT '0',
  `levelMenu` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_main_menu`
--

INSERT INTO `tbl_main_menu` (`mainMenuId`, `menuName`, `action`, `groupMenu`, `todoMethod`, `onclick`, `cssclass`, `created`, `createBy`, `updated`, `updateBy`, `seqNo`, `levelMenu`) VALUES
(1, 'ตั้งค่า', '', '2', '', NULL, 'dropdown', '2016-06-12 15:54:18', 'BrassZero', '2016-06-12 15:54:18', 'BeebyThailand', 5, '2'),
(2, 'หน้าแรก', 'PageAction.do', '1', 'gotoPageHome', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 1, '1'),
(4, 'เข้าสู่ระบบ', 'PageAction.do', '1', 'gotoPageLogin', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 4, '1'),
(7, 'เกี่ยวกับเรา', '#', '1', 'gotoPageBootstrapForm', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 5, '1'),
(12, 'จัดการสินเชื่อ', 'PageAction.do', '1', 'gotoPageManagermentLoan', NULL, NULL, '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 1, '2'),
(13, 'สินเชื่อที่ผ่านการอนุมัติ', 'PageAction.do', '1', 'gotoPageAdminManagermentProfile', NULL, NULL, '2016-11-22 06:40:32', 'BrassZero', '2016-11-22 06:40:32', 'BrassZero', 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requestloan`
--

CREATE TABLE `tbl_requestloan` (
  `loan_id` int(11) UNSIGNED NOT NULL,
  `loanreq_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสสินเชื่อ',
  `citizen_id` varchar(13) DEFAULT NULL COMMENT 'เลขบัตรประชาชน',
  `title_type` varchar(10) DEFAULT NULL COMMENT 'คำนำหน้า',
  `firstname` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastname` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate` varchar(15) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `statustype` varchar(10) DEFAULT NULL COMMENT 'สถานะ',
  `mobile` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `email` varchar(50) DEFAULT NULL COMMENT 'อีเมล์',
  `nationality` varchar(50) DEFAULT NULL,
  `jobtype` varchar(100) DEFAULT NULL COMMENT 'อาชีพ',
  `province` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `amphur` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ทะเบียนบ้าน',
  `district` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จัดส่',
  `address` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จ',
  `hometype` varchar(100) DEFAULT NULL COMMENT 'ประเภทที่อยู่อาศัย',
  `tradingprice` double DEFAULT NULL COMMENT 'ราคาชื่อขาย',
  `creditloan` double DEFAULT NULL COMMENT 'วงเงินชินเชื่อที่ขอกู้',
  `lncome_per_month` int(2) DEFAULT NULL COMMENT 'ระยะเวลาที่ขอกู้',
  `periodloan` double DEFAULT NULL COMMENT 'รายได้ประจำต่อเดือน',
  `netprofit` double DEFAULT NULL COMMENT 'รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน',
  `copyidcard` varchar(250) DEFAULT NULL COMMENT 'สำเนาบัตรประจำตัวประชาชน',
  `copylicenses` varchar(250) DEFAULT NULL COMMENT 'สำเนาใบอนุญาตประกอบวิชาชีพ (กรณีประกอบวิชาชีพเฉพาะ)',
  `copydocumenthome` varchar(250) DEFAULT '' COMMENT 'สำเนาทะเบียนบ้าน',
  `copymarriage` varchar(250) DEFAULT NULL COMMENT 'สำเนาทะเบียนสมรส/ใบหย่า',
  `copy_rename` varchar(250) DEFAULT NULL COMMENT 'ใบเปลี่ยนชื่อ-สกุล (ทุกใบ) ',
  `salary_slip` varchar(250) DEFAULT 'null' COMMENT 'สลิปเงินเดือน',
  `copy_bankaccount` varchar(250) DEFAULT 'null' COMMENT 'สำเนาบัญชีธนาคาร',
  `loanstatustype` varchar(50) DEFAULT NULL COMMENT 'สถานะขขอสินเชื่อ',
  `citizen_p` varchar(13) DEFAULT NULL,
  `title_P` varchar(10) DEFAULT NULL COMMENT 'คำนำหน้า',
  `firstname_p` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastname_p` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate_p` varchar(10) DEFAULT NULL,
  `age_p` int(2) DEFAULT NULL,
  `statustype_p` varchar(10) DEFAULT NULL COMMENT 'สถานะ',
  `mobile_p` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `email_p` varchar(50) DEFAULT NULL COMMENT 'อีเมล์',
  `nationality_p` varchar(50) DEFAULT NULL,
  `jobtype_p` varchar(100) DEFAULT NULL COMMENT 'อาชีพ',
  `province_p` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `amphur_p` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ทะเบียนบ้าน',
  `district_p` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จัดส่',
  `address_p` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จ',
  `periodloan_p` double DEFAULT NULL COMMENT 'รายได้ประจำต่อเดือน',
  `netprofit_p` double DEFAULT NULL COMMENT 'รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน',
  `copyidcard_p` varchar(250) DEFAULT NULL COMMENT 'สำเนาบัตรประจำตัวประชาชน',
  `copydocumenthome_p` varchar(250) DEFAULT '' COMMENT 'สำเนาทะเบียนบ้าน',
  `salary_slip_p` varchar(250) DEFAULT 'null' COMMENT 'สลิปเงินเดือน',
  `copy_bankaccount_p` varchar(250) DEFAULT 'null' COMMENT 'สำเนาบัญชีธนาคาร',
  `citizen_k` varchar(13) DEFAULT NULL,
  `title_k` varchar(10) DEFAULT NULL COMMENT 'คำนำหน้า',
  `firstname_k` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastname_k` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate_k` varchar(10) DEFAULT NULL,
  `age_k` int(2) DEFAULT NULL,
  `statustype_k` varchar(10) DEFAULT NULL COMMENT 'สถานะ',
  `mobile_k` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `email_k` varchar(50) DEFAULT NULL COMMENT 'อีเมล์',
  `nationality_k` varchar(50) DEFAULT NULL,
  `jobtype_k` varchar(100) DEFAULT NULL COMMENT 'อาชีพ',
  `province_k` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `amphur_k` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่ทะเบียนบ้าน',
  `district_k` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จัดส่',
  `address_k` varchar(100) DEFAULT NULL COMMENT 'ที่อยู่จ',
  `periodloan_k` double DEFAULT NULL COMMENT 'รายได้ประจำต่อเดือน',
  `netprofit_k` double DEFAULT NULL COMMENT 'รายได้เสริมทั้งหมดเฉลี่ยต่อเดือน',
  `copyidcard_k` varchar(250) DEFAULT NULL COMMENT 'สำเนาบัตรประจำตัวประชาชน',
  `copydocumenthome_k` varchar(250) DEFAULT '' COMMENT 'สำเนาทะเบียนบ้าน',
  `salary_slip_k` varchar(250) DEFAULT 'null' COMMENT 'สลิปเงินเดือน',
  `copy_bankaccount_k` varchar(250) DEFAULT 'null' COMMENT 'สำเนาบัญชีธนาคาร',
  `createby` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้สร้าง',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `updateby` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้แก้ไข',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(100) NOT NULL DEFAULT '',
  `detail` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`roleId`, `roleName`, `detail`, `created`, `createBy`, `updated`, `updateBy`) VALUES
(1, 'Administration', 'ผู้ดูแลระบบ', '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand'),
(2, 'User', 'ผู้ใช้ทั่วไป', '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_group_menu`
--

CREATE TABLE `tbl_role_group_menu` (
  `roleId` int(11) NOT NULL DEFAULT '0',
  `mainMenuId` int(11) NOT NULL DEFAULT '0',
  `seqNo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_role_group_menu`
--

INSERT INTO `tbl_role_group_menu` (`roleId`, `mainMenuId`, `seqNo`) VALUES
(1, 1, 5),
(1, 2, 1),
(1, 7, 4),
(1, 12, 2),
(1, 13, 3),
(2, 1, 5),
(2, 2, 1),
(2, 7, 4),
(2, 11, 2),
(2, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `subMenuId` int(11) NOT NULL,
  `mainMenuId` int(11) NOT NULL DEFAULT '0',
  `menuName` varchar(100) NOT NULL DEFAULT '',
  `action` varchar(100) DEFAULT NULL,
  `todoMethod` varchar(100) DEFAULT NULL,
  `onclick` varchar(100) DEFAULT NULL,
  `cssclass` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `createBy` varchar(50) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `seqNo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`subMenuId`, `mainMenuId`, `menuName`, `action`, `todoMethod`, `onclick`, `cssclass`, `created`, `createBy`, `updated`, `updateBy`, `seqNo`) VALUES
(1, 1, 'แก้ไขข้อมูลส่วนตัว', 'PageAction.do', 'gotoPageProfile', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 1),
(2, 1, 'เปลียนระหัสผ่าน', 'ChahgewdAction.do', 'gotoPageChangePassword', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 2),
(3, 1, 'ออกจากระบบ', 'AuthenAuthorizeAction.do', 'logout', NULL, NULL, '2016-06-12 15:54:18', 'BeebyThailand', '2016-06-12 15:54:18', 'BeebyThailand', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `citizen_id` varchar(13) NOT NULL DEFAULT '' COMMENT 'เลขบัตรประจำตัวประชาชน',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT 'ชื่อเข้าสู่ระบบ',
  `password` varchar(50) DEFAULT '' COMMENT 'รหัสผ่าน',
  `title_type` varchar(20) DEFAULT NULL COMMENT 'ประเภทคำนำหน้า',
  `firstName` varchar(50) DEFAULT NULL COMMENT 'ชื่อ',
  `lastName` varchar(50) DEFAULT NULL COMMENT 'นามสกุล',
  `birthdate` varchar(20) DEFAULT NULL COMMENT 'วัดเดือนปีเกิด',
  `age` int(3) DEFAULT NULL COMMENT 'อายุ',
  `statustype` varchar(30) DEFAULT NULL COMMENT 'สถานะ',
  `mobile` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทร',
  `email` varchar(100) DEFAULT NULL COMMENT 'อีเมล์',
  `addressregistration` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ตามทะเบียนบ้าน',
  `addresscurrent` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่ปัจจุบัน',
  `addresssenddoc` varchar(250) DEFAULT NULL COMMENT 'ที่อยู่จัดส่งเอกสาร',
  `roleId` int(11) NOT NULL DEFAULT '0' COMMENT 'รหัสสิทธิ',
  `created` timestamp NULL DEFAULT NULL COMMENT 'วันที่สร้าง',
  `createBy` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้สร้าง',
  `updated` timestamp NULL DEFAULT NULL COMMENT 'วันที่แก้ไข',
  `updateBy` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้แก้ไข',
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `citizen_id`, `username`, `password`, `title_type`, `firstName`, `lastName`, `birthdate`, `age`, `statustype`, `mobile`, `email`, `addressregistration`, `addresscurrent`, `addresssenddoc`, `roleId`, `created`, `createBy`, `updated`, `updateBy`, `status`) VALUES
(60, '1111111111111', 'admin', 'admin', 'นาย', 'สุเมธ', 'แก่นแก้ว', '1994-03-10', 22, 'โสด', '0833412924', 'sumet68@hotmail.com', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 'หนองสองห้อง\r\nขอนแก่น', 1, '2016-06-12 15:54:18', 'สุเมธ', '2016-06-12 15:54:18', 'สุเมธ', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_approveloan`
--
ALTER TABLE `tbl_approveloan`
  ADD PRIMARY KEY (`approve_id`);

--
-- Indexes for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
  ADD PRIMARY KEY (`mainMenuId`);

--
-- Indexes for table `tbl_requestloan`
--
ALTER TABLE `tbl_requestloan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_role_group_menu`
--
ALTER TABLE `tbl_role_group_menu`
  ADD PRIMARY KEY (`roleId`,`mainMenuId`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`subMenuId`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`citizen_id`),
  ADD KEY `userid` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_approveloan`
--
ALTER TABLE `tbl_approveloan`
  MODIFY `approve_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'รหัสอนุมัติ', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_main_menu`
--
ALTER TABLE `tbl_main_menu`
  MODIFY `mainMenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_requestloan`
--
ALTER TABLE `tbl_requestloan`
  MODIFY `loan_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  MODIFY `subMenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
