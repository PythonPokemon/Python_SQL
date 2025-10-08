----------------------------------------------------------------------------------------------------------
-- 3️⃣ m:n BEZIEHUNG – Personen ↔ Kurse

-- 💡 Erklärung:
-- teilnahmen enthält nur Fremdschlüssel beider Tabellen.
-- PRIMARY KEY (person_id, kurs_id) sorgt dafür,
-- dass eine Kombination nur einmal vorkommen darf.
-- Dadurch entsteht technisch eine m:n-Beziehung.
----------------------------------------------------------------------------------------------------------

CREATE TABLE personen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vorname TEXT NOT NULL,
    nachname TEXT NOT NULL
);

CREATE TABLE kurse (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    kursname TEXT NOT NULL
);

-- Zwischentabelle zur Verbindung (m:n)
CREATE TABLE teilnahmen (
    person_id INTEGER,
    kurs_id INTEGER,
    PRIMARY KEY (person_id, kurs_id),  -- Kombination eindeutig!
    FOREIGN KEY (person_id) REFERENCES personen(id),
    FOREIGN KEY (kurs_id) REFERENCES kurse(id)
);
