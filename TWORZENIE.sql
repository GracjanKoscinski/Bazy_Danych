CREATE TABLE Marka (
  idMarka INTEGER IDENTITY NOT NULL,
  Nazwa_Marka VARCHAR(50) NULL,
  Kraj_pochodzenia VARCHAR(50) NULL,
  PRIMARY KEY(idMarka)
);

CREATE TABLE Pracownik (
  idPracownik INTEGER IDENTITY NOT NULL,
  Imie_Pracownik VARCHAR(50) NULL,
  Nazwisko_Pracownik VARCHAR(50) NULL,
  Zarobki DOUBLE PRECISION NULL,
  Nr_Telefonu VARCHAR(15) NULL,
  Adres_Email VARCHAR(50) NULL,
  PRIMARY KEY(idPracownik)
);

CREATE TABLE Klient (
  idKlient INTEGER IDENTITY NOT NULL,
  Imie_Klient VARCHAR(50) NULL,
  Nazwisko_Klient VARCHAR(50) NULL,
  Ulica_zamieszkania_klient VARCHAR(50) NULL,
  Kod_pocztowy_klient VARCHAR(10) NULL,
  Miejscowosc_klient VARCHAR(50) NULL,
  Nr_domu_klient VARCHAR(10) NULL,
  Adres_email VARCHAR(80) NULL,
  Nr_telefonu VARCHAR(15) NULL,
  PRIMARY KEY(idKlient)
);

CREATE TABLE Perfumy (
  idPerfumy INTEGER IDENTITY NOT NULL,
  Marka_idMarka INTEGER  NOT NULL,
  Nazwa_perfumy VARCHAR(50) NULL,
  Cena DOUBLE PRECISION NULL,
  rodzina_zapachow VARCHAR(50) NULL,
  PRIMARY KEY(idPerfumy),
  INDEX Perfumy_FKIndex2(Marka_idMarka),
  FOREIGN KEY(Marka_idMarka)
    REFERENCES Marka(idMarka)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Zam�wienie (
  idZam�wienie INTEGER IDENTITY NOT NULL,
  Pracownik_idPracownik INTEGER  NOT NULL,
  Klient_idKlient INTEGER  NOT NULL,
  Data_Zam�wienia DATE NULL,
  Data_Wys�ania DATE NULL,
  Miasto_docelowe VARCHAR(50) NULL,
  Ulica_docelowa VARCHAR(50) NULL,
  Nr_domu_docelowy VARCHAR(50) NULL,
  PRIMARY KEY(idZam�wienie),
  INDEX Zam�wienie_FKIndex1(Klient_idKlient),
  INDEX Zam�wienie_FKIndex2(Pracownik_idPracownik),
  FOREIGN KEY(Klient_idKlient)
    REFERENCES Klient(idKlient)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pracownik_idPracownik)
    REFERENCES Pracownik(idPracownik)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Perfumy_has_Zam�wienie (
  Perfumy_idPerfumy INTEGER  NOT NULL,
  Zam�wienie_idZam�wienie INTEGER  NOT NULL,
  PRIMARY KEY(Perfumy_idPerfumy, Zam�wienie_idZam�wienie),
  INDEX Perfumy_has_Zam�wienie_FKIndex1(Perfumy_idPerfumy),
  INDEX Perfumy_has_Zam�wienie_FKIndex2(Zam�wienie_idZam�wienie),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Zam�wienie_idZam�wienie)
    REFERENCES Zam�wienie(idZam�wienie)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Sk�ad (
  idSk�ad INTEGER  IDENTITY NOT NULL ,
  Perfumy_idPerfumy INTEGER  NOT NULL,
  nuta_serca VARCHAR(50) NULL,
  nuta_g�owy VARCHAR(50) NULL,
  nuta_bazy VARCHAR(50) NULL,
  PRIMARY KEY(idSk�ad, Perfumy_idPerfumy),
  INDEX Sk�ad_FKIndex1(Perfumy_idPerfumy),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Dost�pno�� (
  idDost�pno�� INTEGER IDENTITY NOT NULL,
  Perfumy_idPerfumy INTEGER  NOT NULL,
  Ile_Na_Magazynie INTEGER  NULL,
  Nazwa_dostawcy VARCHAR(50) NULL,
  PRIMARY KEY(idDost�pno��, Perfumy_idPerfumy),
  INDEX Dost�pno��_FKIndex1(Perfumy_idPerfumy),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

