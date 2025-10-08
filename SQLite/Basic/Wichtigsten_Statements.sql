--------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
--------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

--------------------------------------------------------------------------------------------------------------
-- 1️⃣  TABELLE ERSTELLEN
-- Erstellt eine neue Tabelle mit Spalten und Datentypen.
--------------------------------------------------------------------------------------------------------------
CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,   -- Eindeutige ID (automatisch hochzählend)
    vorname TEXT NOT NULL,                  -- Textspalte, darf nicht leer sein
    nachname TEXT NOT NULL,
    geburtsdatum DATE,                      -- Datumsspalte
    einkommen REAL                          -- Zahl mit Nachkommastellen
);


--------------------------------------------------------------------------------------------------------------
-- 2️⃣  DATENSÄTZE EINFÜGEN
-- Fügt neue Zeilen in eine Tabelle ein.
-- ACHTUNG Nummerische Werte == zahlen 0-9 werden nicht in Anführungszeichen gsetzt
--------------------------------------------------------------------------------------------------------------
INSERT INTO personen (vorname, nachname, geburtsdatum, einkommen)
VALUES ('Max', 'Mustermann', '1980-01-15', 3200);   

INSERT INTO personen (vorname, nachname, geburtsdatum, einkommen)
VALUES ('Erika', 'Musterfrau', '1990-05-30', 4100);

INSERT INTO personen (vorname, nachname, geburtsdatum, einkommen)
VALUES ('Hans', 'Schmidt', '1975-09-20', 2700);

INSERT INTO personen (vorname, nachname, geburtsdatum, einkommen)
VALUES ('Lisa', 'Schmidt', '1988-03-11', 2800);

--------------------------------------------------------------------------------------------------------------
-- 3️⃣  ALLE DATENSÄTZE ANZEIGEN
-- Gibt alle Spalten und Zeilen der Tabelle aus.
--------------------------------------------------------------------------------------------------------------
SELECT * FROM personen;


--------------------------------------------------------------------------------------------------------------
-- 4️⃣  BESTIMMTE SPALTEN AUSGEBEN
-- Gibt nur ausgewählte Spalten aus.
--------------------------------------------------------------------------------------------------------------
SELECT vorname, nachname FROM personen;

--------------------------------------------------------------------------------------------------------------
-- 4️⃣.1  ALIAS VERWENDEN (AS)
-- Verleiht Spalten oder Tabellen temporäre Namen.
--------------------------------------------------------------------------------------------------------------
SELECT vorname AS "Vorname", nachname AS "Nachname"
FROM personen;


--------------------------------------------------------------------------------------------------------------
-- 5️⃣  BEDINGTE ABFRAGEN
-- Mit WHERE werden nur bestimmte Datensätze angezeigt.
--------------------------------------------------------------------------------------------------------------
SELECT * FROM personen WHERE nachname = 'Schmidt';
SELECT * FROM personen WHERE geburtsdatum > '1985-01-01';

-- BETWEEN: Bereichsabfrage
SELECT * FROM personen WHERE einkommen BETWEEN 3000 AND 4000;

-- IN: Vergleich mit mehreren Werten
SELECT * FROM personen WHERE nachname IN ('Musterfrau', 'Schmidt');

-- IS NULL: prüft, ob ein Feld leer (NULL) ist
SELECT * FROM personen WHERE einkommen IS NULL;


--------------------------------------------------------------------------------------------------------------
-- 6️⃣  DATENSÄTZE SORTIEREN
-- Mit ORDER BY kann man auf- oder absteigend sortieren.
--------------------------------------------------------------------------------------------------------------
SELECT * FROM personen ORDER BY einkommen ASC;   -- aufsteigend | kleinstes oben 
SELECT * FROM personen ORDER BY einkommen DESC;  -- absteigend  | größest oben


--------------------------------------------------------------------------------------------------------------
-- 7️⃣  VERGLEICHS- UND LOGISCHE OPERATIONEN
--------------------------------------------------------------------------------------------------------------
-- AND / OR / NOT
SELECT * FROM personen WHERE einkommen > 3000 AND nachname = 'Mustermann';
SELECT * FROM personen WHERE einkommen > 3000 OR geburtsdatum < '1985-01-01';
SELECT * FROM personen WHERE NOT nachname = 'Mustermann';


