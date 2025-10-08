--------------------------------------------------------------------------------------
-- 1️⃣ 1:1 BEZIEHUNG – Person ↔ Personalausweis

-- 💡 Erklärung:
-- person_id ist der Fremdschlüssel und verweist auf personen.id.
-- Durch UNIQUE darf jede Person nur einmal vorkommen, also 1:1.
-- Beispiel: Ein Ausweis gehört genau einer Person, keine zweite darf denselben haben.
--------------------------------------------------------------------------------------

CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL
);

CREATE TABLE personalausweis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ausweisnummer TEXT UNIQUE NOT NULL,
    person_id INTEGER UNIQUE,                       -- UNIQUE macht die Beziehung 1:1
    FOREIGN KEY (person_id) REFERENCES personen(id)
);

