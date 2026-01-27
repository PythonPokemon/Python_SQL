-- =====================================================================
-- 💛 DQL – Data Query Language (Wiederholung)
-- Zweck: Daten abfragen, anzeigen, filtern, sortieren
-- Schlüsselwörter:
-- SELECT | WHERE | ORDER BY | DISTINCT | LIMIT | LIKE
-- =====================================================================

-- Voraussetzung: Datenbank auswählen
USE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 1: Alle Daten anzeigen
-- Zeige alle Schüler an
-- ---------------------------------------------------------------------
SELECT * FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 2: Bestimmte Spalten anzeigen
-- Zeige nur Vorname und Nachname der Schüler
-- ---------------------------------------------------------------------
SELECT Vorname, Nachname
FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 3: Daten filtern (WHERE)
-- Zeige nur Schüler mit dem Vornamen 'Max'
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
WHERE Vorname = 'Max';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 4: Sortieren (ORDER BY)
-- Sortiere die Schüler nach Nachnamen (A–Z)
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
ORDER BY Nachname ASC;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 5: Sortieren (ORDER BY DESC)
-- Sortiere die Schüler nach Nachnamen (Z–A)
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
ORDER BY Nachname DESC;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 6: Doppelte Werte vermeiden (DISTINCT)
-- Zeige alle unterschiedlichen Nachnamen
-- ---------------------------------------------------------------------
SELECT DISTINCT Nachname
FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 7: Ergebnis begrenzen (LIMIT)
-- Zeige nur die ersten 2 Schüler
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
LIMIT 2;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 8: Textsuche (LIKE)
-- Zeige Schüler, deren Nachname mit 'M' beginnt
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
WHERE Nachname LIKE 'M%';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 9: Kombination aus WHERE und ORDER BY
-- Zeige Schüler mit Nachnamen 'Meier' sortiert nach Vorname
-- ---------------------------------------------------------------------
SELECT *
FROM Schueler
WHERE Nachname = 'Meier'
ORDER BY Vorname;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 10: JOIN – Daten aus zwei Tabellen anzeigen
-- Zeige Schüler mit ihrer Klasse
-- ---------------------------------------------------------------------
SELECT
    s.Vorname,
    s.Nachname,
    k.Bezeichnung AS Klasse
FROM Schueler s
JOIN Klasse k
ON s.Klasse_ID = k.Klasse_ID;
