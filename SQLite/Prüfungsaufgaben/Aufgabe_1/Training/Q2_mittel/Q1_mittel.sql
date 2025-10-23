-- 14. Patienten mit behandelndem Arzt 
SELECT DISTINCT
  Patient.PatientNr,
  Patient.PatientName,
  Patient.PatientVorname,
  Arzt.ArztName
FROM Patient
JOIN Pat_MedLeistung ON Patient.PatientNr = Pat_MedLeistung.PatientNr
JOIN Arzt ON Pat_MedLeistung.ArztNr = Arzt.ArztNr;



-- 15. Zeige pro Arzt, wie viele Patienten er insgesamt behandelt.
SELECT
  Arzt.ArztNr,
  Arzt.ArztName,
  COUNT(DISTINCT Pat_MedLeistung.PatientNr) AS "Anzahl_Patienten"
FROM Arzt
LEFT JOIN Pat_MedLeistung ON Arzt.ArztNr = Pat_MedLeistung.ArztNr
GROUP BY Arzt.ArztNr, Arzt.ArztName;


-- 16. Leistungen mit Preis und dem Arztfaktor der behandelnden Ärzte (alle Kombinationen)
SELECT DISTINCT
  MedLeistung.MLeistungNr,
  MedLeistung.Bezeichnung,
  MedLeistung.Preis,
  Arzt.ArztNr,
  Arzt.ArztName,
  Arzt.ArztFaktor
FROM MedLeistung
JOIN Pat_MedLeistung ON MedLeistung.MLeistungNr = Pat_MedLeistung.MLeistungNr
JOIN Arzt ON Pat_MedLeistung.ArztNr = Arzt.ArztNr;


-- 17. Zeige alle Patienten, die eine medizinische Leistung mit Preis über 500 € erhalten haben.
SELECT DISTINCT 
  Patient.PatientName,
  Patient.PatientVorname
FROM Patient
JOIN Pat_MedLeistung ON Pat_MedLeistung.PatientNr = Patient.PatientNr
JOIN MedLeistung ON Pat_MedLeistung.MLeistungNr = MedLeistung.MLeistungNr
WHERE MedLeistung.Preis > 500;

-- 18. Zeige den höchsten, niedrigsten und durchschnittlichen Preis aller Leistungen.
SELECT 
  MAX(Preis) AS "Max Preis",
  MIN(Preis) AS "Min Preis",
  AVG(Preis) AS "Ø Preis"
FROM MedLeistung;

-- 19. Zeige pro Patient, wie viele verschiedene Leistungen er bisher erhalten hat.
SELECT 
  Patient.PatientName,
  COUNT(DISTINCT Pat_MedLeistung.MLeistungNr) AS "Anzahl Leistungen"
FROM Patient
JOIN Pat_MedLeistung ON Pat_MedLeistung.PatientNr = Patient.PatientNr
GROUP BY Patient.PatientName;

-- 20. Zeige die Patienten, die größer gleich  3 Leistungen erhalten haben.
SELECT 
  Patient.PatientName,
  COUNT(Pat_MedLeistung.MLeistungNr) AS "Anzahl Leistungen"
FROM Patient
JOIN Pat_MedLeistung ON Pat_MedLeistung.PatientNr = Patient.PatientNr
GROUP BY Patient.PatientName
HAVING COUNT(Pat_MedLeistung.MLeistungNr) >= 3;

-- 21. Zeige für jeden Ort die Anzahl der unterschiedlichen Ärzte, die dort Patienten behandeln.
SELECT
  Patient.PatientOrt,
  COUNT(DISTINCT Pat_MedLeistung.ArztNr) AS "Anzahl_Aerzte"
FROM Patient
JOIN Pat_MedLeistung ON Patient.PatientNr = Pat_MedLeistung.PatientNr
GROUP BY Patient.PatientOrt;


-- 22. Zeige alle Leistungen, die mindestens einmal im Jahr 2020 durchgeführt wurden.
-- 22. (für DD.MM.YYYY-Format)
SELECT
  MedLeistung.Bezeichnung,
  COUNT(*) AS "Anzahl_2020"
FROM Pat_MedLeistung
JOIN MedLeistung ON Pat_MedLeistung.MLeistungNr = MedLeistung.MLeistungNr
WHERE substr(Pat_MedLeistung.LeistungsDat, 7, 4) = '2020'
GROUP BY MedLeistung.Bezeichnung;


-- 23. Zeige den Namen des Arztes, der die meisten Leistungen insgesamt durchgeführt hat.== geht nicht!

SELECT
  Arzt.ArztName,
  COUNT(*) AS "Gesamtleistungen"
FROM Arzt
JOIN Pat_MedLeistung ON Arzt.ArztNr = Pat_MedLeistung.ArztNr
GROUP BY Arzt.ArztNr, Arzt.ArztName
ORDER BY "Gesamtleistungen" DESC
LIMIT 1;

