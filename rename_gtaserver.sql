-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2019 at 06:08 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gtaserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale PropriÃ©tÃ©', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_fueler', 'Raffineur', 1),
('society_gouv', 'Gouvernement', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_mechanic', 'MÃ©cano', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'caution', 0, 'steam:110000107ab50c3'),
(2, 'society_police', 0, NULL),
(3, 'society_fueler', 0, NULL),
(4, 'society_ambulance', 0, NULL),
(5, 'society_cardealer', 0, NULL),
(6, 'society_taxi', 0, NULL),
(7, 'property_black_money', 0, 'steam:110000107ab50c3'),
(8, 'society_gouv', 0, NULL),
(9, 'society_gouvernor', 0, NULL),
(10, 'caution', 0, 'steam:11000010ac0f9f7'),
(11, 'property_black_money', 0, 'steam:11000010ac0f9f7'),
(12, 'caution', 0, 'steam:110000111df87ef'),
(13, 'property_black_money', 0, 'steam:110000111df87ef'),
(14, 'caution', 0, 'steam:1100001168601f7'),
(15, 'property_black_money', 0, 'steam:1100001168601f7'),
(16, 'society_mechanic', 0, NULL),
(17, 'caution', 0, 'steam:110000118d99bfd'),
(18, 'property_black_money', 0, 'steam:110000118d99bfd'),
(19, 'property_black_money', 0, 'steam:11000010c3fa6a8'),
(20, 'caution', 0, 'steam:11000010c3fa6a8'),
(21, 'caution', 0, 'steam:11000011b7ba88c'),
(22, 'property_black_money', 0, 'steam:11000011b7ba88c'),
(23, 'caution', 0, 'steam:110000116a86ad6'),
(24, 'property_black_money', 0, 'steam:110000116a86ad6'),
(25, 'caution', 0, 'steam:1100001039f15a2'),
(26, 'property_black_money', 0, 'steam:1100001039f15a2'),
(27, 'caution', 0, 'steam:11000011b181afe'),
(28, 'property_black_money', 0, 'steam:11000011b181afe'),
(29, 'caution', 0, 'steam:11000010dafab63'),
(30, 'property_black_money', 0, 'steam:11000010dafab63'),
(31, 'caution', 0, 'steam:11000011c633ba3'),
(32, 'property_black_money', 0, 'steam:11000011c633ba3'),
(33, 'caution', 0, 'steam:110000110f0c0be'),
(34, 'property_black_money', 0, 'steam:110000110f0c0be'),
(35, 'caution', 0, 'steam:1100001185f7588'),
(36, 'property_black_money', 0, 'steam:1100001185f7588'),
(37, 'caution', 0, 'steam:1100001076e9bab'),
(38, 'property_black_money', 0, 'steam:1100001076e9bab'),
(39, 'caution', 0, 'steam:11000011a003c28'),
(40, 'property_black_money', 0, 'steam:11000011a003c28'),
(41, 'caution', 0, 'steam:110000115014e4b'),
(42, 'property_black_money', 0, 'steam:110000115014e4b'),
(43, 'caution', 0, 'steam:1100001360b2eb2'),
(44, 'property_black_money', 0, 'steam:1100001360b2eb2'),
(45, 'caution', 0, 'steam:1100001170fc149'),
(46, 'property_black_money', 0, 'steam:1100001170fc149');

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'PropriÃ©tÃ©', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_fueler', 'Raffineur', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_mechanic', 'MÃ©cano', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(2, 'steam:110000118d99bfd', 'steam:11000011b181afe', 'player', 'steam:11000011b181afe', 'Amende: Pris en flag lockpick', 300);

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:110000107ab50c3', 'Hamdi', 'Guerbej', '1996-09-14', 'm', '175'),
(2, 'steam:11000010ac0f9f7', 'Baha', 'Jemni', '02/10/1996', 'm', '180'),
(3, 'steam:110000111df87ef', 'FIRAS', 'SAMAALI', '19990414', 'm', '150'),
(4, 'steam:1100001168601f7', 'Aziz', 'Missaoui', '2002-2-22', 'm', '180'),
(5, 'steam:110000118d99bfd', 'Hamza', 'Mohamed', '01/01/1989', 'm', '180'),
(6, 'steam:11000010c3fa6a8', 'Abbes Nafti ', 'Abbes', '02/09/1992', 'm', '194'),
(7, 'steam:11000011b7ba88c', 'BaR0uDi', 'M0uRaD', '12/06/1995', 'm', '192'),
(8, 'steam:110000116a86ad6', 'Stanix ', 'Attardi', '02/10/1995', 'm', '194'),
(9, 'steam:1100001039f15a2', 'Yassine', 'Souissi', '30/10/1994', 'm', '177'),
(10, 'steam:11000011b181afe', 'Moez', 'Sidhom', '1995-20-06', 'm', '172'),
(11, 'steam:11000011c633ba3', 'Fadhleoui', 'Marwen', '1994', 'm', '175'),
(12, 'steam:110000110f0c0be', 'Wled', 'Moufida', '1993/10/28', 'm', '195'),
(13, 'steam:1100001185f7588', 'Epeuuuu', 'Bakoush', '5.6.1996', 'm', '178'),
(14, 'steam:1100001076e9bab', 'Hafnewi', 'Bougadfa', '1993/09/11', 'm', '186'),
(15, 'steam:11000011a003c28', 'Swagg', 'Man', '9-6-1987', 'm', '175'),
(16, 'steam:110000115014e4b', 'Nabil', 'Hamdi', '1994-10-08', 'm', '170'),
(17, 'steam:1100001360b2eb2', 'GHAITH', 'SASSI', '30/05/2002', 'm', '165'),
(18, 'steam:1100001170fc149', 'Mohamed', 'Karoui', '18/12/1999', 'm', '183');

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'PropriÃ©tÃ©', 0),
('society_ambulance', 'Ambulance', 1),
('society_fueler', 'Raffineur', 1),
('society_gouvernor', 'Gouvernement', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_fueler', NULL, '{}'),
(3, 'society_ambulance', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'property', 'steam:110000107ab50c3', '{}'),
(6, 'society_gouvernor', NULL, '{}'),
(7, 'property', 'steam:11000010ac0f9f7', '{\"weapons\":[]}'),
(8, 'property', 'steam:110000111df87ef', '{}'),
(9, 'property', 'steam:1100001168601f7', '{}'),
(10, 'property', 'steam:110000118d99bfd', '{\"dressing\":[{\"skin\":{\"bracelets_2\":0,\"blemishes_1\":0,\"bproof_2\":0,\"makeup_4\":0,\"moles_2\":0,\"lipstick_4\":0,\"blemishes_2\":0,\"sun_2\":0,\"lipstick_3\":0,\"lipstick_2\":0,\"age_1\":0,\"beard_2\":3,\"helmet_1\":-1,\"blush_1\":0,\"hair_color_1\":0,\"glasses_2\":0,\"watches_2\":0,\"bracelets_1\":-1,\"glasses_1\":7,\"pants_2\":0,\"bags_1\":0,\"mask_1\":0,\"ears_2\":0,\"chest_1\":0,\"ears_1\":-1,\"face\":0,\"chain_1\":0,\"tshirt_2\":0,\"arms_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"bags_2\":0,\"eyebrows_1\":0,\"hair_color_2\":0,\"torso_1\":43,\"chest_3\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"eyebrows_2\":8,\"eye_color\":0,\"decals_2\":0,\"blush_2\":0,\"helmet_2\":0,\"arms\":26,\"watches_1\":-1,\"complexion_2\":0,\"torso_2\":0,\"eyebrows_3\":0,\"makeup_2\":0,\"makeup_1\":0,\"complexion_1\":0,\"blush_3\":0,\"sun_1\":0,\"chain_2\":0,\"hair_1\":4,\"chest_2\":0,\"pants_1\":10,\"beard_3\":0,\"bodyb_1\":0,\"age_2\":0,\"tshirt_1\":15,\"sex\":0,\"decals_1\":0,\"mask_2\":0,\"shoes_1\":1,\"shoes_2\":0,\"beard_4\":0,\"hair_2\":0,\"makeup_3\":0,\"beard_1\":11,\"moles_1\":0,\"skin\":0},\"label\":\"Civil\"}]}'),
(11, 'property', 'steam:11000010c3fa6a8', '{}'),
(12, 'property', 'steam:11000011b7ba88c', '{}'),
(13, 'property', 'steam:110000116a86ad6', '{}'),
(14, 'property', 'steam:1100001039f15a2', '{}'),
(15, 'user_ears', 'steam:110000107ab50c3', '{}'),
(16, 'user_glasses', 'steam:110000107ab50c3', '{}'),
(17, 'user_helmet', 'steam:110000107ab50c3', '{}'),
(18, 'user_mask', 'steam:110000107ab50c3', '{}'),
(19, 'user_ears', 'steam:110000118d99bfd', '{}'),
(20, 'user_glasses', 'steam:110000118d99bfd', '{}'),
(21, 'user_helmet', 'steam:110000118d99bfd', '{}'),
(22, 'user_mask', 'steam:110000118d99bfd', '{}'),
(23, 'property', 'steam:11000011b181afe', '{}'),
(24, 'user_ears', 'steam:11000011b181afe', '{}'),
(25, 'user_glasses', 'steam:11000011b181afe', '{}'),
(26, 'user_helmet', 'steam:11000011b181afe', '{}'),
(27, 'user_mask', 'steam:11000011b181afe', '{}'),
(28, 'user_ears', 'steam:11000010ac0f9f7', '{}'),
(29, 'user_glasses', 'steam:11000010ac0f9f7', '{}'),
(30, 'user_helmet', 'steam:11000010ac0f9f7', '{}'),
(31, 'user_mask', 'steam:11000010ac0f9f7', '{}'),
(32, 'property', 'steam:11000010dafab63', '{}'),
(33, 'user_helmet', 'steam:11000010dafab63', '{}'),
(34, 'user_glasses', 'steam:11000010dafab63', '{}'),
(35, 'user_mask', 'steam:11000010dafab63', '{}'),
(36, 'user_ears', 'steam:11000010dafab63', '{}'),
(37, 'property', 'steam:11000011c633ba3', '{}'),
(38, 'user_ears', 'steam:11000011c633ba3', '{}'),
(39, 'user_glasses', 'steam:11000011c633ba3', '{}'),
(40, 'user_helmet', 'steam:11000011c633ba3', '{}'),
(41, 'user_mask', 'steam:11000011c633ba3', '{}'),
(42, 'property', 'steam:110000110f0c0be', '{}'),
(43, 'user_ears', 'steam:110000110f0c0be', '{}'),
(44, 'user_glasses', 'steam:110000110f0c0be', '{}'),
(45, 'user_helmet', 'steam:110000110f0c0be', '{}'),
(46, 'user_mask', 'steam:110000110f0c0be', '{}'),
(47, 'property', 'steam:1100001185f7588', '{}'),
(48, 'user_ears', 'steam:1100001185f7588', '{}'),
(49, 'user_glasses', 'steam:1100001185f7588', '{}'),
(50, 'user_helmet', 'steam:1100001185f7588', '{}'),
(51, 'user_mask', 'steam:1100001185f7588', '{}'),
(52, 'property', 'steam:1100001076e9bab', '{}'),
(53, 'user_ears', 'steam:1100001076e9bab', '{}'),
(54, 'user_glasses', 'steam:1100001076e9bab', '{}'),
(55, 'user_helmet', 'steam:1100001076e9bab', '{}'),
(56, 'user_mask', 'steam:1100001076e9bab', '{}'),
(57, 'property', 'steam:11000011a003c28', '{}'),
(58, 'user_ears', 'steam:11000011a003c28', '{}'),
(59, 'user_glasses', 'steam:11000011a003c28', '{}'),
(60, 'user_helmet', 'steam:11000011a003c28', '{}'),
(61, 'user_mask', 'steam:11000011a003c28', '{}'),
(62, 'user_ears', 'steam:11000010c3fa6a8', '{}'),
(63, 'user_glasses', 'steam:11000010c3fa6a8', '{}'),
(64, 'user_helmet', 'steam:11000010c3fa6a8', '{}'),
(65, 'user_mask', 'steam:11000010c3fa6a8', '{}'),
(66, 'user_mask', 'steam:110000115014e4b', '{}'),
(67, 'property', 'steam:110000115014e4b', '{}'),
(68, 'user_ears', 'steam:110000115014e4b', '{}'),
(69, 'user_glasses', 'steam:110000115014e4b', '{}'),
(70, 'user_helmet', 'steam:110000115014e4b', '{}'),
(71, 'property', 'steam:1100001360b2eb2', '{}'),
(72, 'user_ears', 'steam:1100001360b2eb2', '{}'),
(73, 'user_glasses', 'steam:1100001360b2eb2', '{}'),
(74, 'user_helmet', 'steam:1100001360b2eb2', '{}'),
(75, 'user_mask', 'steam:1100001360b2eb2', '{}'),
(76, 'property', 'steam:1100001170fc149', '{}'),
(77, 'user_ears', 'steam:1100001170fc149', '{}'),
(78, 'user_glasses', 'steam:1100001170fc149', '{}'),
(79, 'user_helmet', 'steam:1100001170fc149', '{}'),
(80, 'user_mask', 'steam:1100001170fc149', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation Ã  contresens', 250, 0),
(4, 'Demi-tour non autorisÃ©', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sÃ©curitÃ©', 30, 0),
(7, 'ArrÃªt dangereux / interdit', 150, 0),
(8, 'Stationnement gÃªnant / interdit', 70, 0),
(9, 'Non respect  de la prioritÃ© Ã  droite', 70, 0),
(10, 'Non-respect Ã  un vÃ©hicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'DÃ©passement dangereux', 100, 0),
(14, 'VÃ©hicule non en Ã©tat', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'DÃ©lit de fuite', 800, 0),
(17, 'ExcÃ¨s de vitesse < 5 kmh', 90, 0),
(18, 'ExcÃ¨s de vitesse 5-15 kmh', 120, 0),
(19, 'ExcÃ¨s de vitesse 15-30 kmh', 180, 0),
(20, 'ExcÃ¨s de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'DÃ©gradation de la voie publique', 90, 1),
(23, 'Trouble Ã  l\'ordre publique', 90, 1),
(24, 'Entrave opÃ©ration de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage Ã  agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illÃ©gale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme lÃ©thale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisÃ© (dÃ©faut de license)', 600, 2),
(34, 'Port d\'arme illÃ©gal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'Ã´tage civil', 1500, 2),
(41, 'Prise d\'Ã´tage agent de l\'Ã©tat', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'Ã©tat', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'Ã©tat', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'Ã©tat', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie Ã  l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bread', 'Pain', 10, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('clothe', 'VÃªtement', 40, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('cutted_wood', 'Bois coupÃ©', 20, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('drill', 'Borrmaskin', 1, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('fixkit', 'Kit rÃ©paration', 5, 0, 1),
('fixtool', 'outils rÃ©paration', 6, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gold', 'Or', 21, 0, 1),
('iron', 'Fer', 42, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'PÃ©trole', 24, 0, 1),
('petrol_raffin', 'PÃ©trole RaffinÃ©', 24, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('washed_stone', 'Pierre LavÃ©e', 7, 0, 1),
('water', 'Eau', 5, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1),
('xanax', 'Xanax', -1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('cardealer', 'Concessionnaire', 0),
('depanneur', 'Dépanneur', 0),
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('gouv', 'Gouvernement', 1),
('gouvernor', 'Gouvernement', 1),
('lumberjack', 'Bûcheron', 0),
('mechanic', 'Mécanicien', 0),
('miner', 'Mineur', 0),
('police', 'LSPD', 1),
('reporter', 'Journaliste', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'IntÃ©rimaire', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'IntÃ©rimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'IntÃ©rimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'IntÃ©rimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(10, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(11, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(12, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(13, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(14, 'fueler', 0, 'recrue', 'IntÃ©rimaire', 250, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(15, 'fueler', 1, 'novice', 'Chef Ã©quipe', 500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(16, 'fueler', 2, 'cdisenior', 'Adjoint', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(17, 'fueler', 3, 'boss', 'Patron', 1000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":13,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(18, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(19, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(20, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(21, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(22, 'depanneur', 0, 'depanneur', '', 600, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(23, 'depanneur', 0, 'depanneur', '', 600, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(24, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(25, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(26, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(27, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(28, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(29, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(30, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(31, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":249,\"torso_2\":1,\"pants_1\":96,\"pants_2\":1,\"shoes\":9,\"decals_1\":57,\"decals_2\":0,\"helmet_1\":122,\"helmet_2\":1,\"arms\":90}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(32, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(37, 'gouv', 0, 'ministre', 'Ministre', 750, '{}', '{}'),
(38, 'gouv', 1, 'president', 'PrÃ©sident', 1000, '{}', '{}'),
(39, 'gouvernor', 0, 'security_gouvernor', 'Garde du Corps', 2500, '{}', '{}'),
(40, 'gouvernor', 1, 'boss', 'PrÃ©sident', 5000, '{}', '{}'),
(41, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(42, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(43, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(44, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(45, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(46, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(47, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(48, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(49, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(50, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(51, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(52, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(53, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(54, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(55, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(56, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(57, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(58, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(59, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(60, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(61, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(62, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(63, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(64, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(65, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(66, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(67, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(68, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(69, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(70, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(71, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(72, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(73, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(74, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(75, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(76, 'mechanic', 3, 'chief', 'Chef d\'Ã©quipe', 48, '{}', '{}'),
(77, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(78, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(79, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(80, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(81, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(2, 'PowerBrokerPolished', 5000000, 0, 'steam:110000107ab50c3'),
(3, 'ExecutiveRich', 5000000, 0, 'steam:11000010ac0f9f7'),
(4, 'Monochrome1Apartment', 1300000, 0, 'steam:11000010ac0f9f7');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:1100001170fc149', 0, 'BVA 548', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"model\":-344943009,\"modSuspension\":-1,\"modAPlate\":-1,\"modGrille\":-1,\"pearlescentColor\":4,\"windowTint\":-1,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"dirtLevel\":3.0000078678132,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modEngine\":-1,\"color1\":1,\"modRoof\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"health\":1000,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modPlateHolder\":-1,\"modLivery\":-1,\"plate\":\"BVA 548\",\"modTurbo\":false,\"modWindows\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"extras\":{\"10\":true,\"12\":false},\"modEngineBlock\":-1,\"wheelColor\":156,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"plateIndex\":0,\"modHydrolic\":-1,\"modBrakes\":-1,\"modDashboard\":-1,\"modFender\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"color2\":0,\"modExhaust\":-1,\"modSpoilers\":-1,\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modXenon\":false}', 'car', NULL, 0),
('steam:110000107ab50c3', 1, 'COV 128', '{\"modHydrolic\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modEngine\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"model\":2046537925,\"modExhaust\":-1,\"modHood\":-1,\"plate\":\"COV 128\",\"color2\":134,\"color1\":134,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"modArchCover\":-1,\"health\":1000,\"modTransmission\":-1,\"modTank\":-1,\"dirtLevel\":4.0,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"extras\":{\"2\":false,\"1\":true},\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modLivery\":5,\"wheels\":1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modDial\":-1}', 'car', 'police', 0),
('steam:110000107ab50c3', 1, 'DUF 593', '{\"modHydrolic\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modEngine\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"model\":-2007026063,\"modExhaust\":-1,\"modHood\":-1,\"plate\":\"DUF 593\",\"color2\":0,\"color1\":77,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"modArchCover\":-1,\"health\":1000,\"modTransmission\":-1,\"modTank\":-1,\"dirtLevel\":7.0,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"extras\":[],\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modLivery\":-1,\"wheels\":0,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modDial\":-1}', 'car', 'police', 1),
('steam:11000011c633ba3', 0, 'EKZ 207', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modSuspension\":-1,\"modRoof\":-1,\"modStruts\":-1,\"pearlescentColor\":111,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modBrakes\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"modSeats\":-1,\"windowTint\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"color2\":1,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modDashboard\":-1,\"wheels\":6,\"modAPlate\":-1,\"dirtLevel\":8.0000133514404,\"modFender\":-1,\"model\":-1670998136,\"modPlateHolder\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modXenon\":false,\"plate\":\"EKZ 207\",\"extras\":[],\"modWindows\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"plateIndex\":0,\"wheelColor\":27,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"color1\":6,\"modTank\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modTurbo\":false,\"modExhaust\":-1,\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:110000107ab50c3', 1, 'FMN 914', '{\"modSuspension\":-1,\"modFrontBumper\":-1,\"modTrimA\":-1,\"color1\":0,\"modAerials\":-1,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"pearlescentColor\":2,\"modOrnaments\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modTurbo\":false,\"modAPlate\":-1,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modDial\":-1,\"modRoof\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":1,\"modEngine\":-1,\"plate\":\"FMN 914\",\"modWindows\":-1,\"modSpoilers\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modRearBumper\":-1,\"modGrille\":-1,\"modFender\":-1,\"model\":661493923,\"modXenon\":false,\"modExhaust\":-1,\"windowTint\":-1,\"modHorns\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modFrame\":-1,\"wheels\":0,\"color2\":1,\"modTrimB\":-1,\"modTransmission\":-1,\"modAirFilter\":-1,\"health\":997,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"wheelColor\":0,\"modVanityPlate\":-1,\"dirtLevel\":6.17085647583,\"extras\":[],\"plateIndex\":0,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"modBrakes\":-1,\"modPlateHolder\":-1,\"modSteeringWheel\":-1}', 'car', NULL, 0),
('steam:1100001185f7588', 1, 'FUX 802', '{\"modTransmission\":-1,\"health\":1000,\"modOrnaments\":-1,\"modSpeakers\":-1,\"model\":1672195559,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"color1\":6,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modDashboard\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"plate\":\"FUX 802\",\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"1\":true,\"4\":true,\"9\":true},\"modGrille\":-1,\"modRoof\":-1,\"modTrimA\":-1,\"wheels\":6,\"modSteeringWheel\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"plateIndex\":3,\"modRightFender\":-1,\"modFrame\":-1,\"modArmor\":-1,\"modDial\":-1,\"modAirFilter\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"dirtLevel\":9.6061992645264,\"modArchCover\":-1,\"color2\":6,\"modHorns\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:11000011a003c28', 0, 'GOK 511', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"dirtLevel\":6.0,\"modAPlate\":-1,\"modGrille\":-1,\"color2\":28,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modSeats\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"wheelColor\":27,\"wheels\":7,\"modXenon\":false,\"modSideSkirt\":-1,\"pearlescentColor\":134,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modAerials\":-1,\"color1\":134,\"modEngineBlock\":-1,\"extras\":[],\"modWindows\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"model\":-1106353882,\"modStruts\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modTurbo\":false,\"plate\":\"GOK 511\",\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:11000011a003c28', 0, 'GZT 467', '{\"modTransmission\":-1,\"health\":884,\"modOrnaments\":-1,\"modSpeakers\":-1,\"model\":-631760477,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":false,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modHorns\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":42,\"modAerials\":-1,\"color1\":38,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"modHydrolic\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"plate\":\"GZT 467\",\"color2\":38,\"modVanityPlate\":-1,\"wheelColor\":38,\"modGrille\":-1,\"modRoof\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"extras\":{\"10\":true,\"11\":false},\"windowTint\":-1,\"modFrame\":-1,\"modArmor\":-1,\"plateIndex\":0,\"modAirFilter\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"dirtLevel\":7.8398666381836,\"modArchCover\":-1,\"modDial\":-1,\"wheels\":7,\"modTrunk\":-1,\"modTank\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:110000107ab50c3', 1, 'ILO 322', '{\"modEngine\":3,\"modEngineBlock\":-1,\"pearlescentColor\":30,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"model\":2072687711,\"modTurbo\":1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"neonColor\":[255,0,255],\"windowTint\":1,\"modArmor\":4,\"modTank\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modSmokeEnabled\":1,\"neonEnabled\":[false,false,false,false],\"wheels\":5,\"modSeats\":-1,\"health\":941,\"modBrakes\":2,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"plate\":\"ILO 322\",\"modRoof\":-1,\"modDashboard\":-1,\"modSuspension\":3,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modVanityPlate\":-1,\"modTransmission\":2,\"wheelColor\":156,\"color1\":33,\"modXenon\":1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"color2\":0,\"modFrontBumper\":-1,\"modLivery\":-1,\"modAerials\":-1,\"modSpoilers\":0,\"plateIndex\":0,\"modFender\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modFrontWheels\":21,\"modTrimA\":-1,\"modRearBumper\":-1,\"dirtLevel\":8.7372751235962,\"modSpeakers\":-1,\"modDial\":-1,\"extras\":{\"10\":false,\"12\":false},\"modAPlate\":-1,\"modHorns\":18,\"modExhaust\":0}', 'car', NULL, 0),
('steam:11000010ac0f9f7', 1, 'ITE 624', '{\"modOrnaments\":-1,\"modAerials\":-1,\"modLivery\":-1,\"color2\":0,\"pearlescentColor\":18,\"extras\":{\"7\":true},\"modRightFender\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modHorns\":-1,\"modSmokeEnabled\":false,\"modExhaust\":-1,\"wheels\":1,\"modHood\":-1,\"modSeats\":-1,\"modTrimB\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modFrame\":-1,\"health\":1000,\"modGrille\":-1,\"modRoof\":-1,\"dirtLevel\":5.0000052452088,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"plate\":\"ITE 624\",\"modTransmission\":-1,\"modStruts\":-1,\"modTank\":-1,\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modSpeakers\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"wheelColor\":0,\"modEngine\":-1,\"modFrontBumper\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"model\":941494461,\"color1\":0,\"modTurbo\":false,\"modBackWheels\":-1}', 'car', NULL, 0),
('steam:11000011a003c28', 0, 'LJT 931', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"dirtLevel\":9.0000009536744,\"modAPlate\":-1,\"modGrille\":-1,\"color2\":0,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modSeats\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"wheelColor\":112,\"wheels\":1,\"modXenon\":false,\"modSideSkirt\":-1,\"pearlescentColor\":87,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modAerials\":-1,\"color1\":11,\"modEngineBlock\":-1,\"extras\":[],\"modWindows\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"model\":159274291,\"modStruts\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modTurbo\":false,\"plate\":\"LJT 931\",\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:110000107ab50c3', 1, 'MPJ 674', '{\"modTrimA\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"health\":985,\"modRightFender\":-1,\"modExhaust\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modAirFilter\":-1,\"modSeats\":-1,\"modGrille\":-1,\"pearlescentColor\":52,\"windowTint\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"wheelColor\":156,\"modHydrolic\":-1,\"modSmokeEnabled\":false,\"modDial\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modXenon\":false,\"modSpoilers\":-1,\"modSideSkirt\":-1,\"plate\":\"MPJ 674\",\"modShifterLeavers\":-1,\"dirtLevel\":10.205219268798,\"modFrontBumper\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"wheels\":0,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"color2\":88,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":49,\"modHood\":-1,\"modTransmission\":-1,\"modBackWheels\":-1,\"model\":-1041692462,\"extras\":{\"10\":true,\"2\":true,\"1\":false},\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:11000011a003c28', 0, 'NVK 266', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"model\":-313185164,\"modSuspension\":-1,\"modAPlate\":-1,\"modGrille\":-1,\"pearlescentColor\":38,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"wheelColor\":12,\"modRearBumper\":-1,\"modBrakes\":-1,\"color2\":30,\"modStruts\":-1,\"modSeats\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"modTransmission\":-1,\"color1\":30,\"modSideSkirt\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"wheels\":7,\"modDashboard\":-1,\"plate\":\"NVK 266\",\"modSteeringWheel\":-1,\"windowTint\":-1,\"modExhaust\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modEngine\":-1,\"dirtLevel\":9.0,\"extras\":[],\"modWindows\":-1,\"modPlateHolder\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"plateIndex\":0,\"modTurbo\":false,\"modXenon\":false,\"modRoof\":-1,\"modFender\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modTrimA\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255]}', 'car', NULL, 0),
('steam:11000011a003c28', 0, 'QAO 839', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"dirtLevel\":5.0000123977662,\"modAPlate\":-1,\"modGrille\":-1,\"color2\":9,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modSeats\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"wheelColor\":0,\"wheels\":7,\"modXenon\":false,\"modSideSkirt\":-1,\"pearlescentColor\":5,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modAerials\":-1,\"color1\":5,\"modEngineBlock\":-1,\"extras\":[],\"modWindows\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"model\":2123327359,\"modStruts\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modTurbo\":false,\"plate\":\"QAO 839\",\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:110000118d99bfd', 1, 'REX 940', '{\"modTrimA\":-1,\"modDashboard\":-1,\"color2\":0,\"health\":1000,\"modRightFender\":-1,\"modLivery\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"color1\":0,\"modStruts\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1,\"pearlescentColor\":28,\"windowTint\":2,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modXenon\":1,\"modEngineBlock\":-1,\"modTank\":-1,\"modSpeakers\":-1,\"wheelColor\":0,\"modPlateHolder\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modHydrolic\":-1,\"wheels\":0,\"modAPlate\":-1,\"modDial\":-1,\"modHorns\":45,\"modWindows\":-1,\"modSuspension\":-1,\"modTrimB\":-1,\"modEngine\":0,\"modAirFilter\":-1,\"modGrille\":-1,\"plate\":\"REX 940\",\"modShifterLeavers\":-1,\"dirtLevel\":7.604630947113,\"modAerials\":-1,\"plateIndex\":0,\"modRearBumper\":-1,\"modExhaust\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":21,\"modSpoilers\":-1,\"modBrakes\":0,\"modSideSkirt\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":1,\"modHood\":-1,\"modTransmission\":0,\"modBackWheels\":-1,\"model\":941800958,\"extras\":{\"2\":true},\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:110000107ab50c3', 1, 'RHK 466', '{\"modHydrolic\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modFrame\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modEngine\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modRearBumper\":-1,\"windowTint\":-1,\"modSteeringWheel\":-1,\"neonColor\":[255,0,255],\"model\":2046537925,\"modExhaust\":-1,\"modHood\":-1,\"plate\":\"RHK 466\",\"color2\":134,\"color1\":134,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modRoof\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"modArchCover\":-1,\"health\":1000,\"modTransmission\":-1,\"modTank\":-1,\"dirtLevel\":1.0,\"modStruts\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"pearlescentColor\":0,\"modArmor\":-1,\"extras\":{\"2\":false,\"1\":true},\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modTurbo\":false,\"modLivery\":5,\"wheels\":1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modDial\":-1}', 'car', 'police', 1),
('steam:11000011a003c28', 0, 'UDI 548', '{\"modFrontWheels\":-1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"dirtLevel\":13.00001335144,\"modAPlate\":-1,\"modGrille\":-1,\"color2\":27,\"health\":1000,\"modHorns\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"plateIndex\":0,\"modSeats\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"modTransmission\":-1,\"modLivery\":-1,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modShifterLeavers\":-1,\"wheelColor\":156,\"wheels\":6,\"modXenon\":false,\"modSideSkirt\":-1,\"pearlescentColor\":38,\"modOrnaments\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modSpeakers\":-1,\"modArmor\":-1,\"modAerials\":-1,\"color1\":0,\"modEngineBlock\":-1,\"extras\":[],\"modWindows\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"model\":86520421,\"modStruts\":-1,\"modHydrolic\":-1,\"modFender\":-1,\"modTank\":-1,\"neonColor\":[255,0,255],\"windowTint\":-1,\"modTurbo\":false,\"plate\":\"UDI 548\",\"modAirFilter\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1}', 'car', NULL, 0),
('steam:1100001185f7588', 1, 'WND 464', '{\"modTransmission\":-1,\"health\":1000,\"modOrnaments\":-1,\"modSpeakers\":-1,\"model\":-1216765807,\"modShifterLeavers\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modEngine\":-1,\"modTrimB\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modHydrolic\":-1,\"modDoorSpeaker\":-1,\"pearlescentColor\":37,\"modAerials\":-1,\"color1\":29,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modAPlate\":-1,\"modTurbo\":false,\"wheelColor\":156,\"modDashboard\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"plate\":\"WND 464\",\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"10\":false,\"1\":true,\"12\":true},\"modGrille\":-1,\"modRoof\":-1,\"modTrimA\":-1,\"wheels\":7,\"modSteeringWheel\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"plateIndex\":0,\"modRightFender\":-1,\"modFrame\":-1,\"modArmor\":-1,\"modDial\":-1,\"modAirFilter\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"dirtLevel\":8.6539545059204,\"modArchCover\":-1,\"color2\":38,\"modHorns\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:11000010c3fa6a8', 0, 'XEF 024', '{\"modTransmission\":-1,\"health\":0,\"modOrnaments\":-1,\"modSpeakers\":-1,\"model\":2123327359,\"modShifterLeavers\":-1,\"neonEnabled\":[1,1,1,1],\"wheelColor\":0,\"modTrimA\":-1,\"modAPlate\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modFrontBumper\":-1,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"pearlescentColor\":5,\"modAerials\":-1,\"color1\":27,\"windowTint\":-1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modXenon\":false,\"modSuspension\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modDial\":-1,\"extras\":[],\"modGrille\":-1,\"modRoof\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"modSeats\":-1,\"modPlateHolder\":-1,\"neonColor\":[153,0,153],\"modRightFender\":-1,\"modFender\":-1,\"modArmor\":-1,\"modFrame\":-1,\"wheels\":7,\"modWindows\":-1,\"plate\":\"XEF 024\",\"modFrontWheels\":-1,\"dirtLevel\":5.7586965560914,\"modArchCover\":-1,\"modTank\":-1,\"color2\":1,\"modTrunk\":-1,\"modHydrolic\":-1,\"modHood\":-1,\"modSpoilers\":-1}', 'car', NULL, 0),
('steam:11000011c633ba3', 0, 'ZLR 968', '{\"modTurbo\":1,\"modBackWheels\":-1,\"modHood\":-1,\"modGrille\":-1,\"plateIndex\":0,\"dirtLevel\":8.3317193984986,\"modTransmission\":2,\"modEngineBlock\":-1,\"pearlescentColor\":145,\"modSmokeEnabled\":1,\"plate\":\"ZLR 968\",\"modOrnaments\":-1,\"modArchCover\":-1,\"modExhaust\":-1,\"modAPlate\":-1,\"health\":985,\"wheels\":1,\"modArmor\":4,\"modSeats\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modFrontBumper\":-1,\"modXenon\":false,\"color2\":0,\"color1\":142,\"modFrame\":-1,\"modLivery\":-1,\"modFender\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"modEngine\":3,\"modSideSkirt\":-1,\"modSteeringWheel\":-1,\"modBrakes\":2,\"neonColor\":[255,0,255],\"modSpeakers\":-1,\"modTank\":-1,\"windowTint\":-1,\"modTrimB\":-1,\"modRoof\":-1,\"modTrimA\":-1,\"neonEnabled\":[false,false,false,false],\"modDashboard\":-1,\"wheelColor\":90,\"modDial\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modRightFender\":-1,\"model\":-831834716,\"modHorns\":-1,\"modTrunk\":-1,\"modSuspension\":3,\"modAerials\":-1,\"extras\":[],\"modWindows\":-1}', 'car', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num refÃ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DÃ©fini si on est Ã  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '496-4998', '961-0097', 1, '2019-05-13 23:11:13', 1),
(123, '961-0097', '496-4998', 0, '2019-05-13 23:11:13', 1),
(124, '631-0583', '973-6042', 1, '2019-05-15 02:35:11', 1),
(125, '973-6042', '631-0583', 0, '2019-05-15 02:35:11', 1),
(126, '973-6042', '631-0583', 1, '2019-05-15 02:35:34', 0),
(127, '631-0583', '973-6042', 0, '2019-05-15 02:35:34', 0),
(128, '488-3242', '637-0583', 1, '2019-05-15 02:53:28', 0),
(129, '488-3242', '637-0583', 1, '2019-05-15 02:53:55', 0),
(130, '631-0583', '637-0583', 1, '2019-05-15 02:55:52', 0),
(131, '488-3242', '637-0583', 1, '2019-05-15 02:56:15', 0),
(132, '488-3242', '637-0583', 1, '2019-05-15 02:57:43', 0),
(133, '631-0583', '488-3242', 1, '2019-05-15 03:05:42', 0),
(134, '488-3242', '631-0583', 0, '2019-05-15 03:05:42', 0),
(135, '488-3242', '631-0583', 1, '2019-05-15 03:06:11', 0),
(136, '631-0583', '488-3242', 0, '2019-05-15 03:06:11', 0),
(137, '488-3242', '631-0583', 1, '2019-05-15 03:14:06', 0),
(138, '631-0583', '488-3242', 0, '2019-05-15 03:14:06', 0),
(139, '488-3242', '637-0583', 1, '2019-05-15 03:14:33', 0),
(140, '488-3242', '637-0583', 1, '2019-05-15 03:15:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'police', '961-0097', 'De #961-0097 : test', '2019-05-13 17:49:11', 1, 0),
(107, 'police', '961-0097', 'GPS: -46.209377288818, -781.21069335938', '2019-05-13 17:49:11', 1, 0),
(108, 'police', '961-0097', 'De #961-0097 : test', '2019-05-13 17:49:23', 1, 0),
(109, 'police', '961-0097', 'GPS: -44.494205474854, -781.89184570312', '2019-05-13 17:49:23', 1, 0),
(110, '496-4998', '961-0097', 'sdfsdfsdf', '2019-05-13 23:10:46', 1, 0),
(111, '496-4998', '961-0097', 'sdfsdfsdfsdf', '2019-05-13 23:10:55', 1, 0),
(112, '496-4998', '961-0097', 'aaaaaaaaaaa', '2019-05-13 23:10:58', 1, 0),
(113, '496-4998', '961-0097', 'aaaaaaaaaaaaaaa', '2019-05-13 23:11:01', 1, 0),
(114, '496-4998', '961-0097', 'baha', '2019-05-13 23:12:06', 1, 0),
(115, '961-0097', '496-4998', 'test', '2019-05-13 23:36:15', 1, 0),
(116, '496-4998', '961-0097', 'ggggg', '2019-05-13 23:36:23', 1, 0),
(117, '961-0097', '496-4998', 'GPS: -375.86706542969, -141.13803100586', '2019-05-13 23:36:50', 1, 0),
(118, '961-0097', '496-4998', 'GPS: -375.86706542969, -141.13803100586', '2019-05-13 23:36:52', 1, 0),
(119, '961-0097', '496-4998', 'GPS: -375.86706542969, -141.13803100586', '2019-05-13 23:36:53', 1, 0),
(120, '961-0097', '496-4998', 'GPS: -365.90481567383, -137.0592956543', '2019-05-14 01:04:46', 1, 0),
(121, '496-4998', '961-0097', 'hamdi', '2019-05-14 23:44:19', 1, 0),
(122, '961-0097', '496-4998', 'test', '2019-05-14 23:44:28', 1, 0),
(123, '496-4998', '961-0097', 'aaaaaaaa', '2019-05-14 23:45:04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(7, 'steam:110000107ab50c3', '444', 'Test'),
(8, 'steam:11000010ac0f9f7', '961-0097', 'Nouveau Contact'),
(9, 'steam:1100001076e9bab', '', 'Nouveau Contact'),
(10, 'steam:1100001076e9bab', '', 'Nouveau Contact'),
(11, 'steam:1100001185f7588', '488-3242', 'Nabla');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement SÃ©duisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement SÃ©duisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement SÃ©duisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement RÃ©gal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement RÃ©gal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement RÃ©gal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'bread', 30),
(8, 'TwentyFourSeven', 'water', 15),
(9, 'RobsLiquor', 'bread', 30),
(10, 'RobsLiquor', 'water', 15),
(11, 'LTDgasoline', 'bread', 30),
(12, 'LTDgasoline', 'water', 15),
(13, 'TwentyFourSeven', 'drill', 1000),
(14, 'RobsLiquor', 'drill', 1000),
(15, 'LTDgasoline', 'drill', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` longtext COLLATE utf8mb4_bin,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `isDead` bit(1) DEFAULT b'0',
  `jail` int(11) NOT NULL DEFAULT '0',
  `status` longtext COLLATE utf8mb4_bin,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `isDead`, `jail`, `status`, `phone_number`, `tattoos`, `last_property`) VALUES
('steam:110000107ab50c3', 'license:1183badde75f3a1ea76fc0e95f0c17ca1701b3d5', 499850, 'Hamdi Guerbej', '{\"moles_2\":0,\"beard_3\":0,\"decals_2\":0,\"watches_2\":0,\"bodyb_2\":0,\"bodyb_1\":0,\"makeup_1\":0,\"watches_1\":-1,\"torso_1\":0,\"makeup_2\":0,\"tshirt_2\":0,\"bracelets_2\":0,\"age_2\":0,\"skin\":0,\"glasses_1\":0,\"sun_1\":0,\"blush_3\":0,\"mask_1\":0,\"blemishes_2\":0,\"sun_2\":0,\"mask_2\":0,\"chest_3\":0,\"hair_color_1\":1,\"bags_2\":0,\"blemishes_1\":0,\"glasses_2\":0,\"hair_color_2\":4,\"sex\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"chest_1\":0,\"moles_1\":0,\"decals_1\":0,\"eyebrows_2\":0,\"lipstick_2\":0,\"bags_1\":0,\"lipstick_4\":0,\"age_1\":0,\"helmet_1\":-1,\"eyebrows_1\":0,\"bproof_2\":0,\"bproof_1\":0,\"complexion_2\":0,\"hair_1\":10,\"pants_1\":0,\"shoes_1\":0,\"ears_2\":0,\"helmet_2\":0,\"blush_2\":0,\"torso_2\":0,\"arms_2\":0,\"face\":0,\"arms\":0,\"blush_1\":0,\"lipstick_1\":0,\"shoes_2\":0,\"lipstick_3\":0,\"hair_2\":0,\"chest_2\":0,\"makeup_3\":0,\"chain_2\":0,\"eye_color\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"pants_2\":0,\"complexion_1\":0,\"makeup_4\":0,\"chain_1\":0,\"beard_2\":0,\"bracelets_1\":-1,\"beard_1\":0,\"beard_4\":0}', 'police', 4, '[{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Batte\"},{\"ammo\":230,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":230,\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\",\"suppressor\"],\"label\":\"Pistolet automatique\"},{\"ammo\":0,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[\"suppressor\"],\"label\":\"Fusil à pompe\"},{\"ammo\":103,\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Fusil d\'assaut\"},{\"ammo\":103,\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"],\"label\":\"Carabine d\'assaut\"},{\"ammo\":103,\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_default\",\"suppressor\"],\"label\":\"Fusil avancé\"},{\"ammo\":103,\"name\":\"WEAPON_SPECIALCARBINE\",\"components\":[\"clip_default\"],\"label\":\"Carabine spéciale\"},{\"ammo\":0,\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"label\":\"Fusil de sniper\"},{\"ammo\":12,\"name\":\"WEAPON_GRENADE\",\"components\":[],\"label\":\"Grenade\"},{\"ammo\":14,\"name\":\"WEAPON_FIREWORK\",\"components\":[],\"label\":\"Feu d\'artifice\"},{\"ammo\":100,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Tazer\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Lampe torche\"}]', '{\"y\":-976.3999999999,\"x\":-258.0,\"z\":31.199999999998}', 49843578, 0, 'admin', 'Hamdi', 'Guerbej', '1996-09-14', 'm', '175', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":38.19,\"val\":381900},{\"name\":\"thirst\",\"percent\":41.1425,\"val\":411425},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '961-0097', NULL, NULL),
('steam:11000010ac0f9f7', 'license:2500a4ef84c733b8818cbcb541be631351155fb8', 994081900, 'Baha Jemni', '{\"beard_3\":0,\"bags_1\":0,\"lipstick_4\":0,\"makeup_2\":0,\"sex\":0,\"age_1\":0,\"ears_1\":-1,\"hair_color_1\":0,\"eyebrows_2\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"mask_1\":0,\"bodyb_2\":0,\"shoes_1\":15,\"blush_3\":0,\"glasses_1\":5,\"eye_color\":0,\"lipstick_2\":0,\"pants_1\":13,\"hair_2\":0,\"sun_1\":0,\"bodyb_1\":0,\"chest_3\":0,\"bproof_2\":0,\"eyebrows_1\":0,\"beard_1\":10,\"makeup_3\":0,\"blush_2\":0,\"shoes_2\":1,\"blemishes_1\":0,\"torso_2\":0,\"chain_2\":0,\"glasses_2\":5,\"arms_2\":0,\"chain_1\":0,\"eyebrows_4\":0,\"age_2\":0,\"watches_1\":-1,\"mask_2\":0,\"bracelets_1\":-1,\"decals_2\":0,\"helmet_1\":-1,\"hair_color_2\":0,\"lipstick_3\":0,\"moles_2\":0,\"bracelets_2\":0,\"complexion_1\":0,\"blemishes_2\":0,\"decals_1\":0,\"watches_2\":0,\"hair_1\":55,\"complexion_2\":0,\"ears_2\":0,\"chest_2\":0,\"helmet_2\":0,\"chest_1\":0,\"makeup_1\":0,\"pants_2\":0,\"beard_4\":0,\"bags_2\":0,\"blush_1\":0,\"torso_1\":166,\"lipstick_1\":0,\"beard_2\":10,\"arms\":0,\"moles_1\":0,\"face\":0,\"bproof_1\":0,\"sun_2\":0,\"tshirt_2\":5,\"tshirt_1\":64,\"skin\":0}', 'cardealer', 0, '[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Matraque\"},{\"ammo\":0,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":0,\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet automatique\"},{\"ammo\":24,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[\"flashlight\",\"suppressor\"],\"label\":\"Fusil à pompe\"},{\"ammo\":0,\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_extended\",\"flashlight\",\"scope\",\"suppressor\"],\"label\":\"Fusil avancé\"},{\"ammo\":100,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Tazer\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Lampe torche\"}]', '{\"y\":-1462.2000000002,\"x\":-241.59999999998,\"z\":32.0}', 1004400, 0, 'admin', 'Baha', 'Jemni', '02/10/1996', 'm', '180', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":41.18,\"val\":411800},{\"name\":\"thirst\",\"percent\":43.385,\"val\":433850},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '496-4998', NULL, NULL),
('steam:110000111df87ef', 'license:c07bd2c1d5e1cc83210026632c91bf05987c2f2a', 0, 'Firas Samaali', NULL, 'unemployed', 0, '[]', '{\"x\":1603.2000000002,\"y\":6622.8000000008,\"z\":15.8}', 0, 0, 'user', 'FIRAS', 'SAMAALI', '19990414', 'm', '150', b'0', 0, '[{\"percent\":98.11,\"name\":\"hunger\",\"val\":981100},{\"percent\":98.5825,\"name\":\"thirst\",\"val\":985825},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', '603-9322', NULL, NULL),
('steam:1100001168601f7', 'license:29e4ce98098476992085142322b538722b98de0f', 0, 'Aziz Missaoui', '{\"age_2\":0,\"shoes_2\":0,\"bracelets_2\":0,\"helmet_2\":0,\"torso_2\":0,\"beard_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"chest_2\":0,\"decals_1\":0,\"arms\":0,\"hair_2\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"makeup_1\":0,\"moles_1\":0,\"eyebrows_3\":0,\"beard_2\":0,\"chest_3\":0,\"eye_color\":0,\"mask_2\":0,\"complexion_1\":0,\"eyebrows_4\":0,\"torso_1\":0,\"pants_2\":0,\"chain_2\":0,\"bproof_1\":0,\"lipstick_3\":0,\"ears_1\":-1,\"face\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"makeup_2\":0,\"makeup_3\":0,\"lipstick_2\":0,\"lipstick_4\":0,\"ears_2\":0,\"beard_4\":0,\"watches_2\":0,\"shoes_1\":0,\"makeup_4\":0,\"age_1\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"sex\":0,\"beard_3\":0,\"moles_2\":0,\"chain_1\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"watches_1\":-1,\"chest_1\":0,\"bracelets_1\":-1,\"glasses_1\":0,\"hair_1\":0,\"pants_1\":0,\"glasses_2\":0,\"tshirt_1\":0,\"complexion_2\":0,\"eyebrows_1\":0,\"blush_3\":0,\"tshirt_2\":0,\"arms_2\":0,\"skin\":0,\"bags_2\":0,\"sun_2\":0,\"blush_1\":0,\"helmet_1\":-1,\"mask_1\":0,\"bags_1\":0,\"sun_1\":0,\"blush_2\":0}', 'unemployed', 0, '[]', '{\"x\":723.80000000004,\"y\":945.80000000004,\"z\":260.0}', 0, 0, 'user', 'Aziz', 'Missaoui', '2002-2-22', 'm', '180', b'0', 0, '[{\"percent\":99.01,\"name\":\"hunger\",\"val\":990100},{\"percent\":99.2575,\"name\":\"thirst\",\"val\":992575},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', '171-9674', NULL, NULL),
('steam:110000118d99bfd', 'license:f7790e1f703653892a11ea30072df6ae6ba6b314', 9000, 'Hamza Mohamed', '{\"bproof_2\":0,\"lipstick_4\":0,\"pants_2\":0,\"skin\":0,\"makeup_2\":0,\"face\":0,\"tshirt_2\":0,\"helmet_2\":0,\"mask_2\":0,\"blush_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"shoes_1\":1,\"eyebrows_2\":8,\"beard_3\":0,\"bproof_1\":0,\"makeup_3\":0,\"blush_1\":0,\"lipstick_3\":0,\"beard_1\":11,\"pants_1\":10,\"arms\":26,\"complexion_1\":0,\"glasses_1\":7,\"ears_1\":-1,\"chain_2\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"beard_4\":0,\"moles_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"chain_1\":0,\"sex\":0,\"hair_2\":0,\"age_2\":0,\"hair_1\":4,\"sun_1\":0,\"arms_2\":0,\"tshirt_1\":15,\"chest_1\":0,\"torso_1\":43,\"age_1\":0,\"bags_1\":0,\"bodyb_2\":0,\"ears_2\":0,\"blemishes_2\":0,\"moles_1\":0,\"bracelets_2\":0,\"beard_2\":3,\"complexion_2\":0,\"hair_color_1\":0,\"watches_1\":-1,\"lipstick_2\":0,\"hair_color_2\":0,\"torso_2\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"chest_2\":0,\"watches_2\":0,\"blush_3\":0,\"makeup_4\":0,\"bags_2\":0,\"eye_color\":0,\"decals_2\":0,\"decals_1\":0,\"eyebrows_3\":0,\"makeup_1\":0}', 'police', 3, '[{\"ammo\":0,\"label\":\"Matraque\",\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":79,\"label\":\"Pistolet automatique\",\"components\":[\"clip_default\",\"flashlight\"],\"name\":\"WEAPON_APPISTOL\"},{\"ammo\":100,\"label\":\"Tazer\",\"components\":[],\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":0,\"label\":\"Lampe torche\",\"components\":[],\"name\":\"WEAPON_FLASHLIGHT\"}]', '{\"y\":-978.80000000004,\"x\":425.0,\"z\":30.800000000002}', 140326, 0, 'user', 'Hamza', 'Mohamed', '01/01/1989', 'm', '180', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":60.9,\"val\":609000},{\"name\":\"thirst\",\"percent\":70.675,\"val\":706750},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '881-4468', NULL, NULL),
('steam:11000010c3fa6a8', 'license:90e62edfacd005641effe05786ab553ff276db33', 217885823, 'abbes sahraoui', '{\"bproof_2\":0,\"lipstick_4\":0,\"pants_2\":0,\"skin\":0,\"makeup_2\":0,\"face\":0,\"tshirt_2\":0,\"helmet_2\":0,\"mask_2\":0,\"blush_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"shoes_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"bproof_1\":0,\"makeup_3\":0,\"blush_1\":0,\"lipstick_3\":0,\"beard_1\":0,\"pants_1\":0,\"arms\":0,\"decals_2\":0,\"glasses_1\":0,\"torso_2\":0,\"chain_2\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"beard_4\":0,\"moles_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"eyebrows_3\":0,\"lipstick_1\":0,\"chain_1\":0,\"sex\":0,\"hair_2\":0,\"age_2\":0,\"hair_1\":0,\"watches_1\":-1,\"arms_2\":0,\"beard_2\":0,\"chest_1\":0,\"torso_1\":0,\"blush_3\":0,\"bags_1\":0,\"age_1\":0,\"tshirt_1\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"ears_1\":-1,\"moles_1\":0,\"chest_3\":0,\"decals_1\":0,\"hair_color_2\":0,\"sun_1\":0,\"bodyb_2\":0,\"bracelets_1\":-1,\"chest_2\":0,\"makeup_4\":0,\"hair_color_1\":0,\"eye_color\":0,\"bags_2\":0,\"watches_2\":0,\"ears_2\":0,\"complexion_1\":0,\"shoes_2\":0,\"makeup_1\":0}', 'unemployed', 0, '[{\"ammo\":42,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":34,\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Fusil d\'assaut\"},{\"ammo\":34,\"name\":\"WEAPON_SPECIALCARBINE\",\"components\":[\"clip_default\"],\"label\":\"Carabine spéciale\"},{\"ammo\":84,\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"label\":\"Fusil de sniper\"},{\"ammo\":4500,\"name\":\"WEAPON_PETROLCAN\",\"components\":[],\"label\":\"Jerrican d\'essence\"},{\"ammo\":9,\"name\":\"WEAPON_FIREWORK\",\"components\":[],\"label\":\"Feu d\'artifice\"}]', '{\"y\":-962.3999999999,\"x\":-268.19999999996,\"z\":34.399999999994}', 4200, 0, 'user', 'Abbes Nafti ', 'Abbes', '02/09/1992', 'm', '194', b'1', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":22.42,\"val\":224200},{\"name\":\"thirst\",\"percent\":34.315,\"val\":343150},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '848-8215', NULL, NULL),
('steam:11000011b7ba88c', 'license:de9a85be861e51e7cf910016b585eff43772cb9f', 0, 'Baroudi Mourad', '{\"bproof_2\":0,\"lipstick_4\":0,\"pants_2\":0,\"skin\":5,\"makeup_2\":0,\"face\":44,\"tshirt_2\":3,\"helmet_2\":0,\"mask_2\":0,\"blush_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"shoes_1\":43,\"eyebrows_2\":0,\"beard_3\":0,\"bproof_1\":0,\"makeup_3\":0,\"blush_1\":0,\"lipstick_3\":0,\"ears_2\":0,\"pants_1\":10,\"arms\":0,\"blush_3\":0,\"glasses_1\":0,\"ears_1\":-1,\"chain_2\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"beard_4\":0,\"moles_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"chain_1\":0,\"sex\":0,\"hair_2\":2,\"age_2\":0,\"hair_1\":14,\"sun_1\":0,\"arms_2\":0,\"tshirt_1\":26,\"chest_1\":0,\"torso_1\":70,\"torso_2\":7,\"bags_1\":0,\"hair_color_1\":1,\"decals_2\":0,\"blemishes_2\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"complexion_1\":0,\"complexion_2\":0,\"bracelets_2\":0,\"moles_1\":0,\"decals_1\":2,\"hair_color_2\":1,\"chest_2\":0,\"eye_color\":0,\"bracelets_1\":-1,\"shoes_2\":1,\"makeup_4\":0,\"beard_2\":0,\"age_1\":0,\"bags_2\":0,\"bodyb_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"watches_2\":0,\"makeup_1\":0}', 'unemployed', 0, '[{\"ammo\":0,\"components\":[\"clip_default\"],\"label\":\"Pistolet\",\"name\":\"WEAPON_PISTOL\"}]', '{\"x\":-582.19999999996,\"y\":-475.0,\"z\":25.199999999998}', 800, 0, 'user', 'BaR0uDi', 'M0uRaD', '12/06/1995', 'm', '192', b'1', 0, '[{\"name\":\"hunger\",\"val\":855000,\"percent\":85.5},{\"name\":\"thirst\",\"val\":891250,\"percent\":89.125},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', '616-7653', NULL, NULL),
('steam:110000116a86ad6', 'license:9e2f8079f90dc0a2b5276f13d318fd8214a53348', 0, 'Stanix Attardi', '{\"bproof_2\":0,\"lipstick_4\":0,\"pants_2\":0,\"skin\":5,\"makeup_2\":0,\"face\":44,\"tshirt_2\":0,\"helmet_2\":0,\"mask_2\":0,\"blush_2\":0,\"mask_1\":0,\"blemishes_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"shoes_1\":15,\"eyebrows_2\":0,\"beard_3\":0,\"bproof_1\":0,\"makeup_3\":0,\"blush_1\":0,\"lipstick_3\":0,\"beard_1\":0,\"pants_1\":10,\"arms\":1,\"decals_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"chain_2\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"beard_4\":0,\"moles_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"bracelets_2\":0,\"lipstick_1\":0,\"chain_1\":0,\"moles_1\":0,\"hair_2\":3,\"age_2\":0,\"hair_1\":3,\"sun_1\":0,\"arms_2\":0,\"tshirt_1\":3,\"chest_1\":0,\"torso_1\":10,\"complexion_1\":0,\"bags_1\":0,\"hair_color_1\":60,\"chest_2\":0,\"blemishes_2\":0,\"eye_color\":0,\"blush_3\":0,\"age_1\":0,\"ears_2\":0,\"complexion_2\":0,\"sex\":0,\"lipstick_2\":0,\"hair_color_2\":2,\"eyebrows_3\":0,\"watches_1\":-1,\"bracelets_1\":-1,\"shoes_2\":0,\"makeup_4\":0,\"beard_2\":0,\"torso_2\":0,\"bags_2\":0,\"bodyb_2\":0,\"watches_2\":0,\"decals_1\":0,\"chest_3\":0,\"makeup_1\":0}', 'unemployed', 0, '[]', '{\"x\":-1790.4,\"y\":-335.19999999996,\"z\":44.399999999994}', 0, 0, 'user', 'Stanix ', 'Attardi', '02/10/1995', 'm', '194', b'0', 0, '[{\"name\":\"hunger\",\"val\":979100,\"percent\":97.91},{\"name\":\"thirst\",\"val\":984325,\"percent\":98.4325},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', '801-0050', NULL, NULL),
('steam:1100001039f15a2', 'license:25355081c167dbc118cc619abb38633122f7e5a7', 0, 'Yassine Souissi', NULL, 'unemployed', 0, NULL, NULL, 200, 0, 'user', 'Yassine', 'Souissi', '30/10/1994', 'm', '177', b'0', 0, NULL, '361-7286', NULL, NULL),
('steam:11000011b181afe', 'license:3384dbc90503464dbfbb752d0d8adbc230cc8f99', 500030, 'Moez Sidhom', '{\"eye_color\":0,\"eyebrows_2\":0,\"tshirt_2\":0,\"beard_4\":0,\"beard_3\":0,\"bags_2\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"helmet_2\":0,\"blush_3\":0,\"hair_color_1\":0,\"moles_2\":0,\"blush_2\":0,\"pants_1\":0,\"watches_1\":-1,\"sun_2\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"lipstick_1\":0,\"makeup_3\":0,\"ears_2\":0,\"mask_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"hair_2\":1,\"blush_1\":0,\"torso_1\":0,\"glasses_2\":0,\"age_2\":0,\"face\":0,\"skin\":1,\"pants_2\":0,\"bproof_2\":0,\"sun_1\":0,\"bodyb_2\":0,\"age_1\":0,\"ears_1\":-1,\"sex\":1,\"chest_3\":0,\"shoes_1\":0,\"mask_1\":0,\"decals_2\":0,\"lipstick_3\":0,\"beard_1\":0,\"watches_2\":0,\"eyebrows_3\":0,\"moles_1\":0,\"glasses_1\":0,\"decals_1\":0,\"beard_2\":0,\"blemishes_2\":0,\"makeup_2\":0,\"makeup_1\":0,\"bodyb_1\":0,\"arms_2\":0,\"makeup_4\":0,\"shoes_2\":0,\"bracelets_2\":0,\"hair_color_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"chest_1\":0,\"hair_1\":1,\"chest_2\":0,\"torso_2\":0,\"lipstick_4\":0,\"helmet_1\":-1,\"arms\":0,\"blemishes_1\":0,\"chain_1\":0,\"bags_1\":0,\"tshirt_1\":0}', 'police', 4, '[{\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Matraque\",\"ammo\":0}]', '{\"z\":31.400000000002,\"x\":-223.79999999998,\"y\":-1399.7999999998}', 5700, 100, 'admin', 'Moez', 'Sidhom', '1995-20-06', 'm', '172', b'0', 0, '[]', '916-0719', NULL, NULL),
('steam:11000010dafab63', 'license:f690b2a2bd105553938bc12e159faf3def8c1d55', 0, 'firas khou l3ajmi bidou', NULL, 'unemployed', 0, '[]', '{\"y\":1872.4,\"x\":-2614.4000000004,\"z\":167.40000000002}', 0, 0, 'user', '', '', '', '', '', b'0', 0, '[]', '922-6258', NULL, NULL),
('steam:11000011c633ba3', 'license:26a9bc7bb1c8816e6ea960a5b1fc919e023c993e', 995908882, 'marwen fadhleoui', '{\"pants_2\":1,\"helmet_2\":0,\"moles_2\":0,\"ears_1\":-1,\"blemishes_1\":0,\"glasses_1\":0,\"watches_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"bracelets_1\":-1,\"bags_1\":0,\"beard_4\":0,\"arms_2\":1,\"blush_1\":0,\"makeup_1\":0,\"moles_1\":0,\"makeup_3\":0,\"decals_1\":1,\"makeup_2\":0,\"complexion_1\":0,\"arms\":1,\"eyebrows_1\":0,\"watches_1\":-1,\"mask_1\":0,\"makeup_4\":0,\"beard_1\":0,\"chest_2\":0,\"decals_2\":0,\"bproof_1\":0,\"mask_2\":0,\"helmet_1\":-1,\"sex\":0,\"blemishes_2\":0,\"bodyb_2\":0,\"chest_1\":0,\"eye_color\":0,\"sun_2\":0,\"tshirt_1\":1,\"hair_1\":14,\"chain_2\":0,\"glasses_2\":0,\"face\":0,\"bracelets_2\":0,\"ears_2\":0,\"skin\":1,\"hair_2\":4,\"bags_2\":0,\"sun_1\":0,\"complexion_2\":0,\"blush_3\":0,\"bproof_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"beard_3\":0,\"lipstick_2\":0,\"blush_2\":0,\"hair_color_2\":4,\"eyebrows_2\":0,\"beard_2\":0,\"tshirt_2\":1,\"hair_color_1\":7,\"lipstick_3\":0,\"shoes_1\":0,\"torso_2\":0,\"torso_1\":1,\"shoes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"age_1\":0,\"pants_1\":2,\"chain_1\":0}', 'unemployed', 0, '[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Matraque\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Batte\"},{\"ammo\":0,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":0,\"name\":\"WEAPON_MICROSMG\",\"components\":[\"clip_default\"],\"label\":\"Micro smg\"},{\"ammo\":5,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Fusil à pompe\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\",\"components\":[\"clip_default\"],\"label\":\"Carabine spéciale\"},{\"ammo\":69,\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"label\":\"Fusil de sniper\"},{\"ammo\":0,\"name\":\"WEAPON_SMOKEGRENADE\",\"components\":[],\"label\":\"Grenade fumigène\"},{\"ammo\":0,\"name\":\"WEAPON_FIREEXTINGUISHER\",\"components\":[],\"label\":\"Extincteur\"},{\"ammo\":4500,\"name\":\"WEAPON_PETROLCAN\",\"components\":[],\"label\":\"Jerrican d\'essence\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\",\"components\":[],\"label\":\"Balle\"},{\"ammo\":0,\"name\":\"WEAPON_FIREWORK\",\"components\":[],\"label\":\"Feu d\'artifice\"},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Tazer\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"components\":[],\"label\":\"Machette\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Lampe torche\"}]', '{\"y\":-101.79999999998,\"x\":-400.59999999998,\"z\":39.199999999998}', 4200, 0, 'user', 'Fadhleoui', 'Marwen', '1994', 'm', '175', b'1', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":15.36,\"val\":153600},{\"name\":\"thirst\",\"percent\":14.02,\"val\":140200},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '340-3537', '[{\"collection\":\"mphipster_overlays\",\"texture\":10},{\"collection\":\"mphipster_overlays\",\"texture\":11},{\"collection\":\"mphipster_overlays\",\"texture\":12},{\"collection\":\"mphipster_overlays\",\"texture\":13},{\"collection\":\"mphipster_overlays\",\"texture\":13},{\"collection\":\"mphipster_overlays\",\"texture\":14},{\"collection\":\"mphipster_overlays\",\"texture\":15},{\"collection\":\"mphipster_overlays\",\"texture\":16},{\"collection\":\"mphipster_overlays\",\"texture\":17},{\"collection\":\"mphipster_overlays\",\"texture\":18},{\"collection\":\"mphipster_overlays\",\"texture\":19},{\"collection\":\"mphipster_overlays\",\"texture\":19},{\"collection\":\"mphipster_overlays\",\"texture\":19},{\"collection\":\"mphipster_overlays\",\"texture\":19},{\"collection\":\"mphipster_overlays\",\"texture\":27},{\"collection\":\"mphipster_overlays\",\"texture\":27},{\"collection\":\"mphipster_overlays\",\"texture\":29},{\"collection\":\"mphipster_overlays\",\"texture\":30},{\"collection\":\"mphipster_overlays\",\"texture\":31},{\"collection\":\"mphipster_overlays\",\"texture\":32},{\"collection\":\"mphipster_overlays\",\"texture\":33},{\"collection\":\"mphipster_overlays\",\"texture\":34},{\"collection\":\"mphipster_overlays\",\"texture\":35},{\"collection\":\"mphipster_overlays\",\"texture\":36},{\"collection\":\"mphipster_overlays\",\"texture\":37},{\"collection\":\"mphipster_overlays\",\"texture\":39},{\"collection\":\"mphipster_overlays\",\"texture\":41},{\"collection\":\"mphipster_overlays\",\"texture\":42},{\"collection\":\"mphipster_overlays\",\"texture\":43},{\"collection\":\"mphipster_overlays\",\"texture\":44},{\"collection\":\"mphipster_overlays\",\"texture\":45},{\"collection\":\"mphipster_overlays\",\"texture\":46},{\"collection\":\"mphipster_overlays\",\"texture\":47},{\"collection\":\"mphipster_overlays\",\"texture\":48},{\"collection\":\"mphipster_overlays\",\"texture\":49},{\"collection\":\"mpgunrunning_overlays\",\"texture\":3},{\"collection\":\"mpgunrunning_overlays\",\"texture\":4},{\"collection\":\"mpgunrunning_overlays\",\"texture\":5},{\"collection\":\"mpgunrunning_overlays\",\"texture\":6},{\"collection\":\"mpgunrunning_overlays\",\"texture\":7},{\"collection\":\"mpgunrunning_overlays\",\"texture\":8},{\"collection\":\"mpgunrunning_overlays\",\"texture\":9},{\"collection\":\"mpgunrunning_overlays\",\"texture\":10},{\"collection\":\"mpgunrunning_overlays\",\"texture\":11},{\"collection\":\"mpgunrunning_overlays\",\"texture\":12},{\"collection\":\"mpgunrunning_overlays\",\"texture\":13},{\"collection\":\"mpgunrunning_overlays\",\"texture\":14}]', NULL),
('steam:110000110f0c0be', 'license:fc33392fd398939c4e409faa540a774fe9297d54', 0, 'Weld Moufida', '{\"chest_1\":0,\"helmet_2\":0,\"moles_2\":0,\"ears_1\":-1,\"sun_2\":0,\"glasses_1\":5,\"watches_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"bracelets_1\":-1,\"bags_1\":0,\"beard_4\":0,\"arms_2\":0,\"blush_1\":0,\"makeup_1\":0,\"beard_2\":0,\"makeup_3\":0,\"decals_1\":0,\"makeup_2\":0,\"complexion_1\":0,\"tshirt_1\":44,\"eyebrows_1\":0,\"watches_1\":-1,\"mask_1\":0,\"makeup_4\":0,\"blemishes_1\":0,\"chest_2\":0,\"blemishes_2\":0,\"helmet_1\":-1,\"hair_color_2\":0,\"blush_3\":0,\"sex\":0,\"pants_2\":0,\"beard_1\":0,\"hair_1\":14,\"bproof_1\":0,\"arms\":17,\"torso_1\":6,\"hair_color_1\":8,\"chain_2\":0,\"glasses_2\":0,\"face\":0,\"bracelets_2\":0,\"decals_2\":0,\"skin\":5,\"hair_2\":0,\"bags_2\":0,\"sun_1\":0,\"complexion_2\":0,\"shoes_2\":2,\"bproof_2\":0,\"chest_3\":0,\"lipstick_1\":0,\"beard_3\":0,\"lipstick_2\":0,\"blush_2\":0,\"age_1\":0,\"eyebrows_2\":0,\"moles_1\":0,\"tshirt_2\":0,\"ears_2\":0,\"bodyb_2\":0,\"lipstick_3\":0,\"mask_2\":0,\"shoes_1\":8,\"torso_2\":0,\"lipstick_4\":0,\"age_2\":0,\"pants_1\":33,\"eye_color\":0,\"chain_1\":0}', 'unemployed', 0, '[]', '{\"z\":31.199999999998,\"x\":-265.0,\"y\":-962.3999999999}', 200, 0, 'user', 'Wled', 'Moufida', '1993/10/28', 'm', '195', b'0', 0, '[]', '535-8169', NULL, NULL),
('steam:1100001185f7588', 'license:a49b86d98e7989afe5ec5a957b3d0952b76fd5f5', 219728, 'vidaLCEJ', NULL, 'reporter', 0, '[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Matraque\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Batte\"},{\"ammo\":250,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":201,\"name\":\"WEAPON_MICROSMG\",\"components\":[\"clip_default\"],\"label\":\"Micro smg\"},{\"ammo\":250,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Fusil à pompe\"},{\"ammo\":250,\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Fusil d\'assaut\"},{\"ammo\":250,\"name\":\"WEAPON_SPECIALCARBINE\",\"components\":[\"clip_default\"],\"label\":\"Carabine spéciale\"},{\"ammo\":250,\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"label\":\"Fusil de sniper\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\",\"components\":[],\"label\":\"Grenade\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\",\"components\":[],\"label\":\"Grenade fumigène\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\",\"components\":[],\"label\":\"Grenade à gaz bz\"},{\"ammo\":504,\"name\":\"WEAPON_FIREEXTINGUISHER\",\"components\":[],\"label\":\"Extincteur\"},{\"ammo\":4500,\"name\":\"WEAPON_PETROLCAN\",\"components\":[],\"label\":\"Jerrican d\'essence\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\",\"components\":[],\"label\":\"Balle\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\",\"components\":[],\"label\":\"Feu d\'artifice\"},{\"ammo\":250,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Tazer\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"components\":[],\"label\":\"Machette\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Lampe torche\"}]', '{\"y\":-793.19999999996,\"x\":213.79999999998,\"z\":30.800000000002}', 2989200, 0, 'user', 'Epeuuuu', 'Bakoush', '5.6.1996', 'm', '178', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":61.74,\"val\":617400},{\"name\":\"thirst\",\"percent\":71.305,\"val\":713050},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '631-0583', NULL, NULL),
('steam:1100001076e9bab', 'license:a6534e29831dd169ed364b22d45def52dd40c1e1', 0, 'SoNiic', '{\"blemishes_2\":0,\"pants_2\":0,\"skin\":0,\"moles_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"torso_1\":4,\"complexion_1\":0,\"beard_1\":0,\"bodyb_1\":0,\"beard_3\":0,\"blemishes_1\":0,\"chest_3\":0,\"arms_2\":0,\"bproof_1\":0,\"sun_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"makeup_3\":0,\"bags_1\":0,\"eyebrows_4\":0,\"tshirt_2\":14,\"hair_1\":0,\"watches_2\":0,\"age_2\":0,\"eye_color\":0,\"tshirt_1\":33,\"bracelets_2\":0,\"helmet_2\":0,\"bags_2\":0,\"chain_2\":0,\"beard_2\":0,\"blush_2\":0,\"lipstick_2\":0,\"glasses_1\":0,\"pants_1\":4,\"shoes_1\":1,\"ears_1\":-1,\"eyebrows_2\":0,\"hair_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"bodyb_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"beard_4\":0,\"blush_3\":0,\"chest_1\":0,\"watches_1\":-1,\"age_1\":0,\"shoes_2\":0,\"mask_2\":0,\"glasses_2\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"face\":0,\"hair_color_2\":0,\"moles_2\":0,\"sex\":0,\"helmet_1\":-1,\"decals_2\":0,\"chain_1\":0,\"chest_2\":0,\"hair_color_1\":0,\"sun_1\":0,\"bproof_2\":0,\"torso_2\":0,\"bracelets_1\":-1,\"blush_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"arms\":0}', 'taxi', 0, '[]', '{\"y\":-1005.6,\"x\":723.3999999999,\"z\":29.400000000002}', 4998998, 0, 'user', 'Hafnewi', 'Bougadfa', '1993/09/11', 'm', '186', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":78.31,\"val\":783100},{\"name\":\"thirst\",\"percent\":83.7325,\"val\":837325},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '973-6042', NULL, NULL),
('steam:11000011a003c28', 'license:09fe4de41bea14bf6ce8db9be1ec9eb18393c532', 988399247, 'FARES', '{\"blemishes_2\":0,\"pants_2\":0,\"skin\":0,\"moles_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"torso_1\":0,\"complexion_1\":0,\"beard_1\":0,\"bodyb_1\":0,\"beard_3\":0,\"blemishes_1\":0,\"chest_3\":0,\"arms_2\":0,\"bproof_1\":0,\"sun_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"makeup_3\":0,\"bags_1\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"watches_2\":0,\"age_2\":0,\"eye_color\":0,\"tshirt_1\":0,\"bracelets_2\":0,\"helmet_2\":0,\"bags_2\":0,\"chain_2\":0,\"beard_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"glasses_1\":0,\"pants_1\":0,\"shoes_1\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"hair_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"torso_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"blush_1\":0,\"blush_3\":0,\"chest_2\":0,\"watches_1\":-1,\"age_1\":0,\"beard_4\":0,\"blush_2\":0,\"chain_1\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"face\":0,\"hair_color_2\":0,\"decals_2\":0,\"sex\":0,\"helmet_1\":-1,\"chest_1\":0,\"arms\":0,\"bracelets_1\":-1,\"hair_color_1\":0,\"sun_1\":0,\"glasses_2\":0,\"hair_1\":0,\"mask_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"bproof_2\":0,\"shoes_2\":0}', 'unemployed', 0, '[{\"ammo\":0,\"label\":\"Matraque\",\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":0,\"label\":\"Batte\",\"components\":[],\"name\":\"WEAPON_BAT\"},{\"ammo\":0,\"label\":\"Micro smg\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":0,\"label\":\"Fusil à pompe\",\"components\":[],\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"label\":\"Fusil d\'assaut\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"label\":\"Carabine spéciale\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":5,\"label\":\"Grenade fumigène\",\"components\":[],\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":25,\"label\":\"Grenade à gaz bz\",\"components\":[],\"name\":\"WEAPON_BZGAS\"},{\"ammo\":84,\"label\":\"Extincteur\",\"components\":[],\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"ammo\":4500,\"label\":\"Jerrican d\'essence\",\"components\":[],\"name\":\"WEAPON_PETROLCAN\"},{\"ammo\":0,\"label\":\"Balle\",\"components\":[],\"name\":\"WEAPON_BALL\"},{\"ammo\":42,\"label\":\"Tazer\",\"components\":[],\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":0,\"label\":\"Machette\",\"components\":[],\"name\":\"WEAPON_MACHETE\"}]', '{\"y\":-107.20000000002,\"x\":-375.80000000004,\"z\":38.399999999994}', 84200, 0, 'user', 'Swagg', 'Man', '9-6-1987', 'm', '175', b'1', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":72.24,\"val\":722400},{\"name\":\"thirst\",\"percent\":79.3225,\"val\":793225},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '121-9267', '[{\"collection\":\"mpbusiness_overlays\",\"texture\":14},{\"collection\":\"mpbusiness_overlays\",\"texture\":14},{\"collection\":\"mpbusiness_overlays\",\"texture\":20},{\"collection\":\"mpbusiness_overlays\",\"texture\":21},{\"collection\":\"mpbusiness_overlays\",\"texture\":21},{\"collection\":\"mpbusiness_overlays\",\"texture\":22},{\"collection\":\"mpbusiness_overlays\",\"texture\":23},{\"collection\":\"mpbusiness_overlays\",\"texture\":24},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":26},{\"collection\":\"mpbusiness_overlays\",\"texture\":1},{\"collection\":\"mpbusiness_overlays\",\"texture\":3},{\"collection\":\"mpbusiness_overlays\",\"texture\":4},{\"collection\":\"mpbusiness_overlays\",\"texture\":5},{\"collection\":\"mpbusiness_overlays\",\"texture\":6},{\"collection\":\"mpbusiness_overlays\",\"texture\":7},{\"collection\":\"mpbusiness_overlays\",\"texture\":8},{\"collection\":\"mpbusiness_overlays\",\"texture\":9},{\"collection\":\"mpbusiness_overlays\",\"texture\":10},{\"collection\":\"mpbusiness_overlays\",\"texture\":11},{\"collection\":\"mpbusiness_overlays\",\"texture\":12},{\"collection\":\"mpbusiness_overlays\",\"texture\":17},{\"collection\":\"mpbusiness_overlays\",\"texture\":20},{\"collection\":\"mpbusiness_overlays\",\"texture\":23},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":1},{\"collection\":\"mpbusiness_overlays\",\"texture\":1},{\"collection\":\"mpbusiness_overlays\",\"texture\":2},{\"collection\":\"mpbusiness_overlays\",\"texture\":2},{\"collection\":\"mpbusiness_overlays\",\"texture\":3},{\"collection\":\"mpbusiness_overlays\",\"texture\":4},{\"collection\":\"mpbusiness_overlays\",\"texture\":5},{\"collection\":\"mpbusiness_overlays\",\"texture\":6},{\"collection\":\"mpbusiness_overlays\",\"texture\":6},{\"collection\":\"mpbusiness_overlays\",\"texture\":7},{\"collection\":\"mpbusiness_overlays\",\"texture\":8},{\"collection\":\"mpbusiness_overlays\",\"texture\":8},{\"collection\":\"mpbusiness_overlays\",\"texture\":9},{\"collection\":\"mpbusiness_overlays\",\"texture\":10},{\"collection\":\"mpbusiness_overlays\",\"texture\":11},{\"collection\":\"mpbusiness_overlays\",\"texture\":12},{\"collection\":\"mpbusiness_overlays\",\"texture\":12},{\"collection\":\"mpbusiness_overlays\",\"texture\":14},{\"collection\":\"mpbusiness_overlays\",\"texture\":15},{\"collection\":\"mpbusiness_overlays\",\"texture\":15},{\"collection\":\"mpbusiness_overlays\",\"texture\":16},{\"collection\":\"mpbusiness_overlays\",\"texture\":18},{\"collection\":\"mpbusiness_overlays\",\"texture\":19},{\"collection\":\"mpbusiness_overlays\",\"texture\":20},{\"collection\":\"mpbusiness_overlays\",\"texture\":21},{\"collection\":\"mpbusiness_overlays\",\"texture\":22},{\"collection\":\"mpbusiness_overlays\",\"texture\":24},{\"collection\":\"mpbusiness_overlays\",\"texture\":25},{\"collection\":\"mpbusiness_overlays\",\"texture\":26}]', NULL),
('steam:110000115014e4b', 'license:265dffcaa74c3585c75948bff14d14fdfded0bde', 0, 'Nabla', '{\"blemishes_2\":0,\"pants_2\":0,\"skin\":0,\"moles_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"torso_1\":0,\"complexion_1\":0,\"beard_1\":0,\"bodyb_1\":0,\"beard_3\":0,\"blemishes_1\":0,\"chest_3\":0,\"arms_2\":0,\"bproof_1\":0,\"sun_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"makeup_3\":0,\"bags_1\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"watches_2\":0,\"age_2\":0,\"torso_2\":0,\"tshirt_1\":0,\"bracelets_2\":0,\"helmet_2\":0,\"bags_2\":0,\"chain_2\":0,\"beard_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"glasses_1\":0,\"pants_1\":0,\"shoes_1\":0,\"ears_1\":-1,\"glasses_2\":0,\"hair_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"bracelets_1\":-1,\"makeup_1\":0,\"makeup_4\":0,\"beard_4\":0,\"blush_3\":0,\"blush_1\":0,\"watches_1\":-1,\"age_1\":0,\"shoes_2\":0,\"chest_2\":0,\"eye_color\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"face\":0,\"hair_color_2\":0,\"hair_1\":0,\"sex\":0,\"helmet_1\":-1,\"decals_2\":0,\"blush_2\":0,\"chest_1\":0,\"hair_color_1\":0,\"sun_1\":0,\"eyebrows_2\":0,\"ears_2\":0,\"chain_1\":0,\"bproof_2\":0,\"lipstick_1\":0,\"mask_2\":0,\"arms\":0}', 'unemployed', 0, '[]', '{\"y\":4802.5999999996,\"x\":2145.7999999998,\"z\":41.199999999998}', 1200, 0, 'user', 'Nabil', 'Hamdi', '1994-10-08', 'm', '170', b'1', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":76.98,\"val\":769800},{\"name\":\"thirst\",\"percent\":82.735,\"val\":827350},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '488-3242', NULL, NULL),
('steam:1100001360b2eb2', 'license:81830a4b5e5e67630d32d08016823cf5465f3438', 0, 'ghaith8000', NULL, 'unemployed', 0, '[]', '{\"y\":2754.7999999998,\"x\":2220.7999999998,\"z\":45.399999999994}', 200, 0, 'user', 'GHAITH', 'SASSI', '30/05/2002', 'm', '165', b'0', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":94.94,\"val\":949400},{\"name\":\"thirst\",\"percent\":96.205,\"val\":962050},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '893-5363', NULL, NULL),
('steam:1100001170fc149', 'license:47efe14df460cdda072f7aa521757c805c60779c', 777834505, 'Mohamed Karoui', '{\"blemishes_2\":0,\"pants_2\":2,\"skin\":0,\"moles_1\":0,\"decals_1\":0,\"lipstick_4\":0,\"torso_1\":69,\"complexion_1\":0,\"beard_1\":0,\"bodyb_1\":0,\"beard_3\":0,\"blemishes_1\":0,\"chest_3\":0,\"arms_2\":0,\"bproof_1\":0,\"sun_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"chest_2\":0,\"bags_1\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"watches_2\":0,\"age_2\":0,\"eye_color\":0,\"tshirt_1\":15,\"bracelets_2\":0,\"helmet_2\":0,\"bags_2\":0,\"chain_2\":0,\"beard_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"glasses_1\":0,\"pants_1\":4,\"shoes_1\":12,\"ears_1\":-1,\"eyebrows_2\":0,\"hair_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"ears_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"beard_4\":0,\"blush_3\":0,\"torso_2\":0,\"watches_1\":-1,\"age_1\":0,\"blush_2\":0,\"mask_2\":0,\"glasses_2\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"face\":0,\"hair_color_2\":9,\"hair_1\":43,\"sex\":0,\"helmet_1\":-1,\"chest_1\":0,\"bracelets_1\":-1,\"makeup_3\":0,\"hair_color_1\":2,\"sun_1\":0,\"bproof_2\":0,\"decals_2\":0,\"chain_1\":1,\"blush_1\":0,\"lipstick_1\":0,\"shoes_2\":0,\"arms\":18}', 'taxi', 0, '[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Matraque\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Batte\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistolet\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\",\"components\":[\"clip_default\"],\"label\":\"Micro smg\"},{\"ammo\":24,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Fusil à pompe\"},{\"ammo\":98,\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Fusil d\'assaut\"},{\"ammo\":12,\"name\":\"WEAPON_GRENADE\",\"components\":[],\"label\":\"Grenade\"},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Tazer\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"components\":[],\"label\":\"Machette\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Lampe torche\"}]', '{\"y\":-1097.4,\"x\":-49.199999999998,\"z\":26.400000000002}', 800, 0, 'user', 'Mohamed', 'Karoui', '18/12/1999', 'm', '183', b'1', 0, '[{\"name\":\"drug\",\"percent\":0.0,\"val\":0},{\"name\":\"hunger\",\"percent\":78.91,\"val\":789100},{\"name\":\"thirst\",\"percent\":84.1825,\"val\":841825},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', '992-6480', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:110000107ab50c3', 'black_money', 1580348),
(2, 'steam:11000010ac0f9f7', 'black_money', 0),
(3, 'steam:110000111df87ef', 'black_money', 0),
(4, 'steam:1100001168601f7', 'black_money', 0),
(5, 'steam:110000118d99bfd', 'black_money', 0),
(6, 'steam:11000010c3fa6a8', 'black_money', 0),
(7, 'steam:11000011b7ba88c', 'black_money', 0),
(8, 'steam:110000116a86ad6', 'black_money', 0),
(9, 'steam:1100001039f15a2', 'black_money', 0),
(10, 'steam:11000011b181afe', 'black_money', 0),
(11, 'steam:11000010dafab63', 'black_money', 0),
(12, 'steam:11000011c633ba3', 'black_money', 0),
(13, 'steam:110000110f0c0be', 'black_money', 0),
(14, 'steam:1100001185f7588', 'black_money', 0),
(15, 'steam:1100001076e9bab', 'black_money', 0),
(16, 'steam:11000011a003c28', 'black_money', 0),
(17, 'steam:110000115014e4b', 'black_money', 0),
(18, 'steam:1100001360b2eb2', 'black_money', 0),
(19, 'steam:1100001170fc149', 'black_money', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:110000107ab50c3', 'packaged_plank', 0),
(2, 'steam:110000107ab50c3', 'cutted_wood', 0),
(3, 'steam:110000107ab50c3', 'marijuana', 0),
(4, 'steam:110000107ab50c3', 'slaughtered_chicken', 0),
(5, 'steam:110000107ab50c3', 'petrol', 0),
(6, 'steam:110000107ab50c3', 'iron', 0),
(7, 'steam:110000107ab50c3', 'cannabis', 0),
(8, 'steam:110000107ab50c3', 'petrol_raffin', 0),
(9, 'steam:110000107ab50c3', 'essence', 0),
(10, 'steam:110000107ab50c3', 'fabric', 0),
(11, 'steam:110000107ab50c3', 'bandage', 0),
(12, 'steam:110000107ab50c3', 'wood', 0),
(13, 'steam:110000107ab50c3', 'medikit', 0),
(14, 'steam:110000107ab50c3', 'fish', 0),
(15, 'steam:110000107ab50c3', 'diamond', 0),
(16, 'steam:110000107ab50c3', 'washed_stone', 0),
(17, 'steam:110000107ab50c3', 'water', 0),
(18, 'steam:110000107ab50c3', 'wool', 0),
(19, 'steam:110000107ab50c3', 'bread', 0),
(20, 'steam:110000107ab50c3', 'gold', 0),
(21, 'steam:110000107ab50c3', 'packaged_chicken', 0),
(22, 'steam:110000107ab50c3', 'stone', 0),
(23, 'steam:110000107ab50c3', 'copper', 0),
(24, 'steam:110000107ab50c3', 'clothe', 0),
(25, 'steam:110000107ab50c3', 'alive_chicken', 0),
(26, 'steam:11000010ac0f9f7', 'petrol', 0),
(27, 'steam:11000010ac0f9f7', 'medikit', 0),
(28, 'steam:11000010ac0f9f7', 'iron', 0),
(29, 'steam:11000010ac0f9f7', 'slaughtered_chicken', 0),
(30, 'steam:11000010ac0f9f7', 'fabric', 0),
(31, 'steam:11000010ac0f9f7', 'copper', 0),
(32, 'steam:11000010ac0f9f7', 'bandage', 0),
(33, 'steam:11000010ac0f9f7', 'cutted_wood', 0),
(34, 'steam:11000010ac0f9f7', 'alive_chicken', 0),
(35, 'steam:11000010ac0f9f7', 'essence', 0),
(36, 'steam:11000010ac0f9f7', 'fish', 0),
(37, 'steam:11000010ac0f9f7', 'washed_stone', 0),
(38, 'steam:11000010ac0f9f7', 'wood', 0),
(39, 'steam:11000010ac0f9f7', 'water', 0),
(40, 'steam:11000010ac0f9f7', 'wool', 0),
(41, 'steam:11000010ac0f9f7', 'petrol_raffin', 0),
(42, 'steam:11000010ac0f9f7', 'gold', 0),
(43, 'steam:11000010ac0f9f7', 'marijuana', 0),
(44, 'steam:11000010ac0f9f7', 'stone', 0),
(45, 'steam:11000010ac0f9f7', 'diamond', 0),
(46, 'steam:11000010ac0f9f7', 'cannabis', 0),
(47, 'steam:11000010ac0f9f7', 'packaged_plank', 0),
(48, 'steam:11000010ac0f9f7', 'packaged_chicken', 0),
(49, 'steam:11000010ac0f9f7', 'bread', 0),
(50, 'steam:11000010ac0f9f7', 'clothe', 0),
(51, 'steam:110000111df87ef', 'stone', 0),
(52, 'steam:110000111df87ef', 'clothe', 0),
(53, 'steam:110000111df87ef', 'gold', 0),
(54, 'steam:110000111df87ef', 'cutted_wood', 0),
(55, 'steam:110000111df87ef', 'fish', 0),
(56, 'steam:110000111df87ef', 'iron', 0),
(57, 'steam:110000111df87ef', 'alive_chicken', 0),
(58, 'steam:110000111df87ef', 'diamond', 0),
(59, 'steam:110000111df87ef', 'water', 0),
(60, 'steam:110000111df87ef', 'fabric', 0),
(61, 'steam:110000111df87ef', 'wood', 0),
(62, 'steam:110000111df87ef', 'petrol_raffin', 0),
(63, 'steam:110000111df87ef', 'slaughtered_chicken', 0),
(64, 'steam:110000111df87ef', 'wool', 0),
(65, 'steam:110000111df87ef', 'washed_stone', 0),
(66, 'steam:110000111df87ef', 'bread', 0),
(67, 'steam:110000111df87ef', 'marijuana', 0),
(68, 'steam:110000111df87ef', 'bandage', 0),
(69, 'steam:110000111df87ef', 'packaged_plank', 0),
(70, 'steam:110000111df87ef', 'packaged_chicken', 0),
(71, 'steam:110000111df87ef', 'copper', 0),
(72, 'steam:110000111df87ef', 'petrol', 0),
(73, 'steam:110000111df87ef', 'medikit', 0),
(74, 'steam:110000111df87ef', 'cannabis', 0),
(75, 'steam:110000111df87ef', 'essence', 0),
(76, 'steam:1100001168601f7', 'stone', 0),
(77, 'steam:1100001168601f7', 'clothe', 0),
(78, 'steam:1100001168601f7', 'gold', 0),
(79, 'steam:1100001168601f7', 'cutted_wood', 0),
(80, 'steam:1100001168601f7', 'fish', 0),
(81, 'steam:1100001168601f7', 'iron', 0),
(82, 'steam:1100001168601f7', 'alive_chicken', 0),
(83, 'steam:1100001168601f7', 'diamond', 0),
(84, 'steam:1100001168601f7', 'water', 0),
(85, 'steam:1100001168601f7', 'fabric', 0),
(86, 'steam:1100001168601f7', 'wood', 0),
(87, 'steam:1100001168601f7', 'petrol_raffin', 0),
(88, 'steam:1100001168601f7', 'slaughtered_chicken', 0),
(89, 'steam:1100001168601f7', 'wool', 0),
(90, 'steam:1100001168601f7', 'washed_stone', 0),
(91, 'steam:1100001168601f7', 'bread', 0),
(92, 'steam:1100001168601f7', 'marijuana', 0),
(93, 'steam:1100001168601f7', 'bandage', 0),
(94, 'steam:1100001168601f7', 'packaged_plank', 0),
(95, 'steam:1100001168601f7', 'packaged_chicken', 0),
(96, 'steam:1100001168601f7', 'copper', 0),
(97, 'steam:1100001168601f7', 'petrol', 0),
(98, 'steam:1100001168601f7', 'medikit', 0),
(99, 'steam:1100001168601f7', 'cannabis', 0),
(100, 'steam:1100001168601f7', 'essence', 0),
(101, 'steam:110000107ab50c3', 'fixtool', 0),
(102, 'steam:110000107ab50c3', 'gazbottle', 0),
(103, 'steam:110000107ab50c3', 'carotool', 0),
(104, 'steam:110000107ab50c3', 'carokit', 0),
(105, 'steam:110000107ab50c3', 'fixkit', 0),
(106, 'steam:110000107ab50c3', 'blowpipe', 0),
(107, 'steam:11000010ac0f9f7', 'blowpipe', 0),
(108, 'steam:11000010ac0f9f7', 'gazbottle', 0),
(109, 'steam:11000010ac0f9f7', 'carokit', 0),
(110, 'steam:11000010ac0f9f7', 'fixtool', 0),
(111, 'steam:11000010ac0f9f7', 'carotool', 0),
(112, 'steam:11000010ac0f9f7', 'fixkit', 0),
(113, 'steam:110000118d99bfd', 'wool', 0),
(114, 'steam:110000118d99bfd', 'water', 0),
(115, 'steam:110000118d99bfd', 'washed_stone', 0),
(116, 'steam:110000118d99bfd', 'wood', 0),
(117, 'steam:110000118d99bfd', 'petrol_raffin', 0),
(118, 'steam:110000118d99bfd', 'bandage', 0),
(119, 'steam:110000118d99bfd', 'packaged_chicken', 0),
(120, 'steam:110000118d99bfd', 'diamond', 0),
(121, 'steam:110000118d99bfd', 'medikit', 0),
(122, 'steam:110000118d99bfd', 'slaughtered_chicken', 0),
(123, 'steam:110000118d99bfd', 'stone', 0),
(124, 'steam:110000118d99bfd', 'petrol', 0),
(125, 'steam:110000118d99bfd', 'cutted_wood', 0),
(126, 'steam:110000118d99bfd', 'carokit', 0),
(127, 'steam:110000118d99bfd', 'packaged_plank', 0),
(128, 'steam:110000118d99bfd', 'blowpipe', 0),
(129, 'steam:110000118d99bfd', 'bread', 0),
(130, 'steam:110000118d99bfd', 'marijuana', 0),
(131, 'steam:110000118d99bfd', 'cannabis', 0),
(132, 'steam:110000118d99bfd', 'alive_chicken', 0),
(133, 'steam:110000118d99bfd', 'clothe', 0),
(134, 'steam:110000118d99bfd', 'carotool', 0),
(135, 'steam:110000118d99bfd', 'fabric', 0),
(136, 'steam:110000118d99bfd', 'gazbottle', 0),
(137, 'steam:110000118d99bfd', 'fish', 0),
(138, 'steam:110000118d99bfd', 'copper', 0),
(139, 'steam:110000118d99bfd', 'iron', 0),
(140, 'steam:110000118d99bfd', 'fixtool', 0),
(141, 'steam:110000118d99bfd', 'fixkit', 0),
(142, 'steam:110000118d99bfd', 'gold', 0),
(143, 'steam:110000118d99bfd', 'essence', 0),
(144, 'steam:110000107ab50c3', 'clip', 4),
(145, 'steam:11000010ac0f9f7', 'clip', 0),
(146, 'steam:11000010c3fa6a8', 'packaged_plank', 0),
(147, 'steam:11000010c3fa6a8', 'essence', 0),
(148, 'steam:11000010c3fa6a8', 'petrol', 0),
(149, 'steam:11000010c3fa6a8', 'clip', 0),
(150, 'steam:11000010c3fa6a8', 'carotool', 0),
(151, 'steam:11000010c3fa6a8', 'bandage', 0),
(152, 'steam:11000010c3fa6a8', 'wool', 0),
(153, 'steam:11000010c3fa6a8', 'water', 1),
(154, 'steam:11000010c3fa6a8', 'fixkit', 0),
(155, 'steam:11000010c3fa6a8', 'cutted_wood', 0),
(156, 'steam:11000010c3fa6a8', 'carokit', 0),
(157, 'steam:11000010c3fa6a8', 'washed_stone', 0),
(158, 'steam:11000010c3fa6a8', 'stone', 0),
(159, 'steam:11000010c3fa6a8', 'copper', 0),
(160, 'steam:11000010c3fa6a8', 'slaughtered_chicken', 0),
(161, 'steam:11000010c3fa6a8', 'petrol_raffin', 0),
(162, 'steam:11000010c3fa6a8', 'packaged_chicken', 0),
(163, 'steam:11000010c3fa6a8', 'alive_chicken', 0),
(164, 'steam:11000010c3fa6a8', 'iron', 0),
(165, 'steam:11000010c3fa6a8', 'wood', 0),
(166, 'steam:11000010c3fa6a8', 'blowpipe', 0),
(167, 'steam:11000010c3fa6a8', 'medikit', 0),
(168, 'steam:11000010c3fa6a8', 'fixtool', 0),
(169, 'steam:11000010c3fa6a8', 'bread', 3),
(170, 'steam:11000010c3fa6a8', 'clothe', 0),
(171, 'steam:11000010c3fa6a8', 'fish', 0),
(172, 'steam:11000010c3fa6a8', 'gazbottle', 0),
(173, 'steam:11000010c3fa6a8', 'gold', 0),
(174, 'steam:11000010c3fa6a8', 'cannabis', 0),
(175, 'steam:11000010c3fa6a8', 'fabric', 0),
(176, 'steam:11000010c3fa6a8', 'marijuana', 0),
(177, 'steam:11000010c3fa6a8', 'diamond', 0),
(178, 'steam:11000011b7ba88c', 'packaged_plank', 0),
(179, 'steam:11000011b7ba88c', 'essence', 0),
(180, 'steam:11000011b7ba88c', 'petrol', 0),
(181, 'steam:11000011b7ba88c', 'clip', 0),
(182, 'steam:11000011b7ba88c', 'carotool', 0),
(183, 'steam:11000011b7ba88c', 'bandage', 0),
(184, 'steam:11000011b7ba88c', 'wool', 0),
(185, 'steam:11000011b7ba88c', 'water', 0),
(186, 'steam:11000011b7ba88c', 'fixkit', 0),
(187, 'steam:11000011b7ba88c', 'cutted_wood', 0),
(188, 'steam:11000011b7ba88c', 'carokit', 0),
(189, 'steam:11000011b7ba88c', 'washed_stone', 0),
(190, 'steam:11000011b7ba88c', 'stone', 0),
(191, 'steam:11000011b7ba88c', 'copper', 0),
(192, 'steam:11000011b7ba88c', 'slaughtered_chicken', 0),
(193, 'steam:11000011b7ba88c', 'petrol_raffin', 0),
(194, 'steam:11000011b7ba88c', 'packaged_chicken', 0),
(195, 'steam:11000011b7ba88c', 'alive_chicken', 0),
(196, 'steam:11000011b7ba88c', 'iron', 0),
(197, 'steam:11000011b7ba88c', 'wood', 0),
(198, 'steam:11000011b7ba88c', 'blowpipe', 0),
(199, 'steam:11000011b7ba88c', 'medikit', 0),
(200, 'steam:11000011b7ba88c', 'fixtool', 0),
(201, 'steam:11000011b7ba88c', 'bread', 0),
(202, 'steam:11000011b7ba88c', 'clothe', 0),
(203, 'steam:11000011b7ba88c', 'fish', 0),
(204, 'steam:11000011b7ba88c', 'gazbottle', 0),
(205, 'steam:11000011b7ba88c', 'gold', 0),
(206, 'steam:11000011b7ba88c', 'cannabis', 0),
(207, 'steam:11000011b7ba88c', 'fabric', 0),
(208, 'steam:11000011b7ba88c', 'marijuana', 0),
(209, 'steam:11000011b7ba88c', 'diamond', 0),
(210, 'steam:110000118d99bfd', 'clip', 0),
(211, 'steam:110000116a86ad6', 'packaged_plank', 0),
(212, 'steam:110000116a86ad6', 'essence', 0),
(213, 'steam:110000116a86ad6', 'petrol', 0),
(214, 'steam:110000116a86ad6', 'clip', 0),
(215, 'steam:110000116a86ad6', 'carotool', 0),
(216, 'steam:110000116a86ad6', 'bandage', 0),
(217, 'steam:110000116a86ad6', 'wool', 0),
(218, 'steam:110000116a86ad6', 'water', 0),
(219, 'steam:110000116a86ad6', 'fixkit', 0),
(220, 'steam:110000116a86ad6', 'cutted_wood', 0),
(221, 'steam:110000116a86ad6', 'carokit', 0),
(222, 'steam:110000116a86ad6', 'washed_stone', 0),
(223, 'steam:110000116a86ad6', 'stone', 0),
(224, 'steam:110000116a86ad6', 'copper', 0),
(225, 'steam:110000116a86ad6', 'slaughtered_chicken', 0),
(226, 'steam:110000116a86ad6', 'petrol_raffin', 0),
(227, 'steam:110000116a86ad6', 'packaged_chicken', 0),
(228, 'steam:110000116a86ad6', 'alive_chicken', 0),
(229, 'steam:110000116a86ad6', 'iron', 0),
(230, 'steam:110000116a86ad6', 'wood', 0),
(231, 'steam:110000116a86ad6', 'blowpipe', 0),
(232, 'steam:110000116a86ad6', 'medikit', 0),
(233, 'steam:110000116a86ad6', 'fixtool', 0),
(234, 'steam:110000116a86ad6', 'bread', 0),
(235, 'steam:110000116a86ad6', 'clothe', 0),
(236, 'steam:110000116a86ad6', 'fish', 0),
(237, 'steam:110000116a86ad6', 'gazbottle', 0),
(238, 'steam:110000116a86ad6', 'gold', 0),
(239, 'steam:110000116a86ad6', 'cannabis', 0),
(240, 'steam:110000116a86ad6', 'fabric', 0),
(241, 'steam:110000116a86ad6', 'marijuana', 0),
(242, 'steam:110000116a86ad6', 'diamond', 0),
(243, 'steam:1100001039f15a2', 'washed_stone', 0),
(244, 'steam:1100001039f15a2', 'carotool', 0),
(245, 'steam:1100001039f15a2', 'clip', 0),
(246, 'steam:1100001039f15a2', 'essence', 0),
(247, 'steam:1100001039f15a2', 'bandage', 0),
(248, 'steam:1100001039f15a2', 'copper', 0),
(249, 'steam:1100001039f15a2', 'bread', 0),
(250, 'steam:1100001039f15a2', 'stone', 0),
(251, 'steam:1100001039f15a2', 'wool', 0),
(252, 'steam:1100001039f15a2', 'water', 0),
(253, 'steam:1100001039f15a2', 'clothe', 0),
(254, 'steam:1100001039f15a2', 'wood', 0),
(255, 'steam:1100001039f15a2', 'medikit', 0),
(256, 'steam:1100001039f15a2', 'fabric', 0),
(257, 'steam:1100001039f15a2', 'alive_chicken', 0),
(258, 'steam:1100001039f15a2', 'slaughtered_chicken', 0),
(259, 'steam:1100001039f15a2', 'petrol_raffin', 0),
(260, 'steam:1100001039f15a2', 'packaged_chicken', 0),
(261, 'steam:1100001039f15a2', 'packaged_plank', 0),
(262, 'steam:1100001039f15a2', 'marijuana', 0),
(263, 'steam:1100001039f15a2', 'diamond', 0),
(264, 'steam:1100001039f15a2', 'fish', 0),
(265, 'steam:1100001039f15a2', 'petrol', 0),
(266, 'steam:1100001039f15a2', 'fixkit', 0),
(267, 'steam:1100001039f15a2', 'gold', 0),
(268, 'steam:1100001039f15a2', 'carokit', 0),
(269, 'steam:1100001039f15a2', 'gazbottle', 0),
(270, 'steam:1100001039f15a2', 'blowpipe', 0),
(271, 'steam:1100001039f15a2', 'cutted_wood', 0),
(272, 'steam:1100001039f15a2', 'cannabis', 0),
(273, 'steam:1100001039f15a2', 'iron', 0),
(274, 'steam:1100001039f15a2', 'fixtool', 0),
(275, 'steam:110000107ab50c3', 'drill', 0),
(276, 'steam:110000107ab50c3', 'xanax', 0),
(277, 'steam:110000118d99bfd', 'drill', 0),
(278, 'steam:110000118d99bfd', 'xanax', 0),
(279, 'steam:11000011b181afe', 'essence', 0),
(280, 'steam:11000011b181afe', 'blowpipe', 0),
(281, 'steam:11000011b181afe', 'marijuana', 0),
(282, 'steam:11000011b181afe', 'cannabis', 0),
(283, 'steam:11000011b181afe', 'fixtool', 0),
(284, 'steam:11000011b181afe', 'fabric', 0),
(285, 'steam:11000011b181afe', 'carokit', 0),
(286, 'steam:11000011b181afe', 'gazbottle', 0),
(287, 'steam:11000011b181afe', 'fixkit', 0),
(288, 'steam:11000011b181afe', 'washed_stone', 0),
(289, 'steam:11000011b181afe', 'fish', 0),
(290, 'steam:11000011b181afe', 'water', 0),
(291, 'steam:11000011b181afe', 'stone', 0),
(292, 'steam:11000011b181afe', 'diamond', 0),
(293, 'steam:11000011b181afe', 'medikit', 0),
(294, 'steam:11000011b181afe', 'alive_chicken', 0),
(295, 'steam:11000011b181afe', 'iron', 0),
(296, 'steam:11000011b181afe', 'gold', 0),
(297, 'steam:11000011b181afe', 'slaughtered_chicken', 0),
(298, 'steam:11000011b181afe', 'petrol_raffin', 0),
(299, 'steam:11000011b181afe', 'packaged_chicken', 0),
(300, 'steam:11000011b181afe', 'wool', 0),
(301, 'steam:11000011b181afe', 'bread', 0),
(302, 'steam:11000011b181afe', 'packaged_plank', 0),
(303, 'steam:11000011b181afe', 'drill', 0),
(304, 'steam:11000011b181afe', 'xanax', 0),
(305, 'steam:11000011b181afe', 'clothe', 0),
(306, 'steam:11000011b181afe', 'wood', 0),
(307, 'steam:11000011b181afe', 'clip', 0),
(308, 'steam:11000011b181afe', 'cutted_wood', 0),
(309, 'steam:11000011b181afe', 'carotool', 0),
(310, 'steam:11000011b181afe', 'copper', 0),
(311, 'steam:11000011b181afe', 'petrol', 0),
(312, 'steam:11000011b181afe', 'bandage', 0),
(313, 'steam:11000010ac0f9f7', 'xanax', 0),
(314, 'steam:11000010ac0f9f7', 'drill', 0),
(315, 'steam:11000010dafab63', 'carokit', 0),
(316, 'steam:11000010dafab63', 'stone', 0),
(317, 'steam:11000010dafab63', 'medikit', 0),
(318, 'steam:11000010dafab63', 'gold', 0),
(319, 'steam:11000010dafab63', 'petrol', 0),
(320, 'steam:11000010dafab63', 'bread', 0),
(321, 'steam:11000010dafab63', 'wood', 0),
(322, 'steam:11000010dafab63', 'petrol_raffin', 0),
(323, 'steam:11000010dafab63', 'drill', 0),
(324, 'steam:11000010dafab63', 'marijuana', 0),
(325, 'steam:11000010dafab63', 'xanax', 0),
(326, 'steam:11000010dafab63', 'washed_stone', 0),
(327, 'steam:11000010dafab63', 'packaged_plank', 0),
(328, 'steam:11000010dafab63', 'slaughtered_chicken', 0),
(329, 'steam:11000010dafab63', 'wool', 0),
(330, 'steam:11000010dafab63', 'fish', 0),
(331, 'steam:11000010dafab63', 'fixtool', 0),
(332, 'steam:11000010dafab63', 'water', 0),
(333, 'steam:11000010dafab63', 'fabric', 0),
(334, 'steam:11000010dafab63', 'copper', 0),
(335, 'steam:11000010dafab63', 'essence', 0),
(336, 'steam:11000010dafab63', 'alive_chicken', 0),
(337, 'steam:11000010dafab63', 'bandage', 0),
(338, 'steam:11000010dafab63', 'cutted_wood', 0),
(339, 'steam:11000010dafab63', 'clip', 0),
(340, 'steam:11000010dafab63', 'gazbottle', 0),
(341, 'steam:11000010dafab63', 'carotool', 0),
(342, 'steam:11000010dafab63', 'packaged_chicken', 0),
(343, 'steam:11000010dafab63', 'fixkit', 0),
(344, 'steam:11000010dafab63', 'diamond', 0),
(345, 'steam:11000010dafab63', 'blowpipe', 0),
(346, 'steam:11000010dafab63', 'clothe', 0),
(347, 'steam:11000010dafab63', 'cannabis', 0),
(348, 'steam:11000010dafab63', 'iron', 0),
(349, 'steam:11000011c633ba3', 'cannabis', 0),
(350, 'steam:11000011c633ba3', 'bandage', 0),
(351, 'steam:11000011c633ba3', 'xanax', 0),
(352, 'steam:11000011c633ba3', 'iron', 0),
(353, 'steam:11000011c633ba3', 'petrol', 0),
(354, 'steam:11000011c633ba3', 'medikit', 0),
(355, 'steam:11000011c633ba3', 'carotool', 0),
(356, 'steam:11000011c633ba3', 'clothe', 0),
(357, 'steam:11000011c633ba3', 'packaged_chicken', 0),
(358, 'steam:11000011c633ba3', 'diamond', 0),
(359, 'steam:11000011c633ba3', 'carokit', 0),
(360, 'steam:11000011c633ba3', 'fish', 0),
(361, 'steam:11000011c633ba3', 'clip', 1),
(362, 'steam:11000011c633ba3', 'marijuana', 0),
(363, 'steam:11000011c633ba3', 'blowpipe', 0),
(364, 'steam:11000011c633ba3', 'cutted_wood', 0),
(365, 'steam:11000011c633ba3', 'water', 0),
(366, 'steam:11000011c633ba3', 'fixkit', 0),
(367, 'steam:11000011c633ba3', 'wool', 0),
(368, 'steam:11000011c633ba3', 'slaughtered_chicken', 0),
(369, 'steam:11000011c633ba3', 'bread', 0),
(370, 'steam:11000011c633ba3', 'packaged_plank', 0),
(371, 'steam:11000011c633ba3', 'gold', 0),
(372, 'steam:11000011c633ba3', 'fabric', 0),
(373, 'steam:11000011c633ba3', 'wood', 0),
(374, 'steam:11000011c633ba3', 'washed_stone', 0),
(375, 'steam:11000011c633ba3', 'copper', 0),
(376, 'steam:11000011c633ba3', 'stone', 0),
(377, 'steam:11000011c633ba3', 'petrol_raffin', 0),
(378, 'steam:11000011c633ba3', 'essence', 0),
(379, 'steam:11000011c633ba3', 'alive_chicken', 0),
(380, 'steam:11000011c633ba3', 'drill', 0),
(381, 'steam:11000011c633ba3', 'gazbottle', 0),
(382, 'steam:11000011c633ba3', 'fixtool', 0),
(383, 'steam:110000110f0c0be', 'cannabis', 0),
(384, 'steam:110000110f0c0be', 'bandage', 0),
(385, 'steam:110000110f0c0be', 'xanax', 0),
(386, 'steam:110000110f0c0be', 'iron', 0),
(387, 'steam:110000110f0c0be', 'petrol', 0),
(388, 'steam:110000110f0c0be', 'medikit', 0),
(389, 'steam:110000110f0c0be', 'carotool', 0),
(390, 'steam:110000110f0c0be', 'clothe', 0),
(391, 'steam:110000110f0c0be', 'packaged_chicken', 0),
(392, 'steam:110000110f0c0be', 'diamond', 0),
(393, 'steam:110000110f0c0be', 'carokit', 0),
(394, 'steam:110000110f0c0be', 'fish', 0),
(395, 'steam:110000110f0c0be', 'clip', 0),
(396, 'steam:110000110f0c0be', 'marijuana', 0),
(397, 'steam:110000110f0c0be', 'blowpipe', 0),
(398, 'steam:110000110f0c0be', 'cutted_wood', 0),
(399, 'steam:110000110f0c0be', 'water', 0),
(400, 'steam:110000110f0c0be', 'fixkit', 0),
(401, 'steam:110000110f0c0be', 'wool', 0),
(402, 'steam:110000110f0c0be', 'slaughtered_chicken', 0),
(403, 'steam:110000110f0c0be', 'bread', 0),
(404, 'steam:110000110f0c0be', 'packaged_plank', 0),
(405, 'steam:110000110f0c0be', 'gold', 0),
(406, 'steam:110000110f0c0be', 'fabric', 0),
(407, 'steam:110000110f0c0be', 'wood', 0),
(408, 'steam:110000110f0c0be', 'washed_stone', 0),
(409, 'steam:110000110f0c0be', 'copper', 0),
(410, 'steam:110000110f0c0be', 'stone', 0),
(411, 'steam:110000110f0c0be', 'petrol_raffin', 0),
(412, 'steam:110000110f0c0be', 'essence', 0),
(413, 'steam:110000110f0c0be', 'alive_chicken', 0),
(414, 'steam:110000110f0c0be', 'drill', 0),
(415, 'steam:110000110f0c0be', 'gazbottle', 0),
(416, 'steam:110000110f0c0be', 'fixtool', 0),
(417, 'steam:1100001185f7588', 'essence', 0),
(418, 'steam:1100001185f7588', 'fixkit', 0),
(419, 'steam:1100001185f7588', 'gold', 0),
(420, 'steam:1100001185f7588', 'wool', 0),
(421, 'steam:1100001185f7588', 'water', 0),
(422, 'steam:1100001185f7588', 'marijuana', 0),
(423, 'steam:1100001185f7588', 'copper', 0),
(424, 'steam:1100001185f7588', 'iron', 0),
(425, 'steam:1100001185f7588', 'drill', 0),
(426, 'steam:1100001185f7588', 'fabric', 0),
(427, 'steam:1100001185f7588', 'bandage', 0),
(428, 'steam:1100001185f7588', 'fish', 0),
(429, 'steam:1100001185f7588', 'xanax', 0),
(430, 'steam:1100001185f7588', 'stone', 0),
(431, 'steam:1100001185f7588', 'gazbottle', 0),
(432, 'steam:1100001185f7588', 'blowpipe', 0),
(433, 'steam:1100001185f7588', 'petrol', 0),
(434, 'steam:1100001185f7588', 'bread', 0),
(435, 'steam:1100001185f7588', 'medikit', 0),
(436, 'steam:1100001185f7588', 'diamond', 0),
(437, 'steam:1100001185f7588', 'packaged_plank', 0),
(438, 'steam:1100001185f7588', 'fixtool', 0),
(439, 'steam:1100001185f7588', 'petrol_raffin', 0),
(440, 'steam:1100001185f7588', 'alive_chicken', 0),
(441, 'steam:1100001185f7588', 'cutted_wood', 0),
(442, 'steam:1100001185f7588', 'carotool', 0),
(443, 'steam:1100001185f7588', 'packaged_chicken', 0),
(444, 'steam:1100001185f7588', 'carokit', 0),
(445, 'steam:1100001185f7588', 'clip', 7),
(446, 'steam:1100001185f7588', 'clothe', 0),
(447, 'steam:1100001185f7588', 'slaughtered_chicken', 0),
(448, 'steam:1100001185f7588', 'cannabis', 0),
(449, 'steam:1100001185f7588', 'washed_stone', 0),
(450, 'steam:1100001185f7588', 'wood', 0),
(451, 'steam:1100001076e9bab', 'essence', 0),
(452, 'steam:1100001076e9bab', 'fixkit', 0),
(453, 'steam:1100001076e9bab', 'gold', 0),
(454, 'steam:1100001076e9bab', 'wool', 0),
(455, 'steam:1100001076e9bab', 'water', 0),
(456, 'steam:1100001076e9bab', 'marijuana', 0),
(457, 'steam:1100001076e9bab', 'copper', 0),
(458, 'steam:1100001076e9bab', 'iron', 0),
(459, 'steam:1100001076e9bab', 'drill', 0),
(460, 'steam:1100001076e9bab', 'fabric', 0),
(461, 'steam:1100001076e9bab', 'bandage', 0),
(462, 'steam:1100001076e9bab', 'fish', 0),
(463, 'steam:1100001076e9bab', 'xanax', 0),
(464, 'steam:1100001076e9bab', 'stone', 0),
(465, 'steam:1100001076e9bab', 'gazbottle', 0),
(466, 'steam:1100001076e9bab', 'blowpipe', 0),
(467, 'steam:1100001076e9bab', 'petrol', 0),
(468, 'steam:1100001076e9bab', 'bread', 0),
(469, 'steam:1100001076e9bab', 'medikit', 0),
(470, 'steam:1100001076e9bab', 'diamond', 0),
(471, 'steam:1100001076e9bab', 'packaged_plank', 0),
(472, 'steam:1100001076e9bab', 'fixtool', 0),
(473, 'steam:1100001076e9bab', 'petrol_raffin', 0),
(474, 'steam:1100001076e9bab', 'alive_chicken', 0),
(475, 'steam:1100001076e9bab', 'cutted_wood', 0),
(476, 'steam:1100001076e9bab', 'carotool', 0),
(477, 'steam:1100001076e9bab', 'packaged_chicken', 0),
(478, 'steam:1100001076e9bab', 'carokit', 0),
(479, 'steam:1100001076e9bab', 'clip', 0),
(480, 'steam:1100001076e9bab', 'clothe', 0),
(481, 'steam:1100001076e9bab', 'slaughtered_chicken', 0),
(482, 'steam:1100001076e9bab', 'cannabis', 0),
(483, 'steam:1100001076e9bab', 'washed_stone', 0),
(484, 'steam:1100001076e9bab', 'wood', 0),
(485, 'steam:11000011a003c28', 'essence', 0),
(486, 'steam:11000011a003c28', 'fixkit', 0),
(487, 'steam:11000011a003c28', 'gold', 0),
(488, 'steam:11000011a003c28', 'wool', 0),
(489, 'steam:11000011a003c28', 'water', 0),
(490, 'steam:11000011a003c28', 'marijuana', 0),
(491, 'steam:11000011a003c28', 'copper', 0),
(492, 'steam:11000011a003c28', 'iron', 0),
(493, 'steam:11000011a003c28', 'drill', 0),
(494, 'steam:11000011a003c28', 'fabric', 0),
(495, 'steam:11000011a003c28', 'bandage', 0),
(496, 'steam:11000011a003c28', 'fish', 0),
(497, 'steam:11000011a003c28', 'xanax', 0),
(498, 'steam:11000011a003c28', 'stone', 0),
(499, 'steam:11000011a003c28', 'gazbottle', 0),
(500, 'steam:11000011a003c28', 'blowpipe', 0),
(501, 'steam:11000011a003c28', 'petrol', 0),
(502, 'steam:11000011a003c28', 'bread', 0),
(503, 'steam:11000011a003c28', 'medikit', 0),
(504, 'steam:11000011a003c28', 'diamond', 0),
(505, 'steam:11000011a003c28', 'packaged_plank', 0),
(506, 'steam:11000011a003c28', 'fixtool', 0),
(507, 'steam:11000011a003c28', 'petrol_raffin', 0),
(508, 'steam:11000011a003c28', 'alive_chicken', 0),
(509, 'steam:11000011a003c28', 'cutted_wood', 0),
(510, 'steam:11000011a003c28', 'carotool', 0),
(511, 'steam:11000011a003c28', 'packaged_chicken', 0),
(512, 'steam:11000011a003c28', 'carokit', 0),
(513, 'steam:11000011a003c28', 'clip', 2),
(514, 'steam:11000011a003c28', 'clothe', 0),
(515, 'steam:11000011a003c28', 'slaughtered_chicken', 0),
(516, 'steam:11000011a003c28', 'cannabis', 0),
(517, 'steam:11000011a003c28', 'washed_stone', 0),
(518, 'steam:11000011a003c28', 'wood', 0),
(519, 'steam:11000010c3fa6a8', 'drill', 0),
(520, 'steam:11000010c3fa6a8', 'xanax', 0),
(521, 'steam:110000115014e4b', 'essence', 0),
(522, 'steam:110000115014e4b', 'fixkit', 0),
(523, 'steam:110000115014e4b', 'gold', 0),
(524, 'steam:110000115014e4b', 'wool', 0),
(525, 'steam:110000115014e4b', 'water', 0),
(526, 'steam:110000115014e4b', 'marijuana', 0),
(527, 'steam:110000115014e4b', 'copper', 0),
(528, 'steam:110000115014e4b', 'iron', 0),
(529, 'steam:110000115014e4b', 'drill', 0),
(530, 'steam:110000115014e4b', 'fabric', 0),
(531, 'steam:110000115014e4b', 'bandage', 0),
(532, 'steam:110000115014e4b', 'fish', 0),
(533, 'steam:110000115014e4b', 'xanax', 0),
(534, 'steam:110000115014e4b', 'stone', 0),
(535, 'steam:110000115014e4b', 'gazbottle', 0),
(536, 'steam:110000115014e4b', 'blowpipe', 0),
(537, 'steam:110000115014e4b', 'petrol', 0),
(538, 'steam:110000115014e4b', 'bread', 0),
(539, 'steam:110000115014e4b', 'medikit', 0),
(540, 'steam:110000115014e4b', 'diamond', 0),
(541, 'steam:110000115014e4b', 'packaged_plank', 0),
(542, 'steam:110000115014e4b', 'fixtool', 0),
(543, 'steam:110000115014e4b', 'petrol_raffin', 0),
(544, 'steam:110000115014e4b', 'alive_chicken', 0),
(545, 'steam:110000115014e4b', 'cutted_wood', 0),
(546, 'steam:110000115014e4b', 'carotool', 0),
(547, 'steam:110000115014e4b', 'packaged_chicken', 0),
(548, 'steam:110000115014e4b', 'carokit', 0),
(549, 'steam:110000115014e4b', 'clip', 0),
(550, 'steam:110000115014e4b', 'clothe', 0),
(551, 'steam:110000115014e4b', 'slaughtered_chicken', 0),
(552, 'steam:110000115014e4b', 'cannabis', 0),
(553, 'steam:110000115014e4b', 'washed_stone', 0),
(554, 'steam:110000115014e4b', 'wood', 0),
(555, 'steam:1100001360b2eb2', 'essence', 0),
(556, 'steam:1100001360b2eb2', 'fixkit', 0),
(557, 'steam:1100001360b2eb2', 'gold', 0),
(558, 'steam:1100001360b2eb2', 'wool', 0),
(559, 'steam:1100001360b2eb2', 'water', 0),
(560, 'steam:1100001360b2eb2', 'marijuana', 0),
(561, 'steam:1100001360b2eb2', 'copper', 0),
(562, 'steam:1100001360b2eb2', 'iron', 0),
(563, 'steam:1100001360b2eb2', 'drill', 0),
(564, 'steam:1100001360b2eb2', 'fabric', 0),
(565, 'steam:1100001360b2eb2', 'bandage', 0),
(566, 'steam:1100001360b2eb2', 'fish', 0),
(567, 'steam:1100001360b2eb2', 'xanax', 0),
(568, 'steam:1100001360b2eb2', 'stone', 0),
(569, 'steam:1100001360b2eb2', 'gazbottle', 0),
(570, 'steam:1100001360b2eb2', 'blowpipe', 0),
(571, 'steam:1100001360b2eb2', 'petrol', 0),
(572, 'steam:1100001360b2eb2', 'bread', 0),
(573, 'steam:1100001360b2eb2', 'medikit', 0),
(574, 'steam:1100001360b2eb2', 'diamond', 0),
(575, 'steam:1100001360b2eb2', 'packaged_plank', 0),
(576, 'steam:1100001360b2eb2', 'fixtool', 0),
(577, 'steam:1100001360b2eb2', 'petrol_raffin', 0),
(578, 'steam:1100001360b2eb2', 'alive_chicken', 0),
(579, 'steam:1100001360b2eb2', 'cutted_wood', 0),
(580, 'steam:1100001360b2eb2', 'carotool', 0),
(581, 'steam:1100001360b2eb2', 'packaged_chicken', 0),
(582, 'steam:1100001360b2eb2', 'carokit', 0),
(583, 'steam:1100001360b2eb2', 'clip', 0),
(584, 'steam:1100001360b2eb2', 'clothe', 0),
(585, 'steam:1100001360b2eb2', 'slaughtered_chicken', 0),
(586, 'steam:1100001360b2eb2', 'cannabis', 0),
(587, 'steam:1100001360b2eb2', 'washed_stone', 0),
(588, 'steam:1100001360b2eb2', 'wood', 0),
(589, 'steam:1100001170fc149', 'essence', 0),
(590, 'steam:1100001170fc149', 'fixkit', 0),
(591, 'steam:1100001170fc149', 'gold', 0),
(592, 'steam:1100001170fc149', 'wool', 0),
(593, 'steam:1100001170fc149', 'water', 0),
(594, 'steam:1100001170fc149', 'marijuana', 0),
(595, 'steam:1100001170fc149', 'copper', 0),
(596, 'steam:1100001170fc149', 'iron', 0),
(597, 'steam:1100001170fc149', 'drill', 0),
(598, 'steam:1100001170fc149', 'fabric', 0),
(599, 'steam:1100001170fc149', 'bandage', 0),
(600, 'steam:1100001170fc149', 'fish', 0),
(601, 'steam:1100001170fc149', 'xanax', 0),
(602, 'steam:1100001170fc149', 'stone', 0),
(603, 'steam:1100001170fc149', 'gazbottle', 0),
(604, 'steam:1100001170fc149', 'blowpipe', 0),
(605, 'steam:1100001170fc149', 'petrol', 0),
(606, 'steam:1100001170fc149', 'bread', 0),
(607, 'steam:1100001170fc149', 'medikit', 0),
(608, 'steam:1100001170fc149', 'diamond', 0),
(609, 'steam:1100001170fc149', 'packaged_plank', 0),
(610, 'steam:1100001170fc149', 'fixtool', 0),
(611, 'steam:1100001170fc149', 'petrol_raffin', 0),
(612, 'steam:1100001170fc149', 'alive_chicken', 0),
(613, 'steam:1100001170fc149', 'cutted_wood', 0),
(614, 'steam:1100001170fc149', 'carotool', 0),
(615, 'steam:1100001170fc149', 'packaged_chicken', 0),
(616, 'steam:1100001170fc149', 'carokit', 0),
(617, 'steam:1100001170fc149', 'clip', 1),
(618, 'steam:1100001170fc149', 'clothe', 0),
(619, 'steam:1100001170fc149', 'slaughtered_chicken', 0),
(620, 'steam:1100001170fc149', 'cannabis', 0),
(621, 'steam:1100001170fc149', 'washed_stone', 0),
(622, 'steam:1100001170fc149', 'wood', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'weapon', 'steam:110000107ab50c3'),
(2, 'weapon', 'steam:1100001185f7588'),
(3, 'weapon', 'steam:11000010c3fa6a8'),
(4, 'weapon', 'steam:11000011c633ba3'),
(5, 'weapon', 'steam:11000011a003c28'),
(6, 'weapon', 'steam:1100001170fc149');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'CoupÃ©s'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  ADD KEY `index_datastore_name` (`name`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;
--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;
--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
