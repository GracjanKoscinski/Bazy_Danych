USE perfumeria
/* Pracownicy ktorzy zarabaiaja wiecej niz srednia */
SELECT Imie_Pracownik,Nazwisko_Pracownik FROM Pracownik WHERE Zarobki>(SELECT AVG(Zarobki) FROM Pracownik);

/* Klienci którzy maj¹ pocztê na wp.pl */
SELECT Imie_Klient,Nazwisko_Klient,Adres_email FROM Klient WHERE Adres_email LIKE '%@wp.pl'

/* Najczesciej uzywana nuta serca w perfumach*/
SELECT TOP 1 COUNT(nuta_serca) as 'Iloœæ wyst¹pieñ',nuta_serca FROM Sk³ad GROUP BY nuta_serca ORDER BY COUNT(nuta_serca) DESC

/* Zestawienie krajów bêd¹cych producentami perfum */
SELECT COUNT(Kraj_pochodzenia)as 'iloœæ wyst¹pieñ',Kraj_pochodzenia FROM Marka GROUP BY Kraj_pochodzenia

/* Gdy jakiœ klient nie ma numeru telefonu, wypisz "BRAK TELEFONU"*/
SELECT Imie_Klient,Nazwisko_Klient, COALESCE(Nr_telefonu, 'BRAK TELEFONU') as 'kontakt telefoniczny' FROM Klient

/* Usuniêcie klientów którzy nie z³o¿yli ¿adnego zamówienia */
DELETE 
FROM Klient
WHERE Klient.idKlient IN (SELECT DISTINCT Klient.idKlient FROM Klient 
LEFT JOIN Zamówienie ON Zamówienie.Klient_idKlient=Klient.idKlient 
GROUP BY Klient.idKlient
HAVING COUNT(Zamówienie.idZamówienie)=0)

/* 2 procedury */

/* Wyœwietlanie dostêpnych perfum */
GO
CREATE PROCEDURE Dostepne_perfumy
AS
BEGIN
    SELECT Nazwa_perfumy, Dostêpnoœæ.Ile_Na_Magazynie
    FROM Perfumy LEFT JOIN Dostêpnoœæ ON Dostêpnoœæ.Perfumy_idPerfumy=Perfumy.idPerfumy
    WHERE Dostêpnoœæ.Ile_Na_Magazynie > 0 ORDER BY Dostêpnoœæ.Ile_Na_Magazynie DESC
END

EXEC Dostepne_perfumy
/* Aktualizowanie cen perfum */
GO
CREATE PROCEDURE Zmien_cene
    @Nazwa_perfum VARCHAR(40),
    @Nowa_cena DECIMAL(18,2)
AS
BEGIN
    UPDATE Perfumy
    SET Cena = @Nowa_cena
    WHERE Nazwa_perfumy = @Nazwa_perfum
END

EXEC Zmien_cene 'Hypnose', 230

/* 2 wyzwalacze */
/* Nie mo¿na obni¿aæ pensji pracowników */
DROP TRIGGER obnizanie_pensji
GO
CREATE TRIGGER obnizanie_pensji
ON Pracownik
AFTER UPDATE
AS
BEGIN
    IF ((SELECT Zarobki FROM INSERTED) < (SELECT Zarobki FROM DELETED))
    BEGIN
		PRINT 'Nie mo¿esz tego zrobiæ!';
        ROLLBACK TRANSACTION;
    END;
END;

/* Aktualizacja iloœci perfum po dodaniu nowego zamówienia */
DROP TRIGGER Aktualizacja_ilosci_po_zamowieniu
GO
CREATE TRIGGER Aktualizacja_ilosci_po_zamowieniu
ON Perfumy_has_Zamówienie
AFTER INSERT
AS
BEGIN
    UPDATE Dostêpnoœæ
    SET Ile_Na_Magazynie = Ile_Na_Magazynie - (SELECT Ilosc_sztuk FROM INSERTED)
    WHERE Dostêpnoœæ.Perfumy_idPerfumy = (SELECT Perfumy_idPerfumy FROM INSERTED)
END


