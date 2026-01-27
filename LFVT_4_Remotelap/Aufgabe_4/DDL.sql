-- =====================================================================
-- 💙 DDL – Data Definition Language (Wiederholung)
-- Schlüsselwörter: CREATE, SHOW, ALTER, DROP, CONSTRAINT
-- =====================================================================

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 1: Datenbank erstellen
-- Erstelle eine Datenbank mit dem Namen Schule_DB
-- ---------------------------------------------------------------------
CREATE DATABASE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 2: Alle Datenbanken anzeigen
-- ---------------------------------------------------------------------
SHOW DATABASES;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 3: Datenbank auswählen
-- Wechsle in die Datenbank Schule_DB
-- ---------------------------------------------------------------------
USE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 4: Tabelle erstellen (CREATE)
-- Erstelle eine Tabelle Schueler mit:
-- - Schueler_ID (Primärschlüssel)
-- - Vorname
-- - Nachname
-- ---------------------------------------------------------------------
CREATE TABLE Schueler (
    Schueler_ID INT AUTO_INCREMENT PRIMARY KEY,
    Vorname VARCHAR(50),
    Nachname VARCHAR(50)
);

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 5: Tabellen anzeigen (SHOW)
-- ---------------------------------------------------------------------
SHOW TABLES;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 6: Tabelle verändern (ALTER)
-- Füge der Tabelle Schueler die Spalte Geburtsdatum hinzu
-- ---------------------------------------------------------------------
ALTER TABLE Schueler
ADD Geburtsdatum DATE;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 7: CONSTRAINT – PRIMARY KEY
-- Der Primärschlüssel sorgt für eindeutige Identifikation
-- ---------------------------------------------------------------------
-- Bereits umgesetzt in:
-- Schueler_ID INT AUTO_INCREMENT PRIMARY KEY

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 8: CONSTRAINT – FOREIGN KEY (Beispiel)
-- Beispiel für einen Fremdschlüssel (nur zur Wiederholung)
-- ---------------------------------------------------------------------
-- FOREIGN KEY (Klasse_ID) REFERENCES Klasse(Klasse_ID)

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 9: Tabelle löschen (DROP)
-- Lösche die Tabelle Schueler
-- ---------------------------------------------------------------------
DROP TABLE Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 10: Datenbank löschen (DROP)
-- ACHTUNG: Löscht die komplette Datenbank!
-- ---------------------------------------------------------------------
DROP DATABASE Schule_DB;
