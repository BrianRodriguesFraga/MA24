-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 août 2018 à 13:03
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `videogames`
--

-- --------------------------------------------------------

--
-- Structure de la table `developer`
--

DROP TABLE IF EXISTS `developer`;
CREATE TABLE IF NOT EXISTS `developer` (
  `idDeveloper` int(11) NOT NULL AUTO_INCREMENT,
  `nameDeveloper` varchar(100) NOT NULL,
  PRIMARY KEY (`idDeveloper`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `developer`
--

INSERT INTO `developer` (`idDeveloper`, `nameDeveloper`) VALUES
(1, 'Epic Games'),
(2, 'People Can Fly'),
(3, 'First touch'),
(5, 'Tomorrow Corporation'),
(17, 'Harty Show'),
(15, 'Sam Chatouille');

-- --------------------------------------------------------

--
-- Structure de la table `developervideogame`
--

DROP TABLE IF EXISTS `developervideogame`;
CREATE TABLE IF NOT EXISTS `developervideogame` (
  `iddevvg` int(11) NOT NULL AUTO_INCREMENT,
  `fkvideogame` int(11) NOT NULL,
  `fkdeveloper` int(11) NOT NULL,
  PRIMARY KEY (`iddevvg`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `developervideogame`
--

INSERT INTO `developervideogame` (`iddevvg`, `fkvideogame`, `fkdeveloper`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(7, 20, 5);

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

DROP TABLE IF EXISTS `editor`;
CREATE TABLE IF NOT EXISTS `editor` (
  `idEditor` int(11) NOT NULL AUTO_INCREMENT,
  `nameEditor` varchar(100) NOT NULL,
  PRIMARY KEY (`idEditor`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editor` (`idEditor`, `nameEditor`) VALUES
(1, 'Epic Games'),
(2, 'Tomorrow Corporation'),
(3, 'First touch');

-- --------------------------------------------------------

--
-- Structure de la table `editorvideogame`
--

DROP TABLE IF EXISTS `editorvideogame`;
CREATE TABLE IF NOT EXISTS `editorvideogame` (
  `idedvg` int(11) NOT NULL AUTO_INCREMENT,
  `fkvideogame` int(11) NOT NULL,
  `fkeditor` int(11) NOT NULL,
  PRIMARY KEY (`idedvg`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `editorvideogame`
--

INSERT INTO `editorvideogame` (`idedvg`, `fkvideogame`, `fkeditor`) VALUES
(1, 1, 1),
(4, 2, 3),
(12, 20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

DROP TABLE IF EXISTS `platform`;
CREATE TABLE IF NOT EXISTS `platform` (
  `idplatform` int(11) NOT NULL AUTO_INCREMENT,
  `nameplatform` varchar(50) NOT NULL,
  PRIMARY KEY (`idplatform`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `platform`
--

INSERT INTO `platform` (`idplatform`, `nameplatform`) VALUES
(1, 'Nintendo'),
(2, 'Wii'),
(3, 'DS'),
(4, 'Playstation'),
(5, 'Xbox'),
(6, 'PC'),
(7, 'Smartphone');

-- --------------------------------------------------------

--
-- Structure de la table `platformvideogame`
--

DROP TABLE IF EXISTS `platformvideogame`;
CREATE TABLE IF NOT EXISTS `platformvideogame` (
  `idplatformvideogame` int(11) NOT NULL AUTO_INCREMENT,
  `fkplatform` int(11) NOT NULL,
  `fkvideogame` int(11) NOT NULL,
  PRIMARY KEY (`idplatformvideogame`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `platformvideogame`
--

INSERT INTO `platformvideogame` (`idplatformvideogame`, `fkplatform`, `fkvideogame`) VALUES
(1, 1, 1),
(2, 6, 1),
(3, 4, 1),
(4, 1, 2),
(30, 6, 20),
(31, 7, 20);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idtype` int(11) NOT NULL AUTO_INCREMENT,
  `nametype` varchar(50) NOT NULL,
  PRIMARY KEY (`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`idtype`, `nametype`) VALUES
(1, 'Action'),
(2, 'Action-aventure'),
(3, 'Aventure'),
(4, 'Jeu de rôle'),
(5, 'Réflexion'),
(6, 'Simulation'),
(7, 'Puzzle'),
(8, 'Casse-brique'),
(9, 'Programmation'),
(10, 'Bac à sable'),
(11, 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `videogame`
--

DROP TABLE IF EXISTS `videogame`;
CREATE TABLE IF NOT EXISTS `videogame` (
  `idvideogame` int(11) NOT NULL AUTO_INCREMENT,
  `namevideogame` varchar(255) NOT NULL,
  `dateoutput` date NOT NULL,
  `fktype` int(11) NOT NULL,
  PRIMARY KEY (`idvideogame`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `videogame`
--

INSERT INTO `videogame` (`idvideogame`, `namevideogame`, `dateoutput`, `fktype`) VALUES
(1, 'Fortnite', '2017-06-01', 3),
(2, 'DreamLeagues', '2018-07-30', 11),
(20, 'Human Resource Machine', '2018-02-05', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
