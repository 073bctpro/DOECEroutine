-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2019 at 04:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doeceroutine`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add departments', 7, 'add_departments'),
(26, 'Can change departments', 7, 'change_departments'),
(27, 'Can delete departments', 7, 'delete_departments'),
(28, 'Can view departments', 7, 'view_departments'),
(29, 'Can add programs', 8, 'add_programs'),
(30, 'Can change programs', 8, 'change_programs'),
(31, 'Can delete programs', 8, 'delete_programs'),
(32, 'Can view programs', 8, 'view_programs'),
(33, 'Can add rooms', 9, 'add_rooms'),
(34, 'Can change rooms', 9, 'change_rooms'),
(35, 'Can delete rooms', 9, 'delete_rooms'),
(36, 'Can view rooms', 9, 'view_rooms'),
(37, 'Can add routine', 10, 'add_routine'),
(38, 'Can change routine', 10, 'change_routine'),
(39, 'Can delete routine', 10, 'delete_routine'),
(40, 'Can view routine', 10, 'view_routine'),
(41, 'Can add subjects', 11, 'add_subjects'),
(42, 'Can change subjects', 11, 'change_subjects'),
(43, 'Can delete subjects', 11, 'delete_subjects'),
(44, 'Can view subjects', 11, 'view_subjects'),
(45, 'Can add teachers', 12, 'add_teachers'),
(46, 'Can change teachers', 12, 'change_teachers'),
(47, 'Can delete teachers', 12, 'delete_teachers'),
(48, 'Can view teachers', 12, 'view_teachers'),
(49, 'Can add users', 13, 'add_users'),
(50, 'Can change users', 13, 'change_users'),
(51, 'Can delete users', 13, 'delete_users'),
(52, 'Can view users', 13, 'view_users');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$T7lqWXxMvarC$pxq2HMqMlTZEo0jjwa3fAoTXGlLnWmlz0yRfimRQWWU=', '2019-06-10 13:37:12.269717', 1, 'admin', '', '', '', 1, 1, '2019-06-10 13:37:01.786045');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` varchar(2) DEFAULT NULL,
  `DepartmentName` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`) VALUES
('CV', 'Civil'),
('EC', 'Electronics & Computer'),
('EL', 'Electrical'),
('ME', 'Mechanical'),
('SH', 'Science & Humanities');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'departments'),
(8, 'home', 'programs'),
(9, 'home', 'rooms'),
(10, 'home', 'routine'),
(11, 'home', 'subjects'),
(12, 'home', 'teachers'),
(13, 'home', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-06-10 13:35:22.862130'),
(2, 'auth', '0001_initial', '2019-06-10 13:35:24.961416'),
(3, 'admin', '0001_initial', '2019-06-10 13:35:31.821184'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-06-10 13:35:33.701854'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-06-10 13:35:33.746152'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-06-10 13:35:35.185806'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-06-10 13:35:36.122361'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-06-10 13:35:36.794876'),
(9, 'auth', '0004_alter_user_username_opts', '2019-06-10 13:35:36.842526'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-06-10 13:35:37.387105'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-06-10 13:35:37.438731'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-06-10 13:35:37.492105'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-06-10 13:35:38.270505'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-06-10 13:35:39.074022'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-06-10 13:35:39.857726'),
(16, 'auth', '0011_update_proxy_permissions', '2019-06-10 13:35:39.905557'),
(17, 'home', '0001_initial', '2019-06-10 13:36:03.441359'),
(18, 'sessions', '0001_initial', '2019-06-10 13:36:31.294110');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0wbzuk8g03y00zp27ahdj0490tw2r6uf', 'YzU0MGIwNjdhOTUyMzVlNTgzZTkwMmE2NWVlNWQxYmU4ODdjOTM1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOTE3MGY4YzdjZTdjZDVmYWRmZTU0MDdiYjIyMWUxMmUwNTcxOTFhIn0=', '2019-06-24 13:37:12.321665');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `DepartmentID` varchar(2) NOT NULL,
  `ProgramID` varchar(3) NOT NULL,
  `ProgramName` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`DepartmentID`, `ProgramID`, `ProgramName`) VALUES
('CV', 'BCE', 'BE Civil'),
('EC', 'BCT', 'BE Computer'),
('EL', 'BEL', 'BE Electrical'),
('EC', 'BEX', 'BE Electronics and Communication'),
('ME', 'BME', 'BE Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `DepartmentID` varchar(2) NOT NULL,
  `RoomName` varchar(18) NOT NULL,
  `Description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `RoutineID` date NOT NULL,
  `ProgramID` varchar(3) DEFAULT NULL,
  `TeacherID` varchar(3) DEFAULT NULL,
  `SubjectID` varchar(13) DEFAULT NULL,
  `LTP` varchar(2) DEFAULT NULL,
  `Period` int(11) DEFAULT NULL,
  `Day` int(11) DEFAULT NULL,
  `RoomName` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` varchar(13) DEFAULT NULL,
  `SubjectName` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(2) DEFAULT NULL,
  `TYear` varchar(3) DEFAULT NULL,
  `TPart` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `DepartmentID`, `TYear`, `TPart`) VALUES
('ADVELEX', 'Advanced Electronics', 'EC', 'III', 'I'),
('AI', 'Artificial Intelligence', 'EC', 'III', 'II'),
('APPMATH', 'Applied Mathematics', 'SH', 'II', 'II'),
('APPMECH', 'Applied Mechanics', 'CV', 'I', 'I'),
('BSCELENG', 'Basic Electrical Engineering', 'EL', 'I', 'I'),
('BSCELXENG', 'Basic Electronics Engineering', 'EC', 'I', 'II'),
('CHEMISTRY', 'Engineering Chemistry', 'SH', 'I', 'II'),
('COMM1', 'Communication Systems I', 'EC', 'III', 'II'),
('COMM2', 'Communication Systems II', 'EC', 'IV', 'I'),
('COMPARCH', 'Computer Organization and Architecture', 'EC', 'III', 'I'),
('COMPGRAPH', 'Computer Graphics', 'EC', 'III', 'I'),
('COMPNETCT', 'Computer Network in Computer', 'EC', 'IV', 'I'),
('COMPNETEX', 'Computer Network in Electronics', 'EC', 'III', 'II'),
('CONTROLSYS', 'Control System', 'EL', 'III', 'I'),
('CPROG', 'Computer Programming', 'EC', 'I', 'I'),
('DATACOMM', 'Data Communication', 'EC', 'III', 'I'),
('DATASTRUCT', 'Data Structure and Algorithm', 'EC', 'II', 'II'),
('DBMS', 'Database Management System', 'EC', 'III', 'II'),
('DEGLOGIC', 'Digital Logic', 'EC', 'II', 'I'),
('DISCSTRUCT', 'Discrete Structure', 'EC', 'II', 'II'),
('DISTSYS', 'Distributed System', 'EC', 'IV', 'I'),
('DRAWING1', 'Engineering Drawing I', 'ME', 'I', 'I'),
('DRAWING2', 'Engineering Drawing II', 'ME', 'I', 'II'),
('DSIGANLPROC', 'Digital Signal Analysis and Processing', 'EC', 'IV', 'I'),
('DSIGNALPROC', 'Digital Signal Processing', 'EC', 'IV', 'II'),
('ECONOMIC', 'Engineering Economics', 'CV', 'III', 'II'),
('ELCKTTH', 'Electric Circuit Theory', 'EL', 'II', 'I'),
('ELECTIVE1', 'Elective I', 'EC', 'IV', 'I'),
('ELECTIVE2', 'Elective II', 'EC', 'IV', 'II'),
('ELECTIVE3', 'Elective III', 'EC', 'IV', 'II'),
('ELENGMAT', 'Electrical Engineering Material', 'EL', 'II', 'I'),
('ELEXDEV', 'Electronic Devices and Circuits', 'EC', 'II', 'I'),
('ELMACHINE', 'Electrical Machines', 'EL', 'II', 'II'),
('EMBSYS', 'Embeded System', 'EC', 'III', 'II'),
('EMT', 'Electromagnetics', 'EC', 'II', 'I'),
('ENEENVSOC', 'Energy Environment and Society', 'EC', 'IV', 'I'),
('ENGLISH', 'Communication English', 'SH', 'III', 'I'),
('ENGPROFPRAC', 'Engineering Professional Practice', 'CV', 'IV', 'II'),
('FILTERDES', 'Filter Design', 'EC', 'IV', 'I'),
('INFOSYS', 'Information System', 'EC', 'IV', 'II'),
('INSTRUMENT1', 'Instrumentation I', 'EL', 'II', 'II'),
('INSTRUMENT2', 'Instrumentation II', 'EC', 'III', 'I'),
('INTERINTRANET', 'Internet and Intranet', 'EC', 'IV', 'II'),
('MATH1', 'Engineering Mathematics I', 'SH', 'I', 'I'),
('MATH2', 'Engineering Mathematics II', 'SH', 'I', 'II'),
('MATH3', 'Engineering Mathematics III', 'SH', 'II', 'I'),
('MICROPROC', 'Microprocessor', 'EC', 'II', 'II'),
('MINORPROJ', 'Minor Project', 'EC', 'III', 'II'),
('NUMMETH', 'Numerical Methods', 'SH', 'II', 'II'),
('OOAD', 'Object Oriented Analysis and Design', 'EC', 'III', 'II'),
('OOP', 'Object Oriented Programming', 'EC', 'II', 'I'),
('ORGMANAG', 'Organization and Management', 'ME', 'IV', 'I'),
('OS', 'Operating Systems', 'EC', 'III', 'II'),
('PHYSICS', 'Engineering Physics', 'SH', 'I', 'I'),
('POWRSYSTM', 'Power System', 'EL', 'II', 'II'),
('PROBSTAT', 'Probability and Statistics', 'SH', 'III', 'I'),
('PROJECT1', 'Project I', 'EC', 'IV', 'I'),
('PROJECT2', 'Project II', 'EC', 'IV', 'II'),
('PROJMANAG', 'Project Management', 'EC', 'IV', 'I'),
('PROPANT', 'Propagation and Antenna', 'EC', 'III', 'II'),
('RFMICROENG', 'RF and Microwave Engineering', 'EC', 'IV', 'II'),
('SIGANALYS', 'Signal Analysis', 'EC', 'III', 'II'),
('SIMULATION', 'Simulation and Modeling', 'EC', 'IV', 'II'),
('SOFTENG', 'Software Engineering', 'EC', 'III', 'I'),
('TELCOMM', 'Telecommunication', 'EC', 'IV', 'I'),
('THCOMP', 'Theory of Computation', 'EC', 'II', 'I'),
('THERMO', 'Fundamental of Thermodynamics and Heat Transfer', 'ME', 'I', 'II'),
('VADVJAVA', 'Advanced Java Programming (Elective I)', 'EC', 'IV', 'I'),
('VAGILEMETH', 'Agile Methodologies (Elective II)', 'EC', 'IV', 'II'),
('VAI', 'Artificial Intelligence (Elective III)', 'EC', 'IV', 'II'),
('VAROTELCOMM', 'Aeronotical Telecommunication (Elective I)', 'EC', 'IV', 'I'),
('VBIGDATA', 'Big Data Technologies (Elective II)', 'EC', 'IV', 'II'),
('VBIOMEDINST', 'Biomedical Instrumentation (Elective I)', 'EC', 'IV', 'I'),
('VBROADCAST', 'Broadcast Engineering (Elective II)', 'EC', 'IV', 'II'),
('VDATAMING', 'Data Mining (Elective I)', 'EC', 'IV', 'I'),
('VDBMS', 'Database Management System (Elective II)', 'EC', 'IV', 'II'),
('VEMBEDSYS', 'Embeded System Design (Elective I)', 'EC', 'IV', 'I'),
('VENTAPPDES', 'Enterprise Application Des and Dev (Elective III)', 'EC', 'IV', 'II'),
('VGIS', 'Geographic Information System (Elective III)', 'EC', 'IV', 'II'),
('VIMAGPROC', 'Image Processing (Elective I)', 'EC', 'IV', 'I'),
('VIPV6', 'Networking with IPv6 (Elective II)', 'EC', 'IV', 'II'),
('VMULTSYS', 'Multimedia System (Elective III)', 'EC', 'IV', 'II'),
('VOPTCOMM', 'Optical Fiber Communication (Elective II)', 'EC', 'IV', 'II'),
('VOS', 'Operating System (Elective I)', 'EC', 'IV', 'I'),
('VPOWERELX', 'Power Electronics (Elective I)', 'EL', 'IV', 'I'),
('VRADARTCH', 'Radar Technology (Elective I)', 'EC', 'IV', 'I'),
('VREMOTSENS', 'Remote Sensing (Elective III)', 'EC', 'IV', 'II'),
('VRFMICROWV', 'RF and Microwave Engineering', 'EC', 'IV', 'I'),
('VSATCOMM', 'Satellite Communication (Elective I)', 'EC', 'IV', 'I'),
('VSPEECHPROC', 'Speech Processing (Elective III)', 'EC', 'IV', 'II'),
('VTELECOM', 'Telecommunication (Elective III)', 'EC', 'IV', 'II'),
('VWEBTECH', 'Web Technology (Elective I)', 'EC', 'IV', 'I'),
('VXML', 'XML: Foundation Techniques and Apps (Elective III)', 'EC', 'IV', 'II'),
('WLESSCOMM', 'Wireless Communication', 'EC', 'IV', 'II'),
('WORKSHOP', 'Workshop Technology', 'ME', 'I', 'II');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `TeacherID` varchar(3) DEFAULT NULL,
  `TeacherName` varchar(32) DEFAULT NULL,
  `DepartmentID` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`TeacherID`, `TeacherName`, `DepartmentID`) VALUES
('AB', 'Ajaya Bhattarai', 'EC'),
('ABS', 'Abinash Basnet', 'EC'),
('AKS', 'Anand Kumar Sah', 'EC'),
('ALR', 'Amrit Lal Ranjitkar', 'EC'),
('AM', 'AshoK Malla', 'EC'),
('AMS', 'Prof. Amala Shrestha', 'SH'),
('AS', 'Dr. Aman Shakya', 'EC'),
('AT', 'Dr. Arun K. Timalsina', 'EC'),
('AV', 'Anil Verma', 'EC'),
('BDS', 'Bidhur Shrestha', 'SH'),
('BJ', 'Dr. Basanta Joshi', 'EC'),
('BKS', 'Prof. Bal Krishna Sapkota', 'SH'),
('BRD', 'Babu Ram Dawadi', 'EC'),
('BS', 'Bibha Sthapit', 'EC'),
('BU', 'Bhawani Upadhaya', 'SH'),
('CSS', 'Chaitya Shova Shakya', 'EC'),
('DBK', 'Dinesh Baniya Kshatri', 'EC'),
('DC', 'Dipen Chapagain', 'EC'),
('DKS', 'Prof. Dr. Dinesh Kumar Sharma', 'EC'),
('DLS', 'Deepak Lal Shrestha', 'EC'),
('DPK', 'Durga Prasad Khatiwada', 'EC'),
('DRP', 'Dr. Diwakar Raj Panta', 'EC'),
('DRR', 'Drona Raj Regmi', 'EC'),
('DSB', 'Daya Sagar Baral', 'EC'),
('DSS', 'Prof. Dr. Subarna Shakya', 'EC'),
('GBJ', 'Gita Bhakta Joshi', 'SH'),
('HDC', 'Hari Dev Chaudhary', 'SH'),
('JKM', 'Jitendra Kumar Manandhar', 'EC'),
('JRS', 'Jayandra Raj Shrestha', 'SH'),
('KK', 'Kailash Khadka', 'EC'),
('KN', 'Kamal Nepal', 'EC'),
('KRJ', 'Keshav Raj Joshi', 'EC'),
('KS', 'Kamal Sapkota', 'SH'),
('MB', 'Mohammad Badrudoja', 'EL'),
('MCL', 'Mahesh Chandra Luintel', 'ME'),
('MKJ', 'Mukesh Kumar Jha', 'SH'),
('MM', 'Manish Mallik', 'EC'),
('MP', 'Meenu Pradhan', 'SH'),
('MRD', 'Mahendra Raj Dhital', 'CV'),
('NBA', 'Dr. Nanda Bikram Adhikari', 'EC'),
('NDK', 'Nripa Dhoj Khadka', 'EC'),
('NS', 'Nishant Shrestha', 'SH'),
('PA', 'Purnima Adhikari', 'SH'),
('PB', 'Puspa Bhattarai', 'SH'),
('PP', 'Pratibha Phaiju', 'EC'),
('RG', 'Ravi Gajurel', 'SH'),
('RKM', 'Dr. Ram Krishna maharjan', 'EC'),
('RS', 'Rupesh Sah', 'EC'),
('SB', 'Sandesh Basnet', 'EC'),
('SD', 'Sharmila Dangol', 'SH'),
('SG', 'Dr, Santosh Ghimire', 'SH'),
('SJ', 'Suresh Jha', 'EC'),
('SKG', 'Sharad Kumar Ghimire', 'EC'),
('SKM', 'Prof. Dr. Sailendra Kumar Mishra', 'SH'),
('SM', 'Sabin Maharjan', 'SH'),
('SPP', 'Dr. Sanjeeb Prasad Pandey', 'EC'),
('SR', 'Saloni Rajbhandari', 'EL'),
('SRJ', 'Prof. Dr. Shashidhar Ram Joshi', 'EC'),
('SS', 'Sanuj Shakya', 'EC'),
('SSH', 'Dr. Surendra Shrestha', 'EC'),
('SSi', 'Suraj Singh', 'EC'),
('TU', 'Tika Upreti', 'EC'),
('TYT', 'Prof. Timila Yami Thapa', 'EC'),
('UM', 'Uttam Mali', 'EC'),
('VDS', 'Vidhyadhar Sharma', 'SH');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(5) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `UserType` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`ProgramID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
