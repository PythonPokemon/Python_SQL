--------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
--------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

--------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden

-- Schritt 0 - Datenbank erstellen und benutzen
    -- CREATE DATABASE Youtube.db
    -- USE DATABASE Youtube.de

-- Schritt 1 – Basistabellen ohne Fremdschlüssel zuerst erstellen!
    -- Kunde
    -- Artikelgruppe
   
-- Schritt 2 – Tabellen mit Fremdschlüsseln  
    -- Bestellung
    -- Artikel
    -- Position

-- Schritt 3 – Daten einfügen Basistabellen:
    -- Kunde
    -- Artikelgruppe

-- Schritt 4 – Daten einfügen Kreuztabellen:
    -- Bestellung
    -- Artikel
    -- Position

-- Schritt 5 – Abfragen und Überprüfen
-- Alle Kunden:
    -- SELECT * FROM Kunden;

--------------------------------------------------------------------------------------------------------------

-- Schritt 1 – Basistabellen 'ohne Fremdschlüssel' zuerst erstellen!

CREATE TABLE Kunde (
Kundennummer INTEGER PRIMARY KEY AUTOINCREMENT,
Nachname TEXT NOT NULL,
Vorname TEXT NOT NULL,
Straße TEXT,
PLZ TEXT,
Ort TEXT
);


CREATE TABLE Artikelgruppe (
Artikelgruppennummer INTEGER PRIMARY KEY AUTOINCREMENT,
Bezeichnung TEXT NOT NULL,
Rabatt DECIMAL NOT NULL
);

-- Schritt 2 – Tabellen mit Fremdschlüsseln danach (man muss für jeden Fremdschlüssel eine Spalte anlegen)
CREATE TABLE Bestellung (
Bestellnummer INTEGER,                                                              -- PK
Kundennummer INTEGER,                                                               -- FK
Bestelldatum DATE,
PRIMARY KEY (Bestellnummer, Kundennummer),                                          -- 2er Kombination PK + FK
FOREIGN KEY (Kundennummer) REFERENCES Kunde (Kundennummer)                          -- Fremdschlüssel Referenz
);

CREATE TABLE Artikel (
Artikelnummer INTEGER,                                                              -- PK
Artikelgruppennummer INTEGER,                                                       -- FK
Bezeichnung TEXT,
Preis DECIMAL,
PRIMARY KEY (Artikelnummer, Artikelgruppennummer),                                  -- 2er Kombination PK + FK
FOREIGN KEY (Artikelgruppennummer) REFERENCES Artikelgruppe(Artikelgruppennummer)   -- Fremdschlüssel Referenz
);

CREATE TABLE Position (
Bestellnummer INTEGER,                                                              -- PK
Artikelnummer INTEGER,                                                              -- FK
Menge INTEGER,
PRIMARY KEY (Bestellnummer, Artikelnummer),                                         -- 2er Kombination PK + FK
FOREIGN KEY (Artikelnummer) REFERENCES Artikel (Artikelnummer)                      -- Fremdschlüssel Referenz
);

--------------------------------------------------------------------------------------------------------------

-- Schritt 3 – Basistabellen Daten einfügen:

-- Tabelle ---------------------------------------------------------------------Kunde!.
--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --

INSERT INTO Kunde (Nachname, Vorname, Straße, PLZ, Ort)
VALUES ('Hubert', 'Klaus', 'Berlinerstr. 32', '49377', 'Vechta');

INSERT INTO Kunde (Nachname, Vorname, Straße, PLZ, Ort)
VALUES ('Meier', 'Hans', 'Goethestr. 32', '54434', 'Köln');

INSERT INTO Kunde (Nachname, Vorname, Straße, PLZ, Ort)
VALUES ('König', 'Jens', 'Eichenweg 43', '12433', 'Berlin');

-- Tabelle ---------------------------------------------------------------------Artikelgruppe!
--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --

INSERT INTO  Artikelgruppe (Bezeichnung, Rabatt)
VALUES ('Elektronik', 0.10);                                                        -- 0.10 == 10%

INSERT INTO  Artikelgruppe (Bezeichnung, Rabatt)
VALUES ('Peripherie', 0.10);                                                        -- 0.10 == 10%

INSERT INTO  Artikelgruppe (Bezeichnung, Rabatt)
VALUES ('Tiernahtung', 0.00);                                                       -- 0.10 == 10%

--------------------------------------------------------------------------------------------------------------

-- Schritt 4 – Kreuztabellen Daten einfügen:

