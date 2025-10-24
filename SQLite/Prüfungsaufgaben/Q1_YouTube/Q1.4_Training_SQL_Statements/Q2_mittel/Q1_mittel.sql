--------------------------------------------------------------------------------------------------------------
-- 1️⃣ Alle Bestellungen mit Kundennamen und Bestelldatum anzeigen (JOIN + Sortierung)
SELECT b.Bestellnummer, k.Nachname, k.Vorname, b.Bestelldatum
FROM Bestellung b
JOIN Kunde k ON b.Kundennummer = k.Kundennummer
ORDER BY b.Bestelldatum ASC;

--------------------------------------------------------------------------------------------------------------
-- 2️⃣ Zeige alle Artikel mit ihrem Rabatt (JOIN Artikelgruppe)
SELECT a.Bezeichnung AS Artikel, a.Preis, ag.Bezeichnung AS Kategorie, ag.Rabatt
FROM Artikel a
JOIN Artikelgruppe ag ON a.Artikelgruppennummer = ag.Artikelgruppennummer;

--------------------------------------------------------------------------------------------------------------
-- 3️⃣ Berechne den durchschnittlichen Artikelpreis pro Artikelgruppe
SELECT ag.Bezeichnung AS Artikelgruppe, ROUND(AVG(a.Preis), 2) AS Durchschnittspreis
FROM Artikel a
JOIN Artikelgruppe ag ON a.Artikelgruppennummer = ag.Artikelgruppennummer
GROUP BY ag.Bezeichnung;

--------------------------------------------------------------------------------------------------------------
-- 4️⃣ Zeige die Anzahl der Bestellungen pro Kunde
SELECT k.Nachname, k.Vorname, COUNT(b.Bestellnummer) AS Anzahl_Bestellungen
FROM Kunde k
LEFT JOIN Bestellung b ON k.Kundennummer = b.Kundennummer
GROUP BY k.Kundennummer;

--------------------------------------------------------------------------------------------------------------
-- 5️⃣ Zeige alle Artikel, die in mindestens einer Bestellung vorkommen
SELECT DISTINCT a.Bezeichnung
FROM Artikel a
JOIN Position p ON a.Artikelnummer = p.Artikelnummer;

--------------------------------------------------------------------------------------------------------------
-- 6️⃣ Berechne den Gesamtwert jeder Bestellung (SUM(Preis * Menge))
SELECT b.Bestellnummer,
       k.Nachname,
       ROUND(SUM(a.Preis * p.Menge), 2) AS Gesamtwert
FROM Bestellung b
JOIN Kunde k ON b.Kundennummer = k.Kundennummer
JOIN Position p ON b.Bestellnummer = p.Bestellnummer
JOIN Artikel a ON p.Artikelnummer = a.Artikelnummer
GROUP BY b.Bestellnummer;

--------------------------------------------------------------------------------------------------------------
-- 7️⃣ Finde die teuersten Artikel (Preis über Durchschnitt aller Artikel)
SELECT Bezeichnung, Preis
FROM Artikel
WHERE Preis > (SELECT AVG(Preis) FROM Artikel);

--------------------------------------------------------------------------------------------------------------
-- 8️⃣ Zeige, welche Kunden mindestens 2 Bestellungen haben
SELECT k.Nachname, k.Vorname, COUNT(b.Bestellnummer) AS Anzahl_Bestellungen
FROM Kunde k
JOIN Bestellung b ON k.Kundennummer = b.Kundennummer
GROUP BY k.Kundennummer
HAVING COUNT(b.Bestellnummer) >= 2;

--------------------------------------------------------------------------------------------------------------
-- 9️⃣ Zeige die meistverkauften Artikel (nach Menge sortiert)
SELECT a.Bezeichnung, SUM(p.Menge) AS Gesamtmenge
FROM Artikel a
JOIN Position p ON a.Artikelnummer = p.Artikelnummer
GROUP BY a.Bezeichnung
ORDER BY Gesamtmenge DESC;

--------------------------------------------------------------------------------------------------------------
-- 🔟 Bonus: Berechne den Rabattwert jedes Artikels basierend auf seiner Gruppe
SELECT a.Bezeichnung,
       a.Preis,
       ag.Rabatt,
       ROUND(a.Preis * ag.Rabatt, 2) AS Rabattwert,
       ROUND(a.Preis - (a.Preis * ag.Rabatt), 2) AS Preis_nach_Rabatt
FROM Artikel a
JOIN Artikelgruppe ag ON a.Artikelgruppennummer = ag.Artikelgruppennummer;
