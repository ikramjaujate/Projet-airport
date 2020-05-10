
insert into Country values
('BEL', 'Belgium'),
('CHN', 'China'),
('CAN', 'Canada'),
('ESP', 'Spain'),
('FRA', 'France'),
('IND', 'India'),
('IDO', 'Indonesia'),
('MYS', 'Malasyia'),
('MAR', 'Morroco'),
('NED', 'Netherlands'), 
('UAE', 'United Arab Emirates'),
('USA', 'United States');

insert into Airports values
('JFK', 'John F Kennedy International', 'USA'),
('AMS', 'Amsterdam Airport Schiphol', 'NED'),
('CRL', 'Brussels South Charleroi Airport', 'BEL'),
('MAD', 'Adolfo Suárez Madrid–Barajas', 'ESP'),
('ORY', 'Paris-Orly','FRA'),
('LAX', 'Los Angeles International Airport', 'USA'),
('DXB', 'Dubai International Airport', 'UAE'),
('PVG', 'Shanghai Pudong International Airport', 'CHN'),
('BRU', 'Brussels Airport', 'BEL'),
('CDG', 'Charles de Gaulle Airport', 'FRA'),
('FRA', 'Frankfurt Airport', 'FRA'),
('DEL', 'Indira Gandhi International Airport', 'IND'),
('BCN', 'Barcelona–El Prat Airport', 'ESP'),
('YYZ', 'Toronto Pearson International Airport', 'CAN'),
('KUL', 'Kuala Lumpur International Airport', 'MYS'),
('CGK', 'Soekarno–Hatta International Airport', 'IDO'),
('CMN', 'Mohammed V International Airport', 'MAR');

insert into Airline values
('AAL', 'AMERICAN AIRLINES INC'),
('ACA', 'AIR CANADA'),
('AZA', 'ALITALIA-COMPAGNIA AEREA ITALIANA S.P.'),
('AFR', 'AIR FRANCE'),
('BAW', 'BRITISH AIRWAYS P.L.C.'),
('HAD', 'HONG KONG DRAGON AIRLINES LIMITED'),
('JAA', 'JAPAN ASIA AIRWAYS CO., LTD.'),
('THY', 'TURKISH AIRLINES INC.'),
('RAM', 'ROYAL AIR MAROC'),
('IBE', 'IBERIA');

insert into Flightinfo values
(254, 'AAL', 500),
(214, 'AFR', 150),
(311, 'ACA', 300),
(264, 'AZA', 300),
(125, 'BAW', 80),
(043,'HAD',95),
(235,'THY', 135),
(075,'IBE',150),
(147,'RAM', 250);

insert into Flight values
(254, 'AAL', '2020-06-01 16:22:00', '2020-06-02 00:24:00', 'MAD', 'DEL'),
(214, 'AFR', '2020-07-11 13:10:00', '2020-07-11 14:00:00', 'CDG', 'BRU'),
(147, 'RAM', '2020-07-12 15:04:00', '2020-07-12 16:15:00', 'ORY', 'AMS'),
(125, 'BAW', '2020-08-30 18:41:00', '2020-08-30 19:29:00', 'MAD', 'BCN'),
(075, 'IBE', '2020-09-17 17:16:00', '2020-09-18 01:38:00', 'LAX', 'JFK'),
(311, 'ACA', '2020-09-18 10:05:00', '2020-09-18 16:55:00', 'DXB', 'DEL'),
(147, 'RAM', '2020-12-21 21:10:00', '2020-12-22 14:00:00', 'PVG', 'CMN');

insert into Langues values
('FR', 'Français'),
('EN', 'English');
