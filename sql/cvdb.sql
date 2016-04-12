-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Gen 24, 2016 alle 14:23
-- Versione del server: 10.1.9-MariaDB
-- Versione PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvdb`
--
CREATE DATABASE IF NOT EXISTS `faiva78c_cvdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `faiva78c_cvdb`;

-- --------------------------------------------------------

--
-- Struttura della tabella `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) NOT NULL,
  `language` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `birthdate` text COLLATE utf8_bin NOT NULL,
  `nationality` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `telephone` text COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `web` text COLLATE utf8_bin NOT NULL,
  `driving_license` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `infos`
--

INSERT INTO `infos` (`id`, `language`, `data`, `header`, `name`, `birthdate`, `nationality`, `address`, `telephone`, `email`, `web`, `driving_license`) VALUES
(1, 'it', '0000-00-00', 1, 'Nome', 'Data di nascita', 'Nazionalità', 'Indirizzo', 'Telefono', 'E-mail', 'Sito web', 'Patente'),
(2, 'it', '0000-00-00', 0, 'Nicola Teso', '1 Aprile 1978', 'Italiana', '202 Dunaflor Verde, int 1184 - 35100 – Campo Internacional – Las Palmas - Spagna', '+34 602 181 402\r\n\r\n+39 320 79 66 989', 'Tesonicola@gmail.com', 'http://faiva78.com/', 'Cat. B'),
(3, 'en', '2016-01-23', 1, 'Name', 'Birthdate', 'Nationality', 'Address', 'Telephone', 'E-mail', 'Web page', 'Driving license'),
(4, 'en', '2016-01-23', 0, 'Mr. Teso Nicola', '1st April  1978', 'Italian', '202 Dunaflor Verde, int 1184 - 35100 – Campo Internacional – Las Palmas - Spain', '+34 602 18 14 02\r\n\r\n+39 320 79 66 989', 'Tesonicola@gmail.com', 'http://faiva78.com/', 'Cat. B');

-- --------------------------------------------------------

--
-- Struttura della tabella `infot`
--

CREATE TABLE `infot` (
  `id` bigint(20) NOT NULL,
  `language` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `skill_1` text COLLATE utf8_bin NOT NULL,
  `skill_2` text COLLATE utf8_bin NOT NULL,
  `skill_3` text COLLATE utf8_bin NOT NULL,
  `skill_4` text COLLATE utf8_bin NOT NULL,
  `skill_5` text COLLATE utf8_bin NOT NULL,
  `skill_6` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `infot`
--

INSERT INTO `infot` (`id`, `language`, `data`, `header`, `skill_1`, `skill_2`, `skill_3`, `skill_4`, `skill_5`, `skill_6`) VALUES
(1, 'it', '2016-01-24', 1, 'Sistemi Operativi', 'Programmi per l''ufficio', 'Programmazione', 'Grafica', 'Audio e suono', 'Hardware'),
(2, 'it', '2016-01-24', 0, 'Microsoft Windows (95 – 98 – NT – XP – Vista -7 – 8): Installazione ripristino, pulizia rimozione virus e malware, backup, amministrazione e gestione ambiente multi-utente, protocolli di sicurezza, installazione di software e dispositivi hardware, configurazione e amministrazione di reti LAN,WAN,WiFi.\r\n\r\nLinux (Ubuntu, Fedora, Redhat, etc.): Installazione, ripristino, pulizia, amministrazione, installazione e configurazione applicazioni.\r\n\r\nAndroid: Programmazione applicazioni in Java', 'Fogli di calcolo (Excel, Calc)\r\n\r\nVideoscrittura (Word, Write)\r\n\r\nPresentazioni (Powerpoint, Impress)\r\n\r\nPubblicazione (Publisher, Draw)\r\n\r\nBase di dati (Access, Base)\r\n\r\nOpenoffice e Visual Basic Scripts', 'Visual Basic (.NET, VBScripts)\r\n\r\nC, C++, C#, Pascal, Java\r\n\r\nHTML, CSS, Javascript, PHP, SQL\r\n\r\nVari linguaggi di script (LUA, AHK, MS Batch, etc.)', 'Modellazione 3D: Modelling, texturizzazione, sculpting, rigging, animazione (Blender, 3D Studio, AutoCAD)\r\n\r\nGrafica 2D: Fotoritocco, impaginazione (Photoshop, Gimp, Paint Shop Pro) - creazione locandine, posters, etichette - creazione, codifica/decodifica codici a barre (EAN 13/128) \r\n\r\nVideo: Modifica, composizione, arrangiamento, sincronizzazione audio,pubblicazione', 'Ingegneria del suono: creazione e modifica di campioni audio digitale, manipolazione tramite effetti, dinamiche e missaggio. (Reason, Cubase) ', 'Dimensionamento, montaggio e configurazione di personal computers: Processore, scheda madre, memoria volatile e di massa,schede video e audio, unità di alimentazione.\r\n\r\nComunicazioni: Installazione e configurazione di: reti LAN, WLAN, WIFI, Punti di accesso, routers - stampanti/scanners - sistemi di archiviazionee backup N.A.S. / S.A.N. - dispositvi in generale.');

-- --------------------------------------------------------

--
-- Struttura della tabella `langs`
--

CREATE TABLE `langs` (
  `id` bigint(20) NOT NULL,
  `language` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `know_language` text COLLATE utf8_bin NOT NULL,
  `read_skill` text COLLATE utf8_bin NOT NULL,
  `write_skill` text COLLATE utf8_bin NOT NULL,
  `speak_skill` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `langs`
--

INSERT INTO `langs` (`id`, `language`, `data`, `header`, `know_language`, `read_skill`, `write_skill`, `speak_skill`) VALUES
(1, 'it', '2016-01-01', 0, 'Italiano', 'Madrelingua', 'Madrelingua', 'Madrelingua'),
(2, 'it', '2000-01-01', 0, 'Inglese', 'Buono', 'Buono', 'Buono'),
(3, 'it', '1978-01-01', 0, 'Spagnolo', 'Sufficiente', 'Basilare', 'Basilare'),
(4, 'it', '2015-01-01', 1, 'Lingua conosciuta', 'Capacità di lettura', 'Capacità di scrittura', 'Capacità di espressione orale');

-- --------------------------------------------------------

--
-- Struttura della tabella `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL,
  `language` text COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `relation_skill` text COLLATE utf8_bin NOT NULL,
  `organization_skill` text COLLATE utf8_bin NOT NULL,
  `technic_skill` text COLLATE utf8_bin NOT NULL,
  `art_skill` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `skill`
