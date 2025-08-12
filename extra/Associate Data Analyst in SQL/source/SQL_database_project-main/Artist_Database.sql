DROP DATABASE IF EXISTS `artists_archive`;
CREATE DATABASE IF NOT EXISTS `artists_archive` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artists_archive`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    
-- ------------------------------------------------------
-- Server version	8.0.26

--This project was designed by @abolaji opeyemi(Linkedin) Yemi-Ken(Github)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `archive_dictionary`
--

DROP TABLE IF EXISTS `archive_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_dictionary` (
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `description` text,
  `datatype` varchar(50) DEFAULT NULL,
  `related_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_dictionary`
--

LOCK TABLES `archive_dictionary` WRITE;
/*!40000 ALTER TABLE `archive_dictionary` DISABLE KEYS */;
INSERT INTO `archive_dictionary` VALUES ('artist','assigned_artists_id','Unique ID assigned to each artist','INT',''),('artist','artist_name','The name of the artist','VARCHAR','label_name'),('artist','social_handle','The social media ID of the artist (IG)','VARCHAR',''),('artist','email','The emai address of the artist','VARCHAR',''),('artist','debut_year','The debut year of the artist','INT',''),('artist','country','Country of the artist','INT','geolocation'), ('artist','total_streams','Total play of artist songs on music platforms','float',''),('song_producer','producer_name','Name of producer of artist debut song','VARCHAR',''),('song_producer','song_title','Title of debut song from the artist','VARCHAR','spotify_stream, youtube_views'), ('song_producer','year_of_release','Year of song debut release','INT',''),('song_producer','artist_name','Name of artist whose song was produced and released','VARCHAR',''),('genre','song_title','Title of categorised song','VARCHAR','artist_name'),('genre','genre','Category or style of the song','INT',''),('genre','song_id','Unique ID assigned to each song','VARCHAR',''),('song_distribution','song_id','Unique ID assigned to each song','VARCHAR',''),('song_distribution','song_title','Title of the artist debut song','VARCHAR',''),('song_distribution','artist_name','Name of the artist whose song was streamed','VARCHAR',''),('song_distribution','spotify_stream','The total spotify streams estimates in Thousand','float',''),('song_distribution','youtube-views','The total youtube views estimates in thousand','float',''),('song_distribution','producer_name','Name of the producer of each song','VARCHAR',''),('record_label','assigned-artist_id','Unique ID assigned to each artist','INT',''),('record_label','artist_name','Name of the artist','VARCHAR',''),('record_label','country','The country of origin of the artist','VARCHAR','assigned_artist_id'),('geolocation','continent','Continent of artist birth place','VARCHAR',''),('geolocation','country','Country of music production','VARCHAR','artist_name');
/*!40000 ALTER TABLE `archive_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `assigned_artist_id` int NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `social_handle` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `debut_year` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`assigned_artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('1566','Karol G',NULL,NULL,'234 Bellford Booulvevard','Female','2017','Colombia'),('8472','Blackpink',NULL,NULL,'719 Elmwood Lane','Group','2020','South Korea'),('1593','Bad Bunny',NULL,NULL,'502 Oakridge Avenue','Male','2018','Puerto Rico'),('7328','Shakira',NULL,NULL,'815 Pinecrest Drive','Female','1990','Colombia'),('4056','BTS',NULL,NULL,'326 Maplewood Street','Group','2013','South Korea'),('6219','Taylor Swift',NULL,NULL,'111 Willowbrook Road','Female','2002','United States'),('8743','The Weeknd',NULL,NULL,'933 Cedarhurst Avenue','Male','2013','Canada'),('2381','Anuel AA',NULL,NULL,'648 Lakeview Terrace','Male','2018','Puerto Rico'),('5067','Grupo Frontera',NULL,NULL,'208 Sunnyside Boulevard','Group',NULL,'Not specified'),('9134','Peso Pluma',NULL,NULL,'415 Hillcrest Avenue','Group',NULL,'Not specified'),('7451','Feid',NULL,NULL,'557 Birchwood Lane','Male','2015','Colombia'),('3026','Bizarrap',NULL,NULL,'746 Meadowbrook Drive','Male',NULL,'Argentina'),('5896','Fuerza Regida',NULL,NULL,'823 Riverside Avenue','Group',NULL,'Mexico'),('2147','Gustavo Lima',NULL,NULL,'339 Forest Hills Drive','Male','2010','Brazil'),('7685','Henrique e Juliano',NULL,NULL,'622 Brookside Street','Group','2012','Brazil'),('4310','Eminem',NULL,NULL,'128 Greenbriar Lane','Male','1996','United States'),('6975','Romeo Santos',NULL,NULL,'741 Springdale Road','Male','2011','United States (of Dominican descent)'),('8264','Ed Sheeran',NULL,NULL,'906 Magnolia Court','Male','2011','United Kingdom'),('5703','Sidhu Moose',NULL,NULL,'359 Highland Avenue','Male',NULL,'India'),('1967','Myke Towers',NULL,NULL,'524 Valleyview Drive','Male','2016','Puerto Rico'),('3405','Rauw Alejandro',NULL,NULL,'223 Oakwood Lane','Male','2018','Puerto Rico'),('9872','Marília Mendonça',NULL,NULL,'910 Willow Street','Female','2016','Brazil'),('6254','Stray Kids',NULL,NULL,'433 Cedar Lane','Group','2018','South Korea'),('1380','YoungBoy Never Broke Again',NULL,NULL,'679 Birchwood Court','Male','2018','United States'),('8795','Coldplay',NULL,NULL,'837 Lakeside Drive','Group','2000','United Kingdom'),('5061','Ozuna',NULL,NULL,'565 Alake lane','Male','2017','Puerto Rico'),('2749','Imagine Dragons',NULL,NULL,'301 Maple Avenue','Group','2012','United States'),('4506','Justin Bieber',NULL,NULL,'526 Sunnyside Terrace','Male','2010','Canada'),('7193','Miley Cyrus',NULL,NULL,'721 Hillcrest Court','Female','2007','United States'),('5821','Yo Yo Honey Singh',NULL,NULL,'843 Meadow Lane','Male',NULL,'India'),('3067','Grupo Firme',NULL,NULL,'432 Riverside Drive','Group',NULL,'Mexico'),('9241','Zé Neto e Cristiano',NULL,NULL,'625 Forestview Avenue','Group','2012','Brazil'),('1356','Daddy Yankee',NULL,NULL,'126 Brookside Court','Male','1995','Puerto Rico'),('7892','TWICE',NULL,NULL,'339 Greenfield Road','Group','2015','South Korea'),('5607','Hariharan',NULL,NULL,'548 Springview Lane','Male','1996','India'),('3482','Bruno Mars',NULL,NULL,'737 Magnolia Avenue','Male','2010','United States'),('6719','Rihanna',NULL,NULL,'929 Highland Drive','Female','2005','Barbados'),('8204','Maluma',NULL,NULL,'120 Valley Road','Male','2012','Colombia'),('4937','Post Malone',NULL,NULL,'705 Oakhurst Lane','Male','2016','United States'),('1675','Michael Jackson',NULL,NULL,'816 Willowbrook Avenue','Male','1972','United States'),('7450','Lady Gaga',NULL,NULL,'343 Cedarwood Drive','Female','2008','United States'),('2893','Los Ángeles Azules',NULL,NULL,'552 Lakeview Road','Group','1986','Mexico'),('6018','Chris Brown',NULL,NULL,'719 Birchwood Avenue','Male','2005','United States'),('7349','Ariana Grande',NULL,NULL,'929 Sunnyside Drive','Female','2013','United States'),('4825','Linkin Park',NULL,NULL,'246 Hillcrest Lane','Group','2000','United States'),('9156','Christian Nodal',NULL,NULL,'498 Meadowbrook Boulevard','Male','2017','Mexico'),('3607','David Guetta',NULL,NULL,'643 Riverside Terrace','Male','2002','France'),('8714','Yoasobi',NULL,NULL,'831 Forest Hills Avenue','Group','2021','United States'),('5490','Maroon 5',NULL,NULL,'227 Brookside Drive','Group','2002','United States'),('2763','Selena Gomez',NULL,NULL,'316 Greenbriar Road','Female','2013','Colombia'),('6815','Rod Wave',NULL,NULL,'524 Springdale Street','Male','2019','United States'),('7390','Arcangel',NULL,NULL,'747 Magnolia Lane','Male','2008','United States (of Dominican descent)'),('4258','Drake',NULL,NULL,'903 Highland Court','Male','2010','Canada'),('1963','Beyoncé',NULL,NULL,'110 Valleyview Drive','Female','2003','United States'),('8075','Maria Becerra',NULL,NULL,'304 Oakwood Road','Female','2022','Argentina'),('5429','Natanael Cano',NULL,NULL,'527 Willow Lane','Male',NULL,'Mexico'),('9816','Billie Eilish',NULL,NULL,'739 Cedarhurst Boulevard','Female','2019','United States'),('3674','Yuridia',NULL,NULL,'828 Birchwood Place','Female','2005','Mexico'),('5180','NewJeans',NULL,NULL,'239 Lakeside Avenue','Group',NULL,'Argentina'),('2457','Eladio Carrión',NULL,NULL,'495 Maplewood Lane','Male','2017','Puerto Rico'),('6903','La K\'onga',NULL,NULL,'618 Sunnyside Drive','Group',NULL,'Bolivia'),('8314','Marshmello',NULL,NULL,'733 Hillcrest Road','Male','2016','United States'),('4728','Katy Perry',NULL,NULL,'820 Meadowview Court','Female','2008','United States'),('1596','Carin Leon',NULL,NULL,'345 Riverside Avenue','Male','2020','Mexico'),('7834','Enrique Iglesias',NULL,NULL,'535 Forest Hills Drive','Male','1995','Spain'),('6250','Cartel de Santa',NULL,NULL,'717 Brookside Lane','Group','2003','Mexico'),('3948','J Balvin',NULL,NULL,'910 Greenbriar Street','Male','2007','Colombia'),('7401','Gummibär',NULL,NULL,'129 Springview Court','Male','2007','Hungary'),('2876','Dua Lipa',NULL,NULL,'330 Magnolia Lane','Female','2017','United Kingdom'),('5062','Adele',NULL,NULL,'545 Highland Avenue','Female','2008','United Kingdom'),('4894','Arijit Singh',NULL,NULL,'720 Valley Road','Male','2011','India'),('9165','Alan Walker',NULL,NULL,'921 Oakhurst Drive','Male','2018','United Kingdom'),('5723','Crazy Frog',NULL,NULL,'248 Willowbrook Terrace','Group','2006','Sweden'),('4038','Doja Cat',NULL,NULL,'416 Cedarwood Avenue','Female','2018','United States'),('6782','Eslabon Armado',NULL,NULL,'629 Lakeview Lane','Group','2018','United States (of Mexican descent)'),('9217','Ana Castela',NULL,NULL,'743 Birchwood Road','Female',NULL,'Not specified'),('1456','Seventeen',NULL,NULL,'801 Sunnyside Drive','Group','2015','South Korea'),('7890','Patati Patatá',NULL,NULL,'236 Hillcrest Avenue','Group','2004','Brazil'),('5613','Jorge & Mateus',NULL,NULL,'499 Meadowbrook Drive','Group','2007','Brazil'),('8493','TINI',NULL,NULL,'620 Riverside Lane','Female','2016','Argentina'),('3487','Sebastián Yatra',NULL,NULL,'819 Forestview Road','Male','2013','Colombia'),('6729','Lil Baby',NULL,NULL,'334 Greenfield Lane','Male','2018','United States'),('8294','50 Cent',NULL,NULL,'549 Springview Court','Male','2003','United States'),('4963','Banda MS',NULL,NULL,'742 Magnolia Boulevard','Group','2003','Colombia'),('1678','The Black Eyed Peas',NULL,NULL,'905 Highland Terrace','Group','1998','United States'),('7480','(G)I-DLE',NULL,NULL,'111 Valleyview Drive','Group','2018','South Korea'),('2803','Ado',NULL,NULL,'305 Oakwood Lane','Male',NULL,'China'),('6048','Hugo & Guilherme',NULL,NULL,'532 Willowbrook Avenue','Group',NULL,'Brazil'),('7319','Badshah',NULL,NULL,'737 Cedarhurst Road','Male','2018','India'),('4895','Morgan Wallen',NULL,NULL,'821 Birchwood Court','Male','2018','United States'),('9106','MC Cabelinho',NULL,NULL,'245 Lakeside Drive','Male', NULL,'Brazil'),('3657','Aventura',NULL,NULL,'504 Maplewood Road','Group','1995','United States (of Dominican descent)'),('8741','Becky G',NULL,NULL,'628 Sunnyside Lane','Female','2019','United States'),('5460','Don Omar',NULL,NULL,'711 Hillcrest Street','Male','2003','Puerto Rico'),('2738','El Alfa',NULL,NULL,'817 Meadowview Avenue','Male','2018','Dominican Republic'),('6891','Lil Durk',NULL,NULL,'338 Riverside Court','Male','2018','United States'),('4215','CantaJuego',NULL,NULL,'549 Forest Hills Drive','Group','2004','Spain'),('1946','Rosalía',NULL,NULL,'728 Brookside Terrace','Female','2017','Spain'),('8025','Luan Santana',NULL,NULL,'913 Greenbriar Avenue','Male','2009','Brazil'),('5479','Sia',NULL,NULL,'121 Springview Lane','Female','1997','Australia'),('9846','Manuel Turizo',NULL,NULL,'326 Magnolia Road','Male','2018','Colombia'),('3694','Ahmed Saad',NULL,NULL,'530 Highland Boulevard','Male',NULL,'Egypt'),('5130','Junior H',NULL,NULL,'715 Valley Road','Male','2019','Mexico'),('5446','Blessd',NULL,NULL,'670 Bread Avenue','Male', NULL,'United States');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_producer`
--

