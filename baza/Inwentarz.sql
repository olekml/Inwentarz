-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 06 Gru 2015, 22:14
-- Wersja serwera: 5.5.41
-- Wersja PHP: 5.4.36-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `Inwentarz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `listapracownii`
--

CREATE TABLE IF NOT EXISTS `listapracownii` (
  `id` int(255) NOT NULL,
  `numer` int(255) NOT NULL,
  `imie_admina` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko_admina` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `listapracownii`
--

INSERT INTO `listapracownii` (`id`, `numer`, `imie_admina`, `nazwisko_admina`) VALUES
(1, 308, 'Jan', 'Kowalski'),
(2, 309, 'Józef', 'Nowak'),
(3, 210, 'Marek', 'Kowalski'),
(4, 211, 'Dawid', 'Nowak'),
(5, 19, 'Tomek', 'Kowalski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownia_19`
--

CREATE TABLE IF NOT EXISTS `pracownia_19` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ram_typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ram_taktowanie` int(10) NOT NULL,
  `dysk_interfejs` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dysk_pojemnosc` int(10) NOT NULL,
  `mobo_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `mobo_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_moc` int(255) NOT NULL,
  `grafika_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `grafika_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownia_19`
--

INSERT INTO `pracownia_19` (`id`, `nazwa`, `procesor_producent`, `procesor_model`, `ram_typ`, `ram_taktowanie`, `dysk_interfejs`, `dysk_pojemnosc`, `mobo_producent`, `mobo_model`, `zasilacz_producent`, `zasilacz_model`, `zasilacz_moc`, `grafika_producent`, `grafika_model`) VALUES
(1, 'Stacja 01', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(2, 'Stacja 02', 'Intel', 'Core i3', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(3, 'Stacja 03', 'Intel', 'Core i7', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(4, 'Stacja 04', 'Intel', 'Pentium G2130', 'DDR3', 1866, 'SATA', 750, 'AsRock', 'Z77 Pro3', 'OCZ', 'FGXS-SD500', 600, 'Nvidia', 'GTX990'),
(5, 'Stacja 05', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(6, 'Stacja 06', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownia_210`
--

CREATE TABLE IF NOT EXISTS `pracownia_210` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ram_typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ram_taktowanie` int(10) NOT NULL,
  `dysk_interfejs` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dysk_pojemnosc` int(10) NOT NULL,
  `mobo_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `mobo_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_moc` int(255) NOT NULL,
  `grafika_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `grafika_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownia_210`
--

INSERT INTO `pracownia_210` (`id`, `nazwa`, `procesor_producent`, `procesor_model`, `ram_typ`, `ram_taktowanie`, `dysk_interfejs`, `dysk_pojemnosc`, `mobo_producent`, `mobo_model`, `zasilacz_producent`, `zasilacz_model`, `zasilacz_moc`, `grafika_producent`, `grafika_model`) VALUES
(1, 'Stacja 01', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(2, 'Stacja 02', 'Intel', 'Core i3', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(3, 'Stacja 03', 'Intel', 'Core i7', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(4, 'Stacja 04', 'Intel', 'Pentium G2130', 'DDR3', 1866, 'SATA', 750, 'AsRock', 'Z77 Pro3', 'OCZ', 'FGXS-SD500', 600, 'Nvidia', 'GTX990'),
(5, 'Stacja 05', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(6, 'Stacja 06', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownia_211`
--

CREATE TABLE IF NOT EXISTS `pracownia_211` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ram_typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ram_taktowanie` int(10) NOT NULL,
  `dysk_interfejs` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dysk_pojemnosc` int(10) NOT NULL,
  `mobo_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `mobo_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_moc` int(255) NOT NULL,
  `grafika_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `grafika_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownia_211`
--

INSERT INTO `pracownia_211` (`id`, `nazwa`, `procesor_producent`, `procesor_model`, `ram_typ`, `ram_taktowanie`, `dysk_interfejs`, `dysk_pojemnosc`, `mobo_producent`, `mobo_model`, `zasilacz_producent`, `zasilacz_model`, `zasilacz_moc`, `grafika_producent`, `grafika_model`) VALUES
(1, 'Stacja 01', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(2, 'Stacja 02', 'Intel', 'Core i3', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(3, 'Stacja 03', 'Intel', 'Core i7', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(4, 'Stacja 04', 'Intel', 'Pentium G2130', 'DDR3', 1866, 'SATA', 750, 'AsRock', 'Z77 Pro3', 'OCZ', 'FGXS-SD500', 600, 'Nvidia', 'GTX990'),
(5, 'Stacja 05', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(6, 'Stacja 06', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownia_308`
--

CREATE TABLE IF NOT EXISTS `pracownia_308` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ram_typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ram_taktowanie` int(10) NOT NULL,
  `dysk_interfejs` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dysk_pojemnosc` int(10) NOT NULL,
  `mobo_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `mobo_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_moc` int(255) NOT NULL,
  `grafika_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `grafika_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownia_308`
--

INSERT INTO `pracownia_308` (`id`, `nazwa`, `procesor_producent`, `procesor_model`, `ram_typ`, `ram_taktowanie`, `dysk_interfejs`, `dysk_pojemnosc`, `mobo_producent`, `mobo_model`, `zasilacz_producent`, `zasilacz_model`, `zasilacz_moc`, `grafika_producent`, `grafika_model`) VALUES
(1, 'Stacja 01', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(2, 'Stacja 02', 'Intel', 'Core i3', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(3, 'Stacja 03', 'Intel', 'Core i7', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(4, 'Stacja 04', 'Intel', 'Pentium G2130', 'DDR3', 1866, 'SATA', 750, 'AsRock', 'Z77 Pro3', 'OCZ', 'FGXS-SD500', 600, 'Nvidia', 'GTX990'),
(5, 'Stacja 05', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(6, 'Stacja 06', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownia_309`
--

CREATE TABLE IF NOT EXISTS `pracownia_309` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procesor_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `ram_typ` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ram_taktowanie` int(10) NOT NULL,
  `dysk_interfejs` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `dysk_pojemnosc` int(10) NOT NULL,
  `mobo_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `mobo_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `zasilacz_moc` int(255) NOT NULL,
  `grafika_producent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `grafika_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_roman_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownia_309`
--

INSERT INTO `pracownia_309` (`id`, `nazwa`, `procesor_producent`, `procesor_model`, `ram_typ`, `ram_taktowanie`, `dysk_interfejs`, `dysk_pojemnosc`, `mobo_producent`, `mobo_model`, `zasilacz_producent`, `zasilacz_model`, `zasilacz_moc`, `grafika_producent`, `grafika_model`) VALUES
(1, 'Stacja 01', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(2, 'Stacja 02', 'Intel', 'Core i3', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(3, 'Stacja 03', 'Intel', 'Core i7', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(4, 'Stacja 04', 'Intel', 'Pentium G2130', 'DDR3', 1866, 'SATA', 750, 'AsRock', 'Z77 Pro3', 'OCZ', 'FGXS-SD500', 600, 'Nvidia', 'GTX990'),
(5, 'Stacja 05', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980'),
(6, 'Stacja 06', 'Intel', 'Core i5', 'DDR3', 2133, 'SATA', 500, 'AsRock', 'Z77 Pro4', 'OCZ', 'FGXS-SD500', 500, 'Nvidia', 'GTX980');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ustawienia`
--

CREATE TABLE IF NOT EXISTS `ustawienia` (
  `id` int(255) NOT NULL,
  `nazwa-szkoly` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `wersja-apki` float NOT NULL,
  `data-aktualizacji` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ustawienia`
--

INSERT INTO `ustawienia` (`id`, `nazwa-szkoly`, `wersja-apki`, `data-aktualizacji`) VALUES
(1, 'Zespół Szkół i Placówek Kształcenia Zawodowego w Bielawie', 0.4, '2015-12-06 23:32:19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE IF NOT EXISTS `uzytkownicy` (
  `id` int(10) NOT NULL,
  `imie` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `admin` int(10) NOT NULL,
  `login` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `admin`, `login`, `haslo`) VALUES
(1, 'Dawid', 'Tomas', 1, 'rodzyn', '35185bc3b8a05fba7d68745f63c441b9'),
(2, 'de', 'mo', 0, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