--------------------------------------------------------------------------------------------------------------
-- 8️⃣.1  DATENSÄTZE AKTUALISIEREN
-- Ändert bestehende Werte in einer Tabelle.
--------------------------------------------------------------------------------------------------------------
UPDATE personen
SET nachname = 'Mayer', vorname = 'Fritz'   -- hier sagt man welcher Datensatz = '' in welcher spalte
WHERE id = 3;                               -- nur der Datensatz mit ID 3 wird geändert == explizit/eindeutig !


--------------------------------------------------------------------------------------------------------------
-- 8️⃣.2  DATENSÄTZE LÖSCHEN
-- Entfernt bestimmte Zeilen.
--------------------------------------------------------------------------------------------------------------
DELETE FROM personen WHERE id = 2;    -- löscht nur Erika Musterfrau


--------------------------------------------------------------------------------------------------------------
-- 9️⃣  ALLE DATENSÄTZE LÖSCHEN (aber Tabelle bleibt!)
--------------------------------------------------------------------------------------------------------------
DELETE FROM personen;


--------------------------------------------------------------------------------------------------------------
-- 🔟  TABELLE LÖSCHEN
-- Entfernt die gesamte Tabelle (Achtung: alle Daten weg!)
--------------------------------------------------------------------------------------------------------------
DROP TABLE personen;



--------------------------------------------------------------------------------------------------------------
-- 1️⃣1️⃣  AGGREGATFUNKTIONEN
-- Diese berechnen Werte über mehrere Zeilen hinweg.
--------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) FROM personen;                              -- zählt alle Personen
SELECT MIN(geburtsdatum) FROM personen;                     -- älteste Person
SELECT MAX(geburtsdatum) FROM personen;                     -- jüngste Person
SELECT AVG(einkommen) FROM personen;                        -- durchschnitt
SELECT SUM(einkommen) FROM personen;                        -- gesamt

-- AS bedeutet als Alias deckname
SELECT SUM(einkommen) AS "Gesamteinkommen" FROM personen;   -- gesamt + alias


--------------------------------------------------------------------------------------------------------------
-- 1️⃣2️⃣.1  GRUPPIEREN MIT GROUP BY
-- Gruppiert Daten und wendet Aggregatfunktionen auf Gruppen an.
--------------------------------------------------------------------------------------------------------------
-- Beispiel: Wie viele Personen pro Nachname?
SELECT nachname, COUNT(*) 
FROM personen
GROUP BY nachname;


--------------------------------------------------------------------------------------------------------------
-- 1️⃣2️⃣.2  FILTER AUF GRUPPEN MIT HAVING
-- HAVING filtert Gruppen nach Aggregatwerten (nicht WHERE!)
--------------------------------------------------------------------------------------------------------------
-- Nur Nachnamen anzeigen, die mehr als ein mal vorkommen:
SELECT nachname, COUNT(*) AS "Anzahl"
FROM personen
GROUP BY nachname
HAVING COUNT(*) > 1;


--------------------------------------------------------------------------------------------------------------
-- 1️⃣3️⃣  SUCHEN MIT LIKE
-- Findet Einträge mit ähnlichen Werten (Textsuche).
--------------------------------------------------------------------------------------------------------------
SELECT * FROM personen WHERE vorname LIKE 'Eri%';   -- beginnt mit 'Eri'
SELECT * FROM personen WHERE nachname LIKE '%dt'; -- endet mit 'mann'


--------------------------------------------------------------------------------------------------------------
-- 1️⃣4️⃣  DISTINCT – Doppelte Werte vermeiden
--------------------------------------------------------------------------------------------------------------
SELECT DISTINCT nachname FROM personen;


--------------------------------------------------------------------------------------------------------------
-- 1️⃣5️⃣TABELLEN VERBINDEN (JOIN)
-- Holt Daten aus mehreren Tabellen gleichzeitig.
--------------------------------------------------------------------------------------------------------------
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
SELECT personen.vorname, personen.nachname, adressen.stadt  -- angabe aller spalten die man abrufen möchte
FROM personen                                               -- angabe der ersten tabelle
JOIN adressen                                               -- angabe der weiteren tabelle
ON personen.id = adressen.person_id;                        -- angabe der Primärschlüssel aus jeweiler tabelle


--------------------------------------------------------------------------------------------------------------
-- 1️⃣6️⃣  LIMIT – Anzahl der Ergebnisse einschränken
--------------------------------------------------------------------------------------------------------------
SELECT * FROM personen LIMIT 2;  -- gibt nur 2 Zeilen zurück
