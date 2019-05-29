-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 12:13 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`) VALUES
(1, 'Slider Home', '2019-05-21 00:16:22', 0, '', 3),
(2, 'Alamat', '2019-05-21 06:02:48', 1, 'Administrator', 1),
(3, 'Nomor HP', '2019-05-21 06:03:03', 1, 'Administrator', 1),
(4, 'Telp/Fax', '2019-05-21 06:03:42', 1, 'Administrator', 1),
(5, 'Email', '2019-05-21 06:04:11', 1, 'Administrator', 1),
(6, 'Galeri', '2019-05-21 07:48:07', 1, 'Administrator', 3),
(7, 'Jadwal', '2019-05-26 06:45:08', 1, 'Administrator', 1),
(8, 'Album K3 Angkat & Angkut', '2019-05-27 09:19:26', 1, 'Administrator', 5),
(9, 'Album K3 Boiler', '2019-05-27 09:20:11', 1, 'Administrator', 1),
(10, 'Album K3 Kebakaran', '2019-05-27 09:20:29', 1, 'Administrator', 5),
(11, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katig', '2019-05-27 22:39:00', 1, 'Administrator', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_deskripsi` varchar(400) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_deskripsi`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(1, 'Training K3 Kebakaran', '1', '2019-05-21 01:24:13', 'DSC_0023.JPG', 1, 0, ''),
(2, 'Training K3 Angkat dan Angkut', '2', '2019-05-21 01:25:06', 'PICT_20151009_141426.JPG', 1, 0, ''),
(3, 'Training K3 Boiler', '3', '2019-05-21 01:26:16', 'IMG_20160302_090230.jpg', 1, 0, ''),
(4, 'trainingk3dwi@gmail.com', '', '2019-05-21 06:09:09', 'apple-touch-icon.png', 5, 1, 'Administrator'),
(5, '0711-56-40504', '', '2019-05-21 06:09:52', 'apple-touch-icon1.png', 4, 1, 'Administrator'),
(6, '0812-7393-8908 (Pak Herik) | 0822-6943-0003 (Risky)', '', '2019-05-21 06:10:28', 'apple-touch-icon2.png', 3, 1, 'Administrator'),
(7, 'Jl. Manunggal Beringin I No. 2054 Kelurahan 30 Ilir Barat II', '', '2019-05-21 06:11:05', 'apple-touch-icon3.png', 2, 1, 'Administrator'),
(8, '1', '', '2019-05-21 07:48:54', 'PICT_20151009_135428.JPG', 6, 1, 'Administrator'),
(9, '1', '', '2019-05-21 07:48:55', 'PICT_20151009_135456.JPG', 6, 1, 'Administrator'),
(10, '1', '', '2019-05-21 07:48:55', 'PICT_20151009_144348.JPG', 6, 1, 'Administrator'),
(11, 'pengembangan', '', '2019-05-26 07:01:22', '14752220144502.jpg', 7, 1, 'Administrator'),
(12, 'K3 Kebakaran', '', '2019-05-27 09:21:42', '1475221963667.jpg', 10, 1, 'Administrator'),
(13, 'K3 Kebakaran', '', '2019-05-27 09:21:42', '14752220144503.jpg', 10, 1, 'Administrator'),
(14, 'K3 Kebakaran', '', '2019-05-27 09:21:42', '14752220255271.jpg', 10, 1, 'Administrator'),
(15, 'K3 Kebakaran', '', '2019-05-27 09:21:42', '1475222034790.jpg', 10, 1, 'Administrator'),
(16, 'K3 Kebakaran', '', '2019-05-27 09:21:42', '1475222048588.jpg', 10, 1, 'Administrator'),
(17, 'Angkat & Angkut', '', '2019-05-27 09:22:55', 'PICT_20151009_1414261.JPG', 8, 1, 'Administrator'),
(18, 'Angkat & Angkut', '', '2019-05-27 09:22:55', 'PICT_20151009_143214.JPG', 8, 1, 'Administrator'),
(19, 'Angkat & Angkut', '', '2019-05-27 09:22:55', 'PICT_20151009_143524.JPG', 8, 1, 'Administrator'),
(20, 'Angkat & Angkut', '', '2019-05-27 09:22:55', 'PICT_20151009_1439511.JPG', 8, 1, 'Administrator'),
(22, 'ss', '', '2019-05-27 10:44:08', 'IMG_20160302_090230.jpg', 9, 1, 'Administrator'),
(23, 'Boiler', '', '2019-05-27 10:47:47', 'background1.jpg', 9, 1, 'Administrator'),
(24, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:25', '1.jpg', 11, 1, 'Administrator'),
(25, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '2.jpg', 11, 1, 'Administrator'),
(26, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '3.jpg', 11, 1, 'Administrator'),
(27, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '4.jpg', 11, 1, 'Administrator'),
(28, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '5.jpg', 11, 1, 'Administrator'),
(29, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '6.jpg', 11, 1, 'Administrator'),
(30, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '7.jpg', 11, 1, 'Administrator'),
(31, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '8.jpg', 11, 1, 'Administrator'),
(32, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '9.jpg', 11, 1, 'Administrator'),
(33, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '10.jpg', 11, 1, 'Administrator'),
(34, 'Galeri PJK3 Riksa Uji  PT Inspeksindo Agrisa Katiga', '', '2019-05-27 22:41:26', '11.jpg', 11, 1, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(1, 'dad', 'muhammadpuji63@gmail.com', NULL, 'adad', '2019-05-26 09:15:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Siapa Kami?', '2019-05-21 05:28:01'),
(2, 'Training', '2019-05-21 07:02:43'),
(3, 'Visi', '2019-05-27 05:30:21'),
(4, 'Misi', '2019-05-27 05:30:28'),
(5, 'Layanan Kami', '2019-05-27 05:55:09'),
(6, 'Riska Uji', '2019-05-27 22:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_tentang`
--

CREATE TABLE `tbl_kategori_tentang` (
  `kategori_tentang_id` int(11) NOT NULL,
  `kategori_tentang_nama` varchar(200) DEFAULT NULL,
  `kategori_tentang_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `pendaftaran_id` int(11) NOT NULL,
  `pendaftaran_nama` varchar(60) DEFAULT NULL,
  `pendaftaran_telpon` varchar(60) DEFAULT NULL,
  `pendaftaran_email` varchar(70) DEFAULT NULL,
  `pendaftaran_instansi` varchar(100) NOT NULL,
  `training_id` int(11) NOT NULL,
  `pendaftaran_comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Administrator', 'Just do it', 'L', 'admin', '123456', '', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-02 23:07:55', '74eec6ad37550cc12fe8fa83d46878af.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentang`
--

CREATE TABLE `tbl_tentang` (
  `tentang_id` int(11) NOT NULL,
  `tentang_nama` varchar(100) DEFAULT NULL,
  `tentang_kategori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `training_id` int(11) NOT NULL,
  `training_nama` varchar(200) NOT NULL,
  `training_tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`training_id`, `training_nama`, `training_tanggal`) VALUES
(1, 'K3 Angkat Dan Angkut', '2019-05-26 08:33:06'),
(2, 'K3 Boiler', '2019-05-26 08:33:30'),
(3, 'K3 Kebakaran', '2019-05-26 08:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_album_id` int(11) DEFAULT NULL,
  `tulisan_album_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_album_id`, `tulisan_album_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_slug`, `tulisan_rating`) VALUES
(1, 'Siapa Kami ?', '<p>Kami adalah perusahaan jasa keselamatan dan kesehatan kerja (PJK3) bidang pengembangan SDM dengan melakukan pelatihan dan sertifikasi dari Kemnakertrans RI.&nbsp;</p><p>PT. DWI ANEKA TEKNIK didirikan dengan akte pendirian perusahaan nomor 4015042916104729 dengan beralamat di Jl. Manunggal Beringin I No. 2054 Kelurahan 30 Ilir Barat II Palembang, Sumatera Selatan. Sebagaimana tercantum dalam SITU,SIUP,TDP dan Penunjukan PJK3.</p><p>Sebagai badan usaha yang legal, PT. DWI ANEKA TEKNIK senantiasa melaksanakan kewajiban perusahaan dibidang perpajakan. Adapun Nomor Pokok Wajib Pajak PT. DWI ANEKA TEKNIK adalah 72.879.971.9-307.000 dan Nomor Pengukuhan Perusahaan Kena Pajak (SPPKP) adalah : S-227PKP/WPJ.03/KP.0103/2015.</p><div><br></div>', '2019-05-21 05:36:18', 1, 'Siapa Kami?', 0, '', 0, 'LogoRFID.png', 1, 'Administrator', 'siapa-kami-', 0),
(2, 'PEMBINAAN DAN SERTIFIKASI PETUGAS  PEMADAM KEBAKARAN KELAS C & D', '<h4>TUJUAN DAN KEUNTUNGAN</h4><p>Setelah mengikuti Pelatihan ini, Peserta mampu mengetahui kondisi, tindakan berbahaya untuk penanggulangan kebakaran dan mampu mengetahui sarana proteksi kebakaran di area tempat kerjanya dan mampu memadamkan kebakaran tingkat awal.</p><p>Tugas wewenang Petugas Peran Kebakaran sesuai KEPMENAKER No.Kep.186/Men/1999  Pasal 7 Ayat (1) adalah:</p><p>1. Mengedintifikasikan dan Melaporkan Kondisi yang dapat membahayakan</p><p>2. Memadam kebakaran pada tahap awal</p><p>3. Mengarahkan evakuasi orang dan barang</p><p>4. Mengadakan koordinasi dengan instansi terkait</p><p>5. Mengamankan lokasi kebakaran</p><p><br></p><h6>MATERI SILABUS</h6><p>1.  Dasar-dasar K3 Penanggulangan Kebakaran </p><p>2.  Dasar-dasar Management Penanggulangan Kebakaran</p><p>3.  Teori Api dan Anatomi Kebakaran</p><p>4.  Pengetahuan teknik pencegahan kebakaran </p><p>5.  Sistem Instalasi deteksi, alarm, dan pemadam kebakaran </p><p>6.  Sarana evakuasi </p><p>7.  Pemeliharaan, Pemeriksaan, Pengujian peralatan proteksi kebakaran </p><p>8.  Fire Emergency Respon Plan </p><p>9.  Praktek Pemadaman </p><p>10.Evaluasi</p><p><br></p><h4>FASILITAS TRAINING </h4><p>1.<span style="white-space:pre">	</span>Hard / Soft Copy Materi Training</p><p>2.<span style="white-space:pre">	</span>Sertifikat  dari KEMNAKER R.I</p><p>3.<span style="white-space:pre">	</span>Kartu Lisensi dari KEMNAKER R.I</p><p>4.<span style="white-space:pre">	</span>Sertifikat dan Surat Keterangan </p><p>5.<span style="white-space:pre">	</span>2x coffee break</p><p>6.<span style="white-space:pre">	</span>Makan Siang</p><p>7.<span style="white-space:pre">	</span>Souvenir</p><h6><br><h4>INVESTASI</h4></h6><p>Rp. 5.000.000/Orang</p><p>Setelah mengikuti Pelatihan ini, Peserta mampu mengetahui kondisi, tindakan berbahaya untuk penanggulangan kebakaran dan mampu mengetahui sarana proteksi kebakaran di area tempat kerjanya dan mampu memadamkan kebakaran tingkat awal.</p><p>Tugas wewenang Petugas Peran Kebakaran sesuai KEPMENAKER No.Kep.186/Men/1999  Pasal 7 Ayat (1) adalah:</p><p>1. Mengedintifikasikan dan Melaporkan Kondisi yang dapat membahayakan</p><p>2. Memadam kebakaran pada tahap awal</p><p>3. Mengarahkan evakuasi orang dan barang</p><p>4. Mengadakan koordinasi dengan instansi terkait</p><p>5. Mengamankan lokasi kebakaran</p><p><br></p><h4>MATERI SILABUS</h4><p>1.  Dasar-dasar K3 Penanggulangan Kebakaran </p><p>2.  Dasar-dasar Management Penanggulangan Kebakaran</p><p>3.  Teori Api dan Anatomi Kebakaran</p><p>4.  Pengetahuan teknik pencegahan kebakaran </p><p>5.  Sistem Instalasi deteksi, alarm, dan pemadam kebakaran </p><p>6.  Sarana evakuasi </p><p>7.  Pemeliharaan, Pemeriksaan, Pengujian peralatan proteksi kebakaran </p><p>8.  Fire Emergency Respon Plan </p><p>9.  Praktek Pemadaman </p><p>10.Evaluasi</p><p><br></p><h4>FASILITAS TRAINING </h4><p>1.<span style="white-space:pre">	</span>Hard / Soft Copy Materi Training</p><p>2.<span style="white-space:pre">	</span>Sertifikat  dari KEMNAKER R.I</p><p>3.<span style="white-space:pre">	</span>Kartu Lisensi dari KEMNAKER R.I</p><p>4.<span style="white-space:pre">	</span>Sertifikat dan Surat Keterangan </p><p>5.<span style="white-space:pre">	</span>2x coffee break</p><p>6.<span style="white-space:pre">	</span>Makan Siang</p><p>7.<span style="white-space:pre">	</span>Souvenir</p><p><br></p><h4>INVESTASI</h4><p>Rp. 5.000.000/Orang</p><p>Level D/Tingkat Dasar I</p><p>Durasi 3 Hari Kerja dari Pukul 08:00 s/d 17:00</p><p><br></p><p>Rp. 6.000.000/Orang</p><p>Level C/Tingkat Dasar II</p><p>Durasi 5 Hari Kerja dari Pukul 08:00 s/d 17:00</p><p><br></p><h4>PERSYARATAN PESERTA </h4><p>•<span style="white-space:pre">	</span>Sehat jasmani dan rohani</p><p>•<span style="white-space:pre">	</span>Pas Photo 3×4 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Pas Photo 2×3 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap pendidikan akhir minimal SLTA</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap KTP (Kartu Tanda Pengenal)</p><p>•<span style="white-space:pre">	</span>Surat permohonan penunjukan dari perusahaan untuk mengikuti pelatihan </p><div><br></div>', '2019-05-21 07:13:19', 2, 'Training', 10, 'Album K3 Kebakaran', 0, '1475222014450.jpg', 1, 'Administrator', 'pembinaan-dan-sertifikasi-petugas--pemadam-kebakaran-kelas-c--d', 0),
(3, 'PEMBINAAN DAN SERTIFIKASI OPERATOR  PESAWAT ANGKAT DAN ANGKUT', '<h4>TUJUAN DAN KEUNTUNGAN</h4><p>Pelatihan ini bertujuan untuk meningkatkan pengetahuan dan ketrampilan dalam mengoperasikan Pesawat angkat dan angkut sehingga operator akan bertanggung jawab, disiplin, serta memahami dan mengerti persyaratan Keselamatan dan Kesehatan Kerja (K3) dalam mengoperasikan Pesawat angkat dan angkut yang lebih efisien produktif dan aman seseuai Peraturan Menteri Per-05/MEN/1985 dan tersedianya operator yang berkompetensi K3 Pesawat angkat dan angkut diperusahaan berdasarkan Peraturan Menteri Per-09/MEN/2010.</p><h4>MATERI SILABUS</h4><p>1. Kebijakan K3 dan Dasar-dasar K3</p><p>2. UU No.1 Tahun 1970, Permenaker No.5/MEN/1985 dan Permenaker No. 09/Men2010</p><p>3. Pengetahuan dasar tentang Pesawat Angkat dan Angkut</p><p>4. Komponen-komponen utama dan struktur pesawat angkat dan angkut</p><p>5. Pemeriksaan, Perawatan dan Pengujian Pesawat Angkat dan Angkut</p><p>6. Pengetahuan tentang rigging </p><p>7. Pengetahuan tentangt tali kawat baja</p><p>8. Kelistrikan pada pesawat angkat dan angkut</p><p>9. Sebab-sebab kecelakaan pada pesawat angkat dan angkut</p><p>10. Menghitung berat beban</p><p>11. Cara pengoperasian yang aman</p><p>12. Evaluasi dan Peninjauan lapangan</p><p><br></p><h4>FASILITAS TRAINING </h4><p>1.<span style="white-space:pre">	</span>Hard / Soft Copy Materi Training</p><p>2.<span style="white-space:pre">	</span>Sertifikat dari KEMNAKER R.I</p><p>3.<span style="white-space:pre">	</span>Kartu Lisensi dari KEMNAKER R.I</p><p>4.<span style="white-space:pre">	</span>Buku Kerja Operator dari KEMNAKER R.I</p><p>5.<span style="white-space:pre">	</span>Sertifikat dan Surat Keterangan </p><p>6.<span style="white-space:pre">	</span>2x coffee break dan Makan Siang</p><p>7.<span style="white-space:pre">	</span>Souvenir</p><p><br></p><h4>INVESTASI</h4><p>Rp. 4.500.000/Orang</p><p>Durasi 3 Hari Kerja dari Pukul 08:00 s/d 17:00</p><p><br></p><h4>PERSYARATAN PESERTA </h4><p>•<span style="white-space:pre">	</span>Sehat jasmani dan rohani</p><p>•<span style="white-space:pre">	</span>Pas Photo 3×4 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Pas Photo 2×3 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap pendidikan akhir minimal SLTA</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap KTP (Kartu Tanda Pengenal)</p><p>•<span style="white-space:pre">	</span>Surat permohonan penunjukan dari perusahaan untuk mengikuti pelatihan </p><p><br></p><h4>JENIS-JENIS PESAWAT ANGKAT DAN ANGKUT</h4><p>1. Forklift  <span style="white-space:pre">			</span>                           <span style="white-space:pre">	</span></p><p>2. Excavator<span style="white-space:pre">			</span>                    <span style="white-space:pre">	</span>      </p><p>3. Mobile Crane<span style="white-space:pre">			</span>                    <span style="white-space:pre">		</span>        </p><p>4. Over Head Traveling Crane<span style="white-space:pre">	</span>    <span style="white-space:pre">		</span></p><p>5. Tower Crane<span style="white-space:pre">			</span>                    <span style="white-space:pre">	</span>        </p><p>6. Bulldozer/Tractor<span style="white-space:pre">	</span></p><p><span style="font-size: 13.3px;">7.Compactor roller</span></p><p><span style="font-size: 13.3px;">8. Vibrator roller</span></p><p><span style="font-size: 13.3px;">9. Road roller</span></p><p><span style="font-size: 13.3px;">10. Dumb Truck</span></p><p><span style="font-size: 13.3px;">11. Wheel loader </span><span style="font-size: 13.3px;"> </span></p><p><span style="font-size: 13.3px;">12. Motor Grader</span></p><p><span style="font-size: 13.3px;">13. Crawler</span></p><p style="font-size: 13.3px;">14. Pile Driver</p><p style="font-size: 13.3px;"><span style="font-size: 13.3px;">15. Loader Backhoe</span></p><p style="font-size: 13.3px;"><span style="font-size: 13.3px;">16. Ripper</span></p><p style="font-size: 13.3px;"><span style="font-size: 13.3px;">17. Side boom/Pipe layer</span></p><p style="font-size: 13.3px;"><span style="font-size: 13.3px;">18. Etc</span><span style="font-size: 13.3px;"><br></span></p>', '2019-05-21 07:22:27', 2, 'Training', 8, 'Album K3 Angkat & Angkut', 0, 'PICT_20151009_143951.JPG', 1, 'Administrator', 'pembinaan-dan-sertifikasi-operator--pesawat-angkat-dan-angkut', 0),
(4, 'PEMBINAAN DAN SERTIFIKASI OPERATOR  PESAWAT UAP/BOILER KELAS I DAN II', '<h4>TUJUAN DAN KEUNTUNGAN</h4><p>Pelatihan ini bertujuan untuk memberikan pengetahuan dan ketrampilan dalam teknik pengoperasian  pesawat uap (boiler) secara, benar, aman sesuai Undang-undang & peraturan uap tahun 1930 dan tersedianya operator yang berkompetensi K3 Pesawat Uap/Boiler diperusahaan berdasarkan Peraturan Menteri Per-01/MEN/1988.</p><h4>MATERI SILABUS</h4><p>1.  Kebijakan K3 dan Dasar-dasar K3</p><p>2.  Peraturan UUNo. 1 Tahun 1970, UU Tahun 1930,</p><p>3.  Peraturan Uap 1930 dan Permen No.1 Tahun 1988</p><p>4.  Jenis Pesawat Uap dan Cara kerjanya</p><p>5.  Fungsi dan Perlengkapan Pesawat Uap (Appendages)</p><p>6.  Pengujian tidak merusak (NDT)</p><p>7.  Pengetahuan Bahan</p><p>8.  Perpindahan Panas</p><p>9.  Persiapan Pemeriksaan dan Pengujian Pesawat Uap</p><p>10. Peninjauan Konstruksi Pesawat Uap</p><p>11. Sebab-sebab Peledakan Pesawat Uap</p><p>12. Analisa Kecelakaan Peledakan</p><p>13. Cara Pengoperasian Pesawat Uap</p><p>14. Pengetahuan bahan bakar dan pembakaran</p><p>15. Air Pengisi Ketel Uap dan cara Pengolahannya</p><p>16. Pengetahuan Instalasi Listrik </p><p>17. Cara Inspeksi dan Reparasi Pesawat Uap</p><p><br></p><h4>FASILITAS TRAINING </h4><p>1.<span style="white-space:pre">	</span>Hard / Soft Copy Materi Training</p><p>2.<span style="white-space:pre">	</span>Sertifikat dari KEMNAKER R.I</p><p>3.<span style="white-space:pre">	</span>Kartu Lisensi dari KEMNAKER R.I</p><p>4.<span style="white-space:pre">	</span>Buku Kerja Operator dari KEMNAKER R.I</p><p>5.<span style="white-space:pre">	</span>Sertifikat dan Surat Keterangan </p><p>6.<span style="white-space:pre">	</span>2x coffee break dan Makan Siang</p><p>7.<span style="white-space:pre">	</span>Souvenir</p><p><br></p><h4>INVESTASI</h4><p>Operator Kelas I<span style="white-space:pre">	</span></p><p>Rp. 5.500.000/Orang<span style="white-space:pre">	</span></p><p>Durasi 5 Hari Kerja dari Pukul 08:00 s/d 17:00</p><p><br></p><p>Operator Kelas II</p><p>Rp. 4.500.000/Orang<span style="white-space:pre">	</span></p><p>Durasi 3 Hari Kerja dari Pukul 08:00 s/d 17:00</p><p><br></p><h4>PERSYARATAN PESERTA </h4><p>•<span style="white-space:pre">	</span>Sehat jasmani dan rohani</p><p>•<span style="white-space:pre">	</span>Pas Photo 3×4 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Pas Photo 2×3 (4 pcs background merah)</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap pendidikan akhir minimal SLTA</p><p>•<span style="white-space:pre">	</span>Photocopy 2 rangkap KTP (Kartu Tanda Pengenal)</p><p>•<span style="white-space:pre">	</span>Surat permohonan penunjukan dari perusahaan untuk mengikuti pelatihan </p><p>•<span style="white-space:pre">	</span>Melampirkan Sertifkat Operator Boiler Kelas II untuk mengikuti pembinaan operator kelas I</p><div><br></div>', '2019-05-21 07:28:59', 2, 'Training', 9, 'Album K3 Boiler', 0, 'IMG_20160302_090317.jpg', 1, 'Administrator', 'pembinaan-dan-sertifikasi-operator--pesawat-uap/boiler-kelas-i-dan-ii', 0),
(5, 'Visi', '<p>Menjadi PJK3 terdepan yang melaksanakan pembinaan dan sertifikasi K3 di Indonesia.<br></p>', '2019-05-27 05:32:08', 3, 'Visi', 0, '', 0, 'LogoRFID31.png', 1, 'Administrator', 'visi', 0),
(6, 'Misi', '<ul><li>Memberikan Pelayanan terbaik kepada semua pelanggan sehingga dapat diandalkan dan terpercaya.</li><li>Meningkatkan Kualitas Pelatihan dengan cara bekerja sama dengan para praktisi dan akademisi berkompetensi K3 yang terkemuka di Indonesia.</li><li>Berusaha untuk selalu berinovasi sehingga tecapainya peningkatan yang berkelanjutan<br></li></ul>', '2019-05-27 05:34:17', 4, 'Misi', 0, '', 0, 'LogoRFID4.png', 1, 'Administrator', 'misi', 0),
(7, 'Layanan Kami', '<p>1. Pembinaan dan Sertifikasi Calon Ahli K3 Umum&nbsp;</p><p>2. Pembinaan dan Sertifikasi Operator Pesawat Uap/boiler</p><p>3. Pembinaan dan Sertifikasi Operator Pesawat Angkat dan Angkut&nbsp;</p><p>4. Pembinaan dan Sertifikasi Operator Pesawat Tenaga Produksi&nbsp;</p><p>5. Pembinaan dan Sertifikasi Petugas Pemeriksa dan penguji/Teknisi Pesawat Uap/Boiler</p><p>6. Pembinaan dan Sertifikasi Petugas Pemeriksa dan penguji/Teknisi Pesawat Angkat &amp; angkut</p><p>7. Pembinaan dan Sertifikasi Petugas Pemadam Kebakaran Kelas C &amp; D</p><p>8. Pembinaan dan Sertifikasi K3 Scaffolding (Perancah)&nbsp;</p><p>9. Pembinaan dan Sertifikasi K3 Rigger (Juru Ikat)&nbsp;</p><p>10. Pembinaan dan Sertifikasi Teknisi K3 Listrik&nbsp;</p><p>11. Pembinaan dan Sertifikasi Petugas P3K</p><p>12. Pembinaan dan Sertifikasi Basic Safety Training K3</p><div><br></div>', '2019-05-27 05:56:58', 5, 'Layanan Kami', 0, '', 0, 'LogoRFID5.png', 1, 'Administrator', 'layanan-kami', 0),
(8, 'Produk Jasa dan Layanan', '<h4>Produk Jasa dan Layanan</h4><p>Pemeriksaan dan Pengujian (Riksa Uji)</p><p>1.<span style="white-space:pre">	</span>Riksa Uji Peralatan Pesawat Uap dan Bejana Tekan (Boiler, Vessel pressure, Compressor, dll)</p><p>2.<span style="white-space:pre">	</span>Riksa Uji Peralatan Pesawat Angkat dan Angkut (Tower Cranes, Over Head Cranes, Mobile Cranes, Crawler Cranes, Pedestal Cranes, Forklift, Lift, Alat-Alat Berat (Excavator, Backhoe, Buldozer, Motor Grader, Wheel Loader dll), Gondola, Conveyor, Escalator, dll)</p><p>3.<span style="white-space:pre">	</span>Riksa Uji Peralatan Pesawat Tenaga Produksi (Mesin diesel, Genset, Tanur, Turbin dll)</p><p>4.<span style="white-space:pre">	</span>Riksa Uji Peralatan Instalasi Listrik, Petir, dan Lift</p><p>5.<span style="white-space:pre">	</span>Riksa Uji Peralatan Penanggulangan Kebakaran (APAR, Alarm Automatic, Springkler, Hydrant)</p><p>6.<span style="white-space:pre">	</span>Pemeriksaan Lingkungan Kerja dan Bahan Kimia Beracun.</p><p>SOP RIKSA – UJI & SERTIFIKASI</p><p>•<span style="white-space:pre">	</span>Pemeriksaan dan pengujian dalam pembuatan .</p><p>•<span style="white-space:pre">	</span>Pemeriksaan dan pengujian pertama dalam pemakaian peralatan / instalasi baru dan atau setelah selesai pemasangan.</p><p>•<span style="white-space:pre">	</span>Pemeriksaan dan pengujian berkala sesuai dengan peraturan perundang-undangan yang berlaku.</p><p><br></p><h4>KRITERIA TEKNIS JENIS RIKSA DAN UJI (TAHAPAN)</h4><p>a) Pemeriksaan Data/ verifikasi</p><p>•<span style="white-space:pre">	</span>Data umum</p><p>•<span style="white-space:pre">	</span>Data teknis</p><p>b) Pemeriksaan Visual</p><p>•<span style="white-space:pre">	</span>Pemeriksaan visual dengan menggunakan checklist</p><p>•<span style="white-space:pre">	</span>Dimensi check</p><p>c) Pemeriksaan NDT</p><p>•<span style="white-space:pre">	</span>Seluruh seluruh titik kritis pada komponen utama atau komponen yang menerima beban atau komponen yang diragukan kekuatannya / kemampuannya</p><p>d) Pengujian</p><p>•<span style="white-space:pre">	</span>Dinamis (Running Test)</p><p>•<span style="white-space:pre">	</span>Statis</p><p>e) Pemeriksaan setelah pengujian </p><p>f)  Laporan </p><p>•<span style="white-space:pre">	</span> Bentuk 51 (pesawat angkat dan angkut) </p><p>•<span style="white-space:pre">	</span> Bentuk 54B (penggerak mula) </p><p>•<span style="white-space:pre">	</span> Bentuk 55B (mesin berbahaya) </p><p>•<span style="white-space:pre">	</span> Bentuk 56B (dapur/ Tanur)</p><p>•<span style="white-space:pre">	</span> Bentuk 46A (Bejana Tekan)</p><p>•<span style="white-space:pre">	</span> Formulir tersebut di lengkapi dengan formulir/ chesklist dari hasil riksa uji /NDT</p><p><br></p><h4>Legalitas Perusahaan</h4><p>1.     Akta Notaris: Aprizal Andri Yanto, SH/ 15/ 19 Januari 2017 </p><p>2.     SK Kemenkumham: AHU – 0002883. AH .01. 01.TAHUN 2017</p><p>3.     SK Domisili: 503/IG.R/0643/DPMPTSP-PPK/2017</p><p>4.     SIUP: 503/SIUP/05/IB.II/2017</p><p>5.     TDP: 06061409148</p><p>6.     NPWP Perusahaan : 81.237.660.6-307.000</p><p>7.     SKP PJK3 Riksa Uji: No.Kep 853/BINWASK3-PNK3/VII/2017 (PUBT)</p><p><br></p><h4>KANTOR PUSAT</h4><p><br></p><p>Jl. Manunggal Beringin I No. 2054 Kelurahan 30 Ilir Barat II. </p><p>     Palembang, Sumatera Selatan.</p><p><br></p><p>Telp/Fax.<span style="white-space:pre">	</span>: 0711-56-40504</p><p>No.Hp     <span style="white-space:pre">	</span>: 0812-7393-8908 (Pak Herik)</p><p>                   <span style="white-space:pre">	</span>  0822-6943-0003 (Risky)</p><p><br></p><p>Email<span style="white-space:pre">		</span>: trainingk3dwi@gmail.com</p><p>Website <span style="white-space:pre">	</span>: trainingk3dwi.com</p><p><br></p><h4>Partner PT. Inspeksindo Agrisa Katiga</h4><p>1.<span style="white-space:pre">	</span>PT PLN Keramasan Palembang</p><p>2.<span style="white-space:pre">	</span>PT. PLN Seduduk Putih Palembang</p><p>3.<span style="white-space:pre">	</span>PT. SMART Palembang</p><p>4.<span style="white-space:pre">	</span>PT. HINDOLI Banyuasin</p><p>5.<span style="white-space:pre">	</span>PT. SINAR ALAM PERMAI Banyuasin</p><p>6.<span style="white-space:pre">	</span>PT. TRAKINDO  Palembang</p><p>7.<span style="white-space:pre">	</span>PT. UNITED TRACTOR Palembang</p><p>8.<span style="white-space:pre">	</span>PT. INDOFOOD Palembang</p><p>9.<span style="white-space:pre">	</span>PT. HEXINDO Palembang</p><p>10.<span style="white-space:pre">	</span>PT. OKI PULP AND PAPER</p><p><br></p><h4>Afiliasi</h4><p>•<span style="white-space:pre">	</span>Asosiasi PJK3 Riksak Uji Indonesia (APJK3 RUI) Wilayah Provinsi Sumatera Selatan</p><div><br></div>', '2019-05-27 22:31:43', 6, 'Riska Uji', 11, 'Galeri PJK3 Riksa Uji  PT Insp', 0, '14752220485881.jpg', 1, 'Administrator', 'produk-jasa-dan-layanan', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kategori_tentang`
--
ALTER TABLE `tbl_kategori_tentang`
  ADD PRIMARY KEY (`kategori_tentang_id`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`pendaftaran_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indexes for table `tbl_tentang`
--
ALTER TABLE `tbl_tentang`
  ADD PRIMARY KEY (`tentang_id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`),
  ADD KEY `tulisan_album_id` (`tulisan_album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_kategori_tentang`
--
ALTER TABLE `tbl_kategori_tentang`
  MODIFY `kategori_tentang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  MODIFY `pendaftaran_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tentang`
--
ALTER TABLE `tbl_tentang`
  MODIFY `tentang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `training_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
