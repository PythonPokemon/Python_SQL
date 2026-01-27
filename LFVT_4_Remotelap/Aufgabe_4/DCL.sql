-- =====================================================================
-- 🟣 DCL – Data Control Language (Wiederholung)
-- Zweck: Rechte vergeben und entziehen
-- Schlüsselwörter: GRANT | REVOKE
-- =====================================================================

-- Voraussetzung:
-- Du bist als Benutzer mit ADMIN-Rechten (z. B. root) angemeldet
-- Datenbank: Schule_DB existiert

USE Schule_DB;

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 1: Benutzer anlegen
-- Erstelle einen Benutzer mit dem Namen 'schueler_user'
-- ---------------------------------------------------------------------
CREATE USER 'schueler_user'@'localhost' IDENTIFIED BY 'passwort123';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 2: Leserechte vergeben (GRANT SELECT)
-- Der Benutzer soll Schülerdaten nur lesen dürfen
-- ---------------------------------------------------------------------
GRANT SELECT
ON Schule_DB.Schueler
TO 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 3: Schreibrechte vergeben (INSERT)
-- Erlaube dem Benutzer neue Schüler einzufügen
-- ---------------------------------------------------------------------
GRANT INSERT
ON Schule_DB.Schueler
TO 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 4: Mehrere Rechte gleichzeitig vergeben
-- Erlaube SELECT und UPDATE auf die Tabelle Schueler
-- ---------------------------------------------------------------------
GRANT SELECT, UPDATE
ON Schule_DB.Schueler
TO 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 5: Rechte prüfen
-- Zeige die vergebenen Rechte des Benutzers an
-- ---------------------------------------------------------------------
SHOW GRANTS FOR 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 6: Recht entziehen (REVOKE)
-- Entziehe dem Benutzer das UPDATE-Recht
-- ---------------------------------------------------------------------
REVOKE UPDATE
ON Schule_DB.Schueler
FROM 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 7: Alle Rechte entziehen
-- Entferne alle Rechte auf die Tabelle Schueler
-- ---------------------------------------------------------------------
REVOKE ALL PRIVILEGES
ON Schule_DB.Schueler
FROM 'schueler_user'@'localhost';

-- ---------------------------------------------------------------------
-- 🧩 Aufgabe 8: Benutzer löschen (optional)
-- Lösche den Benutzer wieder
-- ---------------------------------------------------------------------
DROP USER 'schueler_user'@'localhost';
