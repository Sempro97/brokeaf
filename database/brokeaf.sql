-- *********************************************
-- * Standard SQL generation                   
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.1              
-- * Generator date: Dec  4 2018              
-- * Generation date: Sat Jan 16 21:00:46 2021 
-- * LUN file: C:\UserWebs\sempr\Documents\brokeaf\DatabaseBrokeAF\BrokeAF_0.6.lun 
-- * Schema: SCHEMA logico/1 
-- ********************************************* 


-- Database Section
-- ________________ 
DROP DATABASE IF EXISTS `brokeaf`;
CREATE DATABASE `brokeaf` DEFAULT CHARACTER SET utf8mb4;
USE `brokeaf`;


-- DBSpace Section
-- _______________


-- Tables Section
-- _____________ 

create table Category (
     name char(30) not null,
     keywords char(30) not null,
     constraint IDCategory primary key (name));

create table DetailsItem (
     serialCode char(10) not null,
     IdList numeric(16) not null,
     positionIndex numeric(3) not null,
     quantity char(4) not null,
     price char(10) not null,
     constraint IDDetailsItem primary key (serialCode, IdList));

create table Img (
     serialCode char(10) not null,
     path char(20) not null,
     constraint IDImg primary key (serialCode, path));

create table Item (
     isVerificated char not null,
     description char(120) not null,
     price char(10) not null,
     name char(30) not null,
     serialCode char(10) not null,
     email char(30) not null,
     Kin_name char(30) not null,
     constraint IDItem_ID primary key (serialCode));

create table ListItems (
     IdList numeric(16) not null,
     constraint IDListItem_ID primary key (IdList));

create table Seller (
     cap numeric(6) not null,
     address char(30) not null,
     city char(30) not null,
     companyAddress char(30) not null,
     companyName char(30) not null,
     email char(30) not null,
     name char(30) not null,
     surname char(30) not null,
     password char(255) not null,
     phoneNumber char(12) not null,
     province char(30) not null,
     constraint IDSeller primary key (email));
     
create table UserWeb (
     cap numeric(6) not null,
     address char(30) not null,
     city char(30) not null,
     email char(30) not null,
     IdList numeric(16),
     name char(30) not null,
     surname char(30) not null,
     password char(255) not null,
     phoneNumber char(12) not null,
     province char(30) not null,
     constraint IDUserWeb primary key (email),
     constraint FKshop_ID unique (IdList));

create table Description(
     description char(255) not null,
     idDesc char(30) not null,
     constraint UniqueDesc unique (description),
     constraint IDNotificationSeller primary key (idDesc));
     
create table NotificationSeller (
     path char(20) not null,
     date datetime not null,
     email char(30) not null,
     idDesc char(30) not null,
     constraint FKnotify_Seller_des foreign key (idDesc) references Description(idDesc),
     constraint FKnotify_Seller foreign key (email) references Seller(email),
     constraint IDNotificationSeller primary key (email, date));

create table NotificationUserWeb (
     path char(128) not null,
     date datetime not null,
     email char(30) not null,
     idDesc char(30) not null,
     constraint FKnotify_UserWeb_des foreign key (idDesc) references Description(idDesc),
     constraint FKnotify_UserWeb foreign key (email) references UserWeb(email),
     constraint IDNotificationUserWeb primary key (email, date));

create table Order_UserWeb (
     email char(30) not null,
     cap numeric(6) not null,
     city char(30) not null,
     name char(30) not null,
     surname char(30) not null,
     phoneNumber char(12) not null,
     province char(30) not null,
     address char(30) not null,
     datePayment datetime not null,
     IdList numeric(16) not null,
     constraint IDOrder_UserWeb primary key (email, datePayment),
     constraint FKcontain_ID unique (IdList));

create table Visitor (
     lastSeen datetime not null,
     idVisitor numeric(8) not null,
     IdList numeric(16),
     constraint IDVisitor primary key (idVisitor),
     constraint FKwish_ID unique (IdList));


-- Constraints Section
-- ___________________ 

alter table DetailsItem add constraint FKincorporates
     foreign key (IdList)
     references ListItems(IdList);

alter table DetailsItem add constraint FKitemise
     foreign key (serialCode)
     references Item(serialCode);

alter table Img add constraint FKshow
     foreign key (serialCode)
     references Item(serialCode); 

alter table Item add constraint FKbelong
     foreign key (email)
     references Seller(email);

