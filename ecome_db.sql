-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 11 Février 2019 à 07:23
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ecome_db`
--
CREATE DATABASE IF NOT EXISTS `ecome_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecome_db`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Accessoire informatique et Gadgets'),
(2, 'Vétements'),
(3, 'Immobilier'),
(4, 'Ordinateur Portabels'),
(5, 'Véhicules'),
(6, 'Ordinateur Bureau'),
(7, 'Téléphone Portable'),
(8, 'Jeux vidéo et consoles'),
(9, 'Télévision'),
(10, 'produit de beauté'),
(11, 'Voyages '),
(12, 'Montres et bijoux');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `old_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `old_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(5, 'Toshiba', 4, 400, 700, 1, 'Toshiba \r\nProcesseur : I3 INTEL 2.8GH \r\n4GO RAM \r\n1T : HDD \r\nCamera HD \r\nWindows 10', 'is a good prodect', 'images/Ordinateur-portabel/toshiba.jpg'),
(6, 'HP', 4, 600, 1000, 1, 'HP COMPAQ \r\nProcesseur : I5 \r\nHDD : 500GO \r\nRAM : 8GO \r\nGRaphique Cart : NVDIA 4GO HD ', 'is a good and perfect', 'images/Ordinateur-portabel/hp.jpg'),
(7, 'accent', 4, 500, 800, 1, 'ACCENT\r\nProce Core de DUO 2,80GH \r\nRAM : 4GO \r\nHDD : 1T \r\nCamera HD \r\nGraphique ATI HD 4GO \r\n2PORT 3.0 \r\nPro HDMI ', '', 'images/Ordinateur-portabel/accent.png'),
(8, 'DELL', 4, 1500, 2000, 1, 'DELL OPTIMUST : \r\nCPU : I5 \r\nRAM : 8GO \r\nHDD : 1T \r\nCArt graphique HD 4GO \r\nPort USB : 4 Port \r\nVGA et HDMI Ports ', '', 'images/Ordinateur-portabel/dell.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'zak zak', 'zak@live.com', 'c093f525624a099f9d6f748b73ce35c6'),
(2, 'zakaria saissi', 'ipiab@live.fr', 'd033e22ae348aeb5660fc2140aec35850c4da997');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
