-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Feb 06, 2016 alle 20:38
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

-- --------------------------------------------------------

--
-- Struttura della tabella `infos`
--

DROP TABLE IF EXISTS `infos`;
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
(4, 'en', '2016-01-23', 0, 'Mr. Teso Nicola', '1st April  1978', 'Italian', '202 Dunaflor Verde, int 1184 - 35100 – Campo Internacional – Las Palmas - Spain', '+34 602 18 14 02\r\n\r\n+39 320 79 66 989', 'Tesonicola@gmail.com', 'http://faiva78.com/', 'Cat. B'),
(5, 'es', '2016-02-01', 1, 'Nombre', 'Fecha  de  nacimiento', 'Nacionalidad', 'Dirección', 'Teléfono', 'E-mail', 'Sitio  web', 'Permiso  o permisos'),
(6, 'es', '2016-02-01', 0, 'Teso Nicola', '1  Abril  1978', 'Italiana', '1184  Dunaflor Verde -  35100  -  Maspalomas  -  Gran Canaria -  España', '+34 602 18 14 02\r\n\r\n+39 320 79 66 989', 'Tesonicola@Gmail.com \r\n\r\nTesonicola@Libero.it', 'Www.faiva78.com', 'Permiso  de  conducción  cat.  B');

-- --------------------------------------------------------

--
-- Struttura della tabella `infot`
--

