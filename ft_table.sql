-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 18 avr. 2022 à 15:22
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_moez`
--

-- --------------------------------------------------------

--
-- Structure de la table `ft_table`
--

DROP TABLE IF EXISTS `ft_table`;
CREATE TABLE IF NOT EXISTS `ft_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL DEFAULT 'toto',
  `groupe` enum('staff','student','other','') NOT NULL,
  `date_de_creation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ft_table`
--

INSERT INTO `ft_table` (`id`, `login`, `groupe`, `date_de_creation`) VALUES
(125, 'ait', 'other', '1991-11-03'),
(124, 'bouamar', 'other', '2005-10-15'),
(123, 'arbona', 'other', '1996-09-06'),
(122, 'renault', 'other', '1980-04-29'),
(121, 'belanyi', 'other', '1952-11-11'),
(120, 'lamory', 'other', '1969-03-08'),
(119, 'valet', 'other', '1979-08-24'),
(118, 'vaillier', 'other', '1988-12-19'),
(117, 'lienhart', 'other', '1955-04-15'),
(116, 'glachant', 'other', '1955-01-27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
