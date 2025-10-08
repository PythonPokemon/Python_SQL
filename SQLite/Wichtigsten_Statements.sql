
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

------------------------------------------------------------
-- 1️⃣  TABELLE ERSTELLEN
-- Erstellt eine neue Tabelle mit Spalten und Datentypen.
------------------------------------------------------------
CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,   -- Eindeutige ID (automatisch hochzählend)
    vorname TEXT NOT NULL,                  -- Textspalte, darf nicht leer sein
    nachname TEXT NOT NULL,
    geburtsdatum DATE,                      -- Datumsspalte
    einkommen REAL                          -- Zahl mit Nachkommastellen
);


------------------------------------------------------------
-- 2️⃣  DATENSÄTZE EINFÜGEN
-- Fügt neue Zeilen in eine Tabelle ein.
------------------------------------------------------------
INSERT INTO personen (vorname, nachname, geburtsdatum, einkomme)
VALUES ('Max', 'Mustermann', '1980-01-15', 3200);

INSERT INTO personen (vorname, nachname, geburtsdatum, einkomme)
VALUES ('Erika', 'Musterfrau', '1990-05-30', 4100);

INSERT INTO personen (vorname, nachname, geburtsdatum, einkomme)
VALUES ('Hans', 'Schmidt', '1975-09-20', 2700);

INSERT INTO personen (vorname, nachname, geburtsdatum, einkomme)
VALUES ('Lisa', 'Schmidt', '1988-03-11', 2800);

------------------------------------------------------------
-- 3️⃣  ALLE DATENSÄTZE ANZEIGEN
-- Gibt alle Spalten und Zeilen der Tabelle aus.
------------------------------------------------------------
SELECT * FROM personen;


------------------------------------------------------------
-- 4️⃣  BESTIMMTE SPALTEN AUSGEBEN
-- Gibt nur ausgewählte Spalten aus.
------------------------------------------------------------
SELECT vorname, nachname FROM personen;


------------------------------------------------------------
-- 5️⃣  BEDINGTE ABFRAGEN
-- Mit WHERE werden nur bestimmte Datensätze angezeigt.
------------------------------------------------------------
SELECT * FROM personen WHERE nachname = 'Schmidt';

SELECT * FROM personen WHERE geburtsdatum > '1985-01-01';


------------------------------------------------------------
-- 6️⃣  DATENSÄTZE SORTIEREN
-- Mit ORDER BY kann man auf- oder absteigend sortieren.
------------------------------------------------------------
SELECT * FROM personen ORDER BY nachname ASC;   -- aufsteigend
SELECT * FROM personen ORDER BY geburtsdatum DESC;  -- absteigend


------------------------------------------------------------
-- 7️⃣  DATENSÄTZE AKTUALISIEREN
-- Ändert bestehende Werte in einer Tabelle.
------------------------------------------------------------
UPDATE personen
SET nachname = 'Müller'
WHERE id = 3;    -- nur der Datensatz mit ID 3 wird geändert


------------------------------------------------------------
-- 8️⃣  DATENSÄTZE LÖSCHEN
-- Entfernt bestimmte Zeilen.
------------------------------------------------------------
DELETE FROM personen WHERE id = 2;    -- löscht nur Erika Musterfrau


------------------------------------------------------------
-- 9️⃣  ALLE DATENSÄTZE LÖSCHEN (aber Tabelle bleibt!)
------------------------------------------------------------
DELETE FROM personen;


------------------------------------------------------------
-- 🔟  TABELLE LÖSCHEN
-- Entfernt die gesamte Tabelle (Achtung: alle Daten weg!)
------------------------------------------------------------
DROP TABLE personen;


------------------------------------------------------------
-- 1️⃣1️⃣  AGGREGATFUNKTIONEN
-- Diese berechnen Werte über mehrere Zeilen hinweg.
------------------------------------------------------------
SELECT COUNT(*) FROM personen;          -- zählt alle Personen
SELECT MIN(geburtsdatum) FROM personen; -- älteste Person
SELECT MAX(geburtsdatum) FROM personen; -- jüngste Person


------------------------------------------------------------
-- 1️⃣2️⃣  GRUPPIEREN MIT GROUP BY
-- Gruppiert Daten und wendet Aggregatfunktionen auf Gruppen an.
------------------------------------------------------------
-- Beispiel: Wie viele Personen pro Nachname?
SELECT nachname, COUNT(*) 
FROM personen
GROUP BY nachname;


------------------------------------------------------------
-- 1️⃣3️⃣  SUCHEN MIT LIKE
-- Findet Einträge mit ähnlichen Werten (Textsuche).
------------------------------------------------------------
SELECT * FROM personen WHERE vorname LIKE 'Eri%';  -- beginnt mit 'Eri'
SELECT * FROM personen WHERE nachname LIKE '%mann'; -- endet mit 'mann'


------------------------------------------------------------
-- 1️⃣4️⃣  TABELLEN VERBINDEN (JOIN)
-- Holt Daten aus mehreren Tabellen gleichzeitig.
------------------------------------------------------------
-- Beispiel: Tabellen 'personen' und 'adressen'
CREATE TABLE adressen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    stadt TEXT,
    plz TEXT
);

-- Beispiel-Daten
INSERT INTO adressen (person_id, stadt, plz) VALUES (1, 'Berlin', '10115');
INSERT INTO adressen (person_id, stadt, plz) VALUES (2, 'Hamburg', '20095');
INSERT INTO adressen (person_id, stadt, plz) VALUES (3, 'München', '80331');

-- INNER JOIN: verbindet Datensätze mit gleicher ID
SELECT personen.vorname, personen.nachname, adressen.stadt
FROM personen
JOIN adressen ON personen.id = adressen.person_id;


------------------------------------------------------------
-- 1️⃣5️⃣  DISTINCT – Doppelte Werte vermeiden
------------------------------------------------------------
SELECT DISTINCT nachname FROM personen;


------------------------------------------------------------
-- 1️⃣6️⃣  LIMIT – Anzahl der Ergebnisse einschränken
------------------------------------------------------------
SELECT * FROM personen LIMIT 2;  -- gibt nur 2 Zeilen zurück
