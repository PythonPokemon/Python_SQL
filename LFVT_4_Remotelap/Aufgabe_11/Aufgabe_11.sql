-- ------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
-- ------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 0 – Datenbank erstellen & verwenden
-- 
CREATE DATABASE Aufgabe_11_DB;
USE Aufgabe_11_DB;

-- drop table Produkt, Fertiegungsstation;
-- drop database Aufgabe_11_DB;
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen (ohne Fremdschlüssel!)
-- 

-- Regel:
-- Tabellen, die nicht von anderen abhängen, kommen zuerst.

CREATE TABLE Produkt (
    Produkt_ID INT AUTO_INCREMENT PRIMARY KEY,
    Bezeichnung varchar(100)
);


-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln


-- bspl.
CREATE TABLE Fertigungsstrasse (
    Fertigungsstrasse_ID INT AUTO_INCREMENT PRIMARY KEY,
    Produkt_ID INT,																				-- Attribut FK von Fremd_Tabelle und Datentyp angeben!
    Bezeichnung varchar(100),
    Kuerzel varchar(100),
    
    foreign key (Produkt_ID) references Produkt(Produkt_ID)										-- angabe des Fremdschlüssel, wo die Fremdschlüssel zu finden sind, in welche Tabelle/Spalte
);


create table Fertiegungsstation (
	Fertiegungsstation_ID int auto_increment primary key,
    Fertigungsstrasse_ID int,																	
    Bezeichnung varchar(100),
    Kuerzel varchar(100),
    
    foreign key (Fertigungsstrasse_ID) references Fertigungsstrasse(Fertigungsstrasse_ID)		
);

create table Mitarbeiter (
	Mitarbeiter_ID int auto_increment primary key,
    Fertiegungsstation_ID int,																	
    Vorname varchar(100),
    Nachname varchar(100),
    Personalnummer int,

    foreign key(Fertiegungsstation_ID) references Fertiegungsstation(Fertiegungsstation_ID)		
);


create table Maschine (
	Maschine_ID int auto_increment primary key,
    Fertiegungsstation_ID int,																	
    Bezeichnung varchar(100),
    Anlagenummer int,
    
    foreign key (Fertiegungsstation_ID) references Fertiegungsstation(Fertiegungsstation_ID)	
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 3 – (Kreuztabelle m:n)

create table Mitarbeiter_Maschine (
	Mitarbeiter_ID int,																			-- angabe der fremdschlüssel als attribut
    Maschine_ID int,																			-- angabe der fremdschlüssel als attribut
    
    primary key(Mitarbeiter_ID, Maschine_ID),													-- hier sagt man, das der Primärschlüssel die kombination aus allen angegebenen fremdschlüsseln ist!
    
    foreign key (Mitarbeiter_ID) references Mitarbeiter(Mitarbeiter_ID),						-- angabe des Fremdschlüssel, wo die Fremdschlüssel zu finden sind, in welche Tabelle/Spalte
    foreign key (Maschine_ID) references Maschine(Maschine_ID)									-- angabe des Fremdschlüssel, wo die Fremdschlüssel zu finden sind, in welche Tabelle/Spalte
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 – Daten einfügen (je 10 Datensätze)
-- Produkt (Basistabelle)
INSERT INTO Produkt (Bezeichnung) VALUES
('Elektromotor'),
('Getriebe'),
('Hydraulikpumpe'),
('Förderband'),
('Roboterarm'),
('Steuerungseinheit'),
('Montageplatte'),
('Kühlaggregat'),
('Sensormodul'),
('Antriebseinheit');

-- Fertigungsstrasse (FK → Produkt)
INSERT INTO Fertigungsstrasse (Produkt_ID, Bezeichnung, Kuerzel) VALUES
(1, 'Motorenmontage', 'FM01'),
(2, 'Getriebefertigung', 'FM02'),
(3, 'Hydrauliklinie', 'FM03'),
(4, 'Bandmontage', 'FM04'),
(5, 'Roboterfertigung', 'FM05'),
(6, 'Steuerungsbau', 'FM06'),
(7, 'Plattenbearbeitung', 'FM07'),
(8, 'Kühltechnik', 'FM08'),
(9, 'Sensorik', 'FM09'),
(10,'Antriebslinie', 'FM10');

-- Fertiegungsstation (FK → Fertigungsstrasse)
INSERT INTO Fertiegungsstation (Fertigungsstrasse_ID, Bezeichnung, Kuerzel) VALUES
(1, 'Vormontage', 'S01'),
(2, 'Endmontage', 'S02'),
(3, 'Prüfstation', 'S03'),
(4, 'Schweißstation', 'S04'),
(5, 'Justage', 'S05'),
(6, 'Qualitätskontrolle', 'S06'),
(7, 'Verpackung', 'S07'),
(8, 'Kalibrierung', 'S08'),
(9, 'Feinmontage', 'S09'),
(10,'Abnahme', 'S10');

-- Mitarbeiter (FK → Fertiegungsstation)
INSERT INTO Mitarbeiter (Fertiegungsstation_ID, Vorname, Nachname, Personalnummer) VALUES
(1, 'Max',    'Müller',   1001),
(2, 'Anna',   'Schmidt',  1002),
(3, 'Tom',    'Becker',   1003),
(4, 'Lisa',   'Wagner',   1004),
(5, 'Paul',   'Fischer',  1005),
(6, 'Julia',  'Meyer',    1006),
(7, 'Jan',    'Schulz',   1007),
(8, 'Nina',   'Hoffmann', 1008),
(9, 'Markus', 'Braun',    1009),
(10,'Laura',  'König',    1010);

-- Maschine (FK → Fertiegungsstation)
INSERT INTO Maschine (Fertiegungsstation_ID, Bezeichnung, Anlagenummer) VALUES
(1, 'Montageroboter', 5001),
(2, 'CNC-Fräse',      5002),
(3, 'Prüfautomat',    5003),
(4, 'Schweißroboter', 5004),
(5, 'Justieranlage',  5005),
(6, 'Messstation',    5006),
(7, 'Verpackungsroboter', 5007),
(8, 'Kalibriergerät', 5008),
(9, 'Feinmontagetisch', 5009),
(10,'Endprüfanlage',  5010);

-- Kreuztabelle Mitarbeiter_Maschine (m:n)
INSERT INTO Mitarbeiter_Maschine (Mitarbeiter_ID, Maschine_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10,10);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 5 – Kontrolle (Pflicht!)
-- Abfrage

select * from Produkt;
select * from Fertigungsstrasse;
select * from Fertiegungsstation;
select * from Mitarbeiter;
select * from Maschine;
select * from Mitarbeiter_Maschine;

select * from Produkt, Fertigungsstrasse, Fertiegungsstation, Mitarbeiter, Maschine, Mitarbeiter_Maschine;


