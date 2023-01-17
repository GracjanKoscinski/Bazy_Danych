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
SELECT Imie_Klient,Nazwisko_Klient, COALESCE(Nr_telefonu, 'BRAK TELEFONU') FROM Klient