--

INSERT INTO `skill` (`id`, `language`, `data`, `header`, `relation_skill`, `organization_skill`, `technic_skill`, `art_skill`) VALUES
(1, 'it', '2016-01-24', 1, 'Capacità e competenze relazionali', 'Capacità e competenze organizzative', 'Capacità e competenze tecniche', 'Capacità e competenze artistiche'),
(2, 'it', '2016-01-24', 0, 'Capacità di relazione con colleghi e persone nell''ambito lavorativo anche in constestiesteri.\r\n\r\nCompetenze nelle relazioni con la clientela e nel mantenimento dell''assistenza post-vendita', 'Capacita di organizzare e coordinare gruppi o squadre di lavoro nella finalità di raggiungere l''obiettivo prefissato nei tempi e nelle modalità richieste ndei limiti di spesa prefissati.\r\n\r\nCapacità nell''organizzare trasferte di personale in ambito nazionale ed estero per medio-brevi periodi.\r\n\r\nCompetenze nell''amministrazione di bilanci di piccole aziende', 'Competenza di  installazione e manutenzione di piccoli impianti elettrici civili ed industriali, riparazioni e cablaggio quadri elettrici.\r\n\r\nCompetenze nel montaggio di strutture in legno, mobilia, arredamenti, capacità nell''uso delle attrezzature pertinenti alla lavorazione del legno e di mezzi di sollevamento.\r\n\r\nCapacita'' di lettura ed interpretazione di disegni tecnici, progetti, fasi di montaggio', 'Esperienze personali nella composizione musicale tramite software dedicato: Sintetizzatori software, campionatori, sequencer multitraccia MIDI.\r\n\r\nEsperienze personali nella composizione e layout locandine, impaginazione, foto ritocchi, pagine web e blogs.');

