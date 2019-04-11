-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 apr 2019 om 10:46
-- Serverversie: 10.1.37-MariaDB
-- PHP-versie: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crm`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE `bestellingen` (
  `bestelling_id` int(11) NOT NULL,
  `klant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `medewerker_id` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contacten`
--

CREATE TABLE `contacten` (
  `contact_id` int(11) NOT NULL,
  `klant_id` int(11) NOT NULL,
  `opmerking` varchar(255) COLLATE utf8_bin NOT NULL,
  `medewerker_id` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `contacten`
--

INSERT INTO `contacten` (`contact_id`, `klant_id`, `opmerking`, `medewerker_id`, `datum`) VALUES
(1, 1, '', 0, '2019-04-01 11:21:40'),
(8, 0, 'dit is een test', 1, '2019-04-01 11:30:43');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klant`
--

CREATE TABLE `klant` (
  `klant_id` int(11) NOT NULL,
  `voornaam` varchar(255) COLLATE utf8_bin NOT NULL,
  `tussenvoegsel` varchar(255) COLLATE utf8_bin NOT NULL,
  `achternaam` varchar(255) COLLATE utf8_bin NOT NULL,
  `geslacht` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel.nummer` varchar(255) COLLATE utf8_bin NOT NULL,
  `e-mail` varchar(255) COLLATE utf8_bin NOT NULL,
  `straatnaam` varchar(255) COLLATE utf8_bin NOT NULL,
  `huisnummer` varchar(255) COLLATE utf8_bin NOT NULL,
  `postcode` varchar(255) COLLATE utf8_bin NOT NULL,
  `woonplaats` varchar(255) COLLATE utf8_bin NOT NULL,
  `land` varchar(255) COLLATE utf8_bin NOT NULL,
  `aanmaakdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Gegevens worden geëxporteerd voor tabel `klant`
--

INSERT INTO `klant` (`klant_id`, `voornaam`, `tussenvoegsel`, `achternaam`, `geslacht`, `tel.nummer`, `e-mail`, `straatnaam`, `huisnummer`, `postcode`, `woonplaats`, `land`, `aanmaakdatum`) VALUES
(1, 'jan', '', 'janssen', 'man', '06-12345678', 'janjanssen@gmail.com', 'dorpstraat', '15', '6543EC', 'maastricht', 'nederland', '2019-04-01 11:19:14');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medewerker`
--

CREATE TABLE `medewerker` (
  `medewerker_id` int(11) NOT NULL,
  `voornaam` varchar(255) COLLATE utf8_bin NOT NULL,
  `tussenvoegsel` varchar(255) COLLATE utf8_bin NOT NULL,
  `achternaam` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel.nummer` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product naam` varchar(255) COLLATE utf8_bin NOT NULL,
  `product info` varchar(255) COLLATE utf8_bin NOT NULL,
  `product status` int(11) NOT NULL,
  `prijs` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`bestelling_id`),
  ADD UNIQUE KEY `klant_id` (`klant_id`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD UNIQUE KEY `medewerker_id` (`medewerker_id`),
  ADD UNIQUE KEY `bestelling_id` (`bestelling_id`);

--
-- Indexen voor tabel `contacten`
--
ALTER TABLE `contacten`
  ADD PRIMARY KEY (`contact_id`),
  ADD UNIQUE KEY `klant_id` (`klant_id`),
  ADD UNIQUE KEY `medewerker_id` (`medewerker_id`);

--
-- Indexen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`klant_id`),
  ADD UNIQUE KEY `klant_id` (`klant_id`);

--
-- Indexen voor tabel `medewerker`
--
ALTER TABLE `medewerker`
  ADD PRIMARY KEY (`medewerker_id`),
  ADD UNIQUE KEY `medewerker_id` (`medewerker_id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  MODIFY `bestelling_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `contacten`
--
ALTER TABLE `contacten`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `klant`
--
ALTER TABLE `klant`
  MODIFY `klant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `medewerker`
--
ALTER TABLE `medewerker`
  MODIFY `medewerker_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `klant`
--
ALTER TABLE `klant`
  ADD CONSTRAINT `FK_klantid` FOREIGN KEY (`klant_id`) REFERENCES `contacten` (`klant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
