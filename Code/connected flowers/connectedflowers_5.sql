-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 juin 2019 à 14:07
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `connectedflowers 5`
--

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

DROP TABLE IF EXISTS `caracteristique`;
CREATE TABLE IF NOT EXISTS `caracteristique` (
  `id_caracteristique` int(11) NOT NULL,
  `photo` text NOT NULL,
  `humidite_sol` text NOT NULL,
  `temperature` text NOT NULL,
  `luminosite` text NOT NULL,
  `periode_flo` text NOT NULL,
  `id_plante` int(11) NOT NULL,
  PRIMARY KEY (`id_caracteristique`,`id_plante`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `caracteristique`
--

INSERT INTO `caracteristique` (`id_caracteristique`, `photo`, `humidite_sol`, `temperature`, `luminosite`, `periode_flo`, `id_plante`) VALUES
(1, 'photo1', 'normal', 'froide', 'ensoleillee', 'mai', 1),
(2, 'photo2', 'normal', 'froide', 'soleil/mi_ombre', 'avril_mai.', 2),
(3, 'photo3', 'frais', 'tiede', 'soleil/mi_ombre', 'mai_juin,', 3),
(4, 'photo4', 'normal a assez sec ', 'froide', 'soleil/mi_ombre', 'mai', 4),
(5, 'photo5', 'tolerant', 'tiede', 'soleil/mi_ombre', 'juin', 5),
(7, 'photo7', 'humide', 'chaude', 'lumiere_sans_soleil_direct', 'juin', 7),
(8, 'photo8', 'normal', 'tres_froide', 'mi_ombre/ombre ', 'mai_juin', 8),
(9, 'photo9', 'moyennement sec a frais ', 'tres_froide', 'soleil/mi_ombre ', 'avril_juin', 9),
(10, 'photo10', 'normal', 'tiede', 'plein_soleil', 'juin_janvier', 10),
(11, 'photo11', 'normal', 'tres_froide', 'ensoleille/mi_ombre', 'mai', 11),
(12, 'photo12', 'normal', 'tiede', 'ensoleille/mi_ombre', 'avril_juin', 12),
(13, 'photo13', 'normal', 'tiede', 'ensoleille/mi_ombre', 'avril_juin', 13),
(14, 'photo14', 'normal', 'tres_froide', 'ensoleille/mi_ombre', 'avril', 14),
(15, 'photo15', 'normal a frais ', 'tres_froide', 'ensoleille/mi_ombre', 'avril_mai', 15),
(16, 'photo16', 'normal', 'tres froid', 'ensoleille/mi_ombre', 'juin,', 16),
(17, 'photo17', 'sec a frais', 'tiedee', 'ensoleille', 'avril_juillet', 17),
(18, 'photo18', 'normal', 'tres_froide', 'ensoleille', 'ao¹t_septembre', 18),
(19, 'photo19', 'normal', 'tres_froide', 'ombre/mi_ombre', 'mai_juin,', 19),
(20, 'photo20', 'frais a humide', 'tres_froide', 'ensoleille/mi_ombre', 'juillet_septembre', 20),
(21, 'photo21', 'normal a frais ', 'tres froie', 'ensoleille/mi_ombre', 'mai_juin', 21),
(22, 'photo22', ' normal', 'tres_froide', 'ensoleille/mi_ombre', 'mai_juillet', 22),
(23, 'photo23', 'normal a frais ', 'tres_froide', 'ensoleille/mi_ombre', 'janvier', 23),
(24, 'photo24', 'normal', ' froide', 'ensoleille/mi_ombre', 'mai', 24),
(25, 'photo25', 'frais a humide ', 'tiede', 'ensoleille/mi_ombre', 'mai', 25),
(26, 'photo26', 'frais', 'tiede', 'ensoleille/mi_ombre', 'juin_juillet', 26),
(27, 'photo27', 'normal', 'tiede', 'ensoleille/mi_ombre', 'juin_juillet', 27),
(28, 'photo28', 'normal ', 'tres_froide', ' ensoleille ', 'mars_mai', 28),
(29, 'photo29', 'normal ', 'froide', ' ensoleille ', 'mars_juin', 29),
(30, 'photo30', 'normal a sec', 'tres_froide', 'ensoleille/mi_ombre', 'juin_juillet', 30);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom` text NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'arbre'),
(2, 'arbre'),
(3, 'arbre'),
(4, 'arbre'),
(5, 'arbuste'),
(6, 'plante'),
(7, 'plante_interieur'),
(8, 'plante_feuillage'),
(9, 'plante_feuillage'),
(10, 'fleur'),
(11, 'fleur'),
(12, 'arbre_vegetation'),
(13, 'arbuste_fruitier'),
(14, 'arbre'),
(15, 'arbre'),
(16, 'arbre'),
(17, 'arbre'),
(18, 'arbuste_fleur'),
(19, 'herbace'),
(20, 'plante_ornementale'),
(21, 'arbre'),
(22, 'arbre'),
(23, 'arbuste'),
(24, 'arbre_fruitier'),
(25, 'arbuste_fruitier');

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

DROP TABLE IF EXISTS `plante`;
CREATE TABLE IF NOT EXISTS `plante` (
  `id_plante` int(11) NOT NULL,
  `nom` text NOT NULL,
  `description` text NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_plante`,`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plante`
--

INSERT INTO `plante` (`id_plante`, `nom`, `description`, `id_categorie`) VALUES
(1, 'Bouleau Verruqueux', 'Aussi connu sous le nom de Betula Verrucosa C est un arbre de moyen developpement.', 1),
(2, 'Hetre Communx', 'Elle est aussi connue sous le nom de Fagus Sylvatica  Il s agit d un arbre possedant une vegetation vivace et dont ses fleurs sont de couleur creme.', 2),
(3, 'Neflier d Allemagne', 'Aussi connu sous le nom de Mespilus Germanica Il s agit d un arbre fruitier.', 3),
(4, 'Aubepine a deux styles', 'Aussi connu sous le nom de Crataegus Persimilis C est un arbre a fleurs.', 4),
(5, 'Sureau Noir', 'Aussi connu sous le nom de Sambucus Nigra Cette plante est un arbuste a fleurs et fruits.', 5),
(6, 'Gouet d Italie', 'Aussi connu sous le nom de Arum Italicum Sa vegetation est vivace mais ses fleurs disparaissent en ete. Cette plante mesure environ 30cm.', 6),
(7, 'Capillaire', 'Aussi connu sus le nom d Adiantum Capillus-veneris Il s agit d une plante verte d interieur.', 7),
(8, 'Fougere Femelle', 'Aussi connu sous le nom de Athyrium Filix-Femina C est une plante de type feuillage decoratif possedant une vegetation vivace et qui peut mesurer jusqu a 1.20 metres de hauteur.', 8),
(9, 'Petite Pervenche', 'Aussi connu sous le nom de Vinca Minor,C est une plante herbacee a fleurs possedant un feuillage persistant et mesurant jusqu a 45 centimetres de hauteur.', 9),
(10, 'Scabieuse Colombaire', 'Aussi connu sous le nom de Scabiosa Il s agit d une fleur de vegetation vivace pouvant mesurer de 30 a 80 centimetres de hauteur.', 10),
(11, 'Erable Champetre ', 'Aussi connu sous le nom de Acer Campestre C est un arbre vivace pouvant mesurer jusqu a 15 metres', 11),
(12, 'Charme', 'Aussi connu sous le nom de Carpinus betulus C est un arbre de vegetation vivace et qui mesure jusqu a 25m.', 12),
(13, 'Groseiller a maqueraux', 'Aussi connu sous le nom de Ribes grossularia ou bien Ribes uva crispa C est un arbuste fruiter de vegetation vivace mesurant de 50 a 150 cm de hauteur.', 13),
(14, 'Frene commun', 'Aussi connu sous le nom de Fraxinus excelsior C est un arbre de grande taille.', 14),
(15, 'Merisier', 'Aussi connu sous le nom de Prunus avium ou bien Cerasus avium  C est un arbre a vegetation arbustive pouvant atteindre jusqu a 20 metres de hauteur.', 15),
(16, 'Clemative vigne blanche', 'Aussi connu sous le nom de Clematis vitalba  est un arbre a vegetation vivace pouvant atteindre jusqu a 20 metres de long.', 16),
(17, 'Rosier des chiens', 'Aussi connu sous le nom de Rosa Canina C est un arbuste a fleurs et aux fruits decoratifs pouvant atteindre jusqu a 3 metres de hauteur.', 17),
(18, 'Achillee Mille-Feuilles', 'Aussi connu sous le nom de Achillea millefolium C est un herbacee a vegetation vivace pouvant atteindre jusqu a 75 centimetres de hauteur.', 18),
(19, 'Bugle de Geneve ', 'Aussi connu sous le nom de Ajuga reptans C est une plante ornementale couvrant le sol a vegetation vivace pouvant atteindre jusqu a 40 centimetres de hauteur.', 19),
(20, 'Guimauve Officinale', 'Aussi connu sous le nom de Althaea officinalis ou bien Malva officinalis C est un arbre a vegetation arbustive pouvant atteindre jusqu a 1.20 metres de hauteur.', 20),
(21, 'Sorbier des Soiseleurs', 'Aussi connu sous le nom de Sorbus aucuparia C est un arbre a vegetation arbustive pouvant atteindre jusqu a 15 metres de hauteur.', 21),
(22, 'Cornouiller Sanguin', 'Aussi connu sous le nom de Cornus sanguinea C est un arbuste a vegetation vivace pouvant atteindre jusqu a 4 metres de hauteur.', 22),
(23, 'Noisetier', 'Aussi connu sous le nom de Corylus avellana C est un arbre fruitier a vegetation vivace pouvant atteindre jusqu a 5 metres de hauteur.', 23),
(24, 'Saule blanc', 'Aussi connu sous le nom de Salix alba C est un arbre a vegetation arboree pouvant atteindre jusqu a 25 cetimetres de hauteur.', 24),
(25, 'Viorne Obier', 'Aussi connu sous le nom de Viburnum opulus C est un arbuste a fleurs a vegetation vivace pouvant atteindre jusqu a 4 metres de hauteur.', 25),
(26, 'Troene', 'Aussi connu sous le nom de Ligustrum C est un arbuste a vegetation vivace pouvant atteindre jusqu a 4 metres de hauteur.', 26),
(27, 'Chevrefeuille des bois', 'Aussi connu sous le nom de Lonicera C est une plante grimpante a vegetation vivace pouvant atteindre jusqu a 6 metres de hauteur.', 27),
(28, 'Bourdaine', 'Aussi connu sous le nom de Hippophae rhamnoides C est un arbuste fruiter a vegetation vivace pouvant atteindre jusqu a 3 metres de hauteur.', 28),
(29, 'Germandree petit chêne', 'Aussi connu sous le nom de Teucrium fruticans C est une plante arbustive a vegetation vivace pouvant atteindre jusqu a 1.50 metres de hauteur.', 29),
(30, 'Rosier pimprenelle', 'Aussi connu sous le nom de Rosa pimpinellifolia ou bien Rosa spinosissima C est un rosier botanique a vegetation arbustive pouvant atteindre jusqu a 1.20 metres de hauteur.', 30);

-- --------------------------------------------------------

--
-- Structure de la table `rechercher`
--

DROP TABLE IF EXISTS `rechercher`;
CREATE TABLE IF NOT EXISTS `rechercher` (
  `id_user` int(11) NOT NULL,
  `id_plante` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_plante`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rechercher`
--

INSERT INTO `rechercher` (`id_user`, `id_plante`) VALUES
(1, 25),
(2, 26),
(3, 15);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `nom`, `prenom`) VALUES
(1, 'denys', 'delaunay'),
(2, 'Ryan', 'Sadaoui'),
(3, 'Adrien', 'Sanches');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
