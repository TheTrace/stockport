# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19)
# Database: stockport
# Generation Time: 2014-11-28 18:27:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table companies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `description` text,
  `reference` text,
  `currency` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `bourse` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `year_inc` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mkt_sector` varchar(255) DEFAULT NULL,
  `mkt_segment` varchar(255) DEFAULT NULL,
  `www_address` varchar(255) DEFAULT NULL,
  `isin` varchar(255) DEFAULT NULL,
  `share_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;

INSERT INTO `companies` (`id`, `name`, `ticker`, `description`, `reference`, `currency`, `country`, `bourse`, `sector`, `year_inc`, `created_at`, `updated_at`, `mkt_sector`, `mkt_segment`, `www_address`, `isin`, `share_type`)
VALUES
	(1,'Tesco','TSCO','The UKs leading retailer Tesco was floated on the stock exchange in 1947 and in 1995 took over rival Sainsburys position as the UK number one. The company launched a home shopping service in 2000, allowing customers to order their shopping online. Tesco is now expanding its convenience stores and overseas into areas such as Taiwan, Malaysia, Poland, the US and Ireland.','Motley Fool Pro','GBP','United Kingdom','LSE','Food & Drug Retailers',NULL,'2014-03-05 10:32:53','2014-03-07 20:46:26','','','','',''),
	(2,'City of London Investment Group','CLIG','Founded in 1991, City of London is an active emerging markets equity manager.\r\n\r\nCity of London Investment Group PLC is a holding company. The Company is an asset management company. The principal operating subsidiary is City of London Investment Management Company Limited, which acts as an investment adviser. The Company focuses on closed-end fund investment. City of London US Investments Limited is a subsidiary of the Company, which is a holding company for the United States companies.','Motley Fool Pro','GBP','United Kingdom','LSE','General Finance',1991,'2014-03-05 13:50:59','2014-10-01 09:28:12','SSC6','SSMM','','GB00B104RS51','DE'),
	(3,'Domino Printing Sciences','DNO','Developer and manufacturer of commercial ink-jet printers.','Motley Fool Pro','GBP','United Kingdom','LSE','Electronic & Electrical Equipment',NULL,'2014-03-05 13:52:02','2014-03-07 21:16:44','','','','',''),
	(4,'XP Power','XPP','One of the world\'s leading developers and manufacturers of critical power control components for the electronics industry.','Motley Fool Pro','GBP','United Kingdom','LSE','Electronic & Electrical Equipment',NULL,'2014-03-05 13:52:59','2014-03-07 21:13:55','','','','',''),
	(5,'Standard Chartered','STAN','','Motley Fool Pro','GBP','United Kingdom','LSE','Banks',NULL,'2014-03-05 13:53:39','2014-03-05 13:53:39',NULL,NULL,NULL,NULL,NULL),
	(6,'Devro','DVO','A leader in the production of sausage casings made from collagen. (Yes, hold on to your hats!).','Motley Fool Pro','GBP','United Kingdom','LSE','Food Producers',NULL,'2014-03-05 13:54:47','2014-03-07 20:52:51','','','','',''),
	(7,'BrainJuicer Group','BJU','BrainJuicer is a digital marketing agency aiming to re-invent market research.','Motley Fool Pro','GBP','United Kingdom','LSE','Media',NULL,'2014-03-05 13:55:46','2014-03-07 20:47:15','','','','',''),
	(8,'Pentair Ltd','PNR','The Company is comprised of two segments:Water Group, which provides products and systems used in the movement, storage, treatment, and enjoyment of water; and Technical Products Group, which designs and manufactures standard, modified, custom enclosures.','Motley Fool Pro','USD','United States','NYSE','Diversified Machinery',NULL,'2014-03-05 13:57:33','2014-03-07 20:45:44','','','','',''),
	(9,'Berkeley Group Holdings','BKG','Berkeley Group is a residential housebuilder with over 95% of its developments on brown field land. Established in 1976, the company now includes the Berkeley Homes, St George and St James brands.','Motley Fool Pro (watchlist)','GBP','United Kingdom','LSE','Household Goods & Home Construction',NULL,'2014-03-05 13:59:09','2014-03-07 21:09:34','','','','',''),
	(10,'Cape','CIU','The Company and its subsidiaries form an international group primarily engaged in the supply of a wide range of services including multi-user work access systems, insulation, fire protection, abrasive blasting, refractory, asbestos removal, coatings, cleaning, training and other essential non-mechanical services to major industrial groups, principally in the energy and natural resources sectors.','Motley Fool Pro','GBP','United Kingdom','LSE','Oil Equipment Services & Distribution',NULL,'2014-03-05 13:59:52','2014-03-07 20:48:35','','','','',''),
	(11,'Apple Inc','AAPL','From iPods to iPhones to MacBooks, Apple uses its ?think different? approach to reframe computing, communication, and more.','Motley Fool Pro','USD','United States','NASDAQ','Personal Computers',NULL,'2014-03-05 14:00:51','2014-03-07 20:41:34','','','','',''),
	(12,'Unilever PLC','ULVR','Anglo-Dutch consumer goods group Unilever supplies a whole range of household names from Dove soap, Liptons Tea, Vaseline and Persil. Recently abandoned its dual board structure.','Motley Fool Pro (watchlist)','GBP','United Kingdom','LSE','Food Producers',NULL,'2014-03-05 14:02:02','2014-03-07 20:51:24','','','','',''),
	(13,'Vislink','VLK','','Naked Trader','GBP','United Kingdom','LSE','Technology Hardware & Equipment',NULL,'2014-03-05 14:03:27','2014-03-05 14:03:27',NULL,NULL,NULL,NULL,NULL),
	(14,'Debenhams','DEB','Debenhams is a department store group that floated on the market in 2006, three years after being taken private by private equity groups CVC, Merrill Lynch and Texas Pacific. The group has over 120 stores across the UK and Ireland with around 20,000 employees. Debenhams also has a further 29 international franchise stores in 14 countries.','Motley Fool Pro','GBP','United Kingdom','LSE','General Retailers',NULL,'2014-03-05 14:04:20','2014-03-07 20:44:09','','','','',''),
	(15,'ARM Holdings','ARM','ARM designs microchips for use in mobile phones, computers.','Own bat?','GBP','United Kingdom','LSE','Technology Hardware & Equipment',NULL,'2014-03-05 14:05:23','2014-03-07 21:18:45','','','','',''),
	(16,'Tate & Lyle','TATE','Tate & Lyle produces an estimated 4m tonnes of cereal sweeteners and refines over 2m tonnes of sugar each year sold into around 35 countries. It is is a global leader in cereal sweeteners and starches, sugar refining, value added food and industrial ingredients and citric acid. It is world number one in industrial starches and wheat proteins and the sole manufacturer of sucralose sugar substitute, Splenda.','Own bat','GBP','United Kingdom','LSE','Food Producers',NULL,'2014-03-05 14:06:07','2014-03-07 21:18:02','','','','',''),
	(17,'Antofagasta','ANTO','Chile-based Antofagasta has grown from humble beginnings in 1888 transporting copper through South America along the railway of the same name, into one of the worlds largest copper producers through its huge Los Pelambres, El Tesoro and Michilla mines. The company has three business divisions: Mining, Transport and Water.','Motley Fool Pro (watchlist)','GBP','United Kingdom','LSE','Mining',NULL,'2014-03-05 14:07:08','2014-03-07 21:04:52','','','','',''),
	(18,'Imagination Technology','IMG','Imagination Technologies designs microprocessors, particularly graphics processors, for use in consumer electronics products like Apple\'s iPhone and iPad.','Motley Fool Pro','GBP','United Kingdom','LSE','Technology Hardware & Equipment',NULL,'2014-03-05 14:08:03','2014-03-07 20:49:35','','','','',''),
	(19,'Garmin Ltd','GRMN','','Own bat - dividend income','USD','United States','NASDAQ','Electronics - Scientific & Technical Instruments',NULL,'2014-03-05 14:09:19','2014-06-04 16:05:12','','','http://www.garmin.com/','',''),
	(20,'CRH','CRH','CRH is an international group of diversified building materials businesses which are engaged in the manufacture and supply of a wide range of building materials and in the operation of builders? merchanting and ?Do-It-Yourself? (?DIY?) stores.','Motley Fool Pro (watchlist)','GBP','United Kingdom','LSE','Construction & Materials',NULL,'2014-03-05 14:10:11','2014-03-07 21:11:54','','','','',''),
	(21,'United Utilities Group','UU','United manages and operates the regulated electricity distribution, water and wastewater networks in north west England.','Own bat - dividend income','GBP','United Kingdom','LSE','Gas Water & Utilities',NULL,'2014-03-05 14:11:10','2014-03-14 17:04:22','','','','',''),
	(22,'Aggreko','AGK','Aggreko is a global provider of rental power, temperature control and compressed air systems. It operates in over 120 locations in 28 countries worldwide.','Motley Fool Pro','GBP','United Kingdom','LSE','Support Services',NULL,'2014-03-05 14:11:54','2014-03-07 20:44:56','','','','',''),
	(23,'NCC Group','NCC','NCC Group is a global information assurance specialist providing organisations worldwide with expert escrow and verification, security testing, website performance and software testing services.','Motley Fool Pro','GBP','United Kingdom','LSE','Software & Computer Services',NULL,'2014-03-05 14:13:01','2014-03-07 20:42:15','','','','',''),
	(24,'Genel Energy','GENL','Genel Energy is a leading independent exploration and production company operating in the Kurdistan Region of Iraq.','Motley Fool Pro (watchlist)','GBP','United Kingdom','LSE','Oil & Gas Producers',NULL,'2014-03-05 14:13:58','2014-03-07 21:13:14','','','','',''),
	(25,'Leyshon Resources','LRL','','Penny Stocks - daily recommendation','GBP','United Kingdom','LSE','Mining',NULL,'2014-03-05 14:14:58','2014-03-06 09:21:43','AMQ1','ASQ1','http://leyshonresources.com/','AU000000LRL1','DE'),
	(26,'Leyshon Energy','LEN','','Stock split from LRL','GBP','United Kingdom','LSE','Oil & Gas Producers',2014,'2014-03-05 14:35:10','2014-03-06 09:19:44','AMQ1','ASQ1','http://www.leyshonenergy.com/','VGG5476A1049','DE'),
	(27,'Latchways','LTC','','Motley Fool Pro','GBP','United Kingdom','LSE','Support Services',NULL,'2014-03-05 14:36:02','2014-03-06 09:15:36','SQQ3','SSQ3','http://www.latchways.com/','GB0001572964','DE'),
	(28,'Rolls Royce','RR','A group engaged in the provision and support of integrated power systems for use on land; at sea and in the air','Own bat','GBP','United Kingdom','LSE','Aerospace & Defence',NULL,'2014-03-05 15:32:11','2014-03-14 17:02:31','FE10','SET1','http://www.rolls-royce.com/','GB00B63H8491','DE'),
	(29,'Anglo Pacific Group','APF','Anglo Pacific?s royalty portfolio has a broad commodity focus including steel-related raw materials (coking coal, iron ore and chromite), precious metals and uranium; offering investors diverse exposure to commodity markets.','Motley Fool Champion Shares Pro','GBP','United Kingodm','LSE','Mining',NULL,'2014-03-25 15:28:18','2014-10-01 09:18:30','SSC6','SSMM','http://www.anglopacificgroup.com/','GB0006449366','DE'),
	(30,'PZ Cussons','PZC','PZ Cussons makes and distributes cleansing fluids and applications such as soap, detergents and toiletries. It owns 30 brands, including Imperial Leather, Carex, Cussons Baby and washing up liquid Morning Fresh.','Motley Fool Champion Shares Pro','GBP','United Kingdom','LSE','Personal Goods',NULL,'2014-03-25 15:36:25','2014-10-01 09:23:07','25FS','STMM','http://www.pzcussons.com/','GB00B19Z1432','DE'),
	(31,'The Buckle','BKE','The Company is a retailer of medium to better-priced casual apparel, footwear and accessories for fashion conscious young men and women.','Motley Fool Champion Shares Pro','USD','United States','NYSE','RETAIL - Apparel Stores',NULL,'2014-03-25 15:40:14','2014-03-25 15:40:14','','','http://www.buckle.com/','',''),
	(32,'Zytronic Company','ZYT','Make touch screens','One Free Share Tip tip','GBP','United Kingdom','LSE','Electronic & Electrical Equipment',NULL,'2014-04-12 20:32:17','2014-10-01 09:19:44','AIMT','AIMI','http://www.zytronic.co.uk/','GB0006971013','DE'),
	(33,'Skil Ports & Logistics','SPL','building port facilities in India','One Free Share Tip tip','GBP','United Kingdom','LSE','Industrial Transportation',NULL,'2014-04-12 21:00:46','2014-10-01 09:19:28','AMQ1','ASQ1','http://www.skilpl.com','GG00B53M7D91','DE'),
	(34,'Blinkx','BLNX','An Internet media company that connects consumers and brands through premium content online. Founded in the UK in 2004, blinkx pioneered Internet Video Search using its patented COncept Recognition Engine (CORE). This technology leverages speech recognition, text and image analysis to deeply understand the meaning and context of video content to generate improved search relevancy for consumers and a brand safe environment for advertisers. Today, blinkx is a broad digital media technology, distribution and monetization platform that connects consumers, advertisers and content across four screens. Through its partnerships with hundreds of media companies, including ABC, NBC, Conde Nast, Reuters and Bloomberg, blinkx has indexed and search enabled millions of hours of video content. blinkx powers video search, discovery or monetization on thousands of online properties including Lycos, ABC, CBS and Fox Sports. blinkx is headquartered in San Francisco, California with 15 offices worldwide. For more information please visit www.blinkx.com.','Price drop - looked like a good buy.  Naked Trader bought some.','GBP','United Kingdom','LSE','Software & Computer Services',NULL,'2014-10-01 09:17:18','2014-10-01 09:24:11','ASM7','AMSM','http://www.blinkx.com/corporate/investors/investor-contacts','GB00B1WBW239','DE'),
	(35,'Petrofac Ltd','PFC','Petrofac Limited is engaged in the provision of facilities solutions to the oil and gas production and processing industry. It operates in four segments: Onshore Engineering & Construction provides engineering, procurement and construction project execution services to the onshore oil & gas industry; Offshore Projects & Operations provides offshore engineering, operations and maintenance on and offshore; Engineering & Consulting Services provides technical engineering, consultancy, conceptual design, front end engineering and design (FEED) and project management consultancy (PMC) across all sectors including renewables and carbon capture, and Integrated Energy Services co-invests with partners in oil & gas production, processing and transportation assets, provides production improvement services under value aligned commercial structures and oil & gas related technical competency training and consultancy services.','Motley Fool Pro','GBP','United Kingdom','LSE','Oil Equipment Services & Distribution',NULL,'2014-10-01 10:08:47','2014-10-01 10:08:47','FS10','SET1','http://www.petrofac.com/','GB00B0H2K534','DE'),
	(36,'Thorntons','THT','Thorntons PLC is engaged in manufacturing, retailing and distribution of confectionery and other sweet foods. The Company operates in two segments: Retail and Sales and Operations. Retail segments incorporate Own Stores, Franchise and Thorntons Direct. Sales and Operations consist of commercial trading channel and manufacturing operations. The Company\'s products are available across a multi-channel network compromising shops, franchises, online and through a choice of retail partners. The Company\'s product range includes gifted ideas; chocolate, toffee and fudges; personalized gifts; hampers, and wedding. The Company?s subsidiaries include Strand Court Properties Limited, which is engaged in property investment and Thorntons (Jersey) Limited, which is engaged in retail trading company.','Motley Fool Pro','GBP','United Kingdom','LSE','Food & Drug Retailers',NULL,'2014-10-01 10:15:31','2014-10-01 10:15:31','ON10','SET3','http://www.thorntons.co.uk/','GB0008901935','DE'),
	(37,'Coca Cola HBC AG','CCH','Coca-Cola HBC AG, is a bottler of non-alcoholic ready-to-drink beverages in Europe, operating in 28 countries. The Company owns, controls and operates a network of independent bottling plants and warehousing and distribution systems. The Company through Coca-Cola Hellenic Bottling Company S.A (CCH) is principally engaged in producing, selling and distributing non-alcoholic ready-to-drink beverages. The Company also produces, sells and distributes non-alcoholic ready-to-drink beverages under bottlers? agreements and franchise arrangements with third parties and under its brand names. It also distributes beer and third party premium spirits in certain of its central and eastern European operations. On April 24, 2013, Coca-Cola HBC AG acquired CCH and increased its interest from 23.28% to 96.85%. In June 2013, Coca-Cola HBC AG acquired the remaining 3.253% stake in Coca-Cola Hellenic Bottling Co SA.','Motley Fool Pro','GBP','United Kingdom','LSE','Beverages',NULL,'2014-10-01 10:18:44','2014-10-01 10:18:44','FS10','SET1','http://www.coca-colahellenic.com/','CH0198251305','DE'),
	(38,'Post Holdings Inc','POST','Post Holdings, Inc. (Post) is a consumer packaged goods holding company operating in the center-of-the-store, refrigerated, active nutrition and private label food categories. Post?s center-of-the-store portfolio includes Honey Bunches of Oats, Pebbles, Great Grains, Post Shredded Wheat, Post Raisin Bran, Grape-Nuts and Honeycomb. Post also offers premium natural and organic cereal, granola and snacks through the Attune, Uncle Sam, Erewhon, Golden Temple, Peace Cereal, Sweet Home Farm and Willamette Valley Granola Company brands. Effective June 2, 2014, the Company announced that it has completed the acquisition of MFI Holding Corporation (Michael Foods), a producer of food products and service solutions to customers across the foodservice, retail and food ingredient channels.','Motley Fool Pro','USD','United States','NYSE','Food & Beverage',NULL,'2014-10-01 10:26:29','2014-10-01 10:26:29','','','http://www.postfoods.com/','','');

