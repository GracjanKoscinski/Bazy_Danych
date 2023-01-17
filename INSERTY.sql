USE perfumeria
INSERT INTO Marka
VALUES
('Dior','Francja'),
('Chanel','Francja'),
('Gucci','W³ochy'),
('Yves Saint Laurent','Francja'),
('Armani','W³ochy'),
('Tom Ford','USA'),
('Calvin Klein','USA'),
('Lancome','Francja'),
('Versace','Francja')

INSERT INTO Perfumy
VALUES
/* 1 Dior */
(1,'J adore',150,'orientalna'),
(1,'Sauvage',200,'kwiatowa'),
(1,'Hypnotic Poison',125,'orientalno-drzewna'),
(1,'Miss Dior',175,'kwiatowa'),
(1,'Poison',90,'pudrowa'),
/* 2 Chanel */
(2,'Coco Mademoiselle',150,'pudrowa'),
(2,'Chance',200,'orientalna'),
(2,'No.5',125,'kwiatowa'),
(2,'Allure',175,'orientalno-drzewna'),
(2,'Gabrielle',90,'orientalna'),
/* 3 Gucci */
(3,'Guilty',150,'pudrowa'),
(3,'Flora',150,'aromatyczna'),
(3,'Bamboo',125,'drzewna'),
(3,'Bloom',175,'kwiatowa'),
(3,'Guilty Intense',90,'pudrowa'),
/* 4 Yves Saint Laurent*/
(4,'Black opium',150,'pudrowa'),
(4,'Mon Paris',250,'kwiatowa'),
(4,'Libre',160,'orientalna'),
(4,'Nuit Blanche',150,'pudrowa'),
(4,'Opium',150,'drzewna'),
/* 5 Armani */
(5,'Si',159,'orientalno-drzewna'),
(5,'Acqua di Gio',220,'drzewna'),
(5,'Code',130,'orientalna'),
(5,'Si Passione',125,'pudrowa'),
(5,'Eau de Nuit',350,'kwiatowa'),
/* Tom Ford */
(6,'Black Orchid',205,'orientalna'),
(6,'Tobacco Vanille',195,'skorzana'),
(6,'Oud Wood',400,'drzewna'),
(6,'Neroli Portofino',320,'kwiatowa'),
(6,'Private Blend Oud Minerale',350,'pudrowa'),
/* 7 Calvin Klein */
(7,'Eternity',200,'skorzana'),
(7,'CK One',175,'kwiatowa'),
(7,'Obsession',150,'orientalno-drzewna'),
(7,'Euphoria',315,'kwiatowa'),
(7,'Eternity Moment',325,'pudrowa'),
/* 8 Lancome */
(8,'La vie est belle',150,'pudrowa'),
(8,'Miracle',140,'skorzana'),
(8,'Tresor',255,'drzewna'),
(8,'Hypnose',250,'orientalna'),
(8,'Idole',170,'pudrowa'),
/* 9 Versace */
(9,'Bright Crystal',200,'drzewna'),
(9,'Eros',200,'orientalno-drzewna'),
(9,'Yellow Diamond',155,'skorzana'),
(9,'Crystal Noir',215,'pudrowa'),
(9,'Vanitas',255,'drzewna')

INSERT INTO Klient
VALUES
('Jan', 'Kowalski', 'ul. Wiejska', '02-495', 'Warszawa', '1', 'jan.kowalski@onet.pl', '555-555-555'),
('Anna', 'Nowak', 'ul. Polna', '31-111', 'Kraków', '2', 'anna.nowak@gmail.com', '321-415-556'),
('Piotr', 'Wiœniewski', 'ul. Lipowa', '80-222', 'Gdañsk', '3', 'piotr.wisniewski@wp.pl', '457-887-557'),
('Beata', 'Kwiatkowska', 'ul. Drzewna', '71-333', 'Szczecin', '4', 'beata.kwiatkowska@gmail.com', '555-555-558'),
('Tomasz', 'Lewandowski', 'ul. Parkowa', '50-444', 'Wroc³aw', '5', 'tomasz.lewandowski@gmail.com', '555-555-559'),
('Katarzyna', 'Zieliñska', 'ul. Spacerowa', '66-777', 'Poznañ', '6', 'katarzyna.zielinska@gmail.com', '789-312-600'),
('Micha³', 'Wójcik', 'ul. S³oneczna', '00-999', 'Lublin', '7', 'michal.wojcik@gmail.com', '555-555-601'),
('Paulina', 'Krawczyk', 'ul. Kwiatowa', '11-111', 'Bia³ystok', '8', 'paulina.krawczyk@onet.pl', '555-333-602'),
('Sylwia', 'Kaczmarek', 'ul. Dêbowa', '22-222', 'Katowice', '9', 'sylwia.kaczmarek@gmail.com', '765-555-603'),
('Marcin', 'Piotrowski', 'ul. Zielona', '33-333', '£ódŸ', '10', 'marcin.piotrowski@wp.pl', '555-555-604'),
('Ewelina', 'Grabowska', 'ul. Sosnowa', '44-444', 'Bydgoszcz', '11', 'ewelina.grabowska@gmail.com', '742-555-605'),
('Ewa', 'Kaczyñska', 'ul. Zielona', '11-111', 'Katowice', '7', 'ewa.kaczynska@gmail.com', '555-555-561'),
('Janusz', 'Trzaskowski', 'ul. Spokojna', '22-222', '£ódŸ', '8', 'janusz.trzaskowski@wp.pl', '555-555-562'),
('Katarzyna', 'Szymañska-Borowiak', 'ul. Kwiatowa', '33-333', 'Gdañsk', '9', 'katarzyna.szymanska-borowiak@gmail.com', '797-555-563'),
('Marek', 'Kuchciñski', 'ul. Leœna', '44-444', 'Gdynia', '10', 'marek.kuchcinski@gmail.com', '555-555-564'),
('Agnieszka', 'Koz³owska-Rajewicz', 'ul. Nowa', '55-555', 'Kraków', '11', 'agnieszka.kozlowska-rajewicz@wp.pl', '555-555-565')




