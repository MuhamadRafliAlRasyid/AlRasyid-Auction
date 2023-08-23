-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2023 pada 11.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujikomlelangrafli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `harga_awal` int(20) NOT NULL,
  `deskripsi_barang` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `tgl`, `harga_awal`, `deskripsi_barang`) VALUES
(4, 'Sepatu Nike Air Jordan 1 Bio Hack', '2023-01-24', 20000, 'Deskripsi Produk:\r\nSepatu air jordan 1 bio hack \r\nblack blue dark brown Size 43 \r\nFree Box\r\nGrade premium ( 1:1 Original )\r\nrealpict'),
(5, 'Jam Tangan Rolex', '2023-01-24', 10000, 'DESKRIPSI PRODUK :\r\n- Jam tangan Pria\r\n- Rolex automatic jam tanpa baterai\r\n- Real picture sesuai gambar\r\n- Jaminan 100% uang kembali jika tidak \r\n  sesuai gambar Ukuran 4.3cm\r\n- Bahan Stailess Steel / Anti Karat dan \r\n  tidak mudah luntur\r\n- Daya gerak Otomatis (tanpa baterai )\r\n- Water resist\r\n- Model Belakang transparan'),
(6, 'dompet adidas 3d issey miyake', '2023-01-25', 10000, 'Isi Dompet Clip (Magnet)\r\n- 10 Slot Kartu\r\n- 2 Slot Uang tunai Panjang\r\n- 1 Slot Uang Koin Panjang\r\n- 1 Slot Panjang utk simpan Stnk dll.\r\nIsi Dompet Resleting\r\n- 8 Slot Kartu\r\n- 2 Slot Panjang utk simpan Stnk dll.\r\n- 1 Slot Uang Koin Panjang\r\n- 2 Slot Uang Tunai Panjang&Lebih Besar.\r\nReady Warna :\r\n- Silver'),
(7, 'Swarovski Necklace', '2023-01-25', 10000, '100% ORIGINAL & FULL SET\n- paper bag\n- box\n- sertificat\n- receipt\n- dust bag'),
(8, 'Iphone 14 Pro Max', '2023-01-25', 1000000, 'iPhone 14 Pro Max lbox Warna Silver\r\n- IMEI terdaftar\r\n- Segel greenpeel\r\n- M.internal : 1TB, 512GB, 256GB, 128GB\r\n- Garansi Resmi\r\n- 6.7-inch Full HD+ OLED Display, 1-120Hz refresh rate, HDR10, Dolby Vision, AOD, \r\n2000 nits brightness, Ceramic Shield front, Glass back\r\n- 19.5:9 aspect ratio\r\n- Dimensi: 160.7 x 77.6 x 7.85mm\r\n- Berat: 206g\r\n- Apple A16 Bionic hexa-core, Neural Engine\r\n- Apple GPU 5-core\r\n- RAM 6GB\r\n- Storage 128/256/512GB/1TB\r\n- K.Belakang Triple: 48MP f/1.78, OIS (2nd Gen), 7p lens + 12MP f/2.2 Ultrawide 120° + 12MP f/2.8 Telephoto, 3x optical zoom, OIS, EIS, Sapphire Crystal Lens, Apple ProRAW, Focus Pixels, LED Flash, HDR with Dolby Vision 4K@60fps video recording\r\n- K.Depan 12MP f/1.9, Focus Pixels, EIS, HDR with Dolby Vision 4K@60fps\r\n- Audio: Stereo speakers\r\n- iOS 16\r\n- Fitur: Emergency SOS via Satellite, Crash Detection\r\n- IP68 dust & water resistancea\r\n- 5G (US eSIM only), Face ID, Lightning Port, NFC\r\n- Baterai dapat bertahan hingga 29 jam video playback, \r\nwith 20W fast charging (Adapter terpisah), Support 15W wireless charging'),
(9, 'Macbook air 2020 ', '2023-01-26', 2000000, 'Layar : Layar Retina Layar 13,3 inci (diagonal) dengan lampu latar LED dan teknologi IPS;\nresolusi 2560 x 1600 pada 227 piksel per inci dengan dukungan untuk jutaan warna\nSkala resolusi yang didukung: 1680 x 1050 Aspek rasio 16:10 Teknologi True Tone\nTouch ID : Sensor Touch ID\nProsesor : Intel Core i5 quad-core 1,1 GHz, Turbo Boost hingga 3,5 GHz, dengan cache L3 sebesar 6 MB\nPenyimpanan: SSD berbasis PCIe 512 GB\nMemori: LPDDR4X 3733 MHz sebesar 8 GB\nBaterai dan Daya2\nWeb nirkabel hingga 11 jam\nPemutaran film aplikasi Apple TV hingga 12 jam\nWaktu siaga hingga 30 hari\nBaterai lithium-polymer bawaan 49,9 watt-jam\nAdaptor Daya USB-C 30W; Port daya USB-C\nUkuran dan Berat\nTinggi: 0,41–1,61 cm\nLebar: 30,41 cm\nTebal: 21,24 cm\nBerat: 1,29 kg3f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_history_lelang`
--

CREATE TABLE `tb_history_lelang` (
  `id_history` int(11) NOT NULL,
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `penawaran_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lelang`
--

CREATE TABLE `tb_lelang` (
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_lelang` date NOT NULL,
  `harga_akhir` int(20) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `status` enum('dibuka','ditutup') NOT NULL,
  `Keterangan` enum('belum dibayar','dibayar') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_lelang`
--

INSERT INTO `tb_lelang` (`id_lelang`, `id_barang`, `tgl_lelang`, `harga_akhir`, `id_user`, `id_petugas`, `status`, `Keterangan`) VALUES
(5, 5, '2023-08-23', NULL, NULL, 2, 'dibuka', 'belum dibayar'),
(6, 4, '2023-08-23', NULL, NULL, 2, 'dibuka', 'belum dibayar'),
(8, 7, '2023-08-23', NULL, NULL, 2, 'dibuka', 'belum dibayar'),
(9, 8, '2023-08-23', NULL, NULL, 2, 'dibuka', 'belum dibayar'),
(10, 9, '2023-08-23', NULL, NULL, 2, 'dibuka', 'belum dibayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` enum('administrator','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'administrator'),
(2, 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id_user`, `nama_lengkap`, `username`, `password`, `telp`, `alamat`) VALUES
(5, 'MuhamadRafliAlRasyid', 'rafli', '79ece3a5487d0945cd1cd28a2b483c84', '2147483647', 'Kp.Bubulak Rt12/Rw10 rumah No 23 Kelurahan Tanjungpura,Kecamatan Karawang Barat,Kabupaten Karawang,Jawa Barat 41316'),
(6, 'Fazrin Rahmania ', 'fazrin', '63658301d6ed68545f3da7a3824e847c', '2147483647', 'Kosambi'),
(17, 'tester1234', 'testerlagi', '79ece3a5487d0945cd1cd28a2b483c84', '0881024736561', 'jl jambu no 34 keluarahan karawaci');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `id_level`) VALUES
(1, 'Muhamad Rafli Al Rasyid', 'admin', '79ece3a5487d0945cd1cd28a2b483c84', 1),
(2, 'Ardan Ramadan', 'petugas', '79ece3a5487d0945cd1cd28a2b483c84', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_history_lelang`
--
ALTER TABLE `tb_history_lelang`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_lelang` (`id_lelang`,`id_barang`,`id_user`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD PRIMARY KEY (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`,`id_petugas`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_history_lelang`
--
ALTER TABLE `tb_history_lelang`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  MODIFY `id_lelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_history_lelang`
--
ALTER TABLE `tb_history_lelang`
  ADD CONSTRAINT `tb_history_lelang_ibfk_1` FOREIGN KEY (`id_lelang`) REFERENCES `tb_lelang` (`id_lelang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_history_lelang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_history_lelang_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD CONSTRAINT `tb_lelang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_lelang_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_lelang_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
