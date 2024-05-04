-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 08:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `matiere` varchar(50) NOT NULL,
  `lien` text NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`id`, `matiere`, `lien`, `url`) VALUES
(93, 'FR', '../../Cours/FR', 'http://127.0.0.1/Projet_web/View/php/page_matiere.php?matiere=FR'),
(92, 'BD', '../../Cours/BD', 'http://127.0.0.1/Projet_web/View/php/page_matiere.php?matiere=BD');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id_forum` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id_forum`, `titre`) VALUES
(1, 'Général'),
(2, 'Informatique');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `contenu` varchar(500) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id_message`, `id_forum`, `id_utilisateur`, `contenu`, `date`) VALUES
(65, 2, 5, 'testi', '2024-03-28 20:49:16'),
(64, 2, 5, 'testi', '2024-03-28 20:49:15'),
(63, 2, 5, 'testi', '2024-03-28 20:49:13'),
(62, 2, 5, 'testi', '2024-03-28 20:49:10'),
(61, 1, 5, 'testg', '2024-03-28 20:48:56'),
(59, 1, 5, 'testg', '2024-03-28 20:48:47'),
(60, 1, 5, 'testg', '2024-03-28 20:48:49'),
(58, 1, 5, 'testg', '2024-03-28 20:48:43'),
(57, 1, 5, 'testg', '2024-03-28 20:48:41'),
(56, 1, 5, 'testg', '2024-03-28 20:48:16'),
(66, 1, 5, 'test', '2024-04-17 15:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `recommandation`
--

CREATE TABLE `recommandation` (
  `id` int(11) NOT NULL,
  `id_cours` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommandation`
--

INSERT INTO `recommandation` (`id`, `id_cours`, `id_user`, `date`) VALUES
(1, 92, 5, '2024-04-18'),
(2, 92, 5, '2024-04-18'),
(3, 92, 5, '2024-04-18'),
(4, 92, 5, '2024-04-18'),
(5, 92, 5, '2024-04-18'),
(6, 92, 5, '2024-04-18'),
(7, 92, 5, '2024-04-18'),
(8, 92, 5, '2024-04-18'),
(9, 92, 5, '2024-04-18'),
(10, 92, 5, '2024-04-18'),
(11, 92, 5, '2024-04-18'),
(12, 92, 5, '2024-04-18'),
(13, 92, 5, '2024-04-18'),
(14, 92, 5, '2024-04-18'),
(15, 92, 5, '2024-04-18'),
(16, 92, 5, '2024-04-18'),
(17, 92, 5, '2024-04-18'),
(18, 92, 5, '2024-04-18'),
(19, 92, 5, '2024-04-18'),
(20, 92, 5, '2024-04-18'),
(21, 92, 5, '2024-04-18'),
(22, 92, 5, '2024-04-18'),
(23, 92, 5, '2024-04-18'),
(24, 92, 5, '2024-04-18'),
(25, 92, 5, '2024-04-18'),
(26, 92, 5, '2024-04-18'),
(27, 92, 5, '2024-04-18'),
(28, 92, 5, '2024-04-18'),
(29, 92, 5, '2024-04-18'),
(30, 92, 5, '2024-04-18'),
(31, 92, 5, '2024-04-18'),
(32, 92, 5, '2024-04-18'),
(33, 92, 5, '2024-04-18'),
(34, 92, 5, '2024-04-18'),
(35, 92, 5, '2024-04-18'),
(36, 92, 5, '2024-04-18'),
(37, 92, 5, '2024-04-18'),
(38, 92, 5, '2024-04-18'),
(39, 92, 5, '2024-04-18'),
(40, 92, 5, '2024-04-18'),
(41, 92, 5, '2024-04-18'),
(42, 92, 5, '2024-04-18'),
(43, 92, 5, '2024-04-18'),
(44, 92, 5, '2024-04-18'),
(45, 92, 5, '2024-04-18'),
(46, 92, 5, '2024-04-18'),
(47, 92, 5, '2024-04-18'),
(48, 92, 5, '2024-04-18'),
(49, 92, 5, '2024-04-18'),
(50, 92, 5, '2024-04-18'),
(51, 92, 5, '2024-04-18'),
(52, 92, 5, '2024-04-18'),
(53, 92, 5, '2024-04-18'),
(54, 92, 5, '2024-04-18'),
(55, 92, 5, '2024-04-18'),
(56, 92, 5, '2024-04-18'),
(57, 92, 5, '2024-04-18'),
(58, 92, 5, '2024-04-18'),
(59, 92, 5, '2024-04-18'),
(60, 92, 5, '2024-04-18'),
(61, 92, 5, '2024-04-18'),
(62, 92, 5, '2024-04-18'),
(63, 92, 5, '2024-04-18'),
(64, 92, 5, '2024-04-18'),
(65, 92, 5, '2024-04-18'),
(66, 92, 5, '2024-04-18'),
(67, 92, 5, '2024-04-18'),
(68, 92, 5, '2024-04-18'),
(69, 92, 5, '2024-04-18'),
(70, 92, 5, '2024-04-18'),
(71, 92, 5, '2024-04-18'),
(72, 92, 5, '2024-04-18'),
(73, 92, 5, '2024-04-18'),
(74, 92, 5, '2024-04-18'),
(75, 92, 5, '2024-04-18'),
(76, 92, 5, '2024-04-18'),
(77, 92, 5, '2024-04-18'),
(78, 92, 5, '2024-04-18'),
(79, 92, 5, '2024-04-18'),
(80, 92, 5, '2024-04-18'),
(81, 92, 5, '2024-04-18'),
(82, 92, 5, '2024-04-18'),
(83, 92, 5, '2024-04-18'),
(84, 92, 5, '2024-04-18'),
(85, 92, 5, '2024-04-18'),
(86, 92, 5, '2024-04-18'),
(87, 92, 5, '2024-04-18'),
(88, 92, 5, '2024-04-18'),
(89, 92, 5, '2024-04-18'),
(90, 92, 5, '2024-04-18'),
(91, 92, 5, '2024-04-18'),
(92, 92, 5, '2024-04-18'),
(93, 92, 5, '2024-04-18'),
(94, 92, 5, '2024-04-18'),
(95, 92, 5, '2024-04-18'),
(96, 92, 5, '2024-04-18'),
(97, 92, 5, '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `NumEtu` int(11) NOT NULL,
  `BD` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`NumEtu`, `BD`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `MDP` varchar(50) NOT NULL,
  `Type` enum('Etudiant','Professeur') NOT NULL,
  `theme` enum('noir','blanc') NOT NULL DEFAULT 'blanc'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Nom`, `Prenom`, `Numero`, `MDP`, `Type`, `theme`) VALUES
(165489, 'THOMAS', 'Allan', '31415', 'mdp', 'Etudiant', 'noir'),
(5, 'admin', 'admin', '1', 'admin', 'Professeur', 'noir'),
(6, 'Dumont', 'Jean', '1', 'prof', 'Professeur', 'blanc'),
(13, 'STIZ', 'Romain', '1', 'A', 'Etudiant', 'noir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_forum`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `FK_Discussion` (`id_forum`),
  ADD KEY `FK_Utilisateur` (`id_utilisateur`);

--
-- Indexes for table `recommandation`
--
ALTER TABLE `recommandation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id_forum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `recommandation`
--
ALTER TABLE `recommandation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
