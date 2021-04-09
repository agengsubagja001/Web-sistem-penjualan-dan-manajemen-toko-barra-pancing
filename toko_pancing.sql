-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2020 pada 17.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_pancing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Pancing', 'Pancing dengan kualitas kuat', 'Joran Pancing', 100000, 4, 'Pancing.jpg'),
(3, 'Kail Pancing', 'Kail Pancing Berbentuk ikan kecil', 'Kail Pancing', 8000, 19, 'kail.jpg'),
(4, 'Senar Pancing', 'Senar Pancing PE', 'Senar Pancing', 110000, 20, 'senar.jpg'),
(5, 'Pakan Ikan', 'Pakan Ikan Hias 250gr', 'Pakan Ikan', 15000, 14, 'pakan.WEBP'),
(6, 'Aerator/pompa air', 'Aerator Aquarium', 'Aksesoris', 35000, 8, 'aeratorr.jfif'),
(8, 'Jaring Ikan', 'Jaring Ikan Hias', 'Jaring', 15000, 10, 'jaring1.jpg'),
(10, 'Sikat Aquarium', 'Untuk menghilangkan alga atau lumut di kaca', 'Aksesoris', 38000, 8, 'sikat.jpg'),
(11, 'Lampu Aquarium', 'Lampu TL aquarium 9watt 500mm cahaya putih.', 'Aksesoris', 55000, 14, 'lampu.jpg'),
(12, 'Maguro SE MCS2-165M Carnivore Spinning', 'Seri terbaru Maguro Carnivore SE khusus Galatama. Joran ini dibalut dengan blank yang kuat, ditambah dengan Full Set Fuji Alconite,', 'Joran Pancing', 1207000, 6, 'joran.jpg'),
(13, 'TM0156 Shank Gun Carbon Fiber 2 Segments', 'Merupakan joran pancing yang terbuat dari carbon fiber yang kuat', 'Joran Pancing', 129000, 19, 'joran2.jpg'),
(14, 'Senar Tali Pancing Multifilament', 'Panjang 500 meter', 'Senar Pancing', 39900, 25, 'senar2.jpg'),
(15, 'Senar Sougayilang', 'Panjang 100 meter', 'Senar Pancing', 79000, 7, 'senar3.jpg'),
(16, 'Pakan Ikan Titanium', 'Pakan Ikan Titanium adalah pakan ikan terapung yang diformulasikan khusus untuk ikan nila pada tahap pembesaran. Berat 30kg', 'Pakan Ikan', 450000, 35, 'pakan2.png'),
(17, 'Pellet Ikan Sakura', 'Pakan ikan khusus ikan koki', 'Pakan Ikan', 3500, 48, 'pakan3.jpg'),
(18, 'Jaring Ikan Kecil', 'Pegangan jaring terbuat dari stainless steel, tahan lama dan stabil', 'Jaring', 39000, 16, 'jaring2.jpg'),
(19, 'Jaring Ikan Kantong', 'Biasa dipakai untuk tempat hasil tangkapan atau hasil mancing agar mudah dibawa dan tidak membusuk dibiarkan', 'Jaring', 25000, 21, 'jaring3.jpg'),
(20, 'Kail Pancing Tungsten Alloy', '1 pak isi 10Pcs', 'Kail Pancing', 17500, 33, 'kail2.jpg'),
(21, 'Jangkar Mata Pancing Tiga Sisi', 'Digunakan untuk tangkapan ikan laut. Isi 20Pcs', 'Kail Pancing', 122500, 16, 'kail3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Pramadito Rahmatullah', 'Jl. Bimabasuki Indramayu', '2020-11-05 15:04:09', '2020-06-11 15:04:09'),
(2, 'Faisal Adi', 'Paoman Indramayu', '2020-11-05 15:10:26', '2020-06-11 15:10:26'),
(3, '', '', '2020-11-29 18:11:15', '2022-06-11 18:11:15'),
(4, '', '', '2020-11-29 18:11:58', '2022-06-11 18:11:58'),
(5, '', '', '2020-11-30 11:07:00', '2022-07-11 11:07:00'),
(6, '', '', '2020-11-30 11:09:26', '2022-07-11 11:09:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Pancing', 1, 100000, ''),
(2, 1, 3, 'Kail Pancing', 1, 8000, ''),
(3, 1, 4, 'Senar Pancing', 1, 110000, ''),
(4, 2, 8, 'Jaring Ikan', 1, 15000, ''),
(5, 3, 1, 'Pancing', 5, 100000, ''),
(6, 4, 3, 'Kail Pancing', 1, 8000, ''),
(7, 5, 1, 'Pancing', 1, 100000, ''),
(8, 6, 3, 'Kail Pancing', 1, 8000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(3, 'ageng', 'ageng', '12345', 2),
(4, 'bagja', 'admin', '1234', 2),
(5, 'bagja', 'Ageng', '1234', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
