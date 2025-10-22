--------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
--------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

-- spalten/attribut == Datensätze löschen geht nicht!
-- man muss dann die tabelle löschen und neu anlegen! 
--------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden

-- Schritt 1 – Basistabellen ohne Fremdschlüssel zuerst
    -- Patient
    -- Arzt
    -- MedLeistung
    -- ZusatzLeistung

-- Schritt 2 – Tabellen mit Fremdschlüsseln danach 
    -- Pat_MedLeistung
    -- Pat_ZusatzLeistung 

-- Schritt 3 – Daten einfügen  
    -- Basistabellen: (Patient, Arzt, MedLeistung, ZusatzLeistung)
    -- Beziehungstabellen: (Pat_MedLeistung, Pat_ZusatzLeistung)

-- Schritt 4 – Abfragen und Überprüfen
-- Alle Patienten:
    -- SELECT * FROM Patient;

-- Alle medizinischen Leistungen eines Patienten anzeigen:
    -- SELECT 
    --     Patient.PatientName,              -- Name des Patienten
    --     Patient.PatientVorname,           -- Vorname des Patienten
    --     MedLeistung.Bezeichnung,          -- Name bzw. Art der medizinischen Leistung
    --     Pat_MedLeistung.LeistungDat       -- Datum, an dem die Leistung durchgeführt wurde
    -- FROM Pat_MedLeistung
    -- JOIN Patient 
    --     ON Pat_MedLeistung.PatientNr = Patient.PatientNr     -- Verknüpfung über PatientNr
    -- JOIN MedLeistung 
    --     ON Pat_MedLeistung.MLeistungNr = MedLeistung.MLeistungNr;   -- Verknüpfung über MLeistungNr


--------------------------------------------------------------------------------------------------------------
SELECT PatientName FROM Patient;

-- Schritt 1 – Basistabellen ohne Fremdschlüssel zuerst
CREATE TABLE ZusatzLeistung (
ZLeistungNr INTEGER PRIMARY KEY AUTOINCREMENT,
Bezeichnung TEXT NOT NULL,
Tagespreis REAL
);

CREATE TABLE Patient (
PatientNr INTEGER PRIMARY KEY AUTOINCREMENT,
PatientName TEXT NOT NULL,
PatientVorname TEXT NOT NULL,
PatientStrNr TEXT,
PatientPLZ TEXT,
PatientOrt TEXT
);

CREATE TABLE MedLeistung (
    MLeistungNr INTEGER PRIMARY KEY AUTOINCREMENT,
    Bezeichnung TEXT NOT NULL,
    Preis REAL NOT NULL
);

CREATE TABLE Arzt (
    ArztNr INTEGER PRIMARY KEY AUTOINCREMENT,
    ArztName TEXT NOT NULL,
    ArztFaktor REAL
);

-- Schritt 2 – Tabellen mit Fremdschlüsseln danach 
CREATE TABLE Pat_ZusatzLeistung (
    PatientNr INTEGER,
    VonDatum DATE,
    BisDatum DATE,
    ZLeistungNr INTEGER,
    PRIMARY KEY (PatientNr, VonDatum, ZLeistungNr),
    FOREIGN KEY (PatientNr) REFERENCES Patient(PatientNr),
    FOREIGN KEY (ZLeistungNr) REFERENCES ZusatzLeistung(ZLeistungNr)
);

CREATE TABLE Pat_MedLeistung (
PatientNr INTEGER,
LeistungsDat DATE,
MLeistungNr INTEGER,
ArztNr INTEGER,
PRIMARY KEY (PatientNr, LeistungsDat, MLeistungNr, ArztNr),     -- Primärschlüssel Kombination
FOREIGN KEY (PatientNr) REFERENCES Patient(PatientNr),
FOREIGN KEY (MLeistungNr) REFERENCES MedLeistung(MLeistungNr),
FOREIGN KEY (ArztNr) REFERENCES Arzt(ArztNr)                    -- wenn man Arzt draußen lässt, darf mehrfach behandelt werden
);

-- Schritt 3 – Daten einfügen

