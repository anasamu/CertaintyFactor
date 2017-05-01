-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2017 at 07:14 PM
-- Server version: 10.1.22-MariaDB-
-- PHP Version: 7.0.16-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stroke`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kd_gejala` char(4) NOT NULL,
  `nm_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kd_gejala`, `nm_gejala`) VALUES
('G001', 'Pusing atau sakit kepala tiba-tiba tanpa tahu sebabnya'),
('G002', 'Tiba-tiba kehilangan keseimbangan, koordinasi dan kontrol tubuh'),
('G003', 'Kehilangan penglihatan pada salah satu atau kedua mata'),
('G004', 'Kehilangan kesadaran dan bicara tidak jelas.'),
('G005', 'Kelemahan dan kelumpuhan pada wajah, lengan, tangan, terutama pada salah satu sisi tubuh.'),
('G006', 'Cara bicara penderita yang tidak jelas atau kacau, bahkan ada juga penderita yang tidak bisa bicara sama sekali walaupun mereka terlihat terjaga.'),
('G007', 'Mata dan mulut pada salah satu sisi wajah penderita terlihat turun'),
('G008', 'Lengan si penderita mengalami kelumpuhan saat terserang stroke, maka dari itu mereka tidak mampu mengangkat salah satu atau bahkan kedua lengannya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil_diagnosis`
--

CREATE TABLE `tb_hasil_diagnosis` (
  `id_diagnosa` varchar(5) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `no_ip` varchar(25) NOT NULL,
  `tgl` varchar(35) NOT NULL,
  `jam` time NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil_diagnosis`
--

INSERT INTO `tb_hasil_diagnosis` (`id_diagnosa`, `nama`, `alamat`, `no_ip`, `tgl`, `jam`, `nilai`) VALUES
('D002', 'Andre', 'Motolohu', '::1', 'Senin, 10 April 2017', '05:31:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `kd_penyakit` char(4) NOT NULL,
  `nm_penyakit` text NOT NULL,
  `definisi` text NOT NULL,
  `penyebab` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`kd_penyakit`, `nm_penyakit`, `definisi`, `penyebab`, `solusi`) VALUES
('P001', 'Stroke Hemoragik', 'Stroke perdarahan atau stroke hemoragik adalah perdarahan yang\r\ntidak terkontrol di otak. Perdarahan tersebut dapat mengenai dan membunuh\r\nsel otak, sekitar 20% stroke adalah stroke hemoragik (Gofir, 2009)', 'Jenis\r\nperdarahan (stroke hemoragik), disebabkan pecahnya pembuluh darah otak,\r\nbaik intrakranial maupun subarakhnoid. Pada perdarahan intrakranial,\r\npecahnya pembuluh darah otak dapat karena berry aneurysm akibat\r\nhipertensi tak terkontrol yang mengubah morfologi arteriol otak atau\r\npecahnya pembuluh darah otak karena kelainan kongenital pada pembuluh\r\ndarah otak tersebut.', ''),
('P002', 'Stroke Iskemik', 'Stroke iskemik mempunyai berbagai etiologi, tetapi pada prinsipnya\r\ndisebabkan oleh aterotrombosis atau emboli, yang masing-masing akan\r\nmengganggu atau memutuskan aliran darah otak atau cerebral blood flow\r\n(CBF)', 'Iskemik terjadi\r\njika CBF < 30 ml/100mg/menit. Jika CBF turun sampai < 10 ml/mg/menit\r\nakan terjadi kegagalan homeostasis, yang akan menyebabkan influks\r\nkalsium secara cepat, aktivitas protease, yakni suatu cascade atau proses\r\nberantai eksitotoksik dan pada akhirnya kematian neuron', 'Reperfusi yang\r\nterjadi kemudian dapat menyebabkan pelepasan radikal bebas yang akan\r\nmenambah kematian sel. Reperfusi juga menyebabkan transformasi\r\nperdarahan dari jaringan infark yang mati. Jika gangguan CBF masih antara\r\n15â€“30 ml/100mg/menit, keadaan iskemik dapat dipulihkan jika terapi\r\ndilakukan sejak awal (Wibowo dkk., 2001).'),
('P003', 'Stroke Trombosis', 'Stroke trombotik pembuluh darah besar dengan aliran lambat biasanya\nterjadi saat tidur, saat pasien relatif mengalami dehidrasi dan dinamika\nsirkulasi menurun', 'Stroke ini sering berkaitan dengan lesi aterosklerotik\nyang menyebabkan penyempitan atau stenosis di arteria karotis interna atau,\nyang lebih jarang di pangkal arteria serebri media atau di taut ateria\nvertebralis dan basilaris.', 'Agar dapat melewati lesi stenotik intra-arteri, aliran darah yang mungkin\nbergantung pada tekanan intravaskular yang tinggi. Penurunan mendadak\ntekanan darah tersebut dapat menyebabkan penurunan generalisata CBF,\niskemia otak, dan stroke (Sylvia A.P. & Lorraine M.W., 2006).'),
('P004', 'Stroke embolik', 'Stroke embolik terjadi akibat embolus biasanya menimbulkan defisit\nneurologik mendadak dengan efek maksimum sejak awitan penyakit', 'Embolus berasal dari bahan trombotik yang terbentuk di dinding rongga\njantung atau katup mitralis. Karena biasanya adalah bekuan kecil, fragmenâ€“\nfragmen dari jantung mencapai otak melalui arteria karotis atau vertebralis', 'Dengan demikian,\npemulihan tekanan perfusi dapat menyebabkan perdarahan arteriol atau\nkapiler di pembuluh tersebut. Stroke kriptogenik adalah stroke iskemik\nakibat sumbatan mendadak pembuluh intrakranium besar tetapi tanpa\npenyebab yang jelas (Sylvia A.P. & Lorraine M.W., 2006).');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `kd_penyakit` char(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `mb` float DEFAULT NULL,
  `md` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`kd_penyakit`, `kd_gejala`, `mb`, `md`) VALUES
('P001', 'G001', 0.6, 0.1),
('P001', 'G002', 0.8, 0.05),
('P001', 'G003', 0.75, 0.1),
('P002', 'G004', 0.8, 0.05),
('P002', 'G005', 0.8, 0.05),
('P002', 'G006', 0.75, 0.1),
('P002', 'G007', 0.75, 0.1),
('P002', 'G008', 0.75, 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tmp_gejala`
--

CREATE TABLE `tb_tmp_gejala` (
  `id` int(11) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `no_ip` varchar(25) NOT NULL,
  `jwb` varchar(10) DEFAULT NULL,
  `id_diagnosa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tmp_hasil`
--

CREATE TABLE `tb_tmp_hasil` (
  `id` int(11) NOT NULL,
  `no_ip` varchar(25) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `nilai` float NOT NULL,
  `id_diagnosa` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(5) NOT NULL,
  `user_tht` varchar(100) NOT NULL,
  `passw_tht` varchar(100) NOT NULL,
  `level` varchar(35) NOT NULL,
  `nm_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user_tht`, `passw_tht`, `level`, `nm_lengkap`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `tb_hasil_diagnosis`
--
ALTER TABLE `tb_hasil_diagnosis`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `tb_tmp_gejala`
--
ALTER TABLE `tb_tmp_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tmp_hasil`
--
ALTER TABLE `tb_tmp_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_tmp_gejala`
--
ALTER TABLE `tb_tmp_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_tmp_hasil`
--
ALTER TABLE `tb_tmp_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_tmp_gejala`
--
ALTER TABLE `tb_tmp_gejala`
  ADD CONSTRAINT `tb_tmp_gejala_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_tmp_hasil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
