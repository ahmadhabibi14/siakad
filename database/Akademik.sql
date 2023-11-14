CREATE DATABASE IF NOT EXISTS `Akademik`;
GRANT ALL ON `Akademik`.* TO 'habibi'@'%';

CREATE TABLE `Mahasiswa` (
  `nim` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `asal` varchar(100) DEFAULT 'Bagu',
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

CREATE TABLE `Mata_Kuliah` (
  `kode_mk` varchar(8) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

CREATE TABLE `ambil_mk` (
  `id_ambil` int(11) NOT NULL,
  `kode_mk` varchar(8) NOT NULL,
  `nim` varchar(16) NOT NULL,
  `nilai` int(11) DEFAULT 0,
  PRIMARY KEY (`id_ambil`),
  KEY `FK_kode_mk` (`kode_mk`),
  KEY `FK_nim` (`nim`),
  CONSTRAINT `FK_kode_mk` FOREIGN KEY (`kode_mk`) REFERENCES `Mata_Kuliah` (`kode_mk`),
  CONSTRAINT `FK_nim` FOREIGN KEY (`nim`) REFERENCES `Mahasiswa` (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci