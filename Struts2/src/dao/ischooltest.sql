-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 04 Mars 2015 à 19:16
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
-- Doublure de structure pour la vue `admininsert`
--
CREATE TABLE IF NOT EXISTS `admininsert` (
`email` varchar(45)
,`date_creation` timestamp
,`pseudo` varchar(45)
,`nom` varchar(45)
,`prenom` varchar(45)
,`credit` int(11)
,`mdp` varchar(45)
);
-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_email_idx` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `email`) VALUES
(5, 'encore1@yahoo.fr'),
(4, 'nouveau@admin.fr'),
(3, 'test@test.fr');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `adminselect`
--
CREATE TABLE IF NOT EXISTS `adminselect` (
`id` int(11)
,`email` varchar(45)
);
-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `idDocument` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `taille` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDocument`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE IF NOT EXISTS `eleve` (
  `idEleve` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `niveau` varchar(10) NOT NULL,
  `statutEleve` varchar(15) NOT NULL,
  PRIMARY KEY (`idEleve`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`idEleve`, `email`, `niveau`, `statutEleve`) VALUES
(1, 'eleve@test.fr', '6e', 'accepte');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `eleveselect`
--
CREATE TABLE IF NOT EXISTS `eleveselect` (
`idEleve` int(11)
,`email` varchar(45)
,`statutEleve` varchar(15)
);
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `gettype`
--
CREATE TABLE IF NOT EXISTS `gettype` (
`email` varchar(45)
,`mdp` varchar(45)
,`type` varchar(14)
);
-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`nom`) VALUES
('Chimie'),
('Franais'),
('Geographie'),
('Histoire'),
('Mathematiques'),
('Physique'),
('SVT');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE IF NOT EXISTS `paiement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `ideleve` int(11) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `montant` int(11) NOT NULL,
  `statut` varchar(10) NOT NULL,
  `typePaiement` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ideleve` (`ideleve`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `paiement`
--

INSERT INTO `paiement` (`id`, `ideleve`, `date_creation`, `montant`, `statut`, `typePaiement`) VALUES
(1, 1, '2015-02-28 14:01:14', 50, 'ACCEPTE', 'CHEQUE');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE IF NOT EXISTS `professeur` (
  `idProf` int(45) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `cv` varchar(45) NOT NULL,
  `motivation` varchar(255) NOT NULL,
  `numEtRue` varchar(255) NOT NULL,
  `codePostal` varchar(8) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `pays` varchar(45) NOT NULL,
  `statut` varchar(14) NOT NULL,
  PRIMARY KEY (`idProf`),
  KEY `FK _ email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `professeur`
--

INSERT INTO `professeur` (`idProf`, `email`, `cv`, `motivation`, `numEtRue`, `codePostal`, `ville`, `pays`, `statut`) VALUES
(1, 'prof@yahoo.fr', 'www.google.fr', 'je suis motivé !', '16 allée des champs', '91800', 'yerres', 'france', 'ATTENTE'),
(2, 'nouveau@test.fr', 'http://www.google.fr', 'Jsuis grave motivé ma gueule !', 'Sur les champs ma gueule', '75016', 'Panam', 'France', 'ATTENTE');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `profselect`
--
CREATE TABLE IF NOT EXISTS `profselect` (
);
-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `email` varchar(45) NOT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pseudo` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `credit` int(11) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`email`, `date_creation`, `pseudo`, `nom`, `prenom`, `credit`, `mdp`) VALUES
('eleve@test.fr', '2015-02-26 17:40:31', 'eleve', 'nom', 'prenom', 0, 'mdp'),
('encore1@yahoo.fr', '2015-03-04 12:50:12', 'admin', 'admin', 'admin', 0, 'mdp'),
('nouveau@admin.fr', '2015-03-04 12:05:00', 'admin', 'admin', 'admin', 0, 'mdp'),
('nouveau@test.fr', '2015-03-01 16:34:51', 'Reurti', 'Henry', 'Thierry', 0, 'mdp'),
('prof@yahoo.fr', '2015-02-27 23:05:12', 'monpseudo', 'titouan', 'zlatan', 0, 'mdp'),
('test@test.fr', '2015-02-24 15:41:12', 'test', 'test', 'test', 0, 'mdp');

-- --------------------------------------------------------

--
-- Structure de la vue `admininsert`
--
DROP TABLE IF EXISTS `admininsert`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admininsert` AS select `utilisateur`.`email` AS `email`,`utilisateur`.`date_creation` AS `date_creation`,`utilisateur`.`pseudo` AS `pseudo`,`utilisateur`.`nom` AS `nom`,`utilisateur`.`prenom` AS `prenom`,`utilisateur`.`credit` AS `credit`,`utilisateur`.`mdp` AS `mdp` from (`administrateur` left join `utilisateur` on((`administrateur`.`email` = `utilisateur`.`email`)));

-- --------------------------------------------------------

--
-- Structure de la vue `adminselect`
--
DROP TABLE IF EXISTS `adminselect`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `adminselect` AS select `administrateur`.`id` AS `id`,`administrateur`.`email` AS `email` from `administrateur`;

-- --------------------------------------------------------

--
-- Structure de la vue `eleveselect`
--
DROP TABLE IF EXISTS `eleveselect`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eleveselect` AS select `eleve`.`idEleve` AS `idEleve`,`eleve`.`email` AS `email`,`eleve`.`statutEleve` AS `statutEleve` from `eleve`;

-- --------------------------------------------------------

--
-- Structure de la vue `gettype`
--
DROP TABLE IF EXISTS `gettype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gettype` AS select `utilisateur`.`email` AS `email`,`utilisateur`.`mdp` AS `mdp`,if((`administrateur`.`email` = `utilisateur`.`email`),'administrateur',if((`eleve`.`email` = `utilisateur`.`email`),'eleve',if((`professeur`.`email` = `utilisateur`.`email`),'professeur',''))) AS `type` from (((`utilisateur` left join `administrateur` on((`utilisateur`.`email` = `administrateur`.`email`))) left join `eleve` on((`utilisateur`.`email` = `eleve`.`email`))) left join `professeur` on((`utilisateur`.`email` = `professeur`.`email`)));

-- --------------------------------------------------------

--
-- Structure de la vue `profselect`
--
DROP TABLE IF EXISTS `profselect`;
-- utilisé(#1356 - View 'ischooltest.profselect' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them)

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `FK_email` FOREIGN KEY (`email`) REFERENCES `utilisateur` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `utilisateur` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`ideleve`) REFERENCES `eleve` (`idEleve`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD CONSTRAINT `FK _ email` FOREIGN KEY (`email`) REFERENCES `utilisateur` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