-- --------------------------------------------------------

--
-- Struttura della tabella `study`
--

CREATE TABLE `study` (
  `id` bigint(20) NOT NULL,
  `language` text CHARACTER SET latin1 NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `date` text COLLATE utf8_bin NOT NULL,
  `formazione` text COLLATE utf8_bin NOT NULL,
  `materie` text COLLATE utf8_bin NOT NULL,
  `qualifica` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `study`
--

INSERT INTO `study` (`id`, `language`, `data`, `header`, `date`, `formazione`, `materie`, `qualifica`) VALUES
(1, 'it', '2014-10-24', 1, 'Data (da - a)', 'Nome e tipo di istituto di istruzione\no formazione', 'Principali materie / abilità\nprofessionali oggetto dello studio', 'Qualifica conseguita'),
(2, 'it', '2010-05-01', 0, '2015-05-30', 'Corso di social media management', 'Studio dei principali mezzi di comunicazione usati nei social media\r\n\r\nGestione e monitoraggio del settore social\r\n\r\nTecniche di comunicazione con i clienti, impaginazione, monitoraggio e creazione contenuti', 'Attestato di partecipazione'),
(3, 'it', '2010-05-01', 0, '2015-05-30', 'Corso stoccaggio e manipolazione prodotti ittici vivi, freschi e surgelati', 'Stoccaggio prodotti alimentari e mantenimento della catena del freddo.\r\n\r\nProcedure di pulizia e igenizzazione.\r\n\r\nInformativa dei rischi, malattie e pericoli nel trattamento di aliment in genere', 'Corso Superato'),
(4, 'it', '2005-02-01', 0, 'Febbraio 2005', 'E.C.D.L Core: European Computer Driving License', 'Concetti di Information Technology\r\n\r\nUso del Personal computer e gestione file\r\n\r\nElaborazione testi\r\n\r\nFogli elettronici\r\n\r\nUso di Basi di dati\r\n\r\nPresentazioni\r\n\r\nComunicazioni di reti', 'Corso Superato'),
(5, 'it', '2004-09-01', 0, 'Settembre – Dicembre 2004', 'Corso Agenti e Rappresentanti di di commercio - Associazione Commercianti San Dona'' di Piave', 'Nozioni di diritto commerciale.\r\n\r\nLegislazione tributaria.\r\n\r\nDisciplina legislativa e contrattuale nell''attività di agente e rappresentante.\r\n\r\nOrganizzazione e tecniche di vendita', 'Attestato di partecipazione\r\n\r\nIscrizione all''albo nazionale degli agenti e rappresentanti'),
(6, 'it', '1992-01-01', 0, '1992 - 1996', 'Perito informatico, Istituto Tecnico Industriale Statale “Vito Volterra - San Donà di Piave – Venezia - Italia', 'Istruzione secondaria superiore generale\r\n\r\nTecniche di programmazione lineare e a oggetti\r\n\r\nAnalisi e risoluzione problemi\r\n\r\nDisegno tecnico ', 'Completati 3 anni scolastici'),
(7, 'it', '1991-01-01', 0, '1991 - 1996 ', 'Istituto Scolastico Statale “Giovanni D''Annunzio” - Jesolo Lido – Venezia - Italia', 'Istruzione secondaria media generale', 'Diploma scuola media inferiore.');

-- --------------------------------------------------------

--
-- Struttura della tabella `translate`
--

CREATE TABLE `translate` (
  `id` bigint(20) NOT NULL,
  `it` text NOT NULL,
  `en` text NOT NULL,
  `es` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `translate`
--

INSERT INTO `translate` (`id`, `it`, `en`, `es`) VALUES
(1, 'CV', 'CV', 'CV'),
(2, 'Grafiche', 'Artworks', 'Obras'),
(3, 'Suoni', 'Sounds', 'Sonidos'),
(4, 'Progetti', 'Projects', 'Proyectos'),
(5, 'Informazioni', 'Informations', 'Información'),
(6, 'Lavori', 'Works', 'Trabajo'),
(7, 'Studi', 'Study', 'Estudios'),
(8, 'Curriculum Vitae e informazioni', 'Curriculum Vitae and informations', 'Curriculum Vitae y informaciones'),
(9, 'Lingue', 'Languages', 'Idioma'),
(10, 'Competenze', 'Skills', 'Habilidades'),
(11, 'Tecnologie informatiche', 'Information technology', 'Tecnología de la información');

-- --------------------------------------------------------

--
-- Struttura della tabella `works`
--

CREATE TABLE `works` (
  `Id` bigint(20) NOT NULL,
  `language` text CHARACTER SET latin1 NOT NULL,
  `data` date NOT NULL,
  `header` tinyint(1) NOT NULL,
  `date` text COLLATE utf8_bin NOT NULL,
  `azienda` text COLLATE utf8_bin NOT NULL,
  `settore` text COLLATE utf8_bin NOT NULL,
  `impiego` text COLLATE utf8_bin NOT NULL,
  `mansioni` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `works`
--

INSERT INTO `works` (`Id`, `language`, `data`, `header`, `date`, `azienda`, `settore`, `impiego`, `mansioni`) VALUES
(1, 'it', '2015-01-23', 1, 'Data (Da-a)', 'Nome e indirizzo del datore di lavoro', 'Tipo di azienda o settore', 'Tipo di impiego', 'Principali mansioni e responsabilità'),
(2, 'it', '2009-08-01', 0, 'Giugno 2009 -  Luglio 2015', 'Ittica Center S.r.l. - Via Baracca 80, Cavallino-Treporti 30100 - Venezia - Italia', 'Commercio prodotti ittici - Ingrosso pesce', 'Impiegato - Capo Reparto Spedizioni', 'Elaborazione ed evasione ordini computerizzato di clienti e fornitori.\r\n\r\nGestione e manutenzione di programmi e apparecchiature informatiche professionali.\r\n\r\nProgettazione, scrittura e manutenzione di programmi di utilità per l''ottimizzazione delle vendite, le procedure di inventario, di getione del magazzino e promozione vendite ai clienti.\r\n\r\nRelazioni di collaborazione, coordinamento e consulenza con la casa informatica fornitrice dei servizi I.T.\r\n\r\nAnalisi statistica delle vendite, di inventario e di produttività.\r\n\r\nGestione social media, design di sito web, gestione e crezione dei contenuti,grafica pubblicitaria.\r\n\r\nConfigurazione e gestione etichette e codici a barre.'),
(3, 'it', '2006-01-01', 0, 'Gennaio. 2006 – Maggio 2009', 'Bantes S.r.l. - Via Pio X  8, Passarella, San Dona'' di Piave - Venezia - Italia', 'Montaggio coperture, strutture e arredamenti in legno', 'Socio -Amministratore delegato - Capo squadra', 'Gestione del bilancio aziendale e finanziaria dell''attività.\r\n\r\nPreparazione e presentazione di preventivi e capitolati a clienti e fornitori,\r\n\r\nProgettazionee realizzazione autonoma di piccole strutture e arredamenti.\r\n\r\nMontaggio di coperture in legno lamellare, massiccio, sia di piccole che di grandi dimensioni, pacchetto di isolamento, strutture anche di complicata fattura o installazione.\r\n\r\nCollaborazione con grandi industrie del settore: Holzbau, Stratex, Bautec, C.M.I., etc.\r\n\r\nMontaggio di arredamenti e interni di negozi e stand di prestigiose marche: Guess. Benetton, Beretta, Diesel, Ferrari, Martin Margiela.'),
(4, 'it', '2005-01-01', 0, 'Gennaio 2005 – Gennaio 2006', 'Edil Holz S.n.c. - San Dona'' di Piave – Venezia - Italia', 'Montaggio strutture in legno', 'Montatore – Caposquadra Montatore', 'Montaggio e installazione di strutture e coperture in legno lamellare e massiccio, pacchetto isolante, posa di perlinato.\r\n\r\nLavorazione, taglio, dipintura e assemblaggio in situ del materiale.\r\n\r\nAccomodamenti, modifiche e costruzione su richiesta di abbaini, lucernai, tettoie, pompeiane, ecc.\r\n\r\nMontaggio di grandi strutture in legno lamellare (palestre, piscine, chiese, cantine, centri commerciali) e di medio-piccola fattura (case, chalet, palazzi, comdomini,bungalows)\r\n\r\nGetione e coordinamento dei lavori, del personale, e della sicurezza.\r\n\r\nEsperienza nella guida e manovra di mezzi di sollevamento e spostamento (gru, autogru, muletti, manitou, piattaforme)'),
(5, 'it', '2004-03-01', 0, 'Marzo 2004 – Gennaio 2005', 'Pizzevia S.n.c. - Monastier – Treviso - Italia ', 'Pizzeria da asporto', 'pizzaiolo, aiuto pizzaiolo', 'Preparazione, farcitura e cottura di varie dimensioni di pizze, della pasta e degliingredienti.\r\n\r\nPulizia, manutenzione del forno a legna, impastatrice e varie attrezzature.\r\n\r\nGestione e stoccaggio dei prodotti alimentari.\r\n\r\nCorretto uso delle procedure igieniche H.A.C.C.P'),
(6, 'it', '2003-09-01', 0, 'Settembre 2003 – Marzo 2004', 'Teso Nicola - Via O.Romero 6/a – Jesolo - Italia ', 'Dotto S.r.l - Commercio prodotti per la pulizia industriale', 'Agente rappresentante monomandatario', 'Mantenimento e procacciagione di nuovi clienti (portafoglio di 200 clienti).\r\n\r\nCatalogo consistente in di più di 1000 articoli.\r\n\r\nGestione e coordinamento visite clienti in autonomia.\r\n\r\nPresentazione nuovi prodottie dimostrazioni d''uso.\r\n\r\nConsulenza e formazione clienti per la corretta applicazione delle procedure igieniche H.A.C.C.P.'),
(7, 'it', '2000-05-01', 0, 'Maggio 2000 – Ottobre 2001 / Aprile 2002 – Settembre 2003', 'Dotto Srl - Via Meucci, Jesolo – Venezia - Italia', 'Commercio Prodotti per la pulizia industriali', 'Autista, Magazziniere', 'Consegna prodotti e merci mezzo furgoni (cat. B).\r\n\r\nGestione giri consegna e coordinamento con i colleghi.\r\n\r\nInventario di magazzino, carico e scarico merci con mezzi di sollevamento.\r\n\r\nAssistenza e vendita prodotti ai clienti direttamente dal magazzino.\r\n\r\nServizio di consegna in una vasta area (litorale veneziano orientale ed entroterra Veneto e Friulano)'),
(8, 'it', '1999-01-01', 0, 'Gennaio 1999 – Febbraio 2000', 'Little Italy Restaurants - Trafalgar Square –  Londra – Regno Unito', 'Catena di ristorazione', 'Aiuto cuoco ', 'Addetto alle  insalate, paste e pizza, sostituzione del personale.\r\n\r\nPrepazazione e  stoccaggio ingredienti.\r\n\r\nAddetto alle decorazioni e presentazione dei piatti'),
(9, 'it', '1996-04-01', 0, 'Aprile 1996 – ottobre 1998', 'Ferro e Mazzuia Snc -Via Meucci, Jesolo', 'Montaggio impianti elettrici civili e industriali.', 'Apprendista elettricista', 'Cablaggio impianti e quadri elettrici.\r\n\r\nMontaggio prese, punti luce, impianti TV, telefonici, antifurto, cancelli utomatici.\r\n\r\nCostruzione di impianti elettrici tramite canaline e/o scavi a muro su abitazioni di tuttele fatture.\r\n\r\nMontaggio di impianti elettrici  a vista esterna di: cucine d''albergo, capannoni\r\nindustriali, officine, fabbriche');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `infot`
--
ALTER TABLE `infot`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `infot`
--
ALTER TABLE `infot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `study`
--
ALTER TABLE `study`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `translate`
--
ALTER TABLE `translate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT per la tabella `works`
--
ALTER TABLE `works`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