DROP TABLE IF EXISTS `infot`;
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
(2, 'it', '2016-01-24', 0, 'Microsoft Windows (95 – 98 – NT – XP – Vista -7 – 8): Installazione ripristino, pulizia rimozione virus e malware, backup, amministrazione e gestione ambiente multi-utente, protocolli di sicurezza, installazione di software e dispositivi hardware, configurazione e amministrazione di reti LAN,WAN,WiFi.\r\n\r\nLinux (Ubuntu, Fedora, Redhat, etc.): Installazione, ripristino, pulizia, amministrazione, installazione e configurazione applicazioni.\r\n\r\nAndroid: Programmazione applicazioni in Java', 'Fogli di calcolo (Excel, Calc)\r\n\r\nVideoscrittura (Word, Write)\r\n\r\nPresentazioni (Powerpoint, Impress)\r\n\r\nPubblicazione (Publisher, Draw)\r\n\r\nBase di dati (Access, Base)\r\n\r\nOpenoffice e Visual Basic Scripts', 'Visual Basic (.NET, VBScripts)\r\n\r\nC, C++, C#, Pascal, Java\r\n\r\nHTML, CSS, Javascript, PHP, SQL\r\n\r\nVari linguaggi di script (LUA, AHK, MS Batch, etc.)', 'Modellazione 3D: Modelling, texturizzazione, sculpting, rigging, animazione (Blender, 3D Studio, AutoCAD)\r\n\r\nGrafica 2D: Fotoritocco, impaginazione (Photoshop, Gimp, Paint Shop Pro) - creazione locandine, posters, etichette - creazione, codifica/decodifica codici a barre (EAN 13/128) \r\n\r\nVideo: Modifica, composizione, arrangiamento, sincronizzazione audio,pubblicazione', 'Ingegneria del suono: creazione e modifica di campioni audio digitale, manipolazione tramite effetti, dinamiche e missaggio. (Reason, Cubase)\r\n', 'Dimensionamento, montaggio e configurazione di personal computers: Processore, scheda madre, memoria volatile e di massa,schede video e audio, unità di alimentazione.\r\n\r\nComunicazioni: Installazione e configurazione di: reti LAN, WLAN, WIFI, Punti di accesso, routers - stampanti/scanners - sistemi di archiviazionee backup N.A.S. / S.A.N. - dispositvi in generale.'),
(3, 'en', '2016-01-27', 1, 'Operating systems', 'Office applications', 'Programming', 'Graphics', 'Audio and sound', 'Hardware'),
(4, 'en', '2016-01-24', 0, 'Microsoft Windows (95 – 98 – NT – XP – Vista -7 – 8).: Installation, restore, cleaning, virus and malware removal, backup, multi user administration and management, security protocols, installation of software end hardware devices, configuration and management of LAN, WAN, WiFi networks.\r\n\r\nLinux (Ubuntu, Fedora, Redhat, etc.). Installation, restore, cleaning, administration, software installation and\r\nconfiguration\r\n\r\nAndroid: Java application coding', 'Spreadsheets  (Excel, Calc).\r\n\r\nWordprocessing (Word, Write).\r\n\r\nPresentations (Powerpoint, Impress).\r\n\r\nPublishing (Publisher, Draw).\r\n\r\nDatabase (Access, Base).\r\n\r\nOpenoffice and MS Office VB Scripts. ', 'Visual Basic (.NET, VBScripts)\r\n\r\nC, C++, C#, Pascal\r\n\r\nHTML, CSS, Javascript, PHP, SQL\r\n\r\nVarous script languages (LUA, AHK, MS Batch, etc.)', '3D Modelling: Modelling, texturing, sculpting, rigging, animation (Blender, 3D Studio,AutoCAD).\r\n\r\n2D Graphics: Photo retouch, layouts (Photoshop, Gimp, Paint Shop Pro. Creation of  poster, labels, businnes cards, fliers. Creation, coding/decoding of barcodes (EAN 13/128).\r\n\r\nVideo:Modify, composition, arrangement, audio syncronization and dubbing, publishing.', 'Sound engineering:Creation and modify of digital audio samples, manipulation with effects,dynamics ans mixing. (Reason, Cubase)\r\n', 'Sizing, mounting and  configuration of personal computers :CPU, motherboard, memory, video and audio card, drives, power supply.\r\n\r\nCommunication: Installation and configuration of: LAN, WLAN, WIFI networks. Access points, routers, printers/scanners, NAS/SAN store systems andbackups.General devices installation and manteinance'),
(5, 'es', '2016-01-27', 1, 'Sistemas operativos', 'Programas para las oficina', 'Programación', 'Gráfica', 'Audio y sonido', 'Hardware'),
(6, 'es', '2016-01-24', 0, 'Microsoft Windows (95 - 98 - NT - XP - Vista -7 - 8): Instalación reparación, limpieza eliminación de virus y malware, Backup, administración y gestión de medio ambiente multi-usuario, protocolos de seguridad, instalación de software y dispositivos de hardware, configuración y administración de redes LAN,WAN,WiFi.\r\n\r\nLinux (Ubuntu, Fedora, Redhat, etc.): Instalación, reparación, limpieza, administración, instalación y configuración de aplicaciones.\r\n\r\nAndroid: Programación de aplicaciones en Java', 'Hojas de cálculo (EXCEL, Calc)\r\n\r\nVideoscrittura (Word, Write)\r\n\r\nPresentaciones (Powerpoint, Impress)\r\n\r\nPublicación (Publisher, Draw)\r\n\r\nBase de datos (Access, base)\r\n\r\nOpenoffice y Visual Basic Scripts.', 'Visual Basic (.NET, VBScripts)\r\n\r\nC, C++, C#, Java, Pascal\r\n\r\n\r\nHTML, CSS, Javascript, PHP, SQL\r\n\r\nDiversos lenguajes de script (LUA, AHK, MS Batch, etc.)', 'Modelización 3D: Modelling, texturizzazione, sculpting, Rigging, animación (Blender, 3D Studio, AutoCAD)\r\n\r\nGráficos 2D: Fotoritocco, Diagramación (Photoshop, Gimp, Paint Shop Pro) -  Creación de carteles, posters, etiquetas. Creación, codificación/descodificación códigos de barras (EAN 13/128)\r\n\r\nVídeos: Se modifica, composición, arrangiamento, sincronización de audio, su publicación.', 'Ingeniería de sonido: Creación y modificación de muestras de audio digital, manipulación a través de efectos, dinámicas y missaggio. (Reason, Cubase)\r\n', 'Dimensionamiento, montaje y configuración de ordenadores computers: Procesador, tarjeta madre, memoria volátil y de la masa,fichas de vídeo y audio, unidad de alimentación.\r\n\r\nComunicaciones: Instalación y configuración de: Redes LAN, WLAN, WIFI - Puntos de acceso, routers, impresora/scanners, sistemas de almacenamiento y backup n.e.p. / S.A.N. - Dispositvi en general.');

