-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 27, 2021 kell 10:55 EL
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
-- Tabeli struktuur tabelile `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
                            `id` int(11) UNSIGNED NOT NULL,
                            `name` varchar(255) NOT NULL,
                            `reg_nr` int(11) UNSIGNED NOT NULL,
                            `email` varchar(255) NOT NULL,
                            `phone` varchar(255) NOT NULL,
                            `activity` varchar(255) NOT NULL,
                            `activity_details` varchar(255) NOT NULL,
                            `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `partners`
--

INSERT INTO `partners` (`id`, `name`, `reg_nr`, `email`, `phone`, `activity`, `activity_details`, `location`) VALUES
(1, 'Mark Otto', 12345, 'mark@otto.com', '1234567', 'seinad', 'kipsseinad', 'üle Eesti'),
(2, 'Mark Otto', 12345, 'mark@otto.com', '1234567	', 'seinad', 'puitseinad', 'üle Eesti'),
(3, 'Margaret Hamilton	', 12345, 'info@hamilton.com', '1234567', 'aknad', 'plastaknad', 'Tartumaa'),
(4, 'John Klark', 12345, 'john@clark.com', '1234567', 'aknad', 'puitaknad', 'Võrumaa');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `partners`
--
ALTER TABLE `partners`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `partners`
--
ALTER TABLE `partners`
    MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
