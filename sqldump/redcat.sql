-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mai 2021 la 16:50
-- Versiune server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redcat`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `about_rows`
--

CREATE TABLE IF NOT EXISTS `about_rows` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `about_rows`
--

INSERT INTO `about_rows` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'about-section', '2021-04-11 19:19:21', 1, 1, '2021-04-11 16:19:17', '2021-04-11 16:19:21');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `about_rows_components`
--

CREATE TABLE IF NOT EXISTS `about_rows_components` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `component_id` int(11) NOT NULL,
  `about_row_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `about_rows_components`
--

INSERT INTO `about_rows_components` (`id`, `field`, `order`, `component_type`, `component_id`, `about_row_id`) VALUES
(1, 'paragraph', 1, 'components_text_box_text_boxes', 5, 1),
(2, 'paragraph', 2, 'components_text_box_text_boxes', 6, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `catalogs`
--

CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'voice-catalog', '2021-04-11 19:27:38', 1, 1, '2021-04-11 16:26:54', '2021-04-11 16:30:17');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `catalogs_components`
--

CREATE TABLE IF NOT EXISTS `catalogs_components` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `component_id` int(11) NOT NULL,
  `catalog_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `catalogs_components`
--

INSERT INTO `catalogs_components` (`id`, `field`, `order`, `component_type`, `component_id`, `catalog_id`) VALUES
(1, 'item', 1, 'components_audio_clip_audio_clips', 1, 1),
(2, 'item', 2, 'components_audio_clip_audio_clips', 2, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `catalogues`
--

CREATE TABLE IF NOT EXISTS `catalogues` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `keywords` longtext COLLATE utf8_bin,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `catalogues`
--

INSERT INTO `catalogues` (`id`, `title`, `subtitle`, `language`, `age`, `gender`, `keywords`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Voice code:628209', 'Albanian', 'Albanian', '15 - 19 years old', 'Teen-girl voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(2, 'Voice code:78c0ef', 'Bulgarian', 'Bulgarian', '30 - 40', 'Male voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(3, 'Voice code:33166b', 'Serbian', 'Serbian', '8 - 12 years old', 'Female voice-over', '["deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(4, 'Voice code:fbd1f7', 'American-English', 'American-English', '12 - 15 years old', 'Female voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(5, 'Voice code:54a1b8', 'Czech', 'Czech', '25 - 30 years old', 'Kid voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(6, 'Voice code:910450', 'Deutsch', 'Deutsch', '50 - 60 years old', 'Teen boy voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(7, 'Voice code:157e97', 'American-English', 'American-English', '25 - 30 years old', 'Kid voice-over', '["powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(8, 'Voice code:827a37', 'Norwegian', 'Norwegian', '20 - 25 years old', 'Female voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(9, 'Voice code:ee0fb5', 'polish', 'polish', '5 - 8 years old', 'Teen boy voice-over', '["cartoon-ish","deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(10, 'Voice code:56f8d0', 'Swedish', 'Swedish', '30 - 40', 'Teen-girl voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(11, 'Voice code:f1ba3f', 'French', 'French', '30 - 40', 'Female voice-over', '["warm","soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(12, 'Voice code:3bd6de', 'Slovakian', 'Slovakian', '3 - 4 years old', 'Male voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(13, 'Voice code:699688', 'Portuguese', 'Portuguese', '20 - 25 years old', 'Teen-girl voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(14, 'Voice code:69e4f1', 'Croatian', 'Croatian', '25 - 30 years old', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(15, 'Voice code:071061', 'Romanian', 'Romanian', '15 - 19 years old', 'Teen boy voice-over', '["powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(16, 'Voice code:cdb0a0', 'Croatian', 'Croatian', '30 - 40', 'Female voice-over', '["cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(17, 'Voice code:399cc8', 'Hungarian', 'Hungarian', '30 - 40', 'Female voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(18, 'Voice code:e3fbec', 'Lithuanian', 'Lithuanian', '50 - 60 years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(19, 'Voice code:4184c1', 'Greek', 'Greek', 'years old', 'Teen-girl voice-over', '["cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(20, 'Voice code:80e470', 'Russian', 'Russian', '30 - 40', 'Female voice-over', '["deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(21, 'Voice code:518f7e', 'Arabian', 'Arabian', '30 - 40', 'Kid voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(22, 'Voice code:65b7e7', 'American-English', 'American-English', '30 - 40', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(23, 'Voice code:ae147c', 'Portuguese', 'Portuguese', '3 - 4 years old', 'Teen boy voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(24, 'Voice code:e22800', 'Serbian', 'Serbian', '40 -50 years old', 'Female voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(25, 'Voice code:80267e', 'Bulgarian', 'Bulgarian', '30 - 40', 'Male voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(26, 'Voice code:785213', 'Czech', 'Czech', '30 - 40', 'Male voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(27, 'Voice code:49a160', 'Czech', 'Czech', '5 - 8 years old', 'Female voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(28, 'Voice code:010dff', 'Russian', 'Russian', '12 - 15 years old', 'Female voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(29, 'Voice code:32346c', 'Deutsch', 'Deutsch', '40 -50 years old', 'Female voice-over', '["warm"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(30, 'Voice code:18e128', 'Romanian', 'Romanian', '12 - 15 years old', 'Kid voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(31, 'Voice code:1d8a4f', 'Swedish', 'Swedish', '40 -50 years old', 'Kid voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(32, 'Voice code:9ceb2d', 'Swedish', 'Swedish', '8 - 12 years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(33, 'Voice code:b3c4d3', 'American-English', 'American-English', '40 -50 years old', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(34, 'Voice code:24d65c', 'Deutsch', 'Deutsch', '8 - 12 years old', 'Teen boy voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(35, 'Voice code:ec83c1', 'polish', 'polish', '25 - 30 years old', 'Teen-girl voice-over', '["cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(36, 'Voice code:eb0885', 'Portuguese', 'Portuguese', 'years old', 'Teen-girl voice-over', '["deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(37, 'Voice code:33b40c', 'Bulgarian', 'Bulgarian', '25 - 30 years old', 'Teen boy voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(38, 'Voice code:8310c0', 'Russian', 'Russian', 'over 60', 'Teen-girl voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(39, 'Voice code:57545d', 'Norwegian', 'Norwegian', 'years old', 'Teen-girl voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(40, 'Voice code:d54b83', 'Hungarian', 'Hungarian', '5 - 8 years old', 'Male voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(41, 'Voice code:698592', 'English', 'English', '40 -50 years old', 'Teen boy voice-over', '["soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(42, 'Voice code:829e77', 'Portuguese', 'Portuguese', '20 - 25 years old', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(43, 'Voice code:f30c5a', 'Romanian', 'Romanian', '15 - 19 years old', 'Female voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(44, 'Voice code:0c51fe', 'Romanian', 'Romanian', '12 - 15 years old', 'Female voice-over', '["soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(45, 'Voice code:a59627', 'Albanian', 'Albanian', '3 - 4 years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(46, 'Voice code:824fe4', 'French', 'French', '50 - 60 years old', 'Kid voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(47, 'Voice code:64f8a4', 'Czech', 'Czech', '20 - 25 years old', 'Teen boy voice-over', '["warm"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(48, 'Voice code:77983c', 'Deutsch', 'Deutsch', 'years old', 'Teen-girl voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(49, 'Voice code:68ebb3', 'English', 'English', 'years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(50, 'Voice code:d849b3', 'Slovakian', 'Slovakian', '20 - 25 years old', 'Female voice-over', '["soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(51, 'Voice code:7e872b', 'Serbian', 'Serbian', 'over 60', 'Female voice-over', '["funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(52, 'Voice code:22af34', 'Swedish', 'Swedish', 'over 60', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(53, 'Voice code:e59a3c', 'Lithuanian', 'Lithuanian', '8 - 12 years old', 'Teen-girl voice-over', '["warm","soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(54, 'Voice code:be0203', 'Croatian', 'Croatian', 'years old', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(55, 'Voice code:e047bd', 'Greek', 'Greek', '30 - 40', 'Kid voice-over', '["cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(56, 'Voice code:6299e6', 'Norwegian', 'Norwegian', 'years old', 'Kid voice-over', '["cartoon-ish","deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(57, 'Voice code:30c7e8', 'Spanish', 'Spanish', '12 - 15 years old', 'Male voice-over', '["powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(58, 'Voice code:b54eb0', 'Russian', 'Russian', '25 - 30 years old', 'Kid voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(59, 'Voice code:1f22e7', 'Spanish', 'Spanish', '30 - 40', 'Male voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(60, 'Voice code:b6027e', 'Norwegian', 'Norwegian', '20 - 25 years old', 'Teen-girl voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(61, 'Voice code:3272d4', 'Hungarian', 'Hungarian', 'years old', 'Teen boy voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(62, 'Voice code:b1ea4f', 'Serbian', 'Serbian', '12 - 15 years old', 'Kid voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(63, 'Voice code:c177a2', 'Hungarian', 'Hungarian', '15 - 19 years old', 'Kid voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(64, 'Voice code:3280d7', 'Norwegian', 'Norwegian', '20 - 25 years old', 'Teen boy voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(65, 'Voice code:74b987', 'English', 'English', '8 - 12 years old', 'Male voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(66, 'Voice code:5b1211', 'Russian', 'Russian', 'years old', 'Teen boy voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(67, 'Voice code:3b1cdb', 'Swedish', 'Swedish', 'over 60', 'Male voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(68, 'Voice code:872669', 'Hungarian', 'Hungarian', '40 -50 years old', 'Female voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(69, 'Voice code:3fba2f', 'Spanish', 'Spanish', '12 - 15 years old', 'Kid voice-over', '["deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(70, 'Voice code:2b873f', 'Russian', 'Russian', '3 - 4 years old', 'Kid voice-over', '["cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(71, 'Voice code:b75661', 'Norwegian', 'Norwegian', '40 -50 years old', 'Male voice-over', '["convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(72, 'Voice code:41fa87', 'Danish', 'Danish', '3 - 4 years old', 'Kid voice-over', '["soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(73, 'Voice code:c524b0', 'Danish', 'Danish', '30 - 40', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(74, 'Voice code:088409', 'polish', 'polish', '50 - 60 years old', 'Male voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(75, 'Voice code:608e77', 'Norwegian', 'Norwegian', '15 - 19 years old', 'Kid voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(76, 'Voice code:ef37a9', 'Greek', 'Greek', '3 - 4 years old', 'Male voice-over', '["convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(77, 'Voice code:1f70ec', 'Spanish', 'Spanish', '25 - 30 years old', 'Teen-girl voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(78, 'Voice code:03f2e9', 'Serbian', 'Serbian', '8 - 12 years old', 'Kid voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(79, 'Voice code:918781', 'Lithuanian', 'Lithuanian', '20 - 25 years old', 'Female voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(80, 'Voice code:b2a6aa', 'Serbian', 'Serbian', 'years old', 'Teen-girl voice-over', '["warm","soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(81, 'Voice code:8f4303', 'Greek', 'Greek', '25 - 30 years old', 'Male voice-over', '["funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(82, 'Voice code:dc8c53', 'Lithuanian', 'Lithuanian', '40 -50 years old', 'Kid voice-over', '["powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(83, 'Voice code:530866', 'Danish', 'Danish', '40 -50 years old', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(84, 'Voice code:5b1b15', 'Arabian', 'Arabian', '30 - 40', 'Female voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(85, 'Voice code:7a8024', 'Romanian', 'Romanian', '15 - 19 years old', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(86, 'Voice code:e0390c', 'polish', 'polish', 'over 60', 'Male voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(87, 'Voice code:81cf94', 'Russian', 'Russian', '20 - 25 years old', 'Teen-girl voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(88, 'Voice code:0ae35f', 'Serbian', 'Serbian', '30 - 40', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(89, 'Voice code:05cf47', 'Danish', 'Danish', '40 -50 years old', 'Female voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(90, 'Voice code:0b4152', 'Danish', 'Danish', '50 - 60 years old', 'Teen boy voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(91, 'Voice code:ad62cc', 'Romanian', 'Romanian', '40 -50 years old', 'Teen-girl voice-over', '["cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(92, 'Voice code:55faf9', 'Slovakian', 'Slovakian', '20 - 25 years old', 'Teen boy voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(93, 'Voice code:309055', 'Bulgarian', 'Bulgarian', 'over 60', 'Male voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(94, 'Voice code:f92ea1', 'French', 'French', '12 - 15 years old', 'Teen-girl voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(95, 'Voice code:cdd764', 'Swedish', 'Swedish', '12 - 15 years old', 'Kid voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(96, 'Voice code:600437', 'Danish', 'Danish', '8 - 12 years old', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(97, 'Voice code:f334ec', 'Lithuanian', 'Lithuanian', '12 - 15 years old', 'Female voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(98, 'Voice code:fbd157', 'Lithuanian', 'Lithuanian', '30 - 40', 'Male voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(99, 'Voice code:f0566d', 'Serbian', 'Serbian', '8 - 12 years old', 'Teen boy voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(100, 'Voice code:a3912e', 'American-English', 'American-English', '15 - 19 years old', 'Male voice-over', '["warm","soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(101, 'Voice code:335bdc', 'Hungarian', 'Hungarian', '8 - 12 years old', 'Kid voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(102, 'Voice code:2e6415', 'Swedish', 'Swedish', '20 - 25 years old', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(103, 'Voice code:70a609', 'Hungarian', 'Hungarian', 'years old', 'Female voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(104, 'Voice code:095468', 'Croatian', 'Croatian', '50 - 60 years old', 'Teen-girl voice-over', '["deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(105, 'Voice code:3f060d', 'Swedish', 'Swedish', '20 - 25 years old', 'Teen boy voice-over', '["warm","soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(106, 'Voice code:9d9087', 'Albanian', 'Albanian', '5 - 8 years old', 'Teen boy voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(107, 'Voice code:1342b2', 'Greek', 'Greek', '12 - 15 years old', 'Female voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(108, 'Voice code:29b585', 'Arabian', 'Arabian', '40 -50 years old', 'Teen-girl voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(109, 'Voice code:6e899c', 'Hungarian', 'Hungarian', '8 - 12 years old', 'Teen boy voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(110, 'Voice code:1ce8c4', 'Deutsch', 'Deutsch', '25 - 30 years old', 'Male voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(111, 'Voice code:1220a2', 'Hungarian', 'Hungarian', 'over 60', 'Teen boy voice-over', '["warm","soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(112, 'Voice code:1c897d', 'polish', 'polish', 'over 60', 'Teen boy voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(113, 'Voice code:6f6cce', 'Deutsch', 'Deutsch', '30 - 40', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(114, 'Voice code:6e184b', 'English', 'English', '3 - 4 years old', 'Kid voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(115, 'Voice code:71372f', 'Romanian', 'Romanian', '15 - 19 years old', 'Teen-girl voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(116, 'Voice code:5443ba', 'Greek', 'Greek', '20 - 25 years old', 'Female voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(117, 'Voice code:43e953', 'Portuguese', 'Portuguese', '40 -50 years old', 'Male voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(118, 'Voice code:2ac9d5', 'Lithuanian', 'Lithuanian', '20 - 25 years old', 'Male voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(119, 'Voice code:a24b38', 'Spanish', 'Spanish', '5 - 8 years old', 'Male voice-over', '["soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(120, 'Voice code:7993c1', 'Norwegian', 'Norwegian', '25 - 30 years old', 'Teen boy voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(121, 'Voice code:d76d0c', 'Portuguese', 'Portuguese', '40 -50 years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(122, 'Voice code:6ca9b0', 'Bulgarian', 'Bulgarian', '30 - 40', 'Teen-girl voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(123, 'Voice code:38fe7f', 'Spanish', 'Spanish', '50 - 60 years old', 'Teen-girl voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(124, 'Voice code:a9bdf9', 'Arabian', 'Arabian', '8 - 12 years old', 'Female voice-over', '["powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(125, 'Voice code:99871a', 'Portuguese', 'Portuguese', '25 - 30 years old', 'Kid voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(126, 'Voice code:20cbfb', 'Lithuanian', 'Lithuanian', '3 - 4 years old', 'Teen-girl voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(127, 'Voice code:28f456', 'Bulgarian', 'Bulgarian', '12 - 15 years old', 'Teen-girl voice-over', '["powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(128, 'Voice code:470c62', 'Swedish', 'Swedish', '5 - 8 years old', 'Female voice-over', '["cartoon-ish","deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(129, 'Voice code:29dbde', 'Bulgarian', 'Bulgarian', '50 - 60 years old', 'Kid voice-over', '["deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(130, 'Voice code:876fd7', 'Danish', 'Danish', 'over 60', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(131, 'Voice code:248751', 'Lithuanian', 'Lithuanian', '12 - 15 years old', 'Teen-girl voice-over', '["cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(132, 'Voice code:6cd72d', 'Greek', 'Greek', '25 - 30 years old', 'Teen boy voice-over', '["warm","soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(133, 'Voice code:0588f5', 'Slovakian', 'Slovakian', '30 - 40', 'Female voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(134, 'Voice code:bd91a7', 'English', 'English', '8 - 12 years old', 'Kid voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(135, 'Voice code:aeaeec', 'Lithuanian', 'Lithuanian', '5 - 8 years old', 'Female voice-over', '["soft","cartoon-ish","deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(136, 'Voice code:86c843', 'Portuguese', 'Portuguese', '30 - 40', 'Kid voice-over', '["powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(137, 'Voice code:97a84f', 'Hungarian', 'Hungarian', '5 - 8 years old', 'Male voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(138, 'Voice code:0c4901', 'French', 'French', '30 - 40', 'Kid voice-over', '["cartoon-ish","deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(139, 'Voice code:1c6e51', 'Romanian', 'Romanian', '8 - 12 years old', 'Kid voice-over', '["deep","powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(140, 'Voice code:bdb960', 'Greek', 'Greek', '30 - 40', 'Male voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(141, 'Voice code:c72ff3', 'Romanian', 'Romanian', '40 -50 years old', 'Teen boy voice-over', '["warm"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(142, 'Voice code:35674a', 'Spanish', 'Spanish', '12 - 15 years old', 'Male voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(143, 'Voice code:88da44', 'Norwegian', 'Norwegian', 'years old', 'Male voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(144, 'Voice code:3e5d05', 'Swedish', 'Swedish', '50 - 60 years old', 'Kid voice-over', '["convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(145, 'Voice code:4b0b41', 'Greek', 'Greek', '8 - 12 years old', 'Male voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(146, 'Voice code:599efc', 'Russian', 'Russian', '8 - 12 years old', 'Male voice-over', '["deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(147, 'Voice code:ad05ea', 'Croatian', 'Croatian', '8 - 12 years old', 'Teen-girl voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(148, 'Voice code:410755', 'Portuguese', 'Portuguese', 'years old', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(149, 'Voice code:de4919', 'Portuguese', 'Portuguese', '8 - 12 years old', 'Teen boy voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(150, 'Voice code:8f8fa0', 'American-English', 'American-English', '15 - 19 years old', 'Female voice-over', '["powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(151, 'Voice code:237125', 'Croatian', 'Croatian', '5 - 8 years old', 'Female voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(152, 'Voice code:d1d962', 'Greek', 'Greek', '40 -50 years old', 'Male voice-over', '["warm","soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(153, 'Voice code:a6f688', 'English', 'English', '50 - 60 years old', 'Kid voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(154, 'Voice code:3806bb', 'Slovakian', 'Slovakian', '25 - 30 years old', 'Teen boy voice-over', '["powerful","convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(155, 'Voice code:cf08e9', 'Serbian', 'Serbian', 'years old', 'Teen boy voice-over', '["soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(156, 'Voice code:9b810f', 'American-English', 'American-English', '20 - 25 years old', 'Female voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(157, 'Voice code:933703', 'Danish', 'Danish', '3 - 4 years old', 'Teen-girl voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(158, 'Voice code:85152e', 'Swedish', 'Swedish', '8 - 12 years old', 'Female voice-over', '["soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(159, 'Voice code:5ba153', 'Spanish', 'Spanish', '40 -50 years old', 'Teen-girl voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(160, 'Voice code:595413', 'Serbian', 'Serbian', '20 - 25 years old', 'Male voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(161, 'Voice code:604ba7', 'Swedish', 'Swedish', '5 - 8 years old', 'Male voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(162, 'Voice code:cc6f30', 'Hungarian', 'Hungarian', '50 - 60 years old', 'Female voice-over', '["warm"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(163, 'Voice code:cef2a5', 'Bulgarian', 'Bulgarian', '30 - 40', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(164, 'Voice code:b09f7c', 'Spanish', 'Spanish', 'years old', 'Teen-girl voice-over', '["warm","soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(165, 'Voice code:3740a7', 'Albanian', 'Albanian', 'years old', 'Teen-girl voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(166, 'Voice code:81c70b', 'Serbian', 'Serbian', '50 - 60 years old', 'Kid voice-over', '["powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(167, 'Voice code:c47c1c', 'Albanian', 'Albanian', '12 - 15 years old', 'Male voice-over', '["soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(168, 'Voice code:99db39', 'Albanian', 'Albanian', '25 - 30 years old', 'Teen boy voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(169, 'Voice code:a8e4ee', 'Deutsch', 'Deutsch', '15 - 19 years old', 'Male voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(170, 'Voice code:fb1e77', 'Danish', 'Danish', 'over 60', 'Female voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(171, 'Voice code:10348a', 'Hungarian', 'Hungarian', '25 - 30 years old', 'Teen boy voice-over', '["warm","soft","cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(172, 'Voice code:c3093c', 'Albanian', 'Albanian', '12 - 15 years old', 'Kid voice-over', '["funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(173, 'Voice code:1722aa', 'Slovakian', 'Slovakian', '40 -50 years old', 'Teen boy voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(174, 'Voice code:b11ffc', 'Deutsch', 'Deutsch', 'years old', 'Teen boy voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(175, 'Voice code:a7add3', 'Spanish', 'Spanish', '15 - 19 years old', 'Teen boy voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(176, 'Voice code:0d2ec7', 'Czech', 'Czech', '8 - 12 years old', 'Teen-girl voice-over', '["cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(177, 'Voice code:be241b', 'Croatian', 'Croatian', '50 - 60 years old', 'Teen boy voice-over', '[]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(178, 'Voice code:8ccec2', 'Arabian', 'Arabian', '15 - 19 years old', 'Male voice-over', '["deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(179, 'Voice code:c91bf1', 'French', 'French', 'years old', 'Female voice-over', '["deep","powerful","convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(180, 'Voice code:bf9709', 'Serbian', 'Serbian', '15 - 19 years old', 'Female voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(181, 'Voice code:fed50c', 'Danish', 'Danish', '25 - 30 years old', 'Teen-girl voice-over', '["convincing"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(182, 'Voice code:dce2e0', 'Serbian', 'Serbian', 'over 60', 'Teen boy voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(183, 'Voice code:f1f68a', 'Portuguese', 'Portuguese', '25 - 30 years old', 'Male voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(184, 'Voice code:297241', 'Hungarian', 'Hungarian', '15 - 19 years old', 'Male voice-over', '["cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(185, 'Voice code:c7a7be', 'Croatian', 'Croatian', 'years old', 'Kid voice-over', '["cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(186, 'Voice code:7bf22f', 'Romanian', 'Romanian', '3 - 4 years old', 'Male voice-over', '["warm","soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(187, 'Voice code:d9ee9c', 'Romanian', 'Romanian', '8 - 12 years old', 'Male voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(188, 'Voice code:022594', 'Danish', 'Danish', '3 - 4 years old', 'Teen boy voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(189, 'Voice code:001485', 'American-English', 'American-English', '5 - 8 years old', 'Male voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(190, 'Voice code:a17a87', 'Arabian', 'Arabian', '5 - 8 years old', 'Female voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(191, 'Voice code:2a8460', 'English', 'English', '15 - 19 years old', 'Female voice-over', '["convincing","funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(192, 'Voice code:c2db98', 'Lithuanian', 'Lithuanian', '3 - 4 years old', 'Teen-girl voice-over', '["soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(193, 'Voice code:6bc4f0', 'Bulgarian', 'Bulgarian', 'over 60', 'Teen-girl voice-over', '["deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(194, 'Voice code:3e366a', 'Serbian', 'Serbian', '25 - 30 years old', 'Female voice-over', '["soft","cartoon-ish"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(195, 'Voice code:391b44', 'Serbian', 'Serbian', '12 - 15 years old', 'Teen-girl voice-over', '["soft","cartoon-ish","deep","powerful"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(196, 'Voice code:320291', 'English', 'English', '30 - 40', 'Kid voice-over', '["funny","smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(197, 'Voice code:137566', 'Portuguese', 'Portuguese', '50 - 60 years old', 'Teen-girl voice-over', '["soft"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(198, 'Voice code:f8bf0c', 'Serbian', 'Serbian', '20 - 25 years old', 'Kid voice-over', '["cartoon-ish","deep","powerful","convincing","funny"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(199, 'Voice code:5ae4d4', 'Swedish', 'Swedish', '30 - 40', 'Male voice-over', '["smiling"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27'),
(200, 'Voice code:f8a316', 'Danish', 'Danish', '40 -50 years old', 'Male voice-over', '["cartoon-ish","deep"]', NULL, NULL, NULL, '2021-05-11 14:49:27', '2021-05-11 14:49:27');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `components_audio_clip_audio_clips`
--

CREATE TABLE IF NOT EXISTS `components_audio_clip_audio_clips` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `components_audio_clip_audio_clips`
--

INSERT INTO `components_audio_clip_audio_clips` (`id`, `title`, `subtitle`, `language`, `gender`) VALUES
(1, 'Noureldine', 'RCS-IOTA898', 'English', 'female'),
(2, 'Caitlin', 'RCS-IOTR800', 'German', 'male');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `components_customers_customers`
--

CREATE TABLE IF NOT EXISTS `components_customers_customers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `components_customer_box_customer_boxes`
--