INSERT INTO Dostêpnoœæ
VALUES
(1,15,'EuroFragnance'),
(2,2,'Mane'),
(3,4,'IFF'),
(4,15,'Firmenich'),
(5,15,'Frutarom'),
(6,0,'EuroFragnance'),
(7,8,'Frutarom'),
(8,11,'Mane'),
(9,23,'Firmenich'),
(10,2,'Mane'),
(11,4,'IFF'),
(12,15,'Firmenich'),
(13,15,'Frutarom'),
(14,0,'EuroFragnance'),
(15,8,'Frutarom'),
(16,11,'Mane'),
(17,23,'Firmenich'),
(18,15,'Frutarom'),
(19,0,'EuroFragnance'),
(20,8,'Frutarom'),
(21,10,'Mane'),
(22,23,'Firmenich'),
(23,2,'Mane'),
(24,4,'IFF'),
(25,15,'EuroFragnance'),
(26,2,'Mane'),
(27,4,'IFF'),
(28,15,'EuroFragnance'),
(29,2,'Mane'),
(30,4,'IFF'),
(31,1,'EuroFragnance'),
(32,9,'EuroFragnance'),
(33,13,'EuroFragnance'),
(34,8,'Frutarom'),
(35,11,'Frutarom'),
(36,28,'Frutarom'),
(37,18,'Frutarom'),
(38,4,'IFF'),
(39,24,'IFF'),
(40,9,'IFF'),
(41,13,'Firmenich'),
(42,18,'Firmenich'),
(43,2,'Firmenich'),
(44,1,'Firmenich'),
(45,3,'Firmenich')



