--------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
--------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

--------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden

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
Preis REAL,
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

-- Schritt 3 – Daten einfügen Basistabellen:
    -- Kunde
    -- Artikelgruppe

-- Tabelle ---------------------------------------------------------------------Kunde!
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

-- Schritt 4 – Daten einfügen Kreuztabellen:
    -- Bestellung
    -- Artikel
    -- Position

--------------------------------------------------------------------------------------------------------------

-- Schritt 5 – Abfragen und Überprüfen
-- Alle Kunden:
    -- SELECT * FROM Kunden;