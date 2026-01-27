-- =====================================================================
-- 🔵 TCL – Transaction Control Language (Wiederholung)
-- Zweck: Transaktionen steuern (sichern oder zurückrollen)
-- Schlüsselwörter:
-- START TRANSACTION | BEGIN | COMMIT | ROLLBACK | SAVEPOINT
-- =====================================================================

-- Voraussetzung:
-- Tabelle Schueler existiert in Schule_DB
-- Storage Engine: InnoDB (wichtig für Transaktionen!)

USE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 1: Transaktion starten
-- Starte eine neue Transaktion
-- ---------------------------------------------------------------------
START TRANSACTION;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 2: Datensatz einfügen
-- Füge einen neuen Schüler ein (noch NICHT speichern)
-- ---------------------------------------------------------------------
INSERT INTO Schueler (Vorname, Nachname)
VALUES ('Paul', 'Neumann');

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 3: Zwischenspeicher setzen (SAVEPOINT)
-- Setze einen Speicherpunkt mit dem Namen sp1
-- ---------------------------------------------------------------------
SAVEPOINT sp1;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 4: Weiteren Datensatz einfügen
-- ---------------------------------------------------------------------
INSERT INTO Schueler (Vorname, Nachname)
VALUES ('Laura', 'Klein');

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 5: Teilweise zurücksetzen (ROLLBACK TO SAVEPOINT)
-- Setze die Transaktion auf den Speicherpunkt sp1 zurück
-- ---------------------------------------------------------------------
ROLLBACK TO sp1;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 6: Transaktion abschließen (COMMIT)
-- Speichere alle Änderungen endgültig
-- ---------------------------------------------------------------------
COMMIT;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 7: Ergebnis prüfen
-- Zeige alle Schüler an
-- ---------------------------------------------------------------------
SELECT * FROM Schueler;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 8: Ganze Transaktion zurücksetzen (ROLLBACK)
-- Starte eine neue Transaktion, füge Daten ein und verwerfe sie komplett
-- ---------------------------------------------------------------------
START TRANSACTION;

INSERT INTO Schueler (Vorname, Nachname)
VALUES ('Test', 'Rollback');

ROLLBACK;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 9: Kontrolle
-- Der Datensatz 'Test Rollback' darf NICHT vorhanden sein
-- ---------------------------------------------------------------------
SELECT * FROM Schueler;
