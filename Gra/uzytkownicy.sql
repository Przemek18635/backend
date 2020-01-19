-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Sty 2020, 12:39
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `osadnicy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `drewno` int(11) NOT NULL,
  `kamien` int(11) NOT NULL,
  `zboze` int(11) NOT NULL,
  `dnipremium` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `user`, `pass`, `email`, `drewno`, `kamien`, `zboze`, `dnipremium`) VALUES
(1, 'adam', '$2y$10$4sZdn0EaurMzGCAla1Up7OJ8vDmhJjKdsyCtQIAIuJ3AuxQ0m0Tly', 'adam@gmail.com', 600, 600, 600, '2017-01-15 09:30:15'),
(4, 'marek', '$2y$10$QHki3826M55pzdmrN9fjcOEKbX8PX5hheMxupyS/KvTF7KTaRI5kC', 'marek@gmail.com', 1000, 1000, 1000, '2020-02-02 12:32:59'),
(5, 'anna', '$2y$10$ZXR.kTN4ZGMZMqQgpnbs3.L2a4a.g1d9gD8PFZoCMPBywa9J8uRiO', 'anna@gmail.com', 1000, 1000, 1000, '2020-02-02 12:34:48'),
(6, 'andrzej', '$2y$10$95yXRWWku5VrtYu52HtdcOV6vUAtNzDV6DcV1Nz5wisQwwF.rqYey', 'andrzej@gmail.com', 900, 900, 900, '2020-02-02 12:37:50'),
(2, 'mirek', '$2y$10$vmSNIWWZApqXydGJ5q9XC.63kF4JvvURC0l2Ns4Qh3nNc55OL.Y6W', 'zelent.miroslaw@gmail.com', 100, 100, 100, '0000-00-00 00:00:00'),
(3, 'krzysztof', '$2y$10$H7Tnsk961z8yEJaBFgRLWeJBg/TA6tTuer.TRx2eJ4yS21MjM7e1y', 'krzysztof@gmail.com', 100, 100, 100, '2016-11-17 14:20:42');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
