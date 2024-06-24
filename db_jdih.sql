-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 01 Mar 2024 pada 16.28
-- Versi Server: 5.5.68-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jdih`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('OPD', '2', 1632894286),
('Super Admin', '1', 1632894136);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1632894117, 1632894117),
('/backend/master-kategori/*', 2, NULL, NULL, NULL, 1632894097, 1632894097),
('/backend/produk-hukum/*', 2, NULL, NULL, NULL, 1632894091, 1632894091),
('/backend/rancangan-ph/*', 2, NULL, NULL, NULL, 1632894090, 1632894090),
('/backend/site/*', 2, NULL, NULL, NULL, 1632894090, 1632894090),
('/site/*', 2, NULL, NULL, NULL, 1632894080, 1632894080),
('OPD', 1, NULL, NULL, NULL, 1632894073, 1632894073),
('Super Admin', 1, NULL, NULL, NULL, 1632894063, 1632894063);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('OPD', '/backend/master-kategori/*'),
('OPD', '/backend/produk-hukum/*'),
('OPD', '/backend/rancangan-ph/*'),
('OPD', '/backend/site/*'),
('OPD', '/site/*'),
('Super Admin', '/*');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_artikel`
--

CREATE TABLE IF NOT EXISTS `jdih_artikel` (
  `id` int(11) NOT NULL,
  `judul` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kategori_artikel` int(11) NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status_publish` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_file_download`
--

CREATE TABLE IF NOT EXISTS `jdih_file_download` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_download` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_file_download`
--

INSERT INTO `jdih_file_download` (`id`, `nama`, `file`, `jumlah_download`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(2, 'Logo JDIH Toba', 'file/FileDownload/471093536_file.png', 0, '2021-09-21 10:40:07', '2021-09-21 10:40:07', 1, 1, 10),
(3, 'PANDUAN PENGGUNAAN WEBSITE JDIH KABUPATEN TOBA', 'file/FileDownload/1605907046_file.pdf', 0, '2021-09-21 10:41:34', '2021-09-21 10:41:34', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_jabatan`
--

CREATE TABLE IF NOT EXISTS `jdih_master_jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_jabatan`
--

INSERT INTO `jdih_master_jabatan` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 'Kepala Bagian Hukum Setdakab. Toba', '2021-05-03 10:41:26', '2023-07-13 10:13:18', 1, 1, 10),
(2, 'Fungsional Analis Hukum Ahli Muda Setdakab. Toba', '2021-05-03 10:41:44', '2023-07-13 10:15:46', 1, 1, 10),
(3, 'Fungsional Perancang Peraturan Perundang-Undangan Ahli Muda Setdakab. Toba', '2021-05-03 10:42:04', '2023-07-13 10:17:18', 1, 1, 10),
(4, 'Fungsional Penyuluh Hukum Ahli Muda Setdakab. Toba', '2021-05-03 10:42:16', '2023-07-13 10:18:02', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_kategori`
--

CREATE TABLE IF NOT EXISTS `jdih_master_kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_kategori`
--

INSERT INTO `jdih_master_kategori` (`id`, `slug`, `nama`, `id_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(3, 'daerah', 'Produk Hukum Daerah', 1, NULL, NULL, NULL, NULL, 10),
(4, 'undang-undang', 'Undang Undang', 2, NULL, NULL, NULL, NULL, 10),
(5, 'PP', 'Peraturan Pemerintah', 2, NULL, NULL, NULL, NULL, 10),
(6, 'PerPres', 'Peraturan Presiden', 2, NULL, NULL, NULL, NULL, 10),
(7, 'KePres', 'Keputusan Presiden', 2, NULL, NULL, NULL, NULL, 10),
(8, 'InPres', 'Instruksi Presiden', 2, NULL, NULL, NULL, NULL, 10),
(9, 'PERDA', 'Peraturan Daerah', 2, NULL, NULL, NULL, NULL, 10),
(10, 'PERBUP', 'Peraturan Bupati', 2, NULL, NULL, NULL, NULL, 10),
(11, 'KEPBUP', 'Keputusan Bupati', 2, NULL, NULL, NULL, NULL, 10),
(13, 'nasional', 'Produk Hukum Nasional', 1, '2021-09-20 09:27:08', '2021-09-20 09:27:08', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_kategori_artikel`
--

CREATE TABLE IF NOT EXISTS `jdih_master_kategori_artikel` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_kategori_artikel`
--

INSERT INTO `jdih_master_kategori_artikel` (`id`, `slug`, `nama`, `id_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(2, 'Kegiatan', 'Kegiatan', 2, NULL, '2021-09-20 09:41:39', 1, 1, 10),
(3, 'Berita', 'Berita', 2, '2021-09-20 09:41:24', '2021-09-20 09:41:24', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_profil`
--

CREATE TABLE IF NOT EXISTS `jdih_master_profil` (
  `id` int(11) NOT NULL,
  `visi` text COLLATE utf8_unicode_ci NOT NULL,
  `misi` text COLLATE utf8_unicode_ci NOT NULL,
  `sejarah` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_profil`
--

INSERT INTO `jdih_master_profil` (`id`, `visi`, `misi`, `sejarah`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, '<p style="text-align:justify"><em>&quot;Kualitas pembangunan hukum dan tata pemerintahan yang baik, transparan, efektif, efisien, dan bertanggung jawab&quot;</em></p>\r\n', '<ul>\r\n	<li style="text-align: justify;"><em>Menciptakan pengelolaan dokumentasi dan informasi hukum yang terpadu dan terintegrasi di berbagai instansi pemerintah dan institusi lainnya. </em></li>\r\n	<li style="text-align: justify;"><em>Menjamin ketersediaan dokumentasi dan informasi hukum yang lengkap dan akurat, serta dapat diakses secara cepat dan mudah. </em></li>\r\n	<li style="text-align: justify;"><em>Mengembangkan kerja sama yang efektif antara pusat jaringan dan anggota jaringan serta antar anggota jaringan dalam rangka penyediaan dokumentasi dan informasi hukum.</em></li>\r\n</ul>\r\n', '<div>\r\n<p style="text-align:justify">Ide membentuk Jaringan Dokumentasi dan Informasi Hukum Nasional (JDIHN), secara historis melekat erat dengan pembangunan hukum nasional dalam upaya mewujudkan supremasi hukum. Dikatakan demikian karena embrio pembentukan JDIHN adalah salah satu rekomendasi dari kegiatan pembangunan hukum nasional yaitu Seminar Hukum Nasional III tahun 1974 di Surabaya. Seminar hukum tersebut diselenggarakan oleh Badan Pembinaan Hukum Nasional dalam upaya membedah semua unsur pembangunan hukum dalam rangka mengingidentifikasi permasalahan dan menemukan solusi pemecahannya.</p>\r\n\r\n<p style="text-align:justify">Pada saat membedah dokumentasi hukum, para peserta seminar mengetahui bahwa dukungan dokumentasi hukum terhadap pembangunan hukum nasional masih sangat lemah. Dokumentasi hukum belum mampu menyediakan dokumen dan informasi hukum dengan cepat dan tepat pada saat dibutuhan. Dokumentasi hukum belum mampu menyediakan akses informasi hukum yang efektip, sehingga dokumen/informasi hukum sulit dicari dan ditemukan kembali pada saat dibutuhkan untuk mendukung pelaksanaan kegiatan pembangunan hukum, seperti: penelitian hukum, perencanaan hukum, penyusunan naskah akademis, penyusunan rancangan peraturan perundang-undangan, pembentukan kebijakan pimpinan dan lain-lain.</p>\r\n\r\n<p style="text-align:justify">Berdasarkan pengamatan peserta Seminar Hukum Nasional III Tahun 1974, faktor penyebab lemahnya dukungan dokumentasi hukum antara lain adalah:</p>\r\n\r\n<p style="text-align:justify">1. Dokumen hukum potensial, tersebar luas di instansi pemerintah di pusat sampai daerah dengan wilayah kepulauan yang sangat luas;</p>\r\n\r\n<p style="text-align:justify">2. Dokumen-dokumen hukum tersebut belum semuanya dikelola dengan baik dalam suatu sistem; 3. Tenaga pengelola yang ada sangat kurang;</p>\r\n\r\n<p style="text-align:justify">3. Perhatian terhadap keberadaan dokumentasi dan perpustakaan hukum masih sangat kurang.</p>\r\n\r\n<p style="text-align:justify">Peserta seminar berpendapat bahwa cara yang paling epektif untuk mengatasi kelemahan dokumentasi hukum ini adalah membentuk kerja sama antar unit pengelola dokumen hukum itu sendiri dalam suatu Jaringan dokumentasi dan informasi hukum.</p>\r\n\r\n<p style="text-align:justify">Berdasarkan pemikiran tersebut seminar merekomendasikan:</p>\r\n\r\n<p style="text-align:justify">1. Perlu adanya suatu kebijakan nasional untuk mulai menyusun sistem jaringan dokumentasi dan informasi hukum dan agar segera dapat berfungsi,</p>\r\n\r\n<p style="text-align:justify">2. Dalam tahap permulaan ada dua hal yang perlu dilakukan:</p>\r\n\r\n<p style="text-align:justify">a. Mempermudah pencarian dan penemuan kembali peraturan perundang- undangan, yurisprudensi, serta bahan-bahan lainnya.</p>\r\n\r\n<p style="text-align:justify">b. Untuk dapat secepatnya mendayagunakan semua informasi yang ada Sistem Jaringan Dokumentasi dan Informasi Hukum perlu disusun dan dikembangkan. Ditentukan Pusat dan Anggota Jaringan serta menyediakan sarana yang diperlukan agar mulai berfungsi.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Sambil menunggu terbitnya kebijakan nasional termaksud, BPHN (Badan Pembinaan Hukum Nasional) sebagai pengemban tugas pembinaan hukum nasional, segera menyelenggarakan serangkaian lokakarya dan berhasil mempersiapkan sarana (infrastruktur) jaringan agar bisa operasional. Lokakarya tersebut adalah Lokakarya tentang : &ldquo;Jaringan Dokumentasi dan Informasi Hukum&rdquo; di Jakarta (1975); Lokakarya tentang &ldquo;Sistem Penemuan Kembali Peraturan Perundang-undangan&rdquo; di Malang (1977); Lokakarya tentang &ldquo;Sistem Penyebarluasan Peraturan Perundang-undangan&rdquo; di Pontianak (1977); Lokakarya tentang &ldquo;Organisasi dan Komunikasi Sistem Jaringan Dokumentasi dan Informasi Hukum&rdquo; di Jakarta (1978),</p>\r\n</div>\r\n\r\n<div>\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Lokakarya Tahun 1978 sepakat menunjuk BPHN sebagai Pusat Jaringan dan diberi tugas sebagai penyelenggara latihan pembinaan tenaga, tempat konsultasi, penelitian dan pengembangan sistem jaringan, serta koordinator kegiatan unit-unit jaringan dalam rangka pengembangan jaringan. Dalam rangka melaksanakan tugas tersebut pada tahun 1988 BPHN sebagai Pusat JDIH mengeluarkan pedoman pengelolaaan dokumen hukum yang diberi nama &rdquo;Manual Unit Jaringan Dokumentasi dan Informasi Hukum&rdquo; yang terdiri dari IV modul yaitu :&nbsp;</p>\r\n\r\n<p style="text-align:justify">1. Modul I : Pedoman Prosedur Kerja Pusat Jaringan Dokumtasi dan Informasi Hukum.</p>\r\n\r\n<p style="text-align:justify">2. Modul II : Pedoman Pengumpulan Bahan ( Kegiatan Prakatalogan).</p>\r\n\r\n<p style="text-align:justify">3. Modul III : Pedoman Pengolahan Sub-Modul III A : Pedoman Teknis Pengkatalogan Bahan Pustaka dan Pascakalogan (berdasarkan UDC) ; Sub-Modul III B : Pedoman Teknis Pengkatalogan Peraturan Perundangan-undangan; Sub-Modul III C : Pedoman Teknis Pengkatalogan Bahan Pustaka dan Pascakatlogan (berdasarkan DDC).</p>\r\n\r\n<p style="text-align:justify">4. Modul IV : Pedoman Pelayanan Informasi;</p>\r\n\r\n<p style="text-align:justify">5. Modul V : Sarana Kerja Unit Jaringan Dokumentasi dan Informasi Hukum.</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Dari tahun 1978 &ndash; 1999, BPHN melakukan pembinaan dan pengembangan JDIH hanya berdasarkan kesepakatan tersebut. Banyak upaya pembinaan dan pengembangan yang telah dilakukan, namun temu kembali informasi belum dapat dilakukan dengan cepat, tepat, dan pendayagunaan informasi belum dapat terselenggara dengan baik.</p>\r\n</div>\r\n\r\n<div>\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify">Selama Pemerintahan Orde Baru rekomendasi untuk membentuk JDIHN kurang mendapat perhatian. Jaringan Dokumentasi dan Informasi Hukum disebut dalam GBHN 1993 bidang pembangunan hukum sektor sarana dan prasarana sebagai sarana penunjang pembangunan hukum. Namun dalam era Pemerintahan Reformasi rekomendasi termaksud langsung diwujudkan dengan mengundangkan Keputusan Presiden Nomor 91 Tahun 1999 tentang Jaringan Dokumentasi dan Informasi Hukum Nasional dalam Lembaran Negara No. 135. Kemudian dalam rangka melaksanakan . Instruksi Presiden Nomor 9 Tahun 2011 tentang Rencana Aksi Pencegahan dan Pemerantasan Korupsi Tahun 2011, Keputusan Presiden tersebut direvitalisasi dan diganti dengan Peraturan Presiden Nomor 33 Tahun 2012 tentang Jaringan Dokumentasi dan Informasi Hukum Nasional, Lembaran Negara No 82.</p>\r\n\r\n<p style="text-align:justify">Untuk menyesuaikan dengan perkembangan ilmu pengetahuan dan teknologi, Manual Unit Jaringan Dokumentasi dan Informasi Hukum juga telah direvisi dan dikembangkan oleh Pusat Jaringan dan dijadikan lampiran yang tidak terpisahkan dari Peraturan Menteri Hukum dan HAM Nomor 02 Tahun 2013 Tentang Standardisasi Pengelolaan Teknis Dokumentasi Dan Informasi Hukum, yang terdiri dari:</p>\r\n\r\n<p style="text-align:justify">1. Standardisasi Pengadaan Dokumen Hukum;</p>\r\n\r\n<p style="text-align:justify">2. Standardisasi Pembuatan Daftar Inventarisasi Peraturan Per-uu-an dan Instrumen Hukum lainnya;</p>\r\n\r\n<p style="text-align:justify">3. Standardisasi Pembuatan Katalog Peraturan Per-uu-an dan Instrumen Hukum lainnya;</p>\r\n\r\n<p style="text-align:justify">4. Standardisasi Pembuatan Abstrak Peraturan per-uu-an;</p>\r\n\r\n<p style="text-align:justify">5. Standardisasi Pembuatan Katalog Monografi Hukum;</p>\r\n\r\n<p style="text-align:justify">6. Standardisasi Penyusunan Indeks Majalah Hukum;</p>\r\n\r\n<p style="text-align:justify">7. Standardisasi Penyusunan Indeks Kliping Koran;</p>\r\n\r\n<p style="text-align:justify">8. Standardisasi Pelayanan Informasi Hukum;</p>\r\n\r\n<p style="text-align:justify">9. Standardisasi Website JDIHN;</p>\r\n\r\n<p style="text-align:justify">10. Standardisasi Monev Pengelolaan JDIHN;</p>\r\n\r\n<p style="text-align:justify">11. Standardisasi Pelaporan Penyelenggaraan JDIHN.</p>\r\n\r\n<p style="text-align:justify">Pasal 4 Peraturan Presiden Nomor 33 Tahun 2012 menetapkan kembali BPHN sebagai Pusat JDIHN dan Anggota JDIHN terdiri dari:</p>\r\n</div>\r\n\r\n<div>\r\n<p style="text-align:justify">1. Biro Hukum dan/atau unit kerja yang tugas dan fungsinya menyelenggarakan kegiatan yang berkaitan dengan dokumen hukum pada:</p>\r\n\r\n<p style="text-align:justify">a.&nbsp;&nbsp;&nbsp;&nbsp;Kementerian Negara;</p>\r\n\r\n<p style="text-align:justify">b.&nbsp;&nbsp;&nbsp;Sekretariat Lembaga Negara;</p>\r\n\r\n<p style="text-align:justify">c.&nbsp;&nbsp;&nbsp;&nbsp;Lembaga Pemerintah Non Kementerian;</p>\r\n\r\n<p style="text-align:justify">d.&nbsp;&nbsp;&nbsp;Pemerintah Provinsi;</p>\r\n\r\n<p style="text-align:justify">e.&nbsp;&nbsp;&nbsp;&nbsp;Pemerintah Kabupaten/Kota; dan</p>\r\n\r\n<p style="text-align:justify">f.&nbsp;Sekreariat Dewan Perwakilan Rakyat Daerah Tingkat Provinsi dan Kabupaten/Kota.</p>\r\n\r\n<p style="text-align:justify">2. Perpustakaan pada perguruan tinggi negeri dan perguruan tinggi swasta;</p>\r\n\r\n<p style="text-align:justify">3. Lembaga Lain yang bergerak di bidang pengembangan dokumentasi dan informasi hukum yang ditetapkan olen Menteri.</p>\r\n\r\n<p style="text-align:justify">Pasal 3 Peraturan Presiden Nomor 33 Tahun 2012 menegaskan bahwa tujuan dari JDIHN adalah:</p>\r\n\r\n<p style="text-align:justify">a.&nbsp;&nbsp;menjamin terciptanya Pengelolaan Dokumentasi dan Informasi Hukum yang terpadu dan terintegrasi di berbagai instansi pemerintah dan institusi lainnya;</p>\r\n\r\n<p style="text-align:justify">b.&nbsp;&nbsp;menjamin ketersediaan dokumentasi dan informasi hukum yang lengkap dan akurat, serta dapat diakses secara cepat dan mudah;</p>\r\n\r\n<p style="text-align:justify">c.&nbsp;mengembangkan kerja sama yang efektif antara Pusat jaringan dan Anggota jaringan serta antar sesama Anggota jaringan dalam rangka penyediaan dokumentasi dan informasi hukum; dan</p>\r\n\r\n<p style="text-align:justify">d.&nbsp;&nbsp;meningkatkan kualitas pembangunan hukum nasional dan pelayanan kepada publik sebagai salah satu wujud ketatapemerintahan yang baik, transparan, efektif, efisien, dan bertanggung jawab.</p>\r\n\r\n<p style="text-align:justify">Sejarah pembentukan JDIHN di atas menunjukkan betapa pentingnya kerjasama pengelolaan dokumen dan informasi hukum untuk mempercepat pembangunan hukum nasional yang berkualitas. Untuk membangun akses informasi hukum yang terintegrasi, secara nasional semua Anggota JDIHN wajib mengelola dokumen dan informasi hukum yang ada dalam kewenangannya dengan menggunakan modul/standar yang ada dan meningkatkan akselerasinya dengan memanfaatkan kecanggihan teknologi informasi dan komunikasi. Tersedianya akses informasi hukum bagi semua warga negara merupakan conditio sine quanon dalam mewujudkan supremasi hukum. Sementara menyediakan akses informasi hukum adalah tugas dari dokumentasi hukum Anggota Jaringan.</p>\r\n</div>\r\n\r\n<div style="text-align: justify;">&nbsp;</div>\r\n', '2021-04-08 10:28:00', '2022-09-22 12:04:51', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_status`
--

CREATE TABLE IF NOT EXISTS `jdih_master_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_status`
--

INSERT INTO `jdih_master_status` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 'Draft', NULL, NULL, NULL, NULL, 10),
(2, 'Aktif', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_status_publish`
--

CREATE TABLE IF NOT EXISTS `jdih_master_status_publish` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_status_publish`
--

INSERT INTO `jdih_master_status_publish` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 'Draft', NULL, NULL, NULL, NULL, 10),
(2, 'Publish', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_master_struktur`
--

CREATE TABLE IF NOT EXISTS `jdih_master_struktur` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_master_struktur`
--

INSERT INTO `jdih_master_struktur` (`id`, `nip`, `nama`, `id_jabatan`, `foto`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(11, '196712172006041002', 'Anthony Sianipar, SH', 1, '', '2023-07-13 10:18:53', '2023-07-13 10:18:53', 1, 1, 10),
(12, '197502202009031001', 'Hamres C. Butar Butar, SH', 2, '', '2023-07-13 10:20:19', '2023-07-13 10:20:19', 1, 1, 10),
(13, '197705172005021001', 'Darmawan Sipayung, SH', 3, '', '2023-07-13 10:21:54', '2023-07-13 10:21:54', 1, 1, 10),
(14, '197606302007012005', 'Tetty Masrina Panjaitan, SH', 4, '', '2023-07-13 10:22:35', '2023-07-13 10:22:35', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_produk_hukum`
--

CREATE TABLE IF NOT EXISTS `jdih_produk_hukum` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nomor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` date NOT NULL,
  `judul` text COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status_publish` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_produk_hukum`
--

INSERT INTO `jdih_produk_hukum` (`id`, `id_kategori`, `nomor`, `tahun`, `judul`, `isi`, `file`, `id_status_publish`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(39, 9, '1', '2019-05-06', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2019 tentang Pengaturan Pola Tanam dan Tertib Tanam', '<p>LD Tahun 2019 (1); 6hlm</p>\r\n', '/file/produk_hukum/333409559_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-19 17:31:29', 1, 1, 10),
(40, 9, '2', '2019-05-06', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2019 tentang Penyelenggaraan Kesejahteraan Sosial', '<p>LD Tahun 2019 (2); 19hlm</p>\r\n', '/file/produk_hukum/2135087252_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-19 17:24:04', 1, 1, 10),
(41, 9, '3', '2019-05-06', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2019 tentang Perubahan Kedua Atas Peraturan Daerah Kabupaten Toba Samosir Nomor 19 Tahun 2012 tentang Penyelenggaraan Administrasi Kependudukan', '<p>LD Tahun 2019 (3); 7hlm</p>\r\n', '/file/produk_hukum/176836400_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:23:04', 1, 1, 10),
(42, 9, '4', '2019-05-06', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 4 Tahun 2019 tentang Penataan dan Pemberdayaan Pedagang Kaki Lima', '<p>LD Tahun 2019 (4); 12hlm</p>\r\n', '/file/produk_hukum/1869967002_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:24:37', 1, 1, 10),
(43, 9, '5', '2019-05-06', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2019 tentang Penyelenggaraan Pendidikan Anak Usia Dini', '<p>LD Tahun 2019 (5); 18hlm</p>\r\n', '/file/produk_hukum/1056782193_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:25:52', 1, 1, 10),
(44, 9, '6', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2019 tentang Perlindungan Anak', '<p>LD Tahun 2019 (6); 27hlm</p>\r\n', '/file/produk_hukum/1875825872_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:26:53', 1, 1, 10),
(45, 9, '9', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 9 Tahun 2019 tentang Penanggulangan Bencana Daerah', '<p>LD Tahun 2019 (9); 25hlm</p>\r\n', '/file/produk_hukum/1000358245_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:28:01', 1, 1, 10),
(46, 9, '10', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 10 Tahun 2019 tentang Perlindungan dan Pemenuhan Hak Penyandang Disabilitas', '<p>LD Tahun 2019 (10); 29hlm</p>\r\n', '/file/produk_hukum/889751160_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:29:58', 1, 1, 10),
(47, 9, '11', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2019 tentang Penyelenggaraan Kesejahteraan Lanjut Usia', '<p>LD Tahun 2019 (11); 15hlm</p>\r\n', '/file/produk_hukum/2035625472_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:31:13', 1, 1, 10),
(48, 9, '12', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2019 tentang Penyelenggaraan Pelayanan Publik', '<p>LD Tahun 2019 (12); 23hlm</p>\r\n', '/file/produk_hukum/82322462_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:32:20', 1, 1, 10),
(49, 9, '13', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 13 Tahun 2019 tentang Penyidik Pegawai Negeri Sipil', '<p>LD Tahun 2019 (13); 17hlm</p>\r\n', '/file/produk_hukum/153116213_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:33:28', 1, 1, 10),
(50, 9, '14', '2019-11-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 14 Tahun 2019 tentang Kawasan Tanpa Rokok', '<p>LD Tahun 2019 (14); 11hlm</p>\r\n', '/file/produk_hukum/1091357693_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:34:23', 1, 1, 10),
(51, 9, '1', '2018-05-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2018 tentang Perubahan Atas Peraturan Daerah Kabupaten Toba Samosir Nomor 19 Tahun 2012 tentang Penyelenggaraan Administrasi Kependudukan', '<p>LD Tahun 2018 (1); 12hlm</p>\r\n', '/file/produk_hukum/251211868_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:37:53', 1, 1, 10),
(52, 9, '2', '2018-07-12', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2018 tentang Bangunan Gedung', '<p>LD Tahun 2018 (2); 70hlm</p>\r\n', '/file/produk_hukum/784607009_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:38:52', 1, 1, 10),
(53, 9, '3', '2018-07-19', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2018 tentang Tuntutan Ganti Kerugian Daerah Terhadap Pegawai Negeri Sipil Bukan Bendahara Atau Pejabat Lain', '<p>LD Tahun 2018 (3); 22hlm</p>\r\n', '/file/produk_hukum/170418467_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:40:42', 1, 1, 10),
(54, 9, '7', '2018-09-03', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 7 Tahun 2018 tentang Retribusi Perpanjangan Izin Mempekerjakan Tenaga Kerja Asing', '<p>LD Tahun 2018 (7); 9hlm</p>\r\n', '/file/produk_hukum/1375267154_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:42:15', 1, 1, 10),
(55, 9, '8', '2018-09-03', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 8 Tahun 2018 tentang Perubahan Atas Peraturan Daerah Kabupaten Toba Samosir Nomor 8 Tahun 2010 tentang Retribusi Pelayanan Pasar', '<p>LD Tahun 2018 (8); 3hlm</p>\r\n', '/file/produk_hukum/485888567_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-20 23:59:35', 1, 1, 10),
(56, 9, '12', '2018-12-31', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2018 tentang Penyelenggaraan Kearsipan', '<p>LD Tahun 2018 (12); 21hlm</p>\r\n', '/file/produk_hukum/1945784560_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 00:00:54', 1, 1, 10),
(57, 9, '14', '2018-12-31', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 14 Tahun 2018 tentang Pengelolaan Kualitas Air dan Pengendalian Air Limbah', '<p>LD Tahun 2018 (14); 13hlm</p>\r\n', '/file/produk_hukum/809227012_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 00:02:24', 1, 1, 10),
(58, 9, '2', '2017-07-27', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2017 tentang Perubahan Atas Peraturan Daerah Nomor 4 Tahun 2015 tentang Pemilihan Kepala Desa', '<p>LD Tahun 2017 (2); 4hlm</p>\r\n', '/file/produk_hukum/251750673_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 00:03:43', 1, 1, 10),
(59, 9, '3', '2017-07-27', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2017 tentang Badan Permusyawaratan Desa', '<p>LD Tahun 2017&nbsp;(3); 27hlm</p>\r\n', '/file/produk_hukum/546138929_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:30:08', 1, 1, 10),
(60, 9, '6', '2017-08-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2017 tentang Insentif Tenaga Pendidik pada Pendidikan Nonformal', '<p>LD Tahun 2017&nbsp;(6); 9hlm</p>\r\n', '/file/produk_hukum/1395758199_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:32:53', 1, 1, 10),
(61, 9, '7', '2017-08-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 7 Tahun 2017 tentang Tanggung Jawab Sosial dan Lingkungan Perusahaan', '<p>LD Tahun 2017&nbsp;(7); 17hlm</p>\r\n', '/file/produk_hukum/1302861253_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:33:26', 1, 1, 10),
(62, 9, '8', '2017-08-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 8 Tahun 2017 tentang Hak Keuangan dan Administratif Pimpinan dan Anggota Dewan Perwakilan Rakyat Daerah Kabupaten Toba Samosir', '<p>LD Tahun 2017&nbsp;(8); 22hlm</p>\r\n', '/file/produk_hukum/381267426_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:35:08', 1, 1, 10),
(63, 9, '9', '2017-09-20', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 9 Tahun 2017 tentang Pengelolaan Barang Milik Daerah', '<p>LD Tahun 2017&nbsp;(9); 94hlm</p>\r\n', '/file/produk_hukum/1432708017_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:35:49', 1, 1, 10),
(64, 9, '10', '2017-10-13', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 10 Tahun 2017 tentang Izin Lingkungan', '<p>LD Tahun 2017&nbsp;(10); 26hlm</p>\r\n', '/file/produk_hukum/599198737_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:35:48', 1, 1, 10),
(65, 9, '11', '2017-10-14', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2017 tentang Pembentukan Produk Hukum Daerah', '<p>LD Tahun 2017&nbsp;(11); 32hlm</p>\r\n', '/file/produk_hukum/1906284197_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:35:21', 1, 1, 10),
(66, 9, '12', '2017-10-26', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2017 tentang Rencana Tata Ruang Wilayah Kabupaten Toba Samosir Tahun 2017 - 2037', '<p>LD Tahun 2017&nbsp;(12); 108hlm</p>\r\n', '/file/produk_hukum/858296434_produk_hukum.pdf', 2, '2021-05-04 14:25:00', '2021-07-21 10:35:09', 1, 1, 10),
(67, 10, '1', '2019-01-07', 'Peraturan Bupati Toba Samosir Nomor 1 Tahun 2019 tentang Penggunaan dan Pengelolaan Sistem Aplikasi Perencanaan Pembangunan Daerah Berbasis Online di Lingkungan Pemerintah Kabupaten Toba Samosir', '<p>LB Tahun 2019 (1); 13hlm</p>\r\n', '/file/produk_hukum/2088877908_produk_hukum.pdf', 2, '2021-05-18 11:58:56', '2021-07-21 10:34:54', 1, 1, 10),
(68, 10, '3', '2019-01-07', 'Peraturan Bupati Toba Samosir Nomor 3 Tahun 2019 tentang Petunjuk Teknis Pelaksanaan Peraturan Daerah Nomor 7 Tahun 2018 Tentang Perpanjangan Izin Mempekerjakan Tenaga Kerja Asing atau Notifikasi', '<p>LB&nbsp;Tahun 2019 (3); 9hlm</p>\r\n', '/file/produk_hukum/875046844_produk_hukum.pdf', 2, '2021-05-18 12:02:52', '2021-07-21 10:34:33', 1, 1, 10),
(69, 10, '4', '2019-01-07', 'Peraturan Bupati Toba Samosir Nomor 4 Tahun 2019 tentang Penyelenggaraan Pengujian Berkala Kendaraan Bermotor', '<p>LB&nbsp;Tahun 2019 (4); 15hlm</p>\r\n', '/file/produk_hukum/586050214_produk_hukum.pdf', 2, '2021-05-18 12:04:58', '2021-07-21 10:34:14', 1, 1, 10),
(70, 10, '5', '2019-01-07', 'Peraturan Bupati Toba Samosir Nomor 5 Tahun 2019 tentang Perubahan Atas Perubahan Tarif Retribusi Pengujian Kendaraan Bermotor', '<p>LB&nbsp;Tahun 2019 (5); 4hlm</p>\r\n', '/file/produk_hukum/315486199_produk_hukum.pdf', 2, '2021-05-18 12:07:10', '2021-07-21 10:34:00', 1, 1, 10),
(71, 10, '7', '2019-02-01', 'Peraturan Bupati Toba Samosir Nomor 7 Tahun 2019 tentang Petunjuk Teknis Bulan Bhakti Gotong Royong Masyarakat Xvi dan Hari Kesatuan Gerak Pemberdayaan dan Kesejahteraan Keluarga ke 47 Kabupaten Toba Samosir', '<p>LB&nbsp;Tahun 2019 (7); 11hlm</p>\r\n', '/file/produk_hukum/1402819679_produk_hukum.pdf', 2, '2021-05-18 12:11:09', '2021-07-21 10:33:41', 1, 1, 10),
(72, 10, '8', '2019-02-20', 'Peraturan Bupati Toba Samosir Nomor 8 Tahun 2019 tentang Pengelolaan Keuangan Desa', '<p>LD Tahun 2019 (8); 106hlm</p>\r\n', '/file/produk_hukum/1910323552_produk_hukum.pdf', 2, '2021-05-18 12:20:57', '2021-07-21 10:33:19', 1, 1, 10),
(73, 10, '9', '2019-02-28', 'Peraturan Bupati Toba Samosir Nomor 9 Tahun 2019 tentang Rencana Aksi Daerah Kabupaten Layak Anak di Kabupaten Toba Samosir Tahun 2019-2021', '<p>LB&nbsp;Tahun 2019 (9); 6hlm</p>\r\n', '/file/produk_hukum/30555429_produk_hukum.pdf', 2, '2021-05-18 12:24:36', '2021-07-21 10:33:05', 1, 1, 10),
(74, 10, '10', '2019-02-28', 'Peraturan Bupati Toba Samosir Nomor 10 Tahun 2019 tentang Penetapan dan Pedoman Pelaksanaan Alokasi Dana Desa di Kabupaten Toba Samosir Tahun Anggaran 2019', '<p>LB&nbsp;Tahun 2019 (10); 29hlm</p>\r\n', '/file/produk_hukum/1915559435_produk_hukum.pdf', 2, '2021-05-18 12:30:05', '2021-07-21 10:32:45', 1, 1, 10),
(75, 11, '3', '2021-01-04', 'Keputusan Bupati Toba Nomor 03 Tahun 2021 tentang Pembentukan Tim Fasilitasi Layanan Pengadaan Secara Elektronik Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/291769386_produk_hukum.pdf', 2, '2021-05-31 15:09:14', '2021-07-21 10:32:19', 1, 1, 10),
(76, 11, '5', '2021-01-04', 'Keputusan Bupati Toba Nomor 5 Tahun 2021 tentang Pembentukan Tim Koordinasi Kerja Sama Daerah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1527716309_produk_hukum.pdf', 2, '2021-05-31 15:12:53', '2021-07-21 10:32:06', 1, 1, 10),
(77, 11, '6', '2021-01-04', 'Keputusan Bupati Toba Nomor 6 Tahun 2021 tentang Pembentukan Tim Penerapan Standar Pelayanan Minimal Daerah Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/68913199_produk_hukum.pdf', 2, '2021-05-31 15:17:30', '2021-07-21 10:31:50', 1, 1, 10),
(78, 11, '12', '2021-01-04', 'Keputusan Bupati Toba Nomor 12 Tahun 2021 tentang Pembentukan Tim Penyusun Laporan Penyelenggaraan Pemerintahan Daerah Kabupaten Toba Tahun Anggaran 2020 Pada Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1726179145_produk_hukum.pdf', 2, '2021-05-31 15:32:27', '2021-07-21 10:31:33', 1, 1, 10),
(79, 9, '1', '2020-02-14', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2020 tentang Hak Ulayat Masyarakat Hukum Adat Batak Toba Samosir', '<p>LD Tahun 2019 (1); 11hlm</p>\r\n', '/file/produk_hukum/2089632157_produk_hukum.pdf', 2, '2021-05-31 16:01:41', '2021-07-21 10:36:20', 1, 1, 10),
(81, 11, '13', '2021-01-04', 'Keputusan Bupati Toba Nomor 13 Tahun 2021 tentang Pembentukan Tim Penyusun Laporan Keterangan Pertanggungjawaban Bupati Toba Tahun Anggaran 2020 Pada Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/431203811_produk_hukum.pdf', 2, '2021-06-16 09:27:12', '2021-07-21 10:36:41', 1, 1, 10),
(82, 11, '15', '2021-01-04', 'Keputusan Bupati Toba Nomor 15 Tahun 2021 tentang Pembentukan Tim Pengkaji Peraturan Perundang-Undangan Daerah Terhadap Peraturan Perundang-Undangan Yang Baru, Lebih Tinggi, dan Keserasian Antar Peraturan Perundang-Undangan Daerah Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/1778798651_produk_hukum.pdf', 2, '2021-06-16 09:31:12', '2021-07-21 10:37:17', 1, 1, 10),
(83, 11, '21', '2021-01-11', 'Keputusan Bupati Toba Nomor 21 Tahun 2021 tentang Pembentukan Tim Penegakan dan Pembinaan Disiplin Serta Kode Etik Pegawai Negeri Sipil di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/490689144_produk_hukum.pdf', 2, '2021-06-16 09:34:29', '2021-07-21 10:37:52', 1, 1, 10),
(84, 11, '22', '2021-01-11', 'Keputusan Bupati Toba Nomor 22 Tahun 2021 tentang Penetapan Kriteria Pusat Kesehatan Masyarakat Berdasarkan Karakteristik Wilayah Kerja dan Berdasarkan Kemampuan Pelayanan Kesehatan di Kabupaten Toba', '<p>-</p>\r\n', '/file/produk_hukum/1807598782_produk_hukum.pdf', 2, '2021-06-16 09:38:51', '2021-07-21 10:52:15', 1, 1, 10),
(85, 11, '25', '2021-01-11', 'Keputusan Bupati Toba Nomor 25 Tahun 2021 tentang Penetapan Jumlah dan Nama Peserta Jaminan Kesehatan Daerah Toba Hebat di Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/532980377_produk_hukum.pdf', 2, '2021-06-16 09:41:59', '2021-07-21 10:38:53', 1, 1, 10),
(86, 11, '27', '2021-01-11', 'Keputusan Bupati Toba Nomor 27 Tahun 2021 tentang Pembentukan Tim Pembina dan Tim Teknis Perizinan dan Non Perizinan Pada Dinas Penanaman Modal dan Pelayanan Perizinan Terpadu Satu Pintu Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/314156073_produk_hukum.pdf', 2, '2021-06-16 09:45:33', '2021-07-21 10:39:31', 1, 1, 10),
(87, 11, '29', '2021-01-11', 'Keputusan Bupati Toba Nomor 29 Tahun 2021 tentang Pembentukan Tim Monitoring, Evaluasi dan Pengendalian Kebutuhan Strategis Liquefied Petroleum Gas Tabung 3 (Tiga) Kilogram Bersubsidi di Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/189605948_produk_hukum.pdf', 2, '2021-06-16 09:49:27', '2021-07-21 10:39:58', 1, 1, 10),
(88, 11, '31', '2021-01-11', 'Keputusan Bupati Toba Nomor 31 Tahun 2021 tentang Tim Pengendalian Inflasi Daerah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1856803420_produk_hukum.pdf', 2, '2021-06-16 09:51:41', '2021-07-21 10:40:23', 1, 1, 10),
(89, 11, '32', '2021-01-11', 'Keputusan Bupati Toba Nomor 32 Tahun 2021 tentang Pembentukan Tim Percepatan Akses Keuangan Daerah Kabupaten Toba', '<p>-</p>\r\n', '/file/produk_hukum/1353575797_produk_hukum.pdf', 2, '2021-06-16 09:58:31', '2021-07-21 10:40:45', 1, 1, 10),
(90, 11, '35', '2021-01-11', 'Keputusan Bupati Toba Nomor 35 Tahun 2021 tentang Pembentukan Tim Terpadu Penanganan Konflik Sosial di Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/2044261058_produk_hukum.pdf', 2, '2021-06-16 10:01:59', '2021-07-21 10:41:09', 1, 1, 10),
(91, 11, '36', '2021-01-11', 'Keputusan Bupati Toba Nomor 36 Tahun 2021 tentang Pembentukan Tim Inventarisasi dan Dokumentasi Produk Hukum Daerah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/318747902_produk_hukum.pdf', 2, '2021-06-16 10:03:51', '2021-07-21 10:40:42', 1, 1, 10),
(92, 11, '54', '2021-01-21', 'Keputusan Bupati Toba Nomor 54 Tahun 2021 tentang Penetapan Pengelola Barang, Pejabat Penatausahaan Barang, dan Pengguna Barang di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/1281841428_produk_hukum.pdf', 2, '2021-06-16 10:07:28', '2021-07-21 10:40:16', 1, 1, 10),
(93, 11, '55', '2021-01-21', 'Keputusan Bupati Toba Nomor 55 Tahun 2021 tentang Penetapan Mantri Tani Kecamatan pada Masing-Masing Kecamatan di Lingkungan Pemerintah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1694545344_produk_hukum.pdf', 2, '2021-06-16 10:10:48', '2021-07-21 10:39:52', 1, 1, 10),
(94, 11, '60', '2021-01-26', 'Keputusan Bupati Toba Nomor 60 Tahun 2021 tentang Pembentukan Tim Penilai Penerapan Pola Pengelolaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba', '<p>-</p>\r\n', '/file/produk_hukum/717378744_produk_hukum.pdf', 2, '2021-06-16 10:13:39', '2021-07-21 10:39:16', 1, 1, 10),
(95, 11, '68', '2021-01-27', 'Keputusan Bupati Toba Nomor 68 Tahun 2021 tentang Pembentukan Tim Monitoring dan Evaluasi Pelaksanaan Pembangunan Daerah di Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/1469080885_produk_hukum.pdf', 2, '2021-06-16 10:15:50', '2021-07-21 10:38:57', 1, 1, 10),
(96, 11, '69', '2021-01-27', 'Keputusan Bupati Toba Nomor 69 Tahun 2021 tentang Pembentukan Tim Pengendalian Pembangunan Daerah di Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/41853263_produk_hukum.pdf', 2, '2021-06-16 10:18:20', '2021-07-21 10:38:30', 1, 1, 10),
(97, 11, '74', '2021-01-29', 'Keputusan Bupati Toba Nomor 74 Tahun 2021 tentang Pembentukan Tim Terpadu dan Sekretariat Pelaksana Penanganan Dampak Sosial Kemasyarakatan pada Lahan Zona Otorita Danau Toba Seluas 107 (Seratus Tujuh) Hektar di Desa Motung Kecamatan Ajibata Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1091071916_produk_hukum.pdf', 2, '2021-06-16 10:21:53', '2021-07-21 10:38:08', 1, 1, 10),
(98, 11, '107', '2021-02-03', 'Keputusan Bupati Toba Nomor 107 Tahun 2021 tentang Penetapan Desa Binaan di Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/681898074_produk_hukum.pdf', 2, '2021-06-16 10:23:57', '2021-07-21 10:37:11', 1, 1, 10),
(99, 11, '108', '2021-02-03', 'Keputusan Bupati Toba Nomor 108 Tahun 2021 tentang Pembentukan Tim Kewaspadaan Dini Pemerintah Daerah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/38273427_produk_hukum.pdf', 2, '2021-06-16 10:25:55', '2021-07-21 10:36:51', 1, 1, 10),
(100, 11, '141', '2021-02-11', 'Keputusan Bupati Toba Nomor 141 Tahun 2021 tentang Pembentukan Tim Penyusun Rencana Pembangunan Jangka Menengah Daerah Kabupaten Toba Tahun 2021-2026', '<p>-</p>\r\n', '/file/produk_hukum/700388554_produk_hukum.pdf', 2, '2021-06-16 10:29:31', '2021-07-21 10:30:39', 1, 1, 10),
(101, 11, '147', '2021-02-15', 'Keputusan Bupati Toba Nomor 147 Tahun 2021 tentang Pembentukan Tim Penyusunan Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2022', '<p>-</p>\r\n', '/file/produk_hukum/1745369274_produk_hukum.pdf', 2, '2021-06-16 10:31:49', '2021-07-21 10:31:11', 1, 1, 10),
(102, 11, '148', '2021-02-15', 'Keputusan Bupati Toba Nomor 148 Tahun 2021 tentang Pembentukan Tim Pelaksana Musyawarah Perencanaan Pembangunan Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2022', '<p>-</p>\r\n', '/file/produk_hukum/686441082_produk_hukum.pdf', 2, '2021-06-16 10:38:36', '2021-07-21 10:31:37', 1, 1, 10),
(103, 11, '161', '2021-02-22', 'Keputusan Bupati Toba Nomor 161 Tahun 2021 tentang Petugas Operator Sistem Informasi Kredit Program Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1431493744_produk_hukum.pdf', 2, '2021-06-16 10:43:40', '2021-07-21 10:31:59', 1, 1, 10),
(104, 11, '175', '2021-03-15', 'Keputusan Bupati Toba Nomor 175 Tahun 2021 tentang Pembentukan Tim Terpadu Pencegahan dan Pemberantasan Penyalahgunaan dan Peredaran Gelap Narkotika dan Prekursor Narkotika di Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1212209911_produk_hukum.pdf', 2, '2021-06-16 10:54:32', '2021-07-21 10:32:39', 1, 1, 10),
(105, 11, '178', '2021-03-22', 'Keputusan Bupati Toba Nomor 178 Tahun 2021 tentang Pembentukan Tim Pelaksana Manajemen dan Rekayasa Lalu Lintas untuk Jaringan Jalan Kabupaten Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/1621656339_produk_hukum.pdf', 2, '2021-06-16 10:57:14', '2021-07-21 10:33:08', 1, 1, 10),
(106, 11, '187', '2021-03-22', 'Keputusan Bupati Toba Nomor 187 Tahun 2021 tentang Pembentukan Tim Audit dan Inspeksi Keselamatan Lalu Lintas dan Angkutan Jalan di Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/1973336493_produk_hukum.pdf', 2, '2021-06-16 10:59:29', '2021-07-21 10:33:39', 1, 1, 10),
(107, 11, '189', '2021-03-29', 'Keputusan Bupati Toba Nomor 189 Tahun 2021 tentang Pembentukan Tim Sosialisasi Pembinaan Kearsipan Bagi Aparat Pemerintah Desa Kabupaten Toba Tahun Anggaran 2021', '<p>-</p>\r\n', '/file/produk_hukum/526818546_produk_hukum.pdf', 2, '2021-06-16 11:01:41', '2021-07-21 10:34:16', 1, 1, 10),
(108, 11, '190', '2021-03-29', 'Keputusan Bupati Toba Nomor 190 Tahun 2021 tentang Pembentukan Tim Percepatan Penerapan Pola Pengelolaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1022985285_produk_hukum.pdf', 2, '2021-06-16 11:07:26', '2021-07-21 10:34:47', 1, 1, 10),
(109, 11, '209', '2021-03-30', 'Keputusan Bupati Toba Nomor 209 Tahun 2021 tentang Tim Verifikasi dan Sekretariat Tim Verifikasi Penyerahan Prasarana, Sarana dan Utilitas Perumahan dan Permukiman Pemerintah Kabupaten Toba', '<p>-</p>\r\n', '/file/produk_hukum/216190026_produk_hukum.pdf', 2, '2021-06-16 11:09:45', '2021-07-21 10:35:18', 1, 1, 10),
(110, 11, '210', '2021-03-30', 'Keputusan Bupati Toba Nomor 210 Tahun 2021 tentang Pembentukan Tim Percepatan dan Perluasan Digitalisasi Daerah Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/665204714_produk_hukum.pdf', 2, '2021-06-16 11:11:36', '2021-07-21 10:35:40', 1, 1, 10),
(111, 11, '272', '2021-04-28', 'Keputusan Bupati Toba Nomor 272 Tahun 2021 tentang Pembentukan Tim Terpadu Pengembangan Ternak Babi New Normal Kabupaten Toba Tahun 2021', '<p>-</p>\r\n', '/file/produk_hukum/1755375933_produk_hukum.pdf', 2, '2021-06-16 11:13:35', '2021-07-21 10:29:30', 1, 1, 10),
(112, 10, '21', '2020-05-14', 'Peraturan Bupati Kabupaten Toba Nomor 21 tahun 2020 tentang Petunjuk Teknis Pemberian Tunjangan Hari Raya Kepada Pegawai Negeri Sipil Yang Bersumber Dari Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Samosir Tahun Anggaran 2020', '<p>Peraturan Bupati Kabupaten Toba Nomor 21 tahun 2020 tentang Petunjuk Teknis Pemberian Tunjangan Hari Raya Kepada Pegawai Negeri Sipil Yang Bersumber Dari Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Samosir Tahun Anggaran 2020</p>\r\n', '/file/produk_hukum/1352722212_produk_hukum.pdf', 2, '2021-10-22 09:51:31', '2021-10-22 10:35:36', 1, 1, 0),
(113, 10, '22', '2020-05-11', 'Peraturan Bupati Toba Nomor 22 Tahun 2020 tentang Penetapan Dana Alokasi Umum Tambahan Bantuan Pendanaan Kelurahan Di Kabupaten Toba Tahun Anggaran 2020', '<p>Peraturan Bupati Toba Nomor 22 Tahun 2020 tentang Penetapan Dana Alokasi Umum Tambahan Bantuan Pendanaan Kelurahan Di Kabupaten Toba Tahun Anggaran 2020</p>\r\n', '/file/produk_hukum/254177584_produk_hukum.pdf', 2, '2021-10-22 09:54:46', '2021-10-22 10:31:48', 1, 1, 0),
(114, 10, '26', '2020-06-12', 'Perubahan Kedua  Atas Peraturan Bupati Toba Samosir Nomor 1 Tahun 2020 Tentang Tata Cara Pembagian Dan Penetapan Rincian Dana Desa di Kabupaten Toba Tahun Anggaran 2020 ', '<p>Perubahan Kedua&nbsp; Atas Peraturan Bupati Toba Samosir Nomor 1 Tahun 2020 Tentang Tata Cara Pembagian Dan Penetapan Rincian Dana Desa di Kabupaten Toba Tahun Anggaran 2020</p>\r\n', '/file/produk_hukum/249048181_produk_hukum.pdf', 2, '2021-10-22 10:02:59', '2021-10-22 10:02:59', 1, 1, 0),
(115, 10, '30', '2020-07-08', 'Peraturan Bupati Toba Nomor 30 Tahun 2020 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2021', '<p>Peraturan Bupati Toba Nomor 30 Tahun 2020 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2021</p>\r\n', '/file/produk_hukum/400690482_produk_hukum.pdf', 2, '2021-10-22 10:04:56', '2021-10-22 10:25:38', 1, 1, 10),
(116, 10, '31', '2020-07-27', 'Peraturan Bupati Toba Nomor 31 Tahun 2020 tentang Indikator Kinerja Utama Pemerinah Kabupaten Toba Tahun 2016 - 2021', '<p>Peraturan Bupati Toba Nomor 31 Tahun 2020 tentang Indikator Kinerja Utama Pemerinah Kabupaten Toba Tahun 2016 - 2021</p>\r\n', '/file/produk_hukum/672666717_produk_hukum.pdf', 2, '2021-10-22 10:07:18', '2021-10-22 10:27:18', 1, 1, 10),
(117, 10, '36', '2020-08-10', 'Peraturan Bupati Toba Nomor 36 Tahun 2020 tentang Petunjuk Teknis Pemberian Gaji Atau Penghasilan Ketiga Belas Kepada Pegawai Negeri Sipil Yang Bersumber Dari Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2020  ', '<p>Peraturan Bupati Toba Nomor 36&nbsp;Tahun 2020 tentang Petunjuk Teknis Pemberian Gaji Atau Penghasilan Ketiga Belas Kepada Pegawai Negeri Sipil Yang Bersumber Dari Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2020&nbsp;&nbsp;</p>\r\n', '/file/produk_hukum/1350075486_produk_hukum.pdf', 2, '2021-10-22 10:11:16', '2021-10-22 10:28:45', 1, 1, 0),
(118, 10, '2', '2020-01-14', 'Peraturan Bupati Toba Samosir Nomor 2 Tahun 2020 tentang Mekanisme Pelaksanaan Pembayaran Uang Persediaan, Ganti Uang Persediaan, dan Tambahan Uang Persediaan Atas Beban Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Samosir Tahun Anggaran 2020 ', '<p>Peraturan Bupati Toba Samosir Nomor 2 Tahun 2020 tentang Mekanisme Pelaksanaan Pembayaran Uang Persediaan, Ganti Uang Persediaan, dan Tambahan Uang Persediaan Atas Beban Anggaran Pendapatan dan Belanja Daerah Kabupaten Toba Samosir Tahun Anggaran 2020</p>\r\n', '/file/produk_hukum/1164256591_produk_hukum.pdf', 1, '2021-10-28 12:20:00', '2021-10-28 12:20:00', 1, 1, 0),
(119, 10, '3', '2020-01-14', 'Peraturan Bupati Toba Samosir Nomor 3 Tahun 2020 tentang Pendelegasian Kewenangan Perizinan dan Non Perizinan dari Bupati Toba Samosir Kepada Kepala Dinas Penanaman Modal dan Pelayanan Perizinan Terpadu Satu Pintu Kabupaten Toba Samosir ', '<p>Peraturan Bupati Toba Samosir Nomor 3 Tahun 2020 tentang Pendelegasian Kewenangan Perizinan dan Non Perizinan dari Bupati Toba Samosir Kepada Kepala Dinas Penanaman Modal dan Pelayanan Perizinan Terpadu Satu Pintu Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/307006289_produk_hukum.pdf', 2, '2021-10-28 12:25:40', '2021-10-28 12:25:40', 1, 1, 10),
(120, 10, '6', '2020-03-13', 'Peraturan Bupati Toba Samosir Nomor 6 Tahun 2020 tentang Perubahan Atas Peraturan Bupati Toba Samosir Nomor 36 Tahun 2014 tentang Sistem dan Prosedur Pengelolaan Keuangan Berbasisi Akrual Kabupaten Toba Samosir', '<p>Peraturan Bupati Toba Samosir Nomor 6 Tahun 2020 tentang Perubahan Atas Peraturan Bupati Toba Samosir Nomor 36 Tahun 2014 tentang Sistem dan Prosedur Pengelolaan Keuangan Berbasisi Akrual Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/142717017_produk_hukum.pdf', 2, '2021-10-28 12:29:29', '2021-10-28 12:29:29', 1, 1, 10),
(121, 10, '9', '2020-03-26', 'Peraturan Bupati Toba Samosir Nomor 9 Tahun 2020 tentang Pemberian Tambahan Penghasilan Pegawai Negeri Sipil dan Calon Pegawai Negeri Sipil di Lingkungan Pemerintah Kabupaten Toba Samosir Tahun Anggaran 2020', '<p>Peraturan Bupati Toba Samosir Nomor 9 Tahun 2020 tentang Pemberian Tambahan Penghasilan Pegawai Negeri Sipil dan Calon Pegawai Negeri Sipil di Lingkungan Pemerintah Kabupaten Toba Samosir Tahun Anggaran 2020</p>\r\n', '/file/produk_hukum/188526874_produk_hukum.pdf', 2, '2021-10-28 12:37:55', '2021-10-28 12:37:55', 1, 1, 0),
(122, 10, '10', '2020-03-26', 'Peraturan Bupati Toba Samosir Nomor 10 Tahun 2020 tentang Pedoman Penerapan Standar Pelayanan Minimal Kabupaten Toba Samosir', '<p>Peraturan Bupati Toba Samosir Nomor 10 Tahun 2020 tentang Pedoman Penerapan Standar Pelayanan Minimal Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/1631186679_produk_hukum.pdf', 2, '2021-10-28 12:41:12', '2021-10-28 12:41:12', 1, 1, 10),
(123, 10, '1', '2021-12-27', 'Peraturan Bupati Toba Nomor 1 Tahun 2021 tentang Mekanisme Pelaksanaan Pembayaran Uang Persediaan, Ganti Uang Persediaan, Dan Tambahan Uang Persediaan Atas Beban Anggaran Pendapatn dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2021 ', '<p>Peraturan Bupati Toba Nomor 1 Tahun 2021 tentang Mekanisme Pelaksanaan Pembayaran Uang Persediaan, Ganti Uang Persediaan, Dan Tambahan Uang Persediaan Atas Beban Anggaran Pendapatn dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2021&nbsp;</p>\r\n', '/file/produk_hukum/574812456_produk_hukum.pdf', 2, '2021-10-28 12:46:01', '2021-10-28 12:46:01', 1, 1, 10),
(124, 10, '3', '2021-02-05', 'Peraturan Bupati Toba Nomor 3 Tahun 2021 tentang Pedoman dan Penetapan Rincian Dana Desa di Kabupaten Toba Tahun Anggaran 2021', '<p>Peraturan Bupati Toba Nomor 3 Tahun 2021 tentang Pedoman dan Penetapan Rincian Dana Desa di Kabupaten Toba Tahun Anggaran 2021</p>\r\n', '/file/produk_hukum/781532684_produk_hukum.pdf', 2, '2021-10-28 12:48:51', '2021-10-28 12:48:51', 1, 1, 10),
(125, 10, '5', '2021-02-05', 'Peraturan Bupati Toba Nomor 5 Tahun 2021 tentang Penetapan Besaran Bagi Hasil Pajak dan Retrtibusi Daerah Kepada Pemerintah Desa Di Kabupaten Toba Tahun Anggaran 2021', '<p>Peraturan Bupati Toba Nomor 5 Tahun 2021 tentang Penetapan Besaran Bagi Hasil Pajak dan Retrtibusi Daerah Kepada Pemerintah Desa Di Kabupaten Toba Tahun Anggaran 2021</p>\r\n', '/file/produk_hukum/1113799089_produk_hukum.pdf', 2, '2021-10-28 12:51:10', '2021-10-28 12:51:10', 1, 1, 10),
(126, 10, '6', '2021-02-11', 'Peraturan Bupati Toba Nomor 6 Tahun 2021 tentang Konfirmasi Status Wajib Pajak Dalam Pemberian Layanan Publik Tertentu Di Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 6 Tahun 2021 tentang Konfirmasi Status Wajib Pajak Dalam Pemberian Layanan Publik Tertentu Di Kabupaten Toba</p>\r\n', '/file/produk_hukum/1149402724_produk_hukum.pdf', 2, '2021-10-28 12:54:12', '2021-10-28 12:54:12', 1, 1, 10),
(127, 10, '7', '2021-02-17', 'Peraturan Bupati Toba Nomor 7 Tahun 2021 tentang Pola Tata Kelola Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 7 Tahun 2021 tentang Pola Tata Kelola Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba</p>\r\n', '/file/produk_hukum/1694978916_produk_hukum.pdf', 2, '2021-10-28 13:40:17', '2021-10-28 13:40:17', 1, 1, 10),
(128, 10, '8', '2021-02-16', 'Peraturan Bupati Toba Nomor 8 Tahun 2021 tentang Pengelolaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba   ', '<p>Peraturan Bupati Toba Nomor 8 Tahun 2021 tentang Pengelolaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea Kabupaten Toba</p>\r\n', '/file/produk_hukum/953547625_produk_hukum.pdf', 2, '2021-10-28 13:43:45', '2021-10-28 13:43:45', 1, 1, 10),
(129, 10, '9', '2021-02-16', 'Peraturan Bupati Toba Nomor 9 Tahun 2021 tentang Lembaga Kemayarakatan Desa dan Lembaga Adat Desa Di Kabupaten Toba ', '<p>Peraturan Bupati Toba Nomor 9 Tahun 2021 tentang Lembaga Kemayarakatan Desa dan Lembaga Adat Desa Di Kabupaten Toba&nbsp;</p>\r\n', '/file/produk_hukum/34120270_produk_hukum.pdf', 2, '2021-10-28 13:45:47', '2021-10-28 13:45:47', 1, 1, 10),
(130, 10, '10', '2021-02-16', 'Peraturan Bupati Toba Nomor 10 Tahun 2021 tentang Petunjuk Pelaksanaan Pemungutan Retribusi Pengendalian Menara Telekomunikasi Di Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 10 Tahun 2021 tentang Petunjuk Pelaksanaan Pemungutan Retribusi Pengendalian Menara Telekomunikasi Di Kabupaten Toba</p>\r\n', '/file/produk_hukum/14846568_produk_hukum.pdf', 2, '2021-10-28 13:48:34', '2021-10-28 13:48:34', 1, 1, 10),
(131, 10, '12', '2021-05-05', 'Peraturan Bupati Toba Nomor 12 Tahun 2021 tentang Petunjuk Teknis Pelaksanaan Pemberian Tunjangan Hari Raya Dan Gaji Ketiga Belas Kepada Aparatur Negara Dan Penerima Tunjangan Yang Bersumber Dari Anggaran Yang Bersumber Dari Anggaran Pendapatan Dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2021', '<p>Peraturan Bupati Toba Nomor 12 Tahun 2021 tentang Petunjuk Teknis Pelaksanaan Pemberian Tunjangan Hari Raya Dan Gaji Ketiga Belas Kepada Aparatur Negara Dan Penerima Tunjangan Yang Bersumber Dari Anggaran Yang Bersumber Dari Anggaran Pendapatan Dan Belanja Daerah Kabupaten Toba Tahun Anggaran 2021</p>\r\n', '/file/produk_hukum/995622366_produk_hukum.pdf', 2, '2021-10-28 13:53:51', '2021-10-28 13:53:51', 1, 1, 10),
(132, 10, '20', '2021-07-09', 'Peraturan Bupati Toba Nomor 20 Tahun 2021 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2022', '<p>Peraturan Bupati Toba Nomor 20 Tahun 2021 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2022</p>\r\n', '/file/produk_hukum/556964582_produk_hukum.pdf', 2, '2021-10-28 13:56:00', '2021-10-28 14:20:41', 1, 1, 10),
(133, 10, '21', '2021-07-23', 'Peraturan Bupati Toba Nomor 21 Tahun 2021 tentang Perubahan Atas Peraturan Bupati Toba Nomor 30 Tahun 2020 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2021', '<p>Peraturan Bupati Toba Nomor 21 Tahun 2021 tentang Perubahan Atas Peraturan Bupati Toba Nomor 30 Tahun 2020 tentang Rencana Kerja Pemerintah Daerah Kabupaten Toba Tahun 2021</p>\r\n', '/file/produk_hukum/309166347_produk_hukum.pdf', 2, '2021-10-28 13:58:41', '2021-10-28 13:58:41', 1, 1, 10),
(134, 10, '23', '2021-09-01', 'Peraturan Bupati Toba Nomor 23 Tahun 2021 tentang Tata Cara Penganggaran, Pelaksanaan dan Penatausahaan, Pertanggungjawaban dan Pelaporan Serta Monitoring Dan Evaluasi Belanja Tidak  Terduga Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 23 Tahun 2021 tentang Tata Cara Penganggaran, Pelaksanaan dan Penatausahaan, Pertanggungjawaban dan Pelaporan Serta Monitoring Dan Evaluasi Belanja Tidak&nbsp; Terduga Kabupaten Toba</p>\r\n', '/file/produk_hukum/474621786_produk_hukum.pdf', 2, '2021-10-28 14:02:01', '2021-10-28 14:02:01', 1, 1, 10),
(135, 10, '24', '2021-09-09', 'Peraturan Bupati Toba Nomor 24 Tahun 2021 tentang Perubahan Keempat Atas Peraturan Bupati Toba Samosir Nomor 36 Tahun 2015 tentang Petunjuk Teknis Pelaksanaan Peraturan Daerah Kabupaten Toba Samosir Nomor 4 Tahun 2015 tentang Pemilihan Kepala Desa', '<p>Peraturan Bupati Toba Nomor 24 Tahun 2021 tentang Perubahan Keempat Atas Peraturan Bupati Toba Samosir Nomor 36 Tahun 2015 tentang Petunjuk Teknis Pelaksanaan Peraturan Daerah Kabupaten Toba Samosir Nomor 4 Tahun 2015 tentang Pemilihan Kepala Desa</p>\r\n', '/file/produk_hukum/1175974078_produk_hukum.pdf', 2, '2021-10-28 14:06:16', '2021-10-28 14:06:16', 1, 1, 10),
(136, 10, '26', '2021-09-24', 'Peraturan Bupati Toba Nomor 26 Tahun 2021 tentang Pedoman Penerapan Absensi Online Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba ', '<p>Peraturan Bupati Toba Nomor 26 Tahun 2021 tentang Pedoman Penerapan Absensi Online Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1347452490_produk_hukum.pdf', 2, '2021-10-28 14:11:38', '2021-10-28 14:11:38', 1, 1, 10),
(137, 10, '28', '2021-10-05', 'Peraturan Bupati Toba Nomor 28 Tahun 2021 tentang Pedoman Penyusutan Arsip Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 28 Tahun 2021 tentang Pedoman Penyusutan Arsip Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1686327376_produk_hukum.pdf', 2, '2021-10-28 14:14:26', '2021-10-28 14:14:26', 1, 1, 10),
(138, 10, '29', '2021-10-05', 'Peraturan Bupati Toba Nomor 29 Tahun 2021 tentang Pedoman Sistem Klasifikasi Keamanan dan Akses Arsip Dinamis Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 29 Tahun 2021 tentang Pedoman Sistem Klasifikasi Keamanan dan Akses Arsip Dinamis Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1147612997_produk_hukum.pdf', 2, '2021-10-28 14:18:51', '2021-10-28 14:18:51', 1, 1, 10),
(139, 10, '30', '2021-10-05', 'Peraturan Bupati Toba Nomor 30 Tahun 2021 tentang Pedoman Klasifikasi Arsip Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 30 Tahun 2021 tentang Pedoman Klasifikasi Arsip Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/955704246_produk_hukum.pdf', 2, '2021-10-28 14:25:05', '2021-10-28 14:25:05', 1, 1, 10),
(140, 10, '33', '2021-10-05', 'Peraturan Bupati Toba Nomor 33 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Sekretariat Daerah Kabupaten Toba  ', '<p>Peraturan Bupati Toba Nomor 33 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Sekretariat Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1259144873_produk_hukum.pdf', 2, '2021-11-29 11:48:05', '2021-11-29 11:48:05', 1, 1, 10),
(141, 10, '34', '2021-10-05', 'Peraturan Bupati Toba Nomor 34 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Sekretariat Dewan Perwakilan Rakyat Daerah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 34 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Sekretariat Dewan Perwakilan Rakyat Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1780565730_produk_hukum.pdf', 2, '2021-11-29 11:50:46', '2021-11-29 11:50:46', 1, 1, 10),
(142, 10, '35', '2021-10-05', 'Peraturan Bupati Toba Nomor 35 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Inspektorat Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 35 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Inspektorat Kabupaten Toba</p>\r\n', '/file/produk_hukum/1938176935_produk_hukum.pdf', 2, '2021-11-29 11:52:55', '2021-11-29 11:52:55', 1, 1, 10),
(143, 10, '36', '2021-10-05', 'Peraturan Bupati Toba Nomor 36 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pendidikan, Pemuda dan Olahraga Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 36 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pendidikan, Pemuda dan Olahraga Kabupaten Toba</p>\r\n', '/file/produk_hukum/1761754319_produk_hukum.pdf', 2, '2021-11-29 12:01:28', '2021-11-29 12:01:28', 1, 1, 10),
(144, 10, '37', '2021-10-05', 'Peraturan Bupati Toba Nomor 37 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Kesehatan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 37 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Kesehatan Kabupaten Toba</p>\r\n', '/file/produk_hukum/96520508_produk_hukum.pdf', 2, '2021-11-29 12:03:07', '2021-11-29 12:03:07', 1, 1, 10),
(145, 10, '38', '2021-10-05', 'Peraturan Bupati Toba Nomor 38 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pekerjaan Umum dan Tata Ruang Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 38 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pekerjaan Umum dan Tata Ruang Kabupaten Toba</p>\r\n', '/file/produk_hukum/1525173339_produk_hukum.pdf', 2, '2021-11-29 12:05:50', '2021-11-29 12:05:50', 1, 1, 10),
(146, 10, '53', '2021-10-05', 'Peraturan Bupati Toba Nomor 53 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pertanian Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 53 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pertanian Kabupaten Toba</p>\r\n', '/file/produk_hukum/520752223_produk_hukum.pdf', 2, '2021-12-02 12:39:31', '2021-12-02 12:39:31', 1, 1, 10),
(147, 10, '54', '2021-10-05', 'Peraturan Bupati Toba Nomor 54 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Perencanaan Pembangunan, Penelitian dan Pengembangan Daerah Kabupaten Toba  ', '<p>Peraturan Bupati Toba Nomor 54 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Perencanaan Pembangunan, Penelitian dan Pengembangan Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1681894191_produk_hukum.pdf', 2, '2021-12-02 12:44:17', '2021-12-02 12:44:17', 1, 1, 10),
(148, 10, '55', '2021-10-05', 'Peraturan Bupati Toba Nomor 55 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Pengelolaan Keuangan dan Aset Daerah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 55&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Pengelolaan Keuangan dan Aset Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/621235872_produk_hukum.pdf', 2, '2021-12-02 12:46:33', '2021-12-02 12:46:33', 1, 1, 10),
(149, 10, '39', '2021-10-05', 'Peraturan Bupati Toba Nomor 39 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perumahan dan Kawasan Permukiman Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 39 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perumahan dan Kawasan Permukiman Kabupaten Toba</p>\r\n', '/file/produk_hukum/1739775036_produk_hukum.pdf', 2, '2021-12-02 12:51:03', '2021-12-02 12:51:03', 1, 1, 10),
(150, 10, '40', '2021-10-05', 'Peraturan Bupati Toba Nomor 40 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Satuan Polisi Pamong Praja Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 40&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Satuan Polisi Pamong Praja Kabupaten Toba</p>\r\n', '/file/produk_hukum/580765049_produk_hukum.pdf', 2, '2021-12-02 12:52:50', '2021-12-02 12:52:50', 1, 1, 10),
(151, 10, '41', '2021-10-05', 'Peraturan Bupati Toba Nomor 41 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Sosial Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 41 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Sosial Kabupaten Toba</p>\r\n', '/file/produk_hukum/362430575_produk_hukum.pdf', 2, '2021-12-02 12:54:44', '2021-12-02 12:54:44', 1, 1, 10),
(152, 10, '42', '2021-10-05', 'Peraturan Bupati Toba Nomor 42 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pemberdayaan Masyarakat, Desa, Perempuan dan Perlindungan Anak Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 42 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pemberdayaan Masyarakat, Desa, Perempuan dan Perlindungan Anak Kabupaten Toba</p>\r\n', '/file/produk_hukum/1187979980_produk_hukum.pdf', 2, '2021-12-02 12:59:21', '2021-12-02 12:59:21', 1, 1, 10),
(153, 10, '43', '2021-10-05', 'Peraturan Bupati Toba Nomor 43 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pengendalian Penduduk dan Keluarga Berencana Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 43&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Pengendalian Penduduk dan Keluarga Berencana Kabupaten Toba</p>\r\n', '/file/produk_hukum/1945212460_produk_hukum.pdf', 2, '2021-12-02 13:01:37', '2021-12-02 13:01:37', 1, 1, 10),
(154, 10, '44', '2021-10-05', 'Peraturan Bupati Toba Nomor 44 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja DinasKetahanan Pangan dan Perikanan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 44 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja DinasKetahanan Pangan dan Perikanan Kabupaten Toba</p>\r\n', '/file/produk_hukum/343488213_produk_hukum.pdf', 2, '2021-12-02 13:04:53', '2021-12-02 13:04:53', 1, 1, 10),
(155, 10, '45', '2021-10-05', 'Peraturan Bupati Toba Nomor 45 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Lingkungan Hidup Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 45 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Lingkungan Hidup Kabupaten Toba</p>\r\n', '/file/produk_hukum/1204501347_produk_hukum.pdf', 2, '2021-12-02 13:06:46', '2021-12-02 13:06:46', 1, 1, 10),
(156, 10, '46', '2021-10-05', 'Peraturan Bupati Toba Nomor 46 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Kependudukan dan Pencatatan Sipil Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 46 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Kependudukan dan Pencatatan Sipil Kabupaten Toba</p>\r\n', '/file/produk_hukum/1962746995_produk_hukum.pdf', 2, '2021-12-02 13:08:37', '2021-12-02 13:08:37', 1, 1, 10),
(157, 10, '47', '2021-10-05', 'Peraturan Bupati Toba Nomor 47 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perhubungan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 47&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perhubungan Kabupaten Toba</p>\r\n', '/file/produk_hukum/1082071770_produk_hukum.pdf', 2, '2021-12-02 13:10:11', '2021-12-02 13:10:11', 1, 1, 10),
(158, 10, '48', '2021-10-05', 'Peraturan Bupati Toba Nomor 48 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Komunikasi dan Informatika Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 48 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Komunikasi dan Informatika Kabupaten Toba</p>\r\n', '/file/produk_hukum/919411144_produk_hukum.pdf', 2, '2021-12-02 13:17:36', '2021-12-02 13:17:36', 1, 1, 10),
(159, 10, '49', '2021-10-05', 'Peraturan Bupati Toba Nomor 49 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Koperaasi, Usaha Kecil Menengah, Perdagangan, dan Perindustrian Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 49&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Koperaasi, Usaha Kecil Menengah, Perdagangan, dan Perindustrian Kabupaten Toba</p>\r\n', '/file/produk_hukum/1850894765_produk_hukum.pdf', 2, '2021-12-02 13:20:39', '2021-12-02 13:20:39', 1, 1, 10),
(160, 10, '50', '2021-10-05', 'Peraturan Bupati Toba Nomor 50 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Penanaman Modal, Pelayanan Terpadu Satu Pintu dan Ketenagakerjaan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 50 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Penanaman Modal, Pelayanan Terpadu Satu Pintu dan Ketenagakerjaan Kabupaten Toba</p>\r\n', '/file/produk_hukum/74498917_produk_hukum.pdf', 2, '2021-12-02 13:24:23', '2021-12-02 13:24:23', 1, 1, 10),
(161, 10, '52', '2021-10-05', 'Peraturan Bupati Toba Nomor 52 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perpustakaan dan Kearsipan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 52 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Dinas Perpustakaan dan Kearsipan Kabupaten Toba</p>\r\n', '/file/produk_hukum/764447763_produk_hukum.pdf', 2, '2021-12-02 13:31:31', '2021-12-02 13:31:31', 1, 1, 10),
(162, 10, '56', '2021-10-05', 'Peraturan Bupati Toba Nomor 56 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Pengelolaan Pendapatan Daerah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 56 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Pengelolaan Pendapatan Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1068307253_produk_hukum.pdf', 2, '2021-12-02 13:34:54', '2021-12-02 13:34:54', 1, 1, 10),
(163, 10, '57', '2021-10-05', 'Peraturan Bupati Toba Nomor 57 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 57 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Toba</p>\r\n', '/file/produk_hukum/407043016_produk_hukum.pdf', 2, '2021-12-02 13:37:27', '2021-12-02 13:37:27', 1, 1, 10),
(164, 10, '58', '2021-10-05', 'Peraturan Bupati Toba Nomor 58 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Kesatuan Bangsa dan Politik Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 58&nbsp;Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Kesatuan Bangsa dan Politik Kabupaten Toba</p>\r\n', '/file/produk_hukum/1950790700_produk_hukum.pdf', 2, '2021-12-02 13:44:26', '2021-12-02 13:44:26', 1, 1, 10),
(165, 10, '59', '2021-10-05', 'Peraturan Bupati Toba Nomor 59 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Penanggulangan Bencana Daerah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 59 Tahun 2021 tentang Kedudukan, Susunan Organisasi, Tugas dan Fungsi, Serta Tata Kerja Badan Penanggulangan Bencana Daerah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1971696793_produk_hukum.pdf', 2, '2021-12-02 13:46:59', '2021-12-02 13:46:59', 1, 1, 10),
(166, 9, '2', '2020-02-14', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2020 tentang Penyelenggaraan Bantuan Hukum Untuk Masyarakat Miskin  ', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2020 tentang Penyelenggaraan Bantuan Hukum Untuk Masyarakat Miskin&nbsp;</p>\r\n', '/file/produk_hukum/1824475719_produk_hukum.pdf', 2, '2022-09-08 16:23:56', '2022-09-08 16:23:56', 1, 1, 10);
INSERT INTO `jdih_produk_hukum` (`id`, `id_kategori`, `nomor`, `tahun`, `judul`, `isi`, `file`, `id_status_publish`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(167, 9, '3', '2020-02-14', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2020 tentang Penyelenggaraan Forum Konsultasi Publik ', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2020 tentang Penyelenggaraan Forum Konsultasi Publik&nbsp;</p>\r\n', '/file/produk_hukum/1385426906_produk_hukum.pdf', 2, '2022-09-08 16:26:21', '2022-09-08 16:26:21', 1, 1, 10),
(168, 9, '11', '2020-12-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2020 tentang Perlindungan dan Pemberdayaan Perempuan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2020 tentang Perlindungan dan Pemberdayaan Perempuan</p>\r\n', '/file/produk_hukum/1483079375_produk_hukum.pdf', 2, '2022-09-08 16:28:20', '2022-09-08 16:28:20', 1, 1, 10),
(169, 9, '12', '2020-12-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2020 tentang Penyelenggaraan Pendidikan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2020 tentang Penyelenggaraan Pendidikan</p>\r\n', '/file/produk_hukum/1253097238_produk_hukum.pdf', 2, '2022-09-08 16:30:13', '2022-09-08 16:30:13', 1, 1, 10),
(170, 10, '62', '2021-10-11', 'Peraturan Bupati Toba Nomor 62 Tahun 2021 tentang Penyelenggaraan Pengembangan Anak Usia Dini Holistik-Integratif', '<p>Peraturan Bupati Toba Nomor 62 Tahun 2021 tentang Penyelenggaraan Pengembangan Anak Usia Dini Holistik-Integratif</p>\r\n', '/file/produk_hukum/2065679244_produk_hukum.pdf', 2, '2022-09-13 10:47:09', '2022-09-13 10:47:09', 1, 1, 10),
(171, 10, '66', '2021-11-05', 'Peraturan Bupati Toba Nomor 66 Tahun 2021 tentang Jasa Pelayanan Dengan Pola Remunerasi Pada Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea', '<p>Peraturan Bupati Toba Nomor 66 Tahun 2021 tentang Jasa Pelayanan Dengan Pola Remunerasi Pada Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea</p>\r\n', '/file/produk_hukum/1331713735_produk_hukum.pdf', 2, '2022-09-13 10:51:29', '2022-09-13 10:51:29', 1, 1, 10),
(172, 10, '67', '2021-11-05', 'Peraturan Bupati Toba Nomor 67 Tahun 2021 tentang Pedoman Pengadaan, Pengangkatan, Pemberhentian Pegawai Non Aparatur Sipil Negara Pada Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea', '<p>Peraturan Bupati Toba Nomor 67 Tahun 2021 tentang Pedoman Pengadaan, Pengangkatan, Pemberhentian Pegawai Non Aparatur Sipil Negara Pada Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea</p>\r\n', '/file/produk_hukum/1874497365_produk_hukum.pdf', 2, '2022-09-13 10:55:34', '2022-09-13 10:55:34', 1, 1, 10),
(173, 10, '68', '2021-11-05', 'Peraturan Bupati Toba Nomor 68 Tahun 2021 tentang Organisasi dan Tata Kerja Dewan Pengawas dan Sekretaris Dewan Pengawas Badan Layanan Umum Daerah Pada Rumah Sakit Umum Daerah Porsea', '<p>Peraturan Bupati Toba Nomor 68 Tahun 2021 tentang Organisasi dan Tata Kerja Dewan Pengawas dan Sekretaris Dewan Pengawas Badan Layanan Umum Daerah Pada Rumah Sakit Umum Daerah Porsea</p>\r\n', '/file/produk_hukum/1770708425_produk_hukum.pdf', 2, '2022-09-13 10:59:19', '2022-09-13 10:59:19', 1, 1, 10),
(174, 10, '69', '2021-11-05', 'Peraturan Bupati Toba Nomor 69 Tahun 2021 tentang Pedoman Penatausahaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea', '<p>Peraturan Bupati Toba Nomor 69 Tahun 2021 tentang Pedoman Penatausahaan Keuangan Badan Layanan Umum Daerah Rumah Sakit Umum Daerah Porsea</p>\r\n', '/file/produk_hukum/4758601_produk_hukum.pdf', 2, '2022-09-13 11:02:14', '2022-09-13 11:02:14', 1, 1, 10),
(175, 10, '70', '2021-11-05', 'Peraturan Bupati Toba Nomor 70 Tahun 2021 tentang Program Pendidikan Anak Usia Dini Satu Tahun Pra Sekolah Dasar Dalam Rangka Implementasi Standar Teknis Pelayanan Pendidikan Di Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 70 Tahun 2021 tentang Program Pendidikan Anak Usia Dini Satu Tahun Pra Sekolah Dasar Dalam Rangka Implementasi Standar Teknis Pelayanan Pendidikan Di Kabupaten Toba</p>\r\n', '/file/produk_hukum/1299995940_produk_hukum.pdf', 2, '2022-09-13 11:05:48', '2022-09-13 11:05:48', 1, 1, 10),
(176, 10, '71', '2021-11-05', 'Peraturan Bupati Toba Nomor 71 Tahun 2021 tentang  Petunjuk Teknis Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2019 tentang Penyelenggaraan Pendidikan Anak Usia Dini ', '<p>Peraturan Bupati Toba Nomor 71 Tahun 2021 tentang&nbsp; Petunjuk Teknis Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2019 tentang Penyelenggaraan Pendidikan Anak Usia Dini</p>\r\n', '/file/produk_hukum/115203988_produk_hukum.pdf', 2, '2022-09-13 11:09:39', '2022-09-13 11:09:39', 1, 1, 10),
(177, 9, '6', '2016-12-22', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2016 tentang Penyertaan Modal Pemerintah Daerah Pada PT. Bank Sumut  ', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2016 tentang Penyertaan Modal Pemerintah Daerah Pada PT. Bank Sumut</p>\r\n', '/file/produk_hukum/1153377211_produk_hukum.pdf', 2, '2022-09-13 11:23:43', '2022-09-13 11:23:43', 1, 1, 10),
(178, 9, '5', '2016-11-07', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2016 tentang Pembentukan Perangkat Daerah Kabupaten Toba Samosir', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 5&nbsp;Tahun 2016 tentang Pembentukan Perangkat Daerah Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/1884690033_produk_hukum.pdf', 2, '2022-09-13 11:26:04', '2023-07-13 10:38:57', 1, 1, 10),
(179, 9, '4', '2016-11-07', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 4 Tahun 2016 tentang Pengangkatan dan Pemberhentian Perangkat Desa', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 4 Tahun 2016 tentang Pengangkatan dan Pemberhentian Perangkat Desa</p>\r\n', '/file/produk_hukum/1267713956_produk_hukum.pdf', 2, '2022-09-13 11:28:13', '2022-09-13 11:28:13', 1, 1, 10),
(180, 9, '3', '2016-10-24', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2016 tentang Rencana Pembangunan Jangka Menengah Daerah Tahun 2016-2021', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2016 tentang Rencana Pembangunan Jangka Menengah Daerah Tahun 2016-2021</p>\r\n', '/file/produk_hukum/1107138793_produk_hukum.pdf', 2, '2022-09-13 11:39:20', '2022-09-13 11:39:20', 1, 1, 0),
(181, 10, '14', '2017-04-12', 'Peraturan Bupati Toba Samosir Nomor 14 Tahun 2017 tentang Uraian Tugas Pokok dan Fungsi Unit Pelaksana Teknis Dinas Kesehatan Kabupaten Toba Samosir', '<p>Peraturan Bupati Toba Samosir Nomor 14 Tahun 2017 tentang Uraian Tugas Pokok dan Fungsi Unit Pelaksana Teknis Dinas Kesehatan Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/687155073_produk_hukum.pdf', 2, '2022-09-13 11:51:56', '2022-09-13 11:51:56', 1, 1, 10),
(182, 9, '3', '2022-05-27', 'Peraturan Daerah Kabupaten Toba Nomor 3 Tahun 2022 tentang Pengelolaan Keuangan Daerah', '<p>Peraturan Daerah Kabupaten Toba Nomor 3 Tahun 2022 tentang Pengelolaan Keuangan Daerah</p>\r\n', '/file/produk_hukum/942004111_produk_hukum.pdf', 2, '2022-10-10 10:53:19', '2022-10-10 10:53:19', 1, 1, 10),
(183, 9, '2', '2022-05-17', 'Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2022 tentang Rencana Induk Pembangunan Kepariwisataan Kabupaten Toba Tahun 2022 - 2025', '<p>Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2022 tentang Rencana Induk Pembangunan Kepariwisataan Kabupaten Toba Tahun 2022 - 2025.</p>\r\n', '/file/produk_hukum/701713116_produk_hukum.pdf', 2, '2022-10-10 10:55:49', '2022-11-11 12:37:52', 1, 1, 10),
(184, 9, '13', '2018-12-31', 'Peraturan Daerah Kabupaten Toba Nomor 13 Tahun 2018 tentang Ketentraman dan Ketertiban Umum', '<p>Peraturan Daerah Kabupaten Toba Nomor 13 Tahun 2018 tentang Ketentraman dan Ketertiban Umum</p>\r\n', '/file/produk_hukum/1349938012_produk_hukum.pdf', 2, '2022-10-10 10:58:36', '2022-10-10 10:58:36', 1, 1, 10),
(185, 9, '11', '2018-12-31', 'Peraturan Daerah Kabupaten Toba Nomor 11 Tahun 2018 tentang Penyelenggaraan dan Pengelolaan Perpustakaan', '<p>Peraturan Daerah Kabupaten Toba Nomor 11 Tahun 2018 tentang Penyelenggaraan dan Pengelolaan Perpustakaan</p>\r\n', '/file/produk_hukum/209763103_produk_hukum.pdf', 2, '2022-10-10 11:00:00', '2022-10-10 11:00:00', 1, 1, 10),
(186, 9, '20', '2012-05-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 20 Tahun 2012 tentang Pencabutan 17 (tujuh belas) Peraturan Daerah Kabupaten Toba Samosir', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 20 Tahun 2012 tentang Pencabutan 17 (tujuh belas) Peraturan Daerah Kabupaten Toba Samosir</p>\r\n', '/file/produk_hukum/1314548826_produk_hukum.pdf', 2, '2022-10-10 11:05:48', '2022-10-10 11:05:48', 1, 1, 10),
(187, 9, '19', '2012-05-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 19 Tahun 2012 tentang Penyelenggaraan Administrasi Kependudukan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 19 Tahun 2012 tentang Penyelenggaraan Administrasi Kependudukan</p>\r\n', '/file/produk_hukum/1537645338_produk_hukum.pdf', 2, '2022-10-10 11:07:19', '2022-10-10 11:07:19', 1, 1, 10),
(188, 9, '18', '2012-05-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 18 Tahun 2012 tentang Sumbangan Pihak Ketiga Kepada Pemerintah Daerah', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 18 Tahun 2012 tentang Sumbangan Pihak Ketiga Kepada Pemerintah Daerah</p>\r\n', '/file/produk_hukum/576749494_produk_hukum.pdf', 2, '2022-10-10 11:08:45', '2022-10-10 11:08:45', 1, 1, 10),
(189, 9, '17', '2012-05-29', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 17 Tahun 2012 tentang Pengelolaan Keuangan Desa', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 17 Tahun 2012 tentang Pengelolaan Keuangan Desa</p>\r\n', '/file/produk_hukum/1732322381_produk_hukum.pdf', 2, '2022-10-10 11:10:35', '2022-10-10 11:10:35', 1, 1, 10),
(190, 9, '16', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 16 Tahun 2012 tentang Retribusi Izin Usaha Perikanan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 16 Tahun 2012 tentang Retribusi Izin Usaha Perikanan</p>\r\n', '/file/produk_hukum/1671304995_produk_hukum.pdf', 2, '2022-10-10 11:12:35', '2022-10-10 11:12:35', 1, 1, 10),
(191, 9, '15', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 15 Tahun 2012 tentang Retribusi Izin Trayek', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 15 Tahun 2012 tentang Retribusi Izin Trayek</p>\r\n', '/file/produk_hukum/1872284047_produk_hukum.pdf', 2, '2022-10-10 11:13:58', '2022-10-10 11:13:58', 1, 1, 10),
(192, 9, '14', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 14 Tahun 2012 tentang Retribusi Izin Gangguan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 14 Tahun 2012 tentang Retribusi Izin Gangguan</p>\r\n', '/file/produk_hukum/24646677_produk_hukum.pdf', 2, '2022-10-10 11:15:24', '2022-10-10 11:15:24', 1, 1, 10),
(193, 9, '13', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 13 Tahun 2012 tentang Retribusi Izin Tempat Penjualan Minuman Beralkohol', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 13 Tahun 2012 tentang Retribusi Izin Tempat Penjualan Minuman Beralkohol</p>\r\n', '/file/produk_hukum/628272302_produk_hukum.pdf', 2, '2022-10-10 11:16:53', '2022-10-10 11:16:53', 1, 1, 10),
(194, 9, '12', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2012 tentang Retribusi Tempat Rekreasi dan Olahraga', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2012 tentang Retribusi Tempat Rekreasi dan Olahraga</p>\r\n', '/file/produk_hukum/2055412925_produk_hukum.pdf', 2, '2022-10-10 11:19:30', '2022-10-10 11:19:30', 1, 1, 10),
(195, 9, '12', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2012 tentang Retribusi Tempat Rekreasi dan Olahraga', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 12 Tahun 2012 tentang Retribusi Tempat Rekreasi dan Olahraga</p>\r\n', '/file/produk_hukum/77929219_produk_hukum.pdf', 2, '2022-10-10 11:19:47', '2022-10-10 11:19:47', 1, 1, 10),
(196, 9, '11', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2012 tentang Retribusi Pelayanan Kepelabuhanan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 11 Tahun 2012 tentang Retribusi Pelayanan Kepelabuhanan</p>\r\n', '/file/produk_hukum/1788302648_produk_hukum.pdf', 2, '2022-10-10 11:21:01', '2022-10-10 11:21:01', 1, 1, 10),
(197, 9, '10', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 10 Tahun 2012 tentang Retribusi Rumah Potong Hewan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 10 Tahun 2012 tentang Retribusi Rumah Potong Hewan</p>\r\n', '/file/produk_hukum/1569530796_produk_hukum.pdf', 2, '2022-10-10 11:24:23', '2022-10-10 11:24:23', 1, 1, 10),
(198, 9, '9', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 9 Tahun 2012 tentang Retribusi Terminal', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 9 Tahun 2012 tentang Retribusi Terminal</p>\r\n', '/file/produk_hukum/670839423_produk_hukum.pdf', 2, '2022-10-10 11:30:19', '2022-10-10 11:30:19', 1, 1, 10),
(199, 9, '8', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 8 Tahun 2012 tentang Retribusi Pengendalian Menara Telekomunikasi', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 8 Tahun 2012 tentang Retribusi Pengendalian Menara Telekomunikasi</p>\r\n', '/file/produk_hukum/1217299481_produk_hukum.pdf', 2, '2022-10-10 11:32:23', '2022-10-10 11:32:23', 1, 1, 10),
(200, 9, '7', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 7 Tahun 2012 tentang Retribusi Penyediaan Dan/ Atau Penyedotan Kakus', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 7 Tahun 2012 tentang Retribusi Penyediaan Dan/ Atau Penyedotan Kakus</p>\r\n', '/file/produk_hukum/1585615546_produk_hukum.pdf', 2, '2022-10-10 11:33:39', '2022-10-10 11:33:39', 1, 1, 10),
(201, 9, '6', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2012 tentang Retribusi Pemeriksaan Alat Pemadam Kebakaran', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 6 Tahun 2012 tentang Retribusi Pemeriksaan Alat Pemadam Kebakaran</p>\r\n', '/file/produk_hukum/1128027292_produk_hukum.pdf', 2, '2022-10-10 11:34:40', '2022-10-10 11:34:40', 1, 1, 10),
(202, 9, '5', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2012 tentang Retribusi Pengujian Kendaraan Bermotor', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 5 Tahun 2012 tentang Retribusi Pengujian Kendaraan Bermotor</p>\r\n', '/file/produk_hukum/1360174977_produk_hukum.pdf', 2, '2022-10-10 11:35:40', '2022-10-10 11:35:40', 1, 1, 10),
(203, 9, '4', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor4 Tahun 2012 tentang Retribusi Pelayanan Parkir Di Tepi Jalan Umum ', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor4 Tahun 2012 tentang Retribusi Pelayanan Parkir Di Tepi Jalan Umum&nbsp;</p>\r\n', '/file/produk_hukum/1583716843_produk_hukum.pdf', 2, '2022-10-10 11:36:54', '2022-10-10 11:36:54', 1, 1, 10),
(204, 9, '3', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2012 tentang Retribusi Penggantian Biaya Cetak Kartu Tanda Penduduk Dan Akta Catatan Sipil ', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 3 Tahun 2012 tentang Retribusi Penggantian Biaya Cetak Kartu Tanda Penduduk Dan Akta Catatan Sipil&nbsp;</p>\r\n', '/file/produk_hukum/590661260_produk_hukum.pdf', 2, '2022-10-10 11:38:26', '2022-10-10 11:38:26', 1, 1, 10),
(205, 9, '2', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2012 tentang Retribusi Pelayanan Kesehatan', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 2 Tahun 2012 tentang Retribusi Pelayanan Kesehatan</p>\r\n', '/file/produk_hukum/688805691_produk_hukum.pdf', 2, '2022-10-10 11:39:26', '2022-10-10 11:39:26', 1, 1, 10),
(206, 9, '1', '2012-02-28', 'Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2012 tentang Pajak Daerah', '<p>Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2012 tentang Pajak Daerah</p>\r\n', '/file/produk_hukum/453630821_produk_hukum.pdf', 2, '2022-10-10 11:40:30', '2022-10-10 11:40:30', 1, 1, 10),
(207, 10, '15', '2022-05-17', 'Peraturan Bupati Toba Nomor 15 Tahun 2022 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 15 Tahun 2022 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/541387355_produk_hukum.pdf', 1, '2022-10-11 10:09:35', '2023-02-13 12:09:58', 1, 1, 10),
(208, 10, '10', '2022-03-31', 'Peraturan Bupati Toba Nomor 10 Tahun 2022 tentang Pedoman Penerapan Presensi Online Bagi Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 10 Tahun 2022 tentang Pedoman Penerapan Presensi Online Bagi Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/955207772_produk_hukum.pdf', 2, '2022-10-11 10:13:16', '2022-10-11 10:13:16', 1, 1, 10),
(209, 10, '24', '2022-07-15', 'Peraturan Bupati Toba Nomor 24 Tahun 2022 tentang Penyelenggaraan Sertifikat Elektronik Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 24 Tahun 2022 tentang Penyelenggaraan Sertifikat Elektronik Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1740182222_produk_hukum.pdf', 2, '2022-10-14 11:58:40', '2022-10-14 11:58:40', 1, 1, 10),
(210, 10, '20', '2022-06-09', 'Peraturan Bupati Toba Nomor 20 Tahun 2022 tentang Pedoman Penerimaan Peserta Didik Baru Pada Taman Kanak-Kanak, Sekolah Dasar, dan Sekolah Menengah Pertama Di Lingkungan Dinas Pendidikan Pemuda dan Olahraga Kabupaten Toba Tahun Pelajaran 2022/2023 ', '<p>Peraturan Bupati Toba Nomor 20 Tahun 2022 tentang Pedoman Penerimaan Peserta Didik Baru Pada Taman Kanak-Kanak, Sekolah Dasar, dan Sekolah Menengah Pertama Di Lingkungan Dinas Pendidikan Pemuda dan Olahraga Kabupaten Toba Tahun Pelajaran 2022/2023</p>\r\n', '/file/produk_hukum/1608603133_produk_hukum.pdf', 1, '2022-10-14 12:01:26', '2023-08-04 09:20:48', 1, 1, 0),
(211, 10, '19', '2022-06-08', 'Peraturan Bupati Toba Nomor 19 Tahun 2022 tentang Inovasi Daerah Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 19 Tahun 2022 tentang Inovasi Daerah Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/835678440_produk_hukum.pdf', 2, '2022-10-14 12:02:53', '2022-10-14 12:02:53', 1, 1, 10),
(212, 10, '14', '2022-05-17', 'Peraturan Bupati Toba Nomor 14 Tahun 2022 tentang Konvergensi Pencegahan Dan Penanggulangan Stunting Di Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 14 Tahun 2022 tentang Konvergensi Pencegahan Dan Penanggulangan Stunting Di Kabupaten Toba</p>\r\n', '/file/produk_hukum/873205885_produk_hukum.pdf', 2, '2022-10-14 12:04:42', '2022-10-14 12:04:42', 1, 1, 10),
(213, 10, '13', '2022-04-26', 'Peraturan Bupati Toba Nomor 13 Tahun 2022 tentang Pendelegasian Kewenangan Penyelenggaraan Perijinan Dan Non Perijinan Kepada Kepala Dinas Penanamanan Modal, Pelayanan Terpadu Satu Pintu Dan Ketenagakerjaan Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 13 Tahun 2022 tentang Pendelegasian Kewenangan Penyelenggaraan Perijinan Dan Non Perijinan Kepada Kepala Dinas Penanamanan Modal, Pelayanan Terpadu Satu Pintu Dan Ketenagakerjaan Kabupaten Toba</p>\r\n', '/file/produk_hukum/589101272_produk_hukum.pdf', 2, '2022-10-14 12:07:35', '2022-10-14 12:07:35', 1, 1, 10),
(214, 10, '9', '2022-03-31', 'Peraturan Bupati Toba Nomor 9 Tahun 2022 tentang Penetapan Besaran Bagi Hasil Pajak Daerah dan Retribusi Daerah Kepada Pemerintah Desa Di Kabupaten Toba Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 9 Tahun 2022 tentang Penetapan Besaran Bagi Hasil Pajak Daerah dan Retribusi Daerah Kepada Pemerintah Desa Di Kabupaten Toba Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/638178176_produk_hukum.pdf', 2, '2022-10-14 12:10:11', '2022-10-14 12:10:11', 1, 1, 10),
(215, 10, '7', '2022-03-31', 'Peraturan Bupati Toba Nomor 7 Tahun 2022 tentang Penetapan dan Pedoman Pelaksanaan Alokasi Dana Desa Di Kabupaten Toba Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 7 Tahun 2022 tentang Penetapan dan Pedoman Pelaksanaan Alokasi Dana Desa Di Kabupaten Toba Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/1025866839_produk_hukum.pdf', 2, '2022-10-14 12:11:45', '2022-10-14 12:11:45', 1, 1, 10),
(216, 10, '4', '2022-02-04', 'Peraturan Bupati Toba Nomor 4 Tahun 2022 tentang Kedudukan, Susunan Organisasi, Tugas Dan Fungsi Perangkat Daerah', '<p>Peraturan Bupati Toba Nomor 4 Tahun 2022 tentang Kedudukan, Susunan Organisasi, Tugas Dan Fungsi Perangkat Daerah</p>\r\n', '/file/produk_hukum/1411122566_produk_hukum.pdf', 2, '2022-10-14 12:15:09', '2022-10-14 12:15:09', 1, 1, 10),
(218, 9, '1', '2022-03-28', 'Peraturan Daerah Kabupaten Toba Nomor 1 Tahun 2022 tentang Penambahan Penyertaan Modal Pemerintah Daerah Pada PT. Bank Sumut', '<p>Peraturan Daerah Kabupaten Toba Nomor 1 Tahun 2022 tentang Penambahan Penyertaan Modal Pemerintah Daerah Pada PT. Bank Sumut</p>\r\n', '/file/produk_hukum/325908130_produk_hukum.pdf', 2, '2022-11-11 12:35:24', '2022-11-11 12:35:24', 1, 1, 10),
(219, 10, '8', '2022-03-31', 'Peraturan Bupati Toba Nomor 8 Tahun 2022 tentang Penyaluran dan Prioritas Penggunaan Dana Desa Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 8 Tahun 2022 tentang Penyaluran dan Prioritas Penggunaan Dana Desa Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/1103923351_produk_hukum.pdf', 2, '2022-11-11 13:35:57', '2022-12-02 11:32:52', 1, 1, 10),
(220, 10, '33', '2022-10-24', 'Peraturan Bupati Toba Nomor 33 Tahun 2022 tentang Perubahan Atas Peraturan Bupati Toba Nomor 7 Tahun 2022 tentang Penetapan dan Pedoman Pelaksanaan Alokasi Dana Desa Di Kabupaten Toba Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 33 Tahun 2022 tentang Perubahan Atas Peraturan Bupati Toba Nomor 7 Tahun 2022 tentang Penetapan dan Pedoman Pelaksanaan Alokasi Dana Desa Di Kabupaten Toba Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/810199094_produk_hukum.pdf', 2, '2022-11-11 16:11:13', '2022-11-11 16:11:13', 1, 1, 10),
(221, 10, '32', '2022-10-14', 'Peraturan Bupati Toba Nomor 32 Tahun 2022 tentang Perubahan Atas Peraturan Bupati Toba Nomor 15 Tahun 2022 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2022', '<p>Peraturan Bupati Toba Nomor 32 Tahun 2022 tentang Perubahan Atas Peraturan Bupati Toba Nomor 15 Tahun 2022 Tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2022</p>\r\n', '/file/produk_hukum/1499178239_produk_hukum.pdf', 1, '2022-11-11 16:14:30', '2023-02-13 12:09:37', 1, 1, 10),
(222, 9, '2', '2021-03-15', 'Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2021 tentang Perubahan Kedua Atas Peraturan Daerah Nomor 4 Tahun 2015 tentang Pemilihan Kepala Desa', '<p>Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2021 tentang Perubahan Kedua Atas Peraturan Daerah Nomor 4 Tahun 2015 tentang Pemilihan Kepala Desa</p>\r\n', '/file/produk_hukum/1814511034_produk_hukum.pdf', 2, '2023-07-13 10:47:13', '2023-07-13 10:47:13', 1, 1, 10),
(223, 9, '2', '2023-05-05', 'Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2023 tentang Penyediaan, Penyerahan, dan Pengelolaan Prasarana, Sarana, dan Utilitas Umum Perumahan.', '<p>Peraturan Daerah Kabupaten Toba Nomor 2 Tahun 2023 tentang Penyediaan, Penyerahan, dan Pengelolaan Prasarana, Sarana, dan Utilitas Umum Perumahan.</p>\r\n', '/file/produk_hukum/1430492673_produk_hukum.pdf', 2, '2023-07-13 11:16:28', '2023-07-13 11:16:28', 1, 1, 10),
(224, 9, '3', '2023-05-05', 'Peraturan Daerah Kabupaten Toba Nomor 3 Tahun 2023 tentang Penyelenggaraan Program Jaminan Sosial Ketenagakerjaan.', '<p>Peraturan Daerah Kabupaten Toba Nomor 3 Tahun 2023 tentang Penyelenggaraan Program Jaminan Sosial Ketenagakerjaan.</p>\r\n', '/file/produk_hukum/1664299294_produk_hukum.pdf', 2, '2023-07-13 11:19:07', '2023-07-13 11:19:07', 1, 1, 10),
(225, 9, '1', '2023-01-30', 'Peraturan Daerah Kabupaten Toba Nomor 1 Tahun 2023 tentang Perubahan Nama Desa Bius Gu Barat Menjadi Desa Lumban Sirait Desa Gu di Kecamatan Parmaksian.', '<p>Peraturan Daerah Kabupaten Toba Nomor 1 Tahun 2023 tentang Perubahan Nama Desa Bius Gu Barat Menjadi Desa Lumban Sirait Desa Gu di Kecamatan Parmaksian.</p>\r\n', '/file/produk_hukum/530646296_produk_hukum.pdf', 2, '2023-07-13 11:29:23', '2023-07-13 11:29:23', 1, 1, 10),
(226, 10, '4', '2023-01-16', 'Peraturan Bupati Toba Nomor 4 Tahun 2023 tentang Penetapan Besaran Bagi Hasil Pajak Daerah dan Retribusi Daerah Kepada Pemerintah Desa di Kabupaten Toba Tahun Anggaran 2023', '<p>Peraturan Bupati Toba Nomor 4 Tahun 2023 tentang Penetapan Besaran Bagi Hasil Pajak Daerah dan Retribusi Daerah Kepada Pemerintah Desa di Kabupaten Toba Tahun Anggaran 2023</p>\r\n', '/file/produk_hukum/2136560432_produk_hukum.pdf', 2, '2023-08-04 08:45:04', '2023-08-04 08:45:04', 1, 1, 10),
(227, 10, '7', '2023-01-24', 'Peraturan Bupati Toba Nomor 7 Tahun 2023 tentang Pengelolaan Aset Desa Di Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 7 Tahun 2023 tentang Pengelolaan Aset Desa Di Kabupaten Toba</p>\r\n', '/file/produk_hukum/1621153879_produk_hukum.pdf', 2, '2023-08-04 08:47:10', '2023-08-04 08:47:10', 1, 1, 10),
(228, 10, '8', '2023-01-24', 'Peraturan Bupati Toba Nomor 8 Tahun 2023 tentang Rencana Kontingensi Menghadapi Bahaya Gempa Bumi Dengan Bahaya Ikutan Longsor Di Kabupaten Toba Tahun 2023-2025', '<p>Peraturan Bupati Toba Nomor 8 Tahun 2023 tentang Rencana Kontingensi Menghadapi Bahaya Gempa Bumi Dengan Bahaya Ikutan Longsor Di Kabupaten Toba Tahun 2023-2025</p>\r\n', '/file/produk_hukum/1978894173_produk_hukum.pdf', 2, '2023-08-04 08:49:57', '2023-08-04 08:49:57', 1, 1, 10),
(229, 10, '13', '2023-04-03', 'Peraturan Bupati Toba Nomor 13 Tahun 2023 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2023', '<p>Peraturan Bupati Toba Nomor 13 Tahun 2023 tentang Pemberian Tambahan Penghasilan Pegawai Aparatur Sipil Negara Di Lingkungan Pemerintah Kabupaten Toba Tahun Anggaran 2023</p>\r\n', '/file/produk_hukum/1074358058_produk_hukum.pdf', 2, '2023-08-04 08:52:46', '2023-08-04 08:52:46', 1, 1, 10),
(230, 10, '19', '2023-04-11', 'Peraturan Bupati Toba Nomor 19 Tahun 2023 tentang Piagam Audit Internal Di Lingkungan Pemerintah Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 19 Tahun 2023 tentang Piagam Audit Internal Di Lingkungan Pemerintah Kabupaten Toba</p>\r\n', '/file/produk_hukum/1056256003_produk_hukum.pdf', 2, '2023-08-04 08:54:56', '2023-08-04 08:54:56', 1, 1, 10),
(231, 10, '20', '2023-04-11', 'Peraturan Bupati Toba Nomor 20 Tahun 2023 tentang Pengelolaan Kota Cerdas (Smart City) Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 20 Tahun 2023 tentang Pengelolaan Kota Cerdas (Smart City) Kabupaten Toba</p>\r\n', '/file/produk_hukum/16860906_produk_hukum.pdf', 2, '2023-08-04 08:56:58', '2023-08-04 08:56:58', 1, 1, 10),
(232, 10, '24', '2023-05-29', 'Peraturan Bupati Toba Nomor 24 Tahun 2023 tentang Pedoman Pemberian Bantuan Pendidikan', '<p>Peraturan Bupati Toba Nomor 24 Tahun 2023 tentang Pedoman Pemberian Bantuan Pendidikan</p>\r\n', '/file/produk_hukum/188235055_produk_hukum.pdf', 2, '2023-08-04 08:58:54', '2023-08-04 08:58:54', 1, 1, 10),
(233, 10, '25', '2023-05-29', 'Peraturan Bupati Toba Nomor 25 Tahun 2023 tentang Pedoman Penerimaan Peserta Didik Baru Pada Taman Kanak-Kanak, Sekolah Dasar, dan Sekolah Menengah Pertama Di Lingkungan Dinas Pendidikan, Pemuda, dan Olahraga Kabupaten Toba', '<p>Peraturan Bupati Toba Nomor 25 Tahun 2023 tentang Pedoman Penerimaan Peserta Didik Baru Pada Taman Kanak-Kanak, Sekolah Dasar, dan Sekolah Menengah Pertama Di Lingkungan Dinas Pendidikan, Pemuda, dan Olahraga Kabupaten Toba</p>\r\n', '/file/produk_hukum/721240754_produk_hukum.pdf', 2, '2023-08-04 09:03:27', '2023-08-04 09:03:27', 1, 1, 10),
(234, 10, '32', '2023-07-10', 'Peraturan Bupati Toba Nomor 32 Tahun 2023 tentang Tata Cara Pemberian Bantuan Hukum Untuk Masyarakat Miskin', '<p>Peraturan Bupati Toba Nomor 32 Tahun 2023 tentang Tata Cara Pemberian Bantuan Hukum Untuk Masyarakat Miskin</p>\r\n', '/file/produk_hukum/664683186_produk_hukum.pdf', 2, '2023-08-04 09:06:29', '2023-08-04 09:06:29', 1, 1, 10),
(235, 10, '33', '2023-07-10', 'Peraturan Bupati Toba Nomor 33 Tahun 2023 tentang Petunjuk Teknis Pemberian Bantuan Keuangan Khusus Dana Pemilihan Kepala Desa', '<p>Peraturan Bupati Toba Nomor 33 Tahun 2023 tentang Petunjuk Teknis Pemberian Bantuan Keuangan Khusus Dana Pemilihan Kepala Desa</p>\r\n', '/file/produk_hukum/1741074153_produk_hukum.pdf', 2, '2023-08-04 09:09:33', '2023-08-04 09:09:33', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jdih_rancangan_ph`
--

CREATE TABLE IF NOT EXISTS `jdih_rancangan_ph` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nomor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` date NOT NULL,
  `judul` text COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status_publish` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jdih_rancangan_ph`
--

INSERT INTO `jdih_rancangan_ph` (`id`, `id_kategori`, `nomor`, `tahun`, `judul`, `isi`, `file`, `id_status_publish`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(3, 9, '1', '2019-05-06', 'Rancangan Peraturan Daerah Kabupaten Toba Samosir Nomor 1 Tahun 2019 tentang Pengaturan Pola Tanam dan Tertib Tanam', '<p>-</p>\r\n', '/file/rancangan_produk_hukum/1895935206rancangan_produk_hukum.docx', 1, '2021-09-20 09:38:26', '2021-09-20 17:34:08', 1, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_log_outcome`
--

CREATE TABLE IF NOT EXISTS `lppd_log_outcome` (
  `id` int(11) NOT NULL,
  `id_outcome` int(11) NOT NULL,
  `id_master_status` int(11) NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_log_outcome`
--

INSERT INTO `lppd_log_outcome` (`id`, `id_outcome`, `id_master_status`, `keterangan`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 1, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(2, 2, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(3, 3, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(4, 4, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(5, 1, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(6, 2, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(7, 3, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(8, 4, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(9, 77, 2, 'Data kurang lengkap', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_log_output`
--

CREATE TABLE IF NOT EXISTS `lppd_log_output` (
  `id` int(11) NOT NULL,
  `id_output` int(11) NOT NULL,
  `id_master_status` int(11) NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_log_output`
--

INSERT INTO `lppd_log_output` (`id`, `id_output`, `id_master_status`, `keterangan`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 1, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(2, 2, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(3, 3, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(4, 4, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(5, 5, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(6, 6, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(7, 7, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(8, 8, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(9, 9, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(10, 10, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(11, 11, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(12, 12, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(13, 13, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(14, 14, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(15, 15, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(16, 16, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(17, 17, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(18, 18, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(19, 19, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(20, 20, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(21, 21, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(22, 22, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(23, 23, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(24, 24, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(25, 25, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(26, 26, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(27, 27, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(28, 28, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(29, 29, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(30, 30, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(31, 31, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(32, 32, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(33, 33, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(34, 34, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(35, 35, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(36, 36, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(37, 37, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(38, 38, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(39, 39, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(40, 40, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(41, 41, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(42, 42, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(43, 43, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(44, 44, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(45, 45, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(46, 46, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(47, 47, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(48, 48, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(49, 49, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(50, 50, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(51, 51, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(52, 52, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(53, 53, 1, 'Telah lengkap', NULL, NULL, NULL, NULL, 10),
(54, 1, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(55, 2, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(56, 3, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(57, 4, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(58, 5, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(59, 6, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(60, 7, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(61, 8, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(62, 9, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(63, 10, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(64, 11, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(65, 12, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(66, 13, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(67, 14, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(68, 15, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(69, 16, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(70, 17, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(71, 18, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(72, 19, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(73, 20, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(74, 21, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(75, 22, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(76, 23, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(77, 24, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(78, 25, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(79, 26, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(80, 27, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(81, 28, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(82, 29, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(83, 30, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(84, 31, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(85, 32, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(86, 33, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(87, 34, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(88, 35, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(89, 36, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(90, 37, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(91, 38, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(92, 39, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(93, 40, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(94, 41, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(95, 42, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(96, 43, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(97, 44, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(98, 45, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(99, 46, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(100, 47, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(101, 48, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(102, 49, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(103, 50, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(104, 51, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(105, 52, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(106, 53, 1, 'Data telah lengkap', NULL, NULL, NULL, NULL, 10),
(107, 426, 2, 'Data kurang lengkap', NULL, NULL, NULL, NULL, 10),
(108, 427, 2, 'Data kurang lengkap', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_master_opd`
--

CREATE TABLE IF NOT EXISTS `lppd_master_opd` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_master_opd`
--

INSERT INTO `lppd_master_opd` (`id`, `nama`, `singkatan`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(2, 'DINAS PENDIDIKAN', 'dispen', NULL, NULL, NULL, NULL, 10),
(3, 'DINAS KESEHATAN', 'dinkes', NULL, NULL, NULL, NULL, 10),
(4, 'RSU DAERAH PORSEA', 'rsud', NULL, NULL, NULL, NULL, 10),
(6, 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG', 'pupr', NULL, NULL, NULL, NULL, 10),
(7, 'DINAS PERUMAHAN RAKYAT DAN KAWASAN PERMUKIMAN', 'perkim', NULL, NULL, NULL, NULL, 10),
(8, 'SATUAN POLISI PAMONG PRAJA', 'satpolpp', NULL, NULL, NULL, NULL, 10),
(9, 'BADAN KESATUAN BANGSA DAN POLITIK', 'polpp', NULL, NULL, NULL, NULL, 10),
(10, 'DINAS SOSIAL', 'dinsos', NULL, NULL, NULL, NULL, 10),
(11, 'DINAS TENAGA KERJA', 'disnaker', NULL, NULL, NULL, NULL, 10),
(12, 'DINAS KETAHANAN PANGAN', 'ketapang', NULL, NULL, NULL, NULL, 10),
(13, 'DINAS LINGKUNGAN HIDUP', 'lh', NULL, NULL, NULL, NULL, 10),
(14, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', 'dispenduk', NULL, NULL, NULL, NULL, 10),
(15, 'DINAS PEMBERDAYAAN MASYARAKAT, DESA, PEREMPUAN DAN', 'permendes', NULL, NULL, NULL, NULL, 10),
(16, 'DINAS PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', 'bkkbn', NULL, NULL, NULL, NULL, 10),
(17, 'DINAS PERHUBUNGAN', 'dishub', NULL, NULL, NULL, NULL, 10),
(18, 'DINAS KOMUNIKASI DAN INFORMATIKA', 'kominfo', NULL, NULL, NULL, NULL, 10),
(20, 'DINAS PENANAMAN MODAL DAN PELAYANAN PERIZINAN TERP', 'bppt', NULL, NULL, NULL, NULL, 10),
(22, 'DINAS PERPUSTAKAAN DAN KEARSIPAN', 'perpustakaan', NULL, NULL, NULL, NULL, 10),
(23, 'DINAS PARIWISATA DAN KEBUDAYAAN', 'dispar', NULL, NULL, NULL, NULL, 10),
(24, 'DINAS PERTANIAN DAN PERIKANAN', 'pertanian', NULL, NULL, NULL, NULL, 10),
(25, 'DINAS PERDAGANGAN, PERINDUSTRIAN DAN KOPERASI USAH', 'disperindag', NULL, NULL, NULL, NULL, 10),
(28, 'SEKRETARIAT DAERAH', 'Sekda', NULL, NULL, NULL, NULL, 10),
(29, 'SEKRETARIAT DPRD', 'sekwan', NULL, NULL, NULL, NULL, 10),
(30, 'KECAMATAN BALIGE', 'camat-balige', NULL, NULL, NULL, NULL, 10),
(31, 'KECAMATAN TAMPAHAN', 'camat-tampahan', NULL, NULL, NULL, NULL, 10),
(32, 'KECAMATAN LAGUBOTI', 'camat-laguboti', NULL, NULL, NULL, NULL, 10),
(33, 'KECAMATAN HABINSARAN', 'camat-habinsaran', NULL, NULL, NULL, NULL, 10),
(34, 'KECAMATAN BORBOR', 'camat-borbor', NULL, NULL, NULL, NULL, 10),
(35, 'KECAMATAN NASSAU', 'camat-nassau', NULL, NULL, NULL, NULL, 10),
(36, 'KECAMATAN SILAEN', 'camat-silaen', NULL, NULL, NULL, NULL, 10),
(37, 'KECAMATAN SIGUMPAR', 'camat-sigumpar', NULL, NULL, NULL, NULL, 10),
(38, 'KECAMATAN PORSEA', 'camat-porsea', NULL, NULL, NULL, NULL, 10),
(39, 'KECAMATAN PINTU POHAN MERANTI', 'camat-pintupohan', NULL, NULL, NULL, NULL, 10),
(40, 'KECAMATAN SIANTAR NARUMONDA', 'camat-siantarnarumonda', NULL, NULL, NULL, NULL, 10),
(41, 'KECAMATAN PARMAKSIAN', 'camat-parmaksian', NULL, NULL, NULL, NULL, 10),
(42, 'KECAMATAN LUMBAN JULU', 'camat-lumbanjulu', NULL, NULL, NULL, NULL, 10),
(43, 'KECAMATAN ULUAN', 'camat-uluan', NULL, NULL, NULL, NULL, 10),
(44, 'KECAMATAN AJIBATA', 'camat-ajibata', NULL, NULL, NULL, NULL, 10),
(45, 'KECAMATAN BONATUA LUNASI', 'camat-bonatualunasi', NULL, NULL, NULL, NULL, 10),
(46, 'BADAN PENANGGULANGAN BENCANA DAERAH', 'penanggulangan-bencana', NULL, NULL, NULL, NULL, 10),
(47, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH', 'bappeda', NULL, NULL, NULL, NULL, 10),
(48, 'INSPEKTORAT DAERAH', 'inspektorat', NULL, NULL, NULL, NULL, 10),
(49, 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', 'dipenloka', NULL, NULL, NULL, NULL, 10),
(50, 'BADAN KEPEGAWAIAN DAERAH', 'bkd', NULL, NULL, NULL, NULL, 10),
(51, 'TOBA', 'toba', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_master_status`
--

CREATE TABLE IF NOT EXISTS `lppd_master_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_master_status`
--

INSERT INTO `lppd_master_status` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 'Diterima', NULL, NULL, NULL, NULL, 10),
(2, 'Perbaikan', NULL, NULL, NULL, NULL, 10),
(3, 'Review', NULL, NULL, NULL, NULL, 10),
(4, '-', NULL, NULL, NULL, NULL, 10),
(5, 'Terkirim', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_master_status_riwayat`
--

CREATE TABLE IF NOT EXISTS `lppd_master_status_riwayat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_master_status_riwayat`
--

INSERT INTO `lppd_master_status_riwayat` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 'Aktif', NULL, NULL, NULL, NULL, 10),
(2, 'Riwayat', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_master_urusan`
--

CREATE TABLE IF NOT EXISTS `lppd_master_urusan` (
  `id` int(11) NOT NULL,
  `id_master_opd` int(11) NOT NULL,
  `id_status_riwayat` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_master_urusan`
--

INSERT INTO `lppd_master_urusan` (`id`, `id_master_opd`, `id_status_riwayat`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 2, 1, 'PENDIDIKAN', NULL, NULL, NULL, NULL, 10),
(2, 3, 1, 'KESEHATAN', NULL, NULL, NULL, NULL, 10),
(3, 6, 1, 'PEKERJAAN UMUM', NULL, NULL, NULL, NULL, 10),
(4, 7, 1, 'PERUMAHAN RAKYAT', NULL, NULL, NULL, NULL, 10),
(5, 8, 1, 'KETENTERAMAN, KETERTIBAN UMUM DAN PERLINDUNGAN MAS', NULL, NULL, NULL, NULL, 10),
(6, 10, 1, 'SOSIAL', NULL, NULL, NULL, NULL, 10),
(7, 11, 1, 'KETENAGAKERJAAN', NULL, NULL, NULL, NULL, 10),
(8, 15, 1, 'PERLINDUNGAN PEREMPUAN DAN PERLINDUNGAN ANAK', NULL, NULL, NULL, NULL, 10),
(9, 12, 1, 'PANGAN', NULL, NULL, NULL, NULL, 10),
(10, 28, 1, 'PERTANAHAN', NULL, NULL, NULL, NULL, 10),
(11, 13, 1, 'LINGKUNGAN HIDUP', NULL, NULL, NULL, NULL, 10),
(12, 14, 1, 'ADMINISTRASI KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL, NULL, NULL, 10),
(13, 15, 1, 'PEMBERDAYAAN MASYARAKAT DAN DESA', NULL, NULL, NULL, NULL, 10),
(14, 16, 1, 'PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', NULL, NULL, NULL, NULL, 10),
(15, 17, 1, 'PERHUBUNGAN', NULL, NULL, NULL, NULL, 10),
(16, 18, 1, 'KOMUNIKASI DAN INFORMATIKA', NULL, NULL, NULL, NULL, 10),
(17, 25, 1, 'KOPERASI, USAHA KECIL DAN MENENGAH', NULL, NULL, NULL, NULL, 10),
(18, 20, 1, 'PENANAMAN MODAL', NULL, NULL, NULL, NULL, 10),
(19, 2, 1, 'KEPEMUDAAN DAN OLAH RAGA', NULL, NULL, NULL, NULL, 10),
(20, 25, 1, 'KEPEMUDAAN DAN OLAH RAGA', NULL, NULL, NULL, NULL, 10),
(21, 9, 1, 'KEPEMUDAAN DAN OLAH RAGA', NULL, NULL, NULL, NULL, 10),
(22, 18, 1, 'STATISTIK', NULL, NULL, NULL, NULL, 10),
(23, 18, 1, 'PERSANDIAN', NULL, NULL, NULL, NULL, 10),
(24, 23, 1, 'KEBUDAYAAN', NULL, NULL, NULL, NULL, 10),
(25, 22, 1, 'PERPUSTAKAAN', NULL, NULL, NULL, NULL, 10),
(26, 22, 1, 'KEARSIPAN', NULL, NULL, NULL, NULL, 10),
(27, 24, 1, 'KELAUTAN DAN PERIKANAN', NULL, NULL, NULL, NULL, 10),
(28, 23, 1, 'PARIWISATA', NULL, NULL, NULL, NULL, 10),
(29, 24, 1, 'PERTANIAN', NULL, NULL, NULL, NULL, 10),
(30, 25, 1, 'ENERGI SUMBER DAYA MINERAL', NULL, NULL, NULL, NULL, 10),
(31, 25, 1, 'PERDAGANGAN', NULL, NULL, NULL, NULL, 10),
(32, 25, 1, 'PERINDUSTRIAN', NULL, NULL, NULL, NULL, 10),
(33, 49, 1, 'PERENCANAAN DAN KEUANGAN', NULL, NULL, NULL, NULL, 10),
(34, 48, 1, 'PERENCANAAN DAN KEUANGAN', NULL, NULL, NULL, NULL, 10),
(35, 28, 1, 'PENGADAAN', NULL, NULL, NULL, NULL, 10),
(36, 50, 1, 'KEPEGAWAIAN', NULL, NULL, NULL, NULL, 10),
(37, 49, 1, 'MANAJEMEN KEUANGAN', NULL, NULL, NULL, NULL, 10),
(38, 49, 1, 'TRANSPARANSI DAN PARTISIPASI PUBLIK', NULL, NULL, NULL, NULL, 10),
(39, 49, 1, 'PENGADAAN', NULL, NULL, NULL, NULL, 10),
(40, 28, 1, 'TRANSPARANSI DAN PARTISIPASI PUBLIK', NULL, NULL, NULL, NULL, 10),
(41, 7, 1, 'PEKERJAAN UMUM', NULL, NULL, NULL, NULL, 10),
(42, 20, 1, 'PEKERJAAN UMUM', NULL, NULL, NULL, NULL, 10),
(43, 10, 1, 'PERUMAHAN RAKYAT', NULL, NULL, NULL, NULL, 10),
(44, 46, 1, 'KETENTERAMAN, KETERTIBAN UMUM DAN PERLINDUNGAN MAS', NULL, NULL, NULL, NULL, 10),
(45, 24, 1, 'PERDAGANGAN', NULL, NULL, NULL, NULL, 10),
(48, 20, 1, 'PERTANAHAN', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_outcome`
--

CREATE TABLE IF NOT EXISTS `lppd_outcome` (
  `id` int(11) NOT NULL,
  `id_master_urusan` int(11) NOT NULL,
  `id_master_status` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_outcome`
--

INSERT INTO `lppd_outcome` (`id`, `id_master_urusan`, `id_master_status`, `nama`, `bukti`, `hasil`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 1, 4, 'Tingkat Partisipasi Warga Negara usia 5-6 tahun yang berpartisipasi dalam PAUD', '', '', NULL, NULL, NULL, NULL, 10),
(2, 1, 4, 'Tingkat partisipasi warga negara usia 7-12 tahun yang berpartisipasi dalam pendidikan dasar', '', '', NULL, NULL, NULL, NULL, 10),
(3, 1, 4, 'Tingkat partisipasi warga negara usia 13-15 tahun yang berpartisipasi dalam pendidikan menengah ', '', '', NULL, NULL, NULL, NULL, 10),
(4, 1, 4, 'Tingkat Partisipasi Warga Negara Usia 7-18 Tahun yang belum menyelesaikan pendidikan dasar dan menengah yang berpartisipasi dalam pendidikan kesetaraan', '', '', NULL, NULL, NULL, NULL, 10),
(5, 2, 4, 'Rasio Daya Tampung Rumah Sakit Rujukan', '', '', NULL, NULL, NULL, NULL, 10),
(6, 2, 4, 'Persentase RS Rujukan Kabupaten yang terakreditasi', '', '', NULL, NULL, NULL, NULL, 10),
(7, 2, 4, 'Persentase Ibu Hamil mendaptkan pelayanan kesehatan ibu hamil', '', '', NULL, NULL, NULL, NULL, 10),
(8, 2, 4, 'Persentase Ibu Bersalin mendapat pelayanan persalinan', '', '', NULL, NULL, NULL, NULL, 10),
(9, 2, 4, 'Persentase Bayi baru lahir mendapatkan pelayanan kesehatan bayi baru lahir', '', '', NULL, NULL, NULL, NULL, 10),
(10, 2, 4, 'Cakupan Pelayanan Balita sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(11, 2, 4, 'Persentase Anak Usia Pendidikan Dasar yang mendaptkan pelayanan kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(12, 2, 4, 'Persentase Orang Usia 15-59 tahun mendapatkan skrining kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(13, 2, 4, 'Persentase Warga Negara Usia 60 Tahun ke atas mendaptkan skrining kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(14, 2, 4, 'Persentase Penderita Hipertensi yang mendaptkan pelayanan kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(15, 2, 4, 'Persentase Penderita DM yang mendaptkan pelayanan kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(16, 2, 4, 'Persentase ODGJ Berat yang mendapatkan pelayanan kesehatan Jiwa sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(17, 2, 4, 'Persentase orang terduga TBC yang mendapatkan pelayanan TBC sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(18, 2, 4, 'Persentase orang dengan resiko terinfeksi HIV yang mendapatkan pelayanan deteksi dini HIV sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(19, 3, 4, 'Rasio luas kawasan pemukiman rawan banjir yang terlindungi oleh infrastruktur pengendalian banjir di WS Kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(20, 3, 4, 'Rasio luas kawasan permukiman sepanjang pantai rawan abrasi, erosi, dan akresi yang terlindungi oleh infrastruktur pengaman pantai di WS Kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(21, 3, 4, 'Rasio luas daerah irigasi kewenangan Kabupaten yang dilayani oleh jaringan irigasi', '', '', NULL, NULL, NULL, NULL, 10),
(22, 41, 4, 'Persentase Jumlah rumah tangga yang mendapatkan akses terhadap air minum melalui SPAM jaringan perpipaan dan bukan jaringan perpipaan terlindungi terhadap rumah tangga di seluruh kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(23, 41, 4, 'Persentase jumlah rumah tangga yang memperoleh layanan pengolahan air limbah domestik', '', '', NULL, NULL, NULL, NULL, 10),
(24, 42, 4, 'Rasio Kepatuhan IMB Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(25, 3, 4, 'Tingkat kemantapan jalan kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(26, 3, 4, 'Rasio Tenaga Operator/teknis/analisis yang memiliki sertifikat kompetensi', '', '', NULL, NULL, NULL, NULL, 10),
(27, 3, 4, 'Rasio Proyek yang menjadi kewenangan pengawasannya tanpa kecelakaan konstruksi', '', '', NULL, NULL, NULL, NULL, 10),
(28, 43, 4, 'Penyediaan dan Rehabilitasi rumah Layak Huni bagi korban bencana kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(29, 4, 4, 'Fasilitasi Penyediaan Rumah Layak Huni bagi Masyarakat terdampak relokasi program', '', '', NULL, NULL, NULL, NULL, 10),
(30, 4, 4, 'Persentase kawasan permukiman kumuh dibawah 10 Ha di kabupatenyang ditangani', '', '', NULL, NULL, NULL, NULL, 10),
(31, 4, 4, 'Berkurangnya jumlah unit RTLH', '', '', NULL, NULL, NULL, NULL, 10),
(32, 4, 4, 'Jumlah Perumahan yang sudan dilengkapi PSU', '', '', NULL, NULL, NULL, NULL, 10),
(33, 5, 4, 'Persentase Gangguan Trantibum yang dapat diselesaikan', '', '', NULL, NULL, NULL, NULL, 10),
(34, 5, 4, 'Persentase Perda dan Perkada  yang ditegakkan', '', '', NULL, NULL, NULL, NULL, 10),
(35, 44, 4, 'Jumlah Warga Negara yang memperoleh layanan informasi Rawan bencana', '', '', NULL, NULL, NULL, NULL, 10),
(36, 44, 4, 'Jumlah warga negara yang memperoleh layanan pencegahan dan kesiapsiagaan terhadap bencana', '', '', NULL, NULL, NULL, NULL, 10),
(37, 44, 4, 'Jumlah Warga Negara yang memperoleh Layanan Penyelamatan dan Evakuasi Korban Bencana', '', '', NULL, NULL, NULL, NULL, 10),
(38, 5, 4, 'Persentase Pelayanan Penyelamatan dan Evakuasi korban kebakaran', '', '', NULL, NULL, NULL, NULL, 10),
(39, 5, 4, 'Waktu tanggap atau (Respon Time) Penanganan Kebakaran ', '', '', NULL, NULL, NULL, NULL, 10),
(40, 6, 4, 'Persentase penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan gelandangan pengemis yang terpenuhi kebutuhan dasarnya di luar panti (indikator SPM)', '', '', NULL, NULL, NULL, NULL, 10),
(41, 6, 4, 'Persentase Korban Bencana Alam dan Sosial yang terpenuhi kebutuhan dasarnya pada saat dan setelah tanggap darurat bencana daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(42, 7, 4, 'Persentase kegiatan yang dilaksanakan yang mengacu ke rencana tenaga kerja', '', '', NULL, NULL, NULL, NULL, 10),
(43, 7, 4, 'Persentase tenaga kerja bersertifikat kompetensi', '', '', NULL, NULL, NULL, NULL, 10),
(44, 7, 4, 'Tingkat Produktivitas Tenaga Kerja', '', '', NULL, NULL, NULL, NULL, 10),
(45, 7, 4, 'Persentase perusahaan yang menerapkan tata Kelola kerja yang layak (PP/PKB, LKS Bipartit, Struktur Skala Upah, dan terdaftar peserta BPJS Ketenagakerjaan)', '', '', NULL, NULL, NULL, NULL, 10),
(46, 7, 4, 'Persentase tenaga kerja yang ditempatkan (dalam dan luar negeri) melalui mekanisme layanan antar kerja dalam wilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(47, 8, 4, 'Persentase ARG pada belanja langsung APBD', '', '', NULL, NULL, NULL, NULL, 10),
(48, 8, 4, 'Persentase anak korban kekerasan yang ditangani instansi terkait kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(49, 8, 4, 'Rasio kekerasan terhadap perempuan, termasuk TPPO( per 100.000 pendudk perempuan)', '', '', NULL, NULL, NULL, NULL, 10),
(50, 9, 4, 'Persentase ketersediaan pangan (tersedianya cadangan beras/jagung sesuai kebutuhan)', '', '', NULL, NULL, NULL, NULL, 10),
(51, 48, 4, 'Persentase pemanfaatan tanah yang sesuai dengan peruntukan tanahnya diatas izin lokasi dibandingkan dengan luas izin lokasi yang diterbitkan', '', '', NULL, NULL, NULL, NULL, 10),
(52, 10, 4, 'Persentase penetapan tanah untuk pembangunan fasilitas umum', '', '', NULL, NULL, NULL, NULL, 10),
(53, 48, 4, 'Tersedianya lokasi pembangunan dalam rangka penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(54, 10, 4, 'Tersedianya tanah objek landfeform (TOL) yang siap di redistribusikan yang berasal dari tanah kelebihan maksimum dan tanah absentee', '', '', NULL, NULL, NULL, NULL, 10),
(55, 10, 4, 'Tersedianya tanah untuk masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(56, 10, 4, 'Penanganan sengketa tanah garapan yang dilakukan melalui mediasi', '', '', NULL, NULL, NULL, NULL, 10),
(57, 11, 4, 'Indeks Kualitas Lingkungan Hidup (IKLH) Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(58, 11, 4, 'Terlaksananya pengelolaan sampah diwilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(59, 11, 4, 'Ketaatan penanggungjawab usaha dan/atau kegiatan terhadap izin lingkungan, izin PPLH dan PUU LH yang diterbitkan oleh Pemerintah Daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(60, 12, 4, 'Perekaman KTP Elektronik', '', '', NULL, NULL, NULL, NULL, 10),
(61, 12, 4, 'Persentase anak usia 01-7 tahun kurang 1 (satua) hari yang memiliki KIA', '', '', NULL, NULL, NULL, NULL, 10),
(62, 12, 4, 'Kepemilikan akte kelahiran', '', '', NULL, NULL, NULL, NULL, 10),
(63, 12, 4, 'Jumlah OPD yang telah memanfaatkan data kependudukan berdasarkan perjanjian kerjasama', '', '', NULL, NULL, NULL, NULL, 10),
(64, 13, 4, 'Persentase Pengembangan Desa Tertinggal', '', '', NULL, NULL, NULL, NULL, 10),
(65, 13, 4, 'Persentase Peningkatan Status Desa Mandiri', '', '', NULL, NULL, NULL, NULL, 10),
(66, 14, 4, 'TFR (Angka Kelahiran Total)', '', '', NULL, NULL, NULL, NULL, 10),
(67, 14, 4, 'Persentase Pemakaian Kontrasepsi Modern (Modern Contraceptive Prevalance Rate (mCPR)', '', '', NULL, NULL, NULL, NULL, 10),
(68, 14, 4, 'Persentase kebutuhan ber KB yang tidak terpenuhi (unmet need)', '', '', NULL, NULL, NULL, NULL, 10),
(69, 15, 4, 'Rasio Konektivitas Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(70, 15, 4, 'V/C Ratio di Jalan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(71, 16, 4, 'Persentase Organisasi Perangkat Daerah (OPD) yang terhubung dengan akses internet yang disediakan oleh Dinas Kominfo', '', '', NULL, NULL, NULL, NULL, 10),
(72, 16, 4, 'Persentase Layanan Publik yang Diselenggarakan Secara Online Dan Terintegrasi', '', '', NULL, NULL, NULL, NULL, 10),
(73, 16, 4, 'Persentase Masyarakat Yang Menjadi Sasaran Penyebaran Informasi Publik, Mengetahui Kebijakan Dan Program Prioritas Pemerintah Dan Pemerintah Daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(74, 17, 4, 'Meningkatnya koperasi yang berkualitas', '', '', NULL, NULL, NULL, NULL, 10),
(75, 17, 4, 'Meningkatnya Usaha Kecil yang Menjadi Wirausaha', '', '', NULL, NULL, NULL, NULL, 10),
(76, 18, 4, 'Persentase Peningkatan Investasi di Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(77, 19, 4, 'Peningkatan Prestasi Olahraga', '', '', NULL, NULL, NULL, NULL, 10),
(78, 20, 4, 'Tingkat Partisipasi Pemuda Dalam Kegiatan Ekonomi Mandiri', '', '', NULL, NULL, NULL, NULL, 10),
(79, 21, 4, 'Tingkat Partisipasi Pemuda Dalam Organisasi Kepemudaan dan Organisasi Sosial Kemasyarakatan', '', '', NULL, NULL, NULL, NULL, 10),
(80, 22, 4, 'Persentase OPD yang Menggunakan Data Statistik Dalam Menyusun Perencanaan Pembangunan Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(81, 22, 4, 'Persentase OPD yang Menggunakan Data Statistik Dalam Melakukan Evaluasi Pembangunan Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(82, 23, 4, 'Tingkat Keamanan Informasi Pemerintah', '', '', NULL, NULL, NULL, NULL, 10),
(83, 24, 4, 'Terlestarikannya Cagar Budaya', '', '', NULL, NULL, NULL, NULL, 10),
(84, 25, 4, 'Nilai Tingkat Kegemaran Membaca Masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(85, 25, 4, 'Indek Pembangunan Literasi Masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(86, 26, 4, 'Tingkat Ketersediaan Arsip sebagai Bahan Akuntabilitas Kinerja, Alat Bukti yang Sah dan Pertanggungjawaban Nasional (Pasal 40 dan 59 UU No. 43 Tahun 2009 tentang Kearsipan)', '', '', NULL, NULL, NULL, NULL, 10),
(87, 26, 4, 'Tingkat keberadaan dan keutuhan arsip sebagai bahan pertanggungjawaban setiap aspek kehidupan berbangsa dan bernegara untuk kepentingan negara, pemerintahan, pelayanan publik dan kesejahteraan rakyat', '', '', NULL, NULL, NULL, NULL, 10),
(88, 27, 4, 'Jumlah Total Produksi Perikanan (Tangkap dan Budidaya) dari seluruh Kabupaten/Kota di Wilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(89, 28, 4, 'Persentase Pertumbuhan Jumlah Wisatawan Mancanegara per Kebangsaan', '', '', NULL, NULL, NULL, NULL, 10),
(90, 28, 4, 'Persentase Peningkatan Perjalanan Wisatawan Nusantara yang Datang ke Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(91, 28, 4, 'Tingkat Hunian Akomodasi', '', '', NULL, NULL, NULL, NULL, 10),
(92, 28, 4, 'Kontribusi Sektor Pariwisata Terhadap PDRB Harga Berlaku', '', '', NULL, NULL, NULL, NULL, 10),
(93, 28, 4, 'Kontribusi sektor pariwisata terhadap PAD', '', '', NULL, NULL, NULL, NULL, 10),
(94, 29, 4, 'Produktivitas Pertanian per Hektar per Tahun', '', '', NULL, NULL, NULL, NULL, 10),
(95, 29, 4, 'Persentase Penurunan Kejadian dan Jumlah Kasus Penyakir Hewan Menular', '', '', NULL, NULL, NULL, NULL, 10),
(96, 30, 4, 'Persentase Perusahaan pemanfaatan panas bumi yang memiliki izin di Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(97, 31, 4, 'Persentase pelaku usaha yang memperoleh izin sesuai dengan ketentuan(IUPP/SIUP Pusat perbelanjaan dan IUTM/IUTS/SIUP Toko Swalayan)', '', '', NULL, NULL, NULL, NULL, 10),
(98, 45, 4, 'Persentase Kinerja Realisasi Pupuk  ', '', '', NULL, NULL, NULL, NULL, 10),
(99, 31, 4, 'Persentase alat-alat ukur, takar, timbang dan perlengkapannya (UTTP) bertanda tera sah yang berlaku', '', '', NULL, NULL, NULL, NULL, 10),
(100, 32, 4, 'Pertambahan Jumlah Industri kecil dan menengah di Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(101, 32, 4, 'Persentase Pencapaian Sasaran Pembangunan Industri Termasuk Turunan Indikator Pembangunan Industri Dalam RIPIN yang ditetapkan dalam RPIK', '', '', NULL, NULL, NULL, NULL, 10),
(102, 32, 4, 'Persentase Jumlah Hasil Pemantauan dan Pengawasan Dengan Jumlah Izin Usaha Industri (IUI) kecil dan menengah yang Dikeluarkan oleh Instansi Terkait', '', '', NULL, NULL, NULL, NULL, 10),
(103, 32, 4, 'Persentase Jumlah Hasil Pemantauan dan Pengawasan dengan Jumlah Izin Perluasan Industri (IPUI) bagi Industri kecil dan menengah yang dikeluarkan oleh Instansi Terkait', '', '', NULL, NULL, NULL, NULL, 10),
(104, 32, 4, 'Persentase Jumlah Hasil Pemantauan dan Pengawasan dengan Jumlah Izin Usaha Kawasan Industri (IUKI) dan Izin Perluasan Kawasan Industri (IPKI) yang Lokasinya diDaerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(105, 32, 4, 'Tersedianya Informasi Industri Secara Lengkap dan Terkini', '', '', NULL, NULL, NULL, NULL, 10),
(106, 33, 4, 'Rasio Belanja Pegawai di luar Guru dan Tenaga Kesehatan', '', '', NULL, NULL, NULL, NULL, 10),
(107, 33, 4, 'Rasio PAD', '', '', NULL, NULL, NULL, NULL, 10),
(108, 34, 4, 'Maturitas Sistem Pengendalian Intern Pemerintah (SPIP)', '', '', NULL, NULL, NULL, NULL, 10),
(109, 34, 4, 'Peningkatan Kapabilitas Aparat Pengawasan Intern Pemerintah (APIP)', '', '', NULL, NULL, NULL, NULL, 10),
(110, 33, 4, 'Rasio Belanja Urusan Pemerintahan Umum (dikurangi transfer expenditures)', '', '', NULL, NULL, NULL, NULL, 10),
(111, 33, 4, 'Opini Laporan Keuangan', '', '', NULL, NULL, NULL, NULL, 10),
(112, 35, 4, 'Persentase jumlah total proyek konstruksi yang dibawa ke tahun berikutnya yang ditandatangani pada kuartal pertama', '', '', NULL, NULL, NULL, NULL, 10),
(113, 35, 4, 'Persentase Jumlah Pengadaan yang Dilakukan Dengan Metode Kompetitif', '', '', NULL, NULL, NULL, NULL, 10),
(114, 36, 4, 'Rasio Pegawai Pendidikan Tinggi dan Menengah/Dasar (%) (PNS tidak termasuk guru dan tenaga kesehatan)', '', '', NULL, NULL, NULL, NULL, 10),
(115, 36, 4, 'Rasio Pegawai Fungsional (%) (PNS tidak termasuk guru dan tenaga kesehatan)', '', '', NULL, NULL, NULL, NULL, 10),
(116, 36, 4, 'Rasio Jabatan Fungsional Bersertifikat Kompetensi (%) (PNS tidak termasuk guru dan tenaga kesehatan)', '', '', NULL, NULL, NULL, NULL, 10),
(117, 37, 4, 'Deviasi Realisasi Belanja Terhadap Belanja Total Dalam APBD', '', '', NULL, NULL, NULL, NULL, 10),
(118, 37, 4, 'Deviasi Realisasi PAD Terhadap Anggaran PAD dalam APBD', '', '', NULL, NULL, NULL, NULL, 10),
(119, 37, 4, 'Assets Management', '', '', NULL, NULL, NULL, NULL, 10),
(120, 37, 4, 'Rasio Anggaran Sisa Terhadap Total Belanja Dalam APBD Tahun Sebelumnya', '', '', NULL, NULL, NULL, NULL, 10),
(121, 38, 4, 'Akses Publik Terhadap Informasi Keuangan Daerah ', '', '', NULL, NULL, NULL, NULL, 10),
(122, 39, 4, 'Rasio Nilai Belanja yang Dilakukan Melalui Pengadaan', '', '', NULL, NULL, NULL, NULL, 10),
(123, 40, 4, 'Informasi tentang Sumber Daya yang Tersedia untuk Pelayanan', '', '', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_output`
--

CREATE TABLE IF NOT EXISTS `lppd_output` (
  `id` int(11) NOT NULL,
  `id_outcome` int(11) NOT NULL,
  `id_master_status` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_output`
--

INSERT INTO `lppd_output` (`id`, `id_outcome`, `id_master_status`, `nama`, `bukti`, `hasil`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 1, 4, 'Jumlah Satuan Pendidikan Anak Usia Dini terakreditasi ', '', '', NULL, NULL, NULL, NULL, 10),
(2, 1, 4, 'Jumlah peserta didik PAUD (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari pemerintah daerah ', '', '', NULL, NULL, NULL, NULL, 10),
(3, 1, 4, 'Jumlah Peserta Didik PAUD (Negeri dan Swata) yang menerima Pembebasan biaya Pendidikan', '', '', NULL, NULL, NULL, NULL, 10),
(4, 1, 4, 'Jumlah Kebutuhan Minimal Pendidik PAUD (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(5, 1, 4, 'Jumlah Pendidik pada PAUD (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(6, 1, 4, 'Jumlah Pendidik PAUD (Negeri dan Swasta) yang memiliki Ijazah diploma empat (D-IV) atau sarjana (S1) bidang Pendidikan nak usia dini, Kependidikan lain atau psikologi dan sertifikat profesi Guru pendidik anak Usia Dini', '', '', NULL, NULL, NULL, NULL, 10),
(7, 1, 4, 'Jumlah Kepala Sekolah PAUD (Negeri dan Swasta) yang memiliki Ijazah DIV atau S1, sertifikat Pendidik dan Surat Tanda Tamat Pendidikan dan pelatihan calon kepala Sekolah untuk PAUD formal atau sertifikat pendidik dan pelatihan kepala satuan PAUD non formal', '', '', NULL, NULL, NULL, NULL, 10),
(8, 2, 4, 'Jumlah SD dan SMP Negeri Terakreditasi', '', '', NULL, NULL, NULL, NULL, 10),
(9, 2, 4, 'Jumlah peserta didik jenjang Sekolah Dasar (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari Pemerintah Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(10, 2, 4, 'Jumlah Peserta didik jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari Pemerintah Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(11, 2, 4, 'Jumlah Peserta didik pada jenjang sekolah dasar (Negeri dan Swasta) yang menerima pembebasan biaya Pendidikan', '', '', NULL, NULL, NULL, NULL, 10),
(12, 2, 4, 'Jumlah Peserta didik pada jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang menerima pembebasan biaya Pendidikam', '', '', NULL, NULL, NULL, NULL, 10),
(13, 2, 4, 'Jumlah Kebutuhan minimal pendidik pada jejang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(14, 2, 4, 'Jumlah Kebutuhan minimal pendidik pada jejang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(15, 2, 4, 'Jumlah Pendidik pada Jenjang Sekolah Dasar', '', '', NULL, NULL, NULL, NULL, 10),
(16, 2, 4, 'Jumlah Pendidik pada Jenjang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(17, 2, 4, 'Jumlah Kebutuhan Minimal tenaga kependidikan pada jenjang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(18, 2, 4, 'Jumlah Kebutuhan Minimal tenaga kependidikan pada jenjang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(19, 2, 4, 'Jumlah Tenaga Kependidikan pada Jenjang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(20, 2, 4, 'Jumlah Tenaga Kependidikan pada Jenjang Sekolah Mengeh Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(21, 2, 4, 'Jumlah Pendidik pada Jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah Diploma Empat (D-IV) atau Sarjana (S1) dan sertifikat pendidik)', '', '', NULL, NULL, NULL, NULL, 10),
(22, 2, 4, 'Jumlah Pendidik pada Jenjang Menengah Pertama (Negeri dan Swasta) yang memiliki Ijazah Diploma Empat (D-IV) atau Sarjana (S1) dan Sertifikat Pendidik', '', '', NULL, NULL, NULL, NULL, 10),
(23, 2, 4, 'Jumlah Kepala Sekolah pada Jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah D-IV atau Sarjana (S1), Sertifikat Pendidik dan Surat tanda tamat pendidikan dan pelatihan calon kepala sekolah', '', '', NULL, NULL, NULL, NULL, 10),
(24, 2, 4, 'Jumlah Kepala Sekolah pada Jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang memiliki Ijazah D-IV atau Sarjana (S1), Sertifikat Pendidik dan Surat tanda tamat pendidikan dan pelatihan calon kepala sekolah', '', '', NULL, NULL, NULL, NULL, 10),
(25, 2, 4, 'Jumlah Tenaga Penunjang Lainnya pada jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah (SMA/Sederajat)', '', '', NULL, NULL, NULL, NULL, 10),
(26, 2, 4, 'Jumlah Tenaga Penunjang Lainnya pada jenjang Sekolah Menehgah Pertama (Negeri dan Swasta) yang memiliki Ijazah (SMA/Sederajat)', '', '', NULL, NULL, NULL, NULL, 10),
(27, 3, 4, 'Jumlah SD dan SMP Negeri Terakreditasi', '', '', NULL, NULL, NULL, NULL, 10),
(28, 3, 4, 'Jumlah peserta didik jenjang Sekolah Dasar (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari Pemerintah Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(29, 3, 4, 'Jumlah Peserta didik jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari Pemerintah Daerah', '', '', NULL, NULL, NULL, NULL, 10),
(30, 3, 4, 'Jumlah Peserta didik pada jenjang sekolah dasar (Negeri dan Swasta) yang menerima pembebasan biaya Pendidikam', '', '', NULL, NULL, NULL, NULL, 10),
(31, 3, 4, 'Jumlah Peserta didik pada jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang menerima pembebasan biaya Pendidikam', '', '', NULL, NULL, NULL, NULL, 10),
(32, 3, 4, 'Jumlah Kebutuhan minimal pendidik pada jejang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(33, 3, 4, 'Jumlah Kebutuhan minimal pendidik pada jejang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(34, 3, 4, 'Jumlah Pendidik pada Jenjang Sekolah Dasar', '', '', NULL, NULL, NULL, NULL, 10),
(35, 3, 4, 'Jumlah Pendidik pada Jenjang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(36, 3, 4, 'Jumlah Kebutuhan Minimal tenaga kependidikan pada jenjang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(37, 3, 4, 'Jumlah Kebutuhan Minimal tenaga kependidikan pada jenjang Sekolah Menengah Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(38, 3, 4, 'Jumlah Tenaga Kependidikan pada Jenjang Sekolah Dasar (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(39, 3, 4, 'Jumlah Tenaga Kependidikan pada Jenjang Sekolah Mengeh Pertama (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(40, 3, 4, 'Jumlah Pendidik pada Jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah Diploma Empat (D-IV) atau Sarjana (S1) dan sertifikat pendidik)', '', '', NULL, NULL, NULL, NULL, 10),
(41, 3, 4, 'Jumlah Pendidik pada Jenjang Menengah Pertama (Negeri dan Swasta) yang memiliki Ijazah Diploma Empat (D-IV) atau Sarjana (S1) dan Sertifikat Pendidik', '', '', NULL, NULL, NULL, NULL, 10),
(42, 3, 4, 'Jumlah Kepala Sekolah pada Jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah D-IV atau Sarjana (S1), Sertifikat Pendidik dan Surat tanda tamat pendidikan dan pelatihan calon kepala sekolah', '', '', NULL, NULL, NULL, NULL, 10),
(43, 3, 4, 'Jumlah Kepala Sekolah pada Jenjang Sekolah Menengah Pertama (Negeri dan Swasta) yang memiliki Ijazah D-IV atau Sarjana (S1), Sertifikat Pendidik dan Surat tanda tamat pendidikan dan pelatihan calon kepala sekolah', '', '', NULL, NULL, NULL, NULL, 10),
(44, 3, 4, 'Jumlah Tenaga Penunjang Lainnya pada jenjang Sekolah Dasar (Negeri dan Swasta) yang memiliki Ijazah (SMA/Sederajat)', '', '', NULL, NULL, NULL, NULL, 10),
(45, 3, 4, 'Jumlah Tenaga Penunjang Lainnya pada jenjang Sekolah Menehgah Pertama (Negeri dan Swasta) yang memiliki Ijazah (SMA/Sederajat)', '', '', NULL, NULL, NULL, NULL, 10),
(46, 4, 4, 'Jumlah Satuan Pendidikan Kesetaraan Terakreditasi (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(47, 4, 4, 'Jumlah peserta didik pendidikan kesetaraan (Negeri dan Swasta) yang menerima perlengkapan dasar peserta didik dari pemerintah daerah', '', '', NULL, NULL, NULL, NULL, 10),
(48, 4, 4, 'Jumlah Peserta Didik Pendidikan kesetaraan (Negeri dan Swasta) yang menerima pembebasan biaya pendidikan', '', '', NULL, NULL, NULL, NULL, 10),
(49, 4, 4, 'Jumlah Kebutuhan minimal pendidk pada satuan pendidikan kesetaraan (Negeri dan Swasta)', '', '', NULL, NULL, NULL, NULL, 10),
(50, 4, 4, 'Jumlah pendidik pada satuan pendidikan kesetaraan (Negeri dan Swasta) ', '', '', NULL, NULL, NULL, NULL, 10),
(51, 4, 4, 'Jumlah pendidik pada satuan pendidikan kesetaraan (Negeri dan Swasta) yang memiliki ijazah diploma empat (DIV) atau Sarjana (S1)', '', '', NULL, NULL, NULL, NULL, 10),
(52, 4, 4, 'Jumlah Kepala Sekolah pada Jenjang Sekolah yang memiliki ijazah diploma empat (DIV) atau Sarjana (S1), sertifikat pendidk dan surat tanda tamat pendidkan dan pelatihan calon kepala sekolah', '', '', NULL, NULL, NULL, NULL, 10),
(53, 4, 4, 'Jumlah Kepala Sekolah pada Satuan Pendidkan kesetaraan(Negeri dan swasta) yang memiliki ijazah DIV atau S1', '', '', NULL, NULL, NULL, NULL, 10),
(54, 5, 4, 'Jumlah RS Rujukan kabupaten/kota yang memenuhi sarana, prasarana dan alat kesehatan (SPA) sesuai standar', '', '', NULL, NULL, NULL, NULL, 10),
(55, 6, 4, 'Jumlah RS dibina dan dipersiapkan akreditasinya', '', '', NULL, NULL, NULL, NULL, 10),
(56, 7, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(57, 7, 4, 'Jumlah SDM kesehatan untuk pelayanan antenatal', '', '', NULL, NULL, NULL, NULL, 10),
(58, 8, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(59, 8, 4, 'Jumlah SDM kesehatan untuk pelayanan persalinan sesuai standar', '', '', NULL, NULL, NULL, NULL, 10),
(60, 9, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(61, 9, 4, 'Jumlah SDM kesehatan untuk pelayanan neonatal esensial sesuai standar', '', '', NULL, NULL, NULL, NULL, 10),
(62, 10, 4, 'Jumlah Dukungan Logistik Kesehatan tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(63, 10, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan Balita sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(64, 11, 4, 'Jumlah Dukungan Logistik Kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(65, 11, 4, 'Jumlah SDM Kesehatan untuk pelayanan kesehatan anak usia pendidikan dasar sesuai standar', '', '', NULL, NULL, NULL, NULL, 10),
(66, 12, 4, 'Jumlah Dukungan Logistik Kesehatan tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(67, 12, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(68, 13, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(69, 13, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(70, 14, 4, 'Jumlah Dukungan Logistik Kesehatan tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(71, 14, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(72, 15, 4, 'Jumlah Dukungan Logistik Kesehatan tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(73, 15, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(74, 16, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(75, 16, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(76, 17, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(77, 17, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(78, 18, 4, 'Jumlah dukungan logistik kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(79, 18, 4, 'Jumlah SDM kesehatan untuk pelayanan Kesehatan sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(80, 19, 4, 'Luas kawasan permukiman rawan banjir di WS kewenangan Kabupaten (ha)', '', '', NULL, NULL, NULL, NULL, 10),
(81, 19, 4, 'Panjang sungai di kawasan permukiman yang rawan banjir di WS kewenangan Kabupaten (m)', '', '', NULL, NULL, NULL, NULL, 10),
(82, 19, 4, 'Luas kawasan permukiman sepanjang pantai yang rawan abrasi erosi dan akresi di WS kewenangan Kabupaten (ha)', '', '', NULL, NULL, NULL, NULL, 10),
(83, 19, 4, 'Panjang pantai di kawasan permukiman yg rawan abrasi, erosi, akresi di WS kewenangan Kabupaten (m)', '', '', NULL, NULL, NULL, NULL, 10),
(84, 19, 4, 'Rencana Tata Pengaturan air dan tata pengairan/rencana pengelolaan sumber daya air WS Kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(85, 19, 4, 'Rencana Teknis tata pengaturan air dan tata pengairan/rencana pengelolaan sumber daya air kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(86, 19, 4, 'Data prasarana dan sarana pengaman pantai dan sungai milik pemerintah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(87, 20, 4, 'Luas kawasan permukiman rawan banjir di WS kewenangan Kabupaten (ha)', '', '', NULL, NULL, NULL, NULL, 10),
(88, 20, 4, 'Panjang sungai di kawasan permukiman yang rawan banjir di WS kewenangan Kabupaten (m)', '', '', NULL, NULL, NULL, NULL, 10),
(89, 20, 4, 'Luas kawasan permukiman sepanjang pantai yang rawan abrasi erosi dan akresi di WS kewenangan Kabupaten (ha)', '', '', NULL, NULL, NULL, NULL, 10),
(90, 20, 4, 'Panjang pantai di kawasan permukiman yg rawan abrasi, erosi, akresi di WS kewenangan Kabupaten (m)', '', '', NULL, NULL, NULL, NULL, 10),
(91, 20, 4, 'Rencana Tata Pengaturan air dan tata pengairan/rencana pengelolaan sumber daya air WS Kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(92, 20, 4, 'Rencana Teknis tata pengaturan air dan tata pengairan/rencana pengelolaan sumber daya air kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(93, 20, 4, 'Data prasarana dan sarana pengaman pantai dan sungai milik pemerintah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(94, 21, 4, 'Persentase panjang jaringan irigasi primer dalam kondisi baik', '', '', NULL, NULL, NULL, NULL, 10),
(95, 21, 4, 'Persentase panjang jaringan irigasi sekunder dalam kondisi baik', '', '', NULL, NULL, NULL, NULL, 10),
(96, 21, 4, 'Persentase panjang jaringan irigasi tersier dalam kondisi baik', '', '', NULL, NULL, NULL, NULL, 10),
(97, 22, 4, 'Pemenuhan dokumen RISPAM kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(98, 22, 4, 'Tersusun dan ditetapkannya JAKSTRADA Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(99, 22, 4, 'Jumlah BUMD dan atau UPTD Kabupaten penyelenggaran SPAM', '', '', NULL, NULL, NULL, NULL, 10),
(100, 22, 4, 'Jumlah izin yang diberikan kepada Badan Usaha untuk melakukan penyelenggaraan SPAM', '', '', NULL, NULL, NULL, NULL, 10),
(101, 22, 4, 'Jumlah kerja sama penyelenggaran SPAM dengan pemerintah Pusat dan Pemerintah daerah lain.', '', '', NULL, NULL, NULL, NULL, 10),
(102, 23, 4, 'Jumlah Rumah dengan akses unit pengolahan setempat unit pengolahan setempat untuk kegiatan pemenuhan pelayanan dasar menggunakan SPALD S', '', '', NULL, NULL, NULL, NULL, 10),
(103, 23, 4, 'Jumlah rumah dengan akses sambungan rumah untuk kegiatan pemenuhan pelayanan dasar menggunakan SPALD-T', '', '', NULL, NULL, NULL, NULL, 10),
(104, 23, 4, 'Jumlah rumah tangga dengan akses unit pengolahan setempat dan data jumlah rumah dengan akses sambungan rumah untuk kegiatan pemenuhan pelayanan dasar menggunakan SPALD S dan SPALD T', '', '', NULL, NULL, NULL, NULL, 10),
(105, 23, 4, 'Jumlah rumah yang sudah menerima pelayanan jasa penyedotan lumpur tinja', '', '', NULL, NULL, NULL, NULL, 10),
(106, 23, 4, 'Jumlah rumah yang sudah menerima pelayanan jasa pengolahan lumpur tinja', '', '', NULL, NULL, NULL, NULL, 10),
(107, 23, 4, 'Jumlah rumah yang sudah menerima pelayanan jasa pengolahan air limbah domestik', '', '', NULL, NULL, NULL, NULL, 10),
(108, 23, 4, 'Kinerja penyediaan pelayanan SPALD S akses dasar', '', '', NULL, NULL, NULL, NULL, 10),
(109, 23, 4, 'Kinerja penyediaan pelayanan SPALD S akses aman', '', '', NULL, NULL, NULL, NULL, 10),
(110, 23, 4, 'Kinerja penyediaan pelayanan SPALD T akses aman', '', '', NULL, NULL, NULL, NULL, 10),
(111, 23, 4, 'Kinerja penyediaan unit pengolahan setempat', '', '', NULL, NULL, NULL, NULL, 10),
(112, 23, 4, 'Kinerja penyediaan sarana pengangkutan lumpur tinja', '', '', NULL, NULL, NULL, NULL, 10),
(113, 23, 4, 'Kinerja penyediaan prasarana pengolahan lumpur tinja', '', '', NULL, NULL, NULL, NULL, 10),
(114, 23, 4, 'Kinerja Penyediaan sambungan rumah yang tersambung ke IPALD', '', '', NULL, NULL, NULL, NULL, 10),
(115, 23, 4, 'Kinerja penyediaan jasa penyedotan lumpur tinja', '', '', NULL, NULL, NULL, NULL, 10),
(116, 24, 4, 'Rasio Bangunan Gedung (Kecuali rumah tinggal tunggal dan rumah deret sederhana) yang laik fungsi', '', '', NULL, NULL, NULL, NULL, 10),
(117, 24, 4, 'Jumlah IMB yang diberikan oleh pemerintah Kabupaten dalam tahun eksisting', '', '', NULL, NULL, NULL, NULL, 10),
(118, 24, 4, 'Penetapan Peraturan Daerah tentang Bangunan/Gedung', '', '', NULL, NULL, NULL, NULL, 10),
(119, 24, 4, 'Penetapan Keputusan Bupati tentang Tim Ahli Bangunan', '', '', NULL, NULL, NULL, NULL, 10),
(120, 24, 4, 'Jumlah Bangunan Gedung yang ditetapkan oleh Bupati untuk dilindungi dan dilestarikan', '', '', NULL, NULL, NULL, NULL, 10),
(121, 24, 4, 'Jumlah Bangunan gedung yang ditetapkan oleh Bupati untuk kepentingan strategis daerah provinsi', '', '', NULL, NULL, NULL, NULL, 10),
(122, 24, 4, 'Jumlah Bangunan gedung negara milik pemerintah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(123, 24, 4, 'Jumlah Bangunan Gedung negara milik pemerintah kabupaten yang dipelihara/dirawat', '', '', NULL, NULL, NULL, NULL, 10),
(124, 25, 4, 'Panjang jalan berdasarkan yang ditetapkan  kepala daerah dalam SK jalan kewenangan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(125, 25, 4, 'Panjang jalan yang dibangun', '', '', NULL, NULL, NULL, NULL, 10),
(126, 25, 4, 'Panjang jembatan yg dibangun', '', '', NULL, NULL, NULL, NULL, 10),
(127, 25, 4, 'Panjang jalan yang ditingkatkan (struktur/fungsi)', '', '', NULL, NULL, NULL, NULL, 10),
(128, 25, 4, 'Panjang jembatan yang diganti/dilebarkan', '', '', NULL, NULL, NULL, NULL, 10),
(129, 25, 4, 'Panjang jalan yang direkonstruksi atau direhabilitasi', '', '', NULL, NULL, NULL, NULL, 10),
(130, 25, 4, 'Panjang jembatan yang direhabilitasi', '', '', NULL, NULL, NULL, NULL, 10),
(131, 25, 4, 'Panjang jalan yang dipelihara', '', '', NULL, NULL, NULL, NULL, 10),
(132, 25, 4, 'Panjang jembatan yang dipelihara', '', '', NULL, NULL, NULL, NULL, 10),
(133, 26, 4, 'Jumlah Pelatihan Tenaga operator/teknis/analis di wilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(134, 26, 4, 'Jumlah tenaga kerja Tenaga operator/teknis/analis yang terlatih di wilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(135, 26, 4, 'Jumlah tenaga kerja konstruksi terlatih yang tersertifikasi operator/teknis/analis di wilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(136, 26, 4, 'Terselenggaranya Sistem Informasi Pembina Jasa Konstruksi cakupan Kabupaten yang aktif dengan data termutakhir', '', '', NULL, NULL, NULL, NULL, 10),
(137, 26, 4, 'Tersedianya data dan informasi potensi pasar jasa konstruksi di wilayah Kabupaten untuk tahun berjalan yang bersumber dari APBD Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(138, 26, 4, 'Tersedianya data dan informasi potensi pasar jasa konstruksi di wilayah Kabupaten untuk tahun berjalan yang bersumber dari APBN', '', '', NULL, NULL, NULL, NULL, 10),
(139, 26, 4, 'Tersedianya data dan informasi potensi pasar jasa konstruksi di wilayah Kabupaten untuk tahun berjalan yang bersumber dari pendanaan lainnya', '', '', NULL, NULL, NULL, NULL, 10),
(140, 26, 4, 'Tersedianya data dan informasi paket pekerjaan jasa konstruksi sesuai kewenangannya yang sudah dan sedang dilaksanakan oleh Badan Jasa Usaha Konstruksi yang termutakhir secara berkala', '', '', NULL, NULL, NULL, NULL, 10),
(141, 26, 4, 'Tersedianya data dan profil OPD sub-urusan jasa konstruksi kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(142, 26, 4, 'Tersedianya data dan informasi pelatihan tenaga operator dan teknis/analis konstruksi di wilayah Kabupaten yang dilaksanakan sendiri atau melalui kerjasama dengan lembaga pendidikan dan pelatihan kerja (LPPK) yang diregistrasi oleh menteri yang membidangi', '', '', NULL, NULL, NULL, NULL, 10),
(143, 26, 4, 'Tersedianya data dan informasi tenaga kerja konsruksi terlatih diwilayah kabupaten yangdibuktikan dengan sertifikat pelatihan operator dan teknis/analis ', '', '', NULL, NULL, NULL, NULL, 10),
(144, 26, 4, 'Tersedianya data dan informasi tenaga kerja konstuksi terlatih yang tersertifikasi operator/teknis/analis di wilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(145, 26, 4, 'Tersedianya data dan informasi badan usaha yang mendaptkan pembinaan di wilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(146, 26, 4, 'Tersedianya data dan informasi pemenuhan komitmen permohonan IUJK badan usaha dan TDUP yang disetujui', '', '', NULL, NULL, NULL, NULL, 10),
(147, 26, 4, 'Tersedianya data dan informasi hasil pengawasan ketidak sesuaian jenis sifat klasifikasi, layanan usaha, bentuk dan atau kualifikasi usaha dengan kegiatan usaha jasa konstruksi yang menjadi kewenangan pengawasannya', '', '', NULL, NULL, NULL, NULL, 10),
(148, 26, 4, 'Tersedianya data dan informasi kecelakaan konstruksi pada proyek yang menjadi kewenangan pengawasannya', '', '', NULL, NULL, NULL, NULL, 10),
(149, 26, 4, 'Tersedianya data dan inormasi hasil pengawasan ketidak sesuaian jenis sifat klasifikasi, layanan usaha, bentuk dan atau kualifikasi usaha dengan segmentasi pasar jasa konstruksi yang menjadi kewenangan pengawasannya', '', '', NULL, NULL, NULL, NULL, 10),
(150, 26, 4, 'Jumlah Badan Usaha yang memiliki IUJKN diwilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(151, 26, 4, 'Jumlah usaha perseorangan yang memiliki TDUP diwilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(152, 26, 4, 'Jumlah Badan Usaha yang memiliki IUJKN yang terlibat dalam proyek diwilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(153, 26, 4, 'Jumlah Badan Usaha yang mendapatkan Pembinaan diwilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(154, 26, 4, 'Jumlah Pemenuhan komitmen permohonan IUJK Badan Usaha dan TDUP yang disetujui', '', '', NULL, NULL, NULL, NULL, 10),
(155, 26, 4, 'Jumlah Pengawasan terkait ketidak sesuaian jenis sifat klasifikasi, layanan usaha, bentuk dan atau kualifikasi usaha dengan kegiatan usaha jasa konstruksi yang menjadi kewenangan pengawasannya', '', '', NULL, NULL, NULL, NULL, 10),
(156, 26, 4, 'Jumlah Kecelakaan Konstruksi pada proyek yang menjadi kewenangan pengawsannya', '', '', NULL, NULL, NULL, NULL, 10),
(157, 26, 4, 'Jumlah Pengawasan terkait ketidak sesuaian jenis sifat klasifikasi, layanan usaha, bentuk dan atau kualifikasi usaha dengan segmentasi pasar jasa konstruksi yang menjadi kewenangan pengawsannya', '', '', NULL, NULL, NULL, NULL, 10),
(159, 28, 4, 'Jumlah rumah yang berada pada kawasan rawan bencana dan rencana penanganannya', '', '', NULL, NULL, NULL, NULL, 10),
(160, 28, 4, 'Jumlah rumah yang terkena bencana alam', '', '', NULL, NULL, NULL, NULL, 10),
(161, 28, 4, 'Jumlah RT, KK dan Jiwa korban yang rumahnya terkena bencana alam', '', '', NULL, NULL, NULL, NULL, 10),
(162, 28, 4, 'Jumlah unit rumah korban bencana yang direhabilitasi sesuai dengan rencana aksi', '', '', NULL, NULL, NULL, NULL, 10),
(163, 28, 4, 'Jumlah unit rumah korban bencana yang dibangun kembali sesuai dengan rencana aksi', '', '', NULL, NULL, NULL, NULL, 10),
(164, 28, 4, 'Jumlah unit rumah korban bencana yang dibangun baru/relokasi sesuai dengan rencana aksi', '', '', NULL, NULL, NULL, NULL, 10),
(165, 28, 4, 'Jumlah unit dan lokasi rumah sewa yang akan menjadi tempat tinggal sementara korban bencana', '', '', NULL, NULL, NULL, NULL, 10),
(166, 28, 4, 'Jumlah RT, KK dan Jiwa korban bencana yang terfasilitasi', '', '', NULL, NULL, NULL, NULL, 10),
(167, 28, 4, 'Jumlah, luasan dan lokasi pencadangan lahan', '', '', NULL, NULL, NULL, NULL, 10),
(168, 29, 4, 'Jumlah rumah tangga penerima layanan yang telah mendapatkan fasilitasi ganti kerugian aset properti berdasarkan rencana pemenuhan SPM', '', '', NULL, NULL, NULL, NULL, 10),
(169, 29, 4, 'Jumlah rumah tangga penerima kegiatan layanan yang belum mendapatkan fasilitasi penggantian hak atas tanah dan/atau bangunan berdasarkan rencana pemenuhan SPM', '', '', NULL, NULL, NULL, NULL, 10),
(170, 29, 4, 'Jumlah rumah tangga penerima kegiatan layanan Subsidi Uang sewa berdasarkan rencana pemenuhan SPM', '', '', NULL, NULL, NULL, NULL, 10),
(171, 29, 4, 'Jumlah rumah tangga penerima kegiatan layanan yang telah mendapatkan penyediaan rumah layak huni berdasarkan rencana pemenuhan SPM', '', '', NULL, NULL, NULL, NULL, 10),
(172, 29, 4, 'Jumlah rumah tangga penerima layanan yang belum mendapatkan penyediaan rumah layak huni berdasarkan rencana pemenuhan SPM', '', '', NULL, NULL, NULL, NULL, 10),
(173, 29, 4, 'Jumlah Total Luasan (ha) pengadaan tanah', '', '', NULL, NULL, NULL, NULL, 10),
(174, 30, 4, 'Jumlah luasan (ha) kawasan pemukiman kumuh < 10 Ha', '', '', NULL, NULL, NULL, NULL, 10),
(175, 30, 4, 'Jumlah unit peningkatan kualitas RTLH', '', '', NULL, NULL, NULL, NULL, 10),
(176, 30, 4, 'Jumlah luasan (ha) penanganan infrastrukur kawasan kumuh', '', '', NULL, NULL, NULL, NULL, 10),
(177, 31, 4, 'Jumlah rumah di kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(178, 31, 4, 'Jumlah unit peningkatan kualitas RTLH', '', '', NULL, NULL, NULL, NULL, 10),
(179, 31, 4, 'Jumlah Rumah Tidak layak huni', '', '', NULL, NULL, NULL, NULL, 10),
(180, 31, 4, 'Jumlah rumah yang tidak dihuni', '', '', NULL, NULL, NULL, NULL, 10),
(181, 31, 4, 'Rasio Rumah dan KK', '', '', NULL, NULL, NULL, NULL, 10),
(182, 31, 4, 'Jumlah rumah pembangunan baru', '', '', NULL, NULL, NULL, NULL, 10),
(183, 32, 4, 'Jumlah Perumahan yang terfasilitasi PSU', '', '', NULL, NULL, NULL, NULL, 10),
(184, 32, 4, 'Jumlah Unit rumah yang sudah difasilitasi air minum', '', '', NULL, NULL, NULL, NULL, 10),
(185, 32, 4, 'Jumlah unit rumah yang terfasilitasi jalan lingkungan', '', '', NULL, NULL, NULL, NULL, 10),
(186, 32, 4, 'Jumlah unit rumah yang terfasilitasi akses sanitasi (on site/off site)', '', '', NULL, NULL, NULL, NULL, 10),
(187, 32, 4, 'Jumlah perumahan yang terfasilitasi RTNH', '', '', NULL, NULL, NULL, NULL, 10),
(188, 32, 4, 'Jumlah unit rumah yang terfasilitasi akses PJU', '', '', NULL, NULL, NULL, NULL, 10),
(189, 32, 4, 'Jumlah pengembang yang tersertifikasi ', '', '', NULL, NULL, NULL, NULL, 10),
(190, 32, 4, 'Jumlah pengembang yang teregistrasi', '', '', NULL, NULL, NULL, NULL, 10),
(191, 32, 4, 'Jumlah pengembang yang mendapat penyuluhan atau pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(192, 33, 4, 'Jumlah pelanggaran dan pengaduan trantibum  Kab/Kota yang ditangani', '', '', NULL, NULL, NULL, NULL, 10),
(193, 33, 4, 'Jumlah Satlinmas yang terlatih dan dikukuhkan', '', '', NULL, NULL, NULL, NULL, 10),
(194, 33, 4, 'Jumlah Perda dan Perkada yang ditegakkan', '', '', NULL, NULL, NULL, NULL, 10),
(195, 33, 4, 'Jumlah Polisi Pamong Praja yang memiliki kualitas sebagai PPNS', '', '', NULL, NULL, NULL, NULL, 10),
(196, 33, 4, 'tersedianya SOP dalam penegakan Perda dan Perkeda serta penanganan gangguan Trantibum', '', '', NULL, NULL, NULL, NULL, 10),
(197, 33, 4, 'Tersedianya sarana prasarana minimal', '', '', NULL, NULL, NULL, NULL, 10),
(199, 35, 4, 'Persentase penyelesaian dokumen KRB sampai dinyatakan sah atau legal', '', '', NULL, NULL, NULL, NULL, 10),
(200, 35, 4, 'Persentase Jumlah penduduk di kawasan rawan bencana yang memperoleh informasi rawan bencana sesuai jenis ancaman bencana', '', '', NULL, NULL, NULL, NULL, 10),
(201, 36, 4, 'Persentase penyelesaian dokumen RPB sampai dinyatakan sah dan legal', '', '', NULL, NULL, NULL, NULL, 10),
(202, 36, 4, 'Persentase penyelesaian dokumen renkon sampai dinyatakan sah atau legal', '', '', NULL, NULL, NULL, NULL, 10),
(203, 36, 4, 'Persentase Jumlah aparatur dan warga negara yang ikut pelatihan ', '', '', NULL, NULL, NULL, NULL, 10),
(204, 36, 4, 'Persentase warga negara yang ikut pelatihan ', '', '', NULL, NULL, NULL, NULL, 10),
(205, 36, 4, 'Persentase warga negara yang mendapat layanan PUSDALOPS Penanggulangan bencana dan sarana prasarana penanggulangan bencana ', '', '', NULL, NULL, NULL, NULL, 10),
(206, 36, 4, 'Persentase warga negara yang mendapat Peralatan Perlindungan', '', '', NULL, NULL, NULL, NULL, 10),
(207, 37, 4, 'Persentase kecepatan respon kurang dari 24 jam untuk setiap kasus KLB', '', '', NULL, NULL, NULL, NULL, 10),
(208, 37, 4, 'Persentase kecepatan respon kurang dari 24 jam untuk setiap status darurat bencana', '', '', NULL, NULL, NULL, NULL, 10),
(209, 37, 4, 'Persentase Jumlah Petugas yang aktif dalam penanganan Darurat Bencana', '', '', NULL, NULL, NULL, NULL, 10),
(210, 37, 4, 'Persentase Jumlah Korban berhasil dicari, ditolong dan dievakuasi terhadap kejadian bencana', '', '', NULL, NULL, NULL, NULL, 10),
(211, 38, 4, 'Jumlah dan Jenis layanan penyelamatan dan evakuasi pada kondisi membahayakan manusia (operasi darurat non kebakaran) oleh dinas pemadam kebakaran dan penyelamatan di kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(212, 38, 4, 'Tersedianya pos sektor damkar yang dilengkapi sarana prasarana damkar, sarana prasarana penyelamatan di kantor kecamatan', '', '', NULL, NULL, NULL, NULL, 10),
(213, 38, 4, 'Tersedianya aparatur selama 24 jam yang dilaksanakan secara bergantian (ShifT) di Kantor Kecamatan', '', '', NULL, NULL, NULL, NULL, 10),
(214, 38, 4, 'Pos Damkar yang dilengkapi sarana prasarana damkar, sarana prasarana penyelamatan dan evakuasi di setiap kelurahan/desa', '', '', NULL, NULL, NULL, NULL, 10),
(215, 38, 4, 'Jumlah dan jenis sarana dan prasarana pemadaman, penyelamatan dan evakuasi', '', '', NULL, NULL, NULL, NULL, 10),
(216, 38, 4, 'Jumlah aparatur pemadam kebakaran yang memenuhi standar kualifikasi pemadam sebagaimana dimaksud permendagri no 16 tahun 2009 tentang Standar kualifikasi aparatur pemadam kebakaran', '', '', NULL, NULL, NULL, NULL, 10),
(217, 38, 4, 'Jumlah relawan kebakaran dibawah binaan dinas pemadam kebakaran dan penyelamatan atau perangkat daerah yang menyelenggarakan sub urusan kebakaran', '', '', NULL, NULL, NULL, NULL, 10),
(218, 38, 4, 'Jumlah peningkatan kapasitas aparatur pemadam kebakaran', '', '', NULL, NULL, NULL, NULL, 10),
(220, 40, 4, 'Jumlah layanan data dan pengaduan yang dimiliki', '', '', NULL, NULL, NULL, NULL, 10),
(221, 40, 4, 'Jumlah Data penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang masuk dalam daftar Data Terpadu FMdan OTM', '', '', NULL, NULL, NULL, NULL, 10),
(222, 40, 4, 'Jumlah Tim Reaksi Cepat yang dibentuk', '', '', NULL, NULL, NULL, NULL, 10),
(223, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang dijangkau', '', '', NULL, NULL, NULL, NULL, 10),
(224, 40, 4, 'Jumlah kendaraan roda 4 yang akses khusus layanan kedaruratan yang dimiliki', '', '', NULL, NULL, NULL, NULL, 10),
(225, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang menerima paket Permakanan sesuai standart gizi', '', '', NULL, NULL, NULL, NULL, 10),
(226, 40, 4, 'Jumlah Rumah singgah/Shelter/tempat tinggal sementara yang dimiliki sesuai standart', '', '', NULL, NULL, NULL, NULL, 10),
(227, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang menerima paket sandang', '', '', NULL, NULL, NULL, NULL, 10),
(228, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang memanfaatkan alat bantu', '', '', NULL, NULL, NULL, NULL, 10),
(229, 40, 4, 'Jumlah alat bantu yang tersedia di rumah singgah/shelter', '', '', NULL, NULL, NULL, NULL, 10),
(230, 40, 4, 'Jumlah Paket Perbekalan Kesehatan yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(231, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang memanfaatkan paket perbekalan kesehatan', '', '', NULL, NULL, NULL, NULL, 10),
(232, 40, 4, 'Jumlah tenaga kesehatan yang disediakan di rumah singgah', '', '', NULL, NULL, NULL, NULL, 10),
(233, 40, 4, 'Jumlah pekerja sosial profesional dan atau TKS dan atau Relawan sosial yang disediakan', '', '', NULL, NULL, NULL, NULL, 10),
(234, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang mendaptkan bimbingan fisik, mental dan sosial sesuai standart di keluarga, masyarakat, dinas sosial, rumah singgah atau shelter dan/atau pusat kesejahteraan sosi', '', '', NULL, NULL, NULL, NULL, 10),
(235, 40, 4, 'Jumlah bimbingan sosial yang dilaksanakan pada keluarga dan masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(236, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang difasilitasi untuk mendapatkan dokumen kepndudukan', '', '', NULL, NULL, NULL, NULL, 10),
(237, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang mendaptkan akses layanan pendidikan dan kesehatan dasar', '', '', NULL, NULL, NULL, NULL, 10),
(238, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang mendaptkan layanan penelusuran keluarga', '', '', NULL, NULL, NULL, NULL, 10),
(239, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang direunifikasi dengan keluarga', '', '', NULL, NULL, NULL, NULL, 10),
(240, 40, 4, 'Jumlah Penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan Gepeng yang dirujuk', '', '', NULL, NULL, NULL, NULL, 10),
(241, 41, 4, 'Jumlah korban bencana yang mendapatkan makan ', '', '', NULL, NULL, NULL, NULL, 10),
(242, 41, 4, 'Jumlah korban bencana yang menerima paket sandang ', '', '', NULL, NULL, NULL, NULL, 10),
(243, 41, 4, 'Jumlah tempat penampungan pengungsi yang dimiliki', '', '', NULL, NULL, NULL, NULL, 10),
(244, 41, 4, 'Jumlah Paket permakanan khusus bagi kelompok rentan', '', '', NULL, NULL, NULL, NULL, 10),
(245, 41, 4, 'Jumlah korban bencana yang menerima pelayanan dukungan psikososial', '', '', NULL, NULL, NULL, NULL, 10),
(246, 41, 4, 'Jumlah pekerja sosial profesional/ tenaga kesejahteraan sosial dan atau relawan sosial yang tersedia', '', '', NULL, NULL, NULL, NULL, 10),
(247, 42, 4, 'Dokumen perencanaan tenaga kerja Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(248, 42, 4, 'Persentase akurasi proyeksi indikator dalam rencana tenaga kerja  ', '', '', NULL, NULL, NULL, NULL, 10),
(249, 42, 4, 'Jumlah perusahaan yang Menyusun rencana tenaga kerja', '', '', NULL, NULL, NULL, NULL, 10),
(250, 43, 4, 'Persentase penerapan program PBK dengan kualifikasi klaster', '', '', NULL, NULL, NULL, NULL, 10),
(251, 43, 4, 'Persentase instruktur bersertifikat kompetensi ', '', '', NULL, NULL, NULL, NULL, 10),
(252, 43, 4, 'Rasio jumlah instruktur terhadap peserta pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(253, 43, 4, 'Persentase LPK yang terakreditasi ', '', '', NULL, NULL, NULL, NULL, 10),
(254, 43, 4, 'Persentase LPK yang memiliki perizinan', '', '', NULL, NULL, NULL, NULL, 10),
(255, 43, 4, 'Jumlah penganggur yang dilatih', '', '', NULL, NULL, NULL, NULL, 10),
(256, 43, 4, 'Jumlah lulusan bersertifikat ', '', '', NULL, NULL, NULL, NULL, 10),
(257, 43, 4, 'Persentase penyerapan lulusan  ', '', '', NULL, NULL, NULL, NULL, 10),
(258, 43, 4, 'Lulusan bersertifikat Kompetensi', '', '', NULL, NULL, NULL, NULL, 10),
(259, 43, 4, 'Jumlah calon pekerja migran Indonesia/ calon tenaga kerja indonesia (CPMI/CTKI) yang diberikan pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(260, 43, 4, 'Jumlah pelatihan Calon Pekerja Migran Indonesia/Calon Tenaga Kerja Indonesia (CPMI/CTKI)', '', '', NULL, NULL, NULL, NULL, 10),
(261, 44, 4, 'Persentase perusahaan yang menerapkan program peningkatan produktivitas', '', '', NULL, NULL, NULL, NULL, 10),
(262, 44, 4, 'Data Tingkat Produktivitas Total', '', '', NULL, NULL, NULL, NULL, 10),
(263, 45, 4, 'Persentase perusahaan yang telah memiliki Peraturan Perusahaan (PP)', '', '', NULL, NULL, NULL, NULL, 10),
(264, 45, 4, 'Persentase perusahaan yang telah memiliki PKB  ', '', '', NULL, NULL, NULL, NULL, 10),
(265, 45, 4, 'Rekapitulasi tahunan jumlah konfederasi SP/SB yang tercatat, Federasi SP/SB yang tercatat, SP/SB di perusahaan yang tercatat, SP/SB di luar perusahaan yang tercatat dan anggota SP/SB di Perusahaan', '', '', NULL, NULL, NULL, NULL, 10),
(266, 45, 4, 'Persentase perusahaan yang sudah Menyusun struktur skala upah', '', '', NULL, NULL, NULL, NULL, 10),
(267, 45, 4, 'Persentase perusahaan yang telah terdaftar sebagai peserta BPJS Ketenagakerjaan ', '', '', NULL, NULL, NULL, NULL, 10),
(268, 45, 4, 'Persentase jumlah perusahaan yang berselisih ', '', '', NULL, NULL, NULL, NULL, 10),
(269, 45, 4, 'Jumlah mogok kerja  ', '', '', NULL, NULL, NULL, NULL, 10),
(270, 45, 4, 'Jumlah penutupan perusahaan', '', '', NULL, NULL, NULL, NULL, 10),
(271, 45, 4, 'Jumlah perselisihan kepentingan', '', '', NULL, NULL, NULL, NULL, 10),
(272, 45, 4, 'Jumlah perselisihan antar SP/SB di perusahaan ', '', '', NULL, NULL, NULL, NULL, 10),
(273, 45, 4, 'Jumlah perselisihan PHK', '', '', NULL, NULL, NULL, NULL, 10),
(274, 45, 4, 'Jumlah pekerja/buruh yang ter-PHK', '', '', NULL, NULL, NULL, NULL, 10),
(275, 45, 4, 'Jumlah perselisihan yang diselesaikan melalui perundingan bipartit', '', '', NULL, NULL, NULL, NULL, 10),
(276, 45, 4, 'Lembaga Kerja Sama (LKS) Tripartit yang diberdayakan', '', '', NULL, NULL, NULL, NULL, 10),
(277, 45, 4, 'Persentase perselisihan hubungan industrial yang diselesaikan melalui Perjanjian Bersama oleh Mediator Hubungan Internasional', '', '', NULL, NULL, NULL, NULL, 10),
(278, 46, 4, 'Jumlah lowongan pekerjaan yang tersedia di wilayah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(279, 46, 4, 'Jumlah pencari kerja terdaftar di Kabupaten  ', '', '', NULL, NULL, NULL, NULL, 10),
(280, 46, 4, 'Jumlah bursa kerja khusus diwilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(281, 46, 4, 'Jumlah tenaga kerja khusus terdaftar dalam satu kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(282, 46, 4, 'Jumlah pejabat fungsional pengantar kerja', '', '', NULL, NULL, NULL, NULL, 10),
(283, 46, 4, 'Jumlah lembaga penempatan tenaga kerja swasta (LPTKS) antar kerja lokal dalam satu wilayah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(284, 46, 4, 'Jumlah perjanjian kerja yang disahkan oleh dinas bidang ketenagakerjaan kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(285, 46, 4, 'Jumlah penempatan tenaga kerja melalui informasi pasar kerja (IPK) online (SISNAKER)', '', '', NULL, NULL, NULL, NULL, 10),
(286, 46, 4, 'Jumlah calon pekerja migran indonesia (CPMI)/calon tenaga kerja indonesia (CTKI) yang mendapatkan sosialisasi', '', '', NULL, NULL, NULL, NULL, 10),
(287, 46, 4, 'Jumlah calon pekerja migran indonesia atau CPMI/Calon tenaga kerja indonesia (CTKI) yang terdata', '', '', NULL, NULL, NULL, NULL, 10),
(288, 46, 4, 'Jumlah Pekerja Migran Indonesia (PMI)/Tenaga Kerja Indonesia (TKI) yang mendapatkan Fasilitasi Kepulangan', '', '', NULL, NULL, NULL, NULL, 10),
(289, 46, 4, 'Jumlah Pekerja Migran Indonesia/Tenaga Kerja Indonesia yang mendapatkan pendidikan dan pelatihan kerja', '', '', NULL, NULL, NULL, NULL, 10),
(290, 46, 4, 'Data Pemberdayaaan pekerja Migran Indonesia (PMI)/Tenaga kerja indonesia (TKI) Purna dan Keluarganya', '', '', NULL, NULL, NULL, NULL, 10),
(291, 46, 4, 'Jumlah layanan terpadu satu atap (LTSA) yang bentuk', '', '', NULL, NULL, NULL, NULL, 10),
(292, 46, 4, 'Jumlah kawasan transmigrasi yang difasilitasi penetapannya', '', '', NULL, NULL, NULL, NULL, 10),
(293, 46, 4, 'Jumlah satuan pemukiman transmigrasi yang difasilitasi pembangunannya', '', '', NULL, NULL, NULL, NULL, 10),
(294, 46, 4, 'Jumlah satuan permukiman transmigrasi yang dibina', '', '', NULL, NULL, NULL, NULL, 10),
(295, 47, 4, 'Jumlah lembaga pemerintah tingkat daerah Kabupaten yang telah dilatih PUG', '', '', NULL, NULL, NULL, NULL, 10),
(296, 47, 4, 'Jumlah program/kegiatan PUG pada perangkat daerah yang sudah dievaluasi melalui analisis gender di tingkat Kabupaten ', '', '', NULL, NULL, NULL, NULL, 10),
(297, 48, 4, 'Jumlah media massa (cetak, elektronIk) yang bekerja sama dengan pemkab (Dinas PPPA) untuk melakukan KIE pencegahan kekerasan terhadap anak', '', '', NULL, NULL, NULL, NULL, 10),
(298, 48, 4, 'Jumlah lembaga layanan anak yang telah memiliki standar pelayanan minimal', '', '', NULL, NULL, NULL, NULL, 10),
(299, 48, 4, 'Persentase korban kekerasan anak yang terlayani', '', '', NULL, NULL, NULL, NULL, 10),
(300, 48, 4, 'Jumlah lembaga layanan anak yang mendapat pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(301, 48, 4, 'Jumlah lembaga layanan anak yang mendapatkan bantuan keuangan/fasilitasi oleh Pemerintah Daerah Kabupaten (APBD Kabupaten)', '', '', NULL, NULL, NULL, NULL, 10),
(302, 49, 4, 'Jumlah organisasi kemasyarakatan yang bergerak dalam bidang perempuan tingkat kabupaten yang mendapatkan pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(303, 49, 4, 'Jumlah kader perempuan tingkat kabupaten yang sudah dilatih', '', '', NULL, NULL, NULL, NULL, 10),
(304, 49, 4, 'Jumlah lembaga layanan pemberdayaan perempuan yang mendapat pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(305, 49, 4, 'Jumlah  lembaga layanan perempuan yang mendapatkan bantuan keuangan/fasilitas oleh Pemerintah Daerah Kabupaten (APBD Kabupaten)', '', '', NULL, NULL, NULL, NULL, 10),
(306, 49, 4, 'Jumlah kebijakan/program pencegahan kekerasan terhadap perempuan termasuk TPPO pada perangkat daerah yang sudah dievaluasi', '', '', NULL, NULL, NULL, NULL, 10),
(307, 49, 4, 'Jumlah lembaga penyediaan layanan perlindungan hak perempuan yang telah terstandardisasi', '', '', NULL, NULL, NULL, NULL, 10),
(308, 49, 4, 'Persentase korban kekerasan perempuan yang terlayani', '', '', NULL, NULL, NULL, NULL, 10),
(309, 50, 4, 'Tersedianya infrastruktur pergudangan dan sarana pendukung lainnya untuk penyimpanan cadangan pangan', '', '', NULL, NULL, NULL, NULL, 10),
(310, 50, 4, 'tersalurnya pangan pokok dan pangan lainnya', '', '', NULL, NULL, NULL, NULL, 10),
(311, 50, 4, 'Tersedianya regulasi harga minimum daerah untuk pangan lokal', '', '', NULL, NULL, NULL, NULL, 10),
(312, 50, 4, 'terlaksananya kegiatan pemberdayaan masyarakat dalam rangka pemenuhan konsumsi pangan yang beragam dan bergizi seimbang', '', '', NULL, NULL, NULL, NULL, 10),
(313, 50, 4, 'tersedianya peta ketahanan dan perentanan pangan', '', '', NULL, NULL, NULL, NULL, 10),
(314, 50, 4, 'Tertanganinya kerawanan pangan', '', '', NULL, NULL, NULL, NULL, 10),
(315, 50, 4, 'tersalurnya cadangan pangan pada daerah rentan rawan pangan', '', '', NULL, NULL, NULL, NULL, 10),
(316, 50, 4, 'terlaksananya pengawasan keamanan pangan segar', '', '', NULL, NULL, NULL, NULL, 10),
(317, 51, 4, 'SK izin lokasi yang diterbitkan oleh Bupati', '', '', NULL, NULL, NULL, NULL, 10),
(318, 51, 4, 'SK Bupati tentang Penetapan Tanak Obyek Landreform yang bersumber dari tanah kelebihan maksimum/absentee dan daftar subjek', '', '', NULL, NULL, NULL, NULL, 10),
(319, 51, 4, 'SK Bupati tentang penetapan besaran ganti rugi kepada bekas pemilik tanah kelebihan maksimum/absentee', '', '', NULL, NULL, NULL, NULL, 10),
(320, 51, 4, 'Dokumen izin membuka tanah', '', '', NULL, NULL, NULL, NULL, 10),
(321, 51, 4, 'Dokumen Perencanaan Penggunaan tanah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(327, 57, 4, 'Hasiil perhitungan Kabupaten terhadap Indeks Kualitas Air (IKA)', '', '', NULL, NULL, NULL, NULL, 10),
(328, 57, 4, 'Hasiil perhitungan Kabupaten terhadap Indeks Kualitas Udara (IKU)', '', '', NULL, NULL, NULL, NULL, 10),
(329, 57, 4, 'Hasiil perhitungan Kabupaten terhadap Indeks Tutupan Hutan (ITH)', '', '', NULL, NULL, NULL, NULL, 10),
(330, 58, 4, 'Tersedianya informasi terkait rasio angkutan pengelolaan sampah terhadap volume timbulan sampah', '', '', NULL, NULL, NULL, NULL, 10),
(331, 58, 4, 'Tersedianya informasi terkait Kapasitas TPA terhadap volume timbulan sampah', '', '', NULL, NULL, NULL, NULL, 10),
(332, 58, 4, 'Tersedianya informasi terkait Jumlah TPST dibagi jumlah sampah pada masing-masing lingkungan ', '', '', NULL, NULL, NULL, NULL, 10),
(333, 59, 4, 'Data izin lingkungan PPLH dan PUU LH yang diterbitkan oleh Pemerintah Daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(334, 59, 4, 'Rasio pejabat pengawas LH di daerah (PPLHD) di Kabupaten terhadap usaha yang izin lingkungan, izin PPLH dan PUULH yang diterbitkan oleh Pemerintah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(335, 59, 4, 'Penetapan hak MHA terkait dengan PPLH yang berada di daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(336, 59, 4, 'Terfasilitasinya kegiatan peningkatan pengetahuan dan keterampilan masyarakat hukum adat terkait PPLH', '', '', NULL, NULL, NULL, NULL, 10),
(337, 59, 4, 'Jumlah lembaga masyarakat yang diberikan diklat ', '', '', NULL, NULL, NULL, NULL, 10),
(338, 59, 4, 'Penanganan pengaduan masyarakat terkait izin lingkungan dan atau izin PPLH yang diterbitkan oleh pemerintah daerah Kabupaten, lokasi usaha dan dampaknya di daerah kabupaten yang ditangani', '', '', NULL, NULL, NULL, NULL, 10),
(339, 59, 4, 'Tersedianya dokumen rencana pengelolaan tahura', '', '', NULL, NULL, NULL, NULL, 10),
(340, 59, 4, 'Pemberdayaan masyarakat di daerah penyangga', '', '', NULL, NULL, NULL, NULL, 10),
(341, 59, 4, 'Pemulihan ekosistem pada Tahura', '', '', NULL, NULL, NULL, NULL, 10),
(342, 59, 4, 'Menurunnya gangguan kawasan TAHURA', '', '', NULL, NULL, NULL, NULL, 10),
(343, 60, 4, 'Penerbitan akta perkawinan', '', '', NULL, NULL, NULL, NULL, 10),
(344, 60, 4, 'Penerbitan akta perceraian', '', '', NULL, NULL, NULL, NULL, 10),
(345, 60, 4, 'Penerbitan akta kematian', '', '', NULL, NULL, NULL, NULL, 10),
(346, 60, 4, 'Penyajian data kependudukan', '', '', NULL, NULL, NULL, NULL, 10),
(350, 64, 4, 'Jumlah desa yang terfasilitasi dalam kerjasama antar desa', '', '', NULL, NULL, NULL, NULL, 10),
(351, 64, 4, 'Jumlah desa yang melakukan kerjasama antar desa tahun berjalan dikurangi jumlah desa yang melakukan kerjasama antar desa tahun sebelumnya', '', '', NULL, NULL, NULL, NULL, 10),
(352, 64, 4, 'Jumlah lembaga kemasyarakatan dan lembaga adat di desa yang terfasilitasi dalam peningkatan kapasitas dan diberdayakan', '', '', NULL, NULL, NULL, NULL, 10),
(353, 64, 4, 'Jumlah peningkatan desa yang lembaga kemasyarakatan dan lembaga adatnya melaksanakan kegiatan ekonomi produktif dan pemberdayaan', '', '', NULL, NULL, NULL, NULL, 10),
(354, 65, 4, 'Jumlah desa yang terfasilitasi dalam kerja sama antar desa', '', '', NULL, NULL, NULL, NULL, 10),
(355, 65, 4, 'Jumlah desa yang melakukan kerja sama antar desa tahun berjalan dikurangi jumlah desa yang melakukan kerja sama antar desa tahun sebelumnya', '', '', NULL, NULL, NULL, NULL, 10),
(356, 65, 4, 'Jumlah lembaga kemasyarakatan dan lembaga adat di desa yang terfasilitasi dalam peningkatan kapasitas dan diberdayakan', '', '', NULL, NULL, NULL, NULL, 10),
(357, 65, 4, 'Jumlah peningkatan desa yang lembaga kemasyarakatan dan lembaga adatnya melaksanakan kegiatan ekonomi produktif dan pemberdayaan', '', '', NULL, NULL, NULL, NULL, 10),
(358, 66, 4, 'Tersedianya dokumen Grand Design Pembangunan Kependudukan (GDPK) yang di Perda kan', '', '', NULL, NULL, NULL, NULL, 10),
(359, 66, 4, 'Median Usia Kawin Pertama Perempuan (MUKP) seluruh wanita umur 25-49 tahun', '', '', NULL, NULL, NULL, NULL, 10),
(360, 66, 4, 'Angka kelahiran remaja umur 15-19 tahun (Age Specific Fertility Rate/ASFR 15-19', '', '', NULL, NULL, NULL, NULL, 10),
(361, 66, 4, 'Persentase masyarakat yang terpapar isi pesan Program KKBPK (advokasi dan KIE)', '', '', NULL, NULL, NULL, NULL, 10),
(362, 66, 4, 'Jumlah stakeholder/pemangku kepentingan dan mitra kerja (termasuk organisasi kemasyarakatan) yang berperan serta aktif dalam pengelolaan Program KKBPK', '', '', NULL, NULL, NULL, NULL, 10),
(363, 67, 4, 'Persentase fasilitasi kesehatan (faskes)yang siap melayani KB MKJP', '', '', NULL, NULL, NULL, NULL, 10),
(364, 67, 4, 'Persentase peserta KB Aktif (PA) Metode Kontrasepsi Jangka Panjang (MKJP)', '', '', NULL, NULL, NULL, NULL, 10),
(365, 67, 4, 'Pemerintah daerah Kabupaten yang memiliki kelompok kerja KKBPK yang efektif', '', '', NULL, NULL, NULL, NULL, 10),
(366, 67, 4, 'Persentase pelayanan KB pasca persalinan', '', '', NULL, NULL, NULL, NULL, 10),
(367, 68, 4, 'Persentase kesertaan KB di Kabupaten dan Kota dengan kesertaan rendah', '', '', NULL, NULL, NULL, NULL, 10),
(368, 68, 4, 'Persentase kesertaan KB keluarga Penerima Bantuan Iuran (PBI)', '', '', NULL, NULL, NULL, NULL, 10),
(369, 69, 4, 'Persentase tersedianya fasilitas penyelenggaraan terminal penumpang angkutan Tipe C', '', '', NULL, NULL, NULL, NULL, 10),
(370, 69, 4, 'Terlaksananya pelayanan uji berkala', '', '', NULL, NULL, NULL, NULL, 10),
(371, 69, 4, 'Penetapan tarif angkutan orang antar kota dalam Kabupaten serta angkutan perkotaan dan perdesaan kelas ekonomi', '', '', NULL, NULL, NULL, NULL, 10),
(372, 69, 4, 'Persentase pelaksanaan manajemen dan rekayasa lalu lintas', '', '', NULL, NULL, NULL, NULL, 10),
(373, 70, 4, 'Persentase pelaksanaan manajemen dan rekayasa lalu lintas untuk jaringan jalan Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(374, 71, 4, 'Persentase perangkat daerah yang terkoneksi di Jaringan Intra Pemerintah atau menggunakan akses internet yang diamankan yang disediakan oleh Dinas Kominfo', '', '', NULL, NULL, NULL, NULL, 10),
(375, 71, 4, 'Persentase perangkat daerah yang menggunakan akses internet yang berkualitas yang disediakan Dinas Kominfo', '', '', NULL, NULL, NULL, NULL, 10),
(376, 71, 4, 'Tersedianya sistem elektronik komunikasi intra pemerintah yang disediakan Dinas Kominfo (berbasis suara, video, teks, data dan sinyal lainnya) dengan memanfaatkan jaringan intra pemerintah', '', '', NULL, NULL, NULL, NULL, 10),
(377, 72, 4, 'Persentase kegiatan (event), perangkat daerah dan pelayanan publik pada Pemerintah Daerah yang dimanfaatkan secara daring dengan memanfaatkan domain dan sub domain Instansi Penyelenggara Negara sesuai dengan Peraturan Menteri Kominfo Nomor 5 Tahun 2015 te', '', '', NULL, NULL, NULL, NULL, 10),
(378, 72, 4, 'Persentase perangkat daerah yang memiliki portal dan situs web yang sesuai standar', '', '', NULL, NULL, NULL, NULL, 10),
(379, 72, 4, 'Persentase perangkat daerah yang mengimplementasikan layanan aplikasi umum dan aplikasi khusus yang ditetapkan sesuai dengan ketentuan perundang-undangan', '', '', NULL, NULL, NULL, NULL, 10),
(380, 72, 4, 'Persentase layanan SPBE (layanan publik dan layanan administrasi pemerintahan) yang tercantum dalam dokumen proses bisnis yang telah diimplementasikan secara elektronik', '', '', NULL, NULL, NULL, NULL, 10);
INSERT INTO `lppd_output` (`id`, `id_outcome`, `id_master_status`, `nama`, `bukti`, `hasil`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(381, 72, 4, 'Persentase layanan SPBE (layanan publik dan layanan administrasi pemerintahan) yang memanfaatkan sertifikat elektronik', '', '', NULL, NULL, NULL, NULL, 10),
(382, 72, 4, 'Persentase sistem elektronik yang terdaftar sesuai ketentuan peraturan perundang-undangan', '', '', NULL, NULL, NULL, NULL, 10),
(383, 72, 4, 'Persentase layanan publik dan layanan administrasi yang terintegrasi dengan sistem penghubung layanan pemerintah', '', '', NULL, NULL, NULL, NULL, 10),
(384, 72, 4, 'Persentase perangkat daerah yang menggunakan layanan pusat data pemerintah', '', '', NULL, NULL, NULL, NULL, 10),
(385, 72, 4, 'Persentase perangkat daerah yang menyimpan data di pusat data pemerintah', '', '', NULL, NULL, NULL, NULL, 10),
(386, 72, 4, 'Persentase perangkat daerah yang memperbaharui datanya sesuai siklus jenis data (sesuai renstra kominfo)', '', '', NULL, NULL, NULL, NULL, 10),
(387, 72, 4, 'Persentase data yang dapat berbagi pakai', '', '', NULL, NULL, NULL, NULL, 10),
(388, 72, 4, 'Persentase perangkat daerah yang mengimplementasi inovasi yang mendukung smart city', '', '', NULL, NULL, NULL, NULL, 10),
(389, 72, 4, 'Persentase ASN pengelola TIK yang tersertifikasi kompetensi di bawah pengelolaan Dinas Kominfo', '', '', NULL, NULL, NULL, NULL, 10),
(390, 72, 4, 'Tersedianya peraturan daerah atau peraturan kepala daerah terkait implementasi e-government', '', '', NULL, NULL, NULL, NULL, 10),
(391, 73, 4, 'Persentase komunitas masyarakat/mitra strategis pemerintah daerah Kabupaten yang menyebarkan informasi dan kebijakan pemerintah dan pemerintah  provinsi', '', '', NULL, NULL, NULL, NULL, 10),
(392, 73, 4, 'Persentase konten informasi terkait program dan kebijakan pemerintah dan pemerintah Kabupaten sesuai dengan strategi komunikasi (STRAKOM)', '', '', NULL, NULL, NULL, NULL, 10),
(393, 73, 4, 'Persentase diseminasi dan layanan informasi publik yang dilaksanakan sesuai dengan strategi komunikasi (STARKOM) dan SOP yang telah ditetapkan', '', '', NULL, NULL, NULL, NULL, 10),
(394, 74, 4, 'Persentase fasilitasi penerbitan ijin usaha simpan pinjam untuk koperasi dengan wilayah keanggotaan dalam daerah kab/kota ', '', '', NULL, NULL, NULL, NULL, 10),
(395, 74, 4, 'Persentase fasilitasi penerbitan izin pembukaan kantor cabang, cabang pembantu dan kantor kas usaha simpan pinjam oleh koperasi untuk koperasi dengan wilayah keanggotaan dalam daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(396, 74, 4, 'Persentase pemeriksaan dan pengawasan yang dilakukan untuk koperasi dengan wilayah keanggotaan dalam daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(397, 74, 4, 'Persentase usaha simpan pinjam oleh koperasi yang dinilai kesehatannya untuk koperasi dengan wilayah keanggotaan dalam daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(398, 74, 4, 'Persentase koperasi yang mengikuti pelatihan untuk koperasi dengan wilayah keanggotaan dalam  daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(399, 74, 4, 'Persentase jumlah anggota koperasi yang telah mengikuti pelatihan perkoperasian untuk koperasi dengan wilayah keanggotaan dalam daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(400, 74, 4, 'Persentase koperasi yang telah menyelenggarakan pendidikan dan pelatihan perkoperasian untuk koperasi dengan wilayah keanggotaan dalam  daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(401, 74, 4, 'Persentase koperasi yang diberikan dukungan fasilitasi pembiayaan ', '', '', NULL, NULL, NULL, NULL, 10),
(402, 74, 4, 'Persentase fasilitasi penerbitan sertifikat Nomor Induk Koperasi (NIK) untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(403, 74, 4, 'Persentase koperasi yang diberikan dukungan fasilitasi pembiayaan untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(404, 74, 4, 'Persentase yang diberikan dukungan fasilitasi pemasaran untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(405, 74, 4, 'Persentase koperasi yang diberikan dukungan fasilitasi pendampingan kelembagaan dan usaha untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(406, 74, 4, 'Persentase koperasi yang diberikan dukungan fasilitasi kemitraan untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(407, 75, 4, 'Rasio pertumbuhan wirausaha baru yang berskala mikro', '', '', NULL, NULL, NULL, NULL, 10),
(408, 75, 4, 'Persentase jumlah usaha mikro yang diinput ke dalam sistem online data system (ODS)', '', '', NULL, NULL, NULL, NULL, 10),
(409, 75, 4, 'Persentase jumlah usaha mikro yang bermitra', '', '', NULL, NULL, NULL, NULL, 10),
(410, 75, 4, 'Persentase jumlah usaha kecil yang diberikan dukungan fasilitasi standarisasi dan sertifikasi produk usaha', '', '', NULL, NULL, NULL, NULL, 10),
(411, 75, 4, 'Persentase jumlah usaha mikro yang dberikan dukungan fasilitasi pemasaran', '', '', NULL, NULL, NULL, NULL, 10),
(412, 75, 4, 'Rasio usaha Mikro yang diberikan dukungan fasilitasi pelatihan', '', '', NULL, NULL, NULL, NULL, 10),
(413, 75, 4, 'Persentase usaha Mikro yang diberikan pendampingan melalui Lembaga pendampingan melalui lembaga pendampingan', '', '', NULL, NULL, NULL, NULL, 10),
(414, 76, 4, 'PERDA mengenai pemberian fasilitas/intensif penanaman modal yang menjadi kewenangan daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(415, 76, 4, 'Standar operasional prosedur pelaksanaan pemberian fasilitas/insentif penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(416, 76, 4, 'Laporan evaluasi pelaksanaan pemberian fasilitas/insentif penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(417, 76, 4, 'Kegiatan seminar bisnis, forum, one on one meeting', '', '', NULL, NULL, NULL, NULL, 10),
(418, 76, 4, 'Kegiatan pameran penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(419, 76, 4, 'Kegiatan penerimaan misi penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(420, 76, 4, 'Konsultasi perizinan dan non perizinan penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(421, 76, 4, 'Penerbitan perizinan dan non perizinan penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(422, 76, 4, 'Laporan realisasi penanaman modal', '', '', NULL, NULL, NULL, NULL, 10),
(423, 76, 4, 'Pembinaan aparatur penanaman modal tingkat Kabupaten serta kabupaten/kota', '', '', NULL, NULL, NULL, NULL, 10),
(424, 76, 4, 'Pembinaan penanaman modal PMA dan PMDN ', '', '', NULL, NULL, NULL, NULL, 10),
(425, 76, 4, 'Tersedianya data dan informasi perizinan dan non perizinan Kabupaten ', '', '', NULL, NULL, NULL, NULL, 10),
(426, 77, 4, 'Jumlah pelatih olah raga yang memiliki kompetensi di satuan2 pendidikan', '', '', NULL, NULL, NULL, NULL, 10),
(427, 77, 4, 'Jumlah penyelenggaraan event OR prestasi tingkat daerah', '', '', NULL, NULL, NULL, NULL, 10),
(428, 78, 4, 'Jumlah pemuda yang mendapat pelatihan kewirausahaan', '', '', NULL, NULL, NULL, NULL, 10),
(429, 78, 4, 'Jumlah pemuda yang mendapat bantuan kewirausahaan', '', '', NULL, NULL, NULL, NULL, 10),
(430, 79, 4, 'Jumlah pemuda yang mendapat pelatihan kader pengembangan kepemimpinan, kepedulian, kesukarelawan dan kepeloporan pemuda', '', '', NULL, NULL, NULL, NULL, 10),
(431, 79, 4, 'Jumlah pengelola organisasi kepemudaan yang mendapat pelatihan manajemen organisasi kepemudaan', '', '', NULL, NULL, NULL, NULL, 10),
(432, 80, 4, 'Tersedianya buku profil daerah', '', '', NULL, NULL, NULL, NULL, 10),
(433, 80, 4, 'Jumlah survey statistik sektoral yang dilakukan', '', '', NULL, NULL, NULL, NULL, 10),
(434, 80, 4, 'Jumlah kompilasi statistik sektoral yang dilakukan', '', '', NULL, NULL, NULL, NULL, 10),
(435, 80, 4, 'Jumlah survey  statistik sektoral yang mendapat rekomendasi BPS', '', '', NULL, NULL, NULL, NULL, 10),
(436, 80, 4, 'Jumlah kompilasi statistik sektoral yang mendapat rekomendasi dr BPS', '', '', NULL, NULL, NULL, NULL, 10),
(437, 80, 4, 'Persentase kelengkapan metadata kegiatan statistik sektoral', '', '', NULL, NULL, NULL, NULL, 10),
(438, 80, 4, 'Persentase kelengkapan metadata Variabel sektoral', '', '', NULL, NULL, NULL, NULL, 10),
(440, 82, 4, 'Persentase kegiatan strategis yang telah diamankan melalui kegiatan pengamanan sinyal dibanding banyaknya jumlah kegiatan strategis yang harus diamankan', '', '', NULL, NULL, NULL, NULL, 10),
(441, 82, 4, 'Persentase sistem elektronik yang telah menerapkan prinsip sistem manajemen yang telah menerapkan prinsip-prinsip manajeman keamanan informasi (SMKI) dan atau aplikasi persandian dibanding jumlah sistem elektronik yang ada pada pemerintah daerah', '', '', NULL, NULL, NULL, NULL, 10),
(442, 82, 4, 'Persentase sistem elektronik/asset informasi yang telah diaudit dengan resiko kategori rendah', '', '', NULL, NULL, NULL, NULL, 10),
(443, 82, 4, 'Persentase titik yang diamankan dibanding dengan jumlah seluruh titik pada pemerintah (PHKS) yang ditetapkan', '', '', NULL, NULL, NULL, NULL, 10),
(444, 83, 4, 'Jumlah obyek pemajuan kebudayaan yang dilindungi (inventarisasi, pengamanan pemeliharaan, penyelamatan dan publikasi)', '', '', NULL, NULL, NULL, NULL, 10),
(445, 83, 4, 'Jumlah obyek pemajuan kebudayaan yang dikembangkan (penyebarluasan, pengkajian, penayaan keberagaman ', '', '', NULL, NULL, NULL, NULL, 10),
(446, 83, 4, 'Jumlah obyek pemajuan kebudayaan yang dimanfaatkan (membangun karakter bangsa,meningkatkan ketahanan budaya,dan meningkatkan kesejahteraan masyarakat)', '', '', NULL, NULL, NULL, NULL, 10),
(447, 83, 4, 'Jumlah SDM, lembaga dan pranata yang dibina (peningkatan kompetensi, standarisasi dan sertifikasi, serta peningkatan kapasitas tata kelola)', '', '', NULL, NULL, NULL, NULL, 10),
(448, 83, 4, 'Register cagar budaya (pendaftaran, pengjasian, penetapan, pencatatan, pemeringkatan, penghapusan)', '', '', NULL, NULL, NULL, NULL, 10),
(449, 83, 4, 'Perlindungan cagar budaya Kabupaten (penyelamatan, zonasi, pemeliharaan dan pemugaran)', '', '', NULL, NULL, NULL, NULL, 10),
(450, 83, 4, 'Layanan perijzinan membawa cagar budaya Kabupaten ke luar Kabupaten dengan dukungan data', '', '', NULL, NULL, NULL, NULL, 10),
(451, 83, 4, 'Pengembangan cagar  budaya Kabupaten (penelitian, revitalisasi, adaptasi)', '', '', NULL, NULL, NULL, NULL, 10),
(452, 83, 4, 'Pemanfaatan cagar budaya Kabupaten (dalam hal agama, sosial, pendidikan, ilmu pengetahuan, teknologi, kebudayaan, dan pariwisata)', '', '', NULL, NULL, NULL, NULL, 10),
(453, 83, 4, 'Pengelolaan, pengamanan, pengembangan dan pemanfaatan koleksi museum', '', '', NULL, NULL, NULL, NULL, 10),
(454, 83, 4, 'Peningkatan akses masyarakat dalam penyelenggaraan dan pelaksanaan kegiatan museum ', '', '', NULL, NULL, NULL, NULL, 10),
(455, 83, 4, 'Peningkatan akses masyarakat dalam pengelolaan sarana dan prasarana museum', '', '', NULL, NULL, NULL, NULL, 10),
(456, 83, 4, 'Pengelolaan, pengamanan, pengembangan dan pemanfaatan koleksi museum', '', '', NULL, NULL, NULL, NULL, 10),
(457, 83, 4, 'Pembentukan tim pendaftaran cagar budaya', '', '', NULL, NULL, NULL, NULL, 10),
(458, 83, 4, 'Pembentukan tim ahli cagar budaYa Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(459, 83, 4, 'Fasilitas sertifikasi tim ahli cagar budaya', '', '', NULL, NULL, NULL, NULL, 10),
(460, 83, 4, 'Pemetaan sdm cagar budaya dan permuseuman', '', '', NULL, NULL, NULL, NULL, 10),
(461, 83, 4, 'Peningkatan kompetensi sdm cagar budaya dan permuseuman', '', '', NULL, NULL, NULL, NULL, 10),
(462, 83, 4, 'Penyediaan sarana dan prasarana pendaftaran cagar budaya dan permuseuman', '', '', NULL, NULL, NULL, NULL, 10),
(463, 83, 4, 'Penyelenggaraan kegiatan museum yang melibatkan masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(464, 84, 4, 'Rasio ketercukupan koleksi perpustakaan dengan penduduk', '', '', NULL, NULL, NULL, NULL, 10),
(465, 84, 4, 'Persentase ketermanfaatkan perpustakaan oleh masyarakat ', '', '', NULL, NULL, NULL, NULL, 10),
(466, 84, 4, 'Rasio ketercukupan tenaga perpustakaan dengan penduduk', '', '', NULL, NULL, NULL, NULL, 10),
(467, 84, 4, 'Persentase perpustakaan sesuai standar nasional perpustakaan', '', '', NULL, NULL, NULL, NULL, 10),
(468, 84, 4, 'Jumlah pemasyarakatan gemar membaca di masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(469, 85, 4, 'Jumlah naskah kuno yang diakuisisi/dialih media (digitalisasi)/terdaftar yang ada di wilayahnya', '', '', NULL, NULL, NULL, NULL, 10),
(470, 85, 4, 'Jumlah naskah kuno yang dialih aksara dan dialih bahasa', '', '', NULL, NULL, NULL, NULL, 10),
(471, 85, 4, 'Jumlah koleksi budaya etnis nusantara yang tersimpan dan/atau terdaftar yang ada di wilayahnya (item)', '', '', NULL, NULL, NULL, NULL, 10),
(472, 86, 4, 'Persentase arsip aktif yang telah dibuatkan daftar arsip', '', '', NULL, NULL, NULL, NULL, 10),
(473, 86, 4, 'Persentase arsip in-aktif yang telah dibuatkan daftar arsip', '', '', NULL, NULL, NULL, NULL, 10),
(474, 86, 4, 'Persentase arsip statis yang telah dibuatkan sarana bantu temu balik', '', '', NULL, NULL, NULL, NULL, 10),
(475, 86, 4, 'Persentase jumlah arsip yang dimasukkan dalam SIKN melalui JIKN', '', '', NULL, NULL, NULL, NULL, 10),
(476, 87, 4, 'Pemusnahan arsip yang sesuai NSPK', '', '', NULL, NULL, NULL, NULL, 10),
(477, 87, 4, 'Perlindungan dan penyelamatan arsip akibat bencana yang sesuai NSPK', '', '', NULL, NULL, NULL, NULL, 10),
(478, 87, 4, 'Penyelamatan arsip perangkat daerah Kabupaten yang digabung dan atau dibubarkan dan pemekaran daerah kecamatan/kelurahan yang sesuai NSPK di Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(479, 87, 4, 'Autentifikasi arsip statis dan arsip hasil alih media yang dikelola oleh lembaga kearsipan Kabupaten yang sesuai NSPK', '', '', NULL, NULL, NULL, NULL, 10),
(480, 87, 4, 'Pencarian arsip statis yang pengelolaannya menjadi kewenangan daerah Kabupaten yang dinyatakan hilang dalam bentuk daftar pencarian arsip yang sesuai NSPK', '', '', NULL, NULL, NULL, NULL, 10),
(481, 87, 4, 'Penerbitan izin penggunaan arsip yang bersifat tertutup yang disimpan di lembaga kearsipan daerah Kabupaten yang sesuai NSPK', '', '', NULL, NULL, NULL, NULL, 10),
(482, 88, 4, 'Jumlah rumah tangga nelayan yang melakukan diversfikasi usaha (RTP)', '', '', NULL, NULL, NULL, NULL, 10),
(483, 88, 4, 'Persentase tempat pelelangan ikan yang operasional', '', '', NULL, NULL, NULL, NULL, 10),
(484, 88, 4, 'Jumlah izin usaha perikanan (IUP) di bidang pembudidayaan ikan yang usahanya dalam 1 (satu) Daerah Kabupaten yang diterbitkan', '', '', NULL, NULL, NULL, NULL, 10),
(485, 88, 4, 'Jumlah pembudidayaan ikan yang memperoleh kegiatan pemberdayaan (pendidikan dan pelatihan/penyuluhandan pendampingan/kemitraan usaha/kemudahan akses iptek dan informasi/dan penguatan kelembagaan)', '', '', NULL, NULL, NULL, NULL, 10),
(486, 88, 4, 'Jumlah benih budidaya air tawar dan air payau yang di produksi', '', '', NULL, NULL, NULL, NULL, 10),
(487, 89, 4, 'Jumlah entitas pengelolaan destinasi', '', '', NULL, NULL, NULL, NULL, 10),
(488, 89, 4, 'Jumlah kelengkapan infrastruktur dasar, fasilitas umum, dan fasilitas pariwisata', '', '', NULL, NULL, NULL, NULL, 10),
(489, 89, 4, 'Jumlah tanda daftar usaha pariwisata per sub jenis usaha di kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(490, 89, 4, 'Jumlah wisatawan mancanegara per kebangsaan', '', '', NULL, NULL, NULL, NULL, 10),
(491, 89, 4, 'Jumlah promosi event daerah yang terlaksana di dalam negeri', '', '', NULL, NULL, NULL, NULL, 10),
(492, 89, 4, 'Jumlah event luar negeri yang diikuti kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(493, 89, 4, 'Jumlah industri pariwisata daerah yang berpartisipasi pada even promosi pariwisata di dalam negeri', '', '', NULL, NULL, NULL, NULL, 10),
(494, 89, 4, 'Persentase tenaga kerja di sektor pariwisata yang disertifikasi', '', '', NULL, NULL, NULL, NULL, 10),
(495, 89, 4, 'Persentase SDM peserta pembekalan sektor kepariwisataan', '', '', NULL, NULL, NULL, NULL, 10),
(496, 89, 4, 'Jumlah lokasi yang memperoleh pemberdayaan masyarakat dan pembinaan kemitraan usaha masyarakat', '', '', NULL, NULL, NULL, NULL, 10),
(501, 94, 4, 'Jumlah Sarana dan prasana pertanian yang diberikan', '', '', NULL, NULL, NULL, NULL, 10),
(502, 94, 4, 'Prasarana pertanian yang digunakan  ', '', '', NULL, NULL, NULL, NULL, 10),
(503, 94, 4, 'Penerbitan izin usaha pertanian', '', '', NULL, NULL, NULL, NULL, 10),
(504, 94, 4, 'Persentase prasarana yang digunakan  ', '', '', NULL, NULL, NULL, NULL, 10),
(505, 94, 4, 'Persentase jumlah usulan izin usaha pertanian kabupaten ', '', '', NULL, NULL, NULL, NULL, 10),
(506, 95, 4, 'Persentase Fasilitasi Penanggulangan bencana ', '', '', NULL, NULL, NULL, NULL, 10),
(507, 96, 4, 'Penerbitan Izin Pemanfaatan Langsung Panas Bumi Dalam Daerah Kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(508, 97, 4, 'Persentase perizinan yang diterbitkan sesuai dengan ketentuan untuk izin Pusat Perbelanjaan', '', '', NULL, NULL, NULL, NULL, 10),
(509, 97, 4, 'Persentase perizinan yang diterbitkan sesuai dengan ketentuan untuk izin Toko Swalayan', '', '', NULL, NULL, NULL, NULL, 10),
(510, 97, 4, 'Persentase Penebitan TDG', '', '', NULL, NULL, NULL, NULL, 10),
(511, 97, 4, 'Persentase gudang yang tidak memiliki TDG', '', '', NULL, NULL, NULL, NULL, 10),
(512, 97, 4, 'Persentase penerbitan STPW yang tepat waktu untuk Penerima waralaba dari waralaba dalam negeri', '', '', NULL, NULL, NULL, NULL, 10),
(513, 97, 4, 'Persentase penerbitan STPW yang tepat waktu untuk Penerima waralaba lanjutan dari waralaba dalam negeri', '', '', NULL, NULL, NULL, NULL, 10),
(514, 97, 4, 'Persentase penerbitan STPW yang tepat waktu untuk Penerima waralaba lanjutan dari waralaba luar negeri', '', '', NULL, NULL, NULL, NULL, 10),
(515, 97, 4, 'Persentase pemeriksaan fasilitas penyimpanan bahan berbahaya dan pengawasan distribusi, pengemasan dan pelabelan bahan berbahaya di tingkat kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(516, 97, 4, 'Persentase penerbitan SKA yang tepat waktu', '', '', NULL, NULL, NULL, NULL, 10),
(517, 97, 4, 'Persentase pengembangan dan pengelolaan sarana distribusi perdagangan di wilayah kerjanya', '', '', NULL, NULL, NULL, NULL, 10),
(518, 97, 4, 'Persentase Koefisien variasi harga antar waktu', '', '', NULL, NULL, NULL, NULL, 10),
(519, 98, 4, 'Jumlah pupuk dan pestisida yang tersalurkan', '', '', NULL, NULL, NULL, NULL, 10),
(520, 99, 4, 'Persentase alat-alat ukur, takar, timbang dan perlengkapannya (UTTP) yang ditera/tera ulang dalam tahun berjalan', '', '', NULL, NULL, NULL, NULL, 10),
(521, 99, 4, 'Persentase kesesuaian BDKT yang diawasi terhadap ketentuan yang berlaku', '', '', NULL, NULL, NULL, NULL, 10),
(522, 100, 4, 'Persentase jumlah penetapan izin usaha kawasan industri (IUKI) dan izin perluasan kawasan industri (IPKI) yang lokasinya di daerah kabupaten', '', '', NULL, NULL, NULL, NULL, 10),
(523, 101, 4, 'Persentase terselesaikannya dokumen RPIK sampai dengan ditetapkannya menjadi Perda', '', '', NULL, NULL, NULL, NULL, 10),
(524, 102, 4, 'Persentase jumlah Izin Usaha Industri (IUI) kecil dan menengah yang diterbitkan', '', '', NULL, NULL, NULL, NULL, 10),
(525, 103, 4, 'Persentase jumlah Izin Perluasan Industri (IPUI) bagi industri kecil dan menengah yang diterbitkan', '', '', NULL, NULL, NULL, NULL, 10),
(527, 105, 4, 'Persentase data perusahaan indusri kecil dan menengah  dan perusahaan kawasan industri di kabupaten/kota yang masuk dalam SIINas terhadap total populasi perusahaan industri kecil menengah dan perusahaan kawasan industri di kabupaten', '', '', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_rumus_outcome`
--

CREATE TABLE IF NOT EXISTS `lppd_rumus_outcome` (
  `id` int(11) NOT NULL,
  `id_outcome` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=2546 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_rumus_outcome`
--

INSERT INTO `lppd_rumus_outcome` (`id`, `id_outcome`, `field`, `value`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(1, 1, ' Jumlah Satuan Pendidikan Anak Usia Dini terakreditasi ', '', NULL, NULL, NULL, NULL, 10),
(2, 2, 'Jumlah anak usia 7-12 tahun yang sudah tamat atau sedang belajar di sekolah dasar', '', NULL, NULL, NULL, NULL, 10),
(3, 3, 'Jumlah anak usia 13-15 tahun yang sudah tamat atau sedang belajar di sekolah menengeh pertama', '', NULL, NULL, NULL, NULL, 10),
(4, 4, 'Jumlah Anak Usia 7-18 Tahun yang belum menyelesaikan pendidikan dasar dan menengah yang sudah tamat atau sedang belajar di pendidikan kesetaraan', '', NULL, NULL, NULL, NULL, 10),
(5, 5, 'Jumlah daya tampung rumah sakit Rujukan', '', NULL, NULL, NULL, NULL, 10),
(6, 6, 'Jumlah rumah sakit rujukan yang terakreditasi', '', NULL, NULL, NULL, NULL, 10),
(7, 7, 'Jumlah Ibu hamil yang mendaptkan pelayanan kesehatan', '', NULL, NULL, NULL, NULL, 10),
(8, 8, 'Jumlah ibu bersalin yang mendapat poelayanan persalinan', '', NULL, NULL, NULL, NULL, 10),
(9, 9, 'Jumlah Bayi Baru Lahir mendapat layanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(10, 10, 'Jumlah Balita yang mendapatkan pelayanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(11, 11, 'Jumlah Anak usia pendidikan dasar yang mendapatkan layanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(12, 12, 'Jumlah Orang Usia 15-59 Tahun mendapatkan skring kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(13, 13, 'Jumlah warga negara usia 60 tahun keatas yang mendapatkan skrining kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(14, 14, 'Jumlah Penderita Hipertensi yang mendapatkan pelayanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(15, 15, 'Jumlah Penderita Hipertensi yang mendapatkan pelayanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(16, 16, 'Jumlah Penderita ODGJ berat yang mendapatkan pelayanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(17, 17, 'Jumlah Penderita TBC yang mendapatkan pelayanan kesehatan sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(18, 18, 'Jumlah Orang dengan resiko terinfeksi HIV yang mendapatkan pelayanan deteksi dini HIV sesuai standart', '', NULL, NULL, NULL, NULL, 10),
(19, 19, 'Luas kawasan permukiman rawan banjir yang terlindungi oleh infrastruktur pengendalian banjir di WS kewenangan Kabupaten (ha)', '', NULL, NULL, NULL, NULL, 10),
(20, 20, 'Luas kawasan permukiman sepanjang pantai rawan abrasi yang terlindungi oleh infrastruktur pengamanan pantai di WS kewenangan Kabupaten (M)', '', NULL, NULL, NULL, NULL, 10),
(21, 21, 'Luas irigasi kewenangan Kabupaten yang dilayani oleh jaringan irigasi yang dibangun (ha), ditingkatkan (ha), direhabilitasi (ha), dioperasi dan pelihara (ha) di tahun eksisting', '', NULL, NULL, NULL, NULL, 10),
(22, 22, 'Jumlah kumulatif masyarakat yang rumah tangga yang mendaptkan akses terhadap air minum melalui SPAM jaringan perpipaan dan bukan jaringan perpipaan terlindungi di dalam sebuah kabupaten ', '', NULL, NULL, NULL, NULL, 10),
(23, 23, 'Jumlah rumah yang memiliki akses pengolahan berupa cubluk + jumlah rumah yang lumpur tinjanya  telah diolah di PLT + jumlah rumah yang memiliki sambungan rumah dan air limbahnya diolah di IPALD', '', NULL, NULL, NULL, NULL, 10),
(24, 24, 'Jumlah Pemanfaatan IMB yang sesuai peruntukkanya', '', NULL, NULL, NULL, NULL, 10),
(25, 25, 'Panjang jalan dalam kondisi mantap', '', NULL, NULL, NULL, NULL, 10),
(26, 26, 'Jumlah tenaga kerja konstruksi yang terlatih di wilayah Kabupaten yang dibuktikan dengan sertifikat pelatihan operator dan teknis/analis', '', NULL, NULL, NULL, NULL, 10),
(27, 27, 'Jumlah proyek yang menjadi kewenangan pengawasannya tanpa kecelakaan konstruksi', '', NULL, NULL, NULL, NULL, 10),
(28, 28, 'Jumlah unit rumah korban bencana yang ditangani pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(29, 29, 'Rumah tangga penerima fasilitasi penggantian hak atas penguasaan tanah dan atau bangunan + rumah tangga penerima subsidi uang sewa + rumah tangga penerima penyediaan rumah layak huni', '', NULL, NULL, NULL, NULL, 10),
(30, 30, 'Luas kawasan permukiman kumuh di bawah 10 ha yang ditangani (ha)', '', NULL, NULL, NULL, NULL, 10),
(31, 31, 'Jumlah unit rumah tidak layak huni', '', NULL, NULL, NULL, NULL, 10),
(32, 32, 'Jumlah unit rumah yang sedang dibangun terfasilitasi PSU', '', NULL, NULL, NULL, NULL, 10),
(33, 33, 'Jumlah pengaduan yang ditangani', '', NULL, NULL, NULL, NULL, 10),
(34, 34, 'Jumlah Perda/Perkada yang memuat sanksi yang ditegakkan', '', NULL, NULL, NULL, NULL, 10),
(35, 35, 'Jumlah Warga Negara yang memperoleh layanan informasi Rawan bencana', '', NULL, NULL, NULL, NULL, 10),
(36, 36, 'Jumlah warga negara yang memperoleh layanan pencegahan dan kesiapsiagaan terhadap bencana', '', NULL, NULL, NULL, NULL, 10),
(37, 37, 'Jumlah Warga Negara yang memperoleh Layanan Penyelamatan dan Evakuasi Korban Bencana', '', NULL, NULL, NULL, NULL, 10),
(38, 38, 'Jumlah Layanan Pemadaman, Penyelamatan dan Evakuasi Korban terdampak kebakaran di Kabupaten dalam tingkat waktu tanggap oleh Dinas Pemadaman Kebakaran dan Penyelamatan atau perangkat daerah + Jumlah layanan pemadana di kabupaten dalam tingkat waktu tanggap oleh relawan kebakaran yang dibentuk dan atau dibawah pembinaan dinas pemadam kebakaran dan penyelamatan atau perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(39, 39, 'rata-rata waktu tanggap, dihitung dari pelaporan, penyiapan tim dan peralatan, jarak tempuh dan kesiapan pemadaman kebakaran', '', NULL, NULL, NULL, NULL, 10),
(40, 40, 'Jumlah penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan gelandangan pengemis yang terpenuhi kebutuhan dasarnya di luar panti', '', NULL, NULL, NULL, NULL, 10),
(41, 41, 'Jumlah Korban Bencana Alam dan Sosial yang terpenuhi kebutuhan dasarnya dalam satu tahun anggaran', '', NULL, NULL, NULL, NULL, 10),
(42, 42, 'Jumlah Kegiatan keseluruhan yang dilaksanakan yang mengacu ke RTKD', '', NULL, NULL, NULL, NULL, 10),
(43, 43, 'Jumlah tenaga kerja yang memiliki sertifikat kompetensi', '', NULL, NULL, NULL, NULL, 10),
(44, 44, 'PDRB tahun berjalan (atas dasar harga konstan)', '', NULL, NULL, NULL, NULL, 10),
(45, 45, 'Jumlah perusahaan yang menerapkan tata kelola kerja yang layak', '', NULL, NULL, NULL, NULL, 10),
(46, 46, 'Jumlah pencari kerja (pencaker) yang ditempatkan', '', NULL, NULL, NULL, NULL, 10),
(47, 47, 'Jumlah ARG pada belanja langsung APBD', '', NULL, NULL, NULL, NULL, 10),
(48, 48, 'Jumlah anak (penduduk usia kurang dari 18 tahun) korban kekerasan yang ditangani instansi tingkat Kabupaten yang didampingi', '', NULL, NULL, NULL, NULL, 10),
(49, 49, 'Jumlah perempuan yang mengalami kekerasan', '', NULL, NULL, NULL, NULL, 10),
(50, 50, 'Jumlah cadangan pangan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(51, 51, 'Luas tanah sesuai peruntukan ijin lokasi', '', NULL, NULL, NULL, NULL, 10),
(52, 52, 'Jumlah penetapan tanah untuk pembangunan fasilitas umum', '', NULL, NULL, NULL, NULL, 10),
(53, 53, 'Luas tanah yang telah dimanfaatkan sesuai dengan peruntukannya di atas izin lokasi', '', NULL, NULL, NULL, NULL, 10),
(54, 54, 'Jumlah penerima tanah objek landfeform dengan luasan yang diterima lebih besar sama dengan 0,5 ha', '', NULL, NULL, NULL, NULL, 10),
(55, 55, 'Luas tanah yang telah dimanfaatkan berdasarkan izin membuka tanah', '', NULL, NULL, NULL, NULL, 10),
(56, 56, 'Jumlah sengketa tanah garapan yang ditangani', '', NULL, NULL, NULL, NULL, 10),
(57, 57, 'IKLH Prov  = (IKA 30%) + (IKD 30%) + (ITH 40%)', '', NULL, NULL, NULL, NULL, 10),
(58, 58, 'Total Volume sampah yang dapat ditangani', '', NULL, NULL, NULL, NULL, 10),
(59, 59, 'Jumlah penanggungjawab usaha dan atau kegiatan yang melanggar terhadap izin lingkungan dan izin PPLH yang diterbitkan Pemerintah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(60, 60, 'Jumlah Penduduk berumur 17 tahun keatas yang memiliki KTP', '', NULL, NULL, NULL, NULL, 10),
(61, 61, 'Jumlah anak usia 01-7 tahun kurang 1 (satua) hari yang sudah memiliki KIA', '', NULL, NULL, NULL, NULL, 10),
(62, 62, 'Jumlah anak usia 0-18 Tahun yang sudah memiliki akta lahir', '', NULL, NULL, NULL, NULL, 10),
(63, 63, 'Jumlah OPD yang telah memanfaatkan data kependudukan berdasarkan perjanjian kerjasama', '', NULL, NULL, NULL, NULL, 10),
(64, 64, 'Jumlah desa tertinggal yang memenuhi kriteria desa berkembang per tahun berdasarkan Indeks Desa Membangun per tahun', '', NULL, NULL, NULL, NULL, 10),
(65, 65, 'Jumlah desa berkembang yang memenuhi kriteria desa mandiri per tahun berdasarkan Indeks Desa Membangun per tahun', '', NULL, NULL, NULL, NULL, 10),
(66, 66, 'TFR = Angka Kelahiran Total', '', NULL, NULL, NULL, NULL, 10),
(67, 67, 'Jumlah peserta KB aktif modern', '', NULL, NULL, NULL, NULL, 10),
(68, 68, 'Jumlah PUS yang  ingin ber KB tetapi tidak terlayani', '', NULL, NULL, NULL, NULL, 10),
(69, 69, 'Rasio Konektivitas Kabupaten = (IK1 x bobot angkutan jalan) + (IK2 x bobot angkutan sungai, danau dan penyeberangan)', '', NULL, NULL, NULL, NULL, 10),
(70, 70, 'V/C Ratio di Jalan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(71, 71, 'Jumlah OPD yang terhubung dengan akses internet yang disediakan oleh Dinas Kominfo', '', NULL, NULL, NULL, NULL, 10),
(72, 72, 'Jumlah layanan publik yang diselenggarakan secara online dan terintegrasi', '', NULL, NULL, NULL, NULL, 10),
(73, 73, 'Jumlah masyarakat yang menjadi sasaran penyebaran informasi publik, mengetahui kebijakan dan program prioritas pemerintah dan pemerintah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(74, 74, 'Jumlah koperasi yang meningkat kualitasnya berdasarkan RAT, volume usaha dan aset', '', NULL, NULL, NULL, NULL, 10),
(75, 75, 'Jumlah usaha mikro yang menjadi wirausaha', '', NULL, NULL, NULL, NULL, 10),
(76, 76, '(Jumlah investasi tahun n – jumlah investasi tahun n-1) di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(77, 77, 'Jumlah perolehan medali pada event olahraga nasional dan internasional', '', NULL, NULL, NULL, NULL, 10),
(78, 78, 'Jumlah pemuda (16-30 tahun) yang berwirausaha di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(79, 79, 'Jumlah pemuda (16-30 tahun) yang menjadi anggota aktif pada organisasi kepemudaan dan organisasi sosial kemasyarakatan di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(80, 80, 'Jumlah OPD yang menggunakan data statistik dalam menyusun perencanaan pembangunan daerah', '', NULL, NULL, NULL, NULL, 10),
(81, 81, 'Jumlah OPD yang menggunakan data statistik dalam melakukan evaluasi pembangunan daerah', '', NULL, NULL, NULL, NULL, 10),
(82, 82, 'Jumlah nilai per area keamanan informasi', '', NULL, NULL, NULL, NULL, 10),
(83, 83, 'Jumlah cagar budaya yang dilestarikan', '', NULL, NULL, NULL, NULL, 10),
(84, 84, 'Nilai tingkat kegemaran membaca masyarakat yang diukur menggunakan survei/kajian kegemaran membaca masyarakat', '', NULL, NULL, NULL, NULL, 10),
(85, 85, 'Jumlah layanan publik yang diselenggarakan secara online dan terintegrasi', '', NULL, NULL, NULL, NULL, 10),
(86, 86, 'T = (a + i + s + j) / 4', '', NULL, NULL, NULL, NULL, 10),
(87, 87, 'T = (m + b + g + a + c + i) / 6', '', NULL, NULL, NULL, NULL, 10),
(88, 88, 'Jumlah total produksi perikanan (tangkap dan budidaya) kabupaten/kota di wilayah Kabupaten ', '', NULL, NULL, NULL, NULL, 10),
(89, 89, 'Jumlah wisatawan tahun n – jumlah wisatawan tahun n-1', '', NULL, NULL, NULL, NULL, 10),
(90, 90, 'Jumlah wisatawan tahun n - Jumlah wisatawan tahun n-1', '', NULL, NULL, NULL, NULL, 10),
(91, 91, 'Jumlah kamar yang terjual', '', NULL, NULL, NULL, NULL, 10),
(92, 92, 'Kontribusi Sektor Pariwisata Terhadap PDRB Harga Berlaku', '', NULL, NULL, NULL, NULL, 10),
(93, 93, 'Kontribusi sektor pariwisata terhadap PAD', '', NULL, NULL, NULL, NULL, 10),
(94, 94, 'Jumlah produksi pertanian pangan per hektar per tahun', '', NULL, NULL, NULL, NULL, 10),
(95, 95, 'Jumlah kejadian penyakit kasus tahun berjalan (t) – jumlah kejadian/kasus penyakit hewan menular tahun sebelumnya', '', NULL, NULL, NULL, NULL, 10),
(96, 96, 'Jumlah Perusahaan pemanfaatan panas bumi yang memiliki izin di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(97, 97, 'Jumlah pelaku usaha yang telah memiliki izin sesuai ketentuan', '', NULL, NULL, NULL, NULL, 10),
(98, 98, 'Realisasi', '', NULL, NULL, NULL, NULL, 10),
(99, 99, 'Jumlah UTTP bertanda tera yang berlaku pada tahun berjalan', '', NULL, NULL, NULL, NULL, 10),
(100, 100, 'Jumlah industri kecil dan menengah tahun n – jumlah industri kecil dan menengah tahun n - 1', '', NULL, NULL, NULL, NULL, 10),
(101, 101, 'Jika terdapat N indikator pembangunan industri dalam RPIK maka nilai masing-masing bobot indikator adalah (100/N)%', '', NULL, NULL, NULL, NULL, 10),
(102, 102, 'Jumlah izin yang dipantau dan dianalisis dalam laporan hasil pemantauan', '', NULL, NULL, NULL, NULL, 10),
(103, 103, 'Jumlah izin yang dipantau dan dianalisis dalam laporan hasil pemantauan', '', NULL, NULL, NULL, NULL, 10),
(104, 104, 'Jumlah izin yang dipantau dan dianalisis dalam laporan hasil pemantauan', '', NULL, NULL, NULL, NULL, 10),
(105, 105, '1)  Keterkinian informasi industri : ', '', NULL, NULL, NULL, NULL, 10),
(106, 106, 'Jumlah belanja pegawai di luar guru dan tenaga kesehatan', '', NULL, NULL, NULL, NULL, 10),
(107, 107, 'Jumlah PAD', '', NULL, NULL, NULL, NULL, 10),
(108, 108, 'Tingkat Maturitas SPIP (belum dinilai (0)/level 1/level 2/level 3) berdasarkan Laporan Hasil Quality Assurance (QA) yang dikeluarkan oleh BPKP', '', NULL, NULL, NULL, NULL, 10),
(109, 109, 'Tingkat Kualitas APIP (belum dinilai (0)/level 1/level 2/level 3) berdasarkan Laporan Hasil Quality Assurance (QA) yang dikeluarkan oleh BPKP', '', NULL, NULL, NULL, NULL, 10),
(110, 110, 'Jumlah belanja urusan pemerintah - transfer expenditures', '', NULL, NULL, NULL, NULL, 10),
(111, 111, 'Opini Laporan Keuangan', '', NULL, NULL, NULL, NULL, 10),
(112, 112, 'Jumlah kontrak infrastruktur dengan nilali besar yang perlu pembangunan dalam 3 kuartal yang ditandatangani pada kuartal pertama tahun n', '', NULL, NULL, NULL, NULL, 10),
(113, 113, 'Jumlah pengadaan yang dilakukan dengan metode kompetitif', '', NULL, NULL, NULL, NULL, 10),
(114, 114, 'Jumlah pegawai menurut pendidikan perguruan tinggi (PT) keatas', '', NULL, NULL, NULL, NULL, 10),
(115, 115, 'Jumlah pegawai PNS Fungsional (diluar guru dan tenaga kesehatan)', '', NULL, NULL, NULL, NULL, 10),
(116, 116, 'Jumlah pegawai fungsional yang memiliki sertifikat kompetensi', '', NULL, NULL, NULL, NULL, 10),
(117, 117, 'Nilai absolut dari total belanja dalam realisasi', '', NULL, NULL, NULL, NULL, 10),
(118, 118, 'Nilai absolut dari total PAD dalam realisasi', '', NULL, NULL, NULL, NULL, 10),
(119, 119, '1. Apakah ada daftar asset tetap? (Ya/Tidak)', '', NULL, NULL, NULL, NULL, 10),
(120, 120, 'Nilai realisasi SiLPA', '', NULL, NULL, NULL, NULL, 10),
(121, 121, 'Jumlah dokumen yang dipublikasikan di website Pemda', '', NULL, NULL, NULL, NULL, 10),
(122, 122, 'Jumlah nilai belanja langsung yang melalui pengadaan', '', NULL, NULL, NULL, NULL, 10),
(123, 123, 'belanja anggaran untuk unit pelayanan dapat diakses di website pemda', '', NULL, NULL, NULL, NULL, 10),
(1354, 1, 'Jumlah anak usia 5-6 tahun pada Kabupaten yang bersangkutan', '', NULL, NULL, NULL, NULL, 10),
(1355, 2, 'Jumlah anak usia 7-12 tahun pada kabupaten yang bersangkutan', '', NULL, NULL, NULL, NULL, 10),
(1356, 3, 'Jumlah Anak Usia 13-15 Tahun pada Kabupaten yang bersangkutan', '', NULL, NULL, NULL, NULL, 10),
(1357, 4, 'Jumlah Anak Usia 7-18 Tahun yang belum menyelesaikan pendidikan dasar dan menengah pada Kabupaten yang bersangkutan', '', NULL, NULL, NULL, NULL, 10),
(1358, 5, 'Jumlah penduduk kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1359, 6, 'Jumlah rumah sakit di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1360, 7, 'Jumlah Ibu Hamil di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1361, 8, 'Jumlah ibu bersalin di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1362, 9, 'Jumlah bayi baru lahir di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1363, 10, 'Jumlah balita di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1364, 11, 'Jumlah anak usia pendidikan dasar di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1365, 12, 'Jumlah orang usia 15-59 tahun di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1366, 13, 'Jumlah warga negara usia 60 tahun ke atas di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1367, 14, 'Jumlah penderita hipertensi di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1368, 15, 'Jumlah penderita hipertensi di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1369, 16, 'Jumlah penderita ODGJ di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1370, 17, 'Jumlah penderita TBC di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1371, 18, 'Jumlah orang dengan Resiko Terinfeksi HIV di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1372, 19, 'Luas kawasan permukiman rawan banjir di WS kewenangan Kabupaten(ha)', '', NULL, NULL, NULL, NULL, 10),
(1373, 20, 'Luas kawasan permukiman sepanjang pantai rawan abrasi di WS kewenangan Kabupaten (M)', '', NULL, NULL, NULL, NULL, 10),
(1374, 21, 'Luas daerah irigasi kewenangan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1375, 22, 'Jumlah total proyeksi rumah tangga di seluruh kabupaten ', '', NULL, NULL, NULL, NULL, 10),
(1376, 23, 'Jumlah rumah di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1377, 24, 'Jumlah IMB yang berlaku', '', NULL, NULL, NULL, NULL, 10),
(1378, 25, 'Panjang jalan keseluruhan di wilayah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1379, 26, 'Jumlah kebutuhan tenaga operator dan teknis/analis di wilayah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1380, 27, 'Jumlah proyek yang menjadi kewenangan pengawasannya', '', NULL, NULL, NULL, NULL, 10),
(1381, 28, 'Jumlah total rencana unit rumah korban bencana yang akan ditangani pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1382, 29, 'Jumlah total rumah tangga terkena relokasi program pemerintah daerah yang memenuhi kriteria penerima pelayanan', '', NULL, NULL, NULL, NULL, 10),
(1383, 30, 'Luas kawasan permukiman kumuh di bawah 10 ha', '', NULL, NULL, NULL, NULL, 10),
(1384, 31, 'Jumlah total unit rumah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1385, 32, 'Jumlah unit Rumah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1386, 33, 'Jumlah pengaduan pelanggaran yang masuk', '', NULL, NULL, NULL, NULL, 10),
(1387, 34, 'Jumlah keseluruhan Perda dan Perkada yang memuat sanksi', '', NULL, NULL, NULL, NULL, 10),
(1391, 38, 'Jumlah Kejadian Kebakaran di Kabupaten Kota', '', NULL, NULL, NULL, NULL, 10),
(1393, 40, 'Populasi penyandang disabilitas terlantar anak terlantar, lanjut usia terlantar dan gelandangan pengemis ', '', NULL, NULL, NULL, NULL, 10),
(1394, 41, 'Populasi Korban Bencana Alam dan Sosial di Daerah Kabupaten yang membutuhkan perlindungan dan jaminan sosial pada saat dan setelah tanggap darurat bencana daerah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1395, 42, 'Jumlah Kegiatan keseluruhan yang dilaksanakan di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1396, 43, 'Jumlah tenaga kerja keseluruhan', '', NULL, NULL, NULL, NULL, 10),
(1397, 44, 'Jumlah tenaga kerja', '', NULL, NULL, NULL, NULL, 10),
(1398, 45, 'Jumlah perusahaan', '', NULL, NULL, NULL, NULL, 10),
(1399, 46, 'Jumlah pencari kerja (pencaker) yang terdaftar', '', NULL, NULL, NULL, NULL, 10),
(1400, 47, 'Jumlah seluruh belanja langsung di APBD', '', NULL, NULL, NULL, NULL, 10),
(1401, 48, 'Jumlah anak (penduduk usia kurang dari 18 tahun)', '', NULL, NULL, NULL, NULL, 10),
(1402, 49, 'Jumlah penduduk perempuan di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1403, 50, 'Jumlah kebutuhan pangan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1404, 51, 'Seluruh luas tanah yang diberikan ijin lokasi', '', NULL, NULL, NULL, NULL, 10),
(1405, 52, 'Jumlah Kebutuhan tanah untuk pembangunan fasiltas umum', '', NULL, NULL, NULL, NULL, 10),
(1406, 53, 'Luas Izin Lokasi yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(1407, 54, 'Jumlah penerima tanah objek landreform', '', NULL, NULL, NULL, NULL, 10),
(1408, 55, 'Luas izin membuka tanah yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(1409, 56, 'Jumlah pengaduan sengketa tanah garpan', '', NULL, NULL, NULL, NULL, 10),
(1410, 57, 'IKA = Indeks Kualitas Air', '', NULL, NULL, NULL, NULL, 10),
(1411, 58, 'Total volume timbunan sampah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1412, 59, 'Usaha dan atau kegiatan dilakukan pemeriksaan', '', NULL, NULL, NULL, NULL, 10),
(1413, 60, 'Jumlah penduduk 17 Tahun keatas', '', NULL, NULL, NULL, NULL, 10),
(1414, 61, 'Jumlah anak usia 0-17 tahun', '', NULL, NULL, NULL, NULL, 10),
(1415, 62, 'Jumlah anak usia 0-18 tahun', '', NULL, NULL, NULL, NULL, 10),
(1416, 63, 'Jumlah OPD', '', NULL, NULL, NULL, NULL, 10),
(1417, 64, 'Jumlah desa tertinggal (per awal tahun – n)', '', NULL, NULL, NULL, NULL, 10),
(1418, 65, 'Jumlah desa berkembang (per awal tahun – n)', '', NULL, NULL, NULL, NULL, 10),
(1419, 66, 'ASFR = Angka Kelahiran Menurut Kelompok Umur', '', NULL, NULL, NULL, NULL, 10),
(1420, 67, 'Jumlah pasangan usia subur', '', NULL, NULL, NULL, NULL, 10),
(1421, 68, 'Jumlah Pasangan Usia Subur', '', NULL, NULL, NULL, NULL, 10),
(1424, 71, 'Jumlah OPD', '', NULL, NULL, NULL, NULL, 10),
(1425, 72, 'Jumlah layanan publik', '', NULL, NULL, NULL, NULL, 10),
(1426, 73, 'Jumlah penduduk', '', NULL, NULL, NULL, NULL, 10),
(1427, 74, 'Jumlah seluruh koperasi', '', NULL, NULL, NULL, NULL, 10),
(1428, 75, 'Jumlah usaha kecil keseluruhan', '', NULL, NULL, NULL, NULL, 10),
(1429, 76, 'jumlah investasi tahun n-1 di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1431, 78, 'Jumlah pemuda (16-30 tahun) di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1432, 79, 'Jumlah pemuda (16-30 tahun) di Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1433, 80, 'Jumlah OPD', '', NULL, NULL, NULL, NULL, 10),
(1434, 81, 'Jumlah OPD', '', NULL, NULL, NULL, NULL, 10),
(1435, 82, 'Jumlah area penilaian', '', NULL, NULL, NULL, NULL, 10),
(1436, 83, 'Jumlah cagar budaya yang terdata', '', NULL, NULL, NULL, NULL, 10),
(1438, 85, 'Jumlah layanan publik', '', NULL, NULL, NULL, NULL, 10),
(1439, 86, 'T = Tingkat ketersediaan arsip', '', NULL, NULL, NULL, NULL, 10),
(1440, 87, 'T= Tingkat keberadaan dan keutuhan arsip sebagai bahan pertanggungjawaban ', '', NULL, NULL, NULL, NULL, 10),
(1442, 89, 'jumlah wisatawan tahun n-1', '', NULL, NULL, NULL, NULL, 10),
(1443, 90, 'Jumlah wisatawan tahun n-1', '', NULL, NULL, NULL, NULL, 10),
(1444, 91, 'Jumlah kamar yang tersedia', '', NULL, NULL, NULL, NULL, 10),
(1447, 94, 'Luas panen', '', NULL, NULL, NULL, NULL, 10),
(1448, 95, 'Jumlah kejadian/kasus penyakit hewan menular tahun sebelumnya (t-1)', '', NULL, NULL, NULL, NULL, 10),
(1449, 96, 'Jumlah Perusahaan pemanfaatan panas bumi ', '', NULL, NULL, NULL, NULL, 10),
(1450, 97, 'Jumlah pelaku usaha di wilayah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1451, 98, 'RDKK', '', NULL, NULL, NULL, NULL, 10),
(1452, 99, 'Jumlah Potensi UTTP yang wajib ditera dan tera ulang di wilayah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1453, 100, 'jumlah industri kecil dan menengah tahun n – 1', '', NULL, NULL, NULL, NULL, 10),
(1454, 101, 'Untuk masing-masing penilaian indikator adalah persentase capaian indikator dibagi target dikali (100/N)%', '', NULL, NULL, NULL, NULL, 10),
(1455, 102, 'Jumlah izin yang dikeluarkan', '', NULL, NULL, NULL, NULL, 10),
(1456, 103, 'Jumlah izin yang dikeluarkan', '', NULL, NULL, NULL, NULL, 10),
(1457, 104, 'Jumlah izin yang dikeluarkan', '', NULL, NULL, NULL, NULL, 10),
(1458, 105, '- Tersedianya informasi industri dengan batas waktu 0-6 bulan (50%)', '', NULL, NULL, NULL, NULL, 10),
(1459, 106, 'Jumlah APBD', '', NULL, NULL, NULL, NULL, 10),
(1460, 107, 'Jumlah PDRB Non Migas', '', NULL, NULL, NULL, NULL, 10),
(1463, 110, 'Jumlah belanja APBD', '', NULL, NULL, NULL, NULL, 10),
(1465, 112, 'Jumlah kontrak keseluruhan tahun n', '', NULL, NULL, NULL, NULL, 10),
(1466, 113, 'Jumlah pengadaan yang dilakukan tanpa metode kompetitif', '', NULL, NULL, NULL, NULL, 10),
(1467, 114, 'Jumlah seluruh pegawai dengan pendidikan SMA ke bawah', '', NULL, NULL, NULL, NULL, 10),
(1468, 115, 'Seluruh jumlah pegawai pemerintah (tidak termasuk guru dan tenaga kesehatan)', '', NULL, NULL, NULL, NULL, 10),
(1469, 116, 'Seluruh jumlah fungsional (tidak termasuk guru dan tenaga kesehatan)', '', NULL, NULL, NULL, NULL, 10),
(1470, 117, 'Total belanja APBD dikurangi satu', '', NULL, NULL, NULL, NULL, 10),
(1471, 118, 'Total PAD dalam APBD dikurangi satu', '', NULL, NULL, NULL, NULL, 10),
(1472, 119, '2. Apakah ada manual untuk menyusun daftar asset tetap? (Ya/Tidak)', '', NULL, NULL, NULL, NULL, 10),
(1473, 120, 'Total belanja anggaran tahun sebelumnya', '', NULL, NULL, NULL, NULL, 10),
(1474, 121, 'Total jumlah dokumen yang telah dirinci', '', NULL, NULL, NULL, NULL, 10),
(1475, 122, 'Total belanja langsung …………………………. ', '', NULL, NULL, NULL, NULL, 10),
(1476, 123, 'realisasi belanja untuk unit pelayanan dapat diakses di website pemda', '', NULL, NULL, NULL, NULL, 10),
(1533, 57, 'IKD = Indeks Kualitas Udara', '', NULL, NULL, NULL, NULL, 10),
(1542, 66, 'bi = Jumlah kelahiran dari perempuan pada kelompok umur i pada tahun tertentu', '', NULL, NULL, NULL, NULL, 10),
(1561, 85, 'Nilai Indeks Pembangunan Literasi Masyarakat yang didapatkan dengan metode sensus dengan mengukur sejumlah unsur pembangunan literasi masyarakat (UPLM) dan aspek masyarakat (AM) ', '', NULL, NULL, NULL, NULL, 10),
(1562, 86, 'a = Persentase arsip aktif yang telah dibuatkan daftar arsip', '', NULL, NULL, NULL, NULL, 10),
(1563, 87, 'm = Tingkat kesesuaian kegiatan pemusnahan arsip dengan NSPK', '', NULL, NULL, NULL, NULL, 10),
(1577, 101, 'Nilai akhir adalah akumulasi dari N indikator tersebut', '', NULL, NULL, NULL, NULL, 10),
(1581, 105, '- Tersedianya informasi industri dengan batas waktu 7-12 bulan (25%)', '', NULL, NULL, NULL, NULL, 10),
(1595, 119, '3. Apakah ada proses inventarisasi asset tahunan? (Ya/Tidak)', '', NULL, NULL, NULL, NULL, 10),
(1656, 57, 'ITH = Indeks Tutupan Hutan', '', NULL, NULL, NULL, NULL, 10),
(1665, 66, 'pi = Jumlah penduduk perempuan kelompok umur i pada pertengahan tahun yang sama', '', NULL, NULL, NULL, NULL, 10),
(1684, 85, 'UPLM 1 = Pemerataan layanan perpustakaan ', '', NULL, NULL, NULL, NULL, 10),
(1685, 86, 'i = Persentase arsip inaktif yang telah dibuatkan daftar arsip', '', NULL, NULL, NULL, NULL, 10),
(1686, 87, 'b = Tingkat kesesuaian kegiatan perlindungan dan penyelamatan arsip dari bencana dengan NSPK', '', NULL, NULL, NULL, NULL, 10),
(1704, 105, '- Tidak menyampaikan informasi industri (0%)', '', NULL, NULL, NULL, NULL, 10),
(1718, 119, '4. Apakah nilai asset tercantum dalam laporan anggaran? (Ya/Tidak)', '', NULL, NULL, NULL, NULL, 10),
(1788, 66, 'I = kelompok umur (i=1 untuk kelompok umur 15- 19,1=2 untuk kelompok umur ', '', NULL, NULL, NULL, NULL, 10),
(1807, 85, 'UPLM 2 = Ketercukupan koleksi', '', NULL, NULL, NULL, NULL, 10),
(1808, 86, 's = Persentase arsip statis yang telah dibuatkan sarana bantu temu balik ', '', NULL, NULL, NULL, NULL, 10),
(1809, 87, 'g = Tingkat kesesuaian kegiatan penyelamatan arsip Perangkat Daerah Kabupaten yang digabung dan/atau dibubarkan dan pemekaran daerah Kabupaten/Kota dengan NSPK', '', NULL, NULL, NULL, NULL, 10),
(1827, 105, '2)      Kelengkapan informasi industri meliputi :', '', NULL, NULL, NULL, NULL, 10),
(1911, 66, '20-24,....., i=7 untuk kelompok Umur 45-49', '', NULL, NULL, NULL, NULL, 10),
(1930, 85, 'UPLM 3 = Ketercukupan tenaga perpustakaan ', '', NULL, NULL, NULL, NULL, 10),
(1932, 87, 'a = Tingkat kesesuaian kegiatan autentifikasi arsip statis dan arsip hasil alih media dengan NSPK', '', NULL, NULL, NULL, NULL, 10),
(1950, 105, '-  Informasi produksi dan kapasitas produksi (10%)', '', NULL, NULL, NULL, NULL, 10),
(2034, 66, 'k = Bilangan Konstanta biasanya 1000', '', NULL, NULL, NULL, NULL, 10),
(2053, 85, 'UPLM 4 = Tingkat kunjungan masyarakat ke perpustakaan ', '', NULL, NULL, NULL, NULL, 10),
(2055, 87, 'c = Tingkat kesesuaian kegiatan pencarian arsip statis dengan NSPK ', '', NULL, NULL, NULL, NULL, 10),
(2073, 105, '-  Informasi bahan baku dan bahan penolong (10%)', '', NULL, NULL, NULL, NULL, 10),
(2176, 85, 'UPLM 5 = Perpustakaan ber-SNP', '', NULL, NULL, NULL, NULL, 10),
(2178, 87, 'I = Tingkat kesesuaian kegiatan penerbitan izin penggunaan arsip yang bersifat tertutup dengan NSPK', '', NULL, NULL, NULL, NULL, 10),
(2196, 105, 'Nilai akhir adalah akumulasi dari kelengkapan dan keterkinian informasi industri (1 + 2)', '', NULL, NULL, NULL, NULL, 10),
(2299, 85, 'UPLM 6 = Keterlibatan masyarakat dalam kegiatan perpustakaan', '', NULL, NULL, NULL, NULL, 10),
(2422, 85, 'UPLM 7 = Anggota perpustakaan ', '', NULL, NULL, NULL, NULL, 10),
(2545, 85, 'Indeks Pembangunan Literasi Masyarakat = ∑UPLM/ALM x 100', '', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lppd_rumus_output`
--

CREATE TABLE IF NOT EXISTS `lppd_rumus_output` (
  `id` int(11) NOT NULL,
  `id_output` int(11) NOT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=2161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `lppd_rumus_output`
--

INSERT INTO `lppd_rumus_output` (`id`, `id_output`, `field`, `value`, `created_at`, `updated_at`, `created_by`, `updated_by`, `active`) VALUES
(94, 94, 'Panjang Jaringan Irigasi Primer dalam Kondisi Baik (M)', '', NULL, NULL, NULL, NULL, 10),
(95, 95, 'Panjang Jaringan Irigasi Sekunder dalam Kondisi Baik (M)', '', NULL, NULL, NULL, NULL, 10),
(96, 96, 'Panjang Jaringan Irigasi Tersier dalam Kondisi Baik (M)', '', NULL, NULL, NULL, NULL, 10),
(108, 108, '∑ Rumah yang memiliki akses pengolahan berupa  cubluk atau tanki septi tank', '', NULL, NULL, NULL, NULL, 10),
(109, 109, '∑ Rumah yang lumpur tinjanya telah diolah di IPLT', '', NULL, NULL, NULL, NULL, 10),
(110, 110, '∑ Rumah yang memiliki sambungan rumah dan air limbahnya diolah di IPALD', '', NULL, NULL, NULL, NULL, 10),
(111, 111, '∑ Rumah yang memiliki akses unit pengolahan setempat', '', NULL, NULL, NULL, NULL, 10),
(112, 112, '∑ Jumlah sarana pengangkutan yang tersedia', '', NULL, NULL, NULL, NULL, 10),
(113, 113, '∑ Jumlah Kapasitas Pengolahan Lumput Tinja yang tersedia', '', NULL, NULL, NULL, NULL, 10),
(114, 114, '∑ Jumlah rumah yang memiliki sambungan rumah yang tersambung dengan IPALD', '', NULL, NULL, NULL, NULL, 10),
(115, 115, '∑ Jumlah rumah yang tangki septiknya sudah disedot', '', NULL, NULL, NULL, NULL, 10),
(116, 116, '∑ Jumlah bangunan gedung (Kecuali rumah tinggal tunggal dan rumah deret sederhana )yang laik fungsi yang berlaku ', '', NULL, NULL, NULL, NULL, 10),
(181, 181, 'Jumlah KK', '', NULL, NULL, NULL, NULL, 10),
(199, 199, 'Kemajuan pekerjaan dokumen yang disusun', '', NULL, NULL, NULL, NULL, 10),
(200, 200, 'Jumlah pendudk dikawasan rawan bencana yang memperoleh informasi rawan bencana sesuai jenis ancaman bencana', '', NULL, NULL, NULL, NULL, 10),
(201, 201, 'Kemajuan pekerjaan dokumen yang disusun ', '', NULL, NULL, NULL, NULL, 10),
(202, 202, 'Kemajuan pekerjaan dokumen yang disusun ', '', NULL, NULL, NULL, NULL, 10),
(203, 203, 'Jumlah aparatur dan warga negara yang ikut pelatihan', '', NULL, NULL, NULL, NULL, 10),
(204, 204, 'Jumlah  warga negara yang ikut pelatihan', '', NULL, NULL, NULL, NULL, 10),
(205, 205, 'Jumlah warga negara yang mendapat layanan PUSDALOPS', '', NULL, NULL, NULL, NULL, 10),
(206, 206, 'Jumlah warga negara yang mendapat layanan peralatan perlindungan', '', NULL, NULL, NULL, NULL, 10),
(207, 207, 'Jumlah kecepatan respon kurang dari 24 jam untuk setiap penetapan KLB', '', NULL, NULL, NULL, NULL, 10),
(208, 208, 'Jumlah kecepatan respon kurang dari 24 jam untuk setiap penetapan Darurat Bencana', '', NULL, NULL, NULL, NULL, 10),
(209, 209, 'Jumlah Petugas yang aktif dalam penanganan darurat bencana', '', NULL, NULL, NULL, NULL, 10),
(210, 210, 'Jumlah Korban berhasil dicari, ditolong dan dievakuasi', '', NULL, NULL, NULL, NULL, 10),
(250, 250, 'Jumlah penerapan program PBK kualifikasi KKNI atau okupasi pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(251, 251, 'Jumlah instruktur bersertifikat kompetensi pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(252, 252, 'Jumlah infrastruktur pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(253, 253, 'Jumlah LPK yang terakreditasi pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(254, 254, 'Jumlah LPK yang memiliki perizinan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(256, 256, 'Jumlah lulusan pelatihan bersertifikat pelatihan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(257, 257, 'Jumlah lulusan yang bekerja pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(258, 258, 'Jumlah lulusan bersertifikat Kompetensi pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(259, 259, 'jumlah CPMI dilatih', '', NULL, NULL, NULL, NULL, 10),
(261, 261, 'Jumlah perusahaan yang menerapkan program peningkatan produktivitas pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(263, 263, 'Jumlah perusahaan yang telah memiliki PP pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(264, 264, 'Jumlah perusahaan yang telah memiliki PKB pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(266, 266, 'Jumlah perusahaan yang sudah menyusun struktur dan skala upah', '', NULL, NULL, NULL, NULL, 10),
(267, 267, 'Jumlah perusahaan yang sudah terdaftar sebagai peserta BPJS Ketenagakerjaan', '', NULL, NULL, NULL, NULL, 10),
(268, 268, 'Jumlah perusahaan yang berselisih', '', NULL, NULL, NULL, NULL, 10),
(286, 286, 'Jumlah CPM/CTKI yang mendapatkan sosialisasi', '', NULL, NULL, NULL, NULL, 10),
(288, 288, 'Fasiliasi PMI yang dipulangkan', '', NULL, NULL, NULL, NULL, 10),
(289, 289, 'Jumlah PMI/TKI yang mendapatkan pendidikan dan pelatihan kerja', '', NULL, NULL, NULL, NULL, 10),
(290, 290, 'Jumlah PMI/TKI Purna dan keluarganya yang diberdayakan', '', NULL, NULL, NULL, NULL, 10),
(299, 299, 'Jumlah korban kekerasan anak yang terlayani', '', NULL, NULL, NULL, NULL, 10),
(308, 308, 'Jumlah korban kekerasan perempuan yang mendapatkan layanan', '', NULL, NULL, NULL, NULL, 10),
(317, 317, 'Jumlah Izin lokasi yang diterbitkan + Jumlah surat penolakan permohonan izin lokasi setelah melalui proses (ditolak seluruhnya)', '', NULL, NULL, NULL, NULL, 10),
(318, 318, 'Jumlah penertiban SK Penetapan tanah Obyek Landreform yang bersumber dari tanah kelebihan maksimum/absentee', '', NULL, NULL, NULL, NULL, 10),
(319, 319, 'Jumlah luas tanah yang telah dibayarkan ganti rugi kepada bekas pemilik tanah kelebihan maksimum/absentee', '', NULL, NULL, NULL, NULL, 10),
(320, 320, 'Jumlah dokumen izin membuka tanah yang disetujui+Jumlah izin membuka tanah yang ditolak', '', NULL, NULL, NULL, NULL, 10),
(321, 321, 'Jumlah dokumen penetapan site lokasi pembangunan fisik', '', NULL, NULL, NULL, NULL, 10),
(333, 333, 'Izin lingkungan, izin PPLH dan PUU LH yang diterbitkan oleh Pemerintah Daerah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(334, 334, 'Jumlah PPLHD yang ada', '', NULL, NULL, NULL, NULL, 10),
(335, 335, 'Jumlah MHA yang diakui dengan Perda', '', NULL, NULL, NULL, NULL, 10),
(336, 336, 'Jumlah MHA yang mendapatkan pelatihan', '', NULL, NULL, NULL, NULL, 10),
(337, 337, 'Jumlah lembaga kemasyarakatan yang diberikan diklat/rencana', '', NULL, NULL, NULL, NULL, 10),
(338, 338, 'Pengaduan masyarakat yang ditangani', '', NULL, NULL, NULL, NULL, 10),
(343, 343, 'Jumlah akta perkawinan yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(344, 344, 'Jumlah akta perceraian yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(345, 345, 'Jumlah akta Kematian yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(346, 346, 'Jumlah penyajian data kependudukan skala kabupaten dalam 1 Tahun', '', NULL, NULL, NULL, NULL, 10),
(361, 361, 'Jumlah masyarakat yang terpapar isi pesan program KKBPK (advokasi dan KIE)', '', NULL, NULL, NULL, NULL, 10),
(363, 363, 'Jumlah Faskes yang siap melayani KB MKJP', '', NULL, NULL, NULL, NULL, 10),
(364, 364, 'Jumlah peserta KB Aktif', '', NULL, NULL, NULL, NULL, 10),
(366, 366, 'Jumlah peserta KB pasca persalinan menurut metode kontrasepsi cara modern', '', NULL, NULL, NULL, NULL, 10),
(368, 368, 'Jumlah peserta KB pada keluarga penerima PBI', '', NULL, NULL, NULL, NULL, 10),
(369, 369, 'Jumlah fasilitas penyelenggaraan terminal penumpang angkutan jalan Tipe C yang tersedia', '', NULL, NULL, NULL, NULL, 10),
(370, 370, 'Jumlah kendaraan yang diuji pertahun', '', NULL, NULL, NULL, NULL, 10),
(371, 371, 'Jumlah penetapan tarif lintas penyebrangan', '', NULL, NULL, NULL, NULL, 10),
(372, 372, 'Jumlah pemasangan perlengkapan jalan kabupaten', '', NULL, NULL, NULL, NULL, 10),
(373, 373, 'Jumlah pemasangan perlengkapan jalan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(374, 374, 'Jumlah perangkat daerah yang saling terkoneksi di jaringan intra pemerintah atau menggunakan akses internet yang diamankan yang disediakan oleh Dinas Kominfo', '', NULL, NULL, NULL, NULL, 10),
(375, 375, 'Jumlah perangkat daerah yang menggunakan internet yang berkualitas yang disediakan oleh Dinas Kominfo', '', NULL, NULL, NULL, NULL, 10),
(377, 377, 'Jlh kegiatan (event) perangkat daerah dan pelayanan publik pada pemda yang diselenggarakan secara daring dengan memanfaatkan domain dan sub domain Instansi Penyelenggara Negara sesuai dengan PM Kominfo No. 5/2015', '', NULL, NULL, NULL, NULL, 10),
(378, 378, 'Jumlah perangkat daerah yang memiliki portal dan situs web yang sesuai standar', '', NULL, NULL, NULL, NULL, 10),
(379, 379, 'Jumlah perangkat daerah yang mengimplementasikan layanan aplikasi umum dan aplikasi khusus yang ditetapkan sesuai dengan ketentuan perundang-undangan', '', NULL, NULL, NULL, NULL, 10),
(380, 380, 'Layanan SPBE (layanan publik dan layanan administrasi pemerintahan) yang tercantum dalam dokumen proses bisnis yang telah diimplementasikan secara elektronik', '', NULL, NULL, NULL, NULL, 10),
(381, 381, 'Jumlah layanan SPBE (layanan publik dan layanan administrasi pemerintahan) yang memanfaatkan sertifikat elektronik', '', NULL, NULL, NULL, NULL, 10),
(382, 382, 'Jumlah sistem elektronik yang terdaftar sesuai ketentuan peraturan perundang-undangan', '', NULL, NULL, NULL, NULL, 10),
(383, 383, 'Jumlah layanan publik dan layanan administrasi yang terintegasi dengan sistem penghubung layanan pemerintah', '', NULL, NULL, NULL, NULL, 10),
(384, 384, 'Jumlah perangkat daerah yang menggunakan layanan pusat data pemerintah', '', NULL, NULL, NULL, NULL, 10),
(385, 385, 'Jumlah PD yang menyimpan data di pusat', '', NULL, NULL, NULL, NULL, 10),
(386, 386, 'Jumlah PD yang memperbaharui datanya sesuai siklus jenis datanya (sesuai renstra kominfo)', '', NULL, NULL, NULL, NULL, 10),
(387, 387, 'Jumlah data yang dapat berbagi pakai', '', NULL, NULL, NULL, NULL, 10),
(388, 388, 'Jumlah perangkat daerah yang mengimplementasi inovasi yang mendukung smart city', '', NULL, NULL, NULL, NULL, 10),
(389, 389, 'Jumlah ASN pengelola TIK yang tersertifikasi kompetensi di bawah pengelolaan Dinas Kominfo', '', NULL, NULL, NULL, NULL, 10),
(391, 391, 'Komunitas masyarakat atau mitra strategis Pemda Kabupaten yang telah menyebarkan informasi dan kebijakan pemerintah', '', NULL, NULL, NULL, NULL, 10),
(392, 392, 'Jumlah konten informasi terkait program dan kebijakan pemerintah dan pemerintah Kabupaten sesuai dengan strategi komunikasi (Strakom)', '', NULL, NULL, NULL, NULL, 10),
(393, 393, 'Diseminasi dan layanan informasi publik yang dilaksanakan sesuai dengan strategi komunikasi (Strakom) dan SOP', '', NULL, NULL, NULL, NULL, 10),
(394, 394, 'Jumlah penerbitan izin usaha simpan pinjam koperasi pada tahun yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(395, 395, 'Jumlah penerbitan izin pembukaan kantor cabang, cabang pembantu dan kantor kas usaha simpan pinjam pada tahun yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(396, 396, 'Jumlah koperasi yang diperiksa dan diawasi', '', NULL, NULL, NULL, NULL, 10),
(397, 397, 'Jumlah usaha simpan pinjam oleh koperasi yang dinilai kesehatannya', '', NULL, NULL, NULL, NULL, 10),
(398, 398, 'Jumlah koperasi yang mengikuti pendidikan dan pelatihan', '', NULL, NULL, NULL, NULL, 10),
(399, 399, 'Jumlah anggota koperasi yang mengikuti pelatihan perkoperasian', '', NULL, NULL, NULL, NULL, 10),
(400, 400, 'Jumlah koperasi yang telah menyelenggaraakn pendidikan dan pelatihan', '', NULL, NULL, NULL, NULL, 10),
(401, 401, 'Jumlah koperasi yang diberikan dukungan fasilitas pembiayaan', '', NULL, NULL, NULL, NULL, 10),
(402, 402, 'Jumlah koperasi yang telah diterbitkan sertifikat nomor induk koperasi (NIK)', '', NULL, NULL, NULL, NULL, 10),
(403, 403, 'Jumlah koperasi yang diberikan dukungan fasilitas pembiayaan', '', NULL, NULL, NULL, NULL, 10),
(404, 404, 'Jumlah koperasi yang diberikan dukungan fasilitasi pemasaran', '', NULL, NULL, NULL, NULL, 10),
(405, 405, 'Jumlah koperasi yang diberikan dukungan fasilitasi pendampingan kelembagaan dan usaha', '', NULL, NULL, NULL, NULL, 10),
(406, 406, 'Jumlah koperasi yang diberikan dukungan fasilitasi kemitraan', '', NULL, NULL, NULL, NULL, 10),
(407, 407, 'Jumlah pertumbuhan wirausaha baru', '', NULL, NULL, NULL, NULL, 10),
(408, 408, 'Jumlah usaha kecil yang diinput ke dalam sistem data online (ODS)', '', NULL, NULL, NULL, NULL, 10),
(409, 409, 'Jumlah usaha kecil yang bermitra', '', NULL, NULL, NULL, NULL, 10),
(410, 410, 'Jumlah usaha mikro yang diberikan dukungan fasilitasi standarisasi dan sertifikasi', '', NULL, NULL, NULL, NULL, 10),
(411, 411, 'Jumlah usaha MIkro yang diberikan dukungan fasilitasi pemasaran', '', NULL, NULL, NULL, NULL, 10),
(412, 412, 'Jumlah usaha MIkro yang diberikan dukungan fasilitasi pelatihan', '', NULL, NULL, NULL, NULL, 10),
(413, 413, 'Jumlah usaha MIkro yang diberikan pendampingan kelembagaan dan usaha', '', NULL, NULL, NULL, NULL, 10),
(437, 437, 'Jumlah metadata kegiatan statistik sektoral', '', NULL, NULL, NULL, NULL, 10),
(438, 438, 'Jumlah metadata indikator statistik sektoral', '', NULL, NULL, NULL, NULL, 10),
(440, 440, 'Jumlah kegiatan strategis teramankan', '', NULL, NULL, NULL, NULL, 10),
(441, 441, 'Jumlah SE yang menerapkan SMK1 dan diamankan sertifikat elektronik atau aplikasi penyandian', '', NULL, NULL, NULL, NULL, 10),
(442, 442, 'Jumlah SE atau aset informasi yang telah diaudit dengan resiko kategori rendah', '', NULL, NULL, NULL, NULL, 10),
(443, 443, 'Jumlah titik teramankan', '', NULL, NULL, NULL, NULL, 10),
(464, 464, 'Koleksi perpustakaan yang tersedia di berbagai perpustakaan di wilayahnya (dalam eksemplar)', '', NULL, NULL, NULL, NULL, 10),
(465, 465, 'Jumlah kunjungan pemustaka yang memanfaatkan perpustakaan baik secara online maupun onsite', '', NULL, NULL, NULL, NULL, 10),
(466, 466, 'Ketersediaan tenaga perpustakaan di berbagai perpustakaan di wilayahnya', '', NULL, NULL, NULL, NULL, 10),
(467, 467, 'Jumlah perpustakaan sesuai standar nasional perpustakaan', '', NULL, NULL, NULL, NULL, 10),
(472, 472, 'Jumlah arsip aktif yang telah dibuatkan daftar arsip', '', NULL, NULL, NULL, NULL, 10),
(473, 473, 'Jumlah arsip inaktif yang telah dibuatkan daftar arsip', '', NULL, NULL, NULL, NULL, 10),
(474, 474, 'Jumlah arsip statis yang telah dibuatkan sarana bantu temu balik', '', NULL, NULL, NULL, NULL, 10),
(475, 475, 'Jumlah arsip yang telah dimasukkan dalam SIKN melalui JIKN', '', NULL, NULL, NULL, NULL, 10),
(483, 483, 'Jumlah TPI yang operasional', '', NULL, NULL, NULL, NULL, 10),
(494, 494, 'Jumlah tenaga kerja pariwisata tersertifikasi', '', NULL, NULL, NULL, NULL, 10),
(495, 495, 'Jumlah peserta pembekalan sektor kepariwisataan', '', NULL, NULL, NULL, NULL, 10),
(504, 504, 'Jumlah prasarana yang aktif digunakan', '', NULL, NULL, NULL, NULL, 10),
(505, 505, 'Jumlah usulan yang difasilitasi', '', NULL, NULL, NULL, NULL, 10),
(508, 508, 'Jumlah Izin pusat perbelanjaan yang diterbitkan < 5 hari kerja', '', NULL, NULL, NULL, NULL, 10),
(509, 509, 'Jumlah Izin toko swalayan yang diterbitkan < 5 hari kerja', '', NULL, NULL, NULL, NULL, 10),
(510, 510, 'Jumlah Penerbitan TDG < 5 hari kerja', '', NULL, NULL, NULL, NULL, 10),
(511, 511, 'Jumlah Penerbitan TDG', '', NULL, NULL, NULL, NULL, 10),
(512, 512, 'Jumlah STPW untuk penerima waralaba dari Waralaba dalam negeri yang terbit kurang dari sama dengan 2 hari kerja sejak berkas permohonan diterima secara lengkap dan atau benar', '', NULL, NULL, NULL, NULL, 10),
(513, 513, 'Jumlah STPW untuk penerima lanjutan waralaba dari Waralaba dalam negeri yang terbit kurang dari sama dengan 2 hari kerja sejak berkas permohonan diterima secara lengkap dan atau benar', '', NULL, NULL, NULL, NULL, 10),
(514, 514, 'Jumlah STPW untuk penerima lanjutan waralaba dari Waralaba Luar negeri yang terbit kurang dari sama dengan 2 hari kerja sejak berkas permohonan diterima secara lengkap dan atau benar', '', NULL, NULL, NULL, NULL, 10),
(515, 515, 'Jumlah pemeriksaan fasilitas penyimpanan bahan berbahaya dan pengawasan distribusi, pengemasan dan pelabelan bahan berbahaya di tingkat kabupaten', '', NULL, NULL, NULL, NULL, 10),
(516, 516, 'Jumlah SKA yang terbit lebih kecil sama dengan 1 hari kerja (1 x 24 jam)', '', NULL, NULL, NULL, NULL, 10),
(520, 520, 'Jumlah total UTTP yang ditera dan tera ulang pada tahun berjalan', '', NULL, NULL, NULL, NULL, 10),
(521, 521, 'Jumlah sampel BDKT yang diawasi dalam tahun berjalan sesuai ketentuan yang berlaku', '', NULL, NULL, NULL, NULL, 10),
(522, 522, 'Jumlah realisasi izin yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(524, 524, 'Jumlah realisasi izin yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(525, 525, 'Jumlah realisasi izin yang diterbitkan', '', NULL, NULL, NULL, NULL, 10),
(527, 527, 'Jumlah data perusahaan industri kecil menengah dan perusahaan kawasan industri di Kabupaten di SIINas', '', NULL, NULL, NULL, NULL, 10),
(1727, 94, 'Panjang Jaringan Irigasi Primer (M)', '', NULL, NULL, NULL, NULL, 10),
(1728, 95, 'Panjang Jaringan Irigasi Sekunder (M)', '', NULL, NULL, NULL, NULL, 10),
(1729, 96, 'Panjang Jaringan Irigasi Tersier (M)', '', NULL, NULL, NULL, NULL, 10),
(1741, 108, '∑ Rumah diwilayah pengembangan SPALD dengan kepadatan penduduk pada wilayah terbangun <25 jiwa/ha', '', NULL, NULL, NULL, NULL, 10),
(1742, 109, 'Rumah diwilayah pengembangan SPALD dengan kepadatan penduduk pada wilayah terbangun <25 jiwa/ha', '', NULL, NULL, NULL, NULL, 10),
(1743, 110, '∑ Rumah diwilayah pengembangan SPALDT ', '', NULL, NULL, NULL, NULL, 10),
(1744, 111, '∑ Jumlah Rumah yang termasuk dalam wilayah pengembangan SPALD-S', '', NULL, NULL, NULL, NULL, 10),
(1745, 112, '∑ Jumlah sarana pengangkutan yang dibutuhkan kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1746, 113, '∑ Jumlah Kapasitas Pengolahan Lumput Tinja yang dibutuhkan kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1747, 114, '∑ Jumlah rumah yang dilayani dengan SPALD-T pada Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1748, 115, '∑ Jumlah rumah yang termasuk dalam wilayah  pengembangan SPALD-S', '', NULL, NULL, NULL, NULL, 10),
(1749, 116, '∑ Jumlah bangunan gedung (Kecuali rumah tinggal tunggal dan rumah deret sederhana )', '', NULL, NULL, NULL, NULL, 10),
(1814, 181, 'Jumlah Total unit Rumah', '', NULL, NULL, NULL, NULL, 10),
(1832, 199, 'Jumlah satu dokumen KRB yang lengkap dan sudah disahkan', '', NULL, NULL, NULL, NULL, 10),
(1833, 200, 'Seluruh penduduk di kawasan rawan bencana sesuai jenis ancaman bencana', '', NULL, NULL, NULL, NULL, 10),
(1834, 201, 'Jumlah satu dokumen RPB yang lengkap dan sudah disahkan', '', NULL, NULL, NULL, NULL, 10),
(1835, 202, 'Jumlah satu dokumen Renkon yang lengkap dan sudah disahkan', '', NULL, NULL, NULL, NULL, 10),
(1836, 203, 'Jumlah aparatur dengan warga negara dikawasan rawan bencana', '', NULL, NULL, NULL, NULL, 10),
(1837, 204, 'Jumlah warga negara dikawasan rawan bencana', '', NULL, NULL, NULL, NULL, 10),
(1838, 205, 'Jumlah warga negara yang berada dikawasan rawan bencana', '', NULL, NULL, NULL, NULL, 10),
(1839, 206, 'Jumlah warga negara yang berada dikawasan rawan bencana', '', NULL, NULL, NULL, NULL, 10),
(1840, 207, 'Jumlah seluruh penetapan status KLB', '', NULL, NULL, NULL, NULL, 10),
(1841, 208, 'Jumlah seluruh penetapan status Darurat Bencana', '', NULL, NULL, NULL, NULL, 10),
(1842, 209, 'Jumlah keseluruhan Petugas dalam penanganan darurat bencana', '', NULL, NULL, NULL, NULL, 10),
(1843, 210, 'Perkiraan Jumlah Korban Keseluruhan dari Bencana', '', NULL, NULL, NULL, NULL, 10),
(1883, 250, 'Keseluruhan program pelatihan baik kualifikasi kompetensi maupun klaster pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1884, 251, 'Jumlah instruktur seluruhnya pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1885, 252, 'Jumlah peserta pelatihan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1886, 253, 'Jumlah seluruh LPK pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1887, 254, 'Jumlah LPK yang terdata pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1889, 256, 'Jumlah orang yang dilatih tahun n', '', NULL, NULL, NULL, NULL, 10),
(1890, 257, 'Jumlah lulusan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1891, 258, 'Jumlah lulusan bersertifikat pelatihan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1892, 259, 'jumlah CPMI terdaftar', '', NULL, NULL, NULL, NULL, 10),
(1894, 261, 'Jumlah perusahaan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1896, 263, 'Jumlah perusahaan yang memiliki tenaga kerja 10 orang atau lebih', '', NULL, NULL, NULL, NULL, 10),
(1897, 264, 'Jumlah perusahaan yang memiliki serikat pekerja/serikat buruh', '', NULL, NULL, NULL, NULL, 10),
(1899, 266, 'Jumlah perusahaan yang telah mengatur syarat kerja (dalam PP atau PKB)', '', NULL, NULL, NULL, NULL, 10),
(1900, 267, 'Jumlah perusahaan berdasarkan perusahaan wajib lapor', '', NULL, NULL, NULL, NULL, 10),
(1901, 268, 'Jumlah perusahaan pada tahun n', '', NULL, NULL, NULL, NULL, 10),
(1919, 286, 'Jumlah CPM/CTKI', '', NULL, NULL, NULL, NULL, 10),
(1921, 288, 'Jumlah PMI yang pulang', '', NULL, NULL, NULL, NULL, 10),
(1922, 289, 'Jumlah PMI/TKI', '', NULL, NULL, NULL, NULL, 10),
(1923, 290, 'Jumlah PMI/TKI purna dan keluarganya', '', NULL, NULL, NULL, NULL, 10),
(1932, 299, 'Jumlah korban kekerasan anak di tingkat Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1941, 308, 'Jumlah korban kekerasan terhadap perempuan', '', NULL, NULL, NULL, NULL, 10),
(1950, 317, 'Jumlah permohonan izin lokasi dalam 1 Tahun', '', NULL, NULL, NULL, NULL, 10),
(1951, 318, 'Jumlah permohonan yang diusulkan panitia pertimbangan Landreform', '', NULL, NULL, NULL, NULL, 10),
(1952, 319, 'Jumlah luas tanah yang telah ditetapkan sebagai tanah obyek Landreform yang berasal dari tanah kelebihan maksimum absentee dan daftar subyek', '', NULL, NULL, NULL, NULL, 10),
(1953, 320, 'Jumlah dokumen izin membuka tanah yang dimohon dalam 1 tahun', '', NULL, NULL, NULL, NULL, 10),
(1954, 321, 'Jumlah dokumen penetapan site lokasi pembangunan fisik yang direncanakan dalam 1 tahun', '', NULL, NULL, NULL, NULL, 10),
(1966, 333, 'Jumlah usulan permohonan yang teregistrasi', '', NULL, NULL, NULL, NULL, 10),
(1967, 334, 'Jumlah kegiatan dan atau usaha yang izin lingkungan, izin PPLH dan PUU LH yang diterbitkan oleh Pemerintah Daerah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(1968, 335, 'Jumlah usulan MHA', '', NULL, NULL, NULL, NULL, 10),
(1969, 336, 'Jumlah MHA yang ada', '', NULL, NULL, NULL, NULL, 10),
(1970, 337, 'Target lembaga kemasyarakatan yang akan diberikan diklat', '', NULL, NULL, NULL, NULL, 10),
(1971, 338, 'Total jumlah pengaduan masyarakat yang teregistrasi', '', NULL, NULL, NULL, NULL, 10),
(1976, 343, 'Peristiwa perkawinan yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(1977, 344, 'Peristiwa perceraian yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(1978, 345, 'Peristiwa Kematian yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(1979, 346, '2 tahun', '', NULL, NULL, NULL, NULL, 10),
(1994, 361, 'Jumlah sasaran masyarakat program KKBPK (advokasi dan KIE)', '', NULL, NULL, NULL, NULL, 10),
(1996, 363, 'Jumlah Faskes', '', NULL, NULL, NULL, NULL, 10),
(1997, 364, 'Jumlah PUS', '', NULL, NULL, NULL, NULL, 10),
(1999, 366, 'Jumlah sasaran perserta KB pasca persalinan', '', NULL, NULL, NULL, NULL, 10),
(2001, 368, 'Jumlah Keluarga PBI', '', NULL, NULL, NULL, NULL, 10),
(2002, 369, 'Jumlah fasilitas penyelenggaraan terminal penumpang angkutan jalan sesuai dengan standar pelayanan penyelenggaraan angkutan jalan', '', NULL, NULL, NULL, NULL, 10),
(2003, 370, 'Jumlah kendaraan wajib uji', '', NULL, NULL, NULL, NULL, 10),
(2004, 371, 'Jumlah lintas penyebrangan dalam kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2005, 372, 'Target kebutuhan perlengkapana jalan kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2006, 373, 'Target kebutuhan perlengkapan jalan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2007, 374, 'Jumlah Perangkat Daerah', '', NULL, NULL, NULL, NULL, 10),
(2008, 375, 'Jumlah Perangkat Daerah', '', NULL, NULL, NULL, NULL, 10),
(2010, 377, 'Jlh kegiatan (event) perangkat daerah dan pelayanan publik pada pemerintah daerah', '', NULL, NULL, NULL, NULL, 10),
(2011, 378, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2012, 379, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2013, 380, 'Jumlah layanan', '', NULL, NULL, NULL, NULL, 10),
(2014, 381, 'Jumlah layanan', '', NULL, NULL, NULL, NULL, 10),
(2015, 382, 'Jumlah sistem elektronik', '', NULL, NULL, NULL, NULL, 10),
(2016, 383, 'Jumlah layanan publik dan layanan administrasi', '', NULL, NULL, NULL, NULL, 10),
(2017, 384, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2018, 385, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2019, 386, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2020, 387, 'Jumlah data yang dimiliki pemerintah daerah', '', NULL, NULL, NULL, NULL, 10),
(2021, 388, 'Jumlah perangkat daerah', '', NULL, NULL, NULL, NULL, 10),
(2022, 389, 'Jumlah ASN pengelola TIK yang tersertifikasi kompetensi di bawah pengelolaan Dinas Kominfo', '', NULL, NULL, NULL, NULL, 10),
(2024, 391, 'Komunitas masyarakat atau mitra komunikasi Pemerintah Daerah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2025, 392, 'Konten informasi terkait program dan kebijakan pemerintah daerah dan pemerintah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2026, 393, 'Diseminasi dan layanan informasi publik yang dilaksanakan sesuai dengan strategi komunikasi (Strakom) dan SOP', '', NULL, NULL, NULL, NULL, 10),
(2027, 394, 'Jumlah usaha simpan pinjam koperasi yang belum mempunyai izin usaha simpan pinjam', '', NULL, NULL, NULL, NULL, 10),
(2028, 395, 'Jumlah permohonan izin pembukana kantor cabang, cabang pembantu dan kantor kas usaha simpan pinjam pada tahun yang dilaporkan', '', NULL, NULL, NULL, NULL, 10),
(2029, 396, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2030, 397, 'Jumlah usaha simpan pinjam oleh koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2031, 398, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2032, 399, 'Jumlah anggota koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2033, 400, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2034, 401, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2035, 402, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2036, 403, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2037, 404, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2038, 405, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2039, 406, 'Jumlah koperasi yang ada', '', NULL, NULL, NULL, NULL, 10),
(2040, 407, 'Jumlah wirausaha yang ada', '', NULL, NULL, NULL, NULL, 10),
(2041, 408, 'Jumlah usaha kecil yang ada', '', NULL, NULL, NULL, NULL, 10),
(2042, 409, 'Jumlah usaha kecil yang ada', '', NULL, NULL, NULL, NULL, 10),
(2043, 410, 'Jumlah usaha mikro yang belum memiliki standar dan sertifikasi produk', '', NULL, NULL, NULL, NULL, 10),
(2044, 411, 'Jumlah usaha MIkro yang belum mendapatkan dukungan pemasaran', '', NULL, NULL, NULL, NULL, 10),
(2045, 412, 'Jumlah usaha MIkro yang ada', '', NULL, NULL, NULL, NULL, 10),
(2046, 413, 'Jumlah usaha MIkro yang ada', '', NULL, NULL, NULL, NULL, 10),
(2070, 437, 'Jumlah kegiatan statistik sektoral', '', NULL, NULL, NULL, NULL, 10),
(2071, 438, 'Jumlah indikator statistik sektoral', '', NULL, NULL, NULL, NULL, 10),
(2073, 440, 'Jumlah kegiatan strategis yang ada', '', NULL, NULL, NULL, NULL, 10),
(2074, 441, 'Jumlah SE yang ada', '', NULL, NULL, NULL, NULL, 10),
(2075, 442, 'Jumlah SE yang ada', '', NULL, NULL, NULL, NULL, 10),
(2076, 443, 'Jumlah titik pada PHKS', '', NULL, NULL, NULL, NULL, 10),
(2097, 464, 'Jumlah penduduk di wilayah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2098, 465, 'Jumlah penduduk di wilayah Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2099, 466, 'Jumlah penduduk di wilayahnya', '', NULL, NULL, NULL, NULL, 10),
(2100, 467, 'Jumlah perpustakaan dari berbagai jenis yang terdapat di wilayahnya', '', NULL, NULL, NULL, NULL, 10),
(2105, 472, 'Jumlah seluruh arsip aktif', '', NULL, NULL, NULL, NULL, 10),
(2106, 473, 'Jumlah seluruh arsip inaktif', '', NULL, NULL, NULL, NULL, 10),
(2107, 474, 'Jumlah seluruh arsip statis', '', NULL, NULL, NULL, NULL, 10),
(2108, 475, 'Jumlah seluruh arsip dinamis dan arsip statis pemerintahan Kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2116, 483, 'Jumlah seluruh TPI yang ada diwilayah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2127, 494, 'Jumlah tenaga kerja pariwisata', '', NULL, NULL, NULL, NULL, 10),
(2128, 495, 'Jumlah sasaran pembekalan sektor kepariwisataan', '', NULL, NULL, NULL, NULL, 10),
(2137, 504, 'Jumlah prasarana yang dibangun', '', NULL, NULL, NULL, NULL, 10),
(2138, 505, 'Jumlah usulan usaha pertanian', '', NULL, NULL, NULL, NULL, 10),
(2141, 508, 'Jumlah permohonan izin pusat perbelanjaan yang dokumennya sudah lengkap dan benar', '', NULL, NULL, NULL, NULL, 10),
(2142, 509, 'Jumlah permohonan izin toko swalayan yang dokumennya sudah lengkap dan benar', '', NULL, NULL, NULL, NULL, 10),
(2143, 510, 'Jumlah permohonan Penerbitan TDG', '', NULL, NULL, NULL, NULL, 10),
(2144, 511, 'Jumlah gudang yang ada di kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2145, 512, 'Jumlah permohonan STPW untuk penerima waralaba dari Waralaba dalam negeri', '', NULL, NULL, NULL, NULL, 10),
(2146, 513, 'Jumlah permohonan STPW untuk penerima waralaba lanjutan dari Waralaba dalam negeri', '', NULL, NULL, NULL, NULL, 10),
(2147, 514, 'Jumlah permohonan STPW untuk penerima waralaba lanjutan dari Waralaba luar negeri', '', NULL, NULL, NULL, NULL, 10),
(2148, 515, 'Jumlah permohan SIUP bahan berbahaya bagi pengecer', '', NULL, NULL, NULL, NULL, 10),
(2149, 516, 'Jumlah permohonan penerbitan SKA yang dokumennya telah diterima dengan lengkap dan benar', '', NULL, NULL, NULL, NULL, 10),
(2153, 520, 'Jumlah potensi UTTP yang wajib ditera dan tera ulang diwilayah kabupaten', '', NULL, NULL, NULL, NULL, 10),
(2154, 521, 'Total sampel BDKT yang diawasi dalam tahun berjalan', '', NULL, NULL, NULL, NULL, 10),
(2155, 522, 'Jumlah permohonan atau pengajuan izin yang masuk', '', NULL, NULL, NULL, NULL, 10),
(2157, 524, 'Jumlah permohonan atau pengajuan izin yang masuk', '', NULL, NULL, NULL, NULL, 10),
(2158, 525, 'Jumlah permohonan atau pengajuan izin yang masuk', '', NULL, NULL, NULL, NULL, 10),
(2160, 527, 'Total populasi perusahaan industri kecil mememgah dan perusahaan kawasan industri di Kabupaten', '', NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1617009480),
('m130524_201442_init', 1617009483),
('m140506_102106_rbac_init', 1632894019),
('m151027_142811_create_route_table', 1632894030),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1632894019),
('m180523_151638_rbac_updates_indexes_without_prefix', 1632894019),
('m190124_110200_add_verification_token_column_to_user_table', 1617009483),
('m200409_110543_rbac_update_mssql_trigger', 1632894019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `plan_migration`
--

CREATE TABLE IF NOT EXISTS `plan_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `plan_migration`
--

INSERT INTO `plan_migration` (`version`, `apply_time`) VALUES
('m210329_094413_1_create_all_table_and_all_fk_and_all_data', 1617012428),
('m210330_080056_2_alter_table_produk_hukum', 1617091339),
('m210330_082107_3_alter_table_produk_hukum', 1617092506),
('m210330_141504_4_alter_table_produk_hukum', 1617113756),
('m210330_152857_5_alter_table_yang_required', 1617118230),
('m210407_083850_6_create_table_profil_and_all_data_and_fk', 1617849863),
('m210408_033620_7_alter_table_master_struktur', 1617853553),
('m210507_082956_8_alter_table_produk_hukum_rancangan', 1620379354),
('m210921_030818_9_create_table_file_download', 1632195519);

-- --------------------------------------------------------

--
-- Struktur dari tabel `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `route`
--

INSERT INTO `route` (`name`, `alias`, `type`, `status`) VALUES
('/*', '*', '', 1),
('/artikel/*', '*', 'artikel', 1),
('/artikel/create', 'create', 'artikel', 1),
('/artikel/delete', 'delete', 'artikel', 1),
('/artikel/index', 'index', 'artikel', 1),
('/artikel/update', 'update', 'artikel', 1),
('/artikel/view', 'view', 'artikel', 1),
('/backend/artikel/*', '*', 'backend/artikel', 1),
('/backend/artikel/create', 'create', 'backend/artikel', 1),
('/backend/artikel/delete', 'delete', 'backend/artikel', 1),
('/backend/artikel/index', 'index', 'backend/artikel', 1),
('/backend/artikel/update', 'update', 'backend/artikel', 1),
('/backend/artikel/view', 'view', 'backend/artikel', 1),
('/backend/file-download/*', '*', 'backend/file-download', 1),
('/backend/file-download/create', 'create', 'backend/file-download', 1),
('/backend/file-download/delete', 'delete', 'backend/file-download', 1),
('/backend/file-download/index', 'index', 'backend/file-download', 1),
('/backend/file-download/update', 'update', 'backend/file-download', 1),
('/backend/file-download/view', 'view', 'backend/file-download', 1),
('/backend/master-jabatan/*', '*', 'backend/master-jabatan', 1),
('/backend/master-jabatan/create', 'create', 'backend/master-jabatan', 1),
('/backend/master-jabatan/delete', 'delete', 'backend/master-jabatan', 1),
('/backend/master-jabatan/index', 'index', 'backend/master-jabatan', 1),
('/backend/master-jabatan/update', 'update', 'backend/master-jabatan', 1),
('/backend/master-jabatan/view', 'view', 'backend/master-jabatan', 1),
('/backend/master-kategori-artikel/*', '*', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori-artikel/create', 'create', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori-artikel/delete', 'delete', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori-artikel/index', 'index', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori-artikel/update', 'update', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori-artikel/view', 'view', 'backend/master-kategori-artikel', 1),
('/backend/master-kategori/*', '*', 'backend/master-kategori', 1),
('/backend/master-kategori/create', 'create', 'backend/master-kategori', 1),
('/backend/master-kategori/delete', 'delete', 'backend/master-kategori', 1),
('/backend/master-kategori/index', 'index', 'backend/master-kategori', 1),
('/backend/master-kategori/update', 'update', 'backend/master-kategori', 1),
('/backend/master-kategori/view', 'view', 'backend/master-kategori', 1),
('/backend/master-profil/*', '*', 'backend/master-profil', 1),
('/backend/master-profil/create', 'create', 'backend/master-profil', 1),
('/backend/master-profil/delete', 'delete', 'backend/master-profil', 1),
('/backend/master-profil/index', 'index', 'backend/master-profil', 1),
('/backend/master-profil/update', 'update', 'backend/master-profil', 1),
('/backend/master-profil/view', 'view', 'backend/master-profil', 1),
('/backend/master-status-publish/*', '*', 'backend/master-status-publish', 1),
('/backend/master-status-publish/create', 'create', 'backend/master-status-publish', 1),
('/backend/master-status-publish/delete', 'delete', 'backend/master-status-publish', 1),
('/backend/master-status-publish/index', 'index', 'backend/master-status-publish', 1),
('/backend/master-status-publish/update', 'update', 'backend/master-status-publish', 1),
('/backend/master-status-publish/view', 'view', 'backend/master-status-publish', 1),
('/backend/master-status/*', '*', 'backend/master-status', 1),
('/backend/master-status/create', 'create', 'backend/master-status', 1),
('/backend/master-status/delete', 'delete', 'backend/master-status', 1),
('/backend/master-status/index', 'index', 'backend/master-status', 1),
('/backend/master-status/update', 'update', 'backend/master-status', 1),
('/backend/master-status/view', 'view', 'backend/master-status', 1),
('/backend/master-struktur/*', '*', 'backend/master-struktur', 1),
('/backend/master-struktur/create', 'create', 'backend/master-struktur', 1),
('/backend/master-struktur/delete', 'delete', 'backend/master-struktur', 1),
('/backend/master-struktur/index', 'index', 'backend/master-struktur', 1),
('/backend/master-struktur/update', 'update', 'backend/master-struktur', 1),
('/backend/master-struktur/view', 'view', 'backend/master-struktur', 1),
('/backend/produk-hukum/*', '*', 'backend/produk-hukum', 1),
('/backend/produk-hukum/create', 'create', 'backend/produk-hukum', 1),
('/backend/produk-hukum/delete', 'delete', 'backend/produk-hukum', 1),
('/backend/produk-hukum/index', 'index', 'backend/produk-hukum', 1),
('/backend/produk-hukum/update', 'update', 'backend/produk-hukum', 1),
('/backend/produk-hukum/view', 'view', 'backend/produk-hukum', 1),
('/backend/rancangan-ph/*', '*', 'backend/rancangan-ph', 1),
('/backend/rancangan-ph/create', 'create', 'backend/rancangan-ph', 1),
('/backend/rancangan-ph/delete', 'delete', 'backend/rancangan-ph', 1),
('/backend/rancangan-ph/index', 'index', 'backend/rancangan-ph', 1),
('/backend/rancangan-ph/update', 'update', 'backend/rancangan-ph', 1),
('/backend/rancangan-ph/view', 'view', 'backend/rancangan-ph', 1),
('/backend/site/*', '*', 'backend/site', 1),
('/backend/site/error', 'error', 'backend/site', 1),
('/backend/site/index', 'index', 'backend/site', 1),
('/backend/site/login', 'login', 'backend/site', 1),
('/backend/site/logout', 'logout', 'backend/site', 1),
('/debug/*', '*', 'debug', 1),
('/debug/default/*', '*', 'debug/default', 1),
('/debug/default/db-explain', 'db-explain', 'debug/default', 1),
('/debug/default/download-mail', 'download-mail', 'debug/default', 1),
('/debug/default/index', 'index', 'debug/default', 1),
('/debug/default/toolbar', 'toolbar', 'debug/default', 1),
('/debug/default/view', 'view', 'debug/default', 1),
('/debug/user/*', '*', 'debug/user', 1),
('/debug/user/reset-identity', 'reset-identity', 'debug/user', 1),
('/debug/user/set-identity', 'set-identity', 'debug/user', 1),
('/file-download/*', '*', 'file-download', 1),
('/file-download/create', 'create', 'file-download', 1),
('/file-download/delete', 'delete', 'file-download', 1),
('/file-download/index', 'index', 'file-download', 1),
('/file-download/update', 'update', 'file-download', 1),
('/file-download/view', 'view', 'file-download', 1),
('/file-download/view-fd', 'view-fd', 'file-download', 1),
('/gii/*', '*', 'gii', 1),
('/gii/default/*', '*', 'gii/default', 1),
('/gii/default/action', 'action', 'gii/default', 1),
('/gii/default/diff', 'diff', 'gii/default', 1),
('/gii/default/index', 'index', 'gii/default', 1),
('/gii/default/preview', 'preview', 'gii/default', 1),
('/gii/default/view', 'view', 'gii/default', 1),
('/gridview/*', '*', 'gridview', 1),
('/gridview/export/*', '*', 'gridview/export', 1),
('/gridview/export/download', 'download', 'gridview/export', 1),
('/master-jabatan/*', '*', 'master-jabatan', 1),
('/master-jabatan/create', 'create', 'master-jabatan', 1),
('/master-jabatan/delete', 'delete', 'master-jabatan', 1),
('/master-jabatan/index', 'index', 'master-jabatan', 1),
('/master-jabatan/update', 'update', 'master-jabatan', 1),
('/master-jabatan/view', 'view', 'master-jabatan', 1),
('/master-kategori-artikel/*', '*', 'master-kategori-artikel', 1),
('/master-kategori-artikel/create', 'create', 'master-kategori-artikel', 1),
('/master-kategori-artikel/delete', 'delete', 'master-kategori-artikel', 1),
('/master-kategori-artikel/index', 'index', 'master-kategori-artikel', 1),
('/master-kategori-artikel/update', 'update', 'master-kategori-artikel', 1),
('/master-kategori-artikel/view', 'view', 'master-kategori-artikel', 1),
('/master-kategori/*', '*', 'master-kategori', 1),
('/master-kategori/create', 'create', 'master-kategori', 1),
('/master-kategori/delete', 'delete', 'master-kategori', 1),
('/master-kategori/index', 'index', 'master-kategori', 1),
('/master-kategori/update', 'update', 'master-kategori', 1),
('/master-kategori/view', 'view', 'master-kategori', 1),
('/master-profil/*', '*', 'master-profil', 1),
('/master-profil/create', 'create', 'master-profil', 1),
('/master-profil/delete', 'delete', 'master-profil', 1),
('/master-profil/index', 'index', 'master-profil', 1),
('/master-profil/update', 'update', 'master-profil', 1),
('/master-profil/view', 'view', 'master-profil', 1),
('/master-profil/view-con', 'view-con', 'master-profil', 1),
('/master-profil/view-s', 'view-s', 'master-profil', 1),
('/master-profil/view-vm', 'view-vm', 'master-profil', 1),
('/master-status-publish/*', '*', 'master-status-publish', 1),
('/master-status-publish/create', 'create', 'master-status-publish', 1),
('/master-status-publish/delete', 'delete', 'master-status-publish', 1),
('/master-status-publish/index', 'index', 'master-status-publish', 1),
('/master-status-publish/update', 'update', 'master-status-publish', 1),
('/master-status-publish/view', 'view', 'master-status-publish', 1),
('/master-status/*', '*', 'master-status', 1),
('/master-status/create', 'create', 'master-status', 1),
('/master-status/delete', 'delete', 'master-status', 1),
('/master-status/index', 'index', 'master-status', 1),
('/master-status/update', 'update', 'master-status', 1),
('/master-status/view', 'view', 'master-status', 1),
('/master-struktur/*', '*', 'master-struktur', 1),
('/master-struktur/create', 'create', 'master-struktur', 1),
('/master-struktur/delete', 'delete', 'master-struktur', 1),
('/master-struktur/index', 'index', 'master-struktur', 1),
('/master-struktur/update', 'update', 'master-struktur', 1),
('/master-struktur/view', 'view', 'master-struktur', 1),
('/master-struktur/view-so', 'view-so', 'master-struktur', 1),
('/mimin/*', '*', 'mimin', 1),
('/mimin/role/*', '*', 'mimin/role', 1),
('/mimin/role/create', 'create', 'mimin/role', 1),
('/mimin/role/delete', 'delete', 'mimin/role', 1),
('/mimin/role/index', 'index', 'mimin/role', 1),
('/mimin/role/permission', 'permission', 'mimin/role', 1),
('/mimin/role/update', 'update', 'mimin/role', 1),
('/mimin/role/view', 'view', 'mimin/role', 1),
('/mimin/route/*', '*', 'mimin/route', 1),
('/mimin/route/create', 'create', 'mimin/route', 1),
('/mimin/route/delete', 'delete', 'mimin/route', 1),
('/mimin/route/generate', 'generate', 'mimin/route', 1),
('/mimin/route/index', 'index', 'mimin/route', 1),
('/mimin/route/update', 'update', 'mimin/route', 1),
('/mimin/route/view', 'view', 'mimin/route', 1),
('/mimin/user/*', '*', 'mimin/user', 1),
('/mimin/user/create', 'create', 'mimin/user', 1),
('/mimin/user/delete', 'delete', 'mimin/user', 1),
('/mimin/user/index', 'index', 'mimin/user', 1),
('/mimin/user/update', 'update', 'mimin/user', 1),
('/mimin/user/view', 'view', 'mimin/user', 1),
('/produk-hukum/*', '*', 'produk-hukum', 1),
('/produk-hukum/cari-ph', 'cari-ph', 'produk-hukum', 1),
('/produk-hukum/create', 'create', 'produk-hukum', 1),
('/produk-hukum/delete', 'delete', 'produk-hukum', 1),
('/produk-hukum/detail-produk-hukum', 'detail-produk-hukum', 'produk-hukum', 1),
('/produk-hukum/index', 'index', 'produk-hukum', 1),
('/produk-hukum/update', 'update', 'produk-hukum', 1),
('/produk-hukum/view', 'view', 'produk-hukum', 1),
('/rancangan-ph/*', '*', 'rancangan-ph', 1),
('/rancangan-ph/create', 'create', 'rancangan-ph', 1),
('/rancangan-ph/delete', 'delete', 'rancangan-ph', 1),
('/rancangan-ph/detail-rancangan-ph', 'detail-rancangan-ph', 'rancangan-ph', 1),
('/rancangan-ph/index', 'index', 'rancangan-ph', 1),
('/rancangan-ph/update', 'update', 'rancangan-ph', 1),
('/rancangan-ph/view', 'view', 'rancangan-ph', 1),
('/rancangan-ph/view-bak', 'view-bak', 'rancangan-ph', 1),
('/site/*', '*', 'site', 1),
('/site/about', 'about', 'site', 1),
('/site/captcha', 'captcha', 'site', 1),
('/site/contact', 'contact', 'site', 1),
('/site/error', 'error', 'site', 1),
('/site/index', 'index', 'site', 1),
('/site/login', 'login', 'site', 1),
('/site/logout', 'logout', 'site', 1),
('/site/request-password-reset', 'request-password-reset', 'site', 1),
('/site/resend-verification-email', 'resend-verification-email', 'site', 1),
('/site/reset-password', 'reset-password', 'site', 1),
('/site/signup', 'signup', 'site', 1),
('/site/sinkronisasi-jdih', 'sinkronisasi-jdih', 'site', 1),
('/site/verify-email', 'verify-email', 'site', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'd22fTYs4cxSA61NDCiEIV3QwryqkFETP', '$2y$13$x.y80XTws5f5mTeSNJXyGuv4yxnVlCtMWWOz6qci6Yp8UbeRQQ4ne', NULL, 'admin@gmail.com', 10, 1617009510, 1617009510, 'WaN-hGi-sj0ioykJjgofIcLklI4qPn1e_1617009510'),
(2, 'dinas.kominfo', NULL, '$2y$13$cKd7a8wXB3nLo9b8OEmpQu1bF.TZCJgrEIzpyoT4NECdO5OMmBTCS', NULL, 'dinas.kominfo@gmail.com', 10, 1632894280, 1632894280, NULL),
(3, 'el1337', 'prMkenOH7Zl49uXpCilqfNzuUDmnAibh', '$2y$13$DcOvjxxPjBJ34HGcFT32AOmtX82RNcndUwpQ7P234CCMkPqtNO72a', NULL, 'ardifx01@gmail.com', 9, 1697510412, 1697510412, 'wGqgWQyOUKoRKREtRrn5GA8y8d_NTz5y_1697510412');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jdih_artikel`
--
ALTER TABLE `jdih_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihArt-idKatArt` (`id_kategori_artikel`),
  ADD KEY `fk-jdihArt-idSttsPublish` (`id_status_publish`);

--
-- Indexes for table `jdih_file_download`
--
ALTER TABLE `jdih_file_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jdih_master_jabatan`
--
ALTER TABLE `jdih_master_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jdih_master_kategori`
--
ALTER TABLE `jdih_master_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihMk-idStatus` (`id_status`);

--
-- Indexes for table `jdih_master_kategori_artikel`
--
ALTER TABLE `jdih_master_kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihMKA-idStatus` (`id_status`);

--
-- Indexes for table `jdih_master_profil`
--
ALTER TABLE `jdih_master_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jdih_master_status`
--
ALTER TABLE `jdih_master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jdih_master_status_publish`
--
ALTER TABLE `jdih_master_status_publish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jdih_master_struktur`
--
ALTER TABLE `jdih_master_struktur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihMS-idJabatan` (`id_jabatan`);

--
-- Indexes for table `jdih_produk_hukum`
--
ALTER TABLE `jdih_produk_hukum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihPH-idKategori` (`id_kategori`),
  ADD KEY `fk-jdihPH-idSttsPublish` (`id_status_publish`);

--
-- Indexes for table `jdih_rancangan_ph`
--
ALTER TABLE `jdih_rancangan_ph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-jdihRPH-idKategori` (`id_kategori`),
  ADD KEY `fk-jdihRPH-idSttsPublish` (`id_status_publish`);

--
-- Indexes for table `lppd_log_outcome`
--
ALTER TABLE `lppd_log_outcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdLOC-idOutcome` (`id_outcome`),
  ADD KEY `fk-lppdLOC-idMStatus` (`id_master_status`);

--
-- Indexes for table `lppd_log_output`
--
ALTER TABLE `lppd_log_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdLOP-idOutput` (`id_output`),
  ADD KEY `fk-lppdLOP-idMStatus` (`id_master_status`);

--
-- Indexes for table `lppd_master_opd`
--
ALTER TABLE `lppd_master_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lppd_master_status`
--
ALTER TABLE `lppd_master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lppd_master_status_riwayat`
--
ALTER TABLE `lppd_master_status_riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lppd_master_urusan`
--
ALTER TABLE `lppd_master_urusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdMU-idMOpd` (`id_master_opd`),
  ADD KEY `fk-lppdMU-idSttsRw` (`id_status_riwayat`);

--
-- Indexes for table `lppd_outcome`
--
ALTER TABLE `lppd_outcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdOC-idMUrusan` (`id_master_urusan`),
  ADD KEY `fk-lppdOC-idMStatus` (`id_master_status`);

--
-- Indexes for table `lppd_output`
--
ALTER TABLE `lppd_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdOP-idOutcome` (`id_outcome`),
  ADD KEY `fk-lppdOP-idMStatus` (`id_master_status`);

--
-- Indexes for table `lppd_rumus_outcome`
--
ALTER TABLE `lppd_rumus_outcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdROC-idOutcome` (`id_outcome`);

--
-- Indexes for table `lppd_rumus_output`
--
ALTER TABLE `lppd_rumus_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-lppdROP-idOutput` (`id_output`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `plan_migration`
--
ALTER TABLE `plan_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jdih_artikel`
--
ALTER TABLE `jdih_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jdih_file_download`
--
ALTER TABLE `jdih_file_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jdih_master_jabatan`
--
ALTER TABLE `jdih_master_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jdih_master_kategori`
--
ALTER TABLE `jdih_master_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jdih_master_kategori_artikel`
--
ALTER TABLE `jdih_master_kategori_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jdih_master_profil`
--
ALTER TABLE `jdih_master_profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jdih_master_status`
--
ALTER TABLE `jdih_master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jdih_master_status_publish`
--
ALTER TABLE `jdih_master_status_publish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jdih_master_struktur`
--
ALTER TABLE `jdih_master_struktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `jdih_produk_hukum`
--
ALTER TABLE `jdih_produk_hukum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT for table `jdih_rancangan_ph`
--
ALTER TABLE `jdih_rancangan_ph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lppd_log_outcome`
--
ALTER TABLE `lppd_log_outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lppd_log_output`
--
ALTER TABLE `lppd_log_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `lppd_master_opd`
--
ALTER TABLE `lppd_master_opd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `lppd_master_status`
--
ALTER TABLE `lppd_master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lppd_master_status_riwayat`
--
ALTER TABLE `lppd_master_status_riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lppd_master_urusan`
--
ALTER TABLE `lppd_master_urusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `lppd_outcome`
--
ALTER TABLE `lppd_outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `lppd_output`
--
ALTER TABLE `lppd_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=528;
--
-- AUTO_INCREMENT for table `lppd_rumus_outcome`
--
ALTER TABLE `lppd_rumus_outcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2546;
--
-- AUTO_INCREMENT for table `lppd_rumus_output`
--
ALTER TABLE `lppd_rumus_output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2161;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_artikel`
--
ALTER TABLE `jdih_artikel`
  ADD CONSTRAINT `fk-jdihArt-idKatArt` FOREIGN KEY (`id_kategori_artikel`) REFERENCES `jdih_master_kategori_artikel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-jdihArt-idSttsPublish` FOREIGN KEY (`id_status_publish`) REFERENCES `jdih_master_status_publish` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_master_kategori`
--
ALTER TABLE `jdih_master_kategori`
  ADD CONSTRAINT `fk-jdihMk-idStatus` FOREIGN KEY (`id_status`) REFERENCES `jdih_master_status` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_master_kategori_artikel`
--
ALTER TABLE `jdih_master_kategori_artikel`
  ADD CONSTRAINT `fk-jdihMKA-idStatus` FOREIGN KEY (`id_status`) REFERENCES `jdih_master_status` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_master_struktur`
--
ALTER TABLE `jdih_master_struktur`
  ADD CONSTRAINT `fk-jdihMS-idJabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `jdih_master_jabatan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_produk_hukum`
--
ALTER TABLE `jdih_produk_hukum`
  ADD CONSTRAINT `fk-jdihPH-idKategori` FOREIGN KEY (`id_kategori`) REFERENCES `jdih_master_kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-jdihPH-idSttsPublish` FOREIGN KEY (`id_status_publish`) REFERENCES `jdih_master_status_publish` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jdih_rancangan_ph`
--
ALTER TABLE `jdih_rancangan_ph`
  ADD CONSTRAINT `fk-jdihRPH-idKategori` FOREIGN KEY (`id_kategori`) REFERENCES `jdih_master_kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-jdihRPH-idSttsPublish` FOREIGN KEY (`id_status_publish`) REFERENCES `jdih_master_status_publish` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_log_outcome`
--
ALTER TABLE `lppd_log_outcome`
  ADD CONSTRAINT `fk-lppdLOC-idMStatus` FOREIGN KEY (`id_master_status`) REFERENCES `lppd_master_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-lppdLOC-idOutcome` FOREIGN KEY (`id_outcome`) REFERENCES `lppd_outcome` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_log_output`
--
ALTER TABLE `lppd_log_output`
  ADD CONSTRAINT `fk-lppdLOP-idMStatus` FOREIGN KEY (`id_master_status`) REFERENCES `lppd_master_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-lppdLOP-idOutput` FOREIGN KEY (`id_output`) REFERENCES `lppd_output` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_master_urusan`
--
ALTER TABLE `lppd_master_urusan`
  ADD CONSTRAINT `fk-lppdMU-idMOpd` FOREIGN KEY (`id_master_opd`) REFERENCES `lppd_master_opd` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-lppdMU-idSttsRw` FOREIGN KEY (`id_status_riwayat`) REFERENCES `lppd_master_status_riwayat` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_outcome`
--
ALTER TABLE `lppd_outcome`
  ADD CONSTRAINT `fk-lppdOC-idMStatus` FOREIGN KEY (`id_master_status`) REFERENCES `lppd_master_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-lppdOC-idMUrusan` FOREIGN KEY (`id_master_urusan`) REFERENCES `lppd_master_urusan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_output`
--
ALTER TABLE `lppd_output`
  ADD CONSTRAINT `fk-lppdOP-idMStatus` FOREIGN KEY (`id_master_status`) REFERENCES `lppd_master_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-lppdOP-idOutcome` FOREIGN KEY (`id_outcome`) REFERENCES `lppd_outcome` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_rumus_outcome`
--
ALTER TABLE `lppd_rumus_outcome`
  ADD CONSTRAINT `fk-lppdROC-idOutcome` FOREIGN KEY (`id_outcome`) REFERENCES `lppd_outcome` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lppd_rumus_output`
--
ALTER TABLE `lppd_rumus_output`
  ADD CONSTRAINT `fk-lppdROP-idOutput` FOREIGN KEY (`id_output`) REFERENCES `lppd_output` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
