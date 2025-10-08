----------------------------------------------------------------------------------------------------------
-- 1️⃣ 1:1 BEZIEHUNG – Person ↔ Personalausweis
-- 👉 Beispiel: Jede Person hat genau einen Personalausweis, und jeder Ausweis gehört genau einer Person.

-- 💡 Erklärung:
-- person_id ist der Fremdschlüssel und verweist auf personen.id.
-- Durch UNIQUE darf jede Person nur einmal vorkommen, also 1:1.
-- Beispiel: Ein Ausweis gehört genau einer Person, keine zweite darf denselben haben.
----------------------------------------------------------------------------------------------------------

CREATE TABLE personen (
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL
);

CREATE TABLE personalausweis (
    ausweis_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ausweisnummer TEXT UNIQUE NOT NULL,
    person_id INTEGER UNIQUE,                               -- UNIQUE macht die Beziehung 1:1
    FOREIGN KEY (person_id) REFERENCES personen
);

DROP TABLE personen;
DROP TABLE personalausweis;

----------------------------------------------------------------------------------------------------------
-- ❌ Problem:

-- Beide Tabellen verweisen gegenseitig aufeinander.
-- Wenn du das ausführst, bekommst du (je nach SQL-Dialekt) einen Fehler wie:

-- “foreign key mismatch” oder “circular reference”.

-- Denn:
-- Beim Erstellen von personen existiert personalausweis noch nicht → Referenz nicht möglich.

-- Beim Erstellen von personalausweis existiert personen zwar schon, 
-- aber sie referenziert zurück → Zirkuläre Abhängigkeit entsteht.

-- SQL erlaubt das nicht direkt, weil man sonst nicht weiß, 
-- welche Tabelle zuerst angelegt oder gelöscht werden darf.
----------------------------------------------------------------------------------------------------------