-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Mer 03 Mai 2017 à 21:50
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chappy`
--

-- --------------------------------------------------------

--
-- Structure de la table `Valnut`
--

CREATE TABLE `Valnut` (
  `id` int(11) NOT NULL,
  `Aliment` varchar(255) NOT NULL,
  `Kcal` int(11) NOT NULL,
  `Proteines` int(11) NOT NULL,
  `Glucides` int(11) NOT NULL,
  `Lipides` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Valnut`
--

INSERT INTO `Valnut` (`id`, `Aliment`, `Kcal`, `Proteines`, `Glucides`, `Lipides`) VALUES
(1, 'Poulet', 195, 27, 0, 8),
(2, 'Dinde', 109, 24, 0, 2),
(3, 'Riz basmati cuit', 121, 4, 25, 0),
(4, 'Riz complet', 342, 9, 67, 2),
(5, 'Brocoli', 36, 3, 4, 0),
(6, 'Salade verte', 13, 2, 2, 0),
(7, 'Oeuf moyen', 65, 6, 0, 4),
(8, 'Oeuf large', 74, 6, 0, 5),
(9, 'Banane', 105, 1, 27, 0),
(10, 'Pomme', 72, 0, 19, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Valnut`
--
ALTER TABLE `Valnut`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Valnut`
--
ALTER TABLE `Valnut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
