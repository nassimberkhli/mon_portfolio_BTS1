-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 07 Décembre 2021 à 16:37
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` int(11) NOT NULL,
  `num_departement` int(11) NOT NULL,
  `nom_commune` varchar(20) NOT NULL,
  `population_2010` int(11) NOT NULL,
  `population_1999` int(11) NOT NULL,
  `surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`),
  KEY `num_departement` (`num_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `num_departement`, `nom_commune`, `population_2010`, `population_1999`, `surface`, `longitude`, `latitude`) VALUES
(11002, 11, 'Airoux', 128, 126, 5490, 1, 43),
(91200, 91, 'Athismons', 30, 29, 8630, 2, 48),
(97401, 97, 'Avirons', 10, 7, 26270, 21, 55);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE IF NOT EXISTS `departements` (
  `num_departements` int(11) NOT NULL,
  `code_region` int(11) NOT NULL,
  `nom_departement` varchar(20) NOT NULL,
  PRIMARY KEY (`num_departements`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departements`
--

INSERT INTO `departements` (`num_departements`, `code_region`, `nom_departement`) VALUES
(11, 1111, 'Aude'),
(91, 7595, 'Essone'),
(97, 9798, 'Outre mer');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `code_region` int(11) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `regions`
--

INSERT INTO `regions` (`code_region`, `nom_region`) VALUES
(1111, 'Bretagne'),
(6768, 'alsace'),
(7595, 'iledefrance'),
(9798, '');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_ibfk_1` FOREIGN KEY (`num_departement`) REFERENCES `departements` (`num_departements`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departements`
--
ALTER TABLE `departements`
  ADD CONSTRAINT `departements_ibfk_1` FOREIGN KEY (`code_region`) REFERENCES `regions` (`code_region`) ON DELETE CASCADE ON UPDATE CASCADE;
