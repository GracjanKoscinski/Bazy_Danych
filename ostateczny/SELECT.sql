USE perfumeria
/* Pracownicy ktorzy zarabaiaja wiecej niz srednia */
SELECT Imie_Pracownik,Nazwisko_Pracownik FROM Pracownik WHERE Zarobki>(SELECT AVG(Zarobki) FROM Pracownik);

/* Klienci kt�rzy maj� poczt� na wp.pl */
SELECT Imie_Klient,Nazwisko_Klient,Adres_email FROM Klient WHERE Adres_email LIKE '%@wp.pl'

/* Najczesciej uzywana nuta serca w perfumach*/
SELECT TOP 1 COUNT(nuta_serca) as 'Ilo�� wyst�pie�',nuta_serca FROM Sk�ad GROUP BY nuta_serca ORDER BY COUNT(nuta_serca) DESC

/* Zestawienie kraj�w b�d�cych producentami perfum */
SELECT COUNT(Kraj_pochodzenia)as 'ilo�� wyst�pie�',Kraj_pochodzenia FROM Marka GROUP BY Kraj_pochodzenia

/* Gdy jaki� klient nie ma numeru telefonu, wypisz "BRAK TELEFONU"*/
SELECT Imie_Klient,Nazwisko_Klient, COALESCE(Nr_telefonu, 'BRAK TELEFONU') as 'kontakt telefoniczny' FROM Klient

/* Usuni�cie klient�w kt�rzy nie z�o�yli �adnego zam�wienia */
DELETE 
FROM Klient
WHERE Klient.idKlient IN (SELECT DISTINCT Klient.idKlient FROM Klient 
LEFT JOIN Zam�wienie ON Zam�wienie.Klient_idKlient=Klient.idKlient 
GROUP BY Klient.idKlient
HAVING COUNT(Zam�wienie.idZam�wienie)=0)

/* 2 procedury */

/* Wy�wietlanie dost�pnych perfum */
GO
CREATE PROCEDURE Dostepne_perfumy
AS
BEGIN
    SELECT Nazwa_perfumy, Dost�pno��.Ile_Na_Magazynie
    FROM Perfumy LEFT JOIN Dost�pno�� ON Dost�pno��.Perfumy_idPerfumy=Perfumy.idPerfumy
    WHERE Dost�pno��.Ile_Na_Magazynie > 0 ORDER BY Dost�pno��.Ile_Na_Magazynie DESC
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
/* Nie mo�na obni�a� pensji pracownik�w */
DROP TRIGGER obnizanie_pensji
GO
CREATE TRIGGER obnizanie_pensji
ON Pracownik
AFTER UPDATE
AS
BEGIN
    IF ((SELECT Zarobki FROM INSERTED) < (SELECT Zarobki FROM DELETED))
    BEGIN
		PRINT 'Nie mo�esz tego zrobi�!';
        ROLLBACK TRANSACTION;
    END;
END;

/* Aktualizacja ilo�ci perfum po dodaniu nowego zam�wienia */
DROP TRIGGER Aktualizacja_ilosci_po_zamowieniu
GO
CREATE TRIGGER Aktualizacja_ilosci_po_zamowieniu
ON Perfumy_has_Zam�wienie
AFTER INSERT
AS
BEGIN
    UPDATE Dost�pno��
    SET Ile_Na_Magazynie = Ile_Na_Magazynie - (SELECT Ilosc_sztuk FROM INSERTED)
    WHERE Dost�pno��.Perfumy_idPerfumy = (SELECT Perfumy_idPerfumy FROM INSERTED)
END


