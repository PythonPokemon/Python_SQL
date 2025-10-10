--------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
--------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

-- spalten/attribut löschen geht nicht!
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
FOREIGN KEY (ArztNr) REFERENCES Arzt(ArztNr)            -- wenn man Arzt draußen lässt, darf mehrfach behandelt werden
);


--------------------------------------------------------------------------------------------------------------
-- CRUD Abfragen: C = CREAT | R = READ | U = UPDATE | D = DELETE
-- BASIS
DROP TABLE Patient;
DROP TABLE ZusatzLeistung;
DROP TABLE MedLeistung;
DROP TABLE Arzt;

-- ERWEITERUNG
DROP TABLE Pat_ZusatzLeistung;
DROP TABLE Pat_MedLeistung;