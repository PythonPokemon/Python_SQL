-- 📝 Trainingsblatt – Abfragen & Auswertungen

-- 1. Zeige alle Patienten mit allen verfügbaren Daten.
SELECT * FROM Patient;


-- 2. Zeige nur Vorname und Nachname aller Patienten.
SELECT PatientVorname, PatientName FROM Patient;


-- 3. Zeige sämtliche Patienten, die in „Burg“ wohnen.
SELECT * FROM Patient WHERE PatientOrt = 'Burg';


-- 4. Zeige die Patienten sortiert nach Nachname aufsteigend.
SELECT * FROM Patient ORDER BY PatientName ASC;


-- 5. Zeige alle medizinischen Leistungen mit Preis über 300 €.
SELECT * FROM MedLeistung WHERE Preis > 300;


-- 6. Zeige die Namen aller Ärzte mit ihrem Faktor (nur Name und Faktor).
SELECT ArztName, ArztFaktor FROM Arzt;


-- 7. Zeige alle Patienten, deren Nachname mit „S“ beginnt.
SELECT * FROM Patient WHERE PatientName LIKE 'S%';


-- 8. Wie viele Patienten gibt es insgesamt?
SELECT COUNT(*) AS "Anzahl Patienten" FROM Patient;


-- 9. Wie hoch ist der durchschnittliche Preis aller medizinischen Leistungen?
SELECT AVG(Preis) AS "Durchschnittspreis" FROM MedLeistung;


-- 10. Zeige, wie viele Patienten pro Ort wohnen, aber nur für Orte mit mehr als einem Patienten.
SELECT PatientOrt, COUNT(*) AS "Anzahl Patienten"
FROM Patient
GROUP BY PatientOrt
HAVING COUNT(*) > 1;


-- 11. Zeige für jede medizinische Leistung die Bezeichnung und wie oft sie ausgeführt wurde (in der Tabelle Pat_MedLeistung).
SELECT MedLeistung.Bezeichnung, COUNT(*) AS "Durchführung"
FROM Pat_MedLeistung
JOIN MedLeistung ON Pat_MedLeistung.MLeistungNr = MedLeistung.MLeistungNr
GROUP BY MedLeistung.Bezeichnung;


-- 12. Zeige Patienten mit ihren medizinischen Leistungen inklusive Datum.
SELECT 
  Patient.PatientName,
  Patient.PatientVorname,
  MedLeistung.Bezeichnung,
  Pat_MedLeistung.LeistungsDat
FROM Pat_MedLeistung
JOIN Patient ON Pat_MedLeistung.PatientNr = Patient.PatientNr
JOIN MedLeistung ON Pat_MedLeistung.MLeistungNr = MedLeistung.MLeistungNr;


-- 13. Zeige Patienten, die noch keine Zusatzleistung gehabt haben (Annahme: keine Einträge in Pat_ZusatzLeistung).
SELECT Patient.PatientName, Patient.PatientVorname
FROM Patient
LEFT JOIN Pat_ZusatzLeistung ON Pat_ZusatzLeistung.PatientNr = Patient.PatientNr
WHERE Pat_ZusatzLeistung.PatientNr IS NULL;
