-- Tabelle "personen" erstellen
CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL,
    geburtsdatum DATE
);

-- Beispiel-Datensätze einfügen
INSERT INTO personen (vorname, nachname, geburtsdatum) 
VALUES  ('Max', 'Mustermann', '1980-01-15');

INSERT INTO personen (vorname, nachname, geburtsdatum) 
VALUES  ('Erika', 'Musterfrau', '1990-05-30');

INSERT INTO personen (vorname, nachname, geburtsdatum) 
VALUES  ('Hans', 'Schmidt', '1975-09-20');

-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

-- Abfrage aller Datensätze aus der Tabelle "personen"
SELECT * FROM personen;