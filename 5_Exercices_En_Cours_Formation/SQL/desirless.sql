-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 jan. 2023 à 14:21
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `desirless`
--

-- --------------------------------------------------------

--
-- Structure de la table `circuit`
--

CREATE TABLE `circuit` (
  `id_circuit` int(11) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `duree` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `circuit`
--

INSERT INTO `circuit` (`id_circuit`, `destination`, `duree`) VALUES
(1, 'Lourdes', 4),
(2, 'Paris', 5),
(3, 'Londres', 6),
(4, 'Amsterdam', 11),
(5, 'Vladivostok', 17),
(6, 'Taiwan', 14),
(7, 'Anchorage', 22),
(8, 'Berlin', 10),
(9, 'Bruxelles', 9),
(10, 'Tbilissi', 16);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `tel` char(10) DEFAULT NULL CHECK (`tel` regexp '[0-9]{10}'),
  `adresse` varchar(50) DEFAULT NULL,
  `cp` char(5) DEFAULT NULL CHECK (`tel` regexp '[0-9]{5}')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `tel`, `adresse`, `cp`) VALUES
(1, 'MARTIN', 'Jean', '0572845698', '4, rue des lois TOULOUSE', '31000'),
(2, 'DUPOND', 'Lucie', '0554845634', '7, place des Grands Hommes TOULOUSE', '31400'),
(3, 'BODIN', 'Alain', '0547845622', '14, avenue des Etats-Unis TOULOUSE', '31000'),
(4, 'CHARRIAT', 'Sophie', '0589845644', '22, boulevard de Réaumur TOULOUSE', '31000'),
(5, 'LUCIANO', 'Bernard', '0546845635', '11, allées des Demoiselles TOULOUSE', '31500'),
(6, 'TRAN', 'Corinne', '0552545678', '13, chemin de Lancastre TOULOUSE', '31100'),
(7, 'COSTES', 'Tim', '0572847611', '57, impasse du Mitan TOULOUSE', '31300'),
(8, 'DENAT', 'Alicia', '0562875836', '17, lieu-dit de la Motte TOULOUSE', '31200'),
(9, 'VILLA', 'Corentin', '0575366787', '87, chaussée du Lupin TOULOUSE', '31000'),
(10, 'SIMON', 'Stéphanie', '0515132698', '29, promenade des Anglais TOULOUSE', '31000');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_client` int(11) NOT NULL,
  `id_voyage` int(11) NOT NULL,
  `date_inscription` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_client`, `id_voyage`, `date_inscription`) VALUES
(1, 3, '2021-01-14'),
(1, 9, '2021-05-24'),
(1, 1, '2021-10-07'),
(1, 22, '2022-01-14'),
(1, 17, '2022-05-24'),
(1, 31, '2022-01-24'),
(2, 6, '2021-01-14'),
(2, 2, '2021-05-24'),
(2, 13, '2021-10-07'),
(2, 11, '2022-01-14'),
(2, 32, '2022-05-24'),
(2, 40, '2022-10-07'),
(3, 7, '2021-01-14'),
(3, 6, '2021-05-24'),
(3, 1, '2021-10-07'),
(3, 14, '2022-01-14'),
(3, 31, '2022-05-24'),
(3, 39, '2022-10-07'),
(4, 4, '2021-01-14'),
(4, 9, '2021-05-24'),
(4, 5, '2021-10-07'),
(4, 16, '2022-01-14'),
(4, 30, '2022-05-24'),
(4, 29, '2022-03-19'),
(5, 3, '2021-01-14'),
(5, 9, '2021-05-24'),
(5, 2, '2021-10-07'),
(5, 17, '2022-02-14'),
(5, 28, '2022-05-24'),
(5, 38, '2022-11-07'),
(6, 1, '2021-01-14'),
(6, 9, '2021-05-24'),
(6, 1, '2021-10-07'),
(6, 18, '2022-10-14'),
(6, 27, '2022-07-24'),
(6, 37, '2022-11-07'),
(7, 2, '2021-01-14'),
(7, 4, '2021-05-24'),
(7, 10, '2021-10-07'),
(7, 19, '2022-11-14'),
(7, 25, '2022-02-13'),
(7, 36, '2022-01-07'),
(8, 1, '2021-01-14'),
(8, 5, '2021-05-24'),
(8, 6, '2021-10-07'),
(8, 20, '2022-07-14'),
(8, 26, '2022-02-24'),
(8, 35, '2022-10-07'),
(9, 13, '2021-01-14'),
(9, 9, '2021-05-24'),
(9, 15, '2021-10-07'),
(9, 24, '2022-10-14'),
(9, 23, '2022-02-12'),
(9, 34, '2022-10-07'),
(10, 12, '2021-01-14'),
(10, 11, '2021-10-24'),
(10, 21, '2021-11-07'),
(10, 22, '2022-02-24'),
(10, 33, '2022-10-07');

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `id_voyage` int(11) NOT NULL,
  `prix` float NOT NULL,
  `placesmax` int(11) DEFAULT NULL,
  `id_circuit` int(11) DEFAULT NULL,
  `date_voyage` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`id_voyage`, `prix`, `placesmax`, `id_circuit`, `date_voyage`) VALUES
(1, 138.6, 4, 1, '2022-12-02'),
(2, 220, 15, 2, '2022-07-14'),
(3, 145, 22, 3, '2022-10-05'),
(4, 89.1, 0, 4, '2022-11-17'),
(5, 179.1, 0, 5, '2022-04-22'),
(6, 249, 17, 6, '2022-05-27'),
(7, 330, 11, 7, '2022-05-30'),
(8, 241, 14, 8, '2022-09-19'),
(9, 278, 40, 9, '2022-08-07'),
(10, 198, 9, 10, '2022-01-11'),
(11, 177, 14, 1, '2022-12-22'),
(12, 201, 25, 2, '2022-09-14'),
(13, 131.4, 2, 3, '2022-11-15'),
(14, 90, 1, 4, '2022-12-17'),
(15, 200, 10, 5, '2022-09-20'),
(16, 250, 7, 6, '2022-07-21'),
(17, 302, 21, 7, '2022-06-30'),
(18, 301, 4, 8, '2022-11-19'),
(19, 277, 10, 9, '2022-10-17'),
(20, 156, 19, 10, '2022-11-21'),
(21, 164, 45, 1, '2023-12-02'),
(22, 211, 65, 2, '2023-07-14'),
(23, 117, 72, 3, '2023-10-05'),
(24, 115, 90, 4, '2023-11-17'),
(25, 215, 80, 5, '2023-04-22'),
(26, 261, 57, 6, '2023-05-27'),
(27, 310, 71, 7, '2023-05-30'),
(28, 301, 64, 8, '2023-09-19'),
(29, 238, 40, 9, '2023-08-07'),
(30, 188, 69, 10, '2023-01-11'),
(31, 167, 74, 1, '2023-12-22'),
(32, 211, 55, 2, '2023-09-14'),
(33, 156, 92, 3, '2023-11-15'),
(34, 100, 101, 4, '2023-12-17'),
(35, 180, 70, 5, '2023-09-20'),
(36, 230, 70, 6, '2023-07-21'),
(37, 312, 71, 7, '2023-06-30'),
(38, 321, 46, 8, '2023-11-19'),
(39, 277, 70, 9, '2023-10-17'),
(40, 136, 59, 10, '2023-11-21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`id_circuit`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_voyage` (`id_voyage`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id_voyage`),
  ADD KEY `id_circuit` (`id_circuit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `circuit`
--
ALTER TABLE `circuit`
  MODIFY `id_circuit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id_voyage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`id_voyage`) REFERENCES `voyage` (`id_voyage`),
  ADD CONSTRAINT `inscription_ibfk_3` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `inscription_ibfk_4` FOREIGN KEY (`id_voyage`) REFERENCES `voyage` (`id_voyage`);

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`id_circuit`) REFERENCES `circuit` (`id_circuit`),
  ADD CONSTRAINT `voyage_ibfk_2` FOREIGN KEY (`id_circuit`) REFERENCES `circuit` (`id_circuit`),
  ADD CONSTRAINT `voyage_ibfk_3` FOREIGN KEY (`id_circuit`) REFERENCES `circuit` (`id_circuit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
