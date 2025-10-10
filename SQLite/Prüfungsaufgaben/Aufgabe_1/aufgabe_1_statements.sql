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

--------------------------------------------------------------------------------------------------------------
CREATE TABLE ZusatzLeistung (
zleistungNr INTEGER PRIMARY KEY AUTOINCREMENT,
bezeichnung Text NOT NULL,
tagespreis REAL
);

