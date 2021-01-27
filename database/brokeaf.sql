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
     name char(64) not null,
     keywords char(64) not null,
     constraint IDCategory primary key (name));

create table ItemDetails (
     serialCode char(64) not null,
     IdList int UNSIGNED NOT NULL,
     positionIndex numeric(16) not null,
     quantity int(16) not null,
     price char(64) not null,
     constraint IDItemDetails primary key (serialCode, IdList));

create table Image (
     serialCode char(64) not null,
     path char(64) not null,
     constraint IDImage primary key (serialCode, path));

create table Item (
     quantity int(11) DEFAULT 1 NOT NULL,
     isVerified char  DEFAULT "1" not null,
     description char(120) not null,
     price char(64) not null,
     name char(64) not null,
     serialCode char(64) not null,
     emailSeller char(64) not null,
     category char(64) not null,
     constraint IDItem_ID primary key (serialCode));

create table ListItems (
     IdList int UNSIGNED NOT NULL,
     constraint IDListItem_ID primary key (IdList));

create table Seller (
     cap numeric(16) not null,
     address char(64) not null,
     city char(64) not null,
     companyAddress char(64) not null,
     companyName char(64) not null,
     email char(64) not null,
     name char(64) not null,
     surname char(64) not null,
     password char(255) not null,
     phoneNumber char(16) not null,
     province char(64) not null,
     salt CHAR(128) DEFAULT 0 NOT NULL,
     constraint IDSeller primary key (email));
     
create table UserWeb (
     cap numeric(16) not null,
     address char(64) not null,
     city char(64) not null,
     email char(64) not null,
     IdList int UNSIGNED NOT NULL,
     name char(64) not null,
     surname char(64) not null,
     password char(255) not null,
     phoneNumber char(64) not null,
     province char(64) not null,
     salt CHAR(128) DEFAULT 0 NOT NULL,
     constraint IDUserWeb primary key (email),
     constraint FKshop_ID unique (IdList));

create table Description(
     description char(255) not null,
     idDesc char(64) not null,
     constraint UniqueDesc unique (description),
     constraint IDNotificationSeller primary key (idDesc));

create table NotificationUser (
     idNotification int UNSIGNED NOT NULL,
     path char(128) not null,
     date datetime not null,
     idDesc char(64) not null,
     emailSeller char(64),
     emailUser char(64),
     constraint FKnotify_UserWeb_des foreign key (idDesc) references Description(idDesc),
     constraint FKnotify_UserWeb foreign key (emailUser) references UserWeb(email),
     constraint FKnotify_UserSeller foreign key (emailSeller) references Seller(email),
     constraint IDNotificationUser primary key (idNotification));

create table Order_UserWeb (
     email char(64) not null,
     cap numeric(16) not null,
     city char(64) not null,
     name char(64) not null,
     surname char(64) not null,
     phoneNumber char(64) not null,
     province char(64) not null,
     address char(64) not null,
     datePayment datetime not null,
     IdList  int UNSIGNED NOT NULL,
     constraint IDOrder_UserWeb primary key (email, datePayment),
     constraint FKcontain_ID unique (IdList));

create table Visitor (
     lastSeen datetime not null,
     idVisitor numeric(16) not null,
     IdList int UNSIGNED NOT NULL,
     constraint IDVisitor primary key (idVisitor),
     constraint FKwish_ID unique (IdList));


-- Constraints Section
-- ___________________ 

ALTER TABLE ListItems
     MODIFY `IdList` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE NotificationUser
     MODIFY `idNotification` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


alter table ItemDetails add constraint FKincorporates
     foreign key (IdList)
     references ListItems(IdList);

alter table ItemDetails add constraint FKitemise
     foreign key (serialCode)
     references Item(serialCode);

alter table Image add constraint FKshow
     foreign key (serialCode)
     references Item(serialCode); 

alter table Item add constraint FKbelong
     foreign key (emailSeller)
     references Seller(email);

alter table Item add constraint FKkind
     foreign key (category)
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

