-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 11 Mars 2015 à 17:14
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ischooltest`
--

-- --------------------------------------------------------

--
-- Structure de la table `niveauprof`
--

CREATE TABLE IF NOT EXISTS `niveauprof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idProf` int(11) NOT NULL COMMENT 'plusieurs niveau par prof',
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idProfNiveau_idx` (`idProf`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='les niveau d''enseignement des prof' AUTO_INCREMENT=3 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `niveauprof`
--
ALTER TABLE `niveauprof`
  ADD CONSTRAINT `FK_idProfNiveau` FOREIGN KEY (`idProf`) REFERENCES `professeur` (`idProf`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
