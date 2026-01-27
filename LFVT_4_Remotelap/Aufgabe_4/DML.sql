-- =====================================================================
-- 💚 DML – Data Manipulation Language (Wiederholung)
-- Schlüsselwörter:
-- INSERT | SELECT | UPDATE | DELETE | JOIN | Aggregatfunktionen
-- =====================================================================

-- Voraussetzung: Datenbank auswählen
USE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 1: Datensatz einfügen (INSERT)
-- Füge einen Schüler mit Vor- und Nachnamen ein
-- ---------------------------------------------------------------------
INSERT INTO Schueler (Vorname, Nachname)
VALUES ('Max', 'Müller');

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 2: Mehrere Datensätze einfügen
-- Füge 2 weitere Schüler ein
-- ---------------------------------------------------------------------
INSERT INTO Schueler (Vorname, Nachname)
VALUES 
('Anna', 'Schmidt'),
('Tim', 'Becker');

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 3: Daten anzeigen (SELECT)
-- Zeige alle Schüler an
-- ---------------------------------------------------------------------
SELECT * FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 4: Bestimmte Spalten abfragen
-- Zeige nur Vorname und Nachname an
-- ---------------------------------------------------------------------
SELECT Vorname, Nachname FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 5: Datensatz ändern (UPDATE)
-- Ändere den Nachnamen von Max Müller zu Meier
-- ---------------------------------------------------------------------
UPDATE Schueler
SET Nachname = 'Meier'
WHERE Schueler_ID = 1;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 6: Datensatz löschen (DELETE)
-- Lösche den Schüler mit dem Vornamen Tim
-- ---------------------------------------------------------------------
DELETE FROM Schueler
WHERE Schueler_ID = 3;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 7: Aggregatfunktion COUNT
-- Zähle, wie viele Schüler es gibt
-- ---------------------------------------------------------------------
SELECT COUNT(*) AS Anzahl_Schueler
FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 8: Aggregatfunktion MIN / MAX (Beispiel)
-- Ermittle die kleinste und größte Schüler-ID
-- ---------------------------------------------------------------------
SELECT 
    MIN(Schueler_ID) AS Kleinste_ID,
    MAX(Schueler_ID) AS Groesste_ID
FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 9: Vorbereitung für JOIN (neue Tabelle)
-- Erstelle eine Tabelle Klasse
-- ---------------------------------------------------------------------
CREATE TABLE Klasse (
    Klasse_ID INT AUTO_INCREMENT PRIMARY KEY,
    Bezeichnung VARCHAR(20)
);

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 10: Datensätze für Klasse einfügen
-- ---------------------------------------------------------------------
INSERT INTO Klasse (Bezeichnung)
VALUES ('IT-01'), ('IT-02');

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 11: Spalte für Fremdschlüssel hinzufügen
-- ---------------------------------------------------------------------
ALTER TABLE Schueler
ADD Klasse_ID INT;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 12: Schüler einer Klasse zuordnen (UPDATE)
-- ---------------------------------------------------------------------
UPDATE Schueler
SET Klasse_ID = 1
WHERE Schueler_ID = 1;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 13: JOIN – Daten aus zwei Tabellen anzeigen
-- Zeige Schüler mit ihrer Klasse
-- ---------------------------------------------------------------------
SELECT 
    s.Vorname,
    s.Nachname,
    k.Bezeichnung AS Klasse
FROM Schueler s
JOIN Klasse k
ON s.Klasse_ID = k.Klasse_ID;
