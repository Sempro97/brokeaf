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

create database BrokeAF_Logic;
use BrokeAF_Logic;


-- Tables Section
-- _____________ 

create table Category (
     name char(10) not null,
     keywords char(10) not null,
     constraint IDCategory primary key (name));

create table DetailsItem (
     serialCode char(10) not null,
     positionIndex int not null,
     quantity char(4) not null,
     price char(10) not null,
     IdList bigint not null);

create table Image (
     path char(20) not null,
     serialCode char(10) not null,
     constraint IDImage primary key (path));

create table Item (
     quantity int not null,
     isVisible char not null,
     description char(20) not null,
     price char(10) not null,
     name char(10) not null,
     serialCode char(10) not null,
     category char(10) not null,
     emailSeller char(10) not null,
     constraint IDItem_ID primary key (serialCode));

create table ListItems (
     total char(10) not null,
     idList bigint not null,
     idShoppingCart char(10) not null,
     constraint IDListItem primary key (idList),
     constraint FKhold_ID unique (idShoppingCart));

create table NotificationSeller (
     emailSeller char(254) not null,
     description char(32) not null,
     path char(20) not null,
     date char(12) not null,
     constraint IDNotificationSeller primary key (emailSeller, date));

create table NotificationUser (
     emailUser char(254) not null,
     description char(32) not null,
     path char(32) not null,
     date char(12) not null,
     constraint IDNotificationUser primary key (emailUser, date));

create table Order (
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

create table Seller (
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

create table ShoppingCart (
     idShoppingCart char(10) not null,
     constraint IDShoppingCart_ID primary key (idShoppingCart));

create table User (
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

create table Visitor (
     lastSeen char(12) not null,
     idVisitor char(8) not null,
     idShoppingCart char(10),
     constraint IDVisitor primary key (idVisitor),
     constraint FKwish_ID unique (idShoppingCart));


-- Constraints Section
-- ___________________ 

alter table DetailsItem add constraint FKitemise
     foreign key (serialCode)
     references Item (serialCode);

alter table DetailsItem add constraint FKincorporates
     foreign key (IdList)
     references ListItems (idList);

alter table Image add constraint FKvisualize
     foreign key (serialCode)
     references Item (serialCode);

-- Not implemented
-- alter table Item add constraint IDItem_CHK
--     check(exists(select * from Image
--                  where Image.serialCode = serialCode)); 

alter table Item add constraint FKkind
     foreign key (category)
     references Category (name);

alter table Item add constraint FKbelong
     foreign key (emailSeller)
     references Seller (email);

alter table ListItems add constraint FKhold_FK
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);

alter table NotificationSeller add constraint FKnotify_Seller
     foreign key (emailSeller)
     references Seller (email);

alter table NotificationUser add constraint FKnotify_User
     foreign key (emailUser)
     references User (email);

alter table Order add constraint FKbuy
     foreign key (emailUser)
     references User (email);

alter table Order add constraint FKcontain_FK
     foreign key (IdList)
     references ListItems (idList);

-- Not implemented
-- alter table ShoppingCart add constraint IDShoppingCart_CHK
--     check(exists(select * from Visitor
--                  where Visitor.idShoppingCart = idShoppingCart)); 

-- Not implemented
-- alter table ShoppingCart add constraint IDShoppingCart_CHK
--     check(exists(select * from User
--                  where User.idShoppingCart = idShoppingCart)); 

alter table User add constraint FKwhant_FK
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);

alter table Visitor add constraint FKwish_FK
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);


-- Index Section
-- _____________ 

