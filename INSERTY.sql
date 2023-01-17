USE perfumeria
INSERT INTO Marka
VALUES
('Dior','Francja'),
('Chanel','Francja'),
('Gucci','W�ochy'),
('Yves Saint Laurent','Francja'),
('Armani','W�ochy'),
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
('Anna', 'Nowak', 'ul. Polna', '31-111', 'Krak�w', '2', 'anna.nowak@gmail.com', '321-415-556'),
('Piotr', 'Wi�niewski', 'ul. Lipowa', '80-222', 'Gda�sk', '3', 'piotr.wisniewski@wp.pl', '457-887-557'),
('Beata', 'Kwiatkowska', 'ul. Drzewna', '71-333', 'Szczecin', '4', 'beata.kwiatkowska@gmail.com', '555-555-558'),
('Tomasz', 'Lewandowski', 'ul. Parkowa', '50-444', 'Wroc�aw', '5', 'tomasz.lewandowski@gmail.com', '555-555-559'),
('Katarzyna', 'Zieli�ska', 'ul. Spacerowa', '66-777', 'Pozna�', '6', 'katarzyna.zielinska@gmail.com', '789-312-600'),
('Micha�', 'W�jcik', 'ul. S�oneczna', '00-999', 'Lublin', '7', 'michal.wojcik@gmail.com', '555-555-601'),
('Paulina', 'Krawczyk', 'ul. Kwiatowa', '11-111', 'Bia�ystok', '8', 'paulina.krawczyk@onet.pl', '555-333-602'),
('Sylwia', 'Kaczmarek', 'ul. D�bowa', '22-222', 'Katowice', '9', 'sylwia.kaczmarek@gmail.com', '765-555-603'),
('Marcin', 'Piotrowski', 'ul. Zielona', '33-333', '��d�', '10', 'marcin.piotrowski@wp.pl', '555-555-604'),
('Ewelina', 'Grabowska', 'ul. Sosnowa', '44-444', 'Bydgoszcz', '11', 'ewelina.grabowska@gmail.com', '742-555-605'),
('Ewa', 'Kaczy�ska', 'ul. Zielona', '11-111', 'Katowice', '7', 'ewa.kaczynska@gmail.com', '555-555-561'),
('Janusz', 'Trzaskowski', 'ul. Spokojna', '22-222', '��d�', '8', 'janusz.trzaskowski@wp.pl', '555-555-562'),
('Katarzyna', 'Szyma�ska-Borowiak', 'ul. Kwiatowa', '33-333', 'Gda�sk', '9', 'katarzyna.szymanska-borowiak@gmail.com', '797-555-563'),
('Marek', 'Kuchci�ski', 'ul. Le�na', '44-444', 'Gdynia', '10', 'marek.kuchcinski@gmail.com', '555-555-564'),
('Agnieszka', 'Koz�owska-Rajewicz', 'ul. Nowa', '55-555', 'Krak�w', '11', 'agnieszka.kozlowska-rajewicz@wp.pl', '555-555-565')




INSERT INTO Dost�pno��
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