-- --------------------------------------------------------

--
-- Struttura della tabella `langs`
--

DROP TABLE IF EXISTS `langs`;
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
(4, 'it', '2015-01-01', 1, 'Lingua conosciuta', 'Capacità di lettura', 'Capacità di scrittura', 'Capacità di espressione orale'),
(5, 'en', '2016-01-27', 1, 'Know Language', 'Read skill', 'Write skill', 'Speak skill'),
(6, 'en', '2016-01-24', 0, 'English', 'Good', 'Good', 'Good'),
(7, 'en', '2016-01-27', 0, 'Italian', 'Mother tongue', 'Mother tongue', 'Mother tongue'),
(8, 'en', '2015-10-01', 0, 'Spanish', 'Sufficent', 'Sufficent', 'Basic'),
(9, 'es', '2016-01-27', 1, 'Idioma conocido', 'Capacidad de lectura', 'Capacidad de escritura', 'Capacidad de expresión oral'),
(10, 'es', '2016-01-24', 0, 'Italiano', 'Lengua materna', 'Lengua materna', 'Lengua materna'),
(11, 'es', '2015-01-01', 0, 'Inglés', 'Bueno', 'Bueno', 'Bueno'),
(12, 'es', '2014-10-01', 0, 'Español', 'Sufficente', 'Sufficente', 'Sufficente');

-- --------------------------------------------------------

