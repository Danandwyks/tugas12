-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 05:02 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `evaluasidosen`
--

CREATE TABLE `evaluasidosen` (
  `id` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `mk` text CHARACTER SET latin1 NOT NULL,
  `tahun` text CHARACTER SET latin1 NOT NULL,
  `nim` text CHARACTER SET latin1 NOT NULL,
  `a1` text NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `a5` int(11) NOT NULL,
  `a6` int(11) NOT NULL,
  `a7` int(11) NOT NULL,
  `a8` int(11) NOT NULL,
  `a9` int(11) NOT NULL,
  `a10` int(11) NOT NULL,
  `a11` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `b5` int(11) NOT NULL,
  `b6` int(11) NOT NULL,
  `b7` int(11) NOT NULL,
  `b8` int(11) NOT NULL,
  `b9` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `d1` int(11) NOT NULL,
  `d2` int(11) NOT NULL,
  `d3` int(11) NOT NULL,
  `d4` int(11) NOT NULL,
  `d5` int(11) NOT NULL,
  `d6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluasidosen`
--

INSERT INTO `evaluasidosen` (`id`, `nama`, `mk`, `tahun`, `nim`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `b7`, `b8`, `b9`, `c1`, `c2`, `c3`, `c4`, `d1`, `d2`, `d3`, `d4`, `d5`, `d6`) VALUES
(1, 'Danan Dwiyaksa', 'Mesin Listrik', '2018', '123456789', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'papap', 'akupuntur', '20151', '2121', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logkondite`
--

CREATE TABLE `logkondite` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `jenispoin` text CHARACTER SET latin1 NOT NULL,
  `poin` text NOT NULL,
  `keterangan` text CHARACTER SET latin1 NOT NULL,
  `tahun` int(11) NOT NULL,
  `prodi` text CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logkondite`
--

INSERT INTO `logkondite` (`id`, `nim`, `nama`, `jenispoin`, `poin`, `keterangan`, `tahun`, `prodi`, `tanggal`) VALUES
(1, 123456789, 'Danan Dwiyaksa', 'Minus', '-5', 'Izin', 2018, 'Elektronika', '2020-03-03'),
(12, 1234567, 'dandan', 'minus', '-5', 'ga masang poto profil', 2017, 'elektro', '2020-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `jeniskelamin` text CHARACTER SET latin1 NOT NULL,
  `programstudi` text CHARACTER SET latin1 NOT NULL,
  `tempatlahir` text CHARACTER SET latin1 NOT NULL,
  `tanggallahir` int(11) NOT NULL,
  `tahunmasuk` int(11) NOT NULL,
  `status` text NOT NULL,
  `kelas` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `pembimbing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jeniskelamin`, `programstudi`, `tempatlahir`, `tanggallahir`, `tahunmasuk`, `status`, `kelas`, `password`, `pembimbing`) VALUES
(1234567, 'dandan', 'kljkwajk', 'kawd', 'qdq', 12, 12, 'dwawd', 12, 1234567, 21),
(123456789, 'Danan Dwiyaksa', 'Laki-Laki', 'Elektronika', 'Tangerang', 26051999, 2018, 'Aktif', 2, 123456789, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilaiakademik`
--

CREATE TABLE `nilaiakademik` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `uts` text NOT NULL,
  `uas` text NOT NULL,
  `tugas` text NOT NULL,
  `kuis` text NOT NULL,
  `akhir` text NOT NULL,
  `huruf` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `angka` double NOT NULL,
  `kodemk` text NOT NULL,
  `namamk` text NOT NULL,
  `sks` int(11) NOT NULL,
  `tahunakademik` int(11) NOT NULL,
  `prodi` text NOT NULL,
  `dosen` text NOT NULL,
  `kelas` text NOT NULL,
  `status` text NOT NULL,
  `statusmk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilaiakademik`
--

INSERT INTO `nilaiakademik` (`id`, `nim`, `nama`, `uts`, `uas`, `tugas`, `kuis`, `akhir`, `huruf`, `angka`, `kodemk`, `namamk`, `sks`, `tahunakademik`, `prodi`, `dosen`, `kelas`, `status`, `statusmk`) VALUES
(1, 123456789, 'Danan Dwiyaksa', '99', '99', '99', '99', '99', '2020-03-24 17:00:00', 12, '001mk', 'Mesin Listrik', 2, 2018, 'Elektronika', 'Adi Yahir', '2 Elektronika B', 'aktif', 'aktif'),
(12, 1234567, 'adsj', '165', '12', '12', '12', '12', '2020-03-19 03:18:02', 0, 'akupuntur', 'akupunturjaya', 1, 20151, 'ipa', 'papap', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_pertanyaan_penilaian`
--

CREATE TABLE `rb_pertanyaan_penilaian` (
  `id_pertanyaan_penilaian` int(5) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_pertanyaan_penilaian`
--

INSERT INTO `rb_pertanyaan_penilaian` (`id_pertanyaan_penilaian`, `pertanyaan`, `status`) VALUES
(1, 'Dosen mengajar sesuai dengan jadwal kuliah yang telah ditentukan', ''),
(2, 'Penyajian materi kuliah yang sistematis dan mudah dipahami', ''),
(3, 'Tujuan mata kuliah yang disampaikan sesuai SAP', ''),
(4, 'Dosen memberikan contoh yang jelas dan relevan dengan materi perkuliahan', ''),
(5, 'Dosen memberikan kesempatan dan memotivasi mahasiswa untuk bertanya', ''),
(6, 'Dosen memeberikan jawaban denga jelas pada pertanyaan mahasiswa', ''),
(7, 'Dosen memberitahukan buku-buku referensi yang digunakan', ''),
(8, 'Dosen memberikan motivasi kepada mahasiswa untuk membaca buku referensi', ''),
(9, 'Dosen berusaha memacu prestasi mahasiswa', ''),
(10, 'Alat bantu yang digunakan relevan dengan kebutuhan', ''),
(11, 'Tujuan mata kuliah di berikan dengan jelas ', ''),
(12, 'Dosen berbicara dengan jelas', ''),
(13, 'Dosen selalu hadir tepat waktu', ''),
(14, 'Dosen selalu megikuti perkembangan baru dalam bidangnya', ''),
(15, 'Dosen menjelaskan materi perkuliahan secara rinci/detail', ''),
(16, 'Penjelasan materi perkuliahan mudah dipahami', ''),
(17, 'Dosen terbuka terhadap masukan yang bersifat membangun', ''),
(18, 'Dosen berpakaian rapih dan sopan', ''),
(19, 'Dosen bersedia membimbing mahasiswa di dalam maupun di luar kelas', ''),
(20, 'Dosen tidak sering menggantikan dan merubah jadwal kuliahnya ', ''),
(21, 'Dosen memberikan tugas ', ''),
(22, 'Hasil tugas dibahas kembali/diberi umpan balik', ''),
(23, 'Tugas bermanfaat guna memperdalam materi kuliah', ''),
(24, 'Soal ujian sesuai dengan materi kuliah', ''),
(25, 'Buku-buku di perpustakaan menunjang proses belajar mengajar', ''),
(26, 'Saran yang tersedia di dalam ruang kelas cukup memadai', ''),
(27, 'Laboratorium atau saranalain menunjang mata kuliah terkait', ''),
(28, 'Suasana belajar cukup menunjang dan kondusif', ''),
(29, 'Fasilitas akses ke internet sangat membantu proses belajar-mengajar', ''),
(30, 'Hasil ujian segera diumumkan', ''),
(31, '', ''),
(32, '', ''),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(45, '', ''),
(46, '', ''),
(47, '', ''),
(48, '', ''),
(49, '', ''),
(50, '', ''),
(51, '', ''),
(52, '', ''),
(53, '', ''),
(54, '', ''),
(55, '', ''),
(56, '', ''),
(57, '', ''),
(58, '', ''),
(59, '', ''),
(60, '', ''),
(61, '', ''),
(62, '', ''),
(63, '', ''),
(64, '', ''),
(65, '', ''),
(66, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, '', ''),
(77, '', ''),
(78, '', ''),
(79, '', ''),
(80, '', ''),
(81, '', ''),
(82, '', ''),
(83, '', ''),
(84, '', ''),
(85, '', ''),
(86, '', ''),
(87, '', ''),
(88, '', ''),
(89, '', ''),
(90, '', ''),
(91, '', ''),
(92, '', ''),
(93, '', ''),
(94, '', ''),
(95, '', ''),
(96, '', ''),
(97, '', ''),
(98, '', ''),
(99, '', ''),
(100, '', ''),
(101, '', ''),
(102, '', ''),
(103, '', ''),
(104, '', ''),
(105, '', ''),
(106, '', ''),
(107, '', ''),
(108, '', ''),
(109, '', ''),
(110, '', ''),
(111, '', ''),
(112, '', ''),
(113, '', ''),
(114, '', ''),
(115, '', ''),
(116, '', ''),
(117, '', ''),
(118, '', ''),
(119, '', ''),
(120, '', ''),
(121, '', ''),
(122, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rb_tahun_akademik`
--

CREATE TABLE `rb_tahun_akademik` (
  `id_tahun_akademik` int(5) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rb_tahun_akademik`
--

INSERT INTO `rb_tahun_akademik` (`id_tahun_akademik`, `nama_tahun`, `keterangan`, `aktif`) VALUES
(20151, 'Semester Ganjil 2015/2016', '2015/2016', 'Ya'),
(20152, 'Semester Genap 2015/2016', '2015/2016', 'Ya'),
(20161, 'Semester Ganjil 2016/2017', '2016/2017', 'Ya'),
(20162, 'Semester Genap 2016/2017', '2016/2017', 'Ya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluasidosen`
--
ALTER TABLE `evaluasidosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logkondite`
--
ALTER TABLE `logkondite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaiakademik`
--
ALTER TABLE `nilaiakademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian`);

--
-- Indexes for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluasidosen`
--
ALTER TABLE `evaluasidosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `logkondite`
--
ALTER TABLE `logkondite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nilaiakademik`
--
ALTER TABLE `nilaiakademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  MODIFY `id_pertanyaan_penilaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  MODIFY `id_tahun_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20163;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