-- Tabelle ---------------------------------------------------------------------Patient!

-- 🧩 Variante 1: Mehrere INSERT INTO … VALUES (…) hintereinander
-- 👉 Funktioniert immer, in allen SQL-Systemen (sicherste Variante):

-- ACHTUNG PRIMARY KEY AUTOINCREMENT  --
INSERT INTO Patient (PatientName, PatientVorname, PatientStrNr, PatientPLZ, PatientOrt)
VALUES ('Müller', 'Klaus', 'Südstr.24', '54321', 'Burg');   

INSERT INTO Patient (PatientName, PatientVorname, PatientStrNr, PatientPLZ, PatientOrt)
VALUES ('Meier', 'Sabine', 'Nordweg 7', '12345', 'Lingen');

INSERT INTO Patient (PatientName, PatientVorname, PatientStrNr, PatientPLZ, PatientOrt)
VALUES ('Schulz', 'Peter', 'Hauptstr. 15a', '98765', 'Greven');

-- 🧩 Variante 2: In einem einzigen Statement (Mehrfach-INSERT)
-- 👉 Funktioniert z. B. in MySQL, PostgreSQL oder SQLite ab Version 3.7.11
INSERT INTO Patient (PatientName, PatientVorname, PatientStrNr, PatientPLZ, PatientOrt)
VALUES 
  ('Schulz', 'Britta', 'Nordstr. 9', '4569', 'Hagen'),
  ('Rose', 'Bernd', 'Weststr. 5', '55691', 'Schnurz'),
  ('Dummy', 'Test', 'Hauptstr. 15b', '79114', 'Freiburg');

-- Tabelle ---------------------------------------------------------------------Arzt!

--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --
INSERT INTO Arzt (ArztName, ArztFaktor)
VALUES ('Sauer', 1.5);  

INSERT INTO Arzt (ArztName, ArztFaktor)
VALUES ('Helmig', 1.0);  

INSERT INTO Arzt (ArztName, ArztFaktor)
VALUES ('Birkeler', 2.0);  

-- Tabelle ---------------------------------------------------------------------MedLeistung!

--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --
INSERT INTO MedLeistung (Bezeichnung, Preis)
values ('Untersuchung', 53.20);

INSERT INTO MedLeistung (Bezeichnung, Preis)
VALUES ('Injektion', 19.80);

INSERT INTO MedLeistung (Bezeichnung, Preis)
VALUES ('Verband', 17.79);

INSERT INTO MedLeistung (Bezeichnung, Preis)
VALUES ('Visite', 21.56);

INSERT INTO MedLeistung (Bezeichnung, Preis)
VALUES ('MRT', 800.00);

-- Tabelle ---------------------------------------------------------------------ZusatzLeistung!

--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --
INSERT INTO ZusatzLeistung (Bezeichnung, Tagespreis)
VALUES ('Einzelzimmer', 130);

INSERT INTO ZusatzLeistung (Bezeichnung, Tagespreis)
VALUES ('Fernseher', 8.5);

INSERT INTO ZusatzLeistung (Bezeichnung, Tagespreis)
VALUES ('WLAN', 2);

INSERT INTO ZusatzLeistung (Bezeichnung, Tagespreis)
VALUES ('Wahlessen',25);

-- ACHTUNG--> Kreuztabelle ---------------------------------------------------------------------Pat_MedLeistung!

--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --



-- ACHTUNG--> Kreuztabelle ---------------------------------------------------------------------Pat_ZusatzLeistung!

--                          ACHTUNG PRIMARY KEY AUTOINCREMENT                       --


  -- Schritt 4 – Abfragen und Überprüfen

--------------------------------------------------------------------------------------------------------------
-- CRUD Abfragen: C = CREAT | R = READ | U = UPDATE | D = DELETE

-- BASIS PK
DROP TABLE Patient;
DROP TABLE ZusatzLeistung;
DROP TABLE MedLeistung;
DROP TABLE Arzt;

-- ERWEITERUNG mit FK
DROP TABLE Pat_ZusatzLeistung;
DROP TABLE Pat_MedLeistung;