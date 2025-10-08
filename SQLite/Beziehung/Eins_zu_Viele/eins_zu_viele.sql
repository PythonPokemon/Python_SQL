----------------------------------------------------------------------------------------------------------
-- 2️⃣ 1:n BEZIEHUNG – Person → Adressen
-- 👉 Beispiel: Eine Person kann mehrere Adressen haben, aber jede Adresse gehört nur einer Person.

-- 💡 Erklärung:
-- Eine Person kann viele Adressen haben → 1:n
-- adressen.person_id zeigt auf personen.id.
-- Die Beziehung steht also auf der „vielen“-Seite (Adressen-Tabelle).
----------------------------------------------------------------------------------------------------------

CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL
);

CREATE TABLE adressen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER NOT NULL,           -- Fremdschlüssel
    stadt TEXT,
    plz TEXT,
    FOREIGN KEY (person_id) REFERENCES personen(id)
);