ALTER TABLE NotificationUser
     MODIFY `idNotification` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `ListItems` (IdList) VALUES (1);
INSERT INTO `ListItems` (IdList) VALUES (2);
INSERT INTO `ListItems` (IdList) VALUES (3);
INSERT INTO `ListItems` (IdList) VALUES (4);
INSERT INTO `ListItems` (IdList) VALUES (5);
   
INSERT INTO `Category` (name,keywords) VALUES ('Utensili','cacciavite,fai da te');
INSERT INTO `Category` (name,keywords) VALUES ('Informatica','usb,chiavetta');

/* For test purpose pw is seller */
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`, `salt`) 
     VALUES ('71773', '927 Noble Lock Suite 652', 'South Vicky', '80617 Kutch Meadow Apt. 008\nAn', 'Koch, Hickle and Balistreri', 'seller@s.it', 'Simone', 'Gutmann', 'a95b1468f3f893fe5a76779447ba0fbc2ead8fcfedd007d57c30f60e5c028cfb4e67b118037637ea2d6aeca26fb438ecd819b33fe472c1754db4b832c77de270', '3453479794', 'Mauritania','fa32903c4249ade63484615f896fb3ea58d3a6317fec4d0c8c0a681633aed0bc9b7aa2c26eb4efea43a41876154f84759134bc4c933fc98d1f72c5d43d888d19');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('15353', '0695 Norbert Burgs Apt. 013', 'Karlfort', '537 Schuppe Track\nPort Miles,', 'Rogahn Group', 'adriana90@example.net', 'Hailie', 'Oberbrunner', '1', '3470328087', 'Saint Barthelemy');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('81660', '6494 Wolff Fields Apt. 156', 'North Clydeberg', '261 Leif Fork Apt. 340\nNew Ann', 'Zulauf and Sons', 'daugherty.parker@example.com', 'Jammie', 'Goldner', '75', '3476748497', 'Singapore');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('97923', '381 Ziemann Extensions Apt. 87', 'North Erick', '75574 Upton Islands Suite 812\n', 'Purdy-Volkman', 'devin.swaniawski@example.net', 'Kamille', 'Schinner', '18', '3473147842', 'Swaziland');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('42696', '375 Wunsch Loaf Apt. 446', 'West Shannyport', '079 Collier Turnpike\nEast Barr', 'Hartmann-Corwin', 'immanuel42@example.com', 'Serena', 'Legros', '73', '3479607091', 'Suriname');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('68229', '882 Elliott Square', 'North Jany', '739 Williamson Field\nAugustfur', 'Legros PLC', 'kole.schowalter@example.com', 'Lavada', 'O\'Conner', '71', '3453130043', 'Estonia');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('96747', '964 Joy Route Apt. 944', 'Millerport', '89342 Ceasar Lodge Apt. 314\nTu', 'Murray, Swaniawski and Rodrigu', 'hackett.eleanore@example.org', 'Rebecca', 'Williamson', '24', '3466027085', 'Mayotte');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('66401', '50029 Aufderhar Tunnel', 'South Richmondberg', '19354 Armani Fords\nJonascheste', 'Runte, Runolfsdottir and Zieme', 'pgottlieb@example.com', 'Dante', 'Durgan', '64', '3462239149', 'Costa Rica');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('33295', '197 Amparo Green Suite 712', 'Brandyton', '064 Turcotte Summit\nPort Anton', 'Hayes-G
          utkowski', 'pollich.bianka@example.com', 'Guillermo', 'Beier', '37', '3454150367', 'Palau');
INSERT INTO `Seller` (`cap`, `address`, `city`, `companyAddress`, `companyName`, `email`, `name`, `surname`, `password`, `phoneNumber`, `province`) 
     VALUES ('31291', '0354 Stevie Garden Suite 384', 'North Norma', '918 Auer Manor\nSouth Everardo,', 'Brekke, Tremblay and Quitzon', 'irenner@example.org', 'Carolina', 'Halvorson', '60', '3461641147', 'Saint Vincent and the Grenadin');

INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Con questo cacciavite si manipolano le viti a taglio', '7.91', 'Cacciavite a taglio', '1313932365', 'seller@s.it', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Avanzatissimo strumento di calcolo, e in grado di rappresentare gran parte dei numeri naturali', '5.32', 'Calcolatrice', '1952322448', 'seller@s.it', 'Informatica');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Rocchetto che fara impazzire qualsiasi casalinga annoiata', '8.9', 'Rocchetto di filo', '3438720877', 'irenner@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Con questo cacciavite si manipolano gran parte delle viti esistenti ', '7.62', 'Cacciavite Multifunzione', '3577771822', 'irenner@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Portafoglio in pelle sintetica', '8.21', 'Portafoglio', '3773158679', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Forbici ergonomiche adatte a tagliare la carta', '3.85', 'Forbici', '4943693566', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Con questo cacciavite si manipolano le viti a croce', '5.22', 'Cacciavite a croce', '7775972008', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Strumento segnatempo in acciaio inossidabile', '4.62', 'Orologio', '8791859210', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Prestante lucchetto di sicurezza, impossibile da scalfire', '7.38', 'Lucchetto', '9150815034', 'hackett.eleanore@example.org', 'Utensili');
INSERT INTO `Item` (`isVerified`, `description`, `price`, `name`, `serialCode`, `emailSeller`, `category`) 
     VALUES ('1', 'Memoria di massa dalle alte prestazioni, 5 Mb/s in lettura e scrittura', '4.38', 'Chiavetta USB', '9876711578', 'hackett.eleanore@example.org', 'Informatica');

/* For test purpose pw is user */
INSERT INTO `UserWeb` (`cap`, `address`, `city`, `email`, `IdList`, `name`, `surname`, `password`, `phoneNumber`, `province`, `salt`)
     VALUES ('1158', '8638 Rupert Village Apt. 105', 'Wilhelmineside', 'user@u.it', 2, 'Jennyfer', 'Willms', '58379e96d4920098d346cf140e5d335bef56a68d23d1a8b0a646168172c29e68fdfa186bc9989c4de0ce11e8284ee14c46b782b67c0b9ed4d31ed4e9c2eb2f16', '3464459410', 'Bulgaria', 'bcd714a4878c00f3beb2d1641792676b638854035c616bb5b91e66a43843317939e903522f31ab911dbbb37602c0c8afc6846c225873415e43b9cdeac3116f13');


INSERT INTO `Description` (`description`,`IdDesc`)  VALUES ("Your order was successfully fullfilled.",'0');
INSERT INTO `Description` (`description`,`IdDesc`)  VALUES ("One of your items has been sold.",'1');
INSERT INTO `Description` (`description`,`IdDesc`)  VALUES ("One of your items is out of stock.",'2');

<<<<<<< HEAD
INSERT INTO `NotificationUser` (`idDesc`,`path`,`date`,`emailSeller`,`emailUser`) VALUES ('0','www.brokeaf.com/source/ordine1','2015-11-05 14:29:36',NULL,'adrain.johnson@example.com');
INSERT INTO `NotificationUser` (`idDesc`,`path`,`date`,`emailSeller`,`emailUser`) VALUES ('0','www.brokeaf.com/source/ordine1','2015-11-05 14:29:36','mckenzie.christine@example.net',NULL);

INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP(), '0', '0');
INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP()-1, '1', '1');

INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1952322448', '0', '1', '5', '9.57');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3438720877', '0', '2', '1', '17.76');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1313932365', '0', '3', '2', '12.86');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('4943693566', '1', '1', '5', '2.87');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3577771822', '1', '2', '4', '1.32');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3773158679', '2', '1', '1', '18.6');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('7775972008', '2', '2', '1', '19.99');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('8791859210', '2', '3', '5', '19.69');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9150815034', '2', '4', '3', '3.36');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9876711578', '2', '5', '2', '12.73');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3438720877', '3', '1', '1', '17.76');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1313932365', '3', '2', '2', '12.86');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3577771822', '4', '1', '4', '1.32');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3773158679', '4', '2', '1', '18.6');


INSERT INTO `Order_UserWeb` (`email`, `cap`,`city`, `name`, `surname`, `phoneNumber`, `province`, `address`, `datePayment`, `IdList`) VALUES ('adrain.johnson@example.com', '1158', 'Wilhelmineside', 'Jennyfer', 'Willms', '3464493252', 'Bulgaria', '806 Elmo Wells Apt. 193', CURRENT_TIMESTAMP(), '3');
INSERT INTO `Order_UserWeb` (`email`, `cap`,`city`, `name`, `surname`, `phoneNumber`, `province`, `address`, `datePayment`, `IdList`) VALUES ('adrain.johnson@example.com', '1158', 'Wilhelmineside', 'Jennyfer', 'Willms', '3464493252', 'Bulgaria', '806 Elmo Wells Apt. 193', CURRENT_TIMESTAMP()- 1, '4');
=======
INSERT INTO `NotificationUser` (`idNotification`,`idDesc`,`path`,`date`,`emailSeller`,`emailUser`) 
     VALUES (1,'0','www.brokeaf.com/source/ordine1','2015-11-05 14:29:36',NULL,'user@u.it');
INSERT INTO `NotificationUser` (`idNotification`,`idDesc`,`path`,`date`,`emailSeller`,`emailUser`) 
     VALUES (2,'0','www.brokeaf.com/source/ordine1','2015-11-05 14:29:36','seller@s.it',NULL);

INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP(), '0', 5);
INSERT INTO `Visitor` (`lastSeen`, `idVisitor`, `IdList`) VALUES (CURRENT_TIMESTAMP()-1, '1', 1);


INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('4943693566', 1, '1', '5', '2.87');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3577771822', 1, '2', '4', '1.32');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3773158679', 2, '1', '1', '18.6');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('7775972008', 2, '2', '1', '19.99');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('8791859210', 2, '3', '5', '19.69');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9150815034', 2, '4', '3', '3.36');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('9876711578', 2, '5', '2', '12.73');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3438720877', 3, '1', '1', '17.76');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1313932365', 3, '2', '2', '12.86');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3577771822', 4, '1', '4', '1.32');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3773158679', 4, '2', '1', '18.6');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1952322448', 5, '1', '5', '9.57');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('3438720877', 5, '2', '1', '17.76');
INSERT INTO `ItemDetails` (`serialCode`, `IdList`, `positionIndex`, `quantity`, `price`) VALUES ('1313932365', 5, '3', '2', '12.86');


INSERT INTO `Order_UserWeb` (`email`, `cap`,`city`, `name`, `surname`, `phoneNumber`, `province`, `address`, `datePayment`, `IdList`) 
     VALUES ('user@u.it', '1158', 'Wilhelmineside', 'Jennyfer', 'Willms', '3464493252', 'Bulgaria', '806 Elmo Wells Apt. 193', CURRENT_TIMESTAMP(), 3);
INSERT INTO `Order_UserWeb` (`email`, `cap`,`city`, `name`, `surname`, `phoneNumber`, `province`, `address`, `datePayment`, `IdList`) 
     VALUES ('user@u.it', '1158', 'Wilhelmineside', 'Jennyfer', 'Willms', '3464493252', 'Bulgaria', '806 Elmo Wells Apt. 193', CURRENT_TIMESTAMP()- 1, 4);
>>>>>>> 7dab8b76c9cf82e38385b26ce94a45d656759808

INSERT INTO `Image` (`serialCode`, `path`) VALUES ('1313932365', 'image-2.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('1952322448', 'image-6.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('3438720877', 'image-1.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('3577771822', 'image-3.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('3773158679', 'image-7.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('4943693566', 'image-4.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('7775972008', 'image-0.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('8791859210', 'image-5.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('9150815034', 'image-9.jpg');
INSERT INTO `Image` (`serialCode`, `path`) VALUES ('9876711578', 'image-8.jpg');