INSERT INTO Sk³ad
VALUES
(1,'Ró¿a', 'Pi¿mo', 'Cedr'),
(2,'Liœcie fio³ka', 'Kwiat pomarañczy', 'Drzewo sanda³owe'),
(3,'Kawa', 'Kwiat pomarañczy', 'Czarny pieprz'),
(4,'GoŸdzik', 'Kwiat pomarañczy', 'Drzewo cedrowe'),
(5,'Czarna porzeczka', 'Liœcie fio³ka', 'Czarny pieprz'),
(6,'Liœcie fio³ka', 'Kwiat pomarañczy', 'Drzewo sanda³owe'),
(7,'Kawa', 'GoŸdzik', 'Czarny pieprz'),
(8,'Kwiat pomarañczy','Kawa', 'Drzewo cedrowe'),
(9,'Czarna porzeczka', 'Drzewo cedrowe', 'Czarny pieprz'),
(10,'Bergamotka', 'Frezja', 'Benzoes'),
(11,'Cytryna', 'Ró¿a', 'Wanilia'),
(12,'Mandarynka', 'Konwalia', 'Drzewo cedrowe'),
(13,'Kardamon', 'Jaœmin', 'Fasolka tonka'),
(14,'Imbir', 'Lilia', 'Nuty drzewne'),
(15,'Narcyz', 'Kwiat pomarañczy', 'Czarny pieprz'),
(16,'Pomarañcza', 'GoŸdzik', 'Paczula'),
(17,'Ró¿a', 'Kwiat pomarañczy', 'Benzoes'),
(18,'Kwiat pomarañczy', 'GoŸdzik', 'Cedr'),
(19,'Kawa', 'GoŸdzik', 'Czarny pieprz'),
(20,'Kwiat pomarañczy','Kawa', 'Drzewo cedrowe'),
(21,'Iris', 'Jaœmin', 'Cedr'),
(22,'Lawenda', 'Kwiat pomarañczy', 'Benzoes'),
(23,'Czarny pieprz', 'Ró¿a', 'Drzewo sanda³owe'),
(24,'Pomarañcza', 'Fio³ek', 'Czarny pieprz'),
(25,'Ró¿a', 'Drzewo ró¿ane', 'Benzoes'),
(26,'Kwiat pomarañczy', 'Imbir', 'Cedr'),
(27,'Drzewo cedrowe', 'Ró¿a', 'Pi¿mo'),
(28,'Kwiat pomarañczy', 'Konwalia', 'Cedr'),
(29,'Kwiat pomarañczy', 'GoŸdzik', 'Benzoes'),
(30,'Kwiat pomarañczy', 'Jaœmin', 'Cedr'),
(31,'Ró¿a', 'Imbir', 'Czarny pieprz'),
(32,'Kwiat pomarañczy', 'Konwalia', 'Cedr'),
(33,'Drzewo cedrowe', 'Ró¿a', 'Pi¿mo'),
(34,'Kwiat pomarañczy', 'Konwalia', 'Cedr'),
(35,'Kwiat pomarañczy', 'GoŸdzik', 'Benzoes'),
(36,'Kwiat pomarañczy', 'Jaœmin', 'Cedr'),
(37,'Ró¿a', 'Imbir', 'Czarny pieprz'),
(38,'Kwiat pomarañczy', 'Konwalia', 'Cedr'),
(39,'Drzewo cedrowe', 'Ró¿a', 'Pi¿mo'),
(40,'Kwiat pomarañczy', 'Konwalia', 'Cedr'),
(41,'Kwiat pomarañczy', 'GoŸdzik', 'Benzoes'),
(42,'Czarny pieprz', 'Ró¿a', 'Drzewo sanda³owe'),
(43,'Pomarañcza', 'Fio³ek', 'Czarny pieprz'),
(44,'Ró¿a', 'Drzewo ró¿ane', 'Benzoes'),
(45,'Kwiat pomarañczy', 'Imbir', 'Cedr')


INSERT INTO Pracownik
VALUES
('Jan', 'Kowalski', 5000, '890-314-777', 'jan.kowalski@gmail.com'),
('Anna', 'Nowak', 5250, '422-402-556', 'anna.nowak@gmail.com'),
('Piotr', 'Wiœniewski', 6500, '789-690-678', 'piotr.wisniewski@gmail.com'),
('Agnieszka', 'Wójcik', 4900, '567-677-558', 'agnieszka.wojcik@gmail.com'),
('Andrzej', 'Kowalczyk', 5600, '797-555-559', 'andrzej.kowalczyk@gmail.com')



INSERT INTO Zamówienie
VALUES
(1,2,'2022-12-31','2023-01-01','Kraków','ul. Polna',2),
(1,4,'2022-11-30','2022-12-01','Szczecin','ul. Drzewna',4),
(1,7,'2022-10-11','2022-10-11','Lublin','ul. S³oneczna',7),
(1,11,'2022-11-11','2022-11-13','Bydgoszcz','ul. Dêbowa',11),
(2,12,'2022-12-03','2022-12-05','Katowice','ul. Zielona',7),
(2,1,'2022-12-01','2022-12-03','Warszawa','ul. Wiejska',1),
(2,3,'2022-10-01','2022-10-03','Gdynia','ul. Zielona',11),
(3,5,'2022-10-04','2022-10-04','Wroc³aw','ul. Prakowa',5),
(3,16,'2022-09-04','2022-09-04','Kraków','ul. Nowa',11),
(3,15,'2022-09-12','2022-09-14','Gdynia','ul. Leœna',10),
(4,6,'2022-10-21','2022-10-22','Poznañ','ul. Spacerowa',6),
(4,8,'2022-10-25','2022-10-25','Bia³ystok','ul. Kwiatowa',8),
(4,9,'2022-11-28','2022-11-29','Katowice','ul. Dêbowa',9),
(5,10,'2022-08-30','2022-09-01','£ódŸ','ul. Zielona',10),
(5,13,'2022-09-11','2022-09-15','£ódŸ','ul. Spokojna',8),
(5,14,'2022-12-02','2022-12-02','Gdañsk','ul. Kwiatowa',9)


INSERT INTO Perfumy_has_Zamówienie
VALUES
(1,14),
(4,1),
(25,2),
(18,15),
(34,3),
(42,4),
(30,5),
(35,8),
(5,6),
(27,7),
(25,9),
(29,10),
(45,12),
(38,11),
(11,13),
(12,16)
