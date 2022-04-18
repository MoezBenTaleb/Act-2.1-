-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 18 avr. 2022 à 15:11
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_moez`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE IF NOT EXISTS `abonnement` (
  `id_abo` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `resum` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  `duree_abo` tinyint NOT NULL,
  PRIMARY KEY (`id_abo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`id_abo`, `nom`, `resum`, `prix`, `duree_abo`) VALUES
(0, 'VIP', 'l mois tout compris', 60, 30),
(1, 'GOLD', 'l\'abo pour les grosses l33t qui ont plein de sous', 500, 127),
(2, 'Classic', 'abonnement mensuel classique illimite', 40, 30),
(3, 'pass day', 'pass valable une journee', 15, 1),
(4, 'malsch', 'Le pass du malsch parcequ\'il le vau bien', 238, 4);

-- --------------------------------------------------------

--
-- Structure de la table `distrib`
--

DROP TABLE IF EXISTS `distrib`;
CREATE TABLE IF NOT EXISTS `distrib` (
  `id_distrib` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `cpostal` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_distrib`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `distrib`
--

INSERT INTO `distrib` (`id_distrib`, `nom`, `telephone`, `adresse`, `cpostal`, `ville`, `pays`) VALUES
(0, 'gimages', '0524509890', NULL, NULL, NULL, NULL),
(1, 'les films du losange', '0172073438', NULL, NULL, NULL, NULL),
(2, 'mk2 diffusion', '0165082653', NULL, NULL, NULL, NULL),
(3, 'rezo films', '0503486847', NULL, NULL, NULL, NULL),
(4, 'studio images 5', '0537834131', NULL, NULL, NULL, NULL),
(5, 'eiffel productions', '0384390808', NULL, NULL, NULL, NULL),
(6, 'cerito films', '0164444892', NULL, NULL, NULL, NULL),
(7, 'france 3 cin&amp;atilde;&amp;copy;ma', '0387270953', NULL, NULL, NULL, NULL),
(8, 'tartan films', '0267515944', NULL, NULL, NULL, NULL),
(9, 'monarchy enterprises b.v.', '0134931386', NULL, NULL, NULL, NULL),
(10, 'advanced', '0466014732', NULL, NULL, NULL, NULL),
(11, 'the vista organisation group', '0437174826', NULL, NULL, NULL, NULL),
(12, 'les films balenciaga', '0221824218', NULL, NULL, NULL, NULL),
(13, 'art-light productions', '0356023625', NULL, NULL, NULL, NULL),
(14, 'telinor', '0109372199', NULL, NULL, NULL, NULL),
(15, 'bandidos films', '0371213306', NULL, NULL, NULL, NULL),
(16, 'parco co, ltd', '0527672375', NULL, NULL, NULL, NULL),
(17, 'transfilm', '0448268106', NULL, NULL, NULL, NULL),
(18, 'dmvb films', '0215373495', NULL, NULL, NULL, NULL),
(19, 'davis-panzer productions', '0535418285', NULL, NULL, NULL, NULL),
(20, 'idea productions', '0313187914', NULL, NULL, NULL, NULL),
(21, 'vision international', '0424465993', NULL, NULL, NULL, NULL),
(22, 'films a2', '0243936488', NULL, NULL, NULL, NULL),
(23, 'dog eat dog productions', '0216868187', NULL, NULL, NULL, NULL),
(24, 'the carousel pictures company', '0578341887', NULL, NULL, NULL, NULL),
(25, 'interlight', '0387722115', NULL, NULL, NULL, NULL),
(26, 'deluxe productions', '0554695372', NULL, NULL, NULL, NULL),
(27, 'lolistar', '0190887722', NULL, NULL, NULL, NULL),
(28, 'united international pictures (uip)', '0511650332', NULL, NULL, NULL, NULL),
(29, 'verve pictures', '0343139508', NULL, NULL, NULL, NULL),
(30, 'entertainment film distributors ltd', '0136355344', NULL, NULL, NULL, NULL),
(31, 'eros film ltd.', '0117308564', NULL, NULL, NULL, NULL),
(32, 'dogwoof pictures', '0397752175', NULL, NULL, NULL, NULL),
(33, 'guerilla films ltd.', '0126939575', NULL, NULL, NULL, NULL),
(34, 'ica films', '0109521351', NULL, NULL, NULL, NULL),
(35, 'sony pictures', '0117667343', NULL, NULL, NULL, NULL),
(36, '20th century fox', '0450273867', NULL, NULL, NULL, NULL),
(37, 'contender entertainment', '0524345397', NULL, NULL, NULL, NULL),
(38, 'momentum pictures', '0333654411', NULL, NULL, NULL, NULL),
(39, 'adlabs films', '0255521648', NULL, NULL, NULL, NULL),
(40, 'artificial eye', '0135718252', NULL, NULL, NULL, NULL),
(41, 'the works', '0482435790', NULL, NULL, NULL, NULL),
(42, 'peccadillo pictures', '0142367829', NULL, NULL, NULL, NULL),
(43, 'metrodome films', '0184888460', NULL, NULL, NULL, NULL),
(44, 'icon film distribution uk', '0285454608', NULL, NULL, NULL, NULL),
(45, 'bfi distribution', '0278292428', NULL, NULL, NULL, NULL),
(46, 'optimum releasing', '0210219708', NULL, NULL, NULL, NULL),
(47, 'miracle comms', '0344573119', NULL, NULL, NULL, NULL),
(48, 'revolver entertainment', '0489407327', NULL, NULL, NULL, NULL),
(49, 'soda pictures', '0370402534', NULL, NULL, NULL, NULL),
(50, 'national film theater', '0304269716', NULL, NULL, NULL, NULL),
(51, 'revelation films', '0138006046', NULL, NULL, NULL, NULL),
(52, 'ace films', '0588636787', NULL, NULL, NULL, NULL),
(53, 'path&amp;atilde;&amp;copy;', '0530470806', NULL, NULL, NULL, NULL),
(54, 'v&amp;atilde;&amp;copy;rtigo films', '0588492202', NULL, NULL, NULL, NULL),
(55, 'park circus', '0517505479', NULL, NULL, NULL, NULL),
(56, 'buena vista international', '0147740888', NULL, NULL, NULL, NULL),
(57, 'yeah yeah yeah ltd.', '0579557407', NULL, NULL, NULL, NULL),
(58, 'swipe films', '0438820671', NULL, NULL, NULL, NULL),
(59, 'universal', '0118023807', NULL, NULL, NULL, NULL),
(60, 'paramount pictures', '0586773629', NULL, NULL, NULL, NULL),
(61, 'warner bros u.k.', '0379233026', NULL, NULL, NULL, NULL),
(62, 'showbox media group', '0194205118', NULL, NULL, NULL, NULL),
(63, 'united pictures international uk', '0398187864', NULL, NULL, NULL, NULL),
(64, 'paramount pictures uk', '0127074098', NULL, NULL, NULL, NULL),
(65, 'buena vista international uk', '0391010431', NULL, NULL, NULL, NULL),
(66, 'universal international pictures', '0142892701', NULL, NULL, NULL, NULL),
(67, 'punk distribution', '0387909616', NULL, NULL, NULL, NULL),
(68, 'axiom films', '0115965167', NULL, NULL, NULL, NULL),
(69, 'eros international ltd.', '0101316595', NULL, NULL, NULL, NULL),
(70, 'sony pictures uk', '0576925615', NULL, NULL, NULL, NULL),
(71, 'lions gate films home entertainment', '0486208894', NULL, NULL, NULL, NULL),
(72, 'studio 18', '0311132263', NULL, NULL, NULL, NULL),
(73, 'british path&amp;atilde;&amp;copy;', '0523400093', NULL, NULL, NULL, NULL),
(74, 'maiden voyage pictures', '0355023753', NULL, NULL, NULL, NULL),
(75, 'warner music entertainment', '0433185208', NULL, NULL, NULL, NULL),
(76, 'utv motion pictures', '0334826167', NULL, NULL, NULL, NULL),
(77, 'lionsgate uk', '0276522134', NULL, NULL, NULL, NULL),
(78, 'yume pictures', '0309873282', NULL, NULL, NULL, NULL),
(79, 'delanic films', '0412565948', NULL, NULL, NULL, NULL),
(80, 'vertigo films', '0464391054', NULL, NULL, NULL, NULL),
(81, 'path&amp;atilde;&amp;copy; distribution ltd.', '0267718795', NULL, NULL, NULL, NULL),
(82, 'spark pictures', '0114385541', NULL, NULL, NULL, NULL),
(83, 'slingshot', '0146903442', NULL, NULL, NULL, NULL),
(84, 'diffusion pictures', '0448074755', NULL, NULL, NULL, NULL),
(85, 'transmedia pictures', '0435146575', NULL, NULL, NULL, NULL),
(86, 'cinefilm', '0139243944', NULL, NULL, NULL, NULL),
(87, 'odeon sky filmworks', '0289544451', NULL, NULL, NULL, NULL),
(88, 'liberation entertainment', '0537490904', NULL, NULL, NULL, NULL),
(89, 'lagoon entertainment', '0462275200', NULL, NULL, NULL, NULL),
(90, 'halcyon pictures', '0394022987', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fiche_personne`
--

DROP TABLE IF EXISTS `fiche_personne`;
CREATE TABLE IF NOT EXISTS `fiche_personne` (
  `id_perso` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `cpostal` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_perso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fiche_personne`
--

INSERT INTO `fiche_personne` (`id_perso`, `nom`, `prenom`, `date_naissance`, `email`, `adresse`, `cpostal`, `ville`, `pays`) VALUES
(25, 'hennegrave', 'severin', '1978-07-05 00:00:00', 'hennegrave.severin@machin.com', ' ', '14740', 'PUTOT EN BESSIN', NULL),
(7, 'glachant', 'guy', '1935-01-27 00:00:00', 'glachant.guy@machin.com', ' ', '59274', 'MARQUILLIES', NULL),
(26, 'coulm', 'marwan', '1934-11-16 00:00:00', 'coulm.marwan@machin.com', ' ', '06470', 'VILLENEUVE D ENTRAUNE', NULL),
(27, 'obriot', 'franck', '1983-06-10 00:00:00', 'obriot.franck@machin.com', ' ', '01420', 'SURJOUX', NULL),
(19, 'bordoni', 'mikael', '1980-10-19 00:00:00', 'bordoni.mikael@machin.com', ' ', '87140', 'THOURON', NULL),
(1, 'lienhart', 'quoc-quang', '1935-04-15 00:00:00', 'lienhart.quoc-quang@machin.com', ' ', '03500', 'MONETAY SUR ALLIER', NULL),
(30, 'brinon', 'florestan', '1974-05-09 00:00:00', 'brinon.florestan@machin.com', ' ', '36340', 'MAILLET', NULL),
(24, 'de-ponfilly', 'kamel', '1933-06-14 00:00:00', 'de-ponfilly.kamel@machin.com', ' ', '25340', 'ANTEUIL', NULL),
(4, 'domingues', 'stephane', '1944-01-03 00:00:00', 'domingues.stephane@machin.com', ' ', '32120', 'PUYCASQUIER', NULL),
(16, 'vaillier', 'kamel', '1968-12-19 00:00:00', 'vaillier.kamel@machin.com', ' ', '61260', 'MALE', NULL),
(17, 'wetter', 'frederic-eugene', '1987-07-24 00:00:00', 'wetter.frederic-eugene@machin.com', ' ', '36130', 'MONTIERCHAUME', NULL),
(10, 'schiff', 'arnaud', '1985-05-03 00:00:00', 'schiff.arnaud@machin.com', ' ', '01260', 'VIEU', NULL),
(11, 'valet', 'jean-remi', '1959-08-24 00:00:00', 'valet.jean-remi@machin.com', ' ', '14190', 'MAIZIERES', NULL),
(13, 'dupuy', 'marie', '1949-08-07 00:00:00', 'dupuy.marie@machin.com', ' ', '71390', 'ST GERMAIN LES BUXY', NULL),
(9, 'verhaeghe', 'lilian', '1974-03-13 00:00:00', 'verhaeghe.lilian@machin.com', ' ', '65100', 'LOUBAJAC', NULL),
(23, 'davoine-graziani', 'faouzi', '1972-04-14 00:00:00', 'davoine-graziani.faouzi@machin.com', ' ', '33180', 'ST SEURIN DE CADOURNE', NULL),
(21, 'ruckebusch', 'abdesslam', '1966-09-19 00:00:00', 'ruckebusch.abdesslam@machin.com', ' ', '57420', 'SECOURT', NULL),
(15, 'lamory', 'remi', '1949-03-08 00:00:00', 'lamory.remi@machin.com', ' ', '45360', 'CHATILLON SUR LOIRE', NULL),
(28, 'fedorowicz', 'constantin', '1976-09-27 00:00:00', 'fedorowicz.constantin@machin.com', ' ', '51220', 'CORMICY', NULL),
(3, 'belanyi', 'nikita', '1932-11-11 00:00:00', 'belanyi.nikita@machin.com', ' ', '85110', 'SIGOURNAIS', NULL),
(12, 'renault', 'joel', '1960-04-29 00:00:00', 'renault.joel@machin.com', ' ', '33350', 'CASTILLON LA BATAILLE', NULL),
(8, 'arbona', 'naji', '1976-09-06 00:00:00', 'arbona.naji@machin.com', ' ', '32270', 'BLANQUEFORT', NULL),
(29, 'bouamar', 'ravi', '1985-10-15 00:00:00', 'bouamar.ravi@machin.com', ' ', '60420', 'COIVREL', NULL),
(18, 'ait', 'gildas', '1971-11-03 00:00:00', 'ait.gildas@machin.com', ' ', '56500', 'LOCMINE', NULL),
(14, 'michaux', 'anton', '1943-05-26 00:00:00', 'michaux.anton@machin.com', ' ', '01370', 'TREFFORT CUISIAT', NULL),
(20, 'soulac', 'theo', '1983-10-19 00:00:00', 'soulac.theo@machin.com', ' ', '49290', 'CHAUDEFONDS SUR LAYON', NULL),
(5, 'dang', 'bruno', '1943-12-03 00:00:00', 'dang.bruno@machin.com', ' ', '09700', 'LA BASTIDE DE LORDAT', NULL),
(6, 'pelissier', 'anishley', '1974-11-21 00:00:00', 'pelissier.anishley@machin.com', ' ', '88260', 'ESLEY', NULL),
(22, 'bouchakhchoukha', 'smael', '1942-06-05 00:00:00', 'bouchakhchoukha.smael@machin.com', ' ', '02810', 'MARIGNY EN ORXOIS', NULL),
(2, 'finidori', 'matthew', '1932-01-10 00:00:00', 'finidori.matthew@machin.com', ' ', '64420', 'ESLOURENTIES DABAN', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int NOT NULL,
  `id_genre` tinyint DEFAULT NULL,
  `id_distrib` int DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `resum` varchar(255) NOT NULL,
  `date_debut_affiche` date NOT NULL,
  `date_fin_affiche` date NOT NULL,
  `duree_min` int NOT NULL,
  `annee_prod` int DEFAULT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_genre` (`id_genre`),
  KEY `id_distrib` (`id_distrib`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `id_genre`, `id_distrib`, `titre`, `resum`, `date_debut_affiche`, `date_fin_affiche`, `duree_min`, `annee_prod`) VALUES
(0, 0, NULL, 'Goodfellas', 'Based on Nicholas Pileggi\'s book \'Wiseguy\' this is a film about the life of Henry Hill, an aspiring criminal who ends up in the FBI\'s witness protection program after testifying against his former partners.', '1990-01-01', '1990-01-29', 146, 1990),
(1, 1, NULL, 'Wild at Heart', 'In adapting Barry Gifford\'s colorful novel, David Lynch delivers another jolt of adrenaline to unsuspecting viewers everywhere. WILD AT HEART follows the troubled romance of Sailor (Nicolas Cage) and Lula (Laura Dern), two lovers who strugg', '1990-01-01', '1990-02-12', 124, 1990),
(2, 2, NULL, 'Back to the Future Part III', 'In part 3 of the trilogy, although stranded in the year 1955, Marty must travel to 1855 to rescue Doc Brown. Surviving Indian attacks and unfriendly townsfolk it\'s up to Marty to grab the love-struck Doc, leave the Wild West and get back to', '1990-01-01', '1990-02-19', 119, 1990),
(3, 3, NULL, 'Lola', 'A homage to Von Sternberg\'s \'The Blue Angel,\' Fassbinder\'s film follows a stuffy municipal building commissioner who loses his heart to Lola, a sluttish entertainer.', '1990-01-01', '1990-02-26', 111, 1961),
(4, 4, NULL, 'Roger and Me', 'Ex-journalist Michael Moore\'s blistering, satirical documentary about the closing of the General Motors plants in Flint, Michigan in the mid-1980s. This move, which eliminated 33,000 jobs and left the one-industry town destitute, was a part', '1990-01-01', '1990-02-12', 87, 1989),
(5, 3, NULL, 'Tilai', 'In this tale of forbidden love, honor, and revenge, a young man begins a secret affair with his ex-fiancee, who is now his father\'s wife. The relationship is deemed incestuous by the village, so the young lovers flee, in hopes of living out', '1990-01-01', '1990-02-26', 81, 1990),
(6, 5, NULL, 'The Witches', 'A little boy and his kindly grandmother thwart the efforts of a coven of witches to rid Britain of children by turning them into mice.', '1990-02-16', '1990-03-09', 91, 2002),
(7, 3, NULL, 'Who Bombed Birmingham?', 'This movie focuses on a Granada Television documentary team whose investigation suggested a cover-up and lack of evidence in the case of the \'Birmingham Six,\' six Irishmen convicted for two pub bombings in Birmingham, England, in November 1', '1990-03-01', '1990-03-22', 105, 0),
(8, 6, NULL, 'Pretty Woman', 'Two people dramatically change their opinions of eachother in this beautifully alternative love story. One is the hardworking, tough-talking businessman who needs an escort to attend a social event, because he has no time to meet women. The', '1990-03-26', '1990-04-23', 125, 1990),
(9, 7, NULL, 'Gremlins 2, the New Batch', 'The New Batch\' two years have passed since the town was terrorised by the gremlins. But a batch of eggs are just about to hatch...', '1990-07-27', '1990-09-14', 105, 1990),
(10, 7, NULL, 'Ghost', 'After renovating their expensive loft in the TriBeCa area of downtown Manhattan, Molly (Demi Moore) and Sam (Patrick Swayze), a yuppie couple, are walking home one evening when Sam is tragically gunned down by a street mugger. Molly goes in', '1990-08-15', '1990-09-19', 127, 1990),
(11, 6, NULL, 'The Jetsons', 'George Jetson is promoted, he is sent with his family, to take care of a Sprockett Factory on a distant asteroid.  Things don\'t go well though, as there are a number of mysterious goings on at the factory.  When George goes missing it\'s up ', '1990-08-10', '1990-09-14', 0, 2007),
(12, 5, NULL, 'Akira', 'An apocalyptic comic book set in early twenty-first century Japan is transformed into images for our cinema screens.', '1990-09-28', '1990-11-23', 124, 1988),
(13, 6, NULL, 'Asterix and the Big Fight', 'During a battle with some Roman soldiers druid, Getafix, is hit in the head with a menhir and loses is MyISAM as well as his ability to perform magic.  The Gauls attempt to fix his mental health as without him they are sitting ducks for a f', '1990-10-12', '1990-11-30', 81, 0),
(14, 1, NULL, 'Thelma and Louise', 'Thelma and Louise have both had enough of their problems with their partners, so they decide to take a trip together. However, early into their trip a man tries to rape Thelma, only to be killed by Louise. The murder immediately puts them o', '1991-01-01', '1991-02-05', 129, 1991),
(15, 7, NULL, 'Stalker', 'In a post-apocalyptic world there is an area of land known as the Zone which is off limits to everyone except a small number of special people known as \'Stalkers\'.  This film follows one such man as he guides a writer and a scientist to a s', '1991-01-01', '1991-02-12', 161, 1979),
(16, 1, NULL, 'Danzon', 'Julia is a single mum who earns a living as a telephone operator, a job that doesn\'t fulfill her aspirations. The only occasions on which she expresses herself fully come with her practice of danzon, a traditional Cuban ballroom dance. The ', '1991-01-01', '1991-02-12', 125, 1990),
(17, 6, NULL, 'Home Alone', 'A young boy wakes up to find that his Christmas wish has come true--his large family has disappeared. Taking full advantage of his freedom, he learns some lessons about independence, responsibility, defending the home against two bungling b', '1991-01-17', '1991-02-07', 103, 1990),
(18, 2, NULL, 'Terminator 2 : Judgement Day', 'A four-time Oscar winner. Sarah Connor returns with her now teenage son, John. She learns that John is to be the savior of mankind and proceeds to take him through a rigorous training into self protection tactics. But, the authorities fear ', '1991-08-16', '1991-09-06', 136, 1991),
(19, 1, NULL, 'Slacker', 'SLACKER, a unique slice-of-life series of linked but barely related episodes, follows the socially disconnected, overly educated, and barely motivated denizens of the coffeehouses, clubs, bars, apartments, stores, and streets of the college', '1991-11-27', '1992-01-22', 97, 1991),
(20, 6, NULL, 'Curly Sue', 'A precocious 9-year-old girl and her street-wise male guardian charm their way into the life of a wealthy woman attorney.', '1991-12-06', '1991-12-27', 101, 1991),
(21, 1, 0, 'The Double Life of Veronique', '\'The double life of V&Atilde;&copy;ronique\' is the story of two girls. Veronika lives in Poland, V&Atilde;&copy;ronique lives in France. They don\'t know each other. They aren\'t related. Yet, they look exactly the same, have the same heart disease and have', '1992-01-01', '1992-02-26', 96, 1991),
(22, 3, NULL, 'Europa Europa', 'Agnieszka Holland\'s EUROPA EUROPA is the fascinating fact-based story of Solomon Perel (Marco Hofschneider), a German Jew who survived the Holocaust by concealing his identity, literally within enemy ranks. When Nazi thugs smash into the Pe', '1992-01-01', '1992-02-19', 115, 1990),
(23, 3, NULL, 'Nostalghia', 'Whilst Russian poet Gortchakov journeys through Italy as he researches the life of an eighteenth century composer, he and his translator Eugenia meet some rather strange people. In an ancient town they meet Domenico, who years earlier had i', '1992-01-01', '1992-01-22', 120, 1983),
(24, 6, NULL, 'Hear my song', 'Inspired by the life story of American-Irish singer Joseph Locke, whose disappearance in the 1950s led to his identity being assumed by an imposter until Locke resurfaced 20 years later.', '1992-01-01', '1992-02-12', 104, 1991),
(25, 6, NULL, 'Strictly Ballroom', 'A top ballroom dancer pairs with a plain, left-footed local girl when his maverick style earns him the disdain of his more conventionally-minded colleagues. Together, the team gives it their all and makes dreams of the National Championship', '1992-01-01', '1992-02-05', 94, 1991),
(26, 8, NULL, 'Romper Stomper', 'A gang of neo-Nazi skinheads in Melbourne, Australia fight the Vietnamese population and each other.', '1992-01-01', '1992-02-26', 92, 1992),
(27, 3, NULL, 'Bye Bye Baby', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1992-01-01', '1992-02-26', 85, 0),
(28, 7, NULL, 'Star Trek VI: The Undiscovered Country', 'The crews of the Enterprise and the Excelsior must stop a plot to prevent a peace treaty between the Klingon Empire and the Federation.', '1992-01-05', '1992-02-09', 113, 1991),
(29, 9, NULL, 'Cape Fear', 'A deranged convict seeks revenge on the attorney who improperly defended him.', '1992-03-06', '1992-04-03', 128, 1991),
(30, 10, NULL, 'Hook', 'Peter Pan has grown up, and not only that but he has forgotten where he is from. At a time when his massive company is booming, his children get kidnapped by the legendary Captain Hook, whom only Peter Pan has ever defeated. In his desparat', '1992-04-10', '1992-06-05', 135, 1991),
(31, 6, NULL, 'Delicatessen', 'After years of working successfully in commercials and music videos, French directors Marc Caro and Jean-Pierre Jeunet make a splashing feature-film debut, DELICATESSEN, a hysterical exercise in style.', '1992-06-04', '1992-07-16', 97, 1991),
(32, 10, NULL, 'Batman Returns', 'Set at Christmastime, Gotham City and its holiday celebrations are under siege by the Penguin and a group of circus freaks.', '1992-07-10', '1992-08-28', 126, 1991),
(33, 5, NULL, 'FernGully: The Last Rainforest', 'This environmentalist animated feature tells the tale of magical creatures that live and thrive happily in FernGully, an area of Australian rainforest. But soon FernGully\'s eco-system, and thus its inhabitant\'s very existence, is put on the', '1992-08-14', '1992-09-25', 71, 1992),
(34, 6, NULL, 'Home Alone 2', 'After Paris, the McCallister family decide to spend their Christmas holidays in Miami. In the same fashion as D-Day, the family is on the brink of war, marching their way to the airport whilst being very careful not to leave Kevin behind. H', '1992-12-11', '1993-01-15', 119, 1992),
(35, 5, NULL, 'The Nightmare Before Christmas', 'Pumkin king, Jack Skellington (voice of Chris Sarandon) is intent on ruining christmas again. Despite the advice from Sally (voice of Catherine O\'Hara), who for some reason likes Jack, he recruits three up to no good trick-or-treaters (Lock', '1993-01-01', '1993-02-05', 76, 1994),
(36, 10, NULL, 'Last Action Hero', 'A teenage boy\'s unfulfilling life takes a strange turn when he gets sucked into an action film and teams up with its hero, Jack Slater.', '1993-01-01', '1993-02-05', 130, 1992),
(37, 3, NULL, 'The Remains of the Day', 'James Ivory directed this quietly moving film set just prior to World War II. On the large English estate of Lord Darlington (James Fox), a disciplined butler, Stevens (Anthony Hopkins), devotes himself to his duties with rigorous dedicatio', '1993-01-01', '1993-02-12', 130, 1993),
(38, 3, NULL, 'The Conformist', 'Marcello is a weak-willed Italian man who conforms to the modern ideologies of the moment. During the nineteen thirties he begins to work for Mussollini. When he leaves for France on his honeymoon with his beautiful wife, he is assigned the', '1993-01-01', '1993-02-12', 115, 1970),
(39, NULL, NULL, 'Like Water for Chocolate', 'Tita, the youngest daughter of a Mexican family is destined to spend her entire life looking after her mother. Tradition has it that the youngest daughter must never marry. But Tita falls in love and her boyfriend Pedro asks for her hand. T', '1993-01-01', '1993-02-19', 105, 0),
(40, 11, NULL, 'Blue', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1993-01-01', '1993-01-29', 75, 1993),
(41, NULL, NULL, 'In Paradisum', '\'In Paradisum\' follows the life of prisoner Pille, whose husband Andreas is a mass murderer. Filmed in the style of cinema verite, it is a rare look inside Estonia\'s prisons, and at the same time, it is a personal testimony of a woman who t', '1993-01-01', '1993-02-26', 3360, 0),
(42, 0, NULL, 'Reservoir Dogs', 'Mastermind Joe Cabot assembles a crew of top-notch criminals to pull off a jewelry store heist. As the film opens it becomes immediately clear that the plan backfired, forcing the survivors, who have gathered at an abandoned warehouse, to f', '1993-01-08', '1993-01-29', 99, 1992),
(43, 7, NULL, 'Bram Stoker\'s Dracula', 'Inspired by the classic Victorian horror novel written in 1897 by Bram Stoker, this film version follows Dracula\'s pursuit of his true love. The vampire is so eager to be reunited with her that he ventures all the way to London from Transyl', '1993-01-29', '1993-02-26', 128, 1992),
(44, 5, NULL, 'Aladdin', 'Disney brings a whole new world vividly to life once again in this musical story from the Arabian Nights. Aladdin, an eager genie (with the voice of Robin Williams) and a sultan\'s daughter take a magic carpet ride through a fireworks displa', '1993-04-23', '1993-06-04', 90, 1992),
(45, 9, NULL, 'Brain Dead', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1993-05-14', '1993-06-18', 85, 1990),
(46, 1, NULL, 'Sleepless in Seattle', 'It\'s Christmas Eve and radio talk show psychologist Marcia Fieldstone has asked her listening audience what they are wishing and dreaming of during this season of hope. A little boy, who is tuned in from Seattle calls in his wish, a new wif', '1993-06-25', '1993-08-20', 105, 1992),
(47, 10, NULL, 'Jurassic Park', 'Steven Spielberg directed this blockbuster thriller based on the popular book by Michael Crichton. Millionaire John Hammond (Richard Attenborough) asks two dinosaur experts (Laura Dern and Sam Neill) to act as consultants on his entrepreneu', '1993-07-16', '1993-08-06', 127, 1993),
(48, 3, NULL, 'Dennis', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1993-07-16', '1993-08-27', 0, 0),
(49, 6, NULL, 'Much Ado about Nothing', 'When gallant Don Pedro (Denzel Washington), his nefarious brother Don John (Keanu Reeves), and close confidantes Claudio (Robert Sean Leonard) and Benedick (Kenneth Branagh) ride thunderously into the Sicilian village of Messina, romance, g', '1993-08-27', '1993-09-17', 101, 1993),
(50, 9, NULL, 'The Fugitive', 'In this near-perfect suspense movie adapted from the popular 1960s television series that starred David Janssen, renowned vascular surgeon Dr. Richard Kimble (Harrison Ford) has been falsely accused and convicted--on circumstantial evidence', '1993-09-24', '1993-10-15', 127, 1993),
(51, 12, NULL, 'Schindler\'s List', 'Based on a true WWII story, the unrepentant womaniser and war profiteer Oskar Schindler uses Polish Jews as cheap labour to produce cookware for the Third Reich. However, faced with never ending horror, Schindler slowly begins to realise th', '1993-12-06', '1994-01-17', 195, 1993),
(52, 6, NULL, 'The Muppet Christmas Carol', 'Ebenezer Scrooge is infamous in his local community for his bitterness and tight fistedness. One Christmas night he is haunted by the ghosts of his former colleagues, who warn him that he will visited by three more ghosts during the course ', '1993-12-17', '1994-02-11', 85, 1992),
(53, 7, NULL, 'The Crow', 'A young rock musician who was brutally murdered a year earlier is resurrected as a vengeful superhero in this stylish noir thriller. Out to avenge his and his fiancee\'s killings by destroying the city\'s evil crime lord, the Crow becomes a r', '1994-01-01', '1994-02-19', 102, 1994),
(54, NULL, NULL, 'Visions of Light', 'Reknowned cinematographers discuss their influences, techniques and decisions on how to shoot films.', '1994-01-01', '1994-02-19', 90, 1992),
(55, 0, NULL, 'Last Seduction', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1994-01-01', '1994-02-12', 110, 1994),
(56, 3, NULL, 'Black Beauty', 'Anna Sewell\'s classic tale of the love shared by a young boy and his horse. The two are parted, but are eventually reunited after the horse has changed owners numerous times.', '1994-01-01', '1994-01-29', 102, 1971),
(57, NULL, NULL, 'The Garden of Eden', 'In the Twenties, a wartime pilot-turned-writer and his new wife embark on an extended honeymoon in Europe; she becomes restless and tests her husband\'s devotion in unusual ways. One is to bring a sultry Italian girl into their bedroom. (Wit', '0000-00-00', '1970-02-12', 100, 0),
(58, 11, NULL, '1942, A Love Story', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1994-01-01', '1994-02-12', 0, 1993),
(59, NULL, NULL, 'Hum Aapke Hein Kaun', 'Literally translated as \'What Is My Relationship With You?\', the film explores the world of  Indian arranged marriages. Seen as a perfect suitor, single Rajesh is chosen for Pooja and wedding preparations begin in earnest. The groom\'s young', '1994-01-01', '1994-02-12', 230, 0),
(60, 1, NULL, 'Shadowlands', 'Adapted by William Nicholson from his own play, this drama recounts the unlikely love story of British professor and celebrated author C.S. Lewis and the brash American divorcee Joy Gresham who later became his wife. She died shortly after ', '1994-01-14', '1994-03-11', 130, 1993),
(61, 3, NULL, 'Three Colors', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1994-02-11', '1994-03-18', 99, 0),
(62, 1, NULL, 'Into the West', 'After his wife\'s death, an alcoholic father, who once lived a gypsy-like existence as part of a people known as the travellers, retires with his two sons to a dreary Dublin tenement. But the atmosphere brightens considerably when the childr', '1994-03-09', '1994-03-30', 97, 1992),
(63, 1, NULL, 'The Secret Garden', 'A young orphan is taken in by her uncle, invited to stay at his sombre mansion in Yorkshire. When exploring the grounds, she discovers an abandoned garden. She decides to make it her retreat and with the help of a young servant, brings life', '1994-04-01', '1994-05-20', 102, 1993),
(64, 6, NULL, 'Four Weddings and a Funeral', 'In FOUR WEDDINGS AND A FUNERAL, a young man--whose efforts to remain single are legendary amongst his friends--suddenly finds himself in love with an American woman who has recently attended the season\'s weddings.', '1994-05-13', '1994-07-08', 116, 1993),
(65, 6, NULL, 'The Flintstones', 'A promotion moves Fred up to the executive suite at the Slate &amp; Co. quarry.', '1994-07-22', '1994-09-02', 91, 1993),
(66, NULL, NULL, 'Thumbelina', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1994-07-29', '1994-08-19', 0, 0),
(67, 3, NULL, 'The Shawshank redemption', 'The life of Andy Dufresne is destroyed after he is convicted to life imprisonment for the alleged murder of his wife and her lover. After suffering horrendously through his prisoners rite of passage, he learns to befriend some of the other ', '1994-08-20', '1994-09-24', 142, 1994),
(68, 3, NULL, 'Mask', 'True story of a single mother and her struggle to raise her teenage son who was born with a severe facial disfigurement.', '1994-09-11', '1994-10-02', 120, 1985),
(69, 1, NULL, 'Forrest Gump', 'Whilst the unintelligent Forrest Gump, haplessly becomes a hero, through numerous fortunate circumstances involving many events of enormous historical importance. His outstanding achievements, mean nothing as his true love seems to hopeless', '1994-10-07', '1994-11-18', 140, 1994),
(70, 0, NULL, 'Pulp Fiction', 'Vincent Vega and Jules Winnfield are two hitmen on the hunt for a briefcase whose contents were stolen from their boss, the much feared kingpin Marsellus Wallace. However, they run into a few unexpected and somewhat tricky detours along the', '1994-10-21', '1994-11-11', 165, 1994),
(71, 0, NULL, 'Get Shorty', 'Chili Palmer is a Miami loanshark who\'s sent to Los Angeles to collect on a gambling debt from film producer Harry Zimm. Harry\'s luck may have changed though; Chili is a big movie fan--even of the B-movie screamers that Harry churns out. In', '1995-01-01', '1995-02-05', 105, 1995),
(72, 1, NULL, 'Mr Holland\'s Opus', 'When we\'re young our dreams lie out in front of us, there for the taking, and our plans seem so clear. But like many of us, Glenn Holland never could have predicted the course his own life would take, when he reluctantly accepts a job as a ', '1995-01-01', '1995-02-05', 145, 1995),
(73, 1, NULL, 'A Little Princess', 'An engaging version of Frances Hodgson Burnett\'s classic tale of a girl who\'s sent to a boarding school in New York when her father must serve in World War I. The young girl learns that, despite the treatment she receives from a strict head', '1995-01-01', '1995-01-22', 100, 1995),
(74, 3, NULL, 'Persuasion', 'A lavish BBC production of what is considered to be Jane Austen\'s most mature novel. The 1818 work tells the story of an English officer, Captain Wentworth, who returns from the Napoleonic Wars to pursue his former love, a woman called Anne', '1995-01-01', '1995-02-19', 103, 0),
(75, 6, NULL, 'Lovers Will Walk Off with the Bride', 'Charting the trials and tribulations of second-generation Indians yearning to establish themselves in Britain, \'Dilwale Dulhania Le Jayenge\' offers a romantic yet frank depiction. Two lovers enjoy new freedoms offered by the European lifest', '1995-01-01', '1995-01-22', 195, 1995),
(76, NULL, NULL, 'Diabolique', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1995-01-01', '1995-02-12', 115, 1955),
(77, 3, NULL, 'Zargul', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1995-01-01', '1995-02-12', 0, 0),
(78, 3, NULL, 'Heavenly Creatures', 'Drama, based on a true story and set in Christchurch circa 1954, about the extraordinary friendship between two adolescent girls which culminates in the murder of one of their mothers.', '1995-02-10', '1995-03-10', 99, 1995),
(79, 6, NULL, 'The Little Rascals', 'Enjoy the antics of the gang as they return in this family comedy. Spanky finds that his friend, Alfafa, has fallen madly in love with Darla - a girl!', '1995-04-07', '1995-05-05', 83, 1994),
(80, 13, NULL, 'Legends of the Fall', 'The life of Colonel Ludlow and his three sons, and how the famiy stays united despite the pressures of WWI and the fathers relationship with a new woman. Their isolated life in the Rocky mountains is put into context, by these life-changing', '1995-04-28', '1995-06-09', 133, 1994),
(81, 14, NULL, 'Before Sunrise', 'When a young American (Ethan Hawke) traveling through Europe by train meets a beautiful French student (Julie Delpy), he convinces her to spend the day with him in Vienna so the two can get to know each other better. They spend their day ex', '1995-04-28', '1995-05-26', 101, 1994),
(82, 6, NULL, 'Clerks', 'An unusual comedy which centres around an extraordinary day in the lives of Dante and Randall, who are both clerks at the local convenience store.', '1995-05-05', '1995-06-30', 105, 1994),
(83, 15, NULL, 'Mary Poppins', 'A magical, musical nanny brings a breath of fresh air into the stuffy Banks household in turn-of-the-century England. Overstuffed with gaiety, this children\'s fantasy is filled to the brim with wonderful dance numbers and outrageous songs (', '1995-07-14', '1995-08-25', 140, 1964),
(84, 7, NULL, 'Batman Forever', 'As two new forces of evil--Two-Face, formerly known as District Attorney Harvey Dent until a courtroom accident left him disfigured by chance and fueled by vengeance, and the Riddler, who was previously Edward Nygma, an overlooked employee ', '1995-07-14', '1995-08-04', 121, 1995),
(85, 6, NULL, 'Casper', 'Casper the ghost was created in 1940 by Joe Orolio. This is the live-action/animated family feature film starring the friendly young spook. In it, greedy heiress Carrigan Crittenden (Cathy Moriarty) inherits the haunted Whipstaff Manor and ', '1995-07-28', '1995-09-08', 96, 1995),
(86, 0, NULL, 'The Usual Suspects', 'Five career criminals meet after being rounded up for a standard police line-up. Upon their release, the men band together to pull off an intricate heist involving $3 million worth of emeralds. Their success brings them to the attention of ', '1995-08-25', '1995-09-15', 106, 1994),
(87, 12, 1, 'Braveheart', 'Epic based on the life of legendary thirteenth century Scottish hero William Wallace. Whom, on returning to his homeland following the death of an heirless king, finds the political landscape precarious. Edward the Longshanks, King of Engla', '1995-09-08', '1995-10-06', 170, 1995),
(88, 1, NULL, 'Carrington', 'A drama which tells the true story of painter Dora Carrington and her relationship with writer Lytton Strachey. Based on the book \'Lytton Strachey\' by Michael Holroyd.', '1995-09-22', '1995-10-20', 125, 1994),
(89, 7, NULL, 'Species', 'A genetically engineered, shape-shifting creature with extraterrestrial intelligence adopts the form of a beautiful woman to mate with humans and unleash a brood of offspring that will destroy mankind. A team of experts must band together t', '1995-09-29', '1995-11-17', 111, 1995),
(90, 9, NULL, 'The Net', 'As a favor to her colleague, Dale Hessman, freelance computer analyst Angela Bennett conducts a preliminary analysis of a puzzling beta prototype of a new Internet program that peculiarly allows the user access to such highly sensitive data', '1995-10-06', '1995-11-24', 114, 1995),
(91, 6, NULL, 'Clueless', 'A semi-vacuous, though well-dressed, Beverly Hills High student struggles with life, love and unlimited charge cards in this classic teen comedy from the director of FAST TIMES AT RIDGEMONT HIGH. Based, believe it or not, on Jane Austen\'s 1', '1995-10-20', '1995-11-10', 97, 1995),
(92, 3, NULL, 'When night is falling', 'The story of Camille, a professor at a Protestant college who is engaged to Martin, a respected minister and fellow professor. As career Christians, they are urged to get married so that she and Martin can become co-chaplains of the New Col', '1995-11-10', '1995-12-01', 96, 1995),
(93, 3, NULL, 'Akele Hum Akele Tum', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1995-12-01', '1996-01-26', 180, 0),
(94, 5, NULL, 'Ghost in the Shell', 'In a futuristic Japan controlled by the internet Major Motoko Kusunagi, a highly sophisticated female cyborg, is haunted by an internal dilemma. Despite her worries, she works for an authoritarian cyber-police force fighting against IT crim', '1995-12-08', '1996-01-26', 85, 1995),
(95, 5, NULL, 'The Swan Princess', 'A story loosely based on the Swan Lake legend.', '1995-12-15', '1996-01-05', 90, 1994),
(96, 5, NULL, 'Babe', 'A little pig with big dreams teaches himself to be a sheepdog in this marvelous fantasy based on Dick King-Smith\'s children\'s novel THE SHEEP-PIG. When an old farmer wins a piglet at a carnival by guessing its weight, be brings the little o', '1995-12-15', '1996-01-26', 91, 0),
(97, 10, NULL, 'The Indian in the Cupboard', 'Good things often come in little packages, as young Omri (Hal Scardino) discovers when he receives a present from his friend Patrick, a plastic Indian figure that comes to life after Omri locks him in his toy cupboard. Little Bear (Litefoot', '1995-12-26', '1996-02-20', 97, 1995),
(98, 3, NULL, 'Caravaggio', 'A powerful meditation on sexuality, criminality and art, CARAVAGGIO brings together Derek Jarman\'s twin worlds of film and painting.', '1996-01-01', '1996-02-12', 93, 1985),
(99, 6, NULL, 'Contempt', 'A tale about the contemporary position of film makers. Paul is a scriptwriter who has been hired to adapt Odyssey by producer Jeremiah Prokosch. Unbeknown to him, his wife Camille has fallen out of love with him. She is sent by her husband ', '1996-01-01', '1996-02-19', 103, 1963),
(100, NULL, NULL, 'Richard III', 'An adaptation of William Shakespeare\'s famous piece.', '1996-01-01', '1996-02-12', 135, 1986),
(101, 1, NULL, 'Carla\'s Song', 'Britain\'s political firebrand Ken Loach goes to \'80s Nicaragua, for a Contra-indicated romance between a political refugee and a Scots bus driver. Earnest, infuriating.', '1996-01-01', '1996-02-19', 127, 1995),
(102, 1, NULL, 'Les Miserables', 'No justice, no peace: Victor Hugo\'s sweeping tale of revolutionary France, crime, punishment, flight, fear, persecution, redemption and love.', '1996-02-02', '1996-03-01', 120, 1998),
(103, 1, NULL, 'Sense and Sensibility', 'Set in the English countryside, the film follows the loves and heartaches of sisters Elinor and Marianne Dashwood, as they search for true love and happiness in a society obsessed with both financial and social status. The two have extremel', '1996-02-23', '1996-04-19', 135, 1995),
(104, 5, NULL, 'Toy Story', 'Andy is a young boy with an enormous collection of toys. These toys are quite special because they spring to life each time he is out of the room, all led by the cowboy Woody. However oneday Andy returns with the latest in toys, however unb', '1996-03-22', '1996-05-17', 77, 1995),
(105, 1, NULL, 'Beautiful Thing', 'The offbeat, underachieving denizens of a southeast London apartment building get an emotional wake-up call when two of the neighbors--two teen boys--unexpectedly fall in love. Tender-hearted kitchen-sink realism from Channel Four Films, ad', '1996-03-28', '1996-05-23', 89, 1996),
(106, 7, NULL, 'From Dusk till Dawn', 'Two Texan bank robbers have fled with hostages into Mexico. They try to hide until the morning in a bar, which is in the middle of absolutely nowhere. Unfortunately for them, they hadn\'t counted on this bar being a lair for a population of ', '1996-05-31', '1996-06-21', 100, 1996),
(107, 0, NULL, 'Fargo', 'Jerry Lundegaard is a debtor whose wealthy father-in-law has no respect for him. He cheats customers at the car dealership where he works. And now he\'s hired a bumbling duo to kidnap his wife, a plan that errs horribly, leading to murder...', '1996-05-31', '1996-07-05', 95, 1995),
(108, 6, NULL, 'Kingpin', 'Roy Munson is a one-time bowling prodigy who has been reduced to scavenging for a living as a bowling supply salesman. Then he discovers a protege named Ishmael among the Amish of Pennsylvania Dutch Country, and the former champ thinks he h', '1996-07-12', '1996-08-16', 113, 1996),
(109, 10, NULL, 'Flipper', 'When a young boy is sent to Florida to stay with his uncle he befriends an orphaned dolphin. Based on the 1960s TV series.', '1996-08-02', '1996-09-06', 97, 1996),
(110, 5, NULL, 'James and the Giant Peach', 'After James\'s parents are killed by a rogue rhinoceros, he is forced to live with his nasty aunts far from any kind of fun. But when a gigantic peach begins growing in the yard and James befriends the large insects who live inside, he sees ', '1996-08-02', '1996-09-20', 80, 1996),
(111, 7, 1, 'Independence Day', 'In INDEPENDENCE DAY, mysterious spaceships appear in the sky and satellite communication systems cease to work. The population at large is unaware of the visitors\' hidden agenda. Only one man knows what\'s really going on.', '1996-08-09', '1996-08-30', 135, 1996),
(112, 3, NULL, 'Jane Eyre', 'Charlotte Bronte\'s classic novel of Gothic romance gets the Zeffirelli treatment in this moving adaptation. Orphaned Jane Eyre (Charlotte Gainsbourg) grows into a strong-willed heroine after enduring a miserable childhood (where she\'s playe', '1996-09-27', '1996-11-08', 112, 1996),
(113, 14, NULL, 'A Summer\'s Tale', 'It\'s summer holidays in Dinard, and the anxious Gaspard awaits the arrival of his girlfriend Lena. However, by the time Lena arrives, he\'s already met two other women, Margot, and Solene--whom and how will he choose?', '1996-09-29', '1996-11-10', 113, 1995),
(114, 6, NULL, 'The Nutty Professor', 'For Professor Sherman Klump, being the big man on campus wasn\'t all it\'s cracked up to be. His body was disproportionate. His family was dysfunctional. And his love life was disastrous. Having tried everything--diets, exercise and weight lo', '1996-10-04', '1996-11-15', 95, 1996),
(115, 7, NULL, 'The Crow: City of Angels', 'Against the macabre backdrop of the traditional Day of the Dead celebration, The Crow: City of Angels tells a new chapter in the gothic urban mythology of Love transcending Death. Creating an all-new incarnation of the brooding dark hero--a', '1996-10-18', '1996-11-29', 80, 1996),
(116, 7, NULL, 'The Adventures of Pinocchio', 'Geppetto is a lonely puppetmaker whose wooden creatures are the only family he knows. Years ago, he and his sweetheart carved their names into an old pine tree in Hidden Valley. But Geppetto was unable to declare his love, and she married h', '1996-10-18', '1996-11-15', 90, 1996),
(117, 10, NULL, 'The Wind in the Willows', 'A live-action version of the classic story by Kenneth Grahame, featuring several members of the Monty Python comedy team. Toad of Toad Hall (director Terry Jones) is a whimsical fellow who is apprehended for driving too fast in his motorcar', '1996-10-18', '1996-12-06', 88, 1996),
(118, 5, NULL, 'A Goofy Movie', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1996-10-18', '1996-12-13', 76, 1995),
(119, 1, NULL, 'Brassed Off', 'When government cutbacks threaten a century-old Yorkshire mine, the brass band consisting of the miners and their families struggles to keep it together in the face of economic repression and emotional turmoil.', '1996-11-01', '1996-12-06', 109, 1997),
(120, 3, NULL, 'Raja Hindustani', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1996-11-15', '1996-12-20', 0, 0),
(121, 2, NULL, 'Star Trek: First Contact', 'Capt. Picard and his crew pursue the Borg back in time to stop them from preventing Earth from initiating first contact with alien life.', '1996-12-13', '1997-01-31', 105, 1996),
(122, 6, NULL, '101 Dalmatians', 'Cruella DeVil owns and runs the fashionable House DeVil, catering to her two passions: clothes and fur. But when her most talented and industrious designer, Anita, falls hopelessly in love and marries beau Roger, Cruella is threatened by th', '1996-12-13', '1997-01-24', 103, 1996),
(123, 1, NULL, 'Matilda', 'A young girl with an unquenchable thirst for knowledge overcomes her parents\' disapproval and forms a lasting bond with a sensitive teacher, ultimately discovering her own special abilities. Adapted from the novel by Roald Dahl, and directe', '1996-12-20', '1997-01-31', 95, 1996),
(124, 3, NULL, 'Tueur &Atilde;&nbsp; gages', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1997-01-01', '1997-02-12', 80, 1998),
(125, NULL, NULL, 'Pardes', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1997-01-01', '1997-02-05', 0, 0),
(126, 16, NULL, 'Evita', 'Madonna tackles the title role in Alan Parker\'s ambitious recounting of the brief, amazing life of former Argentine first lady Eva Peron. Presented almost entirely in song and narrated by Antonio Banderas as a fictional everyman, the film c', '1997-01-03', '1997-02-21', 130, 1996),
(127, 7, NULL, 'Frighteners', 'A psychic investigator swindles his city inhabitants with the help of his ghost friends. When several city dwellers have heart attacks, he becomes the police number one suspect. He will have to turn to the friendly ghosts for help and to fi', '1997-01-24', '1997-02-21', 100, 1996),
(128, 15, NULL, 'Quadrophenia, a Way of Life', 'It\'s the Mods versus the Rockers in this striking adaptation of the Who\'s classic rock opera about alienated youth in the 1960s. The film follows Jimmy (Phil Daniels) an angry young man who feels that he can only achieve a sense of identity', '1997-01-31', '1997-03-07', 115, 1980),
(129, 1, NULL, 'Fly Away Home', 'Forced to move in with her eccentric father after the tragic death of her mother, a 13-year-old girl (Anna Paquin) finds a sense of purpose when she discovers a nest of abandoned goose eggs. After nurturing them to hatching stage and becomi', '1997-02-07', '1997-03-07', 100, 1996),
(130, 6, NULL, 'Space Jam', 'The mythologizing of Michael, the tao of Bugs: Michael Jordan joins forces with the Looney Tunes characters to defeat an alien basketball team. Good fun, if you don\'t mind the hard sell. Give Daffy a Best Supporting Duck nomination.', '1997-02-21', '1997-04-18', 100, 1996),
(131, 1, NULL, 'Harriet the Spy', 'Eleven-year-old Harriet\'s (Michelle Trachtenberg) obsession for observation is well-chronicled in her most treasured possession: a notebook marked \'Private,\' in which she collects her frequently unflattering--though accurate--thoughts about', '1997-02-21', '1997-04-18', 96, 1997),
(132, 1, NULL, 'The English Patient', 'Set in North Africa and Italy during the late 1930\'\'s and early \'\'40\'\'s, The English Patient is an epic drama of two haunting love stories that unfolds against a background of international upheaval. Through the prism of war, and of love an', '1997-03-14', '1997-05-09', 160, 1996),
(133, 1, NULL, 'Basquiat', 'An insider\'s look at the kinetic New York City art world, told through the tragic life story of Jean-Michel Basquiat (a brilliant performance by Jeffrey Wright). A black, 19-year-old graffiti artist who catapulted to superstardom with his c', '1997-03-28', '1997-04-18', 104, 1996),
(134, 3, NULL, 'Romeo + Juliet', 'This adaptation of Shakespeare\'s most famous play about the passion of a young couple belonging to two rival families uses the author\'s original text. However, it has been dramatically set in the present day, and the contemporary relevance ', '1997-03-28', '1997-05-23', 120, 1996),
(135, 10, NULL, 'Dante\'s Peak', 'A volcanologist forlorn over the loss of his wife in the Mt. Pinatubo eruption arrives at a small Pacific Northwest town to investigate the rumblings of the local dormant volcano. Though he instantly fears the worse, he must convince the sk', '1997-03-28', '1997-05-16', 105, 1996),
(136, 3, NULL, 'The Railway Children', 'The famous adaptation of the beloved novel by E Nesbit.  The tale of three siblings whose life is tunred upside down when their father is taken from them.  They have to move from their comfortable home to the countryside and to fill their t', '0000-00-00', '1970-02-26', 109, 1970),
(137, 3, NULL, 'A Self Made Hero', 'In Paris, during the tumultuous winter of 1945, an undistinguished provincial lad becomes a virtuous liar, and via omissions, allusions and a great deal of study, reinvents himself as a remarkably respected French Resistance hero. His entry', '1997-04-18', '1997-06-13', 105, 0),
(138, NULL, NULL, 'Brothers in Trouble', 'Britain in the early 1960s, as seen through the eyes of a handful of illegals from Pakistan. Amir arrives in the U.K. in a crate of cabbages, settles into an overcrowded house with 17 other men in similar circumstances, and learns the ropes', '1997-05-01', '1997-05-29', 102, 0),
(139, 17, NULL, 'Scream', 'The sleepy little town of Woodsboro just woke up screaming. There\'s a killer in their midst who\'s seen a few too many scary movies. Suddenly, nobody is safe, as the psychopath stalks victims, taunts them with trivia questions, then rips the', '1997-05-02', '1997-06-06', 100, 1996),
(140, 0, NULL, 'Donnie Brasco', 'An FBI agent is sent undercover to bring down some big mob names, but the deeper he gets into the culture, the more attractive his life seems. He keeps collecting evidence, but knows that if he leaves the mob, the friends he made will take ', '1997-05-02', '1997-05-30', 115, 1997),
(141, 6, NULL, 'Liar Liar', 'A lawyer discovers that he is unable to tell a lie.', '1997-05-02', '1997-05-23', 86, 1997),
(142, 4, NULL, 'Microcosmos', 'Meet the Beetles! Microcosmos stars ants, bees, ladybugs, butterflies, beetles, amorous snails and a world of other insects that often escapes your consciousness. Involving 15 years of research, 2 years of equipment design and 3 years of sh', '1997-05-16', '1997-06-20', 77, 1995),
(143, 3, NULL, 'Citizen Kane', 'In his mansion house in the middle of his sprawling Florida estate, newspaper tycoon Charles Foster Kane utters \'Rosebud\', his last word before dying. No one has the first clue as to the meaning of the word and so reporter, Jerry Thompson, ', '0000-00-00', '1970-02-26', 119, 1940),
(144, 10, NULL, 'Batman and Robin', 'Batman &amp; Robin have their work cut out this time, as they have both Mr Freeze and Poison Ivy to stop from freezing Gotham. But more importantly Alfred is dying, and only Mr Freeze knows how to save him, so bring on Batgirl as reinforcements', '1997-06-27', '1997-08-08', 113, 1997),
(145, 1, NULL, 'Swingers', 'An ensemble comedy about five guys, all in their 20s, all coping with the mysteries of life and women, set in the back streets and sometimes hidden clubs of Hollywood. It\'s a story told in the language of the \'cocktail nation,\' a growing 20', '1997-07-18', '1997-08-08', 96, 1996),
(146, 6, NULL, 'Bean', 'An average man who lives alone, dresses in a jacket and tie, and relates to children better than adults, Mr Bean finds himself in a series of catastrophes of his own creation. As the caretaker of Britain\'\'s Royal National Gallery, he is sen', '1997-08-01', '1997-09-12', 92, 1997),
(147, 2, NULL, 'Men in Black', 'The adventures of J and K, two federal agents aka, The Men in Black, who are assigned to investigate all alien related phenomena. The agents uncover an intergalactic plot to assasinate two ambassadors from opposing galaxies who happen to re', '1997-08-01', '1997-09-19', 113, 1997),
(148, 0, NULL, 'Double Team', 'The greatest spies in the world are forced to retreat to the same colony after their covers are blown. When challenged by a terrorist one of the spies must escape the colony.', '1997-08-15', '1997-10-03', 90, 1996),
(149, 7, NULL, 'Lost Highway', 'Two separate intersecting stories revolving around relationships. One man, sure that his wife is having an affair, finds himself accused of her murder. One young man is drawn into a world of murder by his gangster girlfriend.', '1997-08-22', '1997-09-26', 135, 1997),
(150, 7, NULL, 'Event Horizon', 'In this eerie science-fiction ghost story, an astrophysicist (Sam Neill), haunted by the MyISAM of his wife\'s suicide, joins a rescue mission to salvage his life\'s work: the Event Horizon, a prototype spacecraft capable of faster-than-light', '1997-08-22', '1997-09-19', 97, 1997),
(151, 3, NULL, 'Mrs Brown', 'Set in 1864, the Court and Government are in turmoil. Queen Victoria remains stricken with grief over Prince Albert\'s death and refuses to carry out any public duties. Her popularity with the British people is waning and there are calls to ', '1997-09-05', '1997-10-03', 90, 1996),
(152, 6, NULL, 'My Best Friend\'s Wedding', 'When Julianne had planned to marry her best friend Michael, she never expected the day to actually arrive. With only three weeks left, she really doesn\'t want to go through with it. So the news that he was planning to marry another woman wo', '1997-09-19', '1997-10-10', 112, 1997),
(153, 0, NULL, 'Hoodlum', 'Story begins as Bumby Johnson is released from Sing Sing and returns to Harlem where he becomes the bodyguard for Queen St Clair, the head of the Harlem numbers racket. Her business makes big money, attracting the interest of \'Dutch\' Schult', '1997-09-26', '1997-11-21', 130, 1997),
(154, 5, NULL, 'Hercule', 'More than a man. Less than a God. Everything you\'ve ever heard about history\'s mightiest hero is only a myth. The son of Zeus was robbed of his divine birthright when he was stolen from his cradle by the evil Hades and fed a potion that mad', '1997-10-10', '1997-12-05', 87, 1997),
(155, 3, NULL, 'Wilde', 'This unconventional biopic traces the brilliant, witty, and tragic life of Oscar Wilde from his rise to fame as a much-in-demand author and public speaker to his downfall and ultimate imprisonment for homosexuality. Thoughout the melodrama,', '1997-10-17', '1997-12-05', 116, 1998),
(156, 6, NULL, 'Shooting fish', 'Zany. Wacky. English. Need we say more? Two orphans-turned-con-artists rob from the rich, give to themselves and run into the long arm of true love.', '1997-10-17', '1997-11-21', 109, 1997),
(157, 9, NULL, 'The Peacemaker', 'A female nuclear scientist and a military intelligence officer team up to stop an Eastern European terrorist and a renegade Russian mercenary who have stolen nuclear weapons from the former Soviet Union and intend to use them to make a stat', '1997-10-24', '1997-12-05', 122, 1997),
(158, 6, NULL, 'A Life Less Ordinary', 'Robert is one of life\'s losers. He works as a janitor at a giant corporation but dreams of something...less ordinary...while he writes what he hopes will be the Great American Trash Novel. Beautiful and sharp-tounged Celine, on the other ha', '1997-10-24', '1997-12-19', 103, 1997),
(159, 0, NULL, 'L.A. Confidential', 'Director Curtis Hanson captures the duality of 1950s Los Angeles in this striking film noir adaptation of James Ellroy\'s novel. The City of Angels might be sunny, inviting, and glamorous to the rest of the world, but it\'s also filled with c', '1997-10-31', '1997-12-19', 136, 1997),
(160, 16, NULL, 'The Heart Is Crazy', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1997-10-31', '1997-12-19', 0, 1997),
(161, 9, NULL, 'Face/Off', 'The ordeal of superheroic, singularly dedicated FBI agent Sean Archer (John Travolta) is only beginning after finally capturing his archnemesis, Castor Troy (Nicholas Cage), an elusive, maniacal terrorist who claimed the life of Archer\'s so', '1997-11-07', '1998-01-02', 150, 1997),
(162, 1, NULL, 'Chasing Amy', 'Best friends Holden McNeil and Banky Edwards are enjoying success as the creators of the cult comic book \'\'Bluntman and Chronic.\'\' When they meet fellow comic book artist Alyssa Jones, Holden\'\'s desire for the beautiful charmer is immediate', '1997-11-11', '1997-12-23', 105, 1997),
(163, 10, NULL, 'A armes egales', 'Navy Intelligence officer Lt Jordan O\'Neil becomes a test case when she is recruited to become the first woman allowed to train for the covert operations unit known as the Navy SEALS. She is not expected to succeed and many high ranking mil', '1997-11-14', '1998-01-02', 120, 1997),
(164, 6, NULL, 'Excess Baggage', 'A woman plans her own kidnapping in order to get back at her father. When she gets locked in her own trunk in the process, she inadvertently starts up a relationship with a car thief. She is then tracked by a former Green Beret who is emplo', '1997-11-18', '1998-01-13', 105, 1997),
(165, 10, NULL, 'Nothing to Lose', 'After discovering his wife in bed with his boss, ad exec Nick Beam is carjacked while sitting at a stop light. Having nothing to lose, Nick turns the tables and kidnaps the armed robber. Ultimately the two form an unlikely friendship when t', '1997-11-21', '1997-12-26', 93, 1997),
(166, 10, NULL, 'Seven Years in Tibet', 'Heinrich Harrer and Peter Aufschnaiter were two Austrians sent to the Himalayas in 1939 to become Nazi icons by climbing a legendary peak. However, after failing their mission they were captured by British troops. Harrer escaped and reached', '1997-11-21', '1997-12-26', 134, 1997),
(167, 18, NULL, 'Regeneration', 'During the First World War, men faced questions about themselves never asked before on such a scale when the most enormously destructive conflict the world had ever seen felled tens of thousands every week. Some men broke, and found themsel', '1997-11-21', '1998-01-16', 98, 1997),
(168, 3, NULL, 'Welcome to Sarajevo', 'Michael Winterbottom\'s emotionally powerful docudrama about a British TV reporter and his attempts to smuggle a young Muslim girl out of the Bosnian war zone.', '1997-11-21', '1997-12-26', 100, 1997),
(169, 1, NULL, 'One Night Stand', 'A married couple experiences the consequences of extramarital relations when a Los Angeles ad-executive has an affair with a married woman in New York, and then encounters her again a year later.', '1997-11-28', '1998-01-16', 103, 1997),
(170, 7, 1, 'Alien : Resurrection', '200 years ago Ellen Ripley sacrificed her life to ensure the Company could not use the alien as a weapon. Eight horrific experiments later, she is resurrected by means of cloning. The aim is to extract the alien Queen inside of her to breed', '1997-11-28', '1998-01-02', 115, 1997),
(171, 0, NULL, '8 Heads in a Duffel Bag', 'An airline loses a hitman\'s duffel bag full of human heads - his only proof that he has finished his job, and he winds up with a duffel belonging to a med student. The hitman then tries too track down the med student to make the switch.', '1997-11-28', '1998-01-09', 93, 1997),
(172, 0, NULL, 'Cop Land', 'A partially deaf New Jersery sheriff must investigate the NYPD officers he idolizes--potentially exposing the evil doings of some of New York\'s finest.', '1997-12-05', '1998-01-23', 105, 1997),
(173, 1, NULL, 'It\'s a Wonderful Life', 'An angel helps a caring but despairingly frustrated businessman by showing what life would have been like if he had never existed.', '0000-00-00', '1970-02-26', 135, 1946),
(174, 7, NULL, 'The Borrowers', 'Mary Norton\'s children\'s books about a family of four-inch-tall people who share accommodations with giant \'beans\' (as in \'human bein\'s\') are brought to the screen in beautifully scaled detail, but neither the story nor the characters come ', '1997-12-05', '1998-01-16', 83, 1996),
(175, 17, NULL, 'I know What You Did Last Summer', 'Three friends accidently hit and kill someone while they are driving drunk. They opt not to tell anyone about the murder and, in time, they pretend to forget about it. Their crime comes back to haunt them the following summer when they each', '1997-12-12', '1998-01-16', 99, 1997),
(176, 3, NULL, 'Tomorrow Never Dies', 'British super spy James Bond goes after a ruthless media baron--an amalgam of Ted Turner, Rupert Murdoch, and Bill Gates, played with feisty aplomb by Pryce--whose diabolical plans include instigating World War III so that his empire can ob', '1997-12-12', '1998-02-06', 119, 1996);
INSERT INTO `film` (`id_film`, `id_genre`, `id_distrib`, `titre`, `resum`, `date_debut_affiche`, `date_fin_affiche`, `duree_min`, `annee_prod`) VALUES
(177, 10, NULL, 'Free Willy 3: the Rescue', 'The whale of August returns, to find friendship, paternity and peril from unscrupulous whalers. As surprising as low tide.', '1997-12-17', '1998-01-07', 95, 1997),
(178, 10, NULL, 'George of the Jungle', 'Ursula Stanhope has travelled to Bukuvu from San Francisco is search of adventure. Her intended, Lyle Van de Groot, pursues her in hopes of capturing the legendary White Ape who is supposed to exist in the mountains. Ultimately, a romance b', '1997-12-19', '1998-01-16', 92, 1997),
(179, 6, NULL, 'Home Alone 3', 'Alex D. Linz replaces that other kid and there\'s a new cast of villains, but the formula remains the same.', '1997-12-19', '1998-02-06', 100, 1997),
(180, 10, NULL, 'Prince Valiant', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1997-12-19', '1998-01-30', 92, 1996),
(181, NULL, NULL, 'T-Rex 3 D', '16 year old Ally Hayden is about to go on a remarkable pre-historic adventure! When Ally, the daughter of Paleontologist Dr. Donald Hayden accidentally disturbs a very special fossil egg, she is magically transported back 65 million years t', '0000-00-00', '1970-02-12', 0, 0),
(182, 6, NULL, 'Spice World the Movie', 'As if serious film critics could do anything about it, here they are: Melanie Brown, Emma Bunton, Melanie Chisholm, Geri Halliwell and Victoria Adams. Add three stars if you can match the name with the nickname, an activity more exciting th', '1997-12-26', '1998-01-16', 90, 1997),
(183, 1, NULL, 'Bhaji', '', '1998-01-01', '1998-02-19', 100, 1997),
(184, NULL, NULL, 'Dushman', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-01-01', '1998-02-05', 0, 0),
(185, NULL, NULL, 'Kudrat', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-01-01', '1998-02-26', 0, 0),
(186, NULL, NULL, 'Major Saab', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-01-01', '1998-02-05', 0, 0),
(187, NULL, NULL, 'Qila', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-01-01', '1998-02-19', 100, 0),
(188, 7, NULL, 'Starship Troopers', 'Some time in the future, a group of friends joins Earth\'s military forces after high school graduation to battle the insectoid Klendathu. One fights for the chance to be a renowned pilot (Denise Richards), one for revenge (Casper Van Dien),', '1998-01-02', '1998-02-06', 129, 1997),
(189, 1, NULL, 'The Wings of the Dove', 'When Kate falls in love with a common journalist, she faces an impossible choice: either marry the man she loves, or give him up to take her rightful place in society. The struggle between her head and her heart is the conflict between 19th', '1998-01-02', '1998-02-06', 101, 1997),
(190, 0, NULL, 'The End of Violence', 'Mike Max is a Hollywood producer whose stock in trade is the ultra-violent thriller. It is a genre that has made Mike rich and has kept his wife Paige in a luxurious lifestyle. Ray Bering is a surveillance expert working for the government ', '1998-01-09', '1998-02-13', 105, 1997),
(191, 0, NULL, 'The Jackal', 'The Jackal is a sniper with no name, whose elite skills have kept him invisible from all but a few people. When the brother of Russian mobster, Terek Murad, is murdered by the FBI and Russian militia in Moscow, Terek hires the Jackal to kil', '1998-01-09', '1998-02-06', 124, 1997),
(192, 6, NULL, 'Picture Perfect', 'Romantic entanglements abound in this, uh, perky comedy about an advertising whiz kid who wants it all, and almost gets more than she bargained for.', '1998-01-09', '1998-02-06', 105, 1997),
(193, 1, NULL, 'The Winter Guest', 'Emma Thompson and her mother, Phyllida Law, star as a widowed photographer and her prickly mom, chaffing against each other and a frozen Scottish landscape. Actor Alan Rickman makes an inauspicious directorial debut.', '1998-01-09', '1998-01-30', 110, 1997),
(194, 1, NULL, 'Boogie Nights', 'Eddie Adams is a hopeless high-school drop-out, with one particular asset to his credit. After meeting a lot of the right people, he becomes a major star of the porn industry of the 70s and 80s, only to his career as Dirk Diggler threatened', '1998-01-16', '1998-03-13', 152, 1997),
(195, 7, NULL, 'The Devil\'s Advocate', 'Kevin Lomax, a top-notch Florida lawyer who specializes in jury selection, is summoned to New York City by the enigmatic owner of a huge law firm. After accepting a position at Milton, Chadwick, Waters, Kevin and his wife Mary Ann head for ', '1998-01-16', '1998-02-13', 130, 1997),
(196, 6, NULL, 'Bring Me the Head of Mavis Davis', 'The ever-manic Rik Mayall stars as Marty Starr, the unscrupulous manager of fading pop legend Marla Dorland, nee Mavis Davis (Jane Horrocks). Heavily in debt to local mobster Mr. Rathbone (Danny Aiello), Marty hatches a scheme to make a kil', '1998-01-16', '1998-02-20', 100, 1996),
(197, 3, 1, 'Titanic', 'The tragic story of the \'Unsinkable ship\' is romanticised with the passionate tale of working class Jack Dawson and respectable lady Rose DeWitt Bukater. When Rose was about to commit suicide to escape her unbearable lot of living with the ', '1998-01-23', '1998-02-27', 210, 1997),
(198, 3, NULL, 'Up &amp; Under', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-01-23', '1998-02-20', 0, 0),
(199, 19, NULL, 'Traveller', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-02-06', '1998-03-27', 0, 1981),
(200, 6, NULL, 'In &amp; Out', 'After three chaste years of engagement, popular high school teacher Howard Brackett (Kevin Kline) is finally getting married, and his upcoming wedding to Miss Emily Montgomery (Joan Cusack) is the talk of their small, friendly town. But whe', '1998-02-13', '1998-03-13', 105, 1997),
(201, 7, NULL, 'FairyTale: A True Story', 'As the title says, this magic-dusted bit of enchantment is based on the famous \'fairy\' pictures, which were shot during World War I by two young English girls from West Yorkshire. Also later proved to be a hoax, at the time the images captu', '1998-02-13', '1998-04-03', 97, 1997),
(202, 6, NULL, 'Good Burger', 'Sunny, terminally silly farce in which comedy teammates Kenan Thompson and Kel Mitchell try to save a humble burger joint from being devoured by the gaudy rival across the street. Add half a star if you\'re in the pre-teen age group that lov', '1998-02-13', '1998-03-20', 95, 1997),
(203, 3, NULL, 'Resurrection man', 'A searing drama about the violence of, and in, men unfolds in 1975 Northern Ireland. Ruthless sociopath Victor Kelly rides high as the feared and hated ringleader of a gang of killers. Kelly\'s combination of classic style and contemporary s', '1998-02-13', '1998-04-10', 102, 1998),
(204, 10, NULL, 'Mortal Kombat Annihilation', 'Why make a sequel when you\'ve already saved the Earth for a generation?  Good question.', '1998-02-13', '1998-03-27', 93, 1997),
(205, 10, NULL, 'Paws', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-02-13', '1998-03-06', 83, 1997),
(206, 1, NULL, 'The Butcher Boy', 'Francie and Joe are brothers whose father is a violent manic depressive and whose mother is mentally ill. When Joe goes to boarding school, Francie slips into a depression, which gets severely worse when his mother commits suicide. He becom', '1998-02-20', '1998-03-20', 114, 1997),
(207, 3, NULL, 'The Boxer', 'A once-promising Irish boxer returns to Belfast after serving fourteen years in prison for his IRA activities, and is discouraged to find the city filled with violence and hate. Determined to rise above the despair of his hometown, he retur', '1998-02-20', '1998-04-03', 107, 1997),
(208, 1, NULL, 'Postman', 'In Beijing\'s Xingfu, District of Happiness, a postman is fired for reading the mail, and Xiadou, an orphan, is promoted in his place. Raised by his sister to whom he is deeply attached, Xiadou remains a shy outsider and voyeur. He also begi', '1998-02-20', '1998-03-20', 110, 1995),
(209, 3, NULL, 'Amistad', 'Based on actual events in 1838, AMISTAD is the story of captured African slaves who took over their transport ship in a bloody revolt with the hopes of returning back to their homeland. After the slaves are caught and imprisoned, their lead', '1998-02-27', '1998-04-03', 120, 1997),
(210, 0, NULL, 'Desperate Measures', 'Set in San Francisco, a tale about a cop who bends department rules in trying to aid his terminally ill son. He chases an escaped convict whose matching bone marrow will enable his son to have an organ transplant.', '1998-02-27', '1998-04-03', 105, 1998),
(211, 1, NULL, 'Good Will Hunting', 'Matt Damon, who created the title character and wrote the script with costar Ben Affleck, gives a star-making performance as a working class genius with a chip on his shoulder.', '1998-03-06', '1998-04-24', 110, 1997),
(212, 0, NULL, 'Kiss the Girls', 'Forensic detective and best-selling crime author Alex Cross is cool and professional about his work, passionate and protective about his family. A widower with a teenage son and a daughter, the bonds of blood are all important to him. So wh', '1998-03-06', '1998-05-01', 105, 1997),
(213, 6, NULL, 'Wag the Dog', 'Less than two weeks before election day, a scandal erupts that threatens to cripple the President\'s bid for a second term. But before the incident can cause irreparable damage, a mysterious fixer is called to the White House. The ultimate s', '1998-03-13', '1998-04-17', 100, 1997),
(214, 0, NULL, 'Fallen', 'A cop hunts a demonic serial killer who is eventually caught, tried and executed. The murders continue, however, until the cop himself becomes the prime suspect of the investigation. Making the case even more complex is a similar series of ', '1998-03-13', '1998-04-17', 120, 1997),
(215, 0, NULL, 'Jackie Brown', 'Quentin Tarantino\'s first feature since \'Pulp Fiction\' is a sluggish, overlong,  and self-parodying adaptation of the minor Elmore Leonard novel \'Rum Punch.\'', '1998-03-20', '1998-04-24', 160, 1997),
(216, 2, NULL, 'Gattaca', 'In the near future, where corporations screen their employees based on their genetic makeup, a man with a congenital heart condition tries to assume the identity of a former athlete with perfect genes in order to fulfill his dream of travel', '1998-03-26', '1998-04-23', 121, 1997),
(217, NULL, NULL, 'The Man in the Iron Mask', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-03-20', '1998-05-15', 0, 1928),
(218, 5, NULL, 'Anastasia', 'Based on the legend of the real-life daugher of the last Russian czar, ANASTASIA combines imaginative animation and lively songs to tell the story of a princess who escapes a horrible execution and mysteriously reappears after being thought', '1998-03-27', '1998-04-24', 94, 1997),
(219, 7, NULL, 'Sphere', 'A group of scientists are taken by the Navy on a secret underwater mission to explore an alien spaceship. The vessel turns out to be an American ship from the future carrying a golden orb that allows one to manifest their thoughts and fears', '1998-03-27', '1998-05-15', 120, 1998),
(220, 1, NULL, 'The Rainmaker', 'An ageing couple whose son is dying rely on an unemployed lawyer, Rudy Baylor, to generate the funds needed for an operation which may just save his life. As time passes, Rudy cultivates a strong hatred for corporate America at the same tim', '1998-04-03', '1998-05-01', 110, 1997),
(221, 10, NULL, 'Hard Rain', 'Tom has taken a job with his uncle as an armoured car courier. They currently have $3 million entrusted to their care when they are caught in the rising waters of the Mississippi during a major flood. Jim is a career criminal who hopes to g', '1998-04-03', '1998-05-22', 110, 1997),
(222, 6, NULL, 'Mouse Hunt', 'Nathan Lane and Lee Evans do a fair impression of Laurel and Hardy in this darkly comic, and too often shrill, \'Home Alone\' knockoff about two brothers\' inept attempts to kill a wily mouse inhabiting their inherited mansion.', '1998-04-03', '1998-05-29', 97, 1997),
(223, 3, NULL, 'Oscar and Lucinda', 'Gorgeous but addled adaptation of Peter Carey\'s sprawling, picaresque novel about the faith and the flesh.', '1998-04-03', '1998-05-15', 131, 1997),
(224, 3, NULL, 'Ulee\'s gold', 'A lonely, widowed beekeeper who is raising his two grandchildren while trying to forget a painful past, falls in love with a divorced nurse.', '1998-04-03', '1998-05-22', 113, 1997),
(225, 3, NULL, '24 7: Twenty Four Seven', 'From the poverty and despair of an English industrial town, one man with a dream (Bob Hoskins) forms a boxing club to give troubled teenagers a fighting chance. The lads learn lessons of self-respect and male bonding, but amidst the triumph', '1998-04-03', '1998-05-29', 96, 0),
(226, 8, NULL, 'Money Talks', 'On the weekend of his wedding, tabloid television journalist James Russell is in need of a scoop. He finds it when a famous jewel thief, Villard, escapes from prison while handcuffed to Franklin Hatchett, a ticket scalper. Once the burglar ', '1998-04-10', '1998-05-29', 92, 1997),
(227, 0, NULL, 'Midnight in the Garden of Good and Evil', 'Clint Eastwood\'s adaptation of John Berendt\'s nonfiction novel doesn\'t create much of a drama from its centerpiece tale of murder in high society, but it brings to life the setting, the rich assortment of characters and the atmosphere of mo', '1998-04-10', '1998-05-08', 113, 1997),
(228, 6, NULL, 'Deconstructing Harry', 'Harry Block, despite the onset of middle age, has never really grown up. He has established a reputation as a novelist but has already spent his latest advance from his publisher without writing a word of his latest book. He\'s had three wiv', '1998-04-17', '1998-05-15', 93, 1997),
(229, 1, NULL, 'Great Expectations', 'A rising artist, flourishing with the help of a benefactor, falls fruitlessly in love with his wealthy childhood playmate, who has grown to be a beautiful coquette. But the nefarious influence of her eccentric, spiteful maiden aunt taints t', '1998-04-17', '1998-05-08', 115, 1997),
(230, 9, NULL, 'U-turn', 'Oliver Stone takes a breather from politics with this violent and frequently very funny black comedy about a gambler whose car breaks down near an Arizona mining town filled with thieves, vamps and killers.', '1998-04-24', '1998-05-15', 121, 1997),
(231, 0, NULL, 'US Marshals', 'Remake -- uh, we mean sequel -- to \'The Fugitive,\' featuring Tommy Lee Jones as the miserable Fed with the heart of gold, and a whole lotta stuff that goes boom.', '1998-04-24', '1998-05-29', 150, 1997),
(232, 6, NULL, 'The Big Lebowski', 'Jeff Lebowski, known as the Dude, is what we might call a \'bum\', albeit, a \'bum\' who has the same name as a millionaire whose wife has developed somewhat unsavoury connections, who want their money back. Unfortunately for The Dude, these \'c', '1998-05-01', '1998-06-19', 117, 1997),
(233, 3, NULL, 'Lolita', 'Stanley Kubrick\'s adaptation of Vladimir Nabokov\'s controversial LOLITA is a wicked satire of sexual obsession, sadomasochism, and fetishism. When mild-mannered professor Humbert Humbert (James Mason) arrives in the small town of Ramsdale, ', '1998-05-01', '1998-06-05', 137, 1997),
(234, 17, NULL, 'Scream 2', 'The crafty Wes Craven follows up last\'s year\'s surprise hit with another supremely self-referential but satisfyingly droll thriller.', '1998-05-01', '1998-06-05', 93, 1997),
(235, 17, NULL, 'Psycho', 'A remake of director Alfred Hitchcock\'s 1960 thriller about a young woman, who, while on the run after stealing $40,000 from her boss, is brutally murdered in the shower of a motel she is staying in one night. As police investigate her disa', '1998-05-01', '1998-05-29', 100, 1998),
(236, 6, NULL, 'Sliding Doors', 'A cleverly conceived romantic comedy that follows a London woman on two hypothetical paths, one where she gets home early and catches her boyfriend in bed with another woman, the other where she doesn\'t.', '1998-05-01', '1998-06-12', 105, 1997),
(237, 1, NULL, 'Amy Foster', 'Yanko Gooral, a shipwrecked Ukranian sailor, washes ashore as the sole survivor of ill-managed ship up-ended during a storm. It\'s 19th century England and Gooral is on his way to America. Struggling across the moors, he comes across New Bar', '1998-05-08', '1998-06-26', 113, 1997),
(238, 1, NULL, 'The Very Thought of You', 'Three life long friends see their relationship threatened in a single day when each independently meet and fall for a women named Martha who has no idea of their connection.', '1998-05-08', '1998-07-03', 88, 1944),
(239, 1, NULL, 'Shall we dance ?', 'Last year\'s smash hit in Japan tells the warm, frequenty funny story of an uptight Japanese worker whose midlife crisis takes him on a journey of personal discovery in a Tokyo dance class.', '1998-05-08', '1998-06-26', 118, 1996),
(240, 3, NULL, 'Something to Believe In', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-05-08', '1998-06-05', 0, 0),
(241, 2, NULL, 'Deep Impact', 'First the dinosaurs, now us. In the first and hopefully worst of the year\'s two Earth-collision movies, America prepares to go underground in case a space mission designed to nuke an oncoming comet fails.', '1998-05-15', '1998-06-12', 125, 1997),
(242, 0, NULL, 'Wild Things', 'Think of it as endless endings. John McNaughton\'s playful erotic thriller about a larcenous school teacher, a pair of greedy coeds, and the cop on their trail has as many twists as there are characters, but it\'s all in good fun.', '1998-05-15', '1998-06-26', 113, 1997),
(243, 6, NULL, 'The Man Who Knew too Little', 'A contestant in an audience participation stage game becomes mixed up in a case of mistaken identity.', '1998-05-15', '1998-06-12', 105, 1997),
(244, 3, NULL, 'Live Flesh', 'A shooting in the Madrid apartment of Elena (Francesca Neri), an Italian dope addict, leaves policeman David (Javier Bardem) a paraplegic and Victor (Liberto Rabal), her would-be date, in prison. Years later, Victor gets out of jail but is ', '1998-05-15', '1998-07-03', 100, 1997),
(245, 6, NULL, 'Blues Brothers 2000', 'Upon his release from prison, now-brotherless Blues Brother Jake Elwood (Dan Aykroyd) puts the band back together with the help of a golden-voiced strip joint bartender (John Goodman) and a precocious 10-year-old orphan (J. Evan Bonifant) o', '1998-05-22', '1998-07-17', 129, 1997),
(246, 9, NULL, 'Breakdown', 'A couple is driving from Massachusettes to California when their jeep breaks down in a desolate part of the Southwest. The wife accepts the offer of a truck driver to take her to the nearest cafe where she can call for assistance. When the ', '1998-05-22', '1998-07-03', 95, 1997),
(247, 6, NULL, 'Mr. Magoo', 'Myopic millionaire Mr. Quincy Magoo accidentally takes possession of a cache of stolen gems and becomes the target of evil culprits. Despite their efforts, however, Magoo consistently escapes unharmed and remains oblivious to the dangers th', '1998-05-22', '1998-07-17', 90, 1997),
(248, 5, NULL, 'Star Kid', 'Spencer has problems at schoool with bullies and a troubled home life. One night he meets Cy, a seven foot tall Cybersuit, and he invites Spencer to climb inside him and immediately his problems with school bullies are over. Cy has been fol', '1998-05-22', '1998-07-17', 110, 0),
(249, 7, NULL, 'Dark City', 'From the director of \'The Crow,\' an atmospheric melange of styles and substance about aliens, night and unspeakable acts. Interesting, but more than a bit addled.', '1998-05-29', '1998-07-17', 103, 1998),
(250, 3, NULL, 'Washington Square', 'Set in 1870\'s New York, a spinster heiress is courted by a much younger, penniless man, much to the chagrin of her over-protective father, and must decide whether to spend the rest of her life alone, or marry a man who is interested in her ', '1998-05-29', '1998-07-17', 115, 1997),
(251, 6, NULL, 'The James Gang', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-05-29', '1998-06-19', 99, 1997),
(252, 7, NULL, 'Wishmaster', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-05-29', '1998-07-10', 90, 1997),
(253, 6, NULL, 'Wedding Singer', 'Adam Sandler is the guy who gives good reception, but has a few problems with his own love life. Big hair and \'99 Luftballoons\' do not a comedy make.', '1998-06-05', '1998-07-17', 95, 1998),
(254, 9, NULL, 'Red Corner', 'A high-stakes thriller about a savvy entertainment lawyer who finds hinmself trapped and fighting for his life in the labyrinthine Chinese legal system. Jack Moore has come to China to broker a multi-million dollar television deal and, whil', '1998-06-05', '1998-07-24', 119, 1997),
(255, 8, NULL, 'The Replacement Killers', 'Versatile Hong Kong box office giant Chow Yun-Fat makes a Hollywood splash as a Chinese hitman beholden to a drug kingpin (Tsang, in an interesting reversal of his Hong Kong crusty cop persona). The good news is that he\'s free after one hit', '1998-06-05', '1998-07-03', 88, 1997),
(256, 9, NULL, 'Dad Savage', 'Dad Savage, cowboy obsessed, owner of flower gardens -- recruits Bob and Vic to join H and Sav (Dad\'s son) in making rounds for him -- collecting money, delivering goods, beating up problem customers, etc. -- for his \'business enterprises\'.', '1998-06-05', '1998-07-10', 0, 1998),
(257, 3, NULL, 'The Apostle', 'After being squeezed out of his church by his ex-wife, a Texas fundamentalist preacher\'s alcohol-fuelled rage sends him off the deep end. After beating her new beau into a coma, he flees to Louisiana and seizes the chance to reinvent himsel', '1998-06-12', '1998-07-17', 148, 1997),
(258, 3, NULL, 'The Grass Harp', 'Based on the novel by Truman Capote, the story is set in the 1940s in a small southern town. After his mother dies, Collin Fenwick, comes to live with his father\'s maiden cousins, Verena and Dolly Talbo. Verena is a rigid and proper busines', '1998-06-12', '1998-07-17', 107, 1995),
(259, 1, NULL, 'Soul food', 'The story of Sunday dinner gatherings that unite an African-American family and prevent it from unraveling when the family\'s matriarch becomes ill.', '1998-06-12', '1998-07-31', 120, 1997),
(260, 3, NULL, 'The Scarlet Tunic', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-06-12', '1998-07-17', 0, 1998),
(261, 6, NULL, 'Stiff Upper Lips', 'It\'s 1908.  The height of the British Empire.  Good news for the Upper Classes and Merchant Ivory.  Bad news for everyone else.  Aunt Agnes is desperate to marry off her niece Emily to a respectable, proper, wealthy man with the right backg', '1998-06-12', '1998-07-17', 94, 0),
(262, NULL, NULL, 'The Girl with Brains in Her Feet', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-06-12', '1998-07-10', 98, 0),
(263, 1, 2, 'A Thousand Acres', 'Set on an Iowa farm in 1979, a dictatorial father decides to distribute his 1000 acre farm among his three daughters, which unearths family secrets both catastrophic and liberating.', '1998-06-19', '1998-07-10', 101, 1997),
(264, 7, NULL, 'City of Angels', 'When Seth falls in love with a heart surgeon that he spotted whilst watching over Los Angeles, he is hit by a tragic dilemma. As he is an immortal angel, his love could only be returned as long as the object of his affections remained alive', '1998-06-19', '1998-08-14', 110, 1997),
(265, 8, NULL, 'Point Blank', 'Whilst being moved from one penitentiary to another, a group of prisoners break-free and escape to a Texan shopping centre.  Lots of dead shoppers later the group successfully arrange a hostage situation and demand all kinds.  No one is bra', '1998-06-19', '1998-08-07', 90, 0),
(266, 7, NULL, 'Mimic', 'When a cockroach-spread plague threatens to decimate the child population of New York City, evolutionary biologist Susan Tyler and her research associates rig up a species of \'Judas\' bugs and introduce them into the environment, where they ', '1998-06-26', '1998-07-31', 100, 1997),
(267, 1, NULL, 'The Object of My Affection', 'Nina, a New York social worker, invites newly-dumped school teacher George to become her flat mate.  He moves in and the two get on like a house on fire, with a mutual love for ballroom dancing and tuna casseroles.  Nina falls pregnant by h', '1998-06-26', '1998-08-07', 110, 1998),
(268, 6, NULL, 'Girl\'s night', 'Sisters-in-law and best mates Dawn and Jackie work at a factory in a small Lancashire town. At one of their regular bingo sessions, Dawn wins the 100,000 pound National Jackpot. But their celebrations are cut short when Dawn discovers that ', '1998-06-26', '1998-07-31', 106, 1998),
(269, 6, NULL, 'Six Days Seven Nights', 'Harrison Ford and Anne Heche have irrepressible chemistry in this old-fashioned romantic adventure about a boozy, weathered bush pilot and the feisty Manhattan magazine editor with whom he becomes stranded on a remote South Pacific island.', '1998-07-03', '1998-07-31', 106, 1998),
(270, 16, NULL, 'Grease', 'A cult classic. \'Grease\' is a rock \'n\' roll musical celebration of growing up and falling in love. Danny and Sandy have a romance during the summer holidays, but neither is any the wiser that they\'ll be going back to the same school when su', '0000-00-00', '1970-01-29', 110, 1978),
(271, 1, NULL, 'Love and Death on Long Island', 'Stuffy British novelist Giles De\'Ath lives his life impervious to any modern technologies. One day, finding himself locked out of his house, he opts for a visit to the cinema where he mistakenly purchases a ticket to Hotpants College 2. But', '1998-07-03', '1998-08-14', 93, 1996),
(272, 3, NULL, 'Mad City', 'A television journalist manipulates a hostage situation--in which a recently fired museum security guard accidentally shoots a fellow employee and winds up taking hostages--to his own advantage.', '1998-07-10', '1998-08-21', 114, 1997),
(273, 0, NULL, 'Kiss or Kill', 'Two lovers, Nikki and Al, have a scam in which Nikki allows herself to be picked up by older men, drugs them, and, with Al\'s help, robs them. After accidentally killing one of her victims with an overdose, Nikki and Al are on the run. When ', '1998-07-10', '1998-08-28', 96, 1997),
(274, 7, NULL, 'Godzilla', 'Nuclear testing once again awakens a green behemoth. However, this large iguana-like creature seems to be unrelated to its Japanese counterpart. The lizard proceeds to demolish large portions of New York as the US military attempts to destr', '1998-07-17', '1998-09-04', 139, 1998),
(275, 5, NULL, 'The Little Mermaid', 'Mermaids are supposed to stay under the sea, but Ariel, a headstrong teenager, longs to be part of the magical world on land. When she falls in love with a human prince, Ariel strikes a bargain with the diabolical Sea Witch to win the princ', '1998-07-17', '1998-08-14', 82, 1990),
(276, 5, NULL, 'Barney\'s Great Adventure', 'The purple dinosaur, two true believers and a reluctant convert turn their imagination into an entertaining afternoon at the movies.', '1998-07-17', '1998-09-04', 75, 0),
(277, 0, NULL, 'The Gingerbread Man', 'Savannah lawyer Rick Magruder is at a party celebrating his courtroom victory defending a cop killer when a member of the catering staff, Mallory Doss, discovers her car has been stolen. Having had a few drinks, Magruder offers to give her ', '1998-07-24', '1998-08-28', 115, 1998),
(278, 10, NULL, 'Paulie', 'A classic family movie, \'Paulie\' presents a parrot\'s-eye view of the world with humor and intelligence.', '1998-07-24', '1998-08-21', 113, 1997),
(279, 5, NULL, 'Quest for Camelot', 'Kayley, a strong-willed young girl, aspires to follow into her late father\'s steps: Sir Lionel was a brave knight of the round table who perished while defending his king against villainous Ruber. Before he invades Camelot, Ruber first kidn', '1998-07-24', '1998-09-04', 90, 1998),
(280, 3, NULL, 'Hana-Bi', 'Detective Nishi has just lost his infant daughter and is about to lose his wife to a fatal illness. He is advised by the doctors to take her home so she can die in peace. Nishi also finds out his partner Horibe has been seriously wounded an', '1998-07-24', '1998-08-21', 103, 1997),
(281, 6, NULL, 'The Castle', 'Working-class tow-truck driver and father of four Darryl Kerrigan\'s (Michael Caton) only distinguishing feature is his beaming reverence for his home and family.  Although is kids appear to be underachievers and his home is located on the e', '1998-07-24', '1998-09-18', 85, 1997),
(282, 6, NULL, 'Doctor Dolittle', 'A skilled physician, Dr. John Dolittle has long suppressed a very special talent he possessed as a child: the ability to communicate with animals. Forgotten are his childhood memories of counsel with his four-legged friend until a near acci', '1998-07-31', '1998-09-18', 85, 1998),
(283, 7, NULL, 'Lost in Space', 'After several decades\' hiatus, the Space Family Robinson is back and still can\'t find their way home. Some bright moments, but surprisingly dull.', '1998-07-31', '1998-09-18', 135, 1998),
(284, 2, NULL, 'Armageddon', 'A low earth orbit space station is in the middle of a repair mission with the space shuttle when an unforeseen meteor shower obliterates them both. This sudden event sends fireballs hurtling to Earth and scientists scurrying to telescopes. ', '1998-08-07', '1998-09-18', 144, 1997),
(285, 10, NULL, 'The Adventures of Robin Hood', 'Based on the English legend, this is the story of  Robin of Locksley, noble turned outlaw when Prince John usurps the throne from his brother, the rightful king. Finding refuge in the Sherwood forest, our hero gathers followers under the na', '1998-08-07', '1998-09-18', 102, 1938),
(286, 1, NULL, 'Eve\'s Bayou', 'Eve is the youngest daughter of one of Louisiana\'s most sophisticated and prosperous families. Her father Louis, is the town\'s highly respected doctor, a man known for his ability to fix things--everything except his own family problems and', '1998-08-14', '1998-09-04', 109, 1999),
(287, 10, NULL, 'The Avengers', 'Mrs. Emma Peel and John Steed are spies who work for the secret branch of the British government called The Ministry. They are called in to investigate Prospero, a plot to blackmail Britain by controlling the weather. Emma Peel is suspected', '1998-08-14', '1998-09-04', 91, 1998),
(288, 7, NULL, 'The X Files', 'In this big-screen episode of the popular TV series, agents Mulder and Scully pursue a conspiracy between aliens and megalomaniacal humans to an Antarctic subterranean space station. Fans of the series may be spellbound, but it\'s a dull cha', '1998-08-21', '1998-10-16', 105, 1998),
(289, 10, NULL, 'Le Bossu', 'Set in the early 18th century, Lagardere is the trusted friend and bodyguard to the multi-titled and wealthy Nevers. Word comes from afar that Nevers has an heir and resolves to marry the mother and raise what he assumes will be a son. The ', '1998-08-21', '1998-09-25', 120, 1997),
(290, 3, NULL, 'Firelight', 'In 1838, lovely governess Elisabeth agrees to bear a child of anonymous English landowner, and he will in return pay her father\'s debt. At birth she, as agreed, gives up the child. Seven years later she is hired as governess to a girl on a ', '1998-08-21', '1998-10-09', 106, 1997),
(291, 1, NULL, 'The Horse Whisperer', 'After her fourteen year old daughter suffers a serious horse riding accident, a high-powered magazine editor goes to Montana to bring the horse to a legendary \'horse whisperer,\' a person with a unique gift of being able to cure troubled hor', '1998-08-28', '1998-10-02', 164, 1998),
(292, 6, NULL, 'Mr. Nice Guy', 'Jackie Chan delivers a winning combination for martial-arts fans. Action and entertainment blended with his never-serious personality.', '1998-08-28', '1998-10-23', 94, 1987),
(293, 6, NULL, 'Way Out West', 'Classic comedy duo Laurel and Hardy encounter trouble in the Wild West as they attempt to deliver a deed to a late prospector\'s daughter, only to be intercepted by a villainous saloon owner en route. WAY OUT WEST remains one of the team\'s m', '0000-00-00', '1970-01-22', 65, 1937),
(294, 7, NULL, 'Species II', 'In fact, they all lose one star on their next movie. Sequel to sci-fi idiocy about voracious space invaders is worst film since \'Return of the Living Dead III.\'', '1998-09-04', '1998-10-16', 95, 1998),
(295, 1, NULL, 'The Land girls', 'The boys go to war and the girls work the farm (and the tears) in this well-acted, but dramatically scrambled drama based on the real-life Women\'s Land Army of World War II England.', '1998-09-04', '1998-10-30', 100, 1998),
(296, 18, NULL, 'Saving Private Ryan', 'World War II story chronicling the journey of a GI squad on a dangerous mission behind enemy lines. Led by Captain John Miller, the unit is under orders to track down a soldier, Private Ryan, so he might return home to his mother in America', '1998-09-11', '1998-10-30', 170, 1998),
(297, 8, NULL, 'Lethal weapon 4', 'Mel Gibson, Danny Glover and Joe Pesci are joined by comedian Chris Rock in what may be the last and best -- certainly the funniest -- film in this popular buddy-cop series.', '1998-09-18', '1998-11-13', 125, 1998),
(298, 6, 1, 'There\'s Something about Mary', 'In THERE\'S SOMETHING ABOUT MARY, a beautiful woman called Mary is courted by numerous admirers. An old friend, Ted, hires a detective to find her after thirteen years. The detective who finds her falls in love with her. Even Mary\'s best fri', '1998-09-25', '1998-10-30', 120, 1998),
(299, 10, NULL, 'Deep Rising', 'Thrills and chills in a monster-from-the-deep adventure that knows when to let the audience laugh. Written and directed by Stephen Sommers.', '1998-09-25', '1998-10-16', 110, 1997),
(300, 7, NULL, 'Cube', 'Six people are inexplicably imprisoned in a booby-trapped system of boxes, with no hope and fewer means of escape. A high-tech masochist\'s \'Lifeboat.\'', '1998-09-25', '1998-10-23', 92, 1997),
(301, 0, NULL, 'Mercury Rising', 'Bruce Willis is a maverick FBI agent trying to save a nine- year-old autistic savant from Pentagon assassins in this fatuous, formulaic action-thriller.', '1998-10-02', '1998-11-20', 131, 1997),
(302, 1, NULL, 'Buffalo\'66', 'An electric directorial debut (seven years in the making) by New York artist/musician/model/actor Vincent Gallo. He portrays troubled Billy Brown, who has just been let out of jail on a cold and miserable day.', '1998-10-02', '1998-11-20', 110, 1998),
(303, 6, NULL, 'The Last days of disco', 'Young Manhattanites boogie-oogie-oogie, in Whit Stillman\'s Proustian exploration of urban manners, discarded innocence and the onset of modern times.', '1998-10-04', '1998-11-22', 112, 1998),
(304, 6, NULL, 'Divorcing Jack', 'A married Belfast journalist has a one-night stand with a student. When the young woman turns up dead, the journalist becomes the chief suspect.', '1998-10-02', '1998-11-13', 105, 1998),
(305, 1, NULL, 'The Truman Show', 'The life of Truman Burbank has been broadcast around the world with tremendous success since the day he was born. A star for the mere fact that he exists, Truman has no idea that there are cameras in every corner of his world, which is actu', '1998-10-09', '1998-11-20', 107, 1998),
(306, 1, NULL, 'Ever After', 'In a re-telling of one of our most beloved tales, a resourceful young woman must overcome the schemes of her evil stepmother to be with the one she loves -- the Prince of France -- who has fallen for her beauty and intelligence. With the in', '1998-10-09', '1998-10-30', 130, 1998),
(307, 1, NULL, 'A Soldier\'s Daughter Never Cries', 'The story of an American family living in Paris in the sixties and seventies. The father is a successful writer, a WWII veteran haunted by his experiences in the Pacific. His wife is an emotional, fun-loving woman. The film opens the day si', '1998-10-09', '1998-11-13', 130, 1998),
(308, 0, NULL, 'A Perfect Murder', 'Michael Douglas is another Gordon Gekko in Andrew Davis\' updated, revamped, and emotionally cool remake of \'Dial M for Murder,\' Alfred Hitchcock\'s 1954 suspense thriller about a man plotting his wife\'s murder.', '1998-10-16', '1998-12-11', 105, 1998),
(309, 3, NULL, 'The Dreamlife of Angels', 'Isa is twenty: All her possessions fit in a backpack and she lives through hard times with a smiling philosophy: She arrives in Lille after wandering from city to city; looking for small jobs. Never the same ones and never for long. She mee', '1998-10-16', '1998-11-13', 113, 1998),
(310, NULL, NULL, 'Kuch kuch hota hai', 'Best friends back in the college days, Rahul and Anjali get on fantastically well. One day reality strikes Anjali and she realises that emotions she had felt towards her school friend were in fact feelings of love. However, it\'s too late as', '1998-10-16', '1998-11-06', 210, 1998),
(311, 7, NULL, 'Small Soldiers', 'A toy company believes it is onto something when it employs the latest government military technology in a series of action figures, enabling them to talk. They underestimate the power of the special microchips they\'ve employed, and the two', '1998-10-28', '1998-11-18', 109, 1998),
(312, 12, NULL, 'Elizabeth', 'England 1554 and Princess Elizabeth remains in grave danger from a dying Queen Mary, a Catholic, who has weakened England financially and religiously. On her death Elizabeth is made Queen and sets about wiping out all opposition to her lead', '1998-10-23', '1998-11-13', 124, 1998),
(313, 1, NULL, 'Velvet Goldmine', 'Loosely based on the experiences and personalities of David Bowie and Iggy Pop, VELVET GOLDMINE is a wild, glitter-laced trip through the 1970s era of glam rock. Fictional characters Brian Slade (Jonathan Rhys-Meyers) and Curt Wild (Ewan Mc', '1998-10-23', '1998-12-18', 117, 1998),
(314, 9, NULL, 'Halloween: H2O', 'Twenty years later, after faking her own death, changing her name and her life by going into hiding, Laurie Strode (Jamie Lee Curtis) still isn\'t secure in the fact that her brother, Michael Myers,  is gone for good.  This will be one Hallo', '1998-10-23', '1998-12-18', 100, 0),
(315, 0, NULL, 'Lock, Stock and Two Smoking Barrels', 'It is not easy to find &Acirc;&pound;500,000 in one week. It is especially difficult when it is the debt from an illegal poker match, which you owe to the most powerful gangster of East London. This is why the four would-be wide-boys who lost the money', '1998-10-28', '1998-12-09', 108, 1998),
(316, 6, NULL, 'Air Bud', 'A charming children\'s movie about a lonely boy and a dog who can shoot hoops.^L^C5 Since his father\'s death, Josh Framm (Kevin Zegers) has become increasingly withdrawn. Even basketball, once his passion, scarcely seems to matter. His worri', '1998-10-23', '1998-11-27', 97, 1997),
(317, 3, NULL, 'The Governess', 'Set in England between the Georgian and Victorian eras, The Governess takes its title from a young Jewish woman who, after the death of her father, is offered the job of nanny for the gentile Cavendish family on the Isle of Skye off the coa', '1998-10-23', '1998-12-18', 114, 1998),
(318, 1, NULL, 'Primary Colors', 'In Mike Nichols\'s PRIMARY COLORS, America\'s topsy-turvy political process is viewed through the eyes of Henry Burton (Adrian Lester), an idealistic young man who is seduced into managing the presidential campaign of slick southern governor ', '1998-10-30', '1998-12-11', 140, 1998),
(319, 1, NULL, 'Still Crazy', 'Strange Fruit regroup to perform at the Wisbech Open Air Rock Festival after splitting up twenty-one years earlier during the glam rock era. The intervening years have treated all of the band members very differently...', '1998-10-30', '1998-12-04', 95, 1998),
(320, 3, NULL, 'Funny Games', 'A powerfully graphic film (even though no violence is ever shown on the screen itself) about an Austrian family who goes on a country vacation and become the victims of two cold-blooded psychopaths who are out to torture them with their \'fu', '1998-10-30', '1998-12-04', 103, 1997),
(321, 4, NULL, 'East Side Story', 'A comical documentary about a part of history unknown in the West--the socialist movie musicals made behind the Iron Curtain during the height of the Communist rule. Eastern Bloc countries were not known for their joie de vivre, but in thei', '1998-10-30', '1998-12-04', 78, 0),
(322, 5, NULL, 'Antz', 'AZ-4195 is a disenchanted ant-worker longing to escape the totalitarian nature of his work and also capture the heart of the ant-Princess Bala. Unfortunately his ambitious plans do not quite materialise how he had hoped. It is only a matter', '1998-11-06', '1998-12-25', 83, 1998),
(323, 0, NULL, 'Snake Eyes', 'Amidst a high profile boxing match a murder takes place. The fans are focussed on the ring as the boxers\' fight hots up, meanwhile a killer pounces on his victim in the audience. A member of the audience in the casino who happens to be a co', '1998-11-06', '1998-12-11', 107, 1998),
(324, 1, NULL, 'The Players Club', 'Ice Cube co-produced, wrote, directed and appears in this astringent comedy-drama about an exotic dancer (LisaRaye) struggling to make money, get a college degree and steer clear of trouble at an Atlanta strip joint.', '1998-11-06', '1998-12-18', 115, 1998),
(325, 1, NULL, 'My Name is Joe', 'A former alcoholic who is currently out of work keeps himself busy by coaching a footabll team in Glasgow. When one of his players becomes involved with local gangsters their lives are changed forever.', '1998-11-06', '1998-12-11', 105, 1998),
(326, 1, NULL, 'Fear and Loathing in Las Vegas', 'A journalist and his psychotic Samoan Lawyer, were paid in advance to travel to Las Vegas to cover a major sporting event for a sports magazine. That money proved quite useful as the two funded their trip to find \'the American Dream\'. They ', '1998-11-13', '1998-12-18', 118, 1998),
(327, 6, NULL, 'Neil Simon\'s The Odd Couple II', 'Jack Lemmon and Walter Matthau return to their roles of Felix Unger and Oscar Madison in this ill-conceived, Neil Simon-written sequel that has the former New York roommates getting in and out of jams as they make their way to the wedding o', '1998-11-13', '1998-12-11', 90, 1998),
(328, 1, NULL, 'Hope Floats', 'Sandra Bullock and Harry Connick Jr. star in this formulaic love story about a jilted housewife and the hometown boy who still longs to do her right.', '1998-11-13', '1998-12-18', 112, 1998),
(329, 7, NULL, 'Blade', 'Blade is the ultimate vampire hunter possessing superhuman strength and the cunning of a vampire but with none of their weaknesses. Deacon Frost, the vampire overlord, has plans to conquer mankind and Blade must overcome this threat before ', '1998-11-13', '1999-01-08', 120, 1998),
(330, 3, NULL, 'Left Luggage', 'Set in Antwerp, Belgium in the early 70\'s, a tale about Chaja, an impetuous, liberal-minded philosophy student, and her complex relationship with her parents who are Holocaust survivors. With the help of a family friend, she secures a job a', '1998-11-13', '1998-12-18', 100, 1998),
(331, 0, NULL, 'Ronin', 'The Ronin, was the term given to masterless samurai. Now it is given to the nationless agents of the world. So when Deirdre finds a number of these Ronin\'s to collect an important briefcase for her, things are never going to be obvious. Bes', '1998-11-20', '1999-01-08', 120, 1998),
(332, 1, NULL, 'Rounders', 'Set against the backdrop of New York\'s high-stakes underground poker world. Mike McDermott, a master card player who trades the poker playing rounds for law school and a shot at a new life with his girlfriend. For Mike, the new life he is s', '1998-11-20', '1999-01-01', 140, 1998),
(333, 0, NULL, 'The Negotiator', 'Samuel L. Jackson plays a brilliant hostage negotiator, but when he realizes he is being framed, he takes hostages into his own hands.  Knowing the rules of the game, Jackson asks for the only other negotiator he trusts, played by Kevin Spa', '1998-11-24', '1998-12-15', 135, 1998),
(334, 0, NULL, 'Dead Man\'s Curve', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-11-20', '1998-12-25', 90, 1998),
(335, 6, NULL, 'Slums of Beverly Hills', 'This coming of age tale of growing up on the wrong side of the tracks in Beverly Hills in a family trying to use the benefits of a Beverly Hills zipcode.', '1998-11-27', '1998-12-25', 91, 1998),
(336, 6, NULL, 'The Philadelphia Story', 'When Tracy Lord discovers that her ex-husband Dexter Haven and a scandalous newspaper journalist have invited themselves to her marriage to coal industry giant George Kittridge. The Philadelphia heiress is not at the end of her surprises...', '1998-11-27', '1999-01-08', 112, 1940),
(337, 7, NULL, 'The Wisdom of Crocodiles', 'To all appearances, Steven Grlscz has everything.  He masterfully seduces women, but for him this is not a game.  It is a lonely and desperate pursuit for a woman\'s love he literally cannot live without.  When the body of his latest conques', '1998-11-27', '1999-01-08', 98, 2000),
(338, 6, NULL, 'The Man With Rain in his Shoes', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1998-11-27', '1999-01-08', 100, 1998),
(339, 8, NULL, 'Out of Sight', 'George Clooney, as a career bank robber with more charm than sense, and Jennifer Lopez, as a by-the-book federal marshal with the unpredictable heart of a romantic, give \'opposites attract\' new meaning in Steven Soderbergh\'s funny, smart ad', '1998-11-27', '1999-01-08', 120, 2005),
(340, 15, NULL, 'Same Old Song', 'A range of characters whose lives are inextricably linked. Following a misunderstanding, Camille falls in love with a charming estate agent named Marc Duveyrier, who is also Simon\'s boss. Marc tries to sell an apartment to Camille\'s sister,', '1998-12-04', '1999-01-22', 120, 1997),
(341, 0, NULL, 'Twilight', 'Harry Ross is a private investigator who lives in the garage of Jack and Catherine Ames, two movie star friends. Harry does odd jobs for them in exchange for lodging. Tension arises when Harry begins to be attracted to Catherine and Jack\'s ', '1998-12-04', '1999-01-15', 96, 1998),
(342, 6, NULL, 'Babe - Pig in the City', 'In this sequel to the Academy Award -winning hit, everyone\'s favorite hero, Babe, sets off on a journey that takes him to a far away storybook city where he encounters an incredible assortment of animal friends and learns how a kind and ste', '1998-12-04', '1999-01-15', 90, 1998),
(343, 0, NULL, 'Rush Hour', 'A box office smash, this film combines the comic stylings of funny-man Chris Tucker with the explosive action of superstar Jackie Chan. The two team up to battle the bad guys and, along the way, meet their fair share of dangerous situations', '1998-12-04', '1999-01-29', 97, 1998),
(344, 3, NULL, 'Dancing at Lughnasa', 'Based on the Brian Friel play, this is a story of the sisters of the Mundy family. The summer of 1936, when the action of DANCING AT LUGHNASA takes place, is beautiful, but Europe is on the verge of terrible change.  Through that glorious s', '1998-12-04', '1999-01-08', 94, 1998),
(345, 10, NULL, 'The Mask of Zorro', 'Two Tonys (Anthony Hopkins and Antonio Banderas) give us two Zorros in Martin Campbell\'s winsome revival of old California\'s legendary masked hero. It\'s a summer movie showing that swords and repartee are more fun than a barrel of asteroids', '1998-12-11', '1999-01-22', 136, 1998),
(346, 0, NULL, 'Playing God', 'Stripped of his medical license after performing an operation while high on amphetamines, famed LA surgeon Dr Eugene Sands abandons his former life only to find himself crossing paths with Raymond Blossom, an infamous counterfeiter. Employe', '1998-12-11', '1999-01-22', 120, 1997),
(347, 6, NULL, 'The Parent Trap', 'Walt Disney\'s The Parent Trap tells the tale of identical twin sisters, separated shortly after birth by the break-up of their parents.  Unaware of each other\'s existence, the girls coincidentally meet at summer camp in Maine.  Eager to mee', '1998-12-11', '1999-02-05', 128, 1998),
(348, 5, NULL, 'The Prince of Egypt', 'THE PRINCE OF EGYPT is a full-length, animated version of the Biblical story of Moses. After being adopted and raised as the son of a Pharaoh, Moses learns that he is an Israelite and must accept his destiny as the leader of his enslaved pe', '1998-12-18', '1999-01-22', 90, 1998),
(349, 20, NULL, 'Enemy of the State', 'Robert Dean (Will Smith) is a labor lawyer who is unknowingly in possession of evidence related to a serious politically motivated crime. Government agents eager to hide their guilt believe that Dean is on to them, and proceed to turn his l', '1998-12-26', '1999-01-23', 128, 1998),
(350, 10, NULL, 'The Mighty', 'A funny, inspirational and adventurous tale of two outsiders who, in the noble spirit of King Arthur and his Knights of the Round Table, set out on a mighty quest for greatness and the common good, only to discover the mightiest treasure of', '1998-12-26', '1999-01-23', 106, 1998),
(351, 7, NULL, 'What Dreams May Come', 'Despite everything we have experienced and all we have seen, nothing can prepare us for the wonders of what lies beyond. Academy Award&Acirc;&uml; Winner Robin Williams is about to take you on an amazing journey...through heaven and hell. To rediscov', '1998-12-26', '1999-02-13', 105, 1998),
(352, 2, NULL, 'Alien Adventure', 'For hundreds of years, the Glagoliths, a small tribe of wayward space gypsies, have roamed the Universe in search of a new home, their previous planet having been obliterated through operator error. In time, they came upon an unknown planet', '1999-01-01', '1999-02-19', 2160, 0);
INSERT INTO `film` (`id_film`, `id_genre`, `id_distrib`, `titre`, `resum`, `date_debut_affiche`, `date_fin_affiche`, `duree_min`, `annee_prod`) VALUES
(353, 4, NULL, 'The Mysteries of Egypt', 'Well-known Egyptian actor Omar Sharif and the young British actress Kate Maberly are featured in the IMAX film.  Sharif plays the role of a grandfather who takes his visiting granddaughter (Maberly) around the country to introduce her to th', '1999-01-01', '1999-01-22', 2280, 0),
(354, 2, NULL, 'Star Trek Insurrection', 'The battle for paradise has begun. Captain Picard and the crew of the Enterprise fulfill one of man\'s enduring dreams - to find a fountain of youth. When the existence of this newfound paradise is threatened, Picard faces a daunting decisio', '1999-01-01', '1999-01-29', 110, 1998),
(355, 1, NULL, 'Kikujiro', 'Kikujiro, a brash, loud-mouthed swindler, teams up with a sensitive nine-year-old boy in search of the boy\'s estranged mother. While Kikujiro tries to teach the boy life lessons, he is suddenly confronted with the errors that have led his o', '1999-01-01', '1999-01-29', 116, 1999),
(356, 3, NULL, 'The Acid House', 'THE ACID HOUSE is a surreal triptych adapted by \'Trainspotting\' author Irvine Welsh from his acclaimed collection of short stories. Combining a vicious sense of humor with hard-talking drama, the film reaches into the hearts and minds of th', '1999-01-01', '1999-02-05', 112, 0),
(357, 4, NULL, 'Into the Deep', 'The IMAX experience of \'being there\' reaches a new dimension with the launch of Into The Deep, the world\'s first giant screen IMAX&Acirc;&reg; 3D underwater film. This exciting 35-minute 3D adventure marks the return of the world\'s most sophisticated', '1999-01-01', '1999-02-12', 2100, 1998),
(358, 3, NULL, 'Bhopal Express', 'In 1984, a newlywed couple, Tara and Verma and the husband\'s best friend Bashir are caught up in the worst industrial accident in history when 40 tons of lethal gas leak from a poorly maintained Union Carbide plant in their town of Bhopal, ', '1999-01-01', '1999-02-05', 100, 0),
(359, NULL, NULL, 'Duplicate', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-19', 0, 0),
(360, 3, NULL, 'Hote Hote Pyar Hogayu', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-05', 0, 0),
(361, NULL, NULL, 'Hu Tu Tu', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-26', 0, 0),
(362, 3, NULL, 'Hum Aapke Dil Mein Rah Te Hain', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-05', 0, 0),
(363, 3, NULL, 'International Khiladi', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-26', 0, 0),
(364, NULL, NULL, 'Lal Baadshah', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-01-22', 0, 0),
(365, 3, NULL, 'Mann', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-02-26', 180, 0),
(366, NULL, NULL, 'Shaheed-e-Mohabbat', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-01-01', '1999-01-29', 0, 0),
(367, 0, NULL, 'The Siege', 'A special agent of the FBI, a case officer of the CIA, and a general in the U.S. Army have all taken the same oath- \'to support and defend the Constitution\' -but when a bus blows up in Brooklyn and a campaign of terror begins to make its bl', '1999-01-08', '1999-02-26', 109, 1998),
(368, 1, NULL, 'Little Voice', 'Based on the Olivier Award-winning London play, LITTLE VOICE follows the story of a young girl who can only express herself through famous vintage songs. She doesn\'t speak, but she can sing in the timeless voices of performers like Judy Gar', '1999-01-08', '1999-02-19', 99, 1998),
(369, 9, NULL, 'Pi', 'God and man and math: The tawdry meets the Talmudic in this complex thriller about a tortured computer genius trying to beat the stock market.', '1999-01-08', '1999-02-26', 85, 1998),
(370, 7, NULL, 'Meet Joe Black', 'When Death comes to meet the hugely succesful William Parrish, he decides to experience what life is like. He takes the form of a human and follows Parrish, allowing Parrish a longer life, so long as he learns about life. Nicknamed Joe Blac', '1999-01-15', '1999-02-12', 174, 1998),
(371, 1, NULL, 'The Opposite of Sex', 'Sixteen-year-old Deedee runs away from Louisiana to live with her half-brother Bill, an English teacher who happens to be gay. Lucia, Bill\'s sexually-repressed best friend, distrusts her. These suspicions are confirmed when Deedee lures Bil', '1999-01-15', '1999-02-12', 100, 1998),
(372, 1, NULL, 'Bulworth', 'Warren Beatty combines work, pleasure and politics in this wild political parody about a corrupt U.S. senator whose decision to have himself murdered liberates him from his paid-for platitudes and turns him into a rapturously rapping Mr. Sm', '1999-01-22', '1999-02-26', 107, 1999),
(373, 1, NULL, '54', 'He was a good-looking guy from a small, boring town in New Jersey... until he crossed the river into New York City and entered a world overflowing with luxury, sexual desire and decadence. A nightclub that was nothing less than the center o', '1999-01-22', '1999-03-19', 119, 1998),
(374, 7, NULL, 'Practical Magic', 'The two Owen sisters from a small Massachusetts are normal siblings- except they are actual witches. They use their magical powers to grant spells for love.', '1999-01-22', '1999-02-19', 115, 1998),
(375, 3, NULL, 'Hilary and Jackie', 'The touching and incredible true story of Jacqueline and Hilary du Pre, the gifted musical sisters who grew up in England in the 1950\'s. Written and produced as a tribute to Jackie, the story traces her rapid rise to international fame and ', '1999-01-22', '1999-03-12', 120, 1998),
(376, 1, NULL, 'Stepmom', 'Jackie and Luke had two hildren before they divorced. Since that time, Luke found Isabel who has a strong devotion to her work, even if she only has good intentions for the children when she is at home. However, Jackie can\'t cope with Isabe', '1999-01-29', '1999-03-05', 124, 1998),
(377, 1, NULL, 'Shakespeare in Love', 'The story unravels during the reign of Elizabeth I and tells the story of William Shakespeare. It asks the question: Who was Shakespeare&Atilde;‚\'s muse? The answer: Viola de Lesseps, a young noblewoman who dreams of acting on a man\'s stage. The y', '1999-01-29', '1999-03-19', 113, 1998),
(378, 0, NULL, 'Very Bad Things', 'The only thing that Kyle Fisher wants is to marry the woman he loves, Laura Garrety. All Laura wants is the wedding of her dreams. But before Kyle staggers down the aisle with his beautiful, controlling bride, his buddies decide to give the', '1999-01-29', '1999-03-12', 111, 1998),
(379, 3, NULL, 'Two Girls and a Guy', 'Robert Downey Jr. is an underworked New York actor getting a working over from two girlfriends who\'ve just discovered each other\'s existence in James Toback\'s fitfully funny and self-conscious look at love, lust, monogamy, fidelity and sexu', '1999-01-29', '1999-03-19', 92, 1997),
(380, 5, NULL, 'A Bug\'s Life', 'Life is no picnic for the ants on Ant Island!  Each summer, a gang of greedy grasshoppers - led by the menacing and manipulative Hopper - descends upon the colony to demand a hefty portion of the ants\' hard-earned harvest and generally make', '1999-02-05', '1999-02-26', 86, 1998),
(381, 14, NULL, 'How Stella Got Her Groove Back', 'Stella, a single mother at age 40, seems to have it all: a great job, a great home, and a bright loving young son. But she\'s lost her groove. Her friend urges her to vacation in Jamiaca where she flings with a young 20 year old native.', '1999-02-05', '1999-04-02', 130, 1998),
(382, 3, NULL, 'Hideous Kinky', 'Julia, the beautiful impetuous twenty five year-old single mother of Bea (8) and Lucy (6) has abandoned life in dreary London and brought her daughters to Marrakech, determined that they should enjoy a different upbringing to her own. It is', '1999-02-05', '1999-03-19', 98, 1998),
(383, 6, NULL, 'Madeline', 'MADELINE is about a little girl and her eleven friends, who live in a school run by Miss Clavel, in an old house in Paris. Madeline is the smallest and the most adventurous, but when stuffy Lord Covington threatens to close the school, she ', '1999-02-12', '1999-04-02', 88, 1998),
(384, 6, NULL, 'My Giant', 'Sam Kamin is a film agent whose career has just reached its natural end, when his final client, a Romanian paperboy, sacks him. Stranded in Romania without a hope of recovery, he happens upon a 7 1/2 foot giant, who rescues him from certain', '1999-02-12', '1999-04-09', 107, 1998),
(385, 3, NULL, 'Life Is Beautiful', 'A Jewish-Italian waiter is emotionally destroyed when his wife Dora, their young son, Giosue and he are sent to a Nazi concentration camp. Refusing to give up hope, Guido tries to protect his son\'s innocence by transforming their imprisonme', '1999-02-12', '1999-04-02', 114, 1998),
(386, 7, NULL, 'Jack Frost', 'Jack Frost is the tale of a man who\'s trying to be a father, a husband, a breadwinner, and he\'s trying to do what he loves to do. Ultimately he realizes that if you don\'t pay attention to the people dearest in your life -- your family -- yo', '1999-02-12', '1999-04-09', 105, 1998),
(387, 6, NULL, 'Don\'t go breaking my heart', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-02-12', '1999-03-12', 95, 1998),
(388, 0, NULL, 'Switchblade Sisters', 'Over 20,000 films, Trailers and Clips, Showtimes and Tickets, Reviews, New Releases, Stars...', '1999-02-12', '1999-03-12', 90, 1975),
(389, 6, NULL, 'Holy Man', 'In this sharp-edged, high-octane comedic look at life, love, and television home shopping, Murphy is an inspirational televangelist who hilariously proves his message -- that, in today\'s world, shopping by television can be a religious expe', '1999-02-19', '1999-03-26', 114, 1998),
(390, 0, NULL, 'Affliction', 'Based on the novel by Russell Banks, AFFLICTION is a sobering, absorbing psychological study of the precarious relationship between an abusive father and his two sons. Wade Whitehouse (Nick Nolte) is a middle-aged ineffectual sheriff in a s', '1999-02-19', '1999-03-12', 114, 1998),
(391, 1, NULL, 'This Year\'s Love', 'Story of three couples who, by chance, swap partners over the course of three years. Danny and Hannah start out getting married, but minutes later Danny hears that Hannah is being unfaithful, and so leaves her. He meets Mary while Hannah en', '1999-02-19', '1999-04-09', 108, 1999),
(392, 18, NULL, 'The Thin Red Line', 'A film about the soldiers who were sent to the Southern Pacific island of Guadalcanal in a last ditch surge to overpower the Japanese in 1943. The young recruits were replacing the advanced marine troops who were on their last legs. The imp', '1999-02-28', '1999-04-04', 146, 1998),
(393, 6, NULL, 'You\'ve Got Mail', 'The film tells of Kathleen Kelly, who owns a children\'s bookstore in New York. It is a small but profitable labor of love -- until Foxbooks, a mega-chain of super-sized bookstores, begins building across the street. Joe Fox, an executive wi', '1999-02-26', '1999-04-09', 116, 1998),
(394, 17, NULL, 'Urban Legend', 'When a series of strange deaths occurs on campus, beautiful and assertive student Natalie suspects that they are murders based on urban legends. Her classmates, loyal Brenda, ambitious journalism major Paul, and school practical joker Damon', '1999-02-26', '1999-04-16', 105, 1998),
(395, 3, NULL, 'Beloved', 'In this adaptation of Toni Morrison\'s Pulitzer Prize-winning novel we meet Sethe who is constantly haunted by her past on her journey to find freedom. When an old friend unexpectedly re-enters her life she realises that she may be able to r', '1999-03-05', '1999-04-09', 172, 1998),
(396, 1, NULL, 'Festen', 'A man celebrates his sixtieth birthday with friends, relatives, his wife and children. This is a film about love, hate, the icy charm of the bourgeoisie and the loving arms of the chambermaid. Danish dialogue.', '1999-03-05', '1999-04-16', 105, 1998),
(397, 7, NULL, 'Pleasantville', 'Two modern American teenagers are sucked into their television set and end up living in a black-and-white fifties sitcom. Bewildered by their new world\'s naivete and innocence, they slowly start to add color and spice to the town\'s life. Ev', '1999-03-12', '1999-05-07', 124, 1998),
(398, 1, NULL, 'Patch Adams', 'Hunter \'Patch\' Adams admitted himself to a mental hospital when he was young. He discovered that the doctors were unapproachable and this drove his mission to change medicine. He left the asylum to join a medical college, however unimpresse', '1999-03-12', '1999-04-02', 110, 1998),
(399, 3, NULL, 'Central Station', 'Dora is a lonely older woman whose life seems to have no point. Things change, however, when she befriends a homeless orphan, Josue, and she slowly rediscovers her heart. Portuguese dialogue.', '1999-03-12', '1999-04-02', 115, 0),
(400, 6, NULL, 'A Night at the Roxbury', 'It may have taken the Butabi Brothers seven years to graduate high school, but by now they\'ve realized there\'s more to life than working in their father\'s silk plant store. Their goal is to get into L.A.\'s #1 night spot -- the elegant Roxbu', '1999-03-19', '1999-04-30', 83, 1998);

-- --------------------------------------------------------

--
-- Structure de la table `ft_table`
--

DROP TABLE IF EXISTS `ft_table`;
CREATE TABLE IF NOT EXISTS `ft_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL DEFAULT 'toto',
  `groupe` enum('staff','student','other','') NOT NULL,
  `date_de_creation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ft_table`
--

INSERT INTO `ft_table` (`id`, `login`, `groupe`, `date_de_creation`) VALUES
(125, 'ait', 'other', '1991-11-03'),
(124, 'bouamar', 'other', '2005-10-15'),
(123, 'arbona', 'other', '1996-09-06'),
(122, 'renault', 'other', '1980-04-29'),
(121, 'belanyi', 'other', '1952-11-11'),
(120, 'lamory', 'other', '1969-03-08'),
(119, 'valet', 'other', '1979-08-24'),
(118, 'vaillier', 'other', '1988-12-19'),
(117, 'lienhart', 'other', '1955-04-15'),
(116, 'glachant', 'other', '1955-01-27');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` tinyint NOT NULL,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom`) VALUES
(0, 'detective'),
(1, 'dramatic comedy'),
(2, 'science fiction'),
(3, 'drama'),
(4, 'documentary'),
(5, 'animation'),
(6, 'comedy'),
(7, 'fantasy'),
(8, 'action'),
(9, 'thriller'),
(10, 'adventure'),
(11, 'various'),
(12, 'historical'),
(13, 'western'),
(14, 'romance'),
(15, 'music'),
(16, 'musical'),
(17, 'horror'),
(18, 'war'),
(19, 'unknow'),
(20, 'spying'),
(21, 'historical epic'),
(22, 'biography'),
(23, 'experimental'),
(24, 'short film'),
(25, 'erotic'),
(26, 'karate'),
(27, 'program'),
(28, 'family'),
(29, 'exp&amp;atilde;&amp;copy;rimental');

-- --------------------------------------------------------

--
-- Structure de la table `grille_programme`
--

DROP TABLE IF EXISTS `grille_programme`;
CREATE TABLE IF NOT EXISTS `grille_programme` (
  `id_film` int NOT NULL,
  `id_salle` int NOT NULL,
  `id_fiche_perso_ouvreur` int NOT NULL,
  `id_fiche_perso_technicien` int NOT NULL,
  `id_fiche_perso_menage` int NOT NULL,
  `debut_sceance` datetime NOT NULL,
  `fin_sceance` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_membre`
--

DROP TABLE IF EXISTS `historique_membre`;
CREATE TABLE IF NOT EXISTS `historique_membre` (
  `id_membre` int NOT NULL,
  `id_film` int NOT NULL,
  `date` datetime NOT NULL,
  KEY `id_membre` (`id_membre`),
  KEY `id_film` (`id_film`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique_membre`
--

INSERT INTO `historique_membre` (`id_membre`, `id_film`, `date`) VALUES
(14, 378, '1999-03-01 00:00:00'),
(14, 395, '1999-03-12 00:00:00'),
(14, 381, '1999-03-03 00:00:00'),
(14, 380, '1999-02-24 00:00:00'),
(14, 397, '1999-05-03 00:00:00'),
(14, 382, '1999-02-06 00:00:00'),
(14, 387, '1999-02-16 00:00:00'),
(18, 391, '1999-04-06 00:00:00'),
(18, 343, '1998-12-24 00:00:00'),
(18, 375, '1999-02-19 00:00:00'),
(18, 376, '1999-02-07 00:00:00'),
(18, 374, '1999-01-28 00:00:00'),
(20, 290, '1998-09-22 00:00:00'),
(20, 389, '1999-03-17 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id_job` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `salaire` varchar(255) NOT NULL,
  `cadre` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int NOT NULL,
  `id_fiche_perso` int NOT NULL,
  `id_abo` int DEFAULT NULL,
  `date_abo` datetime DEFAULT NULL,
  `id_dernier_film` int NOT NULL,
  `date_dernier_film` datetime DEFAULT NULL,
  `date_inscription` datetime DEFAULT NULL,
  PRIMARY KEY (`id_membre`),
  KEY `id_abo` (`id_abo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `id_fiche_perso`, `id_abo`, `date_abo`, `id_dernier_film`, `date_dernier_film`, `date_inscription`) VALUES
(1, 45, 2, '2004-08-25 00:00:00', 2154, '2004-09-12 00:00:00', '2004-07-09 00:00:00'),
(2, 225, 2, '2000-07-25 00:00:00', 1411, '2002-08-12 00:00:00', '2000-04-06 00:00:00'),
(3, 25, 0, '2004-04-18 00:00:00', 2482, '2005-06-27 00:00:00', '2001-09-24 00:00:00'),
(4, 116, 3, '1999-05-22 00:00:00', 845, '2000-11-08 00:00:00', '1999-04-15 00:00:00'),
(5, 224, 4, '1999-08-29 00:00:00', 1265, '2002-03-31 00:00:00', '1999-07-14 00:00:00'),
(6, 32, 2, '2004-12-16 00:00:00', 3011, '2006-08-26 00:00:00', '2004-10-17 00:00:00'),
(7, 7, 2, '2006-05-18 00:00:00', 3601, '2007-10-11 00:00:00', '2005-05-10 00:00:00'),
(8, 160, 1, '2003-12-25 00:00:00', 2098, '2004-07-18 00:00:00', '2001-10-02 00:00:00'),
(9, 44, 2, '2002-11-21 00:00:00', 2256, '2004-12-04 00:00:00', '2002-11-21 00:00:00'),
(10, 61, 2, '2004-06-28 00:00:00', 3452, '2007-07-08 00:00:00', '2004-04-06 00:00:00'),
(11, 122, 2, '2003-07-21 00:00:00', 2922, '2006-05-13 00:00:00', '2002-08-07 00:00:00'),
(12, 191, 4, '2007-03-24 00:00:00', 3571, '2007-10-27 00:00:00', '2005-05-05 00:00:00'),
(13, 101, 2, '2006-04-03 00:00:00', 2819, '2006-03-18 00:00:00', '2005-10-19 00:00:00'),
(14, 169, 0, '1999-05-25 00:00:00', 544, '1999-11-14 00:00:00', '1999-01-01 00:00:00'),
(15, 126, 4, '2003-12-12 00:00:00', 2025, '2004-04-04 00:00:00', '2003-07-26 00:00:00'),
(16, 96, 1, '2007-08-24 00:00:00', 3567, '2007-10-23 00:00:00', '2007-08-14 00:00:00'),
(17, 26, 0, '2007-07-17 00:00:00', 3615, '2007-11-12 00:00:00', '2005-10-11 00:00:00'),
(18, 98, 3, '2001-02-04 00:00:00', 821, '2000-10-30 00:00:00', '1998-10-02 00:00:00'),
(19, 27, 2, '2006-05-30 00:00:00', 3558, '2007-10-07 00:00:00', '2004-12-03 00:00:00'),
(20, 173, 0, '1998-09-04 00:00:00', 640, '2000-02-23 00:00:00', '1998-01-10 00:00:00'),
(21, 73, 1, '2003-04-24 00:00:00', 1724, '2003-06-12 00:00:00', '2001-11-01 00:00:00'),
(22, 187, 4, '2003-02-24 00:00:00', 2107, '2004-07-25 00:00:00', '2001-07-03 00:00:00'),
(23, 232, 0, '2005-03-25 00:00:00', 3595, '2007-10-30 00:00:00', '2005-02-28 00:00:00'),
(24, 205, 3, '2007-09-02 00:00:00', 3583, '2007-11-02 00:00:00', '2006-02-16 00:00:00'),
(25, 138, 1, '2007-10-27 00:00:00', 3602, '2007-11-09 00:00:00', '2006-11-15 00:00:00'),
(26, 163, 4, '1999-11-21 00:00:00', 0, NULL, '1998-01-13 00:00:00'),
(27, 70, 4, '2007-01-13 00:00:00', 3599, '2007-10-11 00:00:00', '2005-08-25 00:00:00'),
(28, 52, 2, '2007-08-15 00:00:00', 3575, '2007-11-08 00:00:00', '2004-08-18 00:00:00'),
(29, 62, 1, '2003-12-27 00:00:00', 2659, '2005-11-02 00:00:00', '2003-08-14 00:00:00'),
(30, 83, 0, '2002-03-15 00:00:00', 1456, '2002-09-25 00:00:00', '1999-03-27 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `id_personnel` int NOT NULL,
  `id_fiche_perso` int NOT NULL,
  `id_job` tinyint NOT NULL,
  `horraire` enum('','pm','am') NOT NULL,
  `date_recrutement` datetime NOT NULL,
  PRIMARY KEY (`id_personnel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reduction`
--

DROP TABLE IF EXISTS `reduction`;
CREATE TABLE IF NOT EXISTS `reduction` (
  `id_reduction` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_debut` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  `pourcentage_reduc` int NOT NULL,
  PRIMARY KEY (`id_reduction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reduction`
--

INSERT INTO `reduction` (`id_reduction`, `nom`, `date_debut`, `date_fin`, `pourcentage_reduc`) VALUES
(0, 'jeune', NULL, NULL, 30),
(1, 'vieux', NULL, NULL, 25),
(2, 'tres vieux', NULL, NULL, 40),
(3, 'malsch', NULL, NULL, -134),
(4, 'fete a neuneu', '2007-10-18 00:00:00', '2007-10-25 00:00:00', 35),
(5, 'sale con', NULL, NULL, -60),
(6, 'pognon++', '2007-08-03 00:00:00', '2007-08-25 00:00:00', -30),
(7, 'groupe', NULL, NULL, 35);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int NOT NULL,
  `numero_salle` tinyint NOT NULL,
  `nom_salle` varchar(255) NOT NULL,
  `etage_salle` int NOT NULL,
  `nbr_siege` int NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `numero_salle`, `nom_salle`, `etage_salle`, `nbr_siege`) VALUES
(0, 1, 'pouet', 0, 135),
(1, 2, 'machin', 0, 300),
(2, 3, 'salle 3', 0, 85),
(3, 10, 'caca', 1, 85),
(4, 11, 'bidule', 1, 125),
(5, 12, 'lapin', 1, 85),
(6, 13, 'bouffon', 1, 300),
(7, 14, 'toccard', 1, 85),
(8, 15, 'malsch', 1, 280),
(9, 16, 'boulet', 1, 125),
(10, 20, 'pwet', 2, 200),
(11, 21, 'mega salle', 2, 35),
(12, 22, 'schtroumpf', 2, 89),
(13, 23, 'bordel', 2, 225),
(14, 30, 'barbe_b', 3, 225),
(15, 31, 'smecta', 3, 38),
(16, 32, 'bisacodyl', 3, 130);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