alter table Item add constraint FKkind
     foreign key (Kin_name)
     references Category(name);

alter table Order_UserWeb add constraint FKcontain_FK
     foreign key (IdList)
     references ListItems(IdList);

alter table UserWeb add constraint FKshop_FK
     foreign key (IdList)
     references ListItems(IdList);

alter table Visitor add constraint FKwish_FK
     foreign key (IdList)
     references ListItems(IdList);

INSERT INTO `ListItems` (IdList) VALUES ('0');
INSERT INTO `ListItems` (IdList) VALUES ('1');
INSERT INTO `ListItems` (IdList) VALUES ('2');
   
INSERT INTO `Category` (name,keywords) VALUES ('Utensili','cacciavite,fai da te');
INSERT INTO `Category` (name,keywords) VALUES ('Informatica','usb,chiavetta');

INSERT INTO `Description` (`description`,`IdDesc`)  VALUES ('Il tuo acquisto e` avvenuto correttamente','0');

INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('15353', '0695 Norbert Burgs Apt. 013', 'Karlfort', '537 Schuppe Track\nPort Miles,', 'Rogahn Group', 'adriana90@example.net', 'Hailie', 'Oberbrunner', '1', '3470328087', 'Saint Barthelemy');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('81660', '6494 Wolff Fields Apt. 156', 'North Clydeberg', '261 Leif Fork Apt. 340\nNew Ann', 'Zulauf and Sons', 'daugherty.parker@example.com', 'Jammie', 'Goldner', '75', '3476748497', 'Singapore');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('97923', '381 Ziemann Extensions Apt. 87', 'North Erick', '75574 Upton Islands Suite 812\n', 'Purdy-Volkman', 'devin.swaniawski@example.net', 'Kamille', 'Schinner', '18', '3473147842', 'Swaziland');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('42696', '375 Wunsch Loaf Apt. 446', 'West Shannyport', '079 Collier Turnpike\nEast Barr', 'Hartmann-Corwin', 'immanuel42@example.com', 'Serena', 'Legros', '73', '3479607091', 'Suriname');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('68229', '882 Elliott Square', 'North Jany', '739 Williamson Field\nAugustfur', 'Legros PLC', 'kole.schowalter@example.com', 'Lavada', 'O\'Conner', '71', '3453130043', 'Estonia');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('96747', '964 Joy Route Apt. 944', 'Millerport', '89342 Ceasar Lodge Apt. 314\nTu', 'Murray, Swaniawski and Rodrigu', 'hackett.eleanore@example.org', 'Rebecca', 'Williamson', '24', '3466027085', 'Mayotte');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('66401', '50029 Aufderhar Tunnel', 'South Richmondberg', '19354 Armani Fords\nJonascheste', 'Runte, Runolfsdottir and Zieme', 'pgottlieb@example.com', 'Dante', 'Durgan', '64', '3462239149', 'Costa Rica');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('33295', '197 Amparo Green Suite 712', 'Brandyton', '064 Turcotte Summit\nPort Anton', 'Hayes-Gutkowski', 'pollich.bianka@example.com', 'Guillermo', 'Beier', '37', '3454150367', 'Palau');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('31291', '0354 Stevie Garden Suite 384', 'North Norma', '918 Auer Manor\nSouth Everardo,', 'Brekke, Tremblay and Quitzon', 'irenner@example.org', 'Carolina', 'Halvorson', '60', '3461641147', 'Saint Vincent and the Grenadin');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('71773', '927 Noble Lock Suite 652', 'South Vicky', '80617 Kutch Meadow Apt. 008\nAn', 'Koch, Hickle and Balistreri', 'mckenzie.christine@example.net', 'Simone', 'Gutmann', '2', '3453479794', 'Mauritania');

INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Con questo cacciavite si manipolano le viti a taglio', '7.91', 'Cacciavite a taglio', '1313932365', 'mckenzie.christine@example.net', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Avanzatissimo strumento di calcolo, e in grado di rappresentare gran parte dei numeri naturali', '5.32', 'Calcolatrice', '1952322448', 'mckenzie.christine@example.net', 'Informatica');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Rocchetto che fara impazzire qualsiasi casalinga annoiata', '8.9', 'Rocchetto di filo', '3438720877', 'irenner@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Con questo cacciavite si manipolano gran parte delle viti esistenti ', '7.62', 'Cacciavite Multifunzione', '3577771822', 'irenner@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Portafoglio in pelle sintetica', '8.21', 'Portafoglio', '3773158679', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Forbici ergonomiche adatte a tagliare la carta', '3.85', 'Forbici', '4943693566', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Con questo cacciavite si manipolano le viti a croce', '5.22', 'Cacciavite a croce', '7775972008', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Strumento segnatempo in acciaio inossidabile', '4.62', 'Orologio', '8791859210', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Prestante lucchetto di sicurezza, impossibile da scalfire', '7.38', 'Lucchetto', '9150815034', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerificated`, `description`, `price`, `name`, `serialCode`, `email`, `Kin_name`) VALUES ('1', 'Memoria di massa dalle alte prestazioni, 5 Mb/s in lettura e scrittura', '4.38', 'Chiavetta USB', '9876711578', 'hackett.eleanore@example.org', 'Informatica');

INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('1158', '8638 Rupert Village Apt. 105', 'Wilhelmineside', 'adrain.johnson@example.com', 2, 'Jennyfer', 'Willms', '89', '3464459410', 'Bulgaria');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('42930', '41349 Noemie Ferry', 'Lottieborough', 'ali.simonis@example.com', NULL, 'Elvie', 'Boyer', '86', '3469388846', 'Niue');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('35879', '9451 Miller Island', 'Baileestad', 'amina.gorczany@example.net', NULL, 'Darian', 'Brown', '78', '3458027734', 'Niue');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('22485', '13804 Shad Ridges', 'New Kyler', 'antoinette.sipes@example.com', NULL, 'Twila', 'Herman', '57', '3450938762', 'United Kingdom');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('25961', '5980 Elbert Greens Apt. 036', 'Kulasshire', 'arvilla52@example.net', NULL, 'Merlin', 'Kilback', '78', '3460091207', 'French Polynesia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('26301', '306 Rodriguez Views', 'Kozeychester', 'awilliamson@example.com', NULL, 'Dillan', 'Moen', '66', '3461924719', 'Yemen');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('94667', '77354 Schultz Center Suite 726', 'Trompchester', 'bdicki@example.net', NULL, 'Ciara', 'Ratke', '75', '3466502126', 'Afghanistan');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('63641', '98697 Blanche Crossing Suite 6', 'East Natasha', 'bertram80@example.com', NULL, 'Penelope', 'Kessler', '97', '3454822808', 'Somalia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('49516', '760 Joana Haven', 'Gorczanystad', 'bradley35@example.com', NULL, 'Emie', 'Bernier', '32', '3474994780', 'San Marino');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('78175', '364 Runolfsson Island Apt. 273', 'New Norbertoside', 'brannon17@example.net', NULL, 'Theodore', 'Funk', '58', '3470751148', 'Christmas Island');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('30310', '9043 Wunsch Groves Suite 328', 'Legrosshire', 'braun.adolf@example.com', NULL, 'Jaime', 'Huels', '47', '3470705172', 'Dominican Republic');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('72866', '91089 Nitzsche Forest', 'Nilsfurt', 'btremblay@example.org', NULL, 'Naomie', 'Collins', '66', '3475912341', 'Kuwait');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('18572', '11076 Cleora Ranch', 'Bartonborough', 'cale.fisher@example.org', NULL, 'Zachariah', 'Heller', '12', '3450840189', 'Holy See (Vatican City State)');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('33706', '25096 Justina Land Suite 094', 'Nienowshire', 'cheyanne46@example.org', NULL, 'Julia', 'Gutkowski', '31', '3470633163', 'Colombia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('50231', '66447 Sarai Greens Suite 664', 'South Freemanburgh', 'collins.amos@example.net', NULL, 'Alvah', 'Nader', '48', '3461981954', 'Georgia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('61337', '84870 Mozell Plains Apt. 282', 'Croninland', 'conn.lupe@example.com', NULL, 'Roma', 'Wiegand', '83', '3475520932', 'Bolivia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('87855', '52729 Olson Isle', 'Douglasburgh', 'conrad.hickle@example.com', NULL, 'Dawn', 'Gaylord', '17', '3451384216', 'Niue');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('5300', '05848 Terry Walks', 'Kuhicshire', 'cristopher.ortiz@example.org', NULL, 'Christopher', 'Kuvalis', '85', '3478481534', 'Turks and Caicos Islands');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('89405', '84953 Timothy Shoals', 'Lacybury', 'dach.jamel@example.com', NULL, 'Toney', 'Cronin', '5', '3461200043', 'Guinea');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('72691', '651 Howe Dam Suite 899', 'East Rocky', 'dare.claudine@example.com', NULL, 'Ethel', 'Moen', '31', '3466945827', 'Ecuador');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('99428', '5844 Balistreri Vista Apt. 901', 'Grayceton', 'davin.mcglynn@example.org', NULL, 'Cale', 'Kirlin', '5', '3456607041', 'Niue');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('95265', '138 Franecki Island Apt. 956', 'Morissettechester', 'deangelo.cronin@example.org', NULL, 'Elwyn', 'Jaskolski', '96', '3476982495', 'Solomon Islands');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('78619', '8417 Wunsch Brook Apt. 945', 'Connton', 'destini13@example.net', NULL, 'Ariane', 'Monahan', '9', '3469102547', 'Ireland');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('96045', '5952 Miracle Valley Apt. 880', 'North Karolannchester', 'dgreenfelder@example.net', NULL, 'Lou', 'Hills', '85', '3473019640', 'Moldova');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('37178', '167 Heath Bridge Suite 432', 'East Karolannshire', 'domenick58@example.net', NULL, 'Buck', 'Rogahn', '83', '3470209407', 'Madagascar');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('6034', '51106 Bernardo Groves Apt. 304', 'Devanstad', 'edickinson@example.net', NULL, 'William', 'Macejkovic', '2', '3466394486', 'Liberia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('89600', '5749 Aiyana Lodge', 'Enidberg', 'emilio.bednar@example.org', NULL, 'Heloise', 'Heathcote', '70', '3471497347', 'Dominican Republic');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('60018', '839 McKenzie Gateway Apt. 862', 'New Alexandriaborough', 'emmerich.amari@example.net', NULL, 'Kaia', 'Howell', '16', '3470763612', 'Ecuador');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('3387', '719 Korey Lights', 'North Tabitha', 'eunice15@example.org', NULL, 'Zita', 'Ritchie', '89', '3466801560', 'Moldova');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('47089', '683 Kihn Expressway', 'Rutherfordchester', 'fbeer@example.org', NULL, 'Jack', 'Doyle', '27', '3473994698', 'Saint Kitts and Nevis');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('13180', '21378 Marques Square', 'Abshiremouth', 'gladys.nicolas@example.net', NULL, 'Emmitt', 'Yundt', '13', '3464074170', 'Wallis and Futuna');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('40413', '19790 West Mountains Suite 036', 'South Alanis', 'glesch@example.com', NULL, 'Myrtice', 'Lubowitz', '76', '3473713583', 'Equatorial Guinea');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('23686', '8324 Zachariah Skyway', 'Hackettburgh', 'hane.hubert@example.net', NULL, 'Brendon', 'Turcotte', '22', '3455371858', 'Argentina');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('24844', '54448 Doyle Flat', 'Verliechester', 'harold.torphy@example.net', NULL, 'Barney', 'Gislason', '45', '3459717706', 'Bolivia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('62633', '66569 Kihn Pine', 'Lakinville', 'hilma47@example.org', NULL, 'Alvena', 'Abbott', '25', '3460612942', 'Anguilla');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('25401', '0707 Dane Meadow', 'West Orionbury', 'hjerde@example.net', NULL, 'Nicolette', 'Robel', '78', '3473149302', 'Samoa');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('53357', '20232 Ramon Circles Suite 136', 'Stuartview', 'hmarvin@example.com', NULL, 'Ignacio', 'Mills', '10', '3465507951', 'Monaco');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('7042', '547 Brian Track', 'Port Deltaview', 'hobart.tillman@example.org', NULL, 'Jovan', 'Johnson', '20', '3456194053', 'Yemen');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('69745', '2370 Balistreri Coves Apt. 156', 'Beulahtown', 'hoeger.lenora@example.org', NULL, 'Aileen', 'Koelpin', '74', '3476165260', 'Faroe Islands');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('54372', '43055 Heidenreich Curve', 'Rogahnfurt', 'hoppe.belle@example.net', NULL, 'Jesus', 'Wolff', '92', '3453526703', 'Cuba');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('46711', '2917 Virginie Gateway Apt. 011', 'Danielbury', 'iharris@example.net', NULL, 'Savanna', 'Corwin', '29', '3471171223', 'Slovakia (Slovak Republic)');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('73870', '75166 Rau Lake Suite 452', 'Baileyhaven', 'imurray@example.com', NULL, 'Sim', 'Wisozk', '80', '3474570515', 'Netherlands');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('73502', '715 Jalyn Brooks Suite 932', 'South Dinoport', 'jack63@example.org', NULL, 'Hertha', 'Hartmann', '93', '3451325115', 'Costa Rica');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('46673', '95090 Kane Drives Apt. 295', 'East Ivashire', 'jazmin.nader@example.net', NULL, 'Sally', 'Schinner', '75', '3474651597', 'Tuvalu');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('40107', '2784 Raymond Stream', 'Turcotteville', 'jeanne.kozey@example.net', NULL, 'Taryn', 'Schumm', '28', '3457657186', 'Tanzania');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('40357', '188 Werner View Suite 231', 'Daretown', 'jenkins.birdie@example.net', NULL, 'Kamren', 'Rohan', '86', '3451301631', 'Paraguay');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('92628', '396 Amaya Divide Suite 584', 'Yundtbury', 'josefina96@example.net', NULL, 'Brenna', 'Gerlach', '66', '3479108745', 'Mayotte');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('87998', '4114 Lueilwitz Flats Suite 936', 'South Carolanne', 'katlyn07@example.org', NULL, 'Timmothy', 'Reynolds', '8', '3453341446', 'Spain');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('97660', '98027 Litzy Ranch Suite 158', 'Bruceberg', 'katlynn.beahan@example.com', NULL, 'Orval', 'Mann', '29', '3457919535', 'Reunion');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('32596', '2805 Rodrick Gardens', 'Port Thoraside', 'kbode@example.net', NULL, 'Karen', 'Hauck', '65', '3469371501', 'Gibraltar');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('90777', '723 Jamil Extension Apt. 812', 'North Crawford', 'kellen.morissette@example.com', NULL, 'Elian', 'Schuppe', '93', '3476333559', 'United Kingdom');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('70110', '54801 Torphy Forges Suite 056', 'Lebsackchester', 'kenny53@example.net', NULL, 'Lottie', 'McDermott', '20', '3476809558', 'Saint Vincent and the Grenadin');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('47845', '588 Elinore Junctions Apt. 041', 'South Odamouth', 'king.annabell@example.net', NULL, 'Lelia', 'Roberts', '75', '3451041618', 'Latvia');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('33063', '7059 Emard Loop Apt. 177', 'Reynoldsborough', 'klein.ardith@example.net', NULL, 'Andy', 'Hodkiewicz', '6', '3472141773', 'Mali');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('91532', '857 Paucek Neck', 'South Alisha', 'kling.lizzie@example.com', NULL, 'Alexane', 'Paucek', '40', '3470943976', 'Norway');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('51111', '623 Kiehn Street Apt. 244', 'Ivaborough', 'koss.ola@example.com', NULL, 'Adelbert', 'Flatley', '26', '3466560840', 'Mauritania');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('13746', '782 Salma Hollow Suite 932', 'Casimirburgh', 'lauryn25@example.org', NULL, 'Rubie', 'Hayes', '80', '3476889255', 'Mexico');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('52018', '515 Berge Glens', 'East Dell', 'ledner.columbus@example.org', NULL, 'Reid', 'Champlin', '10', '3475508599', 'France');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('64596', '0617 Thurman Point Suite 848', 'New Sadieberg', 'ljacobi@example.net', NULL, 'Matt', 'Bogan', '13', '3469285565', 'Albania');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('30923', '438 Flatley Drive Apt. 488', 'Alfside', 'lucienne.kuhic@example.org', NULL, 'Vincenza', 'O\'Reilly', '66', '3454709331', 'Brunei Darussalam');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('25877', '0492 Towne Stream Apt. 867', 'West Everette', 'luettgen.chester@example.org', NULL, 'Johnnie', 'Willms', '5', '3475811223', 'Saint Barthelemy');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('24560', '97768 Nolan Radial Suite 061', 'Robertsstad', 'lynn.adams@example.org', NULL, 'Mittie', 'Block', '38', '3467595721', 'Denmark');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('31661', '25323 Clarissa Coves Suite 837', 'Boscohaven', 'margie23@example.com', NULL, 'Godfrey', 'Homenick', '24', '3450135431', 'Netherlands Antilles');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('59549', '04104 Ziemann Station Apt. 504', 'Port Curtis', 'marilyne43@example.org', NULL, 'Antone', 'McDermott', '1', '3459201193', 'Uganda');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('96217', '208 Jonatan Forest', 'Abbottmouth', 'maryse.pollich@example.org', NULL, 'Emmie', 'Konopelski', '33', '3451012208', 'Libyan Arab Jamahiriya');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('97552', '5929 Clarabelle View', 'New Lurlineville', 'maymie.cummings@example.org', NULL, 'Syble', 'Bradtke', '84', '3477603709', 'Philippines');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('11278', '9111 Quitzon Mount', 'Harveyfurt', 'mclaughlin.raquel@example.org', NULL, 'Dameon', 'Mraz', '57', '3470317078', 'Ecuador');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('3497', '20976 Hattie Grove Suite 655', 'East Monica', 'melvina11@example.org', NULL, 'Destinee', 'McGlynn', '19', '3455699089', 'Iceland');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('85552', '11203 Rozella Light Apt. 627', 'Rauside', 'meredith.mitchell@example.com', NULL, 'Felicita', 'Russel', '69', '3478236485', 'Saint Martin');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('7036', '645 Turcotte Overpass', 'Greggside', 'mireille.bauch@example.org', NULL, 'Maiya', 'Schoen', '64', '3461443746', 'Bulgaria');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('17289', '0845 Fahey River Suite 724', 'South Noemie', 'mitchell.lesch@example.net', NULL, 'Griffin', 'Kshlerin', '27', '3472197177', 'Ukraine');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('43553', '171 Camila Land', 'Wunschborough', 'mraz.murray@example.com', NULL, 'Weldon', 'Mante', '53', '3477154583', 'Cape Verde');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('54342', '48162 Waelchi Valley Suite 415', 'North Tyshawn', 'nader.cydney@example.net', NULL, 'Jayme', 'Rau', '64', '3466798349', 'Gibraltar');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('57441', '5882 Ewald Ridges', 'Jaredfurt', 'nikki84@example.net', NULL, 'Earnestine', 'Funk', '55', '3452454660', 'Palestinian Territory');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('7833', '1361 Tierra Haven', 'Schoenburgh', 'no\'hara@example.com', NULL, 'Lia', 'Conn', '37', '3475615008', 'Bulgaria');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('14561', '57499 Audie Mountains', 'Santinaberg', 'olen07@example.net', NULL, 'Whitney', 'Dooley', '18', '3450579035', 'Wallis and Futuna');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('48705', '1714 Lynch Drive Apt. 257', 'East Fletcher', 'ortiz.evangeline@example.com', NULL, 'Hayden', 'Kirlin', '79', '3475735925', 'Czech Republic');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('67102', '305 Cydney Villages', 'Labadieborough', 'pfeffer.lawson@example.org', NULL, 'Kristin', 'McKenzie', '47', '3465677205', 'Saint Martin');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('4298', '61822 Rahsaan Cliffs Apt. 149', 'North Jacey', 'pgrimes@example.com', NULL, 'Ursula', 'Hettinger', '89', '3455858832', 'Oman');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('50928', '198 Brendon Rapid Suite 034', 'Lake Stanford', 'quinn.fritsch@example.net', NULL, 'Crawford', 'Fahey', '53', '3476577074', 'Saint Helena');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('37673', '922 Spencer Estates Apt. 115', 'Gutmanntown', 'rickie69@example.com', NULL, 'Yadira', 'Moore', '32', '3468201868', 'Lesotho');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('64208', '159 Robel Islands', 'Hartmannfurt', 'sallie06@example.net', NULL, 'Zelda', 'Frami', '41', '3464370312', 'Moldova');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('41574', '49221 Hand Hollow Apt. 700', 'Kaelynbury', 'sandra.volkman@example.org', NULL, 'Corene', 'Ruecker', '67', '3451951508', 'Italy');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('72335', '417 Alda Parkway', 'Boyerfort', 'sandy.hilll@example.org', NULL, 'Fabiola', 'Grant', '81', '3467107721', 'Maldives');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('48401', '715 Reynolds Stravenue Apt. 33', 'North Haylee', 'santos.boehm@example.com', NULL, 'Elenora', 'Gislason', '35', '3461771238', 'Saint Pierre and Miquelon');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('60512', '69850 Jacobs Plaza', 'East Devante', 'scotty.dibbert@example.net', NULL, 'Amie', 'Koepp', '62', '3478611584', 'Iceland');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('23505', '246 Lyla Underpass Suite 967', 'Pinkview', 'sheldon.emard@example.net', NULL, 'Tremaine', 'Bradtke', '67', '3467277480', 'Holy See (Vatican City State)');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('22434', '204 Nicolas Harbor', 'New Hannaburgh', 'smuller@example.com', NULL, 'Zoe', 'Ledner', '86', '3457585947', 'South Georgia and the South Sa');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('70348', '4320 Conn Flats', 'Nigelside', 'suzanne.stanton@example.org', NULL, 'William', 'Pacocha', '61', '3455171011', 'Hong Kong');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('5344', '496 Geovanny Pines Suite 593', 'Franeckifort', 'tiffany.brekke@example.com', NULL, 'Hank', 'Leannon', '86', '3472298407', 'France');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('6441', '1564 Rosenbaum Flats Suite 254', 'Stiedemannton', 'tyrique39@example.org', NULL, 'Juliana', 'Wiegand', '4', '3466949008', 'Montenegro');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('14887', '0856 Deja Prairie', 'West Meredith', 'vanessa.nienow@example.org', NULL, 'Shyanne', 'Mertz', '62', '3474483496', 'Ghana');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('38986', '13427 Ashtyn Trail Apt. 806', 'East Annabury', 'vblanda@example.net', NULL, 'Missouri', 'Hammes', '30', '3464248803', 'United States Minor Outlying I');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('72891', '75780 Douglas Mountains Suite', 'Adeliabury', 'vmetz@example.org', NULL, 'Agustin', 'Heaney', '2', '3467189435', 'Turks and Caicos Islands');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('27771', '9414 Nicolas Ways', 'South Fanny', 'weldon.rolfson@example.org', NULL, 'Jaylon', 'Daniel', '30', '3471266185', 'Guatemala');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('16975', '010 Mueller Brooks', 'Lake Annabel', 'will.brice@example.org', NULL, 'Samara', 'Cummings', '95', '3460532004', 'Togo');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('40739', '1155 Randi Field', 'Port Minnie', 'xboyle@example.com', NULL, 'Santos', 'Abernathy', '97', '3460636926', 'Albania');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('78282', '687 Marquardt Ridges', 'Port Mckenna', 'xkonopelski@example.com', NULL, 'Ashlee', 'Batz', '83', '3479186286', 'Holy See (Vatican City State)');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('71155', '634 Schiller Highway', 'North Casey', 'yundt.selmer@example.net', NULL, 'Eduardo', 'Pacocha', '12', '3461936253', 'United Arab Emirates');
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`) VALUES ('34747', '806 Elmo Wells Apt. 193', 'Lake Orlandview', 'zstiedemann@example.com', NULL, 'Domenica', 'Grimes', '47', '3464493252', 'Nicaragua');

INSERT INTO `NotificationUserWeb` (`idDesc`,`path`,`date`,`email`) VALUES ('0','www.brokeaf.com/source/ordine1','2015-11-05 14:29:36','adrain.johnson@example.com');

INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP(), '0', '0');
INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP()-1, '1', '1');

INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1313932365', '0', '3', '2', '12.86');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1952322448', '0', '1', '5', '9.57');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3438720877', '0', '2', '1', '17.76');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3577771822', '1', '2', '4', '1.32');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3773158679', '2', '2', '1', '18.6');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('4943693566', '1', '1', '5', '2.87');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('7775972008', '2', '4', '1', '19.99');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('8791859210', '2', '3', '5', '19.69');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9150815034', '2', '1', '3', '3.36');
INSERT INTO `DetailsItem` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9876711578', '2', '3', '2', '12.73');


INSERT INTO `Img` (`serialCode`, `path`) VALUES ('1313932365', 'img-2');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('1952322448', 'img-6');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('3438720877', 'img-1');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('3577771822', 'img-3');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('3773158679', 'img-7');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('4943693566', 'img-4');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('7775972008', 'img-0');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('8791859210', 'img-5');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('9150815034', 'img-9');
INSERT INTO `Img` (`serialCode`, `path`) VALUES ('9876711578', 'img-8');
