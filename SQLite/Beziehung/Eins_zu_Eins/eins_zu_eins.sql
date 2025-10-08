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
    FOREIGN KEY (person_id) REFERENCES personen(person_id)
);

DROP TABLE personen;
DROP TABLE personalausweis;