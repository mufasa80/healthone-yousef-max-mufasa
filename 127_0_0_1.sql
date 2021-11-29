-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 nov 2021 om 14:33
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--
DROP DATABASE IF EXISTS `healthone`;
CREATE DATABASE IF NOT EXISTS `healthone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthone`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`ID`, `Title`, `Image`, `Discription`) VALUES
(1, 'Roeitrainer', 'roeitrainer.jpg', ''),
(2, 'Crosstrainer', 'crosstrainer.jpg', ''),
(3, 'Hometrainer', 'Hometrainer.jpg', ''),
(4, 'Loopband', 'Loopband.jpg', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Picture` varchar(255) NOT NULL,
  `Discription` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`ID`, `Name`, `Picture`, `Discription`, `category_id`) VALUES
(1, 'Roeitrainer - Focus Fitness Row 2\r\n', 'rt1.jpg', 'Deze Row 2 roeitrainer van Focus Fitness is voorzien van een stijlvol design en sterk frame dat voldoende uitdaging biedt voor het gehele gezin. Door de V-belt aandrijving is de Row 2 tijdens gebruik fluisterstil en na training kan hij eenvoudig worden opgeklapt en worden weggerold. De fitnessapparaten van Focus Fitnes staan bekend om de goede prijs/kwaliteit verhoudingen en deze Row 2 is hier een perfect voorbeeld van. Kortom, deze roeitrainer is een perfect apparaat voor de thuissporter!', 1),
(2, 'Roeitrainer - NordicTrack RX800', 'rt2.jpg', 'De NordicTrack RX800 is een uitstekende roeitrainer en is geschikt voor intensief thuisgebruik.. Het luchtweerstandsysteem zorgt voor een optimale roeibeleving, waarbij weerstand wordt opgebouwd als er meer kracht wordt gezet. Dus hoe harder jij je best doet, hoe zwaarder het wordt. Het bijzondere aan deze roeitrainer is dat de rails in te klappen is. Op deze manier bespaart de roeitrainer ruimte wanneer deze niet gebruikt wordt. Ideaal wanneer je weinig ruimte tot je beschikking hebt!', 1),
(3, 'Roeitrainer - Focus Fitness Row 3', 'rt3.jpg', 'De Focus Fitness Row 3 is de ideale roeitrainer voor de thuissporter. Zo beschikt de Row 3 over een prachtig design, magnetisch weerstandsysteem en sterk frame. Het magnetisch weerstandsysteem zorgt voor een nauwkeurige roeibeleving. Daarnaast train je geheel geruisloos en is de roeitrainer onderhoudsvrij. Met het eigen gewicht van 35 kg haal je met de Row 3 een stabiele en degelijke roeitrainer in huis.', 1),
(4, 'Crosstrainer - Focus Fitness Fox 4', 'cr1.jpg', 'Met de Focus Fitness Fox 4 haal je een uitstekende crosstrainer in huis. Deze crosstrainer biedt je met het zware vliegwiel aan de voorkant, de hoge mate van stabiliteit en de longitudinale pas een unieke fitnesservaring in je eigen huis! De Focus Fitness Fox 4 is een hoogwaardige frontcrosstrainer met een uitstekende prijs-kwaliteitverhouding.', 2),
(5, 'Crosstrainer - Schwinn 430i', 'cr2.jpg', 'Wat variatie betreft heeft de 430i crosstrainer van Schwinn veel te bieden: 23 programma\'s, waarvan er 2 op de gebruiker zijn afgestemd, 8 hartslag gevormd en 4 gevorderden programma\'s zorgen voor de nodige afwisseling en motivatie tijdens het bewegen. Via contact sensoren bij de handen meet de 430i uw hartslag. De ingebouwde ventilator zorgt door middel van 3 verschillende standen voor de hard verdiende afkoeling.', 2),
(6, 'Crosstrainer - ProForm Carbon EL\r\n', 'cr3.jpg', 'De ProForm Carbon EL is een stevige crosstrainer met de meest verfijnde specificaties. De grote mate van verstelbaarheid, compacte display, keuze uit maar liefst 18 verschillende weerstandniveaus en stevigheid zorgen voor uiterst comfortabele trainingssessies.', 2),
(7, 'Hometrainer - Nautilus U626', 'ht1.jpg', 'De hometrainer Nautilus U626 is geschikt voor intensief thuis gebruik. Met de hometrainer kan tot wel twaalf uur per week voor vier verschillende gebruikers getraind worden. Alle gegevens worden gesynchroniseerd op basis van de gekozen gebruiker nadat het apparaat gekoppeld is met een smartphone of tablet. Op de manier ben je op de hoogte van je voortgang en dagelijkse calorieverbruik.', 3),
(8, 'Hometrainer - FitBike Senator iPlus - Ergometer', 'ht2.jpg', 'De Fitbike Senator iPlus is het paradepaardje onder de hometrainers van het merk Fitbike. De hometrainer beschikt over een stabiel en ijzersterk frame, zwaar vliegwiel, lage instap en tablethouder inclusief Bluetooth koppeling. Het ijzersterke frame heeft een eigen gewicht van 47 kg en is belastbaar tot een lichaamsgewicht van 180 kg. Daarnaast beschikt de Senator over een 10 kg zwaar vliegwiel, dat wordt aangestuurd door middel van een EMS (elektromagnetisch remsysteem).', 3),
(9, 'Hometrainer - Kettler Ride 300\r\n', 'ht3.jpg', 'De Kettler Ride 300 is de comfortabele hometrainer en is eenvoudig in gebruik. Dit instapmodel hometrainer is ontworpen voor mensen die aan de slag willen gaan met conditie opbouwen of graag in beweging willen blijven. Door de lage instap is deze hometrainer niet alleen geschikt voor thuissporten, maar ook voor revalidatie.\r\n\r\n', 3),
(10, 'Loopband - NordicTrack New Commercial 2950\r\n', 'lb1.jpg', 'De NordicTrack New Commercial 2950 is een zeer complete loopband die geschikt is voor doelgerichte trainingen. Of je doel nu afvallen of het verbeteren van je uithoudingsvermogen is, deze loopband biedt je tal van trainingsmogelijkheden. De loopband is ontworpen om thuis intensief aan je trainingsdoelen te werken. De loopband kan meerdere keren per week door verschillende personen in een huishouden gebruikt worden.', 4),
(11, 'Loopband - ProForm Pro 2000', 'lb2.jpg', 'De ProForm Pro 2000 is een zeer complete loopband die geschikt is voor doelgerichte trainingen. Of je doel nu afvallen of het verbeteren van je uithoudingsvermogen is, deze loopband biedt je tal van trainingsmogelijkheden.', 4),
(12, 'Loopband - ProForm Pro 5000\r\n', 'lb3.jpg', 'De ProForm Pro 5000 is een zeer complete loopband die geschikt is voor doelgerichte trainingen en intensief thuisgebruik. Of je doel nu afvallen, het verbeteren van je uithoudingsvermogen of voorbereiden op een hardloopwedstrijd is, deze loopband biedt je tal van trainingsmogelijkheden.', 4);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