--
-- Struttura della tabella `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `menu` text COLLATE utf8_bin NOT NULL,
  `page` text COLLATE utf8_bin NOT NULL,
  `it` text COLLATE utf8_bin NOT NULL,
  `en` text COLLATE utf8_bin NOT NULL,
  `es` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `menus`
--

INSERT INTO `menus` (`id`, `menu`, `page`, `it`, `en`, `es`) VALUES
(1, 'cv', './CvMenu.php', 'CV', 'CV', 'CV'),
(2, 'artworks', './wip.php', 'Grafiche', 'Artworks', 'Obras'),
(3, 'sounds', './wip.php', 'Suoni', 'Sounds', 'Sonido'),
(4, 'projects', './wip.php', 'Progetti', 'Projects', 'Proyectos');

-- --------------------------------------------------------

--
-- Struttura della tabella `skill`
--

DROP TABLE IF EXISTS `skill`;
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
(2, 'it', '2016-01-24', 0, 'Capacità di relazione con colleghi e persone nell''ambito lavorativo anche in constestiesteri.\r\n\r\nCompetenze nelle relazioni con la clientela e nel mantenimento dell''assistenza post-vendita', 'Capacita di organizzare e coordinare gruppi o squadre di lavoro nella finalità di raggiungere l''obiettivo prefissato nei tempi e nelle modalità richieste ndei limiti di spesa prefissati.\r\n\r\nCapacità nell''organizzare trasferte di personale in ambito nazionale ed estero per medio-brevi periodi.\r\n\r\nCompetenze nell''amministrazione di bilanci di piccole aziende', 'Competenza di  installazione e manutenzione di piccoli impianti elettrici civili ed industriali, riparazioni e cablaggio quadri elettrici.\r\n\r\nCompetenze nel montaggio di strutture in legno, mobilia, arredamenti, capacità nell''uso delle attrezzature pertinenti alla lavorazione del legno e di mezzi di sollevamento.\r\n\r\nCapacita'' di lettura ed interpretazione di disegni tecnici, progetti, fasi di montaggio', 'Esperienze personali nella composizione musicale tramite software dedicato: Sintetizzatori software, campionatori, sequencer multitraccia MIDI.\r\n\r\nEsperienze personali nella composizione e layout locandine, impaginazione, foto ritocchi, pagine web e blogs.'),
(3, 'en', '2016-01-27', 1, 'Relational skills and expertise', 'Organizational skills and expertise', 'Technical sills and expertise', 'Artistic skills and expertise'),
(4, 'en', '2016-01-24', 0, 'Competence of relation with work collegues also in a foreign work enviroment.\r\n\r\nCompetence in customer relations and post-sale support', 'Competence in organization and coordination of teams to reach goals with a fixed budged within the time and methods required.\r\n\r\nCompetence in logistic team transfer and organizationfor shor-medium periods in a\r\nforeign enviroment. \r\n\r\nCompetence in the administration and management of small businness', 'Competence on installation and servicing of small civil and industrial electrical installation, fixing and repairing wiring panels.\r\n\r\nCompetence in mounting wooden structures and roofs, furnitures and furnishing; use\r\nof relevant equipment for woodworking; maneuver and drive of variuos lifting and\r\nmoving machines.\r\n\r\nCompetence in reading and correct  interpretation of technical blueprints drawings.', 'Personal experiences in the musical composition with digital software, samplers, multitracks sequencers, mixers and MIDI devices, amateur percussionist.\r\n\r\nExperiences in composition and publishing of fliers and posters, web pages and blogs.\r\n\r\nExperiences  in the field of art in collaboration with various groups regarding visual art representation and projection, music and entertaining production and organization.'),
(5, 'es', '2016-01-27', 1, 'Capacidades y competencias relacionales', 'Capacidades y competencias organizativas', 'Capacidades y competencias técnicas', 'Capacidades y competencias artísticas'),
(6, 'es', '2016-01-24', 0, 'Capacidad de relación con colegas y personas en el ámbito laboral también en constesti exteriores.\r\n\r\nCompetencias en las relaciones con la clientela y en el mantenimiento de la asistencia post-venta.', 'Capacidad de organizar y coordinar grupos o equipos de trabajo en la finalidad de alcanzar el objetivo perseguido en los tiempos y en las modalidades requeridas ndei límites de gastos preestablecidos.\r\n\r\nCapacidad para organizar desplazamientos de personal en el ámbito nacional y extranjero para Oriente-períodos cortos.\r\n\r\nCompetencias en la administración de presupuestos de pequeñas empresas.', 'Competencia de  instalación y mantenimiento de pequeños instalaciones eléctricas civiles e industriales, reparaciones y cableado tableros eléctricos.\r\n\r\nCompetencias en el montaje de estructuras de madera, muebles, enseres domésticos, capacidad en el uso de equipos correspondientes a la transformación de la madera y de medios de elevación.\r\n\r\nCapacidad de lectura e interpretación de planos técnicos, proyectos, fases de montaje.', 'Experiencias personales en la composición musical mediante software dedicado: Sintetizadores software, muestreadores, sequencer multitraccia MIDI.\r\n\r\nExperiencias personales en la composición y layout carteles, Diagramación, fotos retoques, páginas web y blogs.');

-- --------------------------------------------------------

--
-- Struttura della tabella `study`
--

DROP TABLE IF EXISTS `study`;
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
(7, 'it', '1991-01-01', 0, '1991 - 1996 ', 'Istituto Scolastico Statale “Giovanni D''Annunzio” - Jesolo Lido – Venezia - Italia', 'Istruzione secondaria media generale', 'Diploma scuola media inferiore.'),
(8, 'en', '2016-01-27', 1, 'Date (From – To)', 'Name and type of education or formation institute', 'Main subjects / professional skills covered by the study', 'Qualification awarded'),
(9, 'en', '2014-10-01', 0, 'October 2014', 'Social media management course', 'Study of the main communication tools used in the social media.\r\n\r\nManaging and monitoring of social sector.\r\n\r\nTechniques of communication and relation with users and customers.\r\n\r\nSearch, creation, and layout of contents', 'Certificate of attendance'),
(10, 'en', '2010-05-01', 0, 'May 2010', 'Manipulation and stocking of live, fresh and frozen fisheries products', 'Food products stocking and cold chain procedures.\r\n\r\nHygienic and cleaning procedures.\r\n\r\nRisk assesment of dangers and diseases in the treatment of foods', 'Course passed '),
(11, 'en', '2004-09-01', 0, 'September – December 2004', 'Agents and representative trade course - Dealers Association San Dona'' di Piave', 'Notions of businnes laws.\r\n\r\nNotions of Tax laws.\r\n\r\nDiscipline in legislation and agreements in the activity of representative agent.\r\n\r\nOrganization and sales techniques', 'Course passed \r\n\r\nCertificate of attendance\r\n\r\nRegistration to national representative trade agent register'),
(12, 'en', '1992-01-01', 0, '1992 – 1996 ', 'I.T. expert,  State Technical and Industrial Institute “Vito Volterra” - San Donà di Piave – Venice - Italy', 'General upper secondary education.\r\n\r\nTechniques of linear and objects coding.\r\n\r\nAnalisys and problem solving.\r\n\r\nTechnical drawings', '3 year course completed'),
(13, 'en', '1991-01-01', 0, '1991 - 1996', 'Institutional State School  “Giovanni D''Annunzio” - Jesolo Lido – Venice - Italy', 'General medium secondary education.', 'Course passed\r\n\r\nCertificate of attendance'),
(14, 'es', '2016-01-27', 1, 'Date (desde - hasta)', 'Nombre y tipo de instituto de educación o formación', 'Principales materias / habilidades profesionales objeto del estudio', 'Calificación conseguida'),
(15, 'es', '2014-10-01', 0, 'Octubre 2014', 'Curso de social media management', 'Estudio de los principales medios de comunicación utilizados en los  social media.\r\n\r\nGestión y seguimiento del sector social\r\n\r\nTécnicas de comunicación con los clientes, Diagramación, seguimiento y la creación de contenidos', 'Certificado de participación'),
(16, 'es', '2010-05-01', 0, 'Mayo 2010', 'Curso de almacenamiento y manipulación de productos de peces vivos, frescos y congelados', 'Almacenamiento de productos alimenticios y mantenimiento de la cadena del frío.\r\n\r\nProcedimientos de limpieza y igenizzazione.\r\n\r\nInformativa de los riesgos, enfermedades y peligros en el tratamiento de aliment en general.\r\n', 'Curso superado'),
(17, 'es', '2005-01-01', 0, 'Febrero 2005', 'E.C.D.L Core: European Computer Driving License', 'Conceptos de Information Technology\r\n\r\nUso de ordenadores personales y gestión file\r\n\r\nProcesamiento de textos\r\n\r\nHojas electrónicos\r\n\r\nUso de bases de datos\r\n\r\nPresentaciones\r\n\r\nComunicaciones de redes\r\n', 'Curso superado'),
(18, 'es', '2004-03-01', 0, 'Septiembre - Diciembre 2004', 'Curso de agentes y representantes de comercio - Asociación Comerciantes San Dona'' di Piave', 'Nociones de derecho comercial.\r\n\r\nLegislación tributaria.\r\n\r\nMarco legislativo y contractual en la actividad de agente y representante.\r\n\r\nOrganización y técnicas de venta.', 'Certificado de participación\r\n\r\nInscripción en el registro nacional de los agentes y representantes'),
(19, 'es', '1987-01-01', 0, '1987 - 1992', 'Instituto Escolar estatal "Giovani D''Annunzio" - Jesolo Lido - Venecia - Italia', 'Educación Secundaria media general', 'Diploma de escuela media inferior.');

-- --------------------------------------------------------

--
-- Struttura della tabella `translate`
--

DROP TABLE IF EXISTS `translate`;
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
(11, 'Tecnologie informatiche', 'Information technology', 'Tecnología de la información'),
(12, 'Italiano', 'Italian', 'Italiano'),
(13, 'Inglese', 'English', 'Inglés'),
(14, 'Spagnolo', 'Spanish', 'Español'),
(15, 'In fase di allestimento', 'Work in progress', 'En construcción');

-- --------------------------------------------------------

--
-- Struttura della tabella `works`
--

DROP TABLE IF EXISTS `works`;
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
(9, 'it', '1996-04-01', 0, 'Aprile 1996 – ottobre 1998', 'Ferro e Mazzuia Snc -Via Meucci, Jesolo', 'Montaggio impianti elettrici civili e industriali.', 'Apprendista elettricista', 'Cablaggio impianti e quadri elettrici.\r\n\r\nMontaggio prese, punti luce, impianti TV, telefonici, antifurto, cancelli utomatici.\r\n\r\nCostruzione di impianti elettrici tramite canaline e/o scavi a muro su abitazioni di tuttele fatture.\r\n\r\nMontaggio di impianti elettrici  a vista esterna di: cucine d''albergo, capannoni\r\nindustriali, officine, fabbriche'),
(10, 'en', '2016-01-27', 1, 'Date (From – to)', 'Name and address of the employer', 'Type of businnes or sector', 'Job type', 'Main activities and resposabilities'),
(11, 'en', '2009-06-01', 0, 'June 2009 - July 2015', 'Ittica Center S.r.l. - Via Baracca 80, Cavallino-Treporti 30100 – Venice - Italy', 'Fish products trading – Wholesale fisheries', 'Clerk – Chief of shipping department', 'Processing customers and suppliers computerized orders\r\n\r\nManagement and mainteinance of software and hardware businnes I.T. systems.\r\n\r\nDesigning, writing and maintaining of utility software for optimizing sales and inventory procedures, warehouse management, customers sales promotions.\r\n\r\nRelations of collaborations and consultancy with the company  I.T. suppliers.\r\n\r\nStatistical analysis of sales, inventory and productivity.\r\n\r\nSocial media manager, web design, management and content creation, advertising and publishing graphics.\r\n\r\nBarcode configuration and management'),
(12, 'en', '2006-01-01', 0, 'January 2006 – May 2009', 'Bantes S.r.l. Via Pio X  8, Passarella, San Dona'' di Piave – Venice - Italy', 'Wood roofs, shop furnitures, furnishing construction and assembly', 'Associate - CEO – head of team montages', 'Businness balance and financial management.\r\n\r\nPreparation and presentation of customers jobs estimates.\r\n\r\nDesign and realization of wooden roof, structures and furnitures.\r\n\r\nAssembly structures,roofs in glued laminated timber and isolation covers of all sizes and detailS.   \r\n\r\nCollaboration with big businnes sector firms: Holzbau, Stratex, Bautec, C.M.I., etc.\r\n\r\nMountign of shops internal fornitures, furnishing and stands for prestigious brands: Guess, Benetton, Beretta, Diesel, Ferrari, Martin Margiela.\r\n\r\nPersonnel management; coordination, direction and logistic dispatchement of multiple teams.'),
(13, 'en', '2005-01-01', 0, 'January 2005 – January 2006', 'Edil Holz S.n.c. - San Dona'' di Piave – Venice - Italy', 'Wood roofs construction and assembly', 'Rigging, fitting, and mounting – mounting Team lead', 'Mounting and installation of wood roofs in glued laminated or raw  timber, insulationpackage, panel layering.\r\n\r\nMachining, cutting, painting and assembling the raw material on-site.  \r\n\r\nFixing, modifing and construction on demand of: dormers, skylights, canopies,\r\ngazebos, etc.\r\n\r\nMounting of big structures in laminated timber (swimming pools, gyms, churches,\r\nbasements, shopping malls) and medium-small compounds (houses, chalets,\r\nbuildings, bungalows).\r\n\r\nManagement and coordination of the workflow, the personnel and constructino site safety.\r\n\r\nExperience in maneuver and drive of variuos lifting and moving machines (platforms, cranes, forklift, etc).'),
(14, 'en', '2004-03-01', 0, 'March 2004 – January 2005', 'Pizzevia S.n.c. - Monastier – Treviso - Italy ', 'Pizza take-away shop', 'Apprentice pizza chef - pizza chef helper', 'Preparation, topping and cooking of pizzas of various sizes and  flavors.\r\n\r\nMantaining, cleaning and operating wood oven, pasta mixer and several kitchen\r\nequipments.\r\n\r\nStocking and managing of food goods.\r\n\r\nProper use of hygiene procedures in compliance with the HACCP rules.'),
(15, 'en', '2003-09-01', 0, 'September  2003 – March 2004', 'Teso Nicola - Via O.Romero 6/a – Jesolo - Italy ', 'Dotto S.r.l  - Industrial cleaning products', 'Representative and selling agent', 'Mantaining and finding new customers (wallet consisting of over 200 customers).\r\n\r\nManaging catalog items of more than 1000 products.\r\n\r\nAutonomous managing and coordination of customer visits.\r\n\r\nPresentation and demonstrations of new products.\r\n\r\nAdvice and formation of customers for correct application of HACCP hygiene and\r\ncleaning  procedures and rules'),
(16, 'en', '2000-03-01', 0, 'May 2000 – October 2001  / April  2002 – September 2003', 'Dotto Srl - Via Meucci, Jesolo – Venice - Italy', 'Industrial cleaning products', 'Driver - wharehouse man', 'Delivery of  goods by van (driving license cat. B).\r\n\r\nManagement of the deliveries and colleagues coordination.\r\n\r\nWharehouse inventory and management, loading and unloading of goods, forklift\r\ndriver\r\n\r\nSales, customer service and assistance directly from the warehouse.\r\n\r\nWide area selivery service ( Venetian-Friuli inland and coasts'),
(17, 'en', '1996-04-01', 0, 'April 1996 – October 1998', 'Ferro e Mazzuia S.n.c. - Via Meucci, Jesolo', 'Civil and industrial electrical installation', 'Apprentice electrician', 'Wiring of electrical panels and systems,\r\n\r\nMounting of sockets, lights,TV and telephone systems, alarm systems, automatic\r\ngates. \r\n\r\nFixing, construction and installation of electrical systems of small-medium size.\r\n\r\nMounting of external electrical installation for hotel kitchens, industrial wharehouses, workshops, factories'),
(18, 'es', '2016-02-04', 1, 'Date (desde - hasta)', 'Nombre y dirección del empresario', 'Tipo de empresa o sector', 'Tipo de uso', 'Principales funciones y responsabilidad'),
(19, 'es', '2009-06-01', 0, 'Junio 2009 - Julio 2015', 'Ittica Center S.r.l. - Via Baracca 80, Cavallino-Treporti 30100 - Venecia - Italia', 'Comercio de productos pesqueros - mayoristas pescado', 'Empleado - Jefe Departamento de envíos', 'Elaboración y evasión pedidos automatizado de clientes y proveedores.\r\n\r\nGestión y mantenimiento de programas y equipos informáticos profesionales.\r\n\r\nDiseño, escritura y mantenimiento de programas de utilidad para la ptimización de las ventas, los procedimientos de inventario, getione del almacén y promoción de ventas a clientes.\r\n\r\nRelaciones de colaboración, coordinación y asesoramiento con la casa informática suministradora de los servicios de I.T.\r\n\r\nAnálisis estadístico de las ventas, inventario y de productividad.\r\n\r\nGestión de social media, diseño de página Web, gestión y crear los contenidos, gráfica publicitaria.\r\n\r\nConfiguración y gestión de etiquetas y códigos de barras'),
(20, 'es', '2006-01-01', 0, 'Enero 2006 - Mayo 2009', 'Bantes S.r.l. - Via Pio X  8, Passarella, San Dona'' di Piave - Venecia - Italia', 'Montaje de tejados y revestimientos, estructuras y muebles de madera', 'Socio -Consejero Delegado - Jefe de equipo', 'Gestión del presupuesto empresarial y financiera de la actividad.\r\n\r\nPreparación y presentación de presupuestos y pliegos a clientes y proveedores\r\n\r\nProgettazionee realización autónoma de pequeñas estructuras y enseres domésticos.\r\n\r\nMontaje de cubiertas en madera laminar, masiva, tanto de pequeñas que de grandes dimensiones, paquete de aislamiento, estructuras también complicada factura o instalación.\r\n\r\nColaboración con grandes industrias del sector: Holzbau, Stratex, Bautec, C.M.I., etc.\r\n\r\nMontaje de muebles e interiores de tiendas y stands de prestigiosas Marcas: Guess. Benetton, Beretta, Diesel, Ferrari, Martin Margiela.\r\n\r\nGestión del personal, coordinación y dirección de múltiples equipos de montaje'),
(21, 'es', '2005-01-01', 0, 'Enero 2005 - Enero 2006', 'Edil Holz S.n.c. - San Dona'' di Piave - Venecia - Italia', 'Montaje de estructuras de madera', 'Instalador - capataz instalador.', 'Montaje e instalación de estructuras y cubiertas en madera laminar y masivo, paquete aislante, colocación de perlinato.\r\n\r\nElaboración, corte, dipintura y montaje in situ del material.\r\n\r\nArreglos, modificaciones y construcción a petición de claraboyas, lucernai, tettoie, pompeiane, etc..\r\n\r\nMontaje de grandes estructuras de madera laminar (gimnasios, piscinas, iglesias, bodegas, centros comerciales) y de Oriente-pequeña factura (casas, Chalet, palacios, comdomini, bungalows)\r\n\r\nGetione y coordinación de los trabajos, del personal, y la seguridad.\r\n\r\nExperiencia en la conducción y maniobra de medios de elevación y desplazamiento (grúas, grúas móviles, muletti, manitou, plataformas'),
(22, 's', '2004-03-01', 0, 'Marzo 2004 - Enero 2005', 'Pizzevia S.n.c. - Monastier - Treviso - Italia', 'pizza para llevar', 'Aprendiz de pizzero, ayuda pizzero', 'Preparación, farcitura y cocción de diferentes tamaños de pizzas, pasta y los ingredientes.\r\n\r\nùLa limpieza, mantenimiento del horno de leña, amasadora y varios equipos.\r\n\r\nGestión y almacenamiento de los productos alimenticios.\r\n\r\nUso correcto de los procedimientos de higiene H.A.C.C.P.'),
(23, 'es', '2003-09-01', 0, 'Septiembre 2003 - Marzo 2004', 'Teso Nicola - Via O.Romero 6/A - Jesolo - Italia', 'Dotto S.r.l  - Comercio de productos para la limpieza industrial.', 'Agente representante monomandatario', 'Mantenimiento y procacciagione de nuevos clientes (cartera de 200 clientes).\r\n\r\nCatálogo consistente en más de 1000 artículos.\r\n\r\nGestión y Coordinación de visitas de clientes en autonomía.\r\n\r\nPresentación nuevos prodottie demostraciones de uso.\r\n\r\nAsesoramiento y formación clientes para la correcta aplicación de los procedimientos de higiene H.A.C.C.P.'),
(24, 'es', '2000-03-01', 0, 'Mayo 2000 - Octubre 2001  / Abril 2002 - Septiembre 2003', 'Dotto Srl - Via Meucci, Jesolo - Venecia - Italia', 'Comercio de productos de limpieza industriales', 'Chofer, almacenista', 'Entrega de productos y mercancías medio furgonetas (cat. B).\r\n\r\nGestión vueltas entrega y coordinación con los colegas.\r\n\r\nInventario de almacén, carga y descarga de mercancías con medios de elevación.\r\n\r\nAsistencia y venta de productos a los clientes directamente desde el almacén.\r\n\r\nServicio de entrega en una amplia zona ( litoral veneciano oriental y hinterland Veneto- Friuliano).'),
(25, 'es', '1996-04-01', 0, 'Abril 1996 - Octubre 1998', 'Ferro y Mazzuia Snc - Via Meucci, Jesolo', 'Montaje de instalaciones eléctricas civiles e industriales.', 'Aprendiz de electricista', 'Cableado de instalaciones y cuadros eléctricos.\r\n\r\nMontaje adoptadas, puntos de luz, instalaciones TV, telefonía, antirrobo, puertas automáticas.\r\n\r\nConstrucción de instalaciones eléctricas a través canaline y/o excavaciones a muro en viviendas de todas las facturas.\r\n\r\nMontaje de instalaciones eléctricas  a la vista externa de: cocinas de hotel, naves industriales, talleres, fábricas.');

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
-- Indici per le tabelle `menus`
--
ALTER TABLE `menus`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `infot`
--
ALTER TABLE `infot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT per la tabella `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `study`
--
ALTER TABLE `study`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT per la tabella `translate`
--
ALTER TABLE `translate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT per la tabella `works`
--
ALTER TABLE `works`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