/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20140304142059'),
	('20140306085041'),
	('20140319085645'),
	('20140604140430');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` varchar(255) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `consideration` decimal(10,4) DEFAULT NULL,
  `commission` decimal(10,4) DEFAULT NULL,
  `stamp_duty` decimal(10,4) DEFAULT NULL,
  `PTM_levy` decimal(10,4) DEFAULT NULL,
  `payable` decimal(10,4) DEFAULT NULL,
  `cost_percent` decimal(10,6) DEFAULT NULL,
  `bargin_ref` varchar(255) DEFAULT NULL,
  `avg_cost` decimal(10,4) DEFAULT NULL,
  `buy_limit` decimal(10,4) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `x_rate` decimal(10,6) DEFAULT NULL,
  `ex_div_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `div_price` decimal(10,4) DEFAULT NULL,
  `div_net_total` decimal(10,4) DEFAULT NULL,
  `person` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;

INSERT INTO `transactions` (`id`, `trans_type`, `trans_date`, `company_id`, `quantity`, `price`, `consideration`, `commission`, `stamp_duty`, `PTM_levy`, `payable`, `cost_percent`, `bargin_ref`, `avg_cost`, `buy_limit`, `currency`, `x_rate`, `ex_div_date`, `payment_date`, `issue_date`, `div_price`, `div_net_total`, `person`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'buy','2012-10-26',1,65,315.1780,204.8700,10.0000,1.0200,0.0000,215.8900,5.100000,'20N1V3YA',332.1400,360.0000,'GBP',NULL,'2014-03-25','2014-03-25','2014-03-25',NULL,NULL,'',1,'2014-03-25 12:27:45','2014-06-04 13:50:07'),
	(2,'dividend','2013-07-04',1,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'GBP',NULL,'2013-04-24','2013-07-05','2013-07-04',0.1000,6.5800,'',1,'2014-09-30 12:20:07','2014-09-30 12:23:13'),
	(3,'dividend','2013-12-19',1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'GBP',NULL,'2013-10-09','2013-12-20','2013-12-19',0.0463,3.0600,'',1,'2014-09-30 12:22:53','2014-09-30 12:22:53'),
	(4,'dividend','2014-07-03',1,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'GBP',NULL,'2014-04-30','2014-07-04','2014-07-03',0.1013,6.6900,'',1,'2014-09-30 12:24:54','2014-09-30 12:24:54'),
	(5,'buy','2013-07-05',1,1,343.5000,3.4400,0.0700,0.0200,0.0000,3.5300,2.550000,'20PHFYBA',353.0000,315.0000,'GBP',NULL,'2014-09-30','2014-09-30','2014-09-30',NULL,NULL,'',1,'2014-09-30 12:27:10','2014-09-30 12:27:10'),
	(6,'buy','2014-07-07',1,2,290.6000,5.8100,0.1200,0.0300,0.0000,5.9600,2.520000,'20S4GDYA',2.9800,315.0000,'',NULL,'2014-09-30','2014-09-30','2014-09-30',NULL,NULL,'',1,'2014-09-30 12:33:24','2014-09-30 12:33:24');

/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `remember_token`, `level`, `active`, `created_at`, `updated_at`)
VALUES
	(1,'Alan Tracey','actracey@gmail.com','$2a$10$oniT.r30neRtz9X5AcCIcuCf6kS7PP9i1mluHX1rsWGW8fDDKjphm','9f8896efee3aa260910f5b9576d0fb0aa4035844',1,NULL,'2014-06-04 14:20:04','2014-09-30 12:14:35');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
