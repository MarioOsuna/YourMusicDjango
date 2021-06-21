-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 07:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audios`
--

CREATE TABLE `accounts_audios` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url_audio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_audios`
--

INSERT INTO `accounts_audios` (`id`, `title`, `url_audio`) VALUES
(6, 'Ciudad Dormida', 'user/song/Ciudad_dormida.mp3'),
(7, 'Mi Piel', 'user/song/MI_PIEL_MASTER.wav'),
(8, 'Karma', 'user/song/02.Karma.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_generos`
--

CREATE TABLE `accounts_generos` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_generos`
--

INSERT INTO `accounts_generos` (`id`, `title`) VALUES
(1, 'Rock'),
(2, 'Punk'),
(3, 'Heavy Metal'),
(4, 'Hard Rock'),
(5, 'Flamenco'),
(6, 'Electrónica'),
(7, 'Post-Punk'),
(8, 'Rock Alternativo'),
(9, 'Jazz'),
(10, 'Blues'),
(11, 'Funk'),
(12, 'Reggae'),
(13, 'Disco'),
(14, 'Rap'),
(15, 'Hip Hop'),
(16, 'Ska'),
(17, 'House'),
(18, 'Rhythm and blues'),
(19, 'Pop'),
(20, 'Indie'),
(21, 'Rock Psicodélico'),
(22, 'Grunge');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_provincia`
--

CREATE TABLE `accounts_provincia` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_provincia`
--

INSERT INTO `accounts_provincia` (`id`, `title`) VALUES
(1, 'Córdoba'),
(2, 'Sevilla'),
(3, 'Albacete'),
(4, 'Almería'),
(5, 'Álava'),
(6, 'Alicante'),
(7, 'Asturias'),
(8, 'Ávila'),
(9, 'Badajoz'),
(10, 'Barcelona'),
(11, 'Burgos'),
(12, 'Cáceres'),
(13, 'Cádiz'),
(14, 'Cantabria'),
(15, 'Castellón'),
(16, 'Ciudad Real'),
(17, 'La Coruña'),
(18, 'Cuenca'),
(19, 'Gerona'),
(20, 'Granada'),
(21, 'Guadalajara'),
(22, 'Guipúzcoa'),
(23, 'Huelva'),
(24, 'Huesca'),
(25, 'Baleares'),
(26, 'Jaén'),
(27, 'León'),
(28, 'Lérida'),
(29, 'Lugo'),
(30, 'Madrid'),
(31, 'Málaga'),
(32, 'Murcia'),
(33, 'Navarra'),
(34, 'Orense'),
(35, 'Palencia'),
(36, 'Las Palmas'),
(37, 'Pontevedra'),
(38, 'La Rioja'),
(39, 'Salamanca'),
(40, 'Segovia'),
(41, 'Soria'),
(42, 'Tarragona'),
(43, 'Santa Cruz de Tenerife'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia'),
(47, 'Valladolid'),
(48, 'Vizcaya'),
(49, 'Zamora'),
(50, 'Zaragoza'),
(51, 'Ceuta'),
(52, 'Melilla');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tipoojeador`
--

CREATE TABLE `accounts_tipoojeador` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_tipoojeador`
--

INSERT INTO `accounts_tipoojeador` (`id`, `title`) VALUES
(1, 'Particular'),
(2, 'Discográfica'),
(3, 'Prensa'),
(4, 'Salas'),
(5, 'Bares'),
(6, 'Otros');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos`
--

CREATE TABLE `accounts_userprofilemusicos` (
  `id` int(11) NOT NULL,
  `nombre_profile` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_profile` varchar(50) DEFAULT NULL,
  `provincia_origen_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos`
--

INSERT INTO `accounts_userprofilemusicos` (`id`, `nombre_profile`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_profile`, `provincia_origen_id`, `user_id`) VALUES
(1, 'Terra Negra', 'user/img/folder.jfif', '                 Grupo de Peñarroya Pueblonuevo\r\n            ', NULL, 'https://www.instagram.com/kakumei_99/', 'https://www.facebook.com/Terranegraband', NULL, 'terranegraband@gmail.com', 1, 3),
(2, 'Comala', 'user/img/tit_phixr.jpg', 'Influenciados por Joy Division, Shame, Idles, Fontaines DC, The Cure, The Smiths, etc...', NULL, NULL, NULL, NULL, 'comala@gmail.com', 5, 5),
(3, 'Karma', 'user/img/folder.jpg', '', NULL, NULL, NULL, NULL, 'karma@g.com', 44, 7),
(4, 'Blur Time', 'user/img/fot1Front_Cover.jpg', 'Grupo derivado de karma', NULL, NULL, NULL, NULL, 'BT@g.com', 51, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_canal_mensajes`
--

CREATE TABLE `accounts_userprofilemusicos_canal_mensajes` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_canal_mensajes`
--

INSERT INTO `accounts_userprofilemusicos_canal_mensajes` (`id`, `userprofilemusicos_id`, `canal_id`) VALUES
(14, 1, 18),
(13, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_generos`
--

CREATE TABLE `accounts_userprofilemusicos_generos` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_generos`
--

INSERT INTO `accounts_userprofilemusicos_generos` (`id`, `userprofilemusicos_id`, `generos_id`) VALUES
(8, 1, 4),
(7, 1, 22),
(9, 2, 13),
(10, 3, 1),
(11, 3, 8),
(12, 3, 21),
(15, 4, 2),
(14, 4, 7),
(16, 4, 8),
(17, 4, 21),
(13, 4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_noticias`
--

CREATE TABLE `accounts_userprofilemusicos_noticias` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `noticias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_noticias`
--

INSERT INTO `accounts_userprofilemusicos_noticias` (`id`, `userprofilemusicos_id`, `noticias_id`) VALUES
(5, 1, 9),
(1, 2, 3),
(2, 2, 4),
(3, 3, 7),
(4, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_url_audios`
--

CREATE TABLE `accounts_userprofilemusicos_url_audios` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `audios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_url_audios`
--

INSERT INTO `accounts_userprofilemusicos_url_audios` (`id`, `userprofilemusicos_id`, `audios_id`) VALUES
(6, 1, 6),
(7, 2, 7),
(8, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_url_videos`
--

CREATE TABLE `accounts_userprofilemusicos_url_videos` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `videos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_url_videos`
--

INSERT INTO `accounts_userprofilemusicos_url_videos` (`id`, `userprofilemusicos_id`, `videos_id`) VALUES
(1, 1, 1),
(4, 1, 4),
(6, 2, 6),
(7, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores`
--

CREATE TABLE `accounts_userprofileojeadores` (
  `id` int(11) NOT NULL,
  `nombre_profile` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_profile` varchar(50) DEFAULT NULL,
  `provincia_origen_id` int(11) NOT NULL,
  `tipo_ojeador_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores`
--

INSERT INTO `accounts_userprofileojeadores` (`id`, `nombre_profile`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_profile`, `provincia_origen_id`, `tipo_ojeador_id`, `user_id`) VALUES
(1, 'CBGB', 'user/img/CBGB-entrance-bw-2016-billboard-1548.jpg', 'Mítica sala donde se han dado a conocer grupos como ramones, talking heads, etc...', NULL, NULL, NULL, NULL, 'cbgb@gmail.com', 19, 4, 4),
(2, 'Factory', 'user/img/3685d980288e3021b74037b47f27cd61.jpg', '', NULL, NULL, NULL, NULL, 'factory@gmail.com', 16, 2, 6),
(3, 'Vladimir', 'user/img/wallpaper.wiki-Music-nirvana-Kurt-Cobain-Images-1920x1080-PIC-WPE006226.jpg', 'Busco grupos para un cumple', NULL, NULL, NULL, NULL, 'Vladi@g.com', 5, 1, 9),
(4, 'La Ser', 'user/img/image-003817.jpg', '', NULL, NULL, NULL, NULL, 'prueba@email.com', 42, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores_canal_mensajes`
--

CREATE TABLE `accounts_userprofileojeadores_canal_mensajes` (
  `id` int(11) NOT NULL,
  `userprofileojeadores_id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores_generos`
--

CREATE TABLE `accounts_userprofileojeadores_generos` (
  `id` int(11) NOT NULL,
  `userprofileojeadores_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores_generos`
--

INSERT INTO `accounts_userprofileojeadores_generos` (`id`, `userprofileojeadores_id`, `generos_id`) VALUES
(10, 1, 1),
(8, 1, 2),
(7, 1, 7),
(9, 1, 12),
(12, 1, 16),
(11, 1, 21),
(14, 2, 2),
(13, 2, 7),
(15, 3, 1),
(16, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores_noticias`
--

CREATE TABLE `accounts_userprofileojeadores_noticias` (
  `id` int(11) NOT NULL,
  `userprofileojeadores_id` int(11) NOT NULL,
  `noticias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores_noticias`
--

INSERT INTO `accounts_userprofileojeadores_noticias` (`id`, `userprofileojeadores_id`, `noticias_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 5),
(4, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_videos`
--

CREATE TABLE `accounts_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url_video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_videos`
--

INSERT INTO `accounts_videos` (`id`, `title`, `url_video`) VALUES
(1, 'La Fábrica', 'amK7McaUp7Y'),
(4, 'Desaprender a vivir', '4lB9fMtizqA'),
(6, 'Animal', '3E9eQV6YQHQ'),
(7, 'El Protagonista', 'iQnvJYZaock');

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add audios', 7, 'add_audios'),
(26, 'Can change audios', 7, 'change_audios'),
(27, 'Can delete audios', 7, 'delete_audios'),
(28, 'Can view audios', 7, 'view_audios'),
(29, 'Can add generos', 8, 'add_generos'),
(30, 'Can change generos', 8, 'change_generos'),
(31, 'Can delete generos', 8, 'delete_generos'),
(32, 'Can view generos', 8, 'view_generos'),
(33, 'Can add provincia', 9, 'add_provincia'),
(34, 'Can change provincia', 9, 'change_provincia'),
(35, 'Can delete provincia', 9, 'delete_provincia'),
(36, 'Can view provincia', 9, 'view_provincia'),
(37, 'Can add tipo ojeador', 10, 'add_tipoojeador'),
(38, 'Can change tipo ojeador', 10, 'change_tipoojeador'),
(39, 'Can delete tipo ojeador', 10, 'delete_tipoojeador'),
(40, 'Can view tipo ojeador', 10, 'view_tipoojeador'),
(41, 'Can add videos', 11, 'add_videos'),
(42, 'Can change videos', 11, 'change_videos'),
(43, 'Can delete videos', 11, 'delete_videos'),
(44, 'Can view videos', 11, 'view_videos'),
(45, 'Can add user profile ojeadores', 12, 'add_userprofileojeadores'),
(46, 'Can change user profile ojeadores', 12, 'change_userprofileojeadores'),
(47, 'Can delete user profile ojeadores', 12, 'delete_userprofileojeadores'),
(48, 'Can view user profile ojeadores', 12, 'view_userprofileojeadores'),
(49, 'Can add user profile musicos', 13, 'add_userprofilemusicos'),
(50, 'Can change user profile musicos', 13, 'change_userprofilemusicos'),
(51, 'Can delete user profile musicos', 13, 'delete_userprofilemusicos'),
(52, 'Can view user profile musicos', 13, 'view_userprofilemusicos'),
(53, 'Can add noticias', 14, 'add_noticias'),
(54, 'Can change noticias', 14, 'change_noticias'),
(55, 'Can delete noticias', 14, 'delete_noticias'),
(56, 'Can view noticias', 14, 'view_noticias'),
(57, 'Can add mensajes', 15, 'add_mensajes'),
(58, 'Can change mensajes', 15, 'change_mensajes'),
(59, 'Can delete mensajes', 15, 'delete_mensajes'),
(60, 'Can view mensajes', 15, 'view_mensajes'),
(61, 'Can add canal', 16, 'add_canal'),
(62, 'Can change canal', 16, 'change_canal'),
(63, 'Can delete canal', 16, 'delete_canal'),
(64, 'Can view canal', 16, 'view_canal'),
(65, 'Can add Token', 17, 'add_token'),
(66, 'Can change Token', 17, 'change_token'),
(67, 'Can delete Token', 17, 'delete_token'),
(68, 'Can view Token', 17, 'view_token'),
(69, 'Can add token', 18, 'add_tokenproxy'),
(70, 'Can change token', 18, 'change_tokenproxy'),
(71, 'Can delete token', 18, 'delete_tokenproxy'),
(72, 'Can view token', 18, 'view_tokenproxy'),
(73, 'Can add tema_foro', 19, 'add_tema_foro'),
(74, 'Can change tema_foro', 19, 'change_tema_foro'),
(75, 'Can delete tema_foro', 19, 'delete_tema_foro'),
(76, 'Can view tema_foro', 19, 'view_tema_foro'),
(77, 'Can add post', 20, 'add_post'),
(78, 'Can change post', 20, 'change_post'),
(79, 'Can delete post', 20, 'delete_post'),
(80, 'Can view post', 20, 'view_post'),
(81, 'Can add mensajes_post', 21, 'add_mensajes_post'),
(82, 'Can change mensajes_post', 21, 'change_mensajes_post'),
(83, 'Can delete mensajes_post', 21, 'delete_mensajes_post'),
(84, 'Can view mensajes_post', 21, 'view_mensajes_post'),
(85, 'Can add association', 22, 'add_association'),
(86, 'Can change association', 22, 'change_association'),
(87, 'Can delete association', 22, 'delete_association'),
(88, 'Can view association', 22, 'view_association'),
(89, 'Can add code', 23, 'add_code'),
(90, 'Can change code', 23, 'change_code'),
(91, 'Can delete code', 23, 'delete_code'),
(92, 'Can view code', 23, 'view_code'),
(93, 'Can add nonce', 24, 'add_nonce'),
(94, 'Can change nonce', 24, 'change_nonce'),
(95, 'Can delete nonce', 24, 'delete_nonce'),
(96, 'Can view nonce', 24, 'view_nonce'),
(97, 'Can add user social auth', 25, 'add_usersocialauth'),
(98, 'Can change user social auth', 25, 'change_usersocialauth'),
(99, 'Can delete user social auth', 25, 'delete_usersocialauth'),
(100, 'Can view user social auth', 25, 'view_usersocialauth'),
(101, 'Can add partial', 26, 'add_partial'),
(102, 'Can change partial', 26, 'change_partial'),
(103, 'Can delete partial', 26, 'delete_partial'),
(104, 'Can view partial', 26, 'view_partial');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$hU3rbPBVEVQ1$rOgZabR1RgwlYFNrWtGKANxrje3q3J2a5T0wrnxPsLU=', '2021-06-08 15:42:59.027890', 1, 'adminMario', '', '', '', 1, 1, '2021-06-03 22:15:21.246117'),
(2, 'pbkdf2_sha256$216000$L3XYdsPARvq5$dE2L8xiq57cCgAa7y1GAk+mb32Fb8d0JoIqV7b59Yts=', NULL, 1, 'adminManuel', '', '', '', 1, 1, '2021-06-03 22:15:35.054090'),
(3, 'pbkdf2_sha256$216000$4hWVpFCTUweU$jRQhsbkZlcTgHKLLVTundAnyBU4jNVbWrj6MVE/kUOA=', '2021-06-13 17:15:35.279528', 0, 'mario', '', '', 'marioosuna26@gmail.com', 0, 1, '2021-06-03 22:19:07.590196'),
(4, 'pbkdf2_sha256$216000$nhONhA0yVmuP$6xZeSct7FVhXbw9wkSA2TsX0JfKhHg2jvwNfZA2JT2g=', '2021-06-09 19:28:59.584589', 0, 'Jaime', '', '', 'jaime@gmail.com', 0, 1, '2021-06-03 22:33:52.520109'),
(5, 'pbkdf2_sha256$216000$mB0dQfBjuTDw$wITEZEzEP2I+ZPIA+GMeUZwKw2S7NLtjXUtH65bhhO4=', '2021-06-03 22:36:33.635065', 0, 'pepe', '', '', 'pepe@gmail.com', 0, 1, '2021-06-03 22:36:33.452094'),
(6, 'pbkdf2_sha256$216000$g5891KO2pBkU$cV1F5y3SvFWA+CTPPBeLDQ3Koh6UWb05y9U5Z8lSuH8=', '2021-06-12 11:26:02.191971', 0, 'Jimena', '', '', 'prueba@email.com', 0, 1, '2021-06-03 22:41:06.294400'),
(7, 'pbkdf2_sha256$216000$0U33Mvb9RAxV$cMxJ6F2z3YCdbNudSbgD/s86xDdbf7GmEz0YIM2yvhU=', '2021-06-03 22:42:34.203377', 0, 'Manuel', '', '', 'subeunescalon@gmail.com', 0, 1, '2021-06-03 22:42:34.012388'),
(8, 'pbkdf2_sha256$216000$li9FfmpOn5GV$C64GRdhTt+QQArAFhkG7kzeFpgZ79VySZmk8E4j0W4M=', '2021-06-03 22:44:50.415885', 0, 'Jose', '', '', 'Jose@gmail.com', 0, 1, '2021-06-03 22:44:50.204982'),
(9, 'pbkdf2_sha256$216000$VgljCJHrcpji$7fUTzYqn8ap3JU8FdsMxuwF555ye+enedDi/gvXhU6U=', '2021-06-04 18:10:32.779226', 0, 'Vladimir', '', '', 'elvla@gmail.com', 0, 1, '2021-06-03 22:49:19.290668'),
(10, 'pbkdf2_sha256$216000$eKcs9MnNalSk$2+jdbM1GjS/5jdukoQUhOHRN3/wxrszxDRxcTWyqQ5A=', '2021-06-03 22:50:56.564378', 0, 'usuario', '', '', 'usuario@email.com', 0, 1, '2021-06-03 22:50:56.378350'),
(12, '!GCEWByI5Dxa1vzhxmXnKh4nm7Bw6gKA2atTq9Dou', '2021-06-08 16:18:28.837632', 0, 'comalaband', 'Comala', 'Band', 'comalaband@gmail.com', 0, 1, '2021-06-08 15:55:27.613678'),
(14, '!Es652Dw3ZpruEz2P0mgpim6NJ13NhzdAI5pwgiTK', '2021-06-09 15:48:54.027149', 0, 'MarioOsunaOrdez', 'Mario', 'Osuna Ordóñez', '', 0, 1, '2021-06-08 16:17:31.055442'),
(15, '!KdkJGnBU10HDZvSCyrTHSw01ESwAxH60PvHTX6ss', '2021-06-09 15:48:40.813205', 0, 'osunamario26', 'Mario', 'Osuna', 'osunamario26@gmail.com', 0, 1, '2021-06-09 15:48:40.775832'),
(16, '!Yrv28A0cjLkSPoeDvmVvQC4F7oIwZIwvAbnwDO06', '2021-06-09 16:33:07.528137', 0, 'marioosuna26', 'Mario', 'Osuna Ordóñez', 'marioosuna26@gmail.com', 0, 1, '2021-06-09 16:33:07.491658');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chat_canal`
--

CREATE TABLE `chat_canal` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `eliminado_emisor` tinyint(1) NOT NULL,
  `eliminado_receptor` tinyint(1) NOT NULL,
  `leido_emisor` tinyint(1) NOT NULL,
  `leido_receptor` tinyint(1) NOT NULL,
  `emisor_id` int(11) DEFAULT NULL,
  `receptor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_canal`
--

INSERT INTO `chat_canal` (`id`, `created_at`, `title`, `updated_at`, `eliminado_emisor`, `eliminado_receptor`, `leido_emisor`, `leido_receptor`, `emisor_id`, `receptor_id`) VALUES
(18, '2021-06-13 09:03:05.234494', 'conver', '2021-06-13 09:03:05.249495', 0, 0, 1, 0, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `chat_canal_mensajes_conver`
--

CREATE TABLE `chat_canal_mensajes_conver` (
  `id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL,
  `mensajes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_canal_mensajes_conver`
--

INSERT INTO `chat_canal_mensajes_conver` (`id`, `canal_id`, `mensajes_id`) VALUES
(26, 18, 29);

-- --------------------------------------------------------

--
-- Table structure for table `chat_canal_usuarios`
--

CREATE TABLE `chat_canal_usuarios` (
  `id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_canal_usuarios`
--

INSERT INTO `chat_canal_usuarios` (`id`, `canal_id`, `user_id`) VALUES
(37, 18, 3),
(38, 18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `chat_mensajes`
--

CREATE TABLE `chat_mensajes` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `receptor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_mensajes`
--

INSERT INTO `chat_mensajes` (`id`, `text`, `date_posted`, `emisor_id`, `receptor_id`) VALUES
(11, 'Bien?', '2021-06-04 23:27:41.351953', 3, 4),
(12, 'asdasd', '2021-06-09 16:37:35.956529', 4, 3),
(13, 'asdasd', '2021-06-09 17:34:16.913170', 4, 5),
(14, 'asdasda', '2021-06-09 17:59:06.963883', 3, 4),
(15, 'Muy bien, me gusta', '2021-06-09 18:03:12.617387', 3, 5),
(16, 'Muy bien, me gusta', '2021-06-09 18:03:40.068311', 3, 5),
(17, 'Muy bien, me gusta', '2021-06-09 18:03:50.444163', 3, 5),
(18, 'Muy bien, me gusta', '2021-06-09 18:03:58.737187', 3, 5),
(19, 'asdasfs', '2021-06-09 18:04:28.744262', 3, 6),
(20, 'Contratadnos os vamos a gustar', '2021-06-12 10:47:56.681152', 3, 6),
(21, 'No', '2021-06-12 10:59:49.763886', 6, 3),
(22, 'xq?', '2021-06-12 11:00:12.821386', 3, 6),
(23, 'Si o k?', '2021-06-12 11:04:02.185291', 3, 6),
(24, 'Ni de fly', '2021-06-12 11:04:26.368208', 6, 3),
(25, 'Porfa', '2021-06-12 11:06:46.552969', 3, 6),
(26, 'Nuu', '2021-06-12 11:06:56.779891', 6, 3),
(27, 'Bueno como quieras, te borro la conver', '2021-06-12 11:07:12.916031', 3, 6),
(28, 'Tal vez', '2021-06-12 11:25:53.474984', 6, 3),
(29, 'asdasd', '2021-06-13 09:03:31.405319', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-03 22:37:41.072241', '2', 'Comala', 1, '[{\"added\": {}}]', 13, 1),
(2, '2021-06-04 15:21:40.649590', '1', 'Mensaje #1', 1, '[{\"added\": {}}]', 15, 1),
(3, '2021-06-04 15:22:35.693450', '2', 'Mensaje #2', 1, '[{\"added\": {}}]', 15, 1),
(4, '2021-06-04 15:22:39.324120', '1', 'Mensaje #1', 2, '[]', 15, 1),
(5, '2021-06-04 15:23:00.808369', '3', 'Mensaje #3', 1, '[{\"added\": {}}]', 15, 1),
(6, '2021-06-04 15:23:07.763066', '1', 'Canal object (1)', 1, '[{\"added\": {}}]', 16, 1),
(7, '2021-06-04 15:23:11.216228', '2', 'Canal object (2)', 1, '[{\"added\": {}}]', 16, 1),
(8, '2021-06-04 15:32:09.447864', '1', 'Conversación #1', 2, '[{\"changed\": {\"fields\": [\"Usuarios\"]}}]', 16, 1),
(9, '2021-06-04 15:32:24.674603', '2', 'Conversación #2', 2, '[{\"changed\": {\"fields\": [\"Usuarios\"]}}]', 16, 1),
(10, '2021-06-04 17:03:35.246001', '4', 'Mensaje #4', 1, '[{\"added\": {}}]', 15, 1),
(11, '2021-06-04 17:03:49.925304', '3', 'Conversación #3', 1, '[{\"added\": {}}]', 16, 1),
(12, '2021-06-04 17:37:46.215577', '1', 'Mensaje #1', 2, '[{\"changed\": {\"fields\": [\"Text\"]}}]', 15, 1),
(13, '2021-06-04 18:04:59.306645', '1', 'Conversación #1', 2, '[{\"changed\": {\"fields\": [\"Mensajes conver\"]}}]', 16, 1),
(14, '2021-06-04 23:06:48.406208', '5', 'Conversación #5', 3, '', 16, 1),
(15, '2021-06-04 23:07:23.290345', '4', 'Conversación #4', 3, '', 16, 1),
(16, '2021-06-04 23:07:32.427343', '9', 'Mensaje #9', 3, '', 15, 1),
(17, '2021-06-04 23:20:40.112512', '10', 'Mensaje #10', 3, '', 15, 1),
(18, '2021-06-04 23:20:40.117511', '8', 'Mensaje #8', 3, '', 15, 1),
(19, '2021-06-04 23:20:40.121510', '7', 'Mensaje #7', 3, '', 15, 1),
(20, '2021-06-04 23:20:40.130535', '6', 'Mensaje #6', 3, '', 15, 1),
(21, '2021-06-04 23:20:40.133529', '5', 'Mensaje #5', 3, '', 15, 1),
(22, '2021-06-04 23:20:40.136530', '4', 'Mensaje #4', 3, '', 15, 1),
(23, '2021-06-04 23:20:40.139551', '3', 'Mensaje #3', 3, '', 15, 1),
(24, '2021-06-04 23:20:40.142221', '2', 'Mensaje #2', 3, '', 15, 1),
(25, '2021-06-04 23:20:40.146214', '1', 'Mensaje #1', 3, '', 15, 1),
(26, '2021-06-04 23:20:51.327317', '7', 'Conversación #7', 3, '', 16, 1),
(27, '2021-06-04 23:20:51.332330', '6', 'Conversación #6', 3, '', 16, 1),
(28, '2021-06-04 23:20:51.341330', '3', 'Conversación #3', 3, '', 16, 1),
(29, '2021-06-04 23:20:51.346480', '2', 'Conversación #2', 3, '', 16, 1),
(30, '2021-06-04 23:20:51.350486', '1', 'Conversación #1', 3, '', 16, 1),
(31, '2021-06-04 23:34:56.698389', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Usuarios\"]}}]', 16, 1),
(32, '2021-06-04 23:45:13.829939', '2', 'ven al CB', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(33, '2021-06-04 23:45:58.665930', '1', 'Nuevos!!', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(34, '2021-06-04 23:46:12.510160', '5', 'nueva discográfica', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(35, '2021-06-04 23:46:17.175854', '6', 'Buscamos músicos', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Descripcion\", \"Usuario\"]}}]', 14, 1),
(36, '2021-06-04 23:46:38.935050', '4', 'otra noticia', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(37, '2021-06-04 23:46:47.085409', '3', 'Noticia de comala', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(38, '2021-06-04 23:47:01.128280', '7', 'Grupo de rock psicodélico', 2, '[{\"changed\": {\"fields\": [\"Usuario\"]}}]', 14, 1),
(39, '2021-06-04 23:47:12.404415', '8', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Usuario\"]}}]', 14, 1),
(40, '2021-06-06 21:47:47.979213', '1', '¿Buscas Grupo para tu evento?', 1, '[{\"added\": {}}]', 19, 1),
(41, '2021-06-06 21:48:42.098110', '2', '¿Organizamos un concierto?', 1, '[{\"added\": {}}]', 19, 1),
(42, '2021-06-06 21:49:32.561514', '3', 'Compra-venta de Instrumentos', 1, '[{\"added\": {}}]', 19, 1),
(43, '2021-06-06 21:49:59.564142', '4', 'Off-Topic', 1, '[{\"added\": {}}]', 19, 1),
(44, '2021-06-06 22:25:53.650910', '1', 'post de prueba', 3, '', 20, 1),
(45, '2021-06-08 16:17:20.422339', '13', 'MarioOsunaOrdez', 3, '', 4, 1),
(46, '2021-06-09 17:52:59.935283', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 16, 1),
(47, '2021-06-09 17:53:10.200379', '9', 'Conversación #9', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 16, 1),
(48, '2021-06-09 17:53:13.461105', '12', 'Conversación #12', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 16, 1),
(49, '2021-06-09 18:02:45.485512', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 16, 1),
(50, '2021-06-09 19:10:30.369744', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Emisor\", \"Receptor\"]}}]', 16, 1),
(51, '2021-06-09 19:18:02.445766', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Leido emisor\"]}}]', 16, 1),
(52, '2021-06-09 19:19:47.792858', '14', 'Conversación #14', 3, '', 16, 1),
(53, '2021-06-09 19:19:47.795856', '13', 'Conversación #13', 3, '', 16, 1),
(54, '2021-06-09 19:19:47.798861', '12', 'Conversación #12', 3, '', 16, 1),
(55, '2021-06-12 10:56:13.618164', '15', 'Conversación #15', 2, '[{\"changed\": {\"fields\": [\"Leido receptor\"]}}]', 16, 1),
(56, '2021-06-12 11:03:31.277494', '15', 'Conversación #15', 3, '', 16, 1),
(57, '2021-06-12 11:26:51.371994', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(58, '2021-06-12 11:29:20.651881', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(59, '2021-06-12 11:30:30.211811', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(60, '2021-06-12 11:32:20.221580', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(61, '2021-06-12 11:34:44.421018', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(62, '2021-06-12 11:36:18.850928', '16', 'Conversación #16', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\", \"Eliminado receptor\"]}}]', 16, 1),
(63, '2021-06-12 11:37:09.770949', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Usuarios\", \"Receptor\"]}}]', 16, 1),
(64, '2021-06-12 11:37:39.292813', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\"]}}]', 16, 1),
(65, '2021-06-12 11:39:37.875357', '8', 'Conversación #8', 2, '[{\"changed\": {\"fields\": [\"Eliminado emisor\"]}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'audios'),
(8, 'accounts', 'generos'),
(9, 'accounts', 'provincia'),
(10, 'accounts', 'tipoojeador'),
(13, 'accounts', 'userprofilemusicos'),
(12, 'accounts', 'userprofileojeadores'),
(11, 'accounts', 'videos'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(17, 'authtoken', 'token'),
(18, 'authtoken', 'tokenproxy'),
(16, 'chat', 'canal'),
(15, 'chat', 'mensajes'),
(5, 'contenttypes', 'contenttype'),
(21, 'foro', 'mensajes_post'),
(20, 'foro', 'post'),
(19, 'foro', 'tema_foro'),
(14, 'noticias', 'noticias'),
(6, 'sessions', 'session'),
(22, 'social_django', 'association'),
(23, 'social_django', 'code'),
(24, 'social_django', 'nonce'),
(26, 'social_django', 'partial'),
(25, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'noticias', '0001_initial', '2021-06-03 22:13:24.814747'),
(2, 'contenttypes', '0001_initial', '2021-06-03 22:13:24.894226'),
(3, 'auth', '0001_initial', '2021-06-03 22:13:25.153688'),
(4, 'chat', '0001_initial', '2021-06-03 22:13:26.076322'),
(5, 'accounts', '0001_initial', '2021-06-03 22:13:27.112778'),
(6, 'admin', '0001_initial', '2021-06-03 22:13:29.358312'),
(7, 'admin', '0002_logentry_remove_auto_add', '2021-06-03 22:13:29.543205'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-03 22:13:29.568588'),
(9, 'contenttypes', '0002_remove_content_type_name', '2021-06-03 22:13:29.675458'),
(10, 'auth', '0002_alter_permission_name_max_length', '2021-06-03 22:13:29.789059'),
(11, 'auth', '0003_alter_user_email_max_length', '2021-06-03 22:13:29.826053'),
(12, 'auth', '0004_alter_user_username_opts', '2021-06-03 22:13:29.853033'),
(13, 'auth', '0005_alter_user_last_login_null', '2021-06-03 22:13:29.937550'),
(14, 'auth', '0006_require_contenttypes_0002', '2021-06-03 22:13:29.945346'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2021-06-03 22:13:29.968339'),
(16, 'auth', '0008_alter_user_username_max_length', '2021-06-03 22:13:30.038845'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2021-06-03 22:13:30.073862'),
(18, 'auth', '0010_alter_group_name_max_length', '2021-06-03 22:13:30.118888'),
(19, 'auth', '0011_update_proxy_permissions', '2021-06-03 22:13:30.185542'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2021-06-03 22:13:30.219540'),
(21, 'authtoken', '0001_initial', '2021-06-03 22:13:30.297431'),
(22, 'authtoken', '0002_auto_20160226_1747', '2021-06-03 22:13:30.567906'),
(23, 'authtoken', '0003_tokenproxy', '2021-06-03 22:13:30.577895'),
(24, 'sessions', '0001_initial', '2021-06-03 22:13:30.634561'),
(25, 'chat', '0002_canal_usuarios', '2021-06-04 15:31:55.365248'),
(26, 'chat', '0003_canal_created_at', '2021-06-04 23:05:24.323194'),
(27, 'noticias', '0002_noticias_usuario', '2021-06-04 23:43:53.369245'),
(28, 'foro', '0001_initial', '2021-06-06 21:44:01.507161'),
(29, 'foro', '0002_auto_20210606_2345', '2021-06-06 21:45:07.253657'),
(30, 'foro', '0003_auto_20210606_2346', '2021-06-06 21:46:52.893496'),
(31, 'default', '0001_initial', '2021-06-07 17:44:50.230842'),
(32, 'social_auth', '0001_initial', '2021-06-07 17:44:50.237848'),
(33, 'default', '0002_add_related_name', '2021-06-07 17:44:50.489882'),
(34, 'social_auth', '0002_add_related_name', '2021-06-07 17:44:50.498899'),
(35, 'default', '0003_alter_email_max_length', '2021-06-07 17:44:50.521354'),
(36, 'social_auth', '0003_alter_email_max_length', '2021-06-07 17:44:50.531393'),
(37, 'default', '0004_auto_20160423_0400', '2021-06-07 17:44:50.562405'),
(38, 'social_auth', '0004_auto_20160423_0400', '2021-06-07 17:44:50.571157'),
(39, 'social_auth', '0005_auto_20160727_2333', '2021-06-07 17:44:50.605370'),
(40, 'social_django', '0006_partial', '2021-06-07 17:44:50.655476'),
(41, 'social_django', '0007_code_timestamp', '2021-06-07 17:44:50.793519'),
(42, 'social_django', '0008_partial_timestamp', '2021-06-07 17:44:50.854518'),
(43, 'social_django', '0009_auto_20191118_0520', '2021-06-07 17:44:50.978047'),
(44, 'social_django', '0010_uid_db_index', '2021-06-07 17:44:51.037179'),
(45, 'social_django', '0004_auto_20160423_0400', '2021-06-07 17:44:51.054687'),
(46, 'social_django', '0001_initial', '2021-06-07 17:44:51.065172'),
(47, 'social_django', '0002_add_related_name', '2021-06-07 17:44:51.074180'),
(48, 'social_django', '0003_alter_email_max_length', '2021-06-07 17:44:51.083069'),
(49, 'social_django', '0005_auto_20160727_2333', '2021-06-07 17:44:51.091069'),
(50, 'chat', '0004_auto_20210609_1943', '2021-06-09 17:43:59.977037'),
(51, 'chat', '0005_auto_20210609_1952', '2021-06-09 17:52:30.569452'),
(52, 'chat', '0006_auto_20210609_2005', '2021-06-09 18:05:56.858739'),
(53, 'chat', '0007_canal_updated_at', '2021-06-09 18:08:11.026060'),
(54, 'chat', '0008_auto_20210609_2104', '2021-06-09 19:04:39.665444'),
(55, 'chat', '0009_auto_20210609_2109', '2021-06-09 19:09:15.716308'),
(56, 'foro', '0004_auto_20210613_1827', '2021-06-13 16:27:40.277937');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('114xozoztax53b9erba5k27zuxgyibyi', '.eJxVjL0OwiAYAN-F2ZAUgYKju89Avj-kaiAp7WR8d0PSQde7y71Vgn0rae-ypoXVRXl1-mUI9JQ6BD-g3pumVrd1QT0Sfdiub43ldT3av0GBXsY2GgMcAGIO4KwPkkOIGVw-x2hIeCakOE-TE8rWIxgkA8KIyNYEUJ8vB2M5aQ:1ls1m6:4dCblExBwebvdsYCNwjvtBOMVHypzKuxWE-UyabpxsE', '2021-06-26 11:26:02.201975'),
('5lh1h05g1tkrm4zzqlsr36c4o10qobq3', '.eJxVjEEOwiAQRe_C2hBgwIJL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gIK06_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5VszuAxE6Wwp-0yJM1hCpRMOSQEMPlg9IbLS2oFjDGjYBG2CM0FN4MX7Aw3vOB4:1lr18o:YsIAdR4iYhtlpfs4h5eiaRVL6uQ98zGot_yLVr8jJ_A', '2021-06-23 16:33:18.146614'),
('akkpb8smwadesuwgg0v2f0qqtbmzphr1', '.eJxVjEEOwiAQRe_C2hBgwIJL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gIK06_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5VszuAxE6Wwp-0yJM1hCpRMOSQEMPlg9IbLS2oFjDGjYBG2CM0FN4MX7Aw3vOB4:1lr3sp:q7kJm7RGgeFnXp2jAHBBqKVTxYsTEx0LOXAtzbudpvA', '2021-06-23 19:28:59.594589'),
('dn9ilkwrqd1el9q93jbhxbgb6om4ldmt', '.eJxVjDsOwjAQRO_iGlleEn-Wkp4zWLv2mgSQI-VTIe6OI6WAcua9mbeKtK1D3BaZ45jVRYE6_XZM6Sl1B_lB9T7pNNV1Hlnvij7oom9Tltf1cP8OBlqGtubSpWAyI1BnvbeC2LsSCHNgNggAYpNDkeaBE_bQ9SGVMxmTsSX1-QLtKzgO:1lqdsZ:slJR8b9j2rLe5eDDEDF_bUYQZYg5jNR-iSy4K_lqGuo', '2021-06-22 15:42:59.031892'),
('e1klt7fbg783d9b1k9g2ax7d4q73bnmx', '.eJxVjEEOwiAQRe_C2hBgwIJL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gIK06_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5VszuAxE6Wwp-0yJM1hCpRMOSQEMPlg9IbLS2oFjDGjYBG2CM0FN4MX7Aw3vOB4:1lpJIi:nuucKYk2leCWOnA4JllsL1Nm6eLWcF4YUpSfzACk4w4', '2021-06-18 23:32:28.977121'),
('qdggs3per33sir0a7wqtky2q5c2ynw5z', '.eJxVjDsOwjAQRO_iGlleEn-Wkp4zWLv2mgSQI-VTIe6OI6WAcua9mbeKtK1D3BaZ45jVRYE6_XZM6Sl1B_lB9T7pNNV1Hlnvij7oom9Tltf1cP8OBlqGtubSpWAyI1BnvbeC2LsSCHNgNggAYpNDkeaBE_bQ9SGVMxmTsSX1-QLtKzgO:1lovct:DzYaHlfJksyy7pu_Hi0k8t741xUj_lzauxjylp4P5YQ', '2021-06-17 22:15:43.443906'),
('va6upcx9jmrkzmtlnzimionb3l2g9pgm', '.eJxVjMsOwiAQRf-FtSFleIy4dN9vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxYXocXpd4uUHlx3kO9Ub02mVtdljnJX5EG7HFvm5_Vw_w4K9fKtwUxAOjE4ZKM8QMpgSbF12g1-QmNNjA6RHars2ZA9-0EndEnFYQIU7w_KqTcb:1lsThv:GwDM0wXCRdm9022pTFX3RWtg8WwZUNQtEDtrEnGh34g', '2021-06-27 17:15:35.284481'),
('w7vpiqyx7m7l2qe3nght7ctyy5q35q84', '.eJxVjMsOwiAQRf-FtSFleIy4dN9vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxYXocXpd4uUHlx3kO9Ub02mVtdljnJX5EG7HFvm5_Vw_w4K9fKtwUxAOjE4ZKM8QMpgSbF12g1-QmNNjA6RHars2ZA9-0EndEnFYQIU7w_KqTcb:1lpEHY:RnQHtWumybXsTy4cXuccb8z7nMc1GcfDwM3n54cndUg', '2021-06-18 18:10:56.569620');

-- --------------------------------------------------------

--
-- Table structure for table `foro_mensajes_post`
--

CREATE TABLE `foro_mensajes_post` (
  `id` int(11) NOT NULL,
  `title` varchar(160) NOT NULL,
  `descripcion` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `autor_mensaje_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foro_mensajes_post`
--

INSERT INTO `foro_mensajes_post` (`id`, `title`, `descripcion`, `date_posted`, `autor_mensaje_id`) VALUES
(1, 'mensaje de prueba', 'asdasdsdf', '2021-06-06 22:26:04.119837', 3),
(2, 'asdas', 'asdasd', '2021-06-06 22:31:56.009440', 3);

-- --------------------------------------------------------

--
-- Table structure for table `foro_post`
--

CREATE TABLE `foro_post` (
  `id` int(11) NOT NULL,
  `title` varchar(160) NOT NULL,
  `descripcion` longtext NOT NULL,
  `autor_post_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foro_post`
--

INSERT INTO `foro_post` (`id`, `title`, `descripcion`, `autor_post_id`, `created_at`, `updated_at`) VALUES
(2, 'post de prueba', 'asdasd', 3, '2021-06-13 16:27:40.103720', '2021-06-13 16:27:40.157717'),
(3, 'sd', 'ds', 3, '2021-06-13 16:27:40.103720', '2021-06-13 16:27:40.157717');

-- --------------------------------------------------------

--
-- Table structure for table `foro_post_mensajes_post`
--

CREATE TABLE `foro_post_mensajes_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `mensajes_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foro_post_mensajes_post`
--

INSERT INTO `foro_post_mensajes_post` (`id`, `post_id`, `mensajes_post_id`) VALUES
(1, 2, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `foro_tema_foro`
--

CREATE TABLE `foro_tema_foro` (
  `id` int(11) NOT NULL,
  `title` varchar(160) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foro_tema_foro`
--

INSERT INTO `foro_tema_foro` (`id`, `title`, `descripcion`) VALUES
(1, '¿Buscas Grupo para tu evento?', 'Si buscas grupo y tienes unas condiciones muy claras de lo que quieres postealo y los usuarios interesados te contestarán'),
(2, '¿Organizamos un concierto?', 'Si eres un grupo que busca organizar concierto y necesita de grupos o locales donde hacerlo postealo aquí y los interesados se pondrán en contacto contigo'),
(3, 'Compra-venta de Instrumentos', 'Para todos los amantes de la música, en este post podréis buscar nuevos instrumentos o vender los que ya no utiliceis'),
(4, 'Off-Topic', 'Para hablar de cualquier tema');

-- --------------------------------------------------------

--
-- Table structure for table `foro_tema_foro_post_foro`
--

CREATE TABLE `foro_tema_foro_post_foro` (
  `id` int(11) NOT NULL,
  `tema_foro_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foro_tema_foro_post_foro`
--

INSERT INTO `foro_tema_foro_post_foro` (`id`, `tema_foro_id`, `post_id`) VALUES
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `noticias_noticias`
--

CREATE TABLE `noticias_noticias` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noticias_noticias`
--

INSERT INTO `noticias_noticias` (`id`, `title`, `descripcion`, `created_at`, `updated_at`, `usuario_id`) VALUES
(1, 'Nuevos!!', 'Somo relativamente nuevos, te invitamos a una copa', '2021-06-03 22:35:29.845370', '2021-06-04 23:45:58.664822', 4),
(2, 'ven al CB', 'CBGB, ven verás que guay está', '2021-06-03 22:35:44.075211', '2021-06-04 23:45:13.828200', 4),
(3, 'Noticia de comala', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-03 22:39:34.746834', '2021-06-04 23:46:47.084408', 5),
(4, 'otra noticia', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-03 22:39:51.040848', '2021-06-04 23:46:38.934048', 5),
(5, 'nueva discográfica', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-03 22:41:52.917375', '2021-06-04 23:46:12.509153', 6),
(6, 'Buscamos músicos', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-03 22:42:02.482594', '2021-06-04 23:46:17.173942', 6),
(7, 'Grupo de rock psicodélico', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-03 22:44:18.678780', '2021-06-04 23:47:01.127280', 7),
(8, 'prueba', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2021-06-03 22:46:02.442822', '2021-06-04 23:47:12.403414', 8),
(9, 'sdfdfsfsd', '            dddddddddddd', '2021-06-04 23:50:01.492550', '2021-06-04 23:50:01.492550', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`, `created`, `modified`) VALUES
(1, 'google-oauth2', 'comalaband@gmail.com', '{\"auth_time\": 1623169108, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMDwpSnAD8kiRDHic8Y4kkne0Pm5pFsuDvEMNy2ct5zTuncAohfULGdGZNgqidLZH51ZTSE_fyIg9uAPrG-RSSzXVCWJyO3jLdb-XeQxjVFUP9kbL_JVOv5YdNyItmcekJuzglYPx0ej0CLB1KKF0H7m\"}', 12, '2021-06-08 15:55:27.619661', '2021-06-08 16:18:28.824624'),
(3, 'facebook', '2922121581342673', '{\"auth_time\": 1623253734, \"id\": \"2922121581342673\", \"expires\": 5098891, \"granted_scopes\": [\"email\", \"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAANJKmA0c3UBALknMOzhokyiwDcW48u31kl0z3N6l46ebzN9H5oG9COuZAMCC0EK3ZCPfqa3JoAZCb5vW0Th5eL1LzvCRnUsz5EmYStAltmB3rlxwPPPOdCHReOvDLrYH9RprYZCCVyXyAuZCQASi3IijyOMq6sORhjQnsD4yXNdg9OESNzn5\", \"token_type\": null}', 14, '2021-06-08 16:17:31.059404', '2021-06-09 15:48:54.010150'),
(4, 'google-oauth2', 'osunamario26@gmail.com', '{\"auth_time\": 1623253720, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMDsoak-cuwrq-_fp9qV5qo0WI6A1GUHD8DhDaWfgmNLoxrnvJ3rjSaHEUeGcwob7_fDp2qfPqLVwfRaNPPofmrb8f9-X9Cg-4rEbFX_zo7ZCSfdnVgJpVqNy2cfaxVj-CHUTa75-ZlEfSKbUypvePaQ\"}', 15, '2021-06-09 15:48:40.781843', '2021-06-09 15:48:40.786830'),
(5, 'google-oauth2', 'marioosuna26@gmail.com', '{\"auth_time\": 1623256387, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMCAnR6pH17ICcsdCfD1UVjILuk6T4oHYt4PGgUcnMNQElhLzv2ExFyGd9FopchIhnANPkNZEVOpPdQ4ZPBQb1fzOH_jrGknXesGdaT2-iasn7pKlhceTRFRdjuhSICIn_TCnj3u9xb-b0XOLJp5URQ0\"}', 16, '2021-06-09 16:33:07.498675', '2021-06-09 16:33:07.508657');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_audios`
--
ALTER TABLE `accounts_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_generos`
--
ALTER TABLE `accounts_generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_provincia`
--
ALTER TABLE `accounts_provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_tipoojeador`
--
ALTER TABLE `accounts_tipoojeador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_provincia_origen_id_6e00c15a_fk_accounts_` (`provincia_origen_id`);

--
-- Indexes for table `accounts_userprofilemusicos_canal_mensajes`
--
ALTER TABLE `accounts_userprofilemusicos_canal_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_ca_1a475fa1_uniq` (`userprofilemusicos_id`,`canal_id`),
  ADD KEY `accounts_userprofile_canal_id_1e991e6b_fk_chat_cana` (`canal_id`);

--
-- Indexes for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_ge_f7c664c9_uniq` (`userprofilemusicos_id`,`generos_id`),
  ADD KEY `accounts_userprofile_generos_id_6830a457_fk_accounts_` (`generos_id`);

--
-- Indexes for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_no_ddcd8fba_uniq` (`userprofilemusicos_id`,`noticias_id`),
  ADD KEY `accounts_userprofile_noticias_id_f1801b4d_fk_noticias_` (`noticias_id`);

--
-- Indexes for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_au_c786a66b_uniq` (`userprofilemusicos_id`,`audios_id`),
  ADD KEY `accounts_userprofile_audios_id_d9a53020_fk_accounts_` (`audios_id`);

--
-- Indexes for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_vi_d1910b4f_uniq` (`userprofilemusicos_id`,`videos_id`),
  ADD KEY `accounts_userprofile_videos_id_451a8e44_fk_accounts_` (`videos_id`);

--
-- Indexes for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_provincia_origen_id_4f557861_fk_accounts_` (`provincia_origen_id`),
  ADD KEY `accounts_userprofile_tipo_ojeador_id_1471de98_fk_accounts_` (`tipo_ojeador_id`);

--
-- Indexes for table `accounts_userprofileojeadores_canal_mensajes`
--
ALTER TABLE `accounts_userprofileojeadores_canal_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofileojea_userprofileojeadores_id__cf1238b2_uniq` (`userprofileojeadores_id`,`canal_id`),
  ADD KEY `accounts_userprofile_canal_id_bb27c251_fk_chat_cana` (`canal_id`);

--
-- Indexes for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofileojea_userprofileojeadores_id__c180001b_uniq` (`userprofileojeadores_id`,`generos_id`),
  ADD KEY `accounts_userprofile_generos_id_bde67c3a_fk_accounts_` (`generos_id`);

--
-- Indexes for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofileojea_userprofileojeadores_id__ea8cb3ab_uniq` (`userprofileojeadores_id`,`noticias_id`),
  ADD KEY `accounts_userprofile_noticias_id_e1c60d19_fk_noticias_` (`noticias_id`);

--
-- Indexes for table `accounts_videos`
--
ALTER TABLE `accounts_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `chat_canal`
--
ALTER TABLE `chat_canal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_canal_emisor_id_27405b44_fk_auth_user_id` (`emisor_id`),
  ADD KEY `chat_canal_receptor_id_6fb34d78_fk_auth_user_id` (`receptor_id`);

--
-- Indexes for table `chat_canal_mensajes_conver`
--
ALTER TABLE `chat_canal_mensajes_conver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_canal_mensajes_conver_canal_id_mensajes_id_15129d7f_uniq` (`canal_id`,`mensajes_id`),
  ADD KEY `chat_canal_mensajes__mensajes_id_8b83330f_fk_chat_mens` (`mensajes_id`);

--
-- Indexes for table `chat_canal_usuarios`
--
ALTER TABLE `chat_canal_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chat_canal_usuarios_canal_id_user_id_ee955381_uniq` (`canal_id`,`user_id`),
  ADD KEY `chat_canal_usuarios_user_id_812721b8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `chat_mensajes`
--
ALTER TABLE `chat_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_mensajes_emisor_id_9d9d7959_fk_auth_user_id` (`emisor_id`),
  ADD KEY `chat_mensajes_receptor_id_5789791a_fk_auth_user_id` (`receptor_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `foro_mensajes_post`
--
ALTER TABLE `foro_mensajes_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foro_mensajes_post_autor_mensaje_id_cddfec64_fk_auth_user_id` (`autor_mensaje_id`);

--
-- Indexes for table `foro_post`
--
ALTER TABLE `foro_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foro_post_autor_post_id_03835bb0_fk_auth_user_id` (`autor_post_id`);

--
-- Indexes for table `foro_post_mensajes_post`
--
ALTER TABLE `foro_post_mensajes_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foro_post_mensajes_post_post_id_mensajes_post_id_3fa2606a_uniq` (`post_id`,`mensajes_post_id`),
  ADD KEY `foro_post_mensajes_p_mensajes_post_id_fea3815e_fk_foro_mens` (`mensajes_post_id`);

--
-- Indexes for table `foro_tema_foro`
--
ALTER TABLE `foro_tema_foro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foro_tema_foro_post_foro`
--
ALTER TABLE `foro_tema_foro_post_foro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foro_tema_foro_post_foro_tema_foro_id_post_id_43f732a8_uniq` (`tema_foro_id`,`post_id`),
  ADD KEY `foro_tema_foro_post_foro_post_id_d328e107_fk_foro_post_id` (`post_id`);

--
-- Indexes for table `noticias_noticias`
--
ALTER TABLE `noticias_noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticias_noticias_usuario_id_c63df26d_fk_auth_user_id` (`usuario_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_audios`
--
ALTER TABLE `accounts_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_generos`
--
ALTER TABLE `accounts_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `accounts_provincia`
--
ALTER TABLE `accounts_provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `accounts_tipoojeador`
--
ALTER TABLE `accounts_tipoojeador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_canal_mensajes`
--
ALTER TABLE `accounts_userprofilemusicos_canal_mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_canal_mensajes`
--
ALTER TABLE `accounts_userprofileojeadores_canal_mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_videos`
--
ALTER TABLE `accounts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_canal`
--
ALTER TABLE `chat_canal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chat_canal_mensajes_conver`
--
ALTER TABLE `chat_canal_mensajes_conver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `chat_canal_usuarios`
--
ALTER TABLE `chat_canal_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `chat_mensajes`
--
ALTER TABLE `chat_mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `foro_mensajes_post`
--
ALTER TABLE `foro_mensajes_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foro_post`
--
ALTER TABLE `foro_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foro_post_mensajes_post`
--
ALTER TABLE `foro_post_mensajes_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `foro_tema_foro`
--
ALTER TABLE `foro_tema_foro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foro_tema_foro_post_foro`
--
ALTER TABLE `foro_tema_foro_post_foro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `noticias_noticias`
--
ALTER TABLE `noticias_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  ADD CONSTRAINT `accounts_userprofile_provincia_origen_id_6e00c15a_fk_accounts_` FOREIGN KEY (`provincia_origen_id`) REFERENCES `accounts_provincia` (`id`),
  ADD CONSTRAINT `accounts_userprofilemusicos_user_id_aba2a5a6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_canal_mensajes`
--
ALTER TABLE `accounts_userprofilemusicos_canal_mensajes`
  ADD CONSTRAINT `accounts_userprofile_canal_id_1e991e6b_fk_chat_cana` FOREIGN KEY (`canal_id`) REFERENCES `chat_canal` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_1287e1af_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  ADD CONSTRAINT `accounts_userprofile_generos_id_6830a457_fk_accounts_` FOREIGN KEY (`generos_id`) REFERENCES `accounts_generos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_2b48c412_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  ADD CONSTRAINT `accounts_userprofile_noticias_id_f1801b4d_fk_noticias_` FOREIGN KEY (`noticias_id`) REFERENCES `noticias_noticias` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_412878d7_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  ADD CONSTRAINT `accounts_userprofile_audios_id_d9a53020_fk_accounts_` FOREIGN KEY (`audios_id`) REFERENCES `accounts_audios` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_e6bb59a0_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_10654708_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_videos_id_451a8e44_fk_accounts_` FOREIGN KEY (`videos_id`) REFERENCES `accounts_videos` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  ADD CONSTRAINT `accounts_userprofile_provincia_origen_id_4f557861_fk_accounts_` FOREIGN KEY (`provincia_origen_id`) REFERENCES `accounts_provincia` (`id`),
  ADD CONSTRAINT `accounts_userprofile_tipo_ojeador_id_1471de98_fk_accounts_` FOREIGN KEY (`tipo_ojeador_id`) REFERENCES `accounts_tipoojeador` (`id`),
  ADD CONSTRAINT `accounts_userprofileojeadores_user_id_fea11f90_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores_canal_mensajes`
--
ALTER TABLE `accounts_userprofileojeadores_canal_mensajes`
  ADD CONSTRAINT `accounts_userprofile_canal_id_bb27c251_fk_chat_cana` FOREIGN KEY (`canal_id`) REFERENCES `chat_canal` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofileojeadores_e73083f3_fk_accounts_` FOREIGN KEY (`userprofileojeadores_id`) REFERENCES `accounts_userprofileojeadores` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  ADD CONSTRAINT `accounts_userprofile_generos_id_bde67c3a_fk_accounts_` FOREIGN KEY (`generos_id`) REFERENCES `accounts_generos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofileojeadores_de79c8b2_fk_accounts_` FOREIGN KEY (`userprofileojeadores_id`) REFERENCES `accounts_userprofileojeadores` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  ADD CONSTRAINT `accounts_userprofile_noticias_id_e1c60d19_fk_noticias_` FOREIGN KEY (`noticias_id`) REFERENCES `noticias_noticias` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofileojeadores_266eef6b_fk_accounts_` FOREIGN KEY (`userprofileojeadores_id`) REFERENCES `accounts_userprofileojeadores` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chat_canal`
--
ALTER TABLE `chat_canal`
  ADD CONSTRAINT `chat_canal_emisor_id_27405b44_fk_auth_user_id` FOREIGN KEY (`emisor_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `chat_canal_receptor_id_6fb34d78_fk_auth_user_id` FOREIGN KEY (`receptor_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chat_canal_mensajes_conver`
--
ALTER TABLE `chat_canal_mensajes_conver`
  ADD CONSTRAINT `chat_canal_mensajes__mensajes_id_8b83330f_fk_chat_mens` FOREIGN KEY (`mensajes_id`) REFERENCES `chat_mensajes` (`id`),
  ADD CONSTRAINT `chat_canal_mensajes_conver_canal_id_3bb988dd_fk_chat_canal_id` FOREIGN KEY (`canal_id`) REFERENCES `chat_canal` (`id`);

--
-- Constraints for table `chat_canal_usuarios`
--
ALTER TABLE `chat_canal_usuarios`
  ADD CONSTRAINT `chat_canal_usuarios_canal_id_c88e1814_fk_chat_canal_id` FOREIGN KEY (`canal_id`) REFERENCES `chat_canal` (`id`),
  ADD CONSTRAINT `chat_canal_usuarios_user_id_812721b8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `chat_mensajes`
--
ALTER TABLE `chat_mensajes`
  ADD CONSTRAINT `chat_mensajes_emisor_id_9d9d7959_fk_auth_user_id` FOREIGN KEY (`emisor_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `chat_mensajes_receptor_id_5789791a_fk_auth_user_id` FOREIGN KEY (`receptor_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `foro_mensajes_post`
--
ALTER TABLE `foro_mensajes_post`
  ADD CONSTRAINT `foro_mensajes_post_autor_mensaje_id_cddfec64_fk_auth_user_id` FOREIGN KEY (`autor_mensaje_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `foro_post`
--
ALTER TABLE `foro_post`
  ADD CONSTRAINT `foro_post_autor_post_id_03835bb0_fk_auth_user_id` FOREIGN KEY (`autor_post_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `foro_post_mensajes_post`
--
ALTER TABLE `foro_post_mensajes_post`
  ADD CONSTRAINT `foro_post_mensajes_p_mensajes_post_id_fea3815e_fk_foro_mens` FOREIGN KEY (`mensajes_post_id`) REFERENCES `foro_mensajes_post` (`id`),
  ADD CONSTRAINT `foro_post_mensajes_post_post_id_b4c18b84_fk_foro_post_id` FOREIGN KEY (`post_id`) REFERENCES `foro_post` (`id`);

--
-- Constraints for table `foro_tema_foro_post_foro`
--
ALTER TABLE `foro_tema_foro_post_foro`
  ADD CONSTRAINT `foro_tema_foro_post__tema_foro_id_f6ccb99c_fk_foro_tema` FOREIGN KEY (`tema_foro_id`) REFERENCES `foro_tema_foro` (`id`),
  ADD CONSTRAINT `foro_tema_foro_post_foro_post_id_d328e107_fk_foro_post_id` FOREIGN KEY (`post_id`) REFERENCES `foro_post` (`id`);

--
-- Constraints for table `noticias_noticias`
--
ALTER TABLE `noticias_noticias`
  ADD CONSTRAINT `noticias_noticias_usuario_id_c63df26d_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
