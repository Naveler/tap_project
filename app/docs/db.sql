-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 27, 2021 kell 11:33 EL
-- Serveri versioon: 10.4.19-MariaDB
-- PHP versioon: 7.4.19

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Andmebaas: `kpr`
--
CREATE DATABASE IF NOT EXISTS `kpr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kpr`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `activity`
--

INSERT INTO `activity` (`id`, `name`) VALUES
(1, 'seinad'),
(2, 'aknad');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `activity_details`
--

DROP TABLE IF EXISTS `activity_details`;
CREATE TABLE IF NOT EXISTS `activity_details` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `activity_details`
--

INSERT INTO `activity_details` (`id`, `name`) VALUES
(1, 'kipsseinad'),
(2, 'puitseinad'),
(3, 'plastaknad'),
(4, 'puitaknad');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `reg_nr` int(11) UNSIGNED NOT NULL,
    `email` varchar(255) NOT NULL,
    `phone` varchar(255) NOT NULL,
    `activity` int(11) NOT NULL,
    `location` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `activity` (`activity`)
    ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `partners`
--

INSERT INTO `partners` (`id`, `name`, `reg_nr`, `email`, `phone`, `activity`, `location`) VALUES
(6, 'Mark Otto', 12345, 'mark@otto.com', '1234567', 1, 'üle Eesti'),
(7, 'Margaret Hamilton', 12345, 'info@hamilton.com', '1234567', 2, 'Tartumaa'),
(8, 'John Klark', 12345, 'john@clark.com', '1234567', 2, 'Võrumaa');

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `partners`
--
ALTER TABLE `partners`
    ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
