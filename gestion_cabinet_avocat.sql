-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2025 at 06:02 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_cabinet_avocat`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendrier`
--

DROP TABLE IF EXISTS `calendrier`;
CREATE TABLE IF NOT EXISTS `calendrier` (
  `id_calendrier` int NOT NULL AUTO_INCREMENT,
  `date_rdv` date DEFAULT NULL,
  `heure_rdv` time DEFAULT NULL,
  `avocat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paiement` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prix` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grade` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_calendrier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendrier`
--

INSERT INTO `calendrier` (`id_calendrier`, `date_rdv`, `heure_rdv`, `avocat`, `paiement`, `prix`, `grade`) VALUES
(1, '2000-03-02', '08:30:00', 'Master sam', 'Jours', '234', 'Diplome'),
(2, '2000-02-03', '08:30:00', 'Guylain kashindi', 'Heure', '23456', 'Bacalauriat'),
(3, '2003-03-02', '08:30:00', 'Guylain kashindi', 'Heure', '345678', 'Master'),
(4, '2010-12-12', '08:30:00', 'Master sam', 'Heure', '300', 'Diplome'),
(5, '2023-09-12', '08:30:00', 'calvin dev', 'Heure', '300', 'Bacalauriat');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nom_client` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero_client` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `probleme` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `Nom_client`, `numero_client`, `probleme`) VALUES
(1, 'sas', '656565', 'divorce'),
(2, 'sam', '5454546', 'ffffff'),
(3, 'sam', '5454546', 'ffffff'),
(4, 'cczcz', '56789', 'czczcz'),
(5, 'sds', '67890', 'sdss'),
(6, 'sam', '656565', 'divorce force');

-- --------------------------------------------------------

--
-- Table structure for table `dossier_juridique`
--

DROP TABLE IF EXISTS `dossier_juridique`;
CREATE TABLE IF NOT EXISTS `dossier_juridique` (
  `id_dossier` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(23) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nature_probleme` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_ouverture` date DEFAULT NULL,
  `date_cloture` date DEFAULT NULL,
  `statut` varchar(21) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avocat_responsable` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_dossier`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dossier_juridique`
--

INSERT INTO `dossier_juridique` (`id_dossier`, `nom_client`, `nature_probleme`, `date_ouverture`, `date_cloture`, `statut`, `avocat_responsable`) VALUES
(9, 'sasa', 'divorce', '2010-09-09', '2004-09-11', 'dddd', 'sam'),
(10, 'sam', 'divirce force', '2022-01-12', '2023-04-23', 'encours', 'calvin dev');

-- --------------------------------------------------------

--
-- Table structure for table `rapport_juridique`
--

DROP TABLE IF EXISTS `rapport_juridique`;
CREATE TABLE IF NOT EXISTS `rapport_juridique` (
  `id_rapport` int NOT NULL AUTO_INCREMENT,
  `periode` date DEFAULT NULL,
  `nombre_client` int DEFAULT NULL,
  `nombre_dossier` int DEFAULT NULL,
  `revenus_generes` decimal(10,2) DEFAULT NULL,
  `date_creation` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rendez_vous`
--

DROP TABLE IF EXISTS `rendez_vous`;
CREATE TABLE IF NOT EXISTS `rendez_vous` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_rdv` date DEFAULT NULL,
  `heure_rdv` time DEFAULT NULL,
  `avocat` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_nom` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prix` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mot_de_passe` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numero` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom_utilisateur`, `mot_de_passe`, `type`, `prenom`, `address`, `numero`) VALUES
(1, 'ghdsghss', '123', 'Manager', 'dsdjhds', 'rtuyuyiu', '345678'),
(2, 'fsgsdfsd', '123', 'Personel', 'dhsdj', '2ahs', '345678'),
(3, 'fdgfgh', '123', 'Personel', 'ryyu', 'hggjh', '12678'),
(4, 'gfgf', '123', 'Avocat', 'rty', 'gfh', '23456'),
(5, 'gfhg', '123', 'Personel', 'gfh', 'vvvnbbn', '5676'),
(6, 'sam', '123', 'Personel', 'sam', 'kskjsdk', '6722647'),
(7, 'james', '123', 'Personel', 'jaes', 'kamenge', '345'),
(8, 'afd', '123', 'Manager', 'sfss', 'fsf', 'sfs'),
(9, 'rrr', '123', 'Manager', 'rrr', 'ffjfls', '123'),
(10, 'sam', '123', 'Avocat', 'sam', 'cffhgh', '123456'),
(11, 'ssfhfjs', 'jehw', 'Manager', 'sfjsfjsf', 'ejhew', '21111'),
(12, 'divin', '1234', 'Avocat', 'kashindi', 'paris', '65656565'),
(13, 'sam', '1234', 'Personel', 'kashi', 'erlin', '65810355'),
(14, 'salima', '123', 'Personel', 'sadiki', 'kimam', '65790877'),
(15, 'sasa', '1111', 'Manager', 'sese', 'sada', '123456'),
(16, '', '', 'Manager', '', '', ''),
(17, 'sadika', '1234', 'Personel', 'kashindi', 'moscow', '656565');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
