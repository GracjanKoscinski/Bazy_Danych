use perfumeria
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

CREATE TABLE Zamówienie (
  idZamówienie INTEGER IDENTITY NOT NULL,
  Pracownik_idPracownik INTEGER  NOT NULL,
  Klient_idKlient INTEGER  NOT NULL,
  Data_Zamówienia DATE NULL,
  Data_Wys³ania DATE NULL,
  Miasto_docelowe VARCHAR(50) NULL,
  Ulica_docelowa VARCHAR(50) NULL,
  Nr_domu_docelowy VARCHAR(50) NULL,
  PRIMARY KEY(idZamówienie),
  INDEX Zamówienie_FKIndex1(Klient_idKlient),
  INDEX Zamówienie_FKIndex2(Pracownik_idPracownik),
  FOREIGN KEY(Klient_idKlient)
    REFERENCES Klient(idKlient)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Pracownik_idPracownik)
    REFERENCES Pracownik(idPracownik)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Perfumy_has_Zamówienie (
  Perfumy_idPerfumy INTEGER  NOT NULL,
  Zamówienie_idZamówienie INTEGER  NOT NULL,
  Ilosc_sztuk INTEGER NOT NULL,
  PRIMARY KEY(Perfumy_idPerfumy, Zamówienie_idZamówienie),
  INDEX Perfumy_has_Zamówienie_FKIndex1(Perfumy_idPerfumy),
  INDEX Perfumy_has_Zamówienie_FKIndex2(Zamówienie_idZamówienie),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Zamówienie_idZamówienie)
    REFERENCES Zamówienie(idZamówienie)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Sk³ad (
  idSk³ad INTEGER  IDENTITY NOT NULL ,
  Perfumy_idPerfumy INTEGER  NOT NULL,
  nuta_serca VARCHAR(50) NULL,
  nuta_g³owy VARCHAR(50) NULL,
  nuta_bazy VARCHAR(50) NULL,
  PRIMARY KEY(idSk³ad, Perfumy_idPerfumy),
  INDEX Sk³ad_FKIndex1(Perfumy_idPerfumy),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Dostêpnoœæ (
  idDostêpnoœæ INTEGER IDENTITY NOT NULL,
  Perfumy_idPerfumy INTEGER  NOT NULL,
  Ile_Na_Magazynie INTEGER  NULL,
  Nazwa_dostawcy VARCHAR(50) NULL,
  PRIMARY KEY(idDostêpnoœæ, Perfumy_idPerfumy),
  INDEX Dostêpnoœæ_FKIndex1(Perfumy_idPerfumy),
  FOREIGN KEY(Perfumy_idPerfumy)
    REFERENCES Perfumy(idPerfumy)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