CREATE TABLE IF NOT EXISTS `components_customer_box_customer_boxes` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `components_customer_box_customer_boxes`
--

INSERT INTO `components_customer_box_customer_boxes` (`id`, `name`, `url`) VALUES
(1, 'peugeot', 'https://www.peugeot.com/en/'),
(2, 'BBC', 'https://www.bbc.com/');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `components_text_box_testimonials`
--

CREATE TABLE IF NOT EXISTS `components_text_box_testimonials` (
  `id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `components_text_box_text_boxes`
--

CREATE TABLE IF NOT EXISTS `components_text_box_text_boxes` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `body` longtext COLLATE utf8_bin
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `components_text_box_text_boxes`
--

INSERT INTO `components_text_box_text_boxes` (`id`, `title`, `body`) VALUES
(1, 'Title 1', '"Thank you so much for sending this [voiceover project] through. It’s lovely to work with a team who is as reliable as you are. I know when I open my mailbox in the morning, the files will be waiting – no need for me to chase and delay other work while we wait for the audio.\nThanks again and I’ll be in touch with further projects in the New Year. […] Please pass on our thanks to Katie [English UK voice talent] as well – she’s a favourite amongst the team here!"​\n​\nNicole Mekisich, IT Training Consultant Kaleidoscope Training - Australia'),
(2, 'Title 2', '"Hey Dan, I wanted to thank you and your team for the quick turn around on ergonomics, you got us all 12 languages before the 20th and it was a huge help. Thanks again! I’m hoping to have files ready for you a little earlier for our next month''s topic... Cheers."\n\nKyle Morton, Senior Editor Multimedia Training Systems, Inc. - USA More testimonials...'),
(3, 'Testimonial 1', '"Thank you so much for sending this [voiceover project] through. It’s lovely to work with a team who is as reliable as you are. I know when I open my mailbox in the morning, the files will be waiting – no need for me to chase and delay other work while we wait for the audio.\nThanks again and I’ll be in touch with further projects in the New Year. […] Please pass on our thanks to Katie [English UK voice talent] as well – she’s a favourite amongst the team here!"​\n​\nNicole Mekisich, IT Training Consultant Kaleidoscope Training - Australia'),
(4, 'Testimonial 2', '"Hey Dan, I wanted to thank you and your team for the quick turn around on ergonomics, you got us all 12 languages before the 20th and it was a huge help. Thanks again! I’m hoping to have files ready for you a little earlier for our next month''s topic... Cheers."\n\nKyle Morton, Senior Editor Multimedia Training Systems, Inc. - USA More testimonials...'),
(5, 'WHAT ARE WE DOING?', 'Red Cat Studios provides a full range of language services including translation, audio and video localisation, multilingual voiceover. We have succeeded by listening to and working with our clients, who increasingly demand the quality, professionalism and support that only a major business localisation services provider can supply.\nFurthermore, since we are not an agent - to pass the buck and keep the share, but a first hand service provider, we don''t pay the middleman and pass the savings onto our clients!'),
(6, 'HOW ARE WE DOING IT?', 'Our specialists enable our clients to maximise the possibilities available to them to deliver an enhanced service that better reflects the changing needs of our increasingly diversified multicultural environment. We view the long-term relationships with our clients as an indication that we are providing the service and quality they require - and we are grateful that they are telling others about Red Cat Studios, too.\nWe value our client''s feedback and do the utmost to reflect this in the products we deliver.');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` longtext COLLATE utf8_bin,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::webhooks', '{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}', 'object', NULL, NULL),
(3, 'model_def_strapi::permission', '{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::role', '{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::user', '{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}}', 'object', NULL, NULL),
(6, 'model_def_plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(7, 'model_def_plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::upload.file', '{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(10, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]}}', 'object', '', ''),
(11, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true}', 'object', 'development', ''),
(12, 'plugin_content_manager_configuration_content_types::strapi::permission', '{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::strapi::role', '{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::user', '{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', '', ''),
(19, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', '', ''),
(20, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', '', ''),
(21, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', '', ''),
(22, 'model_def_text-box.text-box', '{"uid":"text-box.text-box","collectionName":"components_text_box_text_boxes","info":{"name":"textBox","icon":"ad"},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"body":{"type":"richtext"}}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_components::text-box.text-box', '{"uid":"text-box.text-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"body","size":12}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
(24, 'model_def_text-box.testimonials', '{"uid":"text-box.testimonials","collectionName":"components_text_box_testimonials","info":{"name":"testimonials","icon":"address-card"},"options":{"timestamps":false},"attributes":{}}', 'object', NULL, NULL),
(25, 'model_def_application::page-row.page-row', '{"uid":"application::page-row.page-row","collectionName":"page_rows","kind":"collectionType","info":{"name":"testimonials","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"testimonial":{"type":"component","repeatable":true,"component":"text-box.text-box"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(28, 'model_def_text-box.testimonial', '{"uid":"text-box.testimonial","collectionName":"components_text_box_testimonials","info":{"name":"testimonial","icon":"address-book"},"options":{"timestamps":false},"attributes":{}}', 'object', NULL, NULL),
(29, 'model_def_application::testimonials-row.testimonials-row', '{"uid":"application::testimonials-row.testimonials-row","collectionName":"testimonials_rows","kind":"collectionType","info":{"name":"testimonials-row","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"Testimonial":{"type":"component","repeatable":true,"component":"text-box.text-box"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::application::testimonials-row.testimonials-row', '{"uid":"application::testimonials-row.testimonials-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Testimonial":{"edit":{"label":"Testimonial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Testimonial","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","published_at","created_at"],"edit":[[{"name":"name","size":6}],[{"name":"Testimonial","size":12}]],"editRelations":[]}}', 'object', '', ''),
(32, 'model_def_customers.customers', '{"uid":"customers.customers","collectionName":"components_customers_customers","info":{"name":"customers","icon":"address-book"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"logo":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"url":{"type":"string"}}}', 'object', NULL, NULL),
(34, 'model_def_customer-box.customer-box', '{"uid":"customer-box.customer-box","collectionName":"components_customer_box_customer_boxes","info":{"name":"customer-box","icon":"address-card"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"logo":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"url":{"type":"string"}}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_components::customer-box.customer-box', '{"uid":"customer-box.customer-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","logo","url"],"edit":[[{"name":"name","size":6},{"name":"logo","size":6}],[{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
(36, 'model_def_application::customers-row.customers-row', '{"uid":"application::customers-row.customers-row","collectionName":"customers_rows","kind":"collectionType","info":{"name":"customers-row"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"customers":{"type":"component","repeatable":true,"component":"customer-box.customer-box"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::application::customers-row.customers-row', '{"uid":"application::customers-row.customers-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"customers":{"edit":{"label":"Customers","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Customers","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","published_at","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6}],[{"name":"customers","size":12}]]}}', 'object', '', ''),
(38, 'model_def_application::top-row.top-row', '{"uid":"application::top-row.top-row","collectionName":"top_rows","kind":"collectionType","info":{"name":"top-row"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"banner":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"slogan":{"type":"string"},"url":{"type":"string"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::application::top-row.top-row', '{"uid":"application::top-row.top-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"banner":{"edit":{"label":"Banner","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Banner","searchable":false,"sortable":false}},"slogan":{"edit":{"label":"Slogan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slogan","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","banner","slogan"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"banner","size":6}],[{"name":"slogan","size":6},{"name":"url","size":6}]]}}', 'object', '', ''),
(41, 'model_def_application::about-row.about-row', '{"uid":"application::about-row.about-row","collectionName":"about_rows","kind":"collectionType","info":{"name":"about-row"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"paragraph":{"type":"component","repeatable":true,"component":"text-box.text-box"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::application::about-row.about-row', '{"uid":"application::about-row.about-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"paragraph":{"edit":{"label":"Paragraph","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Paragraph","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","published_at","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6}],[{"name":"paragraph","size":12}]]}}', 'object', '', ''),
(43, 'model_def_audio-clip.audio-clip', '{"uid":"audio-clip.audio-clip","collectionName":"components_audio_clip_audio_clips","info":{"name":"audio-clip","icon":"atlas","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"clip":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false},"language":{"type":"enumeration","enum":["German","English","Russian","Romaninan"]},"gender":{"type":"enumeration","enum":["female","male"]}}}', 'object', NULL, NULL),
(44, 'plugin_content_manager_configuration_components::audio-clip.audio-clip', '{"uid":"audio-clip.audio-clip","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"clip":{"edit":{"label":"Clip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Clip","searchable":false,"sortable":false}},"language":{"edit":{"label":"Language","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Language","searchable":true,"sortable":true}},"gender":{"edit":{"label":"Gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gender","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","clip"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"clip","size":6},{"name":"language","size":6}],[{"name":"gender","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
(45, 'model_def_application::catalog.catalog', '{"uid":"application::catalog.catalog","collectionName":"catalogs","kind":"collectionType","info":{"name":"catalog"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"item":{"type":"component","repeatable":true,"component":"audio-clip.audio-clip"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::application::catalog.catalog', '{"uid":"application::catalog.catalog","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"item":{"edit":{"label":"Item","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Item","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","published_at","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6}],[{"name":"item","size":12}]]}}', 'object', '', ''),
(47, 'model_def_application::htm-row.htm-row', '{"uid":"application::htm-row.htm-row","collectionName":"htm_rows","kind":"collectionType","info":{"name":"htm-row"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"name":{"type":"string"},"title":{"type":"string"},"body":{"type":"richtext"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(48, 'plugin_content_manager_configuration_content_types::application::htm-row.htm-row', '{"uid":"application::htm-row.htm-row","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"body":{"edit":{"label":"Body","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Body","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","title","published_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"title","size":6}],[{"name":"body","size":12}]]}}', 'object', '', ''),
(49, 'model_def_application::homepage.homepage', '{"uid":"application::homepage.homepage","collectionName":"homepages","kind":"collectionType","info":{"name":"homepage","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"module":{"type":"string"},"order":{"type":"integer"},"active":{"type":"boolean","default":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(51, 'model_def_application::homepage-module.homepage-module', '{"uid":"application::homepage-module.homepage-module","collectionName":"homepage_modules","kind":"collectionType","info":{"name":"homepage-module"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"module":{"type":"string"},"position":{"type":"integer"},"active":{"type":"boolean","default":true},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_content_types::application::homepage-module.homepage-module', '{"uid":"application::homepage-module.homepage-module","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"module","defaultSortBy":"position","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"module":{"edit":{"label":"Module","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Module","searchable":true,"sortable":true}},"position":{"edit":{"label":"Position","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Position","searchable":true,"sortable":true}},"active":{"edit":{"label":"Active","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Active","searchable":true,"sortable":true}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"module","size":6},{"name":"position","size":4}],[{"name":"active","size":4}]],"editRelations":[],"list":["id","module","position","active"]}}', 'object', '', ''),
(53, 'model_def_application::catalogue.catalogue', '{"uid":"application::catalogue.catalogue","collectionName":"catalogues","kind":"collectionType","info":{"name":"Catalogue"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"attributes":{"title":{"type":"string"},"subtitle":{"type":"string"},"language":{"type":"string"},"age":{"type":"string"},"gender":{"type":"string"},"keywords":{"type":"json"},"published_at":{"type":"datetime","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}', 'object', NULL, NULL);
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(54, 'plugin_content_manager_configuration_content_types::application::catalogue.catalogue', '{"uid":"application::catalogue.catalogue","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"language":{"edit":{"label":"Language","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Language","searchable":true,"sortable":true}},"age":{"edit":{"label":"Age","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Age","searchable":true,"sortable":true}},"gender":{"edit":{"label":"Gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Gender","searchable":true,"sortable":true}},"keywords":{"edit":{"label":"Keywords","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Keywords","searchable":false,"sortable":false}},"published_at":{"edit":{"label":"Published_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Published_at","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","language"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"language","size":6},{"name":"age","size":6}],[{"name":"gender","size":6}],[{"name":"keywords","size":12}]]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `customers_rows`
--

CREATE TABLE IF NOT EXISTS `customers_rows` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `customers_rows`
--

INSERT INTO `customers_rows` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'customers-section', '2021-04-12 05:36:40', 1, 1, '2021-04-11 16:08:57', '2021-04-12 02:36:40');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `customers_rows_components`
--

CREATE TABLE IF NOT EXISTS `customers_rows_components` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `component_id` int(11) NOT NULL,
  `customers_row_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `customers_rows_components`
--

INSERT INTO `customers_rows_components` (`id`, `field`, `order`, `component_type`, `component_id`, `customers_row_id`) VALUES
(1, 'customers', 1, 'components_customer_box_customer_boxes', 1, 1),
(2, 'customers', 2, 'components_customer_box_customer_boxes', 2, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `homepages`
--

CREATE TABLE IF NOT EXISTS `homepages` (
  `id` int(10) unsigned NOT NULL,
  `module` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `homepages`
--

INSERT INTO `homepages` (`id`, `module`, `position`, `active`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Top-rows', NULL, 1, NULL, 1, 1, '2021-04-18 10:55:47', '2021-04-18 10:55:47', 1),
(2, 'Customers-rows', NULL, 1, NULL, 1, 1, '2021-04-18 10:56:21', '2021-04-18 10:56:21', 2),
(3, 'Testimonials-rows', NULL, 1, NULL, 1, 1, '2021-04-18 10:57:10', '2021-04-18 10:57:10', 3);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `homepage_modules`
--

CREATE TABLE IF NOT EXISTS `homepage_modules` (
  `id` int(10) unsigned NOT NULL,
  `module` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `homepage_modules`
--

INSERT INTO `homepage_modules` (`id`, `module`, `position`, `active`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Top-rows', 1, 1, '2021-04-18 14:01:44', 1, 1, '2021-04-18 10:59:30', '2021-04-18 11:01:44'),
(2, 'Htm-rows', 2, 1, '2021-04-18 14:01:33', 1, 1, '2021-04-18 11:00:03', '2021-04-18 13:02:07'),
(3, 'Customers-rows', 3, 1, '2021-04-18 14:01:28', 1, 1, '2021-04-18 11:00:17', '2021-04-18 11:01:28'),
(4, 'Testimonials-rows', 4, 1, '2021-04-18 14:01:39', 1, 1, '2021-04-18 11:00:26', '2021-04-18 11:01:39'),
(5, 'Catalogs', 5, 1, '2021-04-18 14:01:23', 1, 1, '2021-04-18 11:00:50', '2021-04-18 11:01:23');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `htm_rows`
--

CREATE TABLE IF NOT EXISTS `htm_rows` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `body` longtext COLLATE utf8_bin,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `htm_rows`
--

INSERT INTO `htm_rows` (`id`, `name`, `title`, `body`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Html-block', 'Some title', '"Red Cat Studios produce and localise our safety training content into 19 languages on a monthly basis. They are an amazing partner and I recommend them highly!"\nShawn Smith - Multimedia Training Systems, Inc. - USA', '2021-04-12 05:36:33', 1, 1, '2021-04-11 16:33:36', '2021-04-12 02:36:33');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `page_rows`
--

CREATE TABLE IF NOT EXISTS `page_rows` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `page_rows`
--

INSERT INTO `page_rows` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Testimonials', NULL, 1, 1, '2021-04-11 15:52:20', '2021-04-11 15:53:28');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `page_rows_components`
--

CREATE TABLE IF NOT EXISTS `page_rows_components` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `component_id` int(11) NOT NULL,
  `page_row_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `page_rows_components`
--

INSERT INTO `page_rows_components` (`id`, `field`, `order`, `component_type`, `component_id`, `page_row_id`) VALUES
(1, 'testimonial', 1, 'components_text_box_text_boxes', 1, 1),
(2, 'testimonial', 2, 'components_text_box_text_boxes', 2, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `strapi_administrator`
--

CREATE TABLE IF NOT EXISTS `strapi_administrator` (
  `id` int(10) unsigned NOT NULL,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `registrationToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'Edi', 'Hermann', NULL, 'edi.hermann@lemonbyte.ro', '$2a$10$LgKTg80zAiY8M/3RJw4j..o2wPI0K4YOCpGcl9rbMo.0xrzlaqEnS', NULL, NULL, 1, NULL),
(2, 'Readcat', 'Admin', 'Readcat', 'edi.hermann@m-tag.io', '$2a$10$LgKTg80zAiY8M/3RJw4j..o2wPI0K4YOCpGcl9rbMo.0xrzlaqEnS', NULL, 'e6f27820d75c152ba0199f5e440a2ff4f439fcc4', 1, NULL);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `strapi_permission`
--

CREATE TABLE IF NOT EXISTS `strapi_permission` (
  `id` int(10) unsigned NOT NULL,
  `action` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fields` longtext COLLATE utf8_bin,
  `conditions` longtext COLLATE utf8_bin,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::upload.read', NULL, NULL, '[]', 2, '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(2, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(3, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(4, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(5, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(6, 'plugins::upload.read', NULL, NULL, '["admin::is-creator"]', 3, '2021-04-11 15:40:08', '2021-04-11 15:40:09'),
(7, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2021-04-11 15:40:08', '2021-04-11 15:40:09'),
(8, 'plugins::upload.assets.update', NULL, NULL, '["admin::is-creator"]', 3, '2021-04-11 15:40:08', '2021-04-11 15:40:09'),
(9, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2021-04-11 15:40:08', '2021-04-11 15:40:09'),
(10, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2021-04-11 15:40:08', '2021-04-11 15:40:09'),
(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]', '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]', '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role"]', '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(14, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(15, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(16, 'plugins::email.settings.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(17, 'plugins::upload.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(18, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(19, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(20, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(21, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(22, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(23, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(24, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(25, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(26, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(27, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(28, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(29, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(30, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(31, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(32, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(33, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(34, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(35, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(36, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(37, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(38, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(39, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(40, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:09', '2021-04-11 15:40:09'),
(41, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(42, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(43, 'admin::users.create', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(44, 'admin::users.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(45, 'admin::users.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(46, 'admin::users.delete', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(47, 'admin::roles.create', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(48, 'admin::roles.read', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(49, 'admin::roles.delete', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(50, 'admin::roles.update', NULL, NULL, '[]', 1, '2021-04-11 15:40:10', '2021-04-11 15:40:10'),
(59, 'plugins::content-manager.explorer.delete', 'application::testimonials-row.testimonials-row', NULL, '[]', 1, '2021-04-11 15:58:40', '2021-04-11 15:58:40'),
(60, 'plugins::content-manager.explorer.publish', 'application::testimonials-row.testimonials-row', NULL, '[]', 1, '2021-04-11 15:58:40', '2021-04-11 15:58:40'),
(61, 'plugins::content-manager.explorer.create', 'application::testimonials-row.testimonials-row', '["name","Testimonial.title","Testimonial.body"]', '[]', 1, '2021-04-11 16:01:27', '2021-04-11 16:01:27'),
(62, 'plugins::content-manager.explorer.read', 'application::testimonials-row.testimonials-row', '["name","Testimonial.title","Testimonial.body"]', '[]', 1, '2021-04-11 16:01:27', '2021-04-11 16:01:27'),
(63, 'plugins::content-manager.explorer.update', 'application::testimonials-row.testimonials-row', '["name","Testimonial.title","Testimonial.body"]', '[]', 1, '2021-04-11 16:01:27', '2021-04-11 16:01:27'),
(64, 'plugins::content-manager.explorer.create', 'application::customers-row.customers-row', '["name","customers.name","customers.logo","customers.url"]', '[]', 1, '2021-04-11 16:08:34', '2021-04-11 16:08:34'),
(65, 'plugins::content-manager.explorer.read', 'application::customers-row.customers-row', '["name","customers.name","customers.logo","customers.url"]', '[]', 1, '2021-04-11 16:08:34', '2021-04-11 16:08:34'),
(66, 'plugins::content-manager.explorer.update', 'application::customers-row.customers-row', '["name","customers.name","customers.logo","customers.url"]', '[]', 1, '2021-04-11 16:08:34', '2021-04-11 16:08:34'),
(67, 'plugins::content-manager.explorer.delete', 'application::customers-row.customers-row', NULL, '[]', 1, '2021-04-11 16:08:34', '2021-04-11 16:08:34'),
(68, 'plugins::content-manager.explorer.publish', 'application::customers-row.customers-row', NULL, '[]', 1, '2021-04-11 16:08:34', '2021-04-11 16:08:34'),
(74, 'plugins::content-manager.explorer.create', 'application::top-row.top-row', '["name","banner","slogan","url"]', '[]', 1, '2021-04-11 16:14:25', '2021-04-11 16:14:25'),
(75, 'plugins::content-manager.explorer.read', 'application::top-row.top-row', '["name","banner","slogan","url"]', '[]', 1, '2021-04-11 16:14:25', '2021-04-11 16:14:25'),
(76, 'plugins::content-manager.explorer.update', 'application::top-row.top-row', '["name","banner","slogan","url"]', '[]', 1, '2021-04-11 16:14:25', '2021-04-11 16:14:25'),
(77, 'plugins::content-manager.explorer.delete', 'application::top-row.top-row', NULL, '[]', 1, '2021-04-11 16:14:25', '2021-04-11 16:14:25'),
(78, 'plugins::content-manager.explorer.publish', 'application::top-row.top-row', NULL, '[]', 1, '2021-04-11 16:14:25', '2021-04-11 16:14:25'),
(79, 'plugins::content-manager.explorer.create', 'application::about-row.about-row', '["name","paragraph.title","paragraph.body"]', '[]', 1, '2021-04-11 16:18:13', '2021-04-11 16:18:13'),
(80, 'plugins::content-manager.explorer.read', 'application::about-row.about-row', '["name","paragraph.title","paragraph.body"]', '[]', 1, '2021-04-11 16:18:13', '2021-04-11 16:18:13'),
(81, 'plugins::content-manager.explorer.update', 'application::about-row.about-row', '["name","paragraph.title","paragraph.body"]', '[]', 1, '2021-04-11 16:18:13', '2021-04-11 16:18:13'),
(82, 'plugins::content-manager.explorer.delete', 'application::about-row.about-row', NULL, '[]', 1, '2021-04-11 16:18:13', '2021-04-11 16:18:13'),
(83, 'plugins::content-manager.explorer.publish', 'application::about-row.about-row', NULL, '[]', 1, '2021-04-11 16:18:13', '2021-04-11 16:18:13'),
(87, 'plugins::content-manager.explorer.delete', 'application::catalog.catalog', NULL, '[]', 1, '2021-04-11 16:26:02', '2021-04-11 16:26:02'),
(88, 'plugins::content-manager.explorer.publish', 'application::catalog.catalog', NULL, '[]', 1, '2021-04-11 16:26:02', '2021-04-11 16:26:02'),
(89, 'plugins::content-manager.explorer.create', 'application::catalog.catalog', '["name","item.title","item.subtitle","item.clip","item.language","item.gender"]', '[]', 1, '2021-04-11 16:29:35', '2021-04-11 16:29:35'),
(90, 'plugins::content-manager.explorer.read', 'application::catalog.catalog', '["name","item.title","item.subtitle","item.clip","item.language","item.gender"]', '[]', 1, '2021-04-11 16:29:35', '2021-04-11 16:29:35'),
(91, 'plugins::content-manager.explorer.update', 'application::catalog.catalog', '["name","item.title","item.subtitle","item.clip","item.language","item.gender"]', '[]', 1, '2021-04-11 16:29:35', '2021-04-11 16:29:35'),
(92, 'plugins::content-manager.explorer.create', 'application::htm-row.htm-row', '["name","title","body"]', '[]', 1, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(93, 'plugins::content-manager.explorer.read', 'application::htm-row.htm-row', '["name","title","body"]', '[]', 1, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(94, 'plugins::content-manager.explorer.update', 'application::htm-row.htm-row', '["name","title","body"]', '[]', 1, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(95, 'plugins::content-manager.explorer.delete', 'application::htm-row.htm-row', NULL, '[]', 1, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(96, 'plugins::content-manager.explorer.publish', 'application::htm-row.htm-row', NULL, '[]', 1, '2021-04-11 16:32:20', '2021-04-11 16:32:20'),
(97, 'plugins::content-manager.explorer.create', 'application::about-row.about-row', '["name","paragraph.body","paragraph.title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(98, 'plugins::content-manager.explorer.read', 'application::about-row.about-row', '["name","paragraph.body","paragraph.title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(99, 'plugins::content-manager.explorer.update', 'application::about-row.about-row', '["name","paragraph.body","paragraph.title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(100, 'plugins::content-manager.explorer.delete', 'application::about-row.about-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(101, 'plugins::content-manager.explorer.publish', 'application::about-row.about-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(102, 'plugins::content-manager.explorer.create', 'application::catalog.catalog', '["item.clip","item.gender","item.language","item.subtitle","item.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(103, 'plugins::content-manager.explorer.read', 'application::catalog.catalog', '["item.clip","item.gender","item.language","item.subtitle","item.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(104, 'plugins::content-manager.explorer.update', 'application::catalog.catalog', '["item.clip","item.gender","item.language","item.subtitle","item.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(105, 'plugins::content-manager.explorer.delete', 'application::catalog.catalog', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(106, 'plugins::content-manager.explorer.publish', 'application::catalog.catalog', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(107, 'plugins::content-manager.explorer.create', 'application::customers-row.customers-row', '["customers.logo","customers.name","customers.url","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(108, 'plugins::content-manager.explorer.read', 'application::customers-row.customers-row', '["customers.logo","customers.name","customers.url","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(109, 'plugins::content-manager.explorer.update', 'application::customers-row.customers-row', '["customers.logo","customers.name","customers.url","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(110, 'plugins::content-manager.explorer.delete', 'application::customers-row.customers-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(111, 'plugins::content-manager.explorer.publish', 'application::customers-row.customers-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(112, 'plugins::content-manager.explorer.create', 'application::htm-row.htm-row', '["body","name","title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(113, 'plugins::content-manager.explorer.read', 'application::htm-row.htm-row', '["body","name","title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(114, 'plugins::content-manager.explorer.update', 'application::htm-row.htm-row', '["body","name","title"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(115, 'plugins::content-manager.explorer.delete', 'application::htm-row.htm-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(116, 'plugins::content-manager.explorer.publish', 'application::htm-row.htm-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(117, 'plugins::content-manager.explorer.create', 'application::testimonials-row.testimonials-row', '["Testimonial.body","Testimonial.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(118, 'plugins::content-manager.explorer.read', 'application::testimonials-row.testimonials-row', '["Testimonial.body","Testimonial.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(119, 'plugins::content-manager.explorer.update', 'application::testimonials-row.testimonials-row', '["Testimonial.body","Testimonial.title","name"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(120, 'plugins::content-manager.explorer.delete', 'application::testimonials-row.testimonials-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(121, 'plugins::content-manager.explorer.publish', 'application::testimonials-row.testimonials-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(122, 'plugins::content-manager.explorer.create', 'application::top-row.top-row', '["banner","name","slogan","url"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(123, 'plugins::content-manager.explorer.read', 'application::top-row.top-row', '["banner","name","slogan","url"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(124, 'plugins::content-manager.explorer.update', 'application::top-row.top-row', '["banner","name","slogan","url"]', '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(125, 'plugins::content-manager.explorer.delete', 'application::top-row.top-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(126, 'plugins::content-manager.explorer.publish', 'application::top-row.top-row', NULL, '[]', 2, '2021-04-15 16:14:55', '2021-04-15 16:14:55'),
(127, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '["blocked","confirmationToken","confirmed","email","password","provider","resetPasswordToken","role","username"]', '[]', 2, '2021-04-15 16:14:56', '2021-04-15 16:14:56'),
(128, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '["blocked","confirmationToken","confirmed","email","password","provider","resetPasswordToken","role","username"]', '[]', 2, '2021-04-15 16:14:56', '2021-04-15 16:14:56'),
(129, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '["blocked","confirmationToken","confirmed","email","password","provider","resetPasswordToken","role","username"]', '[]', 2, '2021-04-15 16:14:56', '2021-04-15 16:14:56'),
(130, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 2, '2021-04-15 16:14:56', '2021-04-15 16:14:56'),
(139, 'plugins::content-manager.explorer.create', 'application::homepage-module.homepage-module', '["module","position","active"]', '[]', 1, '2021-04-18 10:58:23', '2021-04-18 10:58:23'),
(140, 'plugins::content-manager.explorer.read', 'application::homepage-module.homepage-module', '["module","position","active"]', '[]', 1, '2021-04-18 10:58:23', '2021-04-18 10:58:23'),
(141, 'plugins::content-manager.explorer.update', 'application::homepage-module.homepage-module', '["module","position","active"]', '[]', 1, '2021-04-18 10:58:23', '2021-04-18 10:58:23'),
(142, 'plugins::content-manager.explorer.delete', 'application::homepage-module.homepage-module', NULL, '[]', 1, '2021-04-18 10:58:23', '2021-04-18 10:58:23'),
(143, 'plugins::content-manager.explorer.publish', 'application::homepage-module.homepage-module', NULL, '[]', 1, '2021-04-18 10:58:23', '2021-04-18 10:58:23'),
(144, 'plugins::content-manager.explorer.create', 'application::catalogue.catalogue', '["title","subtitle","language","age","gender","keywords"]', '[]', 1, '2021-05-11 10:57:12', '2021-05-11 10:57:12'),
(145, 'plugins::content-manager.explorer.read', 'application::catalogue.catalogue', '["title","subtitle","language","age","gender","keywords"]', '[]', 1, '2021-05-11 10:57:12', '2021-05-11 10:57:12'),
(146, 'plugins::content-manager.explorer.update', 'application::catalogue.catalogue', '["title","subtitle","language","age","gender","keywords"]', '[]', 1, '2021-05-11 10:57:12', '2021-05-11 10:57:12'),
(147, 'plugins::content-manager.explorer.delete', 'application::catalogue.catalogue', NULL, '[]', 1, '2021-05-11 10:57:12', '2021-05-11 10:57:12'),
(148, 'plugins::content-manager.explorer.publish', 'application::catalogue.catalogue', NULL, '[]', 1, '2021-05-11 10:57:12', '2021-05-11 10:57:12');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `strapi_role`
--

CREATE TABLE IF NOT EXISTS `strapi_role` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-04-11 15:40:08', '2021-04-11 15:40:08'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-04-11 15:40:08', '2021-04-11 15:40:08');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `strapi_users_roles`
--

CREATE TABLE IF NOT EXISTS `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `strapi_webhooks`
--

CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` longtext COLLATE utf8_bin,
  `headers` longtext COLLATE utf8_bin,
  `events` longtext COLLATE utf8_bin,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `testimonials_rows`
--

CREATE TABLE IF NOT EXISTS `testimonials_rows` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `testimonials_rows`
--

INSERT INTO `testimonials_rows` (`id`, `name`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'testimonials-section', '2021-04-11 18:59:54', 1, 1, '2021-04-11 15:59:41', '2021-04-11 16:02:15');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `testimonials_rows_components`
--

CREATE TABLE IF NOT EXISTS `testimonials_rows_components` (
  `id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `component_id` int(11) NOT NULL,
  `testimonials_row_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `testimonials_rows_components`
--

INSERT INTO `testimonials_rows_components` (`id`, `field`, `order`, `component_type`, `component_id`, `testimonials_row_id`) VALUES
(1, 'Testimonial', 1, 'components_text_box_text_boxes', 3, 1),
(2, 'Testimonial', 2, 'components_text_box_text_boxes', 4, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `top_rows`
--

CREATE TABLE IF NOT EXISTS `top_rows` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `top_rows`
--

INSERT INTO `top_rows` (`id`, `title`, `slogan`, `url`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `name`) VALUES
(1, NULL, 'If...  You want to communicate in your clients'' language...  You need to train your staff abroad...  You seek a reliable voiceover studio.', 'https://redcatstudios.uk/', '2021-04-12 05:39:37', 1, 1, '2021-04-11 16:15:01', '2021-04-12 02:39:37', 'top-section');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `upload_file`
--

CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `alternativeText` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext COLLATE utf8_bin,
  `hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `ext` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_bin NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `previewUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_bin NOT NULL,
  `provider_metadata` longtext COLLATE utf8_bin,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `upload_file_morph`
--

CREATE TABLE IF NOT EXISTS `upload_file_morph` (
  `id` int(10) unsigned NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext COLLATE utf8_bin,
  `field` longtext COLLATE utf8_bin,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users-permissions_permission`
--

CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `controller` varchar(255) COLLATE utf8_bin NOT NULL,
  `action` varchar(255) COLLATE utf8_bin NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(5, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(34, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(35, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(37, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(38, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(39, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(40, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(41, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(44, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(45, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(46, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(47, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(48, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(49, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(50, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(52, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(57, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(58, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(59, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(60, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(61, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(62, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(63, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(64, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(65, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(66, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(67, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(68, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(69, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(70, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(71, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(72, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(73, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(74, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(75, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(76, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(77, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(78, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(79, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(80, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(81, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(82, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(83, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(84, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(85, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(86, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(87, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(88, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(89, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(90, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(91, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(92, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(93, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(94, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(95, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(96, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(97, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(98, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(99, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(100, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(101, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(102, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(103, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(104, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(105, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(106, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(107, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(108, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(109, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(110, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(111, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(113, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(114, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(115, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(117, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(119, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(120, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(121, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(123, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(124, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(125, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(131, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(133, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(138, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(139, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(143, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(146, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(147, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(148, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(149, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(151, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(152, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(153, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(154, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(155, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(156, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(157, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(158, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(171, 'application', 'testimonials-row', 'count', 0, '', 1, NULL, NULL),
(172, 'application', 'testimonials-row', 'count', 1, '', 2, NULL, NULL),
(173, 'application', 'testimonials-row', 'create', 0, '', 1, NULL, NULL),
(174, 'application', 'testimonials-row', 'create', 0, '', 2, NULL, NULL),
(175, 'application', 'testimonials-row', 'delete', 0, '', 1, NULL, NULL),
(176, 'application', 'testimonials-row', 'delete', 0, '', 2, NULL, NULL),
(177, 'application', 'testimonials-row', 'find', 0, '', 1, NULL, NULL),
(178, 'application', 'testimonials-row', 'find', 1, '', 2, NULL, NULL),
(179, 'application', 'testimonials-row', 'findone', 1, '', 2, NULL, NULL),
(180, 'application', 'testimonials-row', 'findone', 0, '', 1, NULL, NULL),
(181, 'application', 'testimonials-row', 'update', 0, '', 1, NULL, NULL),
(182, 'application', 'testimonials-row', 'update', 0, '', 2, NULL, NULL),
(183, 'application', 'customers-row', 'count', 0, '', 1, NULL, NULL),
(184, 'application', 'customers-row', 'count', 1, '', 2, NULL, NULL),
(185, 'application', 'customers-row', 'create', 0, '', 1, NULL, NULL),
(186, 'application', 'customers-row', 'create', 0, '', 2, NULL, NULL),
(187, 'application', 'customers-row', 'delete', 0, '', 1, NULL, NULL),
(188, 'application', 'customers-row', 'delete', 0, '', 2, NULL, NULL),
(189, 'application', 'customers-row', 'find', 0, '', 1, NULL, NULL),
(190, 'application', 'customers-row', 'find', 1, '', 2, NULL, NULL),
(191, 'application', 'customers-row', 'findone', 0, '', 1, NULL, NULL),
(192, 'application', 'customers-row', 'findone', 1, '', 2, NULL, NULL),
(193, 'application', 'customers-row', 'update', 0, '', 2, NULL, NULL),
(194, 'application', 'customers-row', 'update', 0, '', 1, NULL, NULL),
(201, 'application', 'top-row', 'find', 1, '', 2, NULL, NULL),
(202, 'application', 'top-row', 'findone', 1, '', 2, NULL, NULL),
(203, 'application', 'top-row', 'count', 0, '', 1, NULL, NULL),
(204, 'application', 'top-row', 'count', 1, '', 2, NULL, NULL),
(205, 'application', 'top-row', 'create', 0, '', 1, NULL, NULL),
(206, 'application', 'top-row', 'create', 0, '', 2, NULL, NULL),
(207, 'application', 'top-row', 'delete', 0, '', 1, NULL, NULL),
(208, 'application', 'top-row', 'delete', 0, '', 2, NULL, NULL),
(209, 'application', 'top-row', 'find', 0, '', 1, NULL, NULL),
(210, 'application', 'top-row', 'findone', 0, '', 1, NULL, NULL),
(211, 'application', 'top-row', 'update', 0, '', 1, NULL, NULL),
(212, 'application', 'top-row', 'update', 0, '', 2, NULL, NULL),
(213, 'application', 'about-row', 'count', 0, '', 1, NULL, NULL),
(214, 'application', 'about-row', 'count', 1, '', 2, NULL, NULL),
(215, 'application', 'about-row', 'create', 0, '', 1, NULL, NULL),
(216, 'application', 'about-row', 'create', 0, '', 2, NULL, NULL),
(217, 'application', 'about-row', 'delete', 0, '', 1, NULL, NULL),
(218, 'application', 'about-row', 'delete', 0, '', 2, NULL, NULL),
(219, 'application', 'about-row', 'find', 0, '', 1, NULL, NULL),
(220, 'application', 'about-row', 'find', 1, '', 2, NULL, NULL),
(221, 'application', 'about-row', 'findone', 0, '', 1, NULL, NULL),
(222, 'application', 'about-row', 'findone', 1, '', 2, NULL, NULL),
(223, 'application', 'about-row', 'update', 0, '', 1, NULL, NULL),
(224, 'application', 'about-row', 'update', 0, '', 2, NULL, NULL),
(225, 'application', 'catalog', 'count', 0, '', 1, NULL, NULL),
(226, 'application', 'catalog', 'count', 1, '', 2, NULL, NULL),
(227, 'application', 'catalog', 'create', 0, '', 1, NULL, NULL),
(228, 'application', 'catalog', 'create', 0, '', 2, NULL, NULL),
(229, 'application', 'catalog', 'delete', 0, '', 1, NULL, NULL),
(230, 'application', 'catalog', 'delete', 0, '', 2, NULL, NULL),
(231, 'application', 'catalog', 'find', 0, '', 1, NULL, NULL),
(232, 'application', 'catalog', 'find', 1, '', 2, NULL, NULL),
(233, 'application', 'catalog', 'findone', 0, '', 1, NULL, NULL),
(234, 'application', 'catalog', 'findone', 1, '', 2, NULL, NULL),
(235, 'application', 'catalog', 'update', 0, '', 1, NULL, NULL),
(236, 'application', 'catalog', 'update', 0, '', 2, NULL, NULL),
(237, 'application', 'htm-row', 'count', 0, '', 1, NULL, NULL),
(238, 'application', 'htm-row', 'count', 1, '', 2, NULL, NULL),
(239, 'application', 'htm-row', 'create', 0, '', 1, NULL, NULL),
(240, 'application', 'htm-row', 'create', 0, '', 2, NULL, NULL),
(241, 'application', 'htm-row', 'delete', 0, '', 1, NULL, NULL),
(242, 'application', 'htm-row', 'delete', 0, '', 2, NULL, NULL),
(243, 'application', 'htm-row', 'find', 0, '', 1, NULL, NULL),
(244, 'application', 'htm-row', 'find', 1, '', 2, NULL, NULL),
(245, 'application', 'htm-row', 'findone', 0, '', 1, NULL, NULL),
(246, 'application', 'htm-row', 'findone', 1, '', 2, NULL, NULL),
(247, 'application', 'htm-row', 'update', 0, '', 1, NULL, NULL),
(248, 'application', 'htm-row', 'update', 0, '', 2, NULL, NULL),
(261, 'application', 'homepage-module', 'count', 0, '', 1, NULL, NULL),
(262, 'application', 'homepage-module', 'count', 1, '', 2, NULL, NULL),
(263, 'application', 'homepage-module', 'create', 0, '', 1, NULL, NULL),
(264, 'application', 'homepage-module', 'create', 0, '', 2, NULL, NULL),
(265, 'application', 'homepage-module', 'delete', 0, '', 1, NULL, NULL),
(266, 'application', 'homepage-module', 'delete', 0, '', 2, NULL, NULL),
(267, 'application', 'homepage-module', 'find', 0, '', 1, NULL, NULL),
(268, 'application', 'homepage-module', 'find', 1, '', 2, NULL, NULL),
(269, 'application', 'homepage-module', 'findone', 0, '', 1, NULL, NULL),
(270, 'application', 'homepage-module', 'findone', 1, '', 2, NULL, NULL),
(271, 'application', 'homepage-module', 'update', 0, '', 1, NULL, NULL),
(272, 'application', 'homepage-module', 'update', 0, '', 2, NULL, NULL),
(273, 'application', 'homepage', 'index', 0, '', 1, NULL, NULL),
(274, 'application', 'homepage', 'index', 1, '', 2, NULL, NULL),
(275, 'application', 'catalogue', 'count', 0, '', 1, NULL, NULL),
(276, 'application', 'catalogue', 'count', 0, '', 2, NULL, NULL),
(277, 'application', 'catalogue', 'create', 0, '', 1, NULL, NULL),
(278, 'application', 'catalogue', 'create', 0, '', 2, NULL, NULL),
(279, 'application', 'catalogue', 'delete', 0, '', 1, NULL, NULL),
(280, 'application', 'catalogue', 'delete', 0, '', 2, NULL, NULL),
(281, 'application', 'catalogue', 'find', 0, '', 1, NULL, NULL),
(282, 'application', 'catalogue', 'find', 0, '', 2, NULL, NULL),
(283, 'application', 'catalogue', 'findone', 0, '', 1, NULL, NULL),
(284, 'application', 'catalogue', 'findone', 0, '', 2, NULL, NULL),
(285, 'application', 'catalogue', 'update', 0, '', 1, NULL, NULL),
(286, 'application', 'catalogue', 'update', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users-permissions_role`
--

CREATE TABLE IF NOT EXISTS `users-permissions_role` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Salvarea datelor din tabel `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users-permissions_user`
--

CREATE TABLE IF NOT EXISTS `users-permissions_user` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `provider` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `resetPasswordToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `confirmationToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_rows`
--
ALTER TABLE `about_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_rows_components`
--
ALTER TABLE `about_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_row_id_fk` (`about_row_id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs_components`
--
ALTER TABLE `catalogs_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id_fk` (`catalog_id`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_audio_clip_audio_clips`
--
ALTER TABLE `components_audio_clip_audio_clips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_customers_customers`
--
ALTER TABLE `components_customers_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_customer_box_customer_boxes`
--
ALTER TABLE `components_customer_box_customer_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_text_box_testimonials`
--
ALTER TABLE `components_text_box_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_text_box_text_boxes`
--
ALTER TABLE `components_text_box_text_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_rows`
--
ALTER TABLE `customers_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_rows_components`
--
ALTER TABLE `customers_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_row_id_fk` (`customers_row_id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_modules`
--
ALTER TABLE `homepage_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htm_rows`
--
ALTER TABLE `htm_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_rows`
--
ALTER TABLE `page_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_rows_components`
--
ALTER TABLE `page_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_row_id_fk` (`page_row_id`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indexes for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indexes for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_rows`
--
ALTER TABLE `testimonials_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_rows_components`
--
ALTER TABLE `testimonials_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_row_id_fk` (`testimonials_row_id`);

--
-- Indexes for table `top_rows`
--
ALTER TABLE `top_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_rows`
--
ALTER TABLE `about_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `about_rows_components`
--
ALTER TABLE `about_rows_components`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalogs_components`
--
ALTER TABLE `catalogs_components`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `components_audio_clip_audio_clips`
--
ALTER TABLE `components_audio_clip_audio_clips`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `components_customers_customers`
--
ALTER TABLE `components_customers_customers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `components_customer_box_customer_boxes`
--
ALTER TABLE `components_customer_box_customer_boxes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `components_text_box_testimonials`
--
ALTER TABLE `components_text_box_testimonials`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `components_text_box_text_boxes`
--
ALTER TABLE `components_text_box_text_boxes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `customers_rows`
--
ALTER TABLE `customers_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers_rows_components`
--
ALTER TABLE `customers_rows_components`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `homepage_modules`
--
ALTER TABLE `homepage_modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `htm_rows`
--
ALTER TABLE `htm_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page_rows_components`
--
ALTER TABLE `page_rows_components`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials_rows`
--
ALTER TABLE `testimonials_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `testimonials_rows_components`
--
ALTER TABLE `testimonials_rows_components`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `top_rows`
--
ALTER TABLE `top_rows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=287;
--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `about_rows_components`
--
ALTER TABLE `about_rows_components`
  ADD CONSTRAINT `about_row_id_fk` FOREIGN KEY (`about_row_id`) REFERENCES `about_rows` (`id`) ON DELETE CASCADE;

--
-- Restrictii pentru tabele `catalogs_components`
--
ALTER TABLE `catalogs_components`
  ADD CONSTRAINT `catalog_id_fk` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE CASCADE;

--
-- Restrictii pentru tabele `customers_rows_components`
--
ALTER TABLE `customers_rows_components`
  ADD CONSTRAINT `customers_row_id_fk` FOREIGN KEY (`customers_row_id`) REFERENCES `customers_rows` (`id`) ON DELETE CASCADE;

--
-- Restrictii pentru tabele `page_rows_components`
--
ALTER TABLE `page_rows_components`
  ADD CONSTRAINT `page_row_id_fk` FOREIGN KEY (`page_row_id`) REFERENCES `page_rows` (`id`) ON DELETE CASCADE;

--
-- Restrictii pentru tabele `testimonials_rows_components`
--
ALTER TABLE `testimonials_rows_components`
  ADD CONSTRAINT `testimonials_row_id_fk` FOREIGN KEY (`testimonials_row_id`) REFERENCES `testimonials_rows` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