-- Tabelle ---------------------------------------------------------------------Bestellung!
INSERT INTO Bestellung (Bestellnummer, Kundennummer, Bestelldatum)
VALUES (23, 1, '2019-09-06');

INSERT INTO  Bestellung (Bestellnummer, Kundennummer, Bestelldatum)
VALUES (42, 2, '2019-09-07');

INSERT INTO  Bestellung (Bestellnummer, Kundennummer, Bestelldatum)
VALUES (78, 1, '2019-09-08');

INSERT INTO  Bestellung (Bestellnummer, Kundennummer, Bestelldatum)
VALUES (99, 3, '2019-09-09');

-- Tabelle ---------------------------------------------------------------------Artikel!
INSERT INTO Artikel (Artikelnummer, Bezeichnung, Preis, Artikelgruppennummer)
VALUES (1, 'Fernseher', 799, 1);

INSERT INTO Artikel (Artikelnummer, Bezeichnung, Preis, Artikelgruppennummer)
VALUES (2, 'Monitor', 199, 1);

INSERT INTO Artikel (Artikelnummer, Bezeichnung, Preis, Artikelgruppennummer)
VALUES (3, 'Tastatur', 39, 2);

INSERT INTO Artikel (Artikelnummer, Bezeichnung, Preis, Artikelgruppennummer)
VALUES (4, 'Maus', 19, 2);

INSERT INTO Artikel (Artikelnummer, Bezeichnung, Preis, Artikelgruppennummer)
VALUES (5, 'Hundefutter', 49, 3);

-- Tabelle ---------------------------------------------------------------------Position!
INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (23, 1, 1);

INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (42, 2, 1);

INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (42, 3, 2);

INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (42, 1, 1);

INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (78, 4, 1);

INSERT INTO Position (Bestellnummer, Artikelnummer, Menge)
VALUES (99, 5, 1);

--------------------------------------------------------------------------------------------------------------

-- Schritt 5 – Abfragen und Überprüfen
-- Alle Kunden:
 SELECT * FROM Kunde;


-- Roter Faden: Join Abfragen

-- Select
-- Tabelle.Tabellenspalte, weitereTabelle.weiterSpalte
-- From Tabelle_1_zu_n
-- Join Tabelle_n
-- On 
-- Tabelle_1.PK =
-- Tabelle_n.FK

-- 1 zu n Beziehung (Kunde zu Bestellung)
-- 1️⃣ Einfachster JOIN: Kunde ↔ Bestellung
-- Frage: Welcher Kunde hat welche Bestellung?
select Kunde.Nachname, Bestellung.Bestellnummer 
from Kunde
join Bestellung
on Kunde.Kundennummer = Bestellung.Kundennummer;

-- n zu m Beziehung über Kreuztabelle
-- 2️⃣ JOIN über Kreuztabelle: Bestellung ↔ Position
-- Frage: Welche Artikel sind in welcher Bestellung?
select Position.Bestellnummer, Position.Artikelnummer, Position.Menge
from Bestellung -- Bestellung steht zu position 1:n
join Position   -- Position steht zu Artikel  n:1
on Bestellung.Bestellnummer = Position.Bestellnummer;

-- n zu m Beziehung über mehrere JOINs
-- 3️⃣ Mehrere JOINs hintereinander (klassisch!)
-- Frage: Welcher Kunde hat welchen Artikel bestellt?
select Kunde.Nachname, Artikel.Bezeichnung, Artikel.Preis
from Kunde
join Bestellung                                     -- Ankleben der ersten Join Abfrage: Tabelle Bestellung
On Kunde.Kundennummer = Bestellung.Kundennummer     -- man sagt das der PK von Kunde in Bestellung als FK hinterlegt ist.
join Position                                       -- Ankleben der zweiten Join Abfrage: Tabelle Position
On Bestellung.Bestellnummer = Position.Bestellnummer
join Artikel                                        -- Ankleben der dritten Join Abfrage: Tabelle Artikel
On Artikel.Artikelnummer = Position.Artikelnummer;

--------------------------------------------------------------------------------------------------------------
-- Indexierung von Tabellen zur Performancesteigerung bei großen Datenmengen
-- Beispiel: Index auf Kundennummer in der Tabelle Bestellung
CREATE INDEX nach ON Kunde (Nachname);

SELECT *
FROM Kunde
WHERE Nachname = 'Meier';

-- 1️⃣ Wie löscht man einen Index?
-- Ganz einfach mit DROP INDEX:
DROP INDEX nach;


-- Ende der Übung --