-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 16. lis 2020, 12:17
-- Verze serveru: 10.4.11-MariaDB
-- Verze PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihy_os`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorie` int(11) NOT NULL,
  `kategorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `kategorie`
--

INSERT INTO `kategorie` (`id_kategorie`, `kategorie`) VALUES
(1, 'Světová a česká literatura do konce 18. století'),
(2, 'Světová a česká 19. století'),
(3, 'Světová literatura 20. a 21. století'),
(4, 'Česká literatura 20. a 21. století');

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id_knihy` int(11) NOT NULL,
  `nazev_knihy` varchar(150) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `anotace` varchar(1250) DEFAULT NULL,
  `kategorie_id_kategorie` int(11) NOT NULL,
  `prebal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id_knihy`, `nazev_knihy`, `autor`, `anotace`, `kategorie_id_kategorie`, `prebal`) VALUES
(1, ' Robinson Crusoe ', 'Defoe, Daniel', 'Robinson, chlapec z Yorku se vypraví bez povolení rodičů na dobrodružnou cestu do Afriky, jejich loď však ztroskotá na pustém ostrově a jediný Robinson se zachrání. Pozná, že ostrov není obydlen a tak si postupně zřizuje obydlí, kalendář, nádoby, učí se lovit zvěř a prozkoumává ostrov. Po nějakém čase se Robinsonovi podaří zachránit člověka ze spárů divochů, který mu je vždy nápomocen a dá mu jméno Pátek. Po asi po 27 letech se setkává s kapitánem velké lodi, pomáhá mu vyhrát boj proti vzbouřencům. Vzbouřence potom nechá na ostrově a zanechá jim skoro celé své vlastnictví a odplouvá do své vlasti, kde se setkává jen se svou nemocnou maminkou, protože otec již umřel. Robinson i Pátek se ožení, vychovávají své potomky a založí si obchodní dům, který se jmenuje Robinson & Pátek.\r\n\r\n', 1, 'Robinson.jpg'),
(2, ' Médea ', 'Euripides', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 1, 'Médea.jpg'),
(3, ' Pýcha a předsudek ', 'Austenová, Jane', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 2, 'Pycha_a_predsudek.jpeg'),
(4, ' Nový epochální výlet pana Broučka, tentokráte do XV. století', 'Čech, Svatopluk', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 2, 'Broucek.jpg'),
(5, ' Oliver Twist ', 'Dickens, Charles', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 2, 'Oliver.jpg'),
(6, ' Svatý Xaverius ', 'Arbes, Jakub', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 2, 'Xaverius.jpg'),
(7, ' Sbohem, armádo ', 'Hemingway, Ernest', 'Frederick Henry, mladý Američan, slouží dobrovolně jako poručík u oddílu řidičů na italské frontě. Potkává dobrovolnou zdravontí sestru, Angličanku Catherine Barkleyovou. Postupně se do sebe zamilují. Náhle je Frederick zraněn a převezen do lazaretu v Miláně. Catherine jej následuje a v průběhu rekonvalescence prožívají krásné chvilky. Poručík se musí vrátit do armády, ale brzy následuje obrovský ústup se svou jednotkou a hrozí mu i potupná smrt. Dezertuje a vrací se zpět ke své milence. Spolu utíkají v člunu do neutrálního Švýcarska, kde získávají povolení k pobytu a prožívají krásné dny v horském pensionu, kde Catherine otěhotní. Kniha končí tragicky smrtí Catherine spolu s dítětem při porodu.', 3, 'Sbohem_armado.jpg'),
(8, ' Proměna ', 'Kafka, Franz', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 3, 'Promena.jpg'),
(9, ' Cesta ', 'McCarthy, Cormac', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 3, 'Cesta.jpg'),
(10, ' Pianistka ', 'Jelinek, Elfriede', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 3, 'Pianistka.jpg'),
(11, '1984', 'Orwell, George', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 3, '1984.jpg'),
(12, ' Na západní frontě klid ', 'Remarque, Erich Maria', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 3, 'Na_zapad_fronte.jpg'),
(13, ' Bílá nemoc ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'Bila_nemoc.jpg'),
(14, ' Povídky z jedné kapsy ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'Povidky_z_jedne.jpg'),
(15, ' Válka s mloky ', 'Čapek, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'Valka_s_mloky.jpg'),
(16, ' Krysař ', 'Dyk, Viktor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'Krysar.jpg'),
(17, ' K moři ', 'Soukupová, Petra', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'K_mori.jpg'),
(18, ' Kníška Karla Kryla ', 'Kryl, Karel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce wisi. Nullam eget nisl. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Integer vulputate sem a nibh rutrum consequat. Nam qui', 4, 'Kniska_karla_kryla.jpg');

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `polozka_menu` varchar(45) DEFAULT NULL,
  `displej_nazev` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`id_menu`, `polozka_menu`, `displej_nazev`) VALUES
(1, 'home', 'Domů'),
(2, 'autori', 'Autoři'),
(3, 'dila', 'Díla');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorie`);

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id_knihy`);

--
-- Klíče pro tabulku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id_knihy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pro tabulku `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
