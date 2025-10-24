--------------------------------------------------------------------------------------------------------------
-- 1️⃣ Alle Kunden anzeigen
SELECT * FROM Kunde;

--------------------------------------------------------------------------------------------------------------
-- 2️⃣ Nur die Nachnamen und Orte der Kunden anzeigen
SELECT Nachname, Ort FROM Kunde;

--------------------------------------------------------------------------------------------------------------
-- 3️⃣ Alle Artikel mit Preis größer als 100 €
SELECT * FROM Artikel
WHERE Preis > 100;

--------------------------------------------------------------------------------------------------------------
-- 4️⃣ Nur die Bezeichnung und den Rabatt aller Artikelgruppen
SELECT Bezeichnung, Rabatt FROM Artikelgruppe;

--------------------------------------------------------------------------------------------------------------
-- 5️⃣ Alle Bestellungen eines bestimmten Kunden (z. B. Kundennummer = 1)
SELECT * FROM Bestellung
WHERE Kundennummer = 1;

--------------------------------------------------------------------------------------------------------------
-- 6️⃣ Alle Artikel alphabetisch sortiert ausgeben
SELECT * FROM Artikel
ORDER BY Bezeichnung ASC;

--------------------------------------------------------------------------------------------------------------
-- 7️⃣ Zeige alle Bestellungen mit zugehörigem Kundennamen
SELECT Bestellung.Bestellnummer, Kunde.Nachname, Kunde.Vorname, Bestellung.Bestelldatum
FROM Bestellung
JOIN Kunde ON Bestellung.Kundennummer = Kunde.Kundennummer;

--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige alle Artikel mit ihrer Artikelgruppe
SELECT Artikel.Bezeichnung AS Artikel, Artikelgruppe.Bezeichnung AS Kategorie
FROM Artikel
JOIN Artikelgruppe ON Artikel.Artikelgruppennummer = Artikelgruppe.Artikelgruppennummer;

--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige alle Positionen (Artikel + Menge) einer bestimmten Bestellung
SELECT Artikel.Bezeichnung, Position.Menge
FROM Position
JOIN Artikel ON Position.Artikelnummer = Artikel.Artikelnummer
WHERE Bestellnummer = 42;

--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Gesamtpreis (Menge × Preis) für jede Position einer Bestellung
SELECT Bestellung.Bestellnummer,
       Artikel.Bezeichnung,
       Artikel.Preis,
       Position.Menge,
       (Artikel.Preis * Position.Menge) AS Gesamtpreis
FROM Bestellung
JOIN Position ON Bestellung.Bestellnummer = Position.Bestellnummer
JOIN Artikel ON Position.Artikelnummer = Artikel.Artikelnummer
WHERE Bestellung.Bestellnummer = 42;