DROP TABLE IF EXISTS `song_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_producer` (
  `producer_name` varchar(255) DEFAULT NULL,
  `song_title` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_producer`
--
LOCK TABLES `song_producer` WRITE;
/*!40000 ALTER TABLE `song_producer` DISABLE KEYS */;
INSERT INTO `song_producer` VALUES ('Karol G','En La Playa','2006','Karol G'),('Teddy Park& R.Tee& 24& Bekuh Boom','Boombayah','2020','Blackpink'),('bad bunny','Soy Peor','2018','Bad Bunny'),('Shakira','Magia','1990','Shakira'),('Pdogg& Bang Si-hyuk','No More Dream','2013','BTS'),('Nathan Chapman& Taylor Swift','Tim McGraw','2002','Taylor Swift'),('Jeremy Rose& The Weeknd','Wicked Games','2013','The Weeknd'),('Eddie perez&SP Blanco','No Me Vuelvo a Enamorar','2008','Anuel AA'),('Grupo Frontera','No se va(cover)','2022','Grupo Frontera'),('Peso Pluma','Jeraqui de Nivel (En Vivo)','2020','Peso Pluma'),('Feid','No Es Casualidad','2014','Feid'),('Bizarrap','Nunca Estuve Acá','2019','Bizarrap'),('Fuerza Regida','Pedro del Valle','2018','Fuerza Regida'),('Gustavo Lima','Inventor dos Amores','2010','Gustavo Lima'),('Henrique e Juliano','Mistura Louca','2012','Henrique e Juliano'),('Dr. Dre','My Name Is','1996','Eminem'),('Romeo Santos','You','2011','Romeo Santos'),('Jake Gosling& Ed Sheeran','The A Team','2011','Ed Sheeran'),('Deep Jandu','G Wagon','2017','Sidhu Moose'),('Myke Towers','La Playa','2016','Myke Towers'),('Rauw Alejandro','Hola','2014','Rauw Alejandro'),('Marília Mendonça','Infiel','2016','Marília Mendonça'),('3Racha','District 9','2018','Stray Kids'),('DMacTooBangin','Outside Today','2018','YoungBoy Never Broke Again'),('Crash& Coldplay','Brothers & Sisters','1999','Coldplay'),('Ozuna','Imaginando','2012','Ozuna'),('Alex da Kid& Imagine Dragons','It\'s Time','2012','Imagine Dragons'),('Soundz','One Time','2010','Justin Bieber'),('Antonina Armato& Miley Cyrus','Meet Miley Cyrus','2007','Miley Cyrus'),('YYHS','Choot Vol 1','2009','Yo Yo Honey Singh'),('Grupo Firme','Perdóname','2017','Grupo Firme'),('ZNC','Seu Polícia','2012','Zé Neto e Cristiano'),('DJ Playero& DJ Nelson','No Mercy','1995','Daddy Yankee'),('Park Jin-young','Like OOH-AHH','2015','TWICE'),('Hariharan','Ajeeb Sa neha Mujh Par Guzar gaya yaaron','1996','Hariharan'),('The Smeezingtons','Just the Way You Are','2010','Bruno Mars'),('Carl Sturken& Evan Rogers','Pon de Replay','2005','Rihanna'),('Maluma','Farandulera','2012','Maluma'),('FKi 1st& Post Malone','White Iverson','2016','Post Malone'),('Michael Jackson','Got to Be There','1972','Michael Jackson'),('RedOne& Lady Gaga','Just Dance','2008','Lady Gaga'),('LAZ','Ella Te Ama','1964','Los Ángeles Azules'),('Sean Garrett','Run It!','2005','Chris Brown'),('Thomas Brown& Ariana Grande','Put Your Hearts Up','2013','Ariana Grande'),('Don Gilmore','One Step Closer','2000','Linkin Park'),('Christian Nodal','Adiós Amor','2017','Christian Nodal'),('David Guetta','Just a Little More Love','2002','David Guetta'),('Yaosobi','Yoru ni Kakeru','2019','Yoasobi'),('Matt Wallace& Maroon 5','Harder to Breathe','2002','Maroon 5'),('RedOne','Tell Me Something I Don\'t Know','2013','Selena Gomez'),('Rod Wave','Gambling','2016','Rod Wave'),('Arcangel','Voy A Matarlo','2006','Arcangel'),('Noah "40" Shebib& Drake','Best I Ever Had','2010','Drake'),('Rich Harrison& Beyoncé','Work It Out','2003','Beyoncé'),('Maria becerra','High','2019','Maria Becerra'),('Natanael cano','El De Los Lentes Gucci','2018','Natanael Cano'),('Finneas O\'Connell& Billie Eilish','Ocean Eyes','2019','Billie Eilish'),('Azteca Music','Sobreviviré','2005','Yuridia'),('Min Hee-jin& 250& Park Jin-su','Attention','2022','NewJeans'),('Eladio Carrión','Netflix','2015','Eladio Carrión'),('La K\'onga','Que los cumplas feliz','1985','La K\'onga'),('Marshmello','Wavez','2015','Marshmello'),('Glen Ballard','Ur So Gay','2008','Katy Perry'),('Carin Leon','Mejor Que Tú','2016','Carin Leon'),('Rafael Pérez-Botija& Enrique Iglesias','Si Tú Te Vas','1995','Enrique Iglesias'),('Mauricio Garza','Factor Miedo','2003','Cartel de Santa'),('j Balvin','Panas','2007','J Balvin'),('Gummibär','I Am A Gummy Bear','2006','Gummibär'),('Andrew Wyatt& Dua Lipa','New Love','2017','Dua Lipa'),('Jim Abbiss& Adele','Hometown Glory','2008','Adele'),('Arijit Singh','Phir Mohabbat','2011','Arijit Singh'),('Alan Walker','Faded','2018','Alan Walker'),('Bass Bumpers& Off-cast Project','Axel F','2005','Crazy Frog'),('Doja Cat','SH◉RT H▲IR M▲FI▲ ▲NTHEM (CVT)','2012','Doja Cat'),('Eslabon Armado','Con Tus Besos','2018','Eslabon Armado'),('Eduardo Godoy','Boiadeira','2021','Ana Castela'),('Seventeen','Adore U','2015','Seventeen'),('Patati Patatá','No Reino Encantado dos Animais','1983','Patati Patatá'),('Jorge & Mateus','Pode Chorar','2007','Jorge & Mateus'),('TINI','Tu Resplandor','2011','TINI'),('Sebastián Yatra','El Psicólogo','2013','Sebastián Yatra'),('Earl on the Beat','Racks In','2018','Lil Baby'),('Dr Dre& Eminem','Wanksta','2003','50 Cent'),('Banda MS','No Me Pidas Perdón','2003','Banda MS'),('will.i.am& The Black Eyed Peas','Joints & Jam','1998','The Black Eyed Peas'),('DLE','LATATA','2018','(G)I-DLE'),('Ado','Jama','2019','Ado'),('Willi Baldo','Vê Se Pode (Ao Vivo)','2016','Hugo & Guilherme'),('Badshah','DJ Waley Babu','2018','Badshah'),('Bill Appleberry','Stay (The Voice Performance)','2014','Morgan Wallen'),('Rennan da Penha','Toda Hora','2016','MC Cabelinho'),('Romeo Santos','Obsesión','1995','Aventura'),('Becky G','Becky from the Block','2019','Becky G'),('Don Omar','Dile','2003','Don Omar'),('El Alfa','Palmolive','2018','El Alfa'),('Lil Durk','RIP MOE','2009','Lil Durk'),('CantaJuego','Canción de Cuna','2005','CantaJuego'),('Rosalía','Catalina','2017','Rosalía'),('Luan Santana','Tô de Cara','2009','Luan Santana'),('Jesse Shatkin& Sia','Taken for Granted','1997','Sia'),('Manuel Turizo','Una Lady Como Tú','2018','Manuel Turizo'),('Hazem Raafat','Ashky Le Meen','2003','Ahmed Saad'),('Junior H','Amanecí Con Ganas','2019','Junior H'),('Lil Jay (Producer)','Contigo','2018','Blessd');

/*!40000 ALTER TABLE `song_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `song_title` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `assigned_artist_id` int DEFAULT NULL,
  PRIMARY KEY (`song_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES('En La Playa','Reggaeton','1566'),('Boombayah','K-pop','8472'),('Soy Peor','Reggaeton','1593'),('Magia','Pop','7328'),('No More Dream','K-pop','4056'),('Tim McGraw', 'Country', '6219'),('Wicked Games', 'R&B', '8743'),('No Me Vuelvo a Enamorar','Reggaeton','2381'),('No se va(cover)','Latin Pop','5067'),('Jeraqui de Nivel (En Vivo)','Regional Mexican','9134'),('No Es Casualidad', 'Reggaeton','7451'),('Nunca Estuve Acá','Hip Hop','3026'),('Pedro del Valle','Regional Mexican','5896'),('Inventor dos Amores','Sertanejo','2147'),('Mistura Louca','Sertanejo','7685'),('My Name Is','Hip Hop','4310'),('You', 'Bachata','6975'),('The A Team','Pop','8264'),('G Wagon','Hip Hop','5703'),('La Playa','Reggaeton','1967'),('Hola','Reggaeton','3405'),('Infiel','Regional Mexican','9872'),('District 9','K-pop','6254'),('Outside Today','Hip Hop','1380'),('Brothers & Sisters','Alternative Rock','8795'),('Imaginando','Reggaeton', '5061'),('It\'s Time','Alternative Rock','2749'),('One Time','Pop','4506'),('Meet Miley Cyrus','Pop','7193'),('Choot Vol 1','Indian Pop','5821'),('Perdóname', 'Banda','3067'),('Seu Polícia','Sertanejo','9241'),('No Mercy','Reggaeton','1356'),('Like OOH-AHH','K-pop','7892'),('Ajeeb Sa neha Mujh Par Guzar gaya yaaron', 'Indian Pop','5607'),('Just the Way You Are','Pop','3482'),('Pon de Replay','Pop','6719'),('Farandulera','Reggaeton','8204'),('White Iverson','Hip Hop','4937'),('Got to Be There','R&B','1675'),('Just Dance','Pop','7450'),('Ella Te Ama','Cumbia','2893'),('Run It!','R&B','6018'),('Put Your Hearts Up','Pop','7349'),('One Step Closer','Alternative Rock','4825'),('Adiós Amor','Banda','9156'),('Just a Little More Love','Electronic','3607'),('Yoru ni Kakeru','J-Pop','8714'),('Harder to Breathe','Alternative Rock','5490'),('Tell Me Something I Don\'t Know','Pop','2763'),('Gambling','Hip Hop','6815'),('Voy A Matarlo','Reggaeton','7390'),('Best I Ever Had','Hip Hop','4258'),('Work It Out','Pop','1963'),('High','Reggaeton','8075'),('El De Los Lentes Gucci','Reggaeton','5429'),('Ocean Eyes','Pop','9816'),('Sobreviviré','Latin Pop','3674'),('Attention','Pop','5180'),('Netflix','Reggaeton','2457'),('Que los cumplas feliz','Cumbia','6903'),('Wavez','Electronic','8314'),('Ur So Gay','Pop','4728'),('Mejor Que Tú','Banda','1596'),('Si Tú Te Vas','Latin Pop','7834'),('Factor Miedo','Hip Hop','6250'),('Panas','Reggaeton','3948'),('I Am A Gummy Bear','Children\'s Music','7401'),('New Love','Pop','2876'),('Hometown Glory','Pop','5062'),('Phir Mohabbat','Indian Pop','4894'),('Faded','Electronic','9165'),('Axel F','Electronic','5723'),('SH◉RT H▲IR M▲FI▲ ▲NTHEM (CVT)','Electronic','4038'),('Con Tus Besos','Banda','6782'),('Boiadeira','Sertanejo','9217'),('Adore U','K-pop','1456'),('No Reino Encantado dos Animais','Children\'s Music','7890'),('Pode Chorar','Sertanejo','5613'),('Tu Resplandor','Latin Pop','8493'),('El Psicólogo','Reggaeton','3487'),('Racks In','Hip Hop','6729'),('Wanksta','Hip Hop','8294'),('No Me Pidas Perdón','Banda', '4963'),('Joints & Jam','Hip Hop','1678'),('LATATA','K-pop','7480'),('Jama','J-pop','2803'),('Vê Se Pode (Ao Vivo)','Sertanejo','6048'),('DJ Waley Babu','Indian Pop','7319'),('Stay (The Voice Performance)','Country','4895'),('Toda Hora','Bossa Nova','9106'),('Obsesión','Bachata','3657'),('Becky from the Block','Pop', '8741'),('Dile','Reggaeton','5460'),('Palmolive','Hip Hop','2738'),('RIP MOE','Hip Hop','6891'),('Canción de Cuna','Children\'s Music','4215'),('Catalina','Latin Pop','1946'),('Tô de Cara','Sertanejo','8025'),('Taken for Granted','Pop','5479'),('Una Lady Como Tú','Reggaeton','9846'),('Ashky Le Meen','Arabic Pop','3694'),('Amanecí Con Ganas','Banda','5130'),('Contigo','Reggaeton','5446');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_distribution`
--

DROP TABLE IF EXISTS `song_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_distribution` (
  `song_id` varchar(25) NOT NULL,
  `song_title` varchar(255) DEFAULT NULL,
  `assigned_artist_id` int DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `spotify_stream` bigint DEFAULT NULL,
  `youtube_views` bigint DEFAULT NULL,
  `producer_name` varchar(255) DEFAULT NULL,
  `updated_debut_year` int DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `assigned_artist_id` (`assigned_artist_id`),
  CONSTRAINT `song_ditribution_ibfk_1` FOREIGN KEY (`assigned_artist_id`) REFERENCES `artist` (`assigned_artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_distribution`
--

LOCK TABLES `song_distribution` WRITE;
/*!40000 ALTER TABLE `song_distribution` DISABLE KEYS */;

--
-- Dumping data for table `song_distribution`
--

LOCK TABLES `song_distribution` WRITE;
/*!40000 ALTER TABLE `song_distribution` DISABLE KEYS */;
INSERT INTO `song_distribution` VALUES ('A1X2B3','En La Playa','1566','Karol G','19563848230','4769114273','Karol G','2006'),('C4D5E6','Boombayah','8472','Blackpink','11464951805','3940369921','Teddy Park& R.Tee& 24& Bekuh Boom','2020'),('F7G8H9','Soy Peor','1593','Bad Bunny','66548829469','3932947108','Bad Bunny','2018'),('I6J1K2','Magia','7328','Shakira','17778138721','3072322064','Shakira','1990'),('L3M4N5','No More Dream','4056','BTS','36487955270','3033439453','Pdogg& Bang Si-hyuk','2013'),('O6P7Q8','Tim McGraw','6219','Taylor Swift','67162432052','2865941679','Nathan Chapman& Taylor Swift','2002'),('R9S4T1','Wicked Games','8743','The Weeknd','51199912919','2835505938','Jeremy Rose& The Weeknd','2013'),('U2V3W4','No Me Vuelvo a Enamorar','2381','Anuel AA','5813039859','2541415580','Eddie perez&SP Blanco','2008'),('X5Y6Z7','No se va(cover)','5067','Grupo Frontera','4489760689','2312676700','Grupo Frontera','2022'),('A8B9C6','Jeraqui de Nivel (En Vivo)','9134','Peso Pluma','10481521274','2201284951','Peso Pluma','2020'),('D1E2F3','No Es Casualidad','7451','Feid','12352988282','2120649227','Feid','2014'),('G4H5I6','Nunca Estuve Acá','3026','Bizarrap','9154588031','2095987053','Bizarrap','2019'),('J7K8L9','Pedro del Valle','5896','Fuerza Regida','6447155823','1965474851', 'Fuerza Regida','2018'),('M2N1O2','Inventor dos Amores','2147','Gustavo Lima','7140268570','1933711246','Gustavo Lima','2010'),('P3Q4R5','Mistura Louca','7685','Henrique e Juliano','7979463668','1895594739','Henrique e Juliano','2012'),('S6T7U8','My Name Is','4310','Eminem','39294974906','1851187391','Dr. Dre','1996'),('V9W7X1','You','6975','Romeo Santos','10324053793','1717748481','Romeo Santos','2011'),('Y2Z3A4','The A Team','8264','Ed Sheeran','46077445311','1690100174','Jake Gosling& Ed Sheeran','2011'),('B5C6D7','G Wagon','5703','Sidhu Moose','3385234918','1607406369','Deep Jandu','2017'),('E8F9G8','La Playa','1967','Myke Towers','12578350542','1598638645','Myke Towers','2016'),('H1I2J3','Hola','3405','Rauw Alejandro','18550140966','1585937323','Rauw Alejandro','2014'),('K4L5M6','Infiel','9872','Marília Mendonça','9319140508','1582501886','Marília Mendonça','2016'),('N7O8P9','District 9','6254','Stray Kids','6365259559','1579182521','3Racha','2018'),('Q9R1S2','Outside Today','1380','YoungBoy Never Broke Again','10706639080','1487000167','DMacTooBangin','2018'),('T6U4X5','Brothers & Sisters','8795','Coldplay','29113093537','1469245542','Crash& Coldplay','1999'),('T8V6O2','Imaginando','5061','Ozuna','26149562761','1468672084','Ozuna','2012'),('Z9A1B1','It\'s Time','2749','Imagine Dragons','27876256405','1456347367','Alex da Kid& Imagine Dragons','2012'),('C2D3E4','One Time','4506','Justin Bieber','39826303496','1448645531','Soundz','2010'),('F5G6H7','Meet Miley Cyrus','7193','Miley Cyrus','15386727023','1438897592','Antonina Armato& Miley Cyrus','2007'),('I8J9K3','Choot Vol 1','5821','Yo Yo Honey Singh','1759264627','1416375367','YYHS','2009'),('L1M2N3','Perdóname','3067','Grupo Firme','5813039859','1415390525','Grupo Firme','2017'),('O4P5Q6','Seu Polícia','9241','Zé Neto e Cristiano','6035135495','1386639382','ZNC','2012'),('R7S8T9','No Mercy','1356','Daddy Yankee','21069509786','1357531852','DJ Playero& DJ Nelson','1995'),('U6V1W2','Like OOH-AHH','7892','TWICE','7501042118','1341105979','Park Jin-young','2015'),('X3Y4Z5','Ajeeb Sa neha Mujh Par Guzar gaya yaaron','5607','Hariharan','2410759024','1336615054','Hariharan','1996'),('A6B7C8','Just the Way You Are','3482','Bruno Mars','23918704772','1335763456','The Smeezingtons','2010'),('D9ENF1','Pon de Replay','6719','Rihanna','27824695685','1330695054','Carl Sturken& Evan Rogers','2005'),('G2H3I4','Farandulera','8204','Maluma','16503326203','1293723711','Maluma','2012'),('J5K6L7','White Iverson','4937','Post Malone','36799154963','1268812319','FKi 1st& Post Malone','2016'),('M8N9OV','Got to Be There','1675','Michael Jackson','12616617564','1266332153','Michael Jackson','1972'),('P1Q2R3','Just Dance','7450','Lady Gaga','19547423734','1258058235','RedOne& Lady Gaga','2008'),('S4T5U6','Ella Te Ama','2893','Los Ángeles Azules','4491041729','1251621366','LAZ','1964'),('V7W8X9','Run It!','6018','Chris Brown','18515956242','1241572601','Sean Garrett','2005'),('YHZ1A2','Put Your Hearts Up','7349','Ariana Grande','39916603942','1230843079','Thomas Brown& Ariana Grande','2013'),('B3C4D5','Linkin Park','4825','Linkin Park','17119984881','1211751645','Don Gilmore','2008'),('E6F7G8','Adiós Amor','9156','Christian Nodal','7977152807','1194209343','Christian Nodal','2017'),('H9ITJ1','Just a Little More Love','3607','David Guetta','25559765890','1176934576','David Guetta','2002'),('K2L3M4','Yoru ni Kakeru','8714','Yoasobi','2991410584','1164180558','Yaosobi','2019'),('N5O6P7','Harder to Breathe','5490','Maroon 5','24472919726','1156414312', 'Matt Wallace& Maroon 5','2002'),('Q8R9ST','Tell Me Something I Don\'t Know','2763','Selena Gomez','17539161911','1134686586','RedOne','2013'),('T1U2V3','Gambling','6815','Rod Wave','4465656592','1132015214','Rod Wave','2016'),('W4X5Y6','Voy A Matarlo','7390','Arcangel','6885591448','1129368866','Arcangel','2006'),('Z7A8B9','Best I Ever Had','4258','Drake','69694235602','1113329684','Noah "40" Shebib& Drake','2010'),('C5D1E2','Work It Out','1963','Beyoncé','20690390367','1106879101','Rich Harrison& Beyoncé','2003'),('F3G4H5','High','8075','Maria Becerra','5401575000','1106616617','Maria becerra','2019'),('I6J7K8','El De Los Lentes Gucci','5429','Natanael Cano','7141827382','1099110989','Natanael cano','2018'),('L9MTN1','Ocean Eyes','9816','Billie Eilish','30994571560','1093266251','Finneas O\'Connell& Billie Eilish','2019'),('O2P3Q4','Sobreviviré','3674','Yuridia','2437587459','1092685915','Azteca Music','2005'),('R5S6T7','Attention','5180','NewJeans','3321334625','1084309680','Min Hee-jin& 250& Park Jin-su','2022'),('U8V9WK','Netflix','2457','Eladio Carrión','2410759024','1082947436','Eladio Carrión','2015'),('X1Y2Z3','Que los cumplas feliz','6903','La K\'onga','1935553213','1077068371','La K\'onga','1985'),('4A5B6C','Wavez','8314','Marshmello','16472011981','1069213532','Marshmello','2015'),('D7E8F9','Ur So Gay','4728','Katy Perry','16266371040','1064393043','Glen Ballard','2008'),('GBH1I2','Mejor Que Tú','1596','Carin Leon','6838220800','1057364337','Carin Leon','2016'),('J3K4L5','Si Tú Te Vas','7834','Enrique Iglesias','8221994326','1041049227','Rafael Pérez-Botija& Enrique Iglesias','1995'),('M6N7O8','Factor Miedo','6250','Cartel de Santa','5278113828','1015988501','Mauricio Garza','2003'),('P9QGR1','Panas','3948','J Balvin','32465431031','1011072883','j Balvin','2007'),('S2T3U4','I Am A Gummy Bear','7401','Gummibär','2354292512','1008013185','Gummibär','2006'),('V5W6X7','New Love','2876','Dua Lipa','28256544706','1006404053','Andrew Wyatt& Dua Lipa','2017'),('Y8Z9AL','Hometown Glory','5062','Adele','19044970488','1002350102','Jim Abbiss& Adele','2008'),('B1C2D3','Phir Mohabbat','4894','Arijit Singh','12811082561','991337063','Arijit Singh','2011'),('E4F5G6','Faded','9165','Alan Walker','11152077502','988045552','Alan Walker','2018'),('H7I8J9','Axel F','5723','Crazy Frog','1275191297','972276847','Bass Bumpers& Off-cast Project','2005'),('KDL1M2','SH◉RT H▲IR M▲FI▲ ▲NTHEM (CVT)','4038','Doja Cat','16743225947','967348572','Co.fee','2013'),('N3O4P5','Con Tus Besos','6782','Eslabon Armado','4485699620','966836125','Eslabon Armado','2018'),('Q6R7S8','Boiadeira','9217','Ana Castela','3031981940','954540221','Eduardo Godoy','2021'),('T9UJV1','Adore U','1456','Seventeen','4621847855','950595120','Seventeen','2015'),('W2X3Y4','No Reino Encantado dos Animais','7890','Patati Patatá','2820276464','944640850','Patati Patatá','1983'),('Z5A6B7','Pode Chorar','5613','Jorge & Mateus','7110426408','939994319','Jorge & Mateus','2007'),('C8D9E7','Tu Resplandor','8493','TINI','4758228959','939480507','TINI','2011'),('F1G2H3','El Psicólogo','3487','Sebastián Yatra','9827052605','933812833','Sebastián Yatra','2013'),('I4J5K6','Racks In','6729','Lil Baby','13777418933','924271888','Earl on the Beat','2018'),('L7M8N9','Wanksta','8294','50 Cent','8690715705','916163701','Dr Dre& Eminem','2003'),('O5P1Q2','No Me Pidas Perdón','4963','Banda MS','8160251091','913921959','Banda MS','2003'),('R3S4T5','Joints & Jam','1678','The Black Eyed Peas','9274502487','904362496','will.i.am& The Black Eyed Peas','1998'),('U6V7W8','LATATA','7480','(G)I-DLE','2786506720','894839689','DLE','2018'),('X9YKZ1','Jama','2803','Ado','4146295950','891526228','Ado','2019'),('2A3B4C','Vê Se Pode (Ao Vivo)','6048','Hugo & Guilherme','2449888365','890003695','Willi Baldo','2016'),('D5E6F7','DJ Waley Babu','7319','Badshah','2136224273','888637212','Badshah','2018'),('G8H9I1','Stay (The Voice Performance)','4895','Morgan Wallen','12146307423','885269551','Bill Appleberry','2014'),('J1K2L3','Toda Hora','9106','MC Cabelinho','5576545715','883200157','Rennan da Penha','2016'),('M4N5O6','Obsesión','3657','Aventura','5576545715','881164978','Romeo Santos','1995'),('P7Q8R9','Becky from the Block','8741','Becky G','8212910657','842245023','Becky G','2019'),('SPT1U2','Dile','5460','Don Omar','7800013898','836174914','Don Omar','2003'),('V3W4X5','Palmolive','2738','El Alfa','3866331819','818118603','El Alfa','2018'),('Y6Z7A8','RIP MOE','6891','Lil Durk','6288180555','817062903','Lil Durk','2009'),('B9COD1','Canción de Cuna','4215','CantaJuego','414629595','809609065','CantaJuego','2005'),('E2F3G4','Catalina','1946','Rosalía','6943756649','806859970','Rosalía','2017'),('H5I6J7','Tô de Cara','8025','Luan Santana','3730829686','802508776','Luan Santana','2009'),('K8L9MG','Taken for Granted','5479','Sia','16787290480','789619943','Jesse Shatkin& Sia','1997'),('N1O2P3','Una Lady Como Tú','9846','Manuel Turizo','8230345337','776746229','Manuel Turizo','2018'),('Q4R5S6','Ashky Le Meen','3694','Ahmed Saad','312727630','774348264','Hazem Raafat','2003'),('T7U8V9','Amanecí Con Ganas','5130','Junior H','9082978652','765125012','Junior H','2019'),('WLX1Y2','Contigo','5446','Blessd','751884805','751884805','Lil Jay (Producer)','2018');
/*!40000 ALTER TABLE `song_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_label`
--

DROP TABLE IF EXISTS `record_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record_label` (
  `label_name` varchar(255) NOT NULL,
  `assigned_artist_id` int DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  KEY `assigned_artist_id` (`assigned_artist_id`),
  KEY `artist_name` (`artist_name`),
  CONSTRAINT `record_label_ibfk_1` FOREIGN KEY (`assigned_artist_id`) REFERENCES `artist` (`assigned_artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_label`

--



LOCK TABLES `record_label` WRITE;

/*!40000 ALTER TABLE `record_label` DISABLE KEYS */;

--
-- Dumping data for table `record_label`
--

LOCK TABLES `record_label` WRITE;
/*!40000 ALTER TABLE `record_label` DISABLE KEYS */;
INSERT INTO `record_label` VALUES ('Interscope Records','1566','Karol G','Colombia'),('YG Entertainment','8472,','Blackpink','South Korea'),('Rimas','1593','Bad Bunny','Puerto Rico'),('Sony Music Entertainment','7328','Shakira','Colombia'),('Big Hit Music','4056','BTS','South Korea'),('Universal Music Group','6219','Taylor Swift','United States'),('Universal Music Group','8743','The Weeknd','Canada'),('Sony Music Entertainment','2381','Anuel AA','Puerto Rico'),('VHR Music','5067','Grupo Frontera','Mexico'),('Warner Music Group','9134','Peso Pluma','Colombia'),('Universal Music Group','7451','Feid','Colombia'),('Dale Play Records','3026','Bizarrap','Argentina'),('Sony Music Entertainment','5896','Fuerza Regida','Mexico'),('Sony Music Entertainment','2147','Gustavo Lima','Brazil'),('Som Livre','7685','Henrique e Juliano','Brazil'),('Shady Reccords','4310','Eminem','United States'),('Sony Music Entertainment','6975','Romeo Santos','United States'),('Atlantic Records','8264','Ed Sheeran','United Kingdom'),('5911 Records','5703','Sidhu Moose','India'),('Warner Music Group','1967','Myke Towers','Puerto Rico'),('Sony Music Entertainment','3405','Rauw Alejandro','Puerto Rico'),('Som Livre','9872','Marília Mendonça','Brazil'),('JYP Entertainment','6254','Stray Kids','South Korea'),('Universal Music Group','1380','YoungBoy Never Broke Again','United States'),('Warner Music Group','8795','Coldplay','United Kingdom'),('Sony Music Entertainment','5061','Ozuna','Puerto Rico'),('Universal Music Group','2749','Imagine Dragons','United States'),('Raymond Braun Media Group','4506','Justin Bieber','Canada'),('Columbia Records','7193','Miley Cyrus','United States'),('Zee Music Company','5821','Yo Yo Honey Singh','India'),('Music VIP Entertainment','3067','Grupo Firme','Mexico'),('Som Livre','9241','Zé Neto e Cristiano','Brazil'),('Sony Music Entertainment','1356','Daddy Yankee','Puerto Rico'),('JYP Entertainment','7892','TWICE','South Korea'),('Aditya Music','5607','Hariharan','India'),('Universal Motown Records','3482','Bruno Mars','United States'),('Roc Nation','6719','Rihanna','Barbados'),('Sony Music Entertainment','8204','Maluma','Colombia'),('Republic Records','4937','Post Malone','United States'),('Sony Music Entertainment','1675','Michael Jackson','United States'),('Interscope Records','7450','Lady Gaga','United States'),('OCESA Seitrack','2893','Los Ángeles Azules','Mexico'),('RCA Records','6018','Chris Brown','United States'),('Universal Music Group','7349','Ariana Grande','United States'),('Warner Music Group','4825','Linkin Park','United States'),('Sony Music Entertainment','9156','Christian Nodal','Mexico'),('Jack Back Records','3607','David Guetta','France'),('Sony Music Entertainment','8714','Yoasobi','Japan'),('Interscope Records','5490','Maroon 5','United States'),('Interscope Records','2763','Selena Gomez','United States'),('Alamo Records','6815','Rod Wave','United States'),('Universal Music Group','7390','Arcangel','United States'),('OVO Sound','4258','Drake','Canada'),('Columbia Records','1963','Beyoncé','United States'),('300 Entertainment','8075','Maria Becerra','Argentina'),('D Downtown Music Services','5429','Natanael Cano','Mexico'),('Interscope Records','9816','Billie Eilish','United States'),('Sony Music Entertainment','3674','Yuridia','Mexico'),('ADOR','5180','NewJeans','Brazil'),('RIMAS','2457','Eladio Carrión','Puerto Rico'),('Leader Music','6903','La K\'onga','Argentina'),('Monstercat','8314','Marshmello','United States'),('Capitol Records','4728','Katy Perry','United States'),('Socios Music LLC','1596','Carin Leon','Mexico'),('Sony Music Entertainment','7834','Enrique Iglesias','Spain'),('Sony Music Entertainment','6250','Cartel de Santa','Mexico'),('ROC Nation','3948','J Balvin','Colombia'),('Sony Music Entertainment','7401','Gummibär','Germany'),('Warner Music Group','2876','Dua Lipa','United Kingdom'),('Columbia Records','5062','Adele','United Kingdom'),('T-Series','4894','Arijit Singh','India'),('Sony Music Entertainment','9165','Alan Walker','Norway'),('Sony Music Entertainment','5723','Crazy Frog','Sweden'),('RCA Records','4038','Doja Cat','United States'),('DEL Records','6782','Eslabon Armado','United States'),('AgroPlay','9217','Ana Castela','Brazil'),('Pledis Entertainment','1456','Seventeen','South Korea'),('Rinaldi Music','7890','Patati Patatá','Brazil'),('Som Livre','5613','Jorge& Mateus','Brazil'),('Sony Music Entertainment','8493','TINI','Argentina'),('Universal Music Group','3487','Sebastián Yatra','Colombia'),('Quality Control Music','6729','Lil Baby','United States'),('G-Unit Records','8294','50 Cent','United States'),('Lizos Music','4963','Banda MS','Mexico'),('Interscope Records','1678','The Black Eyed Peas','United States'),('Cube Entertainment','7480','(G)I-DLE','South Korea'),('Geffen','2803','Ado','Japan'),('Som Livre','6048','Hugo & Guilherme','Brazil'),('T-Series','7319','Badshah','India'),('Big Loud','4895','Morgan Wallen','United States'),('Bairro 13','9106','MC Cabelinho','Brazil'),('Sony Music Entertainment','3657','Aventura','United States'),('Sony Music Entertainment','8741','Becky G','United States'),('Machete Music','5460','Don Omar','Puerto Rico'),('El Jefe Records','2738','El Alfa','Dominican Republic'),('Alamo Records','6891','Lil Durk','United States'),('Diver Music','4215','CantaJuego','Spain'),('Universal Music Group','1946','Rosalía','Spain'),('Som Livre','8025','Luan Santana','Brazil'),('Atlantic Records','5479','Sia','Australia'),('Sony Music Entertainment','9846','Manuel Turizo','Colombia'),('Pyramedia','3694','Ahmed Saad','Egypt'),('Warner Music Group','5130','Junior H','Mexico'),('Warner Music Group','5446','Blessd','Colombia');
/*!40000 ALTER TABLE `record_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocation` (
  `country` varchar(255) NOT NULL,
  `continent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocation`

--

LOCK TABLES `geolocation` WRITE;

/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;

--
-- Dumping data for table `geolocation`
--

LOCK TABLES `geolocation` WRITE;
/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;
INSERT INTO `geolocation` VALUES ('Colombia','South America'),('South Korea','Asia'),('Puerto Rico','North America'),('Colombia','South America'),('South Korea','Asia'),('United States','North America'),('Canada','North America'),('Puerto Rico','North America'),('Mexico','North America'),('Colombia','South America'),('Colombia','South America'),('Argentina','South America'),('Mexico','North America'),('Brazil','South America'),('Brazil','South America'),('United States','North America'),('United States','North America'),('United Kingdom','Europe'),('India','Asia'),('Puerto Rico','North America'),('Puerto Rico','North America'),('Brazil','South America'),('South Korea','Asia'),('United States','North America'),('United Kingdom','Europe'),('Puerto Rico','North America'),('United States','North America'),('Canada','North America'),('United States','North America'),('India','Asia'),('Mexico','North America'),('Brazil','South America'),('Puerto Rico','North America'),('South Korea','Asia'),('India','Asia'),('United States','North America'),('Barbados','North America'),('Colombia','South America'),('United States','North America'),('United States','North America'),('United States','North America'),('Mexico','North America'),('United States','North America'),('United States','North America'),('United States','North America'),('Mexico','North America'),('France','Europe'),('Japan','Asia'),('United States','North America'),('United States','North America'),('United States','North America'),('United States','North America'),('Canada','North America'),('United States','North America'),('Argentina','South America'),('Mexico','North America'),('United States','North America'),('Mexico','North America'),('Brazil','South America'),('Puerto Rico','North America'),('Argentina','South America'),('United States','North America'),('United States','North America'),('Mexico','North America'),('Spain','Europe'),('Mexico','North America'),('Colombia','South America'),('Germany','Europe'),('United Kingdom','Europe'),('United Kingdom','Europe'),('India','Asia'),('Norway','Europe'),('Sweden','Europe'),('United States','North America'),('United States','North America'),('Brazil','South America'),('South Korea','Asia'),('Brazil','South America'),('Brazil','South America'),('Argentina','South America'),('Colombia','South America'),('United States','North America'),('United States','North America'),('Mexico','North America'),('United States','North America'),('South Korea','Asia'),('Japan','Asia'),('Brazil','South America'),('India','Asia'),('United States','North America'),('Brazil','South America'),('United States','North America'),('United States','North America'),('Puerto Rico','North America'),('Dominican Republic','North America'),('United States','North America'),('Spain','Europe'),('Spain','Europe'),('Brazil','South America'),('Australia','Oceania'),('Colombia','South America'),('Egypt','Africa'),('Mexico','North America'),('Colombia','South America');
/*!40000 ALTER TABLE `geolocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 20:35:05
