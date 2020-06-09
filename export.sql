-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 07 juin 2020 à 17:11
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_h2`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `date`) VALUES
(1, 'Paris', 'It is located in the heart of a vast sedimentary basin with fertile soils and a temperate climate, the Paris Basin, on a loop of the Seine, between its confluence with the Marne and Oise rivers. Paris is also the capital of the Île-de-France region and the centre of the Greater Paris metropolis, created in 2016. It is divided into districts, such as the cities of Lyon and Marseille, of which there are twenty. Since 1 January 2019, the city has had a special administrative status, known as the \"City of Paris\" (previously it was both a municipality and a department). The State has special prerogatives exercised by the Prefect of Police of Paris. The city underwent profound transformations during the Second Empire in the 1850s and 1860s through major works including the construction of wide avenues, squares and gardens and the construction of numerous buildings, directed by Baron Haussmann, giving the old medieval Paris the face it has today.\r\n\r\nThe city of Paris had a population of 2.187 million inhabitants on 1 January 2020. Its inhabitants are called Parisians. The Parisian agglomeration developed greatly during the 20th century, with 10.73 million inhabitants on 1 January 2020, and its urban area (the conurbation and the suburban ring) had 12.78 million inhabitants. The Paris conurbation is thus the most populous in France, the fourth most populous on the European continent and the 32nd most populous in the world on 1 January 2019.\r\n\r\nThe position of Lutetia, on the island now called the Ile de la Cité, allowing the crossing of the great navigable river that is the Seine by a route linking the north and south of the Gauls, has made it an important city since antiquity, capital of the Parisii, then home of a Roman emperor. Its position in the centre of the territory controlled by the Frankish kings made it choose as the capital of France instead of Tournai. Located in the heart of a fertile agricultural territory with a humid and mild climate, Paris became one of the main cities of France during the 10th century, with royal palaces, rich abbeys and a cathedral. During the 11th century, with the University of Paris, the city became one of the first centres in Europe for education and the arts. As royal power became established in the city, its economic and political importance continued to grow. Thus, at the beginning of the 14th century, Paris was one of the most important cities in the Christian world. In the seventeenth century, it was the capital of the main European political power; in the eighteenth century, one of the largest cultural centres in Europe; and in the nineteenth century, the capital of arts and pleasures. From the sixteenth to the twentieth centuries, Paris was the capital of the French colonial empire. Paris has therefore played a leading role in the history of Europe and the world for centuries.\r\n\r\nParis symbolizes French culture. In 2017 it is ranked as the most elegant city in the world. It is home to many monuments, nicknamed the City of Light, it attracts in 2019 nearly 34 million visitors and 17.5 million foreign visitors in 2018, making it in that year the sixth most visited city in the world and fourth capital. It is home to the world\'s largest and most visited art museum. Paris is the world capital of luxury. The world\'s first and third largest groups have their headquarters in Paris. Among the most valued luxury brands in the world, French brands are the most numerous and the first three are Parisian. Paris is the city with the most luxury hotels in the world in 2018. Every year Paris hosts the most prestigious international fashion week. This is the city where world-famous designers have worked and still work, and French luxury brands are internationally renowned. In the area of haute gastronomy Paris is the city with the most top tables in the world. The French capital is only twinned with one other city, Rome, which is also true in the other direction, with the slogan \"Only Paris is worthy of Rome, only Rome is worthy of Paris\".\r\n\r\nThe city is, with its suburbs, the economic capital of France. It is the country\'s leading financial and stock exchange centre. In 2017 the business district of La Défense is the largest in Europe and the fourth largest in the world in terms of attractiveness. Also in 2017 the Paris region will be home to more international institutions and the headquarters of very large companies than New York and London. In 2018 it will be the headquarters of two of the ten largest banks in the world. It is also the headquarters of European bodies such as the European Securities and Markets Authority and the European Banking Authority, and of international organisations such as UNESCO, OECD, ICC and FATF. The Paris region\r\n\r\n', 1519739083),
(2, 'Londres', 'The common name London can designate several different geographical or administrative areas, which can sometimes lead to confusion. Until 1889, the definition of \'London\' was reserved only for the square mile of the City of London, from which the city originated in Roman times. Following its enormous expansion, which caused the urban fabric to absorb the entire City of Westminster and other suburbs, the largest county of London was created in 1889, covering 303 km², and existed from 1889 to 1965: during this period the term London was identified with this area, which is now called Inner London. In 1965, the county of London was abolished in favour of the much larger Greater London, incorporating outer districts, now known as Outer London: the whole corresponds to today\'s huge city covering an area of 1,577 km² and with a population of 8,631,000 (2017).\r\n\r\nThe most common use refers to Greater London, one of the nine regional subdivisions of England, made up of the territory under the authority of the Greater London Authority and the Mayor of London. It is this area of approximately 1,600 km2 for 7.5 million inhabitants that is commonly referred to when referring to the British capital. Greater London is divided into two areas, Inner London and Outer London. Both areas are considered NUTS-2 regions. However, Greater London is not officially a city, whose status, which is strictly defined in the United Kingdom, is assigned to a city by the British monarch on the basis of specific criteria. Before its creation in 1965, the territory of Greater London was part of the counties of Kent, Middlesex, Surrey, Essex and Hertfordshire.\r\n\r\nThe City of London (abbreviated to City, or Square Mile in reference to its area of 1 square mile), located in the heart of Greater London, corresponds to the historical definition of London. This is where the modern city was born and it is now the oldest district of the capital. It is also a district in its own right with a special status. The City of London and the rest of Greater London11 form two different \"lieutenancy areas\".\r\n\r\n\r\nMap of the City of London, Central London, Greater London and the M25 motorway.\r\nThe vast London conurbation can be described by the London Metropolitan Area, which corresponds to the area occupied by the suburbs, and which occupies an area roughly similar to the Greater London area but with a slightly higher population. Beyond the urban region is the London commuter belt (London Metropolitan Area), which groups together the areas inhabited by people moving daily (commuters) to work in London. The London Metropolitan Area grew considerably during the Victorian era and again during the inter-war period. Its expansion stopped in the 1940s because of the Second World War and the so-called Green Belt policy, and its size has not changed much since then. The boundaries of the Metropolitan Police district and London\'s transport catchment area have changed over time but now roughly correspond to the Greater London area.\r\n\r\nOther terms such as Inner London, Outer London, Central London, North London, South London, East London, East End of London, West London or West End of London are sometimes used, untranslated, to refer to districts, statistical units or wards of London.\r\n\r\nUnlike many other capitals, London\'s status as the \"capital of the United Kingdom\" has never been officially granted to the city by decree or written charter. Its present position was established by constitutional convention, London being the seat of British power. Its status as a de facto capital makes it part of the unwritten constitution of the United Kingdom. The capital of England was transferred from Winchester to London after the Norman conquest.\r\n\r\nThe Romans may have marked the centre of Londinium with the London Stone, still visible at Cannon Street12. The coordinates of central London (traditionally located at Eleanor\'s Cross at Charing Cross, near the intersection of Trafalgar Square and Whitehall) are approximately 51° 30′ 29″ N, 0° 07′ 29″ O. Trafalgar Square has also become a central place for celebrations and events.\r\n\r\n', 1524836683),
(3, 'Rome', 'Rome is the capital of Italy. Located in the central-western part of the Italian peninsula, near the Tyrrhenian Sea, it is also the capital of the Lazio region, and was the capital of the Roman Empire for 357 years. In 2019, it has 2,844,395 inhabitants living on 1,285 km2 , making it the most populated municipality in Italy and the third largest in Europe after Moscow and London3. Its urban area will have 4,356,403 inhabitants in 20164,5. It also has the particularity of containing a landlocked state within its territory: the Vatican City-State (Stato della Città del Vaticano), of which the Pope is the sovereign. It is the only existing example of a state within a city.\r\n\r\nThe history of Rome spans more than twenty-eight centuries, from its mythical foundation by Romulus in 753 BC to its present role as the capital of the Italian republic. The second cradle of Western civilization after Athens, the city was successively the centre of the Roman monarchy, the Roman republic (509 BC - 27 BC), and then the Roman Empire (27 BC - 330). During this period, when the famous proverbial expression \"all roads lead to Rome\" was born, the city would have had between one and two million inhabitants and dominated Europe, North Africa and the Middle East both militarily and culturally, spreading in these territories the Latin language, its arts and techniques and the Christian religion. Since the first century it has been the seat of the Roman Catholic Church, within the Papal States (752-1870) and then Vatican City.\r\n\r\nConsiderably enlarged by major works under Julius Caesar and especially under Augustus, the city was partially destroyed during the Great Fire of Rome - the Circus Maximus in particular. From the 15th century onwards, almost all the popes since Nicholas V (1447-1455) perpetuated the tradition of Roman architecture and aspired to make Rome the main cultural and artistic centre of the West. The city became one of the centres of the Italian Renaissance, along with Florence and Venice, and gave birth to the Baroque style - to which its historic centre, classified by UNESCO as a World Heritage Site6 , still bears witness. Artists such as Michelangelo, Raphael and Bernini settled here and produced works such as St Peter\'s Basilica, the Sistine Chapel, the Trevi Fountain, the Capitol or Raphael\'s Rooms. In the 19th century, Rome was the symbol of Italian unity and became the capital of the Kingdom of Italy, then of the Republic after the Second World War.\r\n\r\nAs a world city, Rome is one of the main tourist destinations in Europe7. The Eternal City is one of the most beautiful cities in the world and has been visited by tourists since the eighteenth century. The seat of the papacy and the pilgrimage to Rome have made it a prominent place for Christians around the world for centuries. The Vatican Museums and the Colosseum are among the most visited sites. Rome is also one of the largest archaeological sites in the world, with many bridges and fountains, 900 churches, as well as a large number of museums and universities. In addition to tourism, the economy of the \"Eternal City\" is also oriented towards new technologies, media and telecommunications since the 2000s. Built on seven hills, the city is located near the mouth of the Tiber and is divided into twenty-two rioni. Rome also hosted the Summer Olympic Games in 1960. Rome is twinned with only one city, Paris: \"Only Paris is worthy of Rome, only Rome is worthy of Paris\".', 1535377483),
(4, 'Tokyo', 'Tokyo formerly Edo (江戸?), officially the Tokyo Metropolitan Prefecture (東京都, Tōkyō-to?), is de facto the current capital of Japan. It is the most populated of Japan\'s prefectures, with more than 13,831,421 inhabitants in 2018 and 42,794,714 in the agglomeration4, and is the most populated urban area in the world. Located on the east coast of the main island of the Japanese archipelago, Honshū, Tokyo is one of Japan\'s 47 prefectures. The main political centre of the archipelago since the 17th century, the city is home to most of the country\'s institutions: the main residence of the Emperor of Japan, the Prime Minister, the seat of the Diet (the Japanese parliament), the Cabinet, the ministries that make it up and all the foreign embassies.\r\n\r\nOriginally, Tokyo was a small fishing village called Edo (\"the estuary\"). Fortified in the 15th century, Edo became the military base of the Tokugawa Ieyasu shogun at the end of the 16th century, then the capital of his feudal government. During the Edo period (1603-1868), the city grew to become one of the most densely populated cities in the world by the end of the 18th century, with a population of nearly one million. With the restoration of the emperor in 1868, it was reinforced in its role as the political heart of Japan: Edo Castle became the residence of Emperor Meiji (Kōkyo), and the city acquired its present name as opposed to Kyoto, the former capital. It was devastated in 1923 by a magnitude 7.9 earthquake that killed more than 100,000 people. During the Second World War, half of the city was destroyed by American aerial bombardments. Incendiary bombs set the city ablaze, killing more than 100,000 people. The city was quickly rebuilt after the war. In the second half of the 20th century, Tokyo became a world-class metropolis thanks to strong industrial development - particularly in electronics - and saw its population multiply tenfold in fifty years.\r\n\r\nAs Japan\'s main economic and financial centre, Tokyo is one of Asia\'s and the world\'s leading financial centres. It is the world\'s leading city in terms of gross urban product5. The dynamic Shinjuku district is home to many skyscrapers, including the city hall, and several of Japan\'s department stores. Minato-ku is home to the headquarters of many Japanese and foreign companies, as well as about 50 embassies. Chiyoda is home to Japan\'s political institutions. Finally, Shibuya is reputed to be one of the most lively districts of the city, thanks to the presence of large shopping centres such as 109. Despite the modernity of its architecture, as evidenced by the Tokyo Skytree tower, many Shinto shrines and Buddhist temples have been rebuilt or, in some cases, partially preserved after the bombings, such as Sensō-ji, Yasukuni Shrine, Zōjō-ji or the gate Hōzōmon.\r\n\r\nSituated at the end of Tokyo Bay, Tokyo Commune has a special administrative status among the prefectures of Japan, the city of Tokyo having been abolished as a political or administrative entity in 1943. The Tokyo metropolitan area, which extends well beyond the boundaries of the prefecture, covers a large part of Tokyo Bay and the area of Kantō. It is also the main hub of the \"Japanese megalopolis\", including Osaka and Nagoya. The Prefecture organized the 1964 Summer Olympic Games and will host them again in 20216.\r\n', 1543326283),
(5, 'New York', 'New Yorka officially named City of New York, also known by the names and abbreviations of New York City or NYC, is the largest city in the United States by population and one of the largest on the American continent. It is located in the Northeast of the country, on the Atlantic coast at the southeastern tip of New York State. New York City consists of five boroughs called boroughs: Manhattan, Brooklyn, Queens, the Bronx and Staten Island. Its inhabitants are called New Yorkers.\r\n\r\nNew York has a significant impact on world trade, finance, media, art, fashion, research, technology, education, entertainment and tourism. Encompassing all the characteristics of a global city, it is sometimes referred to as \"the capital of the world\". Although New York City has not been the federal capital of the United States for more than two centuries (it served in that capacity from 1785 to 17902), for several decades New York fueled financial and political rivalry with Philadelphia.\r\n\r\nStill, New York City has been the most populous city in the United States since 1790, with 8,622,698 inhabitants according to the U.S. Census Bureau (20173,4 estimates) and the most populous English-speaking city in the world. It is also the third largest city on the American continent after Mexico City and São Paulo. Located in the heart of the BosWashc megalopolis, the New York City metropolitan area (20,320,876 inhabitants5 ) spans several New York State counties (eastern and northern suburbs) and encroaches on two neighbouring states. The State of New Jersey includes its western and southern suburbs, and the State of Connecticut includes its northeastern suburbs. The urban area of Connecticut had a population of 24 million in 20176.\r\n\r\nNew York City receives some 50 million visitors annually. Times Square, \"The Crossroads of the World\",10,11,12 is one of the world\'s most popular intersections,13 and the Broadway theatre district14 is the hub of entertainment throughout the country and a major centre of the entertainment industry worldwide.15 The New York City area is also home to the largest number of theatres in the world. The city is home to a large number of bridges and tunnels (78916 in 2012), skyscrapers and world-renowned parks17.\r\n\r\nNew York leads the triad of the world\'s major financial centres, along with London and Hong Kong, all three of which are referred to by the English-language media as \"Nylonkong \"18. The financial district of New York, anchored by Wall Street in Lower Manhattan, thus functions as the \"financial capital of the world \"19,20,21,22,23,24 and is home to the New York Stock Exchange, while the new One World Trade Center is the tallest skyscraper in North America. In addition, Manhattan\'s real estate market is among the most expensive in the world.\r\n\r\nOn September 11, 2001, New York City was hit by the most serious attack ever to hit the United States: two airliners hijacked by al-Qaeda terrorists hit the twin towers of the World Trade Center, destroying them entirely. In 2019, the reconstruction of the neighborhood is not yet complete. New York is one of the most cosmopolitan cities in the world, with its many ethnic neighborhoods. The best known are Little Italy, or Chinatown, which has the highest concentration of Chinese population in the Americas25,26,27,28. Finally, New York is home to institutions of global importance. These include the headquarters of the United Nations, but also many headquarters of multinational corporations,29 cultural centres such as the Metropolitan Museum of Art, the Brooklyn Museum, the Museum of Modern Art, the Lincoln Center and world-renowned theatres such as Madison Square Garden. Many renowned universities are located in New York, including the City University of New York, Columbia University, New York University, and Rockefeller University, which are ranked among the top 50 universities in the world.\r\n', 1545918283),
(6, 'Tlemcen', 'Tlemcen is a commune of the wilaya of Tlemcen, of which it is the chief town. It is located in the north-west of Algeria, 520 km west of Algiers, 140 km south-west of Oran and, close to the Moroccan border, 76 km east of the Moroccan city of Oujda. The city is built in the hinterland and is 40 km from the Mediterranean Sea.\r\n\r\nFormer capital of the Central Maghreb2, the city mixes Berber, Arab, Hispano-Moorish, Ottoman and Western influences3. From this mosaic of influences, the city derives the title of capital of Andalusian art in Algeria4. According to the author Dominique Mataillet, various titles are attributed to the city, including \"the pearl of the Maghreb \"5, \"the African Granada\" and \"the Medina of the West \"6.', 1547300683),
(7, 'Habsheim', 'Because of its foundation in a pre-national context and its supranational character, the Holy Roman Empire never led to the formation of a modern nation state, unlike France or the United Kingdom. The Holy Roman Empire remained a monarchical and corporate entity, ruled by an emperor and the imperial states, with very few imperial institutions as such.\r\n\r\nThe Holy Roman Empire is defined above all by negations:\r\n\r\nthe power of government of the empire is neither solely in the hands of the emperor of the Romans nor solely in those of the prince-electors or an assembly such as the Diet of the Empire.\r\nThe Empire can be considered neither as a federal state nor as a confederation.\r\nit is neither a mere aristocracy nor an oligarchy.\r\nHowever, the empire has characteristics of all these forms of state.\r\n\r\nAs an \"umbrella organization\", the empire encompasses many territories and serves as a legal framework for the cohabitation of different lords. These princes and dukes are almost autonomous but not sovereign. They recognise the emperor as the ruler of the empire and submit to the laws, jurisdictions and decisions of the Empire Diet, but take an active part in the imperial policy they influence, starting with electing the emperor but also participating in diets and other corporate representations. Unlike in other countries, the inhabitants were not the direct subjects of the emperor. Each immediate territory has its own lord, and each free city of the Empire has its mayor.\r\n\r\nThe Holy Roman Empire finally tends to be defined as a \"complementary state \"18 , a notion introduced in 1999 by Georg Schmidt (de)19 and which has become established20.\r\n\r\nThe history of the Holy Roman Empire is marked by the struggle over its nature. Unable to break through the regional headings of the territories, it eventually broke up into a shapeless confederation. It is the Kleinstaaterei', 1549866812),
(8, 'Le Cap', 'Cape Town is a city in South Africa, capital of the Cape Colony (1652-1910) and then of the Cape Province (1910-1994). It is currently the provincial capital of the Western Cape.\r\n\r\nSince 1910, Cape Town has also been the parliamentary capital of the country alongside Pretoria (administrative capital) and Bloemfontein (judicial capital).\r\n\r\nCape Town, founded in 1652, is considered the mother city of South Africa. The southernmost city on the African continent, it is established on the shores of Table Bay and is surmounted by Table Mountain topped by two peaks called Lion\'s Head and Devil\'s Peak. The city was named after the Cape of Good Hope, discovered by the Kingdom of Portugal, located more than 47 kilometres south of its historic centre.', 1552286012);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `id_article`, `text`, `user_id`) VALUES
(1, 3, 'Super article ! ', 4),
(2, 1, 'Combien faut il compter pour un déjeuner au restaurant ? ', 3),
(3, 1, 'Article inutile', 3),
(4, 4, 'J\'y étais aussi ! ', 5),
(5, 3, 'J\'ai attrapé le coronavirus la bas je ne recommande pas', 2),
(6, 1, 'Team merguez ou team chipo ? ', 1),
(7, 3, 'Globalement ce blog est super moche', 7),
(8, 2, 'fehrehre', 1),
(9, 2, ' eganjte', 1),
(10, 2, 'Test commentaire', 1),
(312, 1, 't\"é\"é', 1),
(313, 1, 'ok', 1),
(314, 1, '', 1),
(315, 1, 'gr', 1),
(318, 1, 'gre', 1),
(319, 1, '', 1),
(321, 1, 'gre', 1),
(322, 1, 'gez', 1),
(323, 1, 'gez', 1),
(324, 1, 'fger', 1),
(325, 1, 'fger', 1),
(326, 1, 'fe', 1),
(327, 1, 'fe', 1),
(328, 1, 'hufie', 1),
(329, 1, 'hufie', 1),
(330, 1, 'hufie', 1),
(331, 1, 'hufie', 1),
(332, 1, 'hufie', 1),
(333, 1, 'fzz\"', 1),
(334, 4, '', 1),
(335, 4, 'gezg', 1),
(336, 4, 'ger', 1),
(337, 5, 'hehhe', 1),
(338, 5, 'feee', 1),
(339, 5, 'uiuiui', 1),
(340, 5, 'gyugik', 1),
(341, 5, 'gyugyuk', 1),
(342, 2, 'fdbr', 1),
(343, 4, 'Super ville !', 1),
(344, 3, 'Test commentaire ', 1),
(345, 1, 'Nouveau test com', 1),
(346, 1, 'Last test com', 1),
(347, 2, 'Test', 1),
(348, 3, 'Test', 1),
(349, 1, '', 1),
(350, 1, 'g\'ezg\'z', 1),
(351, 1, '\"rté', 1),
(352, 7, 'Hello\r\n', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` enum('female','male','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `age`, `gender`) VALUES
(1, 'Bernard', 'Test123', 45, 'female'),
(2, 'toto', 'fezgFGPZ98', 41, 'male'),
(3, 'Tutu', 'ezgRGZUp985', 15, 'other'),
(4, 'egze', 'fegezrufeç', 45, 'female'),
(5, 'Tata', 'grerfRHnr45', 45, 'male'),
(6, 'tfeygfu', 'FGbfe85', 18, 'female'),
(7, 'Bueno', 'FEBFQvGEG52', 30, 'male'),
(8, 'fheui', 'feHUZ85', 18, 'female'),
(9, 'geFJ852', 'gfzbhZYH85', 25, 'female'),
(18, 'HalloLeMonde', 'fezgblYUO89653', 45, 'male'),
(19, 'hfeuzpm', 'GYFUKJyghbjfe852', 85, 'female'),
(20, 'fgzueilbk', 'fezkVHUIVK8965', 85, 'female'),
(21, 'htrHRE', 'HREpiL85', 25, 'other'),
(22, 'ezgyukhjl', 'tGUILfbn85', 23, 'male'),
(23, 'geYujh', 'gyhjYUK85', 23, 'male'),
(24, 'Bernard52', 'gyulGHL85', 20, 'male');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
