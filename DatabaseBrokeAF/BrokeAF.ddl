-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.1              
-- * Generator date: Dec 19 2018              
-- * Generation date: Sat Dec  5 19:07:25 2020 
-- * LUN file: /home/sempro/brokeaf/DatabaseBrokeAF/BrokeAF_0.4.lun 
-- * Schema: BrokeAF_Logic/1-1 
-- ********************************************* 


-- Database Section
-- ________________ 
DROP TABLE IF EXISTS `BrokeAF`;

create database BrokeAF;
use BrokeAF;


-- Tables Section
-- _____________ 

create table Categories (
     name char(10) not null,
     keywords char(10) not null,
     constraint IDCategory primary key (name));

create table DetailsItems (
     serialCode char(10) not null,
     positionIndex int not null,
     quantity char(4) not null,
     price char(10) not null,
     IdList bigint not null);

create table Images (
     path char(20) not null,
     serialCode char(10) not null,
     constraint IDImage primary key (path));

create table Items (
     quantity int not null,
     isVisible char not null,
     description char(20) not null,
     price char(10) not null,
     name char(10) not null,
     serialCode char(10) not null,
     category char(10) not null,
     emailSeller char(10) not null,
     constraint IDItem_ID primary key (serialCode));

create table ListsItems (
     total char(10) not null,
     idList bigint not null,
     idShoppingCart char(10) not null,
     constraint IDListItem primary key (idList),
     constraint FKhold_ID unique (idShoppingCart));

create table NotificationsSeller (
     emailSeller char(254) not null,
     description char(32) not null,
     path char(20) not null,
     date char(12) not null,
     constraint IDNotificationSeller primary key (emailSeller, date));

create table NotificationsUser (
     emailUser char(254) not null,
     description char(32) not null,
     path char(32) not null,
     date char(12) not null,
     constraint IDNotificationUser primary key (emailUser, date));

create table Orders (
     emailUser char(10) not null,
     cap int not null,
     city char(10) not null,
     name char(10) not null,
     surname char(10) not null,
     phoneNumber char(12) not null,
     province char(6) not null,
     address char(10) not null,
     datePayment char(12) not null,
     IdList bigint not null,
     constraint IDOrder primary key (emailUser, datePayment),
     constraint FKcontain_ID unique (IdList));

create table Sellers (
     cap int not null,
     address char(32) not null,
     city char(10) not null,
     companyAddress char(32) not null,
     companyName char(32) not null,
     email char(254) not null,
     name char(10) not null,
     surname char(10) not null,
     password char(32) not null,
     phoneNumber char(12) not null,
     province char(6) not null,
     constraint IDSeller primary key (email));

create table ShoppingCarts (
     idShoppingCart char(10) not null,
     constraint IDShoppingCart_ID primary key (idShoppingCart));

create table Users (
     cap int not null,
     address char(10) not null,
     city char(10) not null,
     email char(254) not null,
     idShoppingCart char(10),
     name char(10) not null,
     surname char(10) not null,
     password char(32) not null,
     phoneNumber char(12) not null,
     province char(6) not null,
     constraint IDUser primary key (email),
     constraint FKwhant_ID unique (idShoppingCart));

create table Visitors (
     lastSeen char(12) not null,
     idVisitor char(8) not null,
     idShoppingCart char(10),
     constraint IDVisitor primary key (idVisitor),
     constraint FKwish_ID unique (idShoppingCart));


-- Constraints Section
-- ___________________ 

alter table DetailsItems add constraint FKitemise
     foreign key (serialCode)
     references Items (serialCode);

alter table DetailsItems add constraint FKincorporates
     foreign key (IdList)
     references ListsItems (idList);

alter table Images add constraint FKvisualize
     foreign key (serialCode)
     references Items (serialCode);

-- Not implemented
-- alter table Item add constraint IDItem_CHK
--     check(exists(select * from Image
--                  where Image.serialCode = serialCode)); 

alter table Items add constraint FKkind
     foreign key (category)
     references Categories (name);

alter table Items add constraint FKbelong
     foreign key (emailSeller)
     references Sellers (email);

alter table ListsItems add constraint FKhold_FK
     foreign key (idShoppingCart)
     references ShoppingCarts (idShoppingCart);

alter table NotificationsSeller add constraint FKnotify_Seller
     foreign key (emailSeller)
     references Sellers (email);

alter table NotificationsUser add constraint FKnotify_User
     foreign key (emailUser)
     references Users (email);

alter table Orders add constraint FKbuy
     foreign key (emailUser)
     references Users (email);

alter table Orders add constraint FKcontain_FK
     foreign key (IdList)
     references ListsItems (idList);

-- Not implemented
-- alter table ShoppingCart add constraint IDShoppingCart_CHK
--     check(exists(select * from Visitor
--                  where Visitor.idShoppingCart = idShoppingCart)); 

-- Not implemented
-- alter table ShoppingCart add constraint IDShoppingCart_CHK
--     check(exists(select * from User
--                  where User.idShoppingCart = idShoppingCart)); 

alter table Users add constraint FKwhant_FK
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);

alter table Visitors add constraint FKwish_FK
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);


-- Index Section
-- _____________ 