INSERT INTO Sk�ad
VALUES
(1,'R�a', 'Pi�mo', 'Cedr'),
(2,'Li�cie fio�ka', 'Kwiat pomara�czy', 'Drzewo sanda�owe'),
(3,'Kawa', 'Kwiat pomara�czy', 'Czarny pieprz'),
(4,'Go�dzik', 'Kwiat pomara�czy', 'Drzewo cedrowe'),
(5,'Czarna porzeczka', 'Li�cie fio�ka', 'Czarny pieprz'),
(6,'Li�cie fio�ka', 'Kwiat pomara�czy', 'Drzewo sanda�owe'),
(7,'Kawa', 'Go�dzik', 'Czarny pieprz'),
(8,'Kwiat pomara�czy','Kawa', 'Drzewo cedrowe'),
(9,'Czarna porzeczka', 'Drzewo cedrowe', 'Czarny pieprz'),
(10,'Bergamotka', 'Frezja', 'Benzoes'),
(11,'Cytryna', 'R�a', 'Wanilia'),
(12,'Mandarynka', 'Konwalia', 'Drzewo cedrowe'),
(13,'Kardamon', 'Ja�min', 'Fasolka tonka'),
(14,'Imbir', 'Lilia', 'Nuty drzewne'),
(15,'Narcyz', 'Kwiat pomara�czy', 'Czarny pieprz'),
(16,'Pomara�cza', 'Go�dzik', 'Paczula'),
(17,'R�a', 'Kwiat pomara�czy', 'Benzoes'),
(18,'Kwiat pomara�czy', 'Go�dzik', 'Cedr'),
(19,'Kawa', 'Go�dzik', 'Czarny pieprz'),
(20,'Kwiat pomara�czy','Kawa', 'Drzewo cedrowe'),
(21,'Iris', 'Ja�min', 'Cedr'),
(22,'Lawenda', 'Kwiat pomara�czy', 'Benzoes'),
(23,'Czarny pieprz', 'R�a', 'Drzewo sanda�owe'),
(24,'Pomara�cza', 'Fio�ek', 'Czarny pieprz'),
(25,'R�a', 'Drzewo r�ane', 'Benzoes'),
(26,'Kwiat pomara�czy', 'Imbir', 'Cedr'),
(27,'Drzewo cedrowe', 'R�a', 'Pi�mo'),
(28,'Kwiat pomara�czy', 'Konwalia', 'Cedr'),
(29,'Kwiat pomara�czy', 'Go�dzik', 'Benzoes'),
(30,'Kwiat pomara�czy', 'Ja�min', 'Cedr'),
(31,'R�a', 'Imbir', 'Czarny pieprz'),
(32,'Kwiat pomara�czy', 'Konwalia', 'Cedr'),
(33,'Drzewo cedrowe', 'R�a', 'Pi�mo'),
(34,'Kwiat pomara�czy', 'Konwalia', 'Cedr'),
(35,'Kwiat pomara�czy', 'Go�dzik', 'Benzoes'),
(36,'Kwiat pomara�czy', 'Ja�min', 'Cedr'),
(37,'R�a', 'Imbir', 'Czarny pieprz'),
(38,'Kwiat pomara�czy', 'Konwalia', 'Cedr'),
(39,'Drzewo cedrowe', 'R�a', 'Pi�mo'),
(40,'Kwiat pomara�czy', 'Konwalia', 'Cedr'),
(41,'Kwiat pomara�czy', 'Go�dzik', 'Benzoes'),
(42,'Czarny pieprz', 'R�a', 'Drzewo sanda�owe'),
(43,'Pomara�cza', 'Fio�ek', 'Czarny pieprz'),
(44,'R�a', 'Drzewo r�ane', 'Benzoes'),
(45,'Kwiat pomara�czy', 'Imbir', 'Cedr')


INSERT INTO Pracownik
VALUES
('Jan', 'Kowalski', 5000, '890-314-777', 'jan.kowalski@gmail.com'),
('Anna', 'Nowak', 5250, '422-402-556', 'anna.nowak@gmail.com'),
('Piotr', 'Wi�niewski', 6500, '789-690-678', 'piotr.wisniewski@gmail.com'),
('Agnieszka', 'W�jcik', 4900, '567-677-558', 'agnieszka.wojcik@gmail.com'),
('Andrzej', 'Kowalczyk', 5600, '797-555-559', 'andrzej.kowalczyk@gmail.com')



INSERT INTO Zam�wienie
VALUES
(1,2,'2022-12-31','2023-01-01','Krak�w','ul. Polna',2),
(1,4,'2022-11-30','2022-12-01','Szczecin','ul. Drzewna',4),
(1,7,'2022-10-11','2022-10-11','Lublin','ul. S�oneczna',7),
(1,11,'2022-11-11','2022-11-13','Bydgoszcz','ul. D�bowa',11),
(2,12,'2022-12-03','2022-12-05','Katowice','ul. Zielona',7),
(2,1,'2022-12-01','2022-12-03','Warszawa','ul. Wiejska',1),
(2,3,'2022-10-01','2022-10-03','Gdynia','ul. Zielona',11),
(3,5,'2022-10-04','2022-10-04','Wroc�aw','ul. Prakowa',5),
(3,16,'2022-09-04','2022-09-04','Krak�w','ul. Nowa',11),
(3,15,'2022-09-12','2022-09-14','Gdynia','ul. Le�na',10),
(4,6,'2022-10-21','2022-10-22','Pozna�','ul. Spacerowa',6),
(4,8,'2022-10-25','2022-10-25','Bia�ystok','ul. Kwiatowa',8),
(4,9,'2022-11-28','2022-11-29','Katowice','ul. D�bowa',9),
(5,10,'2022-08-30','2022-09-01','��d�','ul. Zielona',10),
(5,13,'2022-09-11','2022-09-15','��d�','ul. Spokojna',8),
(5,14,'2022-12-02','2022-12-02','Gda�sk','ul. Kwiatowa',9)


INSERT INTO Perfumy_has_Zam�wienie
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
