-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.1              
-- * Generator date: Dec 19 2018              
-- * Generation date: Sun Nov 29 17:10:59 2020 
-- * LUN file: /home/sempro/brokeaf/DatabaseBrokeAF/BrokeAF_0.2.lun 
-- * Schema: BrokeAF_Logic/1-1 
-- ********************************************* 


-- Database Section
-- ________________ 

create database BrokeAF_Logic;
use BrokeAF_Logic;


-- Tables Section
-- _____________ 

create table Category (
     keywords char(20) not null,
     category char(10) not null,
     constraint ID primary key (category));

create table DetailsItem (
     idShoppingCart char(12) not null,
     serialCode char(12) not null,
     positionIndex int not null,
     quantity int not null,
     price float(8) not null,
     constraint IDDetailsItem primary key (idShoppingCart, serialCode));

create table Item (
     email char(15) not null,
     name char(10) not null,
     price float(8) not null,
     serialCode char(12) not null,
     category char(10) not null,
     constraint IDItem_1 primary key (serialCode));

create table itemToVerify (
     name char(10) not null,
     price float(8) not null,
     serialCode char(12) not null,
     constraint IDitemToVerify_ID primary key (serialCode));

create table propose (
     serialCode char(12) not null,
     email char(15) not null,
     constraint IDpropose primary key (serialCode, email));

create table Seller (
     address char(20) not null,
     city char(12) not null,
     email char(15) not null,
     name char(10) not null,
     surname char(10) not null,
     password bigint not null,
     phoneNumber char(15) not null,
     province char(8) not null,
     companyAddress char(15) not null,
     companyName char(15) not null,
     serialCode char(12) not null,
     constraint IDSeller primary key (email));

create table ShoppingCart (
     idShoppingCart char(12) not null,
     email char(12) not null,
     date date not null,
     total float(8) not null,
     payment date,
     constraint IDShoppingCart primary key (idShoppingCart),
     constraint FKwhant_ID unique (email));

create table User (
     address char(20) not null,
     city char(12) not null,
     email char(15) not null,
     name char(10) not null,
     surname char(10) not null,
     password bigint not null,
     phoneNumber char(15) not null,
     province char(8) not null,
     constraint IDUser primary key (email));

create table Visitor (
     lastSeen date not null,
     idVisitor int not null,
     address char(20) not null,
     idShoppingCart char(12),
     constraint IDVisitor primary key (idVisitor));


-- Constraints Section
-- ___________________ 

alter table DetailsItem add constraint FKitemise
     foreign key (serialCode)
     references Item (serialCode);

alter table DetailsItem add constraint FKhold
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);

alter table Item add constraint FKIte_cat
     foreign key (category)
     references Category (category);

-- Not implemented
-- alter table itemToVerify add constraint IDitemToVerify_CHK
--     check(exists(select * from propose
--                  where propose.serialCode = serialCode)); 

alter table propose add constraint FKR_Sel
     foreign key (email)
     references Seller (email);

alter table propose add constraint FKR_ite
     foreign key (serialCode)
     references itemToVerify (serialCode);

alter table ShoppingCart add constraint FKwhant_FK
     foreign key (email)
     references User (email);

alter table Visitor add constraint FKwish
     foreign key (idShoppingCart)
     references ShoppingCart (idShoppingCart);


-- Index Section
-- _____________ 

