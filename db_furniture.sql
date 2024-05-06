-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2024 pada 05.42
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_furniture`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `nm_admin` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nm_admin`, `username`, `email`, `password`) VALUES
(1, 'administrator', 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id_detail_order` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `jml_order` int(3) NOT NULL,
  `berat` int(10) NOT NULL,
  `subberat` int(10) NOT NULL,
  `subharga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id_detail_order`, `id_order`, `id_produk`, `nm_produk`, `harga`, `jml_order`, `berat`, `subberat`, `subharga`) VALUES
(40, 80, 37, 'Windmill Sofa Tidur - Oranye', 2599000, 1, 38, 38, 2599000),
(42, 82, 41, 'Ashley Baxenburg Meja Makan', 7299000, 1, 74, 74, 7299000),
(43, 83, 46, 'Timmy Bangku - Hijau', 299000, 2, 27, 54, 598000),
(44, 83, 47, 'Heinz Kursi Makan - Merah', 899000, 3, 13, 39, 2697000),
(45, 84, 46, 'Timmy Bangku - Hijau', 299000, 1, 27, 27, 299000),
(46, 85, 37, 'Windmill Sofa Tidur - Oranye', 2599000, 2, 38, 76, 5198000),
(47, 85, 47, 'Heinz Kursi Makan - Merah', 899000, 1, 13, 13, 899000),
(48, 85, 49, 'Summer Kursi Teras Panjang', 899000, 2, 12, 24, 1798000),
(49, 86, 50, 'Manolo Organizer Sepatu - Putih', 899000, 1, 26, 26, 899000),
(50, 87, 44, 'Aaron Meja Tamu Keren', 1999000, 2, 15, 30, 3998000),
(51, 88, 36, 'Ashley Harleson Sofa 2 Dudukan - Krem', 13499000, 1, 56, 56, 13499000),
(52, 88, 42, 'Eton Rak Tv Hig Stand - Putih', 3599000, 1, 51, 51, 3599000),
(53, 89, 36, 'Ashley Harleson Sofa 2 Dudukan - Krem', 13499000, 3, 56, 168, 40497000),
(54, 90, 36, 'Ashley Harleson Sofa 2 Dudukan - Krem', 13499000, 5, 56, 280, 67495000),
(55, 91, 42, 'Eton Rak Tv Hig Stand - Putih', 3599000, 1, 51, 51, 3599000),
(56, 91, 48, 'Muggle Bangku - Cokelat Muda', 899000, 2, 6, 12, 1798000),
(57, 92, 39, 'Dixie Sofa Tidur Leaf Motif', 2499000, 1, 26, 26, 2499000),
(58, 92, 36, 'Ashley Harleson Sofa 2 Dudukan - Krem', 13499000, 1, 56, 56, 13499000),
(59, 92, 42, 'Eton Rak Tv Hig Stand - Putih', 3599000, 1, 51, 51, 3599000),
(60, 92, 44, 'Aaron Meja Tamu Keren', 1999000, 1, 15, 15, 1999000),
(61, 93, 36, 'Porsche 911 GT3 <br>', 2147483647, 1, 1435, 1435, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kat_pos`
--

CREATE TABLE `tbl_kat_pos` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kat_pos`
--

INSERT INTO `tbl_kat_pos` (`id_kategori`, `nm_kategori`) VALUES
(6, 'Dekorasi Apartemen'),
(7, 'Desain Dapur'),
(8, 'Desain Kamar Mandi'),
(9, 'Desain Kamar Tidur'),
(10, 'Desain Ruang Tamu'),
(11, 'Design Ruang Makan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kat_produk`
--

CREATE TABLE `tbl_kat_produk` (
  `id_kategori` int(10) NOT NULL,
  `nm_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kat_produk`
--

INSERT INTO `tbl_kat_produk` (`id_kategori`, `nm_kategori`) VALUES
(1, 'Sport Coupe'),
(2, 'Grand Tourer'),
(3, 'Super Cars'),
(11, 'Hyper Cars');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `nm_penerima` varchar(30) NOT NULL DEFAULT '',
  `telp` varchar(13) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `alamat_pengiriman` varchar(50) NOT NULL,
  `tgl_order` date NOT NULL,
  `ongkir` int(10) NOT NULL,
  `total_order` int(10) NOT NULL,
  `status` varchar(30) DEFAULT 'Belum Dibayar',
  `no_resi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `id_pelanggan`, `nm_penerima`, `telp`, `provinsi`, `kota`, `kode_pos`, `alamat_pengiriman`, `tgl_order`, `ongkir`, `total_order`, `status`, `no_resi`) VALUES
(80, 1, 'jjjkk', '9898989898', '18', '458', 88787, 'kklklkl', '2019-12-27', 0, 3161500, 'Menyiapkan Produk', ''),
(82, 1, 'Terbaru', '88787878787', '14', '296', 787878, 'kjkjkjkjkj', '2019-12-27', 1125000, 8424000, 'Produk Diterima', '55454dgdgdg'),
(83, 1, 'Jack Ber', '997997979', '14', '221', 87878, 'hjhjhjhjhj', '2019-12-27', 1100000, 4395000, 'Produk Dikirim', 'A65AS6AS6SA7A'),
(84, 1, 'jkj', '87878787878', '15', '215', 87878, 'hjsdsd', '2019-12-27', 950000, 1249000, 'Sudah Dibayar', NULL),
(85, 1, 'Arif', '081225789373', '10', '249', 76253, 'Jalan Suka Aku', '2019-12-30', 400000, 8295000, 'Belum Dibayar', NULL),
(86, 4, 'Bintang Reny', '082255305424', '14', '205', 74114, 'Jl.Pakanegara Gg.Ramania', '2020-01-08', 1000000, 1899000, 'Belum Dibayar', NULL),
(87, 5, 'Rizal Wijoyo', '85652385926', '5', '419', 78212, 'Jl.Turi 6. NO 153', '2020-01-08', 250000, 4248000, 'Sudah Dibayar', NULL),
(88, 1, '1222221212', '08754323332', '5', '39', 55792, '121341414', '2020-01-10', 250000, 17348000, 'Sudah Dibayar', NULL),
(89, 7, 'Wisnu Nugroho Aji', '0817779996858', '5', '501', 55223, 'Terban', '2020-01-11', 250000, 40747000, 'Belum Dibayar', NULL),
(90, 1, 'Arief Gilang', '0812266537363', '10', '196', 57474, 'Jl Suka saya', '2020-01-11', 450000, 67945000, 'Produk Diterima', 'A65AS6AS6SA7A'),
(91, 7, 'Wisnu Nugroho Aji', '087846915184', '2', '56', 12223, 'Situ', '2020-01-11', 600000, 5997000, 'Belum Dibayar', NULL),
(92, 9, 'Qoid', '08223753294', '11', '31', 61463, 'Telang Asri', '2023-06-22', 0, 0, 'Belum Dibayar', NULL),
(93, 6, 'aris damarwulan', '0812345678', '11', '31', 61463, 'Telang Asri', '2024-05-06', 0, 0, 'Belum Dibayar', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `username`, `email`, `password`) VALUES
(1, 'Arif Nur R', 'arifnur', 'arif@gmail.com', '123'),
(2, 'Arief Gilang', 'ariefgilan', 'arief@gmail.com', '123'),
(4, ' Bintang Reny', 'Bintang', 'Bintangre10@gmail.com', 'Kepo56789_'),
(5, ' Rizal Wijoyo', 'Rizal', 'Wijal16@gmail.com', 'Kambing123'),
(6, ' aris Juliyanto', 'aris', 'aris@gmail.com', '12345'),
(7, ' Wisnu', 'Ajik', 'wisnu@gmail.com', '123456'),
(8, ' Qoid', 'Qoid', 'qoid123@gmail.com', '123qoid'),
(9, ' qoid', 'qoid', 'qoid123@gmail.com', 'qoid123'),
(10, ' qoidrifat', 'qoid', 'qoid@gmail.com', 'qoid123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `nm_pembayar` varchar(30) NOT NULL,
  `nm_bank` varchar(20) NOT NULL,
  `jml_pembayaran` int(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_order`, `nm_pembayar`, `nm_bank`, `jml_pembayaran`, `tgl_bayar`, `bukti_transfer`) VALUES
(7, 80, 'Jack Berwin', 'Mandiri', 889778888, '2019-12-27', '7.jpeg'),
(8, 82, 'JAck Berwin', 'MANDIRI', 789977667, '2019-12-27', 'sky.jpg'),
(9, 83, 'JackBer', 'BCA', 2147483647, '2019-12-27', '10.jpg'),
(10, 87, 'Rizal Wijoyo', 'Bank Bersama', 4248000, '2020-01-08', 'userphoto.png'),
(11, 84, '', '', 0, '2020-01-10', '9.jpg'),
(12, 88, '1212', '1212', 17348000, '2020-01-10', '5.jpg'),
(13, 90, 'Arief Gilang', 'BRI', 67945000, '2020-01-11', '8.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `id_pos` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pos`
--

INSERT INTO `tbl_pos` (`id_pos`, `id_kategori`, `judul`, `isi`, `gambar`, `tgl`) VALUES
(16, 6, 'Ruang Tamu Apartemen Bohemian Minimalis', '<p>Penggunaan kayu sebagai material dan warna lantai dapat menjadi pilihan untuk ruang tamu apartemen bergaya bohemian minimallis. Kehadiran sofa polos berwarna abu-abu, hijau, atau coklat juga merupakan pilihan yang tepat.</p>\r\n<p>Gunakan warna putih atau warna netral untuk bagian dinding, atau gunakan wallpaper atau kain motif yang dibentangkan pada salah satu bagiannya. Aksen boho yang khas sudah bisa Anda dapatkan di ruang tamu apartemen mungil Anda.</p>\r\n<p>Hadirkan juga karpet dan sofa bantal yang memiliki motif dan pola unik serta warna yang beragam. Tanaman juga bisa ditambahkan sebagai elemen dekoratif alami yang memberikan kesan sejuk dan segar.</p>\r\n<p>sumber : https://interiordesign.id/apartemen-bohemian-minimalis/</p>', '1.jpg', '2019-12-09'),
(17, 6, 'Mengenal Gaya Bohemian', '<p>Bohemian, atau yang akrab disebut boho, adalah gaya yang mencerminkan kepribadian yang bebas, dengan penggunaan banyak pola, warna dan juga motif.</p>\r\n<p>Beragam motif dan pola pada gaya ini sengaja dikombinasikan agar tampak saling menabrak satu sama lain, acak, dan tidak beraturan.</p>\r\n<p>sumber : https://interiordesign.id/apartemen-bohemian-minimalis/</p>', '2.jpg', '2019-12-10'),
(18, 6, 'Desain Apartemen Studio Gaya Skandinavian', '<p>Skandinavian adalah jurus yang tepat mengubah tampilan rumah maupun apartemen menjadi cantik, luas, dan fungsional, dengan kenyamanan ekstra. Anda bisa menggunakan coba gaya interior ala Nordic ini untuk mendapatkan kesan simpel dan mewah sekaligus.</p>\r\n<p>Cukup hadirkan dinding dengan warna cat putih yang dominan, serta penggunaan furniture dengan model yang khas dan desain yang compact, apartemen kecil Anda bisa terlihat lebih minimalis, simpel, dan tidak kehilangan gaya. Pencahayaan juga merupakan salah satu elemen kunci dalam interior skandinavia. Pencahayaan yang sesuai mampu melahirkan kesan luas dan nyaman ke dalam ruangan kecil.</p>\r\n<p>Install pencahayaan terbaik di apartemen studio Anda. Dengan penchayaan yng tepat, apartemen studio bakalan terasa luas, bersih, dan nyaman.</p>\r\n<p>sumber : https://interiordesign.id/ide-desain-apartemen-studio/</p>', '3.jpg', '2019-12-11'),
(19, 7, 'Gaya Desain Untuk Dapur Khas Eropa ', '<p>Desain mediterania terkenal sebagai gaya desain khas Eropa. Pengaruh gaya ini bisa terlihat dan sangat tipikal digunakan sebagai pilihan gaya desain rumah-rumah di Eropa, khususnya Italia, Yunani dan Spanyol.</p>\r\n<p>Gaya interior Mediterania ini banyak memasukan unsur-unsur alam yang menjadi karakter dan ciri khasnya. Ia banyak bermain dengan pola warna. Mediterania sangat cocok untuk menampilkan ruangan yang sederhana namun mampu memperlihatkan kesan mewah.</p>\r\n<p>Tidak hanya itu, gaya mediterania juga sangat cocok untuk Negara Indonesia yang beriklim tropis. Sentuhan natural dan dominasi material kayu, mampu merefleksikan kekhasan alam khas pantai Eropa selatan. Konsep desain yang berhasil membawa kenyamanan dan cita rasa unik pada rancangan sebuah ruang.</p>\r\n<p>Selain pure-mediterania, terdapat juga konsep desain mod-mediterania. Ia adalah gaya desain interior modern-mediterania.</p>\r\n<p>Ini merupakan gaya desain eklektik yang memadukan unsur modern dengan tradisional khas Mediterania. Tampilan ruang yang kaya warna, simpel, elegan dan mengedepankan kenyamanan.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-gaya-mediterania/</p>', '4.jpg', '2019-12-12'),
(20, 7, 'Inspirasi Desain mediterania Untuk Dapur', '<p>Desain mediterania terkenal sebagai gaya desain khas Eropa. Pengaruh gaya ini bisa terlihat dan sangat tipikal digunakan sebagai pilihan gaya desain rumah-rumah di Eropa, khususnya Italia, Yunani dan Spanyol.</p>\r\n<p>Gaya interior Mediterania ini banyak memasukan unsur-unsur alam yang menjadi karakter dan ciri khasnya. Ia banyak bermain dengan pola warna. Mediterania sangat cocok untuk menampilkan ruangan yang sederhana namun mampu memperlihatkan kesan mewah.</p>\r\n<p>Tidak hanya itu, gaya mediterania juga sangat cocok untuk Negara Indonesia yang beriklim tropis. Sentuhan natural dan dominasi material kayu, mampu merefleksikan kekhasan alam khas pantai Eropa selatan. Konsep desain yang berhasil membawa kenyamanan dan cita rasa unik pada rancangan sebuah ruang.</p>\r\n<p>Selain pure-mediterania, terdapat juga konsep desain mod-mediterania. Ia adalah gaya desain interior modern-mediterania.</p>\r\n<p>Ini merupakan gaya desain eklektik yang memadukan unsur modern dengan tradisional khas Mediterania. Tampilan ruang yang kaya warna, simpel, elegan dan mengedepankan kenyamanan.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-gaya-mediterania/</p>', '5.jpg', '2019-12-13'),
(21, 7, 'Desain dapur dinding batu gaya Rustic', '<p>Kombinasi kayu dan sedikit ornamen besi menjadikan gaya desain rustic mampu menampilkan kesan hangat. Langit-langit yang terekspose memberikan ruang lapang untuk keperluan sirkulasi udara yang sangat penting saat merancang ruang dapur. Sirkulasi ini melahirkan suasana hangat dan jauh dari kesan pengap.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-dinding-batu-yang-hangat-nyaman/</p>\r\n<p>&nbsp;</p>', '6.jpg', '2019-12-14'),
(22, 7, 'Desain dapur dinding batu gaya modern', '<p>Pilihan warna netral juga cocok dikombinasikan dengan dinding batu. Kesan elegan terpancar ketika memasuki runag dapur anda. Apalagi dengan konsep lantai terbuka rumah atau apartemen kecil seperti tampak pada gambar. Benar-benar desain ruang yang sangat liveable.</p>\r\n<p>sumber : https://interiordesign.id/desain-dapur-dinding-batu-yang-hangat-nyaman/</p>', '7.jpg', '2019-12-15'),
(23, 8, 'Tata Ruang Kamar Mandi Gaya Rustic', '<p>Seperti sama-sama kita ketahui, gaya desain rustic adalah perumpamaan tata ruang yang identik dengan suasana pedesaan. Suasana natural bin alami yang di kedepankannya, ditandai dengan penggunaan material kayu yang dominan.</p>\r\n<p>Tata ruang kamar mandi gaya rustic sangat cocok digunakan jika konsep desain interior rumah Anda juga menerapkan gagasan desain ini.</p>\r\n<p>Konsep interior rustic menampilkan suasana alami dan menyenangkan.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>\r\n<p>&nbsp;</p>', '8.jpg', '2019-12-16'),
(24, 8, 'Tata Ruang Kamar Mandi Gaya Eklektik', '<p>Dalam desain interior, eklektik merupakan perpaduan dari dua atau lebih konsep interior. Gaya ini menawarkan fleksibilitas dan keluwesan dalam menerapkan berbagai gagasan dekorasi.</p>\r\n<p>Tidak terkecuali pada area kamar mandi, gaya eklektik menjamin memberikan kemudahan dan suasana yang tidak kaku pada ruangan kecil ini.</p>\r\n<p>Dengan model tata ruang seperti ini, dekorasi dan penataan kamar mandi bisa disesuaikan dengan suasana yang ingin dihadirkan. Mulai dari furniture, pemilihan warna, hingga gaya dekorasi yang menjadi selera Anda.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>', '9.jpg', '2019-12-17'),
(25, 8, 'Tata Ruang Kamar Mandi Minimalis Modern', '<p>Ini adalah tata ruang kamar mandi yang paling populer dan paling banyak digunakan saat sekarang. Gaya ini dianggap paling mewakili gaya hidup modern yang simpel, sederhana, luwes, dan serba instan.</p>\r\n<p>Desain kamar mandi seperti ini tentu menawarkan ketenangan dan layout interior yang tidak neko-neko, dengan pengutamaan pada fungsi, efektivitas, serta efisiensi, baik dekorasi secara keseluruhan maupun juga pada penggunaan furniture yang digunakan.</p>\r\n<p>sumber : https://interiordesign.id/5-model-tata-ruang-kamar-mandi-berdasarkan-konsep-desain-interior/</p>', '10.jpg', '2019-12-18'),
(26, 9, 'Room Divider Kaca Berbingkai Besi', '<p>Room divider dari kaca berbingkai besi hitam yang tampak seperti dalam gambar, bisa menjadi pilihan menarik untuk mendapatkan area kamar tidur dengan privasi yang cukup terjaga.</p>\r\n<p>Selain sanggup mengurangi kebisingan yang dibutuhkan untuk kenyamanan saat Anda tidur, model pemisah ruangan dari kaca berbingkai besi ini juga menampilkan visualisasi interior gaya industrial yang cukup unik.</p>\r\n<p>sumber : https://interiordesign.id/5-desain-cara-kreatif-bagaimana-memisahkan-area-kamar-tidur-dengan-area-lain-pada-ruangan-open-space/</p>', '11.jpg', '2019-12-20'),
(27, 9, 'Room Divider dari Tirai atau Gorden', '<p>Memberikan batasan area tidur menggunakan tirai atau gorden mungkin tidak membuat ruang menjadi kedap suara. Namun, konsep pembatas dengan menggunakan tirai atau gorden ini, merupakan alternatif paling mudah, murah, serta cukup praktis.</p>\r\n<p>sumber : https://interiordesign.id/5-desain-cara-kreatif-bagaimana-memisahkan-area-kamar-tidur-dengan-area-lain-pada-ruangan-open-space/</p>', '12.jpg', '2019-12-21'),
(28, 9, 'Inspirasi Kamar Tidur Dengan Cat Berwarna Cokelat', '<p>Warna klasik ini tidak saja mampu melahirkan kesan sederhana dan nyaman, tetapi juga romantis.</p>\r\n<p>Warna coklat yang hangat sangat cocok untuk menampilkan suasana yang romantis. Dan jika anda menginginkan tampilan kamar terasa lebih dramatis, warna dark brown atau cokelat tua bisa jadi pilihan.</p>\r\n<p>Namun, karena karakternya yang gelap, ketimbang mewarnai seluruh bagian dinding kamar dengan cokelat tua, sebaiknya gunakan warna ini hanya sebagai aksen saja. Sementara untuk warna utamanya, anda bisa mencoba warna putih atau abu-abu, atau warna-warna netral lainnya.</p>\r\n<p>sumber : https://interiordesign.id/ide-warna-cat-kamar-tidur-romantis/</p>', '13.jpg', '2019-12-22'),
(29, 9, 'Desain Kamar Tidur Artistik', '<p>Bagi para pecinta seni, menunjukkan kepribadian dalam kamar tidur adalah bagian dari kreativitas. Penampilan kamar tidur yang unik dan nyeni adalah pilihan yang tepat. Desain kamar tidur dengan berbagai perabotan dan aksesori &ldquo;do-it-Yourself&rdquo; membuktikan hal tersebut. Memanfaatkan barang tidak terpakai, gunakan kembali dan jadikan sesuatu yang pantas digunakan di kamar tidur Anda.</p>\r\n<p>sumber : https://interiordesign.id/tip-desain-kamar-tidur/</p>', '14.jpg', '2019-12-23'),
(30, 9, 'Desain Kamar Tidur Feminin', '<p>Feminin tidak selalu didominasi oleh aneka deretan barang dan dekorasi berwarna merah muda. Terutama bagi Anda yang tidak terlalu menyukai warna merah muda, Anda bisa mengkreasikan kamar feminin dengan sentuhan yang sedikit berbeda.</p>\r\n<p>Nuansa feminin tetap dapat ditampilkan dengan memadukan furnitur minimalis kayu, sprei berwarna putih, sarung bantal berwarna coklat yang juga mampu mewakili kesan feminin</p>\r\n<p>sumber : https://interiordesign.id/tip-desain-kamar-tidur/</p>', '15.jpg', '2019-12-24'),
(31, 10, 'Desain Ruang yang Mewah dan Elegan', '<p>Apa yang membuat ruang tamu gaya Mediterania terlihat begitu mewah dan elegan? Tetapi sekaligus memiliki penampilan yang sangat berbeda dengan desain klasik?</p>\r\n<p>Gaya Mediterania mungkin bukan desain yang murah dan terjangkau. Unsur desain dan elemen dekoratif ruang yang digunakan merupakan campuran elemen-elemen vintage dengan material kualitas tinggi yang cukup mahal.</p>\r\n<p>Gaya desain ini memanfaatkan penggunaan kayu berkualitas tinggi dan menggabungkannya dengan banyak furniture dan dekorasi, serta dinding yang selaras dalam skema warna. Ia melahirkan penampilan ruang yang terlihat sangat berkelas.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-tamu-gaya-mediterania/</p>', '16.jpg', '2019-12-26'),
(32, 10, 'Ruang Tamu Lesehan ala Jepang Tradisional', '<p>Jika Anda sangat menginginkan gaya Jepang yang dominan dan kentara, konsep Jepang tradisional bisa jadi pilihan.</p>\r\n<p>Namun, meski tradisional, ia tetap bisa selaras dan terlihat kontemporer dengan pemilihan dan penggunaan elemen desain yang sesuai dan seimbang.</p>\r\n<p>sumber : https://interiordesign.id/ruang-tamu-lesehan-ala-jepang/</p>', '17.jpg', '2019-12-27'),
(33, 10, 'Desain Ruang Tamu Gaya Varsity Park', '<p>Desain ruang tamu yang terletak di pojok ruangan adalah contoh sempurna bagaimana implementasi gagasan untuk sebuah ruang yang memiliki ukuran kecil. Memadukan warna menjadi sesuatu yang sangat signifikan daam mengubah suasana ruang tamu seperti ini. Ungu, krem, dan putih mampu menciptakan suasana yang nyaman, atau anda bisa tentukan sendiri paduan warna yang menjadi kegemaran anda.</p>\r\n<p>sumber : https://interiordesign.id/7-desain-ruang-tamu-yang-akan-membuat-para-tamu-anda-enggan-pulang/</p>', '18.jpg', '2019-12-28'),
(34, 11, 'Konsep Desain Informal Untuk Ruang Makan', '<p>Ketika orang-orang lebih menyukai kenyamanan dibanding formalitas, desain ruang makan terbuka menjadi pilihan paling logis. Ruang makan tanpa sekat dan menyatu dengan ruangan lainnya ini dianggap sebagai sebuah gagasan desain yang jauh dari suasana kaku dan formal.</p>\r\n<p>Ruang makan formal yang menawarkan kehangatan dan keseriusan saat aktivitas makan bersama, memang sudah tidak mungkin didapatkan dengan mudah. Meski menawarkan suasana ruang yang ekslusif, menikmati sajian tanpa distraksi apapun, klaim besar sebagai sumber kebahagiaan yang bisa meningkatkan family bonding, konsep desain ruang makan yang terpisah merupakan investasi yang sangat mahal.</p>\r\n<p>Saatnya mengubah mindset dan bahkan kultur. Di saat semua orang lebih menginginkan suasana santai, informal, dan lebih mementingkan kenyamanan, ruang makan terbuka yang dirancang dengan kesederhanaan dan jauh dari kesan ekslusif, merupakan pilihan tepat.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-makan-terbuka/</p>\r\n<p>&nbsp;</p>', '19.jpg', '2019-12-29'),
(35, 11, 'Ruang Makan Kecil Gaya Eklektik', '<p>Untuk mencapai tampilan atau visualisasi gaya bohemian dengan mudah dan efisien, cobalah gunakan kursi dengan berbagai varian warna, bahan, bentuk dan juga model. Kombinasi tersebut akan mendatangkan sesuatu yang terlihat sangat unik dan anti mainstream.</p>\r\n<p>Penggunaan kursi kayu tua juga dapat menjadi alternatif yang baik. Pemakaian warna-warna yang cenderung terang alias ngejreng, seperti warna kuning, merah, biru, pink atau hijau, adalah ciri lain interior bohemian.</p>\r\n<p>Gaya interior bohemian memperbolehkan kombinasi. Hal ini bertujuan untuk menampilkan kesan dan cita rasa eklektik pada interior ruangan. Selain itu, gaya desain interior ini juga memiliki kecenderungan membawa warna dalam dosis dan kadar yang beragam. Gaya eklektik yang memungkinkan penerapan beragam elemen desain yang bisa memperlihatkan penampilan yang ruang tampak semakin unik serta berbeda.</p>\r\n<p>sumber : https://interiordesign.id/desain-ruang-makan-kecil-gaya-bohemian/</p>\r\n<p>&nbsp;</p>', '20.jpg', '2019-12-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `berat` int(10) NOT NULL,
  `harga` text NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `id_kategori`, `nm_produk`, `berat`, `harga`, `stok`, `gambar`, `deskripsi`) VALUES
(36, 1, 'Porsche 911 GT3 <br>', 1435, '4000000000', 2, '1.jpg', '<ul>\r\n<li style=\"text-align: left;\">Mesin: Boxer enam silinder naturally aspirated 4.0 liter</li>\r\n<li style=\"text-align: left;\">Tenaga: 502 hp</li>\r\n<li style=\"text-align: left;\">Torsi: 465 Nm</li>\r\n<li style=\"text-align: left;\">Transmisi: PDK 7-percepatan</li>\r\n<li style=\"text-align: left;\">Akselerasi 0-100 km/jam: 3,4 detik</li>\r\n<li style=\"text-align: left;\">Kecepatan maksimum: 318 km/jam</li>\r\n<li style=\"text-align: left;\">Kapasitas tangki bahan bakar: 64 liter</li>\r\n</ul>\r\n<h6>Mesin dan Performa</h6>\r\n<p>Hati dari 911 GT3 adalah mesin boxer enam silinder naturally aspirated berkapasitas 4.0 liter yang menghasilkan tenaga 502 hp dan torsi 465 Nm. Tenaga ini dikawinkan dengan transmisi PDK 7-percepatan yang responsif, memungkinkan akselerasi 0-100 km/jam dalam waktu 3,4 detik dan kecepatan maksimum 318 km/jam.</p>\r\n<h6>Desain Aerodinamis</h6>\r\n<p>Desain eksterior 911 GT3 fokus pada aerodinamis untuk meningkatkan performa dan stabilitas. Dilengkapi dengan splitter depan yang agresif, sayap belakang yang dapat disesuaikan, dan diffuser belakang yang besar, GT3 mampu menghasilkan downforce yang signifikan untuk mencengkeram jalan dengan optimal saat menikung di kecepatan tinggi.</p>\r\n<h6>Interior Berfokus pada Pengendara</h6>\r\n<p>Interior 911 GT3 dirancang untuk memberikan pengalaman berkendara yang fokus pada pengendara. Kursi bucket yang ringan dan suportif, setir sport yang presisi, dan panel instrumen yang intuitif semuanya dirancang untuk membantu pengemudi memaksimalkan performa mobil.</p>'),
(37, 1, 'McLaren 765LT <br>', 1330, '5000000000', 2, '2.jpg', '<ul>\r\n<li>Mesin: V8 twin-turbocharged 4.0 liter</li>\r\n<li>Tenaga: 765 hp</li>\r\n<li>Torsi: 800 Nm</li>\r\n<li>Transmisi: 7-speed Seamless Shift Gearbox (SSG)</li>\r\n<li>Akselerasi 0-100 km/jam: 2,8 detik</li>\r\n<li>Kecepatan maksimum: 330 km/jam</li>\r\n<li>Kapasitas tangki bahan bakar: 75 liter</li>\r\n</ul>\r\n<h6>Mesin dan Performa</h6>\r\n<p>Hati dari 765LT adalah mesin V8 twin-turbocharged 4.0 liter yang menghasilkan tenaga 765 hp dan torsi 800 Nm. Tenaga ini dikawinkan dengan transmisi 7-speed Seamless Shift Gearbox (SSG) yang responsif, memungkinkan akselerasi 0-100 km/jam dalam waktu 2,8 detik dan kecepatan maksimum 330 km/jam.</p>\r\n<h6>Desain Aerodinamis</h6>\r\n<p>Desain eksterior 765LT fokus pada aerodinamis untuk meningkatkan performa dan downforce. Dilengkapi dengan splitter depan yang agresif, sayap belakang yang dapat disesuaikan, diffuser belakang yang besar, dan side skirts yang panjang, 765LT mampu menghasilkan downforce 40% lebih banyak dibandingkan 720S.</p>\r\n<h6>Interior Berfokus pada Pengendara</h6>\r\n<p>Interior 765LT dirancang untuk memberikan pengalaman berkendara yang fokus pada pengendara. Kursi bucket yang ringan dan suportif, setir sport yang presisi, dan panel instrumen yang intuitif semuanya dirancang untuk membantu pengemudi memaksimalkan performa mobil.</p>'),
(39, 11, 'Bugatti Chiron <br>', 1964, '100000000000', 3, '4.jpg', '<ul>\r\n<li>Mesin: W16 8.0 liter quad-turbocharged</li>\r\n<li>Tenaga: 1.500 hp</li>\r\n<li>Torsi: 1.600 Nm</li>\r\n<li>Finishing : metal</li>\r\n<li>Transmisi: Otomatis 7-percepatan</li>\r\n<li>Penggerak: 4 roda (AWD)</li>\r\n<li>Kecepatan tertinggi: 420 km/jam (dengan opsi Chiron Super Sport 300+)</li>\r\n<li>Akselerasi 0-100 km/jam: 2,4 detik</li>\r\n<li>Emisi CO2: 458 g/km</li>\r\n<li>Konsumsi bahan bakar: 23,1 l/100 km</li>\r\n</ul>\r\n<p>Bugatti Chiron adalah hypercar berperforma tinggi yang diproduksi oleh Bugatti Automobiles S.A.S. Mobil ini diluncurkan pada tahun 2016 dan merupakan penerus dari Bugatti Veyron.\r\nChiron memiliki desain yang agresif dan aerodinamis, dengan bodi serat karbon yang ringan dan spoiler belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>'),
(40, 2, 'Aston Martin DB11 <br>', 1770, '7700000000', 18, '5.jpg', '<ul>\r\n<li>Mesin: V8 twin-turbocharged 4.0 liter</li>\r\n<li>Tenaga: 510 hp</li>\r\n<li>Torsi: 690 Nm</li>\r\n<li>Transmisi: 8-percepatan otomatis</li>\r\n<li>Akselerasi 0-100 km/jam: 4,0 detikm</li>\r\n<li>Kecepatan Maksimum: 308 km/jam</li>\r\n</ul>\r\n<h6>Desain</h6>\r\n<p>Aston Martin DB11 adalah mobil sport mewah dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis yang tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan kayu.</p>\r\n<h6>Performa</h6>\r\n<p>DB11 dibekali dengan mesin V8 twin-turbocharged berkapasitas 4.0 liter yang menghasilkan tenaga 510 hp dan torsi 690 Nm. Mesin ini dikawinkan dengan transmisi otomatis 8-percepatan yang responsif.</p>\r\n'),
(41, 2, 'Aston Martin Vanquish', 1870, '12000000000', 2, '6.jpg', '<ul>\r\n<li>Mesin: V12 twin-turbocharged 5.9 liter</li>\r\n<li>Tenaga: 625 hp</li>\r\n<li>Torsi: 730 Nm</li>\r\n<li>Transmisi: 8-percepatan otomatis</li>\r\n<li>Akselerasi 0-100 km/jam: 3,5 detik</li>\r\n<li>Kecepatan Maksimum: 324 km/jam</li>\r\n</ul>\r\n<h6>Desain</h6>\r\n<p>Aston Martin Vanquish adalah mobil sport mewah Grand Tourer dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis yang tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan kayu.</p>\r\n<h6>Mesin</h6>\r\n<p>Vanquish ditenagai oleh mesin V12 twin-turbocharged berkapasitas 5.9 liter yang menghasilkan tenaga 625 hp dan torsi 730 Nm. Mesin ini dikawinkan dengan transmisi otomatis 8-percepatan yang responsif.</p>\r\n<h6>Performa</h6>\r\n<p>Vanquish mampu berakselerasi dari 0-100 km/jam dalam waktu 3,5 detik dan mencapai kecepatan maksimum 324 km/jam. Mobil ini juga memiliki handling yang luar biasa dan stabilitas yang tinggi.</p>'),
(42, 2, 'Ferrari 812 Superfast <br>', 1630, '14900000000', 1, '7.jpg', '<ul>\r\n<li>Mesin: V12 naturally-aspirated 6.5 liter</li>\r\n<li>Tenaga: 800 hp</li>\r\n<li>Torsi: 718 Nm</li>\r\n<li>Transmisi: 7-percepatan otomatis</li>\r\n<li>Akselerasi 0-100 km/jam: 2,9 detik</li>\r\n<li>Kecepatan Maksimum: 350 km/jam</li>\r\n<li>Rem karbon keramik</li>\r\n<li>Sistem infotainment dengan layar sentuh 10,25 inci</li>\r\n</ul>\r\n<h6>Desain</h6>\r\n<p>Ferrari 812 Superfast adalah mobil sport mewah Grand Tourer dengan desain yang elegan dan agresif. Desain eksteriornya ramping dan berotot, dengan garis-garis tajam dan lampu depan LED yang ramping. Interiornya mewah dan nyaman, dengan bahan-bahan berkualitas tinggi seperti kulit dan Alcantara.</p>\r\n<h6>Mesin</h6>\r\n<p>812 Superfast ditenagai oleh mesin V12 naturally-aspirated berkapasitas 6.5 liter yang menghasilkan tenaga 800 hp dan torsi 718 Nm. Mesin ini dikawinkan dengan transmisi otomatis 7-percepatan yang responsif.</p>\r\n<h6>Performa</h6>\r\n<p>812 Superfast mampu berakselerasi dari 0-100 km/jam dalam waktu 2,9 detik dan mencapai kecepatan maksimum 350 km/jam. Mobil ini juga memiliki handling yang luar biasa dan stabilitas yang tinggi.</p>'),
(43, 2, 'Mercedes-Benz AMG GT R', 1700, '10400000000', 11, '8.jpg', '<ul>\r\n<li>Mesin: 4.0L M178 Twin-Turbocharged V8</li>\r\n<li>Kapasitas Mesin: 3982 cc</li>\r\n<li>Tenaga: 585 hp</li>\r\n<li>Torsi: 700 Nm</li>\r\n<li>Transmisi: 7-percepatan otomatis</li>\r\n<li>Akselerasi 0-100 km/jam dalam 3,6 detik</li>\r\n<li>Kecepatan Maksimum: 318 km/jam</li>\r\n<li>Transmisi otomatis kopling ganda 7-percepatan AMG SPEEDSHIFT DCT</li>\r\n<li>Sistem infotainment dengan layar sentuh 10,25 inci</li>\r\n</ul>\r\n<h6>Performa Gahar</h6>\r\n<p>Dibekali mesin V8 4.0L biturbo bertenaga 585 hp dan torsi 700 Nm, memberikan akselerasi yang luar biasa dari 0-100 km/jam dalam 3,6 detik dan kecepatan puncak hingga 318 km/jam.\r\nDengan penggerak roda belakang dan transmisi otomatis kopling ganda 7 percepatan, handling mantap dan pengendalian presisi di tikungan. Tampilan eksterior yang sporty dan aerodinamis, lengkap dengan bumper agresif, sayap besar, dan lekukan tegas, menonjolkan aura balapnya.</p>\r\n<h6>Interior Mewah</h6>\r\n<p>Meski berfokus pada performa, interior AMG GT R tetap mewah dan nyaman dengan jok sport berbalut kulit, layar sentuh infotainment yang canggih, dan sistem suara premium. Fitur-fitur seperti instrument cluster digital dan berbagai sistem bantuan pengemudi membuat pengalaman berkendara semakin nyaman dan aman.</p>\r\n'),
(44, 2, 'Bentley Continental <br>', 2550, '7000000000', 14, '9.jpg', '<ul>\r\n<li>Mesin: V6 3.0L Twin-Turbocharged / V8 4.0L Twin-Turbocharged / W12 6.0L Twin-Turbocharged</li>\r\n<li>Tenaga: 650 hp</li>\r\n<li>Torsi: 900 Nm</li>\r\n<li>Akselerasi (0-100 km/h): 4.0 - 4.8 detik</li>\r\n<li>Transmisi: 8-Speed Automatic</li>\r\n<li>Kecepatan Tertinggi: 305 km/h - 333 km/h</li>\r\n<li>Kapasitas Tangki: 83 L</li>\r\n</ul>\r\n<p>Bentley Continental Flying Spur adalah sedan mewah yang memadukan kemewahan, performa, dan kenyamanan dengan sempurna. Desain eksteriornya yang elegan dan interiornya yang lapang dan berkelas menjadikannya pilihan ideal bagi mereka yang menginginkan yang terbaik dalam hal mobil.</p>'),
(45, 1, 'Audi TT RS <br>', 1765, '1825000000', 24, '10.jpg', '<ul>\r\n<li>Mesin: Inline 4-silinder</li>\r\n<li>Tenaga: 6335 hp</li>\r\n<li>Torsi: 450 Nm</li>\r\n<li>Akselerasi (0-100 km/h): 4.5 detik</li>\r\n<li>Transmisi: 6-Speed Automatic</li>\r\n<li>Kecepatan Maksimum: 250 km/h</li>\r\n<li>Kapasitas Tangki: 55 L</li>\r\n<li>Kapasitas Mesin: 1984 cc</li>\r\n1984 cc\r\n</ul>\r\n<h6>Desain</h6>\r\n<p>Audi TT Coupe adalah mobil sport coupe dua pintu yang memadukan desain menawan, teknologi canggih, dan performa memukau. Diperkenalkan pada tahun 1998, TT Coupe telah menjadi ikon desain otomotif modern dan digemari oleh para pecinta mobil sport di seluruh dunia.</p>\r\n<h6>Mesin dan Performa</h6>\r\n<p>Audi TT Coupe tersedia dengan berbagai pilihan mesin, mulai dari mesin bensin 1.8 liter TFSI yang menghasilkan tenaga 180 hp hingga mesin bensin 2.5 liter TFSI quattro yang menghasilkan tenaga 400 hp. Semua mesin dipadukan dengan transmisi otomatis S tronic yang responsif dan sistem penggerak empat roda quattro yang memberikan handling yang stabil dan performa yang optimal di segala kondisi jalan.</p>'),
(46, 1, 'Lamborghini Aventador S', 1625, '7650000000', 13, '11.jpg', '<ul>\r\n<li>Mesin: V12 naturally-aspirated 6.5 liter</li>\r\n<li>Tenaga: 740 hp</li>\r\n<li>Torsi: 690 Nm</li>\r\n<li>Akselerasi (0-100 km/h): 2.9 detik</li>\r\n<li>Transmisi: 7-Speed ISR single-clutch automated</li>\r\n<li>Kecepatan Tertinggi: 350 km/h</li>\r\n</ul>\r\n<h6>Performa Gahar</h6>\r\n<p>Jantung Aventador S adalah mesin V12 naturally-aspirated 6.5 liter yang menghasilkan tenaga 740 hp dan torsi 690 Nm. Akselerasi 0-100 km/jam dapat dicapai dalam 2,9 detik yang luar biasa, dengan kecepatan maksimum mencapai 350 km/jam.\r\nPenggerak roda belakang (RWD) dan transmisi otomatis 7-percepatan ISR-G memberikan handling yang tajam dan pengendalian yang responsif.\r\nTampilan eksteriornya sangat aerodinamis dan futuristik, dengan tarikan garis tegas, bumper agresif, dan wing besar yang menonjolkan aura supercar yang gahar.</p>\r\n<h6>Interior Mewah</h6>\r\n<p>Meskipun berfokus pada performa, interior Aventador S tetap mewah dan nyaman. Jok sport berbalut kulit berkualitas tinggi, panel instrumen digital yang canggih, dan sistem hiburan premium memberikan pengalaman berkendara yang istimewa. Fitur-fitur canggih seperti sistem navigasi, konektivitas smartphone, dan berbagai sistem bantuan pengemudi membuat berkendara semakin nyaman dan aman.</p>'),
(47, 1, 'BMW M4 Competition xDrive', 13, '2608000000', 13, '12.jpg', '<ul>\r\n<li>Mesin: 6-silinder segaris twin-turbocharged 3.0L</li>\r\n<li>Tenaga: 431 hp</li>\r\n<li>Torsi: 550 Nm</li>\r\n<li>Akselerasi (0-100 km/h): 3.9 detik</li>\r\n<li>Transmisi: 8-speed M Steptronic dengan paddle shifter</li>\r\n<li>Kecepatan Tertinggi: 250 km/h</li>\r\n<li>Kapasitas Mesin: 2998 cc</li>\r\n</ul>\r\n<p>Menggabungkan estetika sporty dengan sentuhan keanggunan. Grille depan khas BMW, lampu depan LED adaptif, dan bumper depan agresif memberikan tampilan yang sporty dan agresif. Di bagian belakang, lampu belakang LED dan diffuser belakang sporty memberikan sentuhan akhir yang menawan. BMW M4 Competition xDrive Coupe adalah mobil sport coupe berperforma tinggi yang menawarkan kombinasi sempurna antara tenaga, handling, dan kemewahan. Dengan mesin yang bertenaga, penggerak all-wheel drive, dan berbagai fitur canggih, M4 Competition siap memberikan pengalaman berkendara yang tak terlupakan.</p>'),
(48, 11, 'McLaren Senna <br>', 1198, '37500000000', 2, '13.jpg', '<ul>\r\n<li>Mesin: V8 4.0 liter twin-turbocharged</li>\r\n<li>Tenaga: 800 hp</li>\r\n<li>Torsi: 800 Nm</li>\r\n<li>Akselerasi (0-100 km/h): 2.8 detik</li>\r\n<li>Transmisi: 7-Speed Automatic</li>\r\n<li>Kecepatan Tertinggi: 335 km/h</li>\r\n<li>Konsumsi bahan bakar: 12,2 l/100 km</li>\r\n</ul>\r\n<p>McLaren Senna adalah supercar berperforma tinggi yang diproduksi oleh McLaren Automotive. Mobil ini diluncurkan pada tahun 2018 dan merupakan model track-focused yang terinspirasi dari McLaren Senna GTR, mobil balap McLaren F1 yang ikonik.\r\nSenna memiliki desain yang agresif dan aerodinamis, dengan bodi serat karbon yang ringan dan sayap belakang yang besar. Mobil ini juga dilengkapi dengan berbagai fitur teknologi canggih, termasuk sistem suspensi adaptif, pengereman karbon-keramik, dan sistem kontrol traksi elektronik.</p>'),
(49, 3, 'Summer Kursi Teras Panjang', 12, '899000', 15, '14.jpg', '<ul>\r\n<li>Dimensi produk : 110 x 59.5 x 93.5 cm</li>\r\n<li>Material : metal</li>\r\n<li>Finishing : powder coating</li>\r\n</ul>\r\n<p>Buat suasana teras semakin nyaman dengan Summer Bangku Teras. Dengan adanya bangku ini, bersantai sambil bercengkrama bersama keluarga di halaman rumah akan semakin menyenangkan. Bangku ini hadir dengan desain klasik yang cantik, terbuat dari metal berkualitas berlapis powder coating yang tahan karat. Segera dapatkan produk ini dengan berbagai penawaran menarik dari Ruparupa.</p>'),
(50, 3, 'Manolo Organizer Sepatu - Putih', 26, '899000', 14, '15.jpg', '<ul>\r\n<li>Desain modern</li>\r\n<li>Menyimpan hingga 18 pasang sepatu</li>\r\n<li>Dilengkapi bracket</li>\r\n<li>Material : particle board</li>\r\n<li>Finishing : PVC</li>\r\n<li>Dimensi produk : 73 x 23 x 118 cm</li>\r\n</ul>\r\n<p>Simpan koleksi sepatu kesayangan agar tidak berantakan di Manolo Kabinet Sepatu. Kabinet bergaya modern ini menyediakan rak untuk menyimpan hingga 18 pasang sepatu agar rapi dan tidak terkena debu. Cocok ditempatkan di sudut ruangan atau dekat pintu masuk.</p>'),
(54, 3, 'we', 22, '23', 2, 'test_megamendung_10.jpg', '<p>Motif batik megamendung merupakan motif batik dengan pola awan yang berasal dari Cirebon. Kepopuleran batik megamendung juga mengangkat kota Cirebon salah satu sentra batik di Jawa Barat. Dibalik motif awan ternyata batik megamendung mengandung filosofi yang mendalam di setiap motifnya.</p>\r\n<p>Sejarah munculnya motif batik megamendung di Cirebon berawal dari kedatangan bangsa China. Kedatangan bangsa China ini membuat wawasan warga pribumi semakin bertambah berbagai seni kesenian dari China kemudian ditularkan seperti pembuatan keramik, piring dan pembuatan motif kain.</p>\r\n<p style=\"font-weight: 400;\">Pada budaya China motif awan memiliki makna yang melambangkan nirwana sebagai dunia yang luas, abadi, bebas dan bermakna transidental konsep ketuhanan. Awan juga direpresentasikan oleh kaum sufi sebagai ungkapan yang sama yaitu konsep luas dan bebas.</p>\r\n<p style=\"font-weight: 400;\">Ditangan para pengrajin batik Cirebon, mereka membuat motif batik awan tersebut dalam wujud kain batik dan sekarang motif tersebut dikenal sebagi motif batik megamendung. Meskipun inspirasi motif ini berasal dari China, batik megamendung dengan kain motif awan khas China terdapat sedikit perbedaan.&nbsp; Jika kain motif awan China memiliki garis awan berbentuk bulatan atau lingkaran, berbeda dengan batik mega mendung cirebon, yang motif awan berupa garis awan yang cenderung lancip, lonjong, dan segitiga.</p>\r\n<p style=\"font-weight: 400;\">Motif batik megamendung menggambarkan format sekumpulan awan di langit. Konon menurut keterangan dari sejarah Cirebon, motif ini terbentuk saat seseorang melihat format awan pada genangan air sesudah hujan dan cuaca saat tersebut sedang mendung. Sehingga seseorang tersebut menuangkan idenya guna menggambar awan yang sudah di lihat melewati genangan air itu dengan format awan yang bergelombang.</p>\r\n<p style=\"font-weight: 400;\">Oleh karena itu, terbentuklah motif Mega Mendung (Mega= Awan, Mendung=cuaca yang sejuk/adem) dengan warna dasar merah dan awan yang berwarna biru dengan tujuh gradasi warna sebagai warna orisinilnya yang familiar dari Cirebon.</p>\r\n<p style=\"font-weight: 400;\">Arti dan filosofi motif Mega Mendung merupakan awan yang muncul saat cuaca sedang mendung. Di samping arti, motif Mega Mendung pun mempunyai makna atau filosofi bahwa setiap insan harus dapat meredam amarah/emosinya dalam kondisi dan situasi apapun, dengan kata lain, hati insan diharapkan dapat tetap &lsquo;adem&rsquo; meskipun dalam suasana marah, laksana halnya awan yang hadir saat cuaca mendung yang bisa menyejukkan keadaan di sekitarnya.</p>\r\n<p style=\"font-weight: 400;\">Kemudian arti dari warna batik Mega Mendung ini merupakan emblem dari seorang pemimpin dan awan biru sebagai sifat seorang pemimpin yang mesti dapat mengayomi semua masyarakat yang dipimpinnya. Beralih untuk gradasi warna yang sedang di ornamen awannya, gradasi pribumi dari batik Mega Mendung ini ialah tujuh gradasi yang maknanya dipungut dari lapisan langit yang mempunyai 7 lapis, begitupun bumi yang tersusun atas 7 lapisan tanah, dan jumlah hari dalam seminggu&nbsp; sejumlah 7&nbsp; hari. Batik motif Mega Mendung memang nampak sederhana, akan namun motif ini dalam bakal makna/ filosofi yang dimilikinya.</p>\r\n<p style=\"font-weight: 400;\">Sebagai ekstra informasi supaya tidak salah kaprah dengan arti gradasi warna, bahwa kini gradasi warna batik Mega Mendung sudah disesuaikan dengan keperluan pasar. Sehingga, gradasinya bisa dikurangi atau diminimalkan menjadi 3-5 gradasi cocok pesanan. Bahkan telah ada pun batik Mega Mendung yang sengaja tidak diberi gradasi warna pada motif awannya sebab tuntutan yang diperlukan oleh pasar.</p>\r\n<p style=\"font-weight: 400;\">Batik megamendung kini sudah menjadi salah satu motif batik paling populer di tanah air maupun mancanegara. Keelokan batik motif megamendung juga sudah mengangkat Cirebon sebagai centra batik di pesisir utara pulau jawa yang tak kalah dengan batik Jogja, Solo maupun Pekalongan.&nbsp;</p>\r\n<p style=\"font-weight: 400;\"><strong>sumber</strong> :&nbsp;<em>https://www.motifbatik.web.id/2019/01/filosofi-motif-batik-megamendung-dan.html</em></p>');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id_detail_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_order2` (`id_order`);

--
-- Indeks untuk tabel `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`id_pos`),
  ADD KEY `id_kat_pos` (`id_kategori`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id_detail_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `tbl_kat_pos`
--
ALTER TABLE `tbl_kat_pos`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_kat_produk`
--
ALTER TABLE `tbl_kat_produk`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `id_pos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `id_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_produk` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD CONSTRAINT `id_order2` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id_order`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD CONSTRAINT `id_kat_pos` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_pos` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kat_produk` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
