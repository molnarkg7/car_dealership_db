-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 09:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autosalon`
--
CREATE DATABASE IF NOT EXISTS `autosalon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
USE `autosalon`;

-- --------------------------------------------------------

--
-- Table structure for table `automobili`
--

CREATE TABLE IF NOT EXISTS `automobili` (
  `id_automobila` int(11) NOT NULL AUTO_INCREMENT,
  `id_distributera` int(11) NOT NULL,
  `Marka` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Model` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Boja` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Godiste` int(11) NOT NULL,
  `Cena` float NOT NULL,
  `Zapremina_motora` int(11) NOT NULL,
  `Snaga_motora` int(11) NOT NULL,
  `Broj_vrata` int(11) NOT NULL,
  `VIN` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id_automobila`),
  KEY `id_distributera` (`id_distributera`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `automobili`
--

INSERT INTO `automobili` (`id_automobila`, `id_distributera`, `Marka`, `Model`, `Boja`, `Godiste`, `Cena`, `Zapremina_motora`, `Snaga_motora`, `Broj_vrata`, `VIN`) VALUES
(1, 1, 'Zastava', '10', 'Crvena', 2007, 1999, 1242, 44, 5, 'ZFA18800000977097'),
(2, 2, 'Lancia', 'Delta', 'Siva', 2010, 4999, 1598, 88, 5, 'ZLA831AB003131800'),
(3, 3, 'Fiat', 'Bravo', 'Siva', 2010, 4299, 1368, 88, 5, 'ZFA19800004242960');

-- --------------------------------------------------------

--
-- Table structure for table `distributer`
--

CREATE TABLE IF NOT EXISTS `distributer` (
  `id_distributera` int(11) NOT NULL,
  `Naziv` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Telefon` int(11) NOT NULL,
  `E-mail` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Veb_sajt` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Postanski_br_mesta` int(11) NOT NULL,
  PRIMARY KEY (`id_distributera`),
  KEY `Postanski_br_mesta` (`Postanski_br_mesta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `distributer`
--

INSERT INTO `distributer` (`id_distributera`, `Naziv`, `Telefon`, `E-mail`, `Veb_sajt`, `Postanski_br_mesta`) VALUES
(1, 'Nikom d.o.o', 645896351, 'nikomnikom@nikom.com', 'nikom.com', 34000),
(2, 'Nesa Fiat', 634781256, 'nesafiat@gmail.com', 'nesafiat.org', 11000),
(3, 'FiatCars', 658794563, 'fiatcarsnis@hotmail.com', 'fiatcars.net', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE IF NOT EXISTS `grad` (
  `PTT` int(11) NOT NULL,
  `Naziv` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Drzava` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`PTT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`PTT`, `Naziv`, `Drzava`) VALUES
(11000, 'Beograd', 'Srbija'),
(18000, 'Nis', 'Srbija'),
(34000, 'Kragujevac', 'Srbija');

-- --------------------------------------------------------

--
-- Table structure for table `kupac`
--

CREATE TABLE IF NOT EXISTS `kupac` (
  `id_kupca` int(11) NOT NULL AUTO_INCREMENT,
  `Telefon` int(11) NOT NULL,
  `E-mail` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `JMBG` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Ime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Prezime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Datum_rodjenja` date NOT NULL,
  `Adresa` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Pol` char(1) COLLATE utf8mb4_bin NOT NULL,
  `Postanski_br_mesta` int(11) NOT NULL,
  PRIMARY KEY (`id_kupca`),
  KEY `Postanski_br_mesta` (`Postanski_br_mesta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `kupac`
--

INSERT INTO `kupac` (`id_kupca`, `Telefon`, `E-mail`, `JMBG`, `Ime`, `Prezime`, `Datum_rodjenja`, `Adresa`, `Pol`, `Postanski_br_mesta`) VALUES
(1, 694561237, 'draganmilosevic@gmail.com', '0102987720055', 'Dragan', 'Milosevic', '1987-02-01', 'Djordja Andrejevica Kune 2', 'M', 34000),
(2, 69376541, 'urospetrovic@gmail.com', '0302000726517', 'Uros', 'Petrovic', '2000-02-03', 'Vladimira Rolovica 19', 'M', 11000),
(3, 634586257, 'djurovic27@gmail.com', '0408995720014', 'Ljubisa', 'Djurovic', '1995-08-04', 'Knicanska bb', 'M', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `prodavac`
--

CREATE TABLE IF NOT EXISTS `prodavac` (
  `id_prodavca` int(11) NOT NULL,
  `JMBG` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Ime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Prezime` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Telefon` int(11) NOT NULL,
  `Datum_rodjenja` date NOT NULL,
  `Adresa` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `Pol` char(1) COLLATE utf8mb4_bin NOT NULL,
  `Plata` float NOT NULL,
  PRIMARY KEY (`id_prodavca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `prodavac`
--

INSERT INTO `prodavac` (`id_prodavca`, `JMBG`, `Ime`, `Prezime`, `Telefon`, `Datum_rodjenja`, `Adresa`, `Pol`, `Plata`) VALUES
(1, '2508000720055', 'Djordje', 'Molnar', 693132860, '2000-08-25', 'Mlade Bosne 7', 'M', 89450),
(2, '0104999720017', 'Nikola', 'Kadic', 642205580, '2000-04-01', 'Steve Knicanina 2', 'M', 87500),
(3, '2604968720017', 'Petar', 'Petrovic', 641236548, '1968-04-26', 'Mitra Bakica 3', 'M', 79500);

-- --------------------------------------------------------

--
-- Table structure for table `racun`
--

CREATE TABLE IF NOT EXISTS `racun` (
  `id_prodavca` int(11) NOT NULL,
  `id_automobila` int(11) NOT NULL,
  `id_kupca` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Vreme` time NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `Cena` float NOT NULL,
  PRIMARY KEY (`id_prodavca`),
  KEY `id_kupca` (`id_kupca`),
  KEY `id_prodavca` (`id_prodavca`),
  KEY `id_automobila` (`id_automobila`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `racun`
--

INSERT INTO `racun` (`id_prodavca`, `id_automobila`, `id_kupca`, `Datum`, `Vreme`, `Kolicina`, `Cena`) VALUES
(1, 1, 1, '2022-06-17', '15:21:28', 1, 1999),
(2, 2, 2, '2022-06-17', '15:38:25', 1, 4999),
(3, 3, 3, '2022-06-19', '21:14:13', 1, 4299);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `automobili`
--
ALTER TABLE `automobili`
  ADD CONSTRAINT `automobili_ibfk_1` FOREIGN KEY (`id_distributera`) REFERENCES `distributer` (`id_distributera`);

--
-- Constraints for table `distributer`
--
ALTER TABLE `distributer`
  ADD CONSTRAINT `distributer_ibfk_1` FOREIGN KEY (`Postanski_br_mesta`) REFERENCES `grad` (`PTT`);

--
-- Constraints for table `kupac`
--
ALTER TABLE `kupac`
  ADD CONSTRAINT `kupac_ibfk_1` FOREIGN KEY (`Postanski_br_mesta`) REFERENCES `grad` (`PTT`);

--
-- Constraints for table `racun`
--
ALTER TABLE `racun`
  ADD CONSTRAINT `racun_ibfk_1` FOREIGN KEY (`id_kupca`) REFERENCES `kupac` (`id_kupca`),
  ADD CONSTRAINT `racun_ibfk_2` FOREIGN KEY (`id_prodavca`) REFERENCES `prodavac` (`id_prodavca`),
  ADD CONSTRAINT `racun_ibfk_3` FOREIGN KEY (`id_automobila`) REFERENCES `automobili` (`id_automobila`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
