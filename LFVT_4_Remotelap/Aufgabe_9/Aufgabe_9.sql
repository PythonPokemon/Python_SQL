-- ------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
-- ------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 0 – Datenbank erstellen & verwenden
-- 
CREATE DATABASE Aufgabe_9_DB;
USE Aufgabe_9_DB;
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen (ohne Fremdschlüssel!)
-- 

-- Regel:
-- Tabellen, die nicht von anderen abhängen, kommen zuerst.

CREATE TABLE Kunde (
    Kunde_ID INT AUTO_INCREMENT PRIMARY KEY
);

create table Lieferant (
	Lieferant_ID int auto_increment primary key
);
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln
-- 
CREATE TABLE Kundenauftrag (
    Kundenauftrag_ID INT AUTO_INCREMENT PRIMARY KEY,
    Kunde_ID INT,																		-- Attribut FK von Kunde Tabelle
    foreign key (Kunde_ID) references Kunde(Kunde_ID)
);

CREATE TABLE Solaranlage (
    Solaranlage_ID INT AUTO_INCREMENT PRIMARY KEY,
    Kundenauftrag_ID INT,																-- Attribut FK von Kundenauftrag Tabelle
    foreign key (Kundenauftrag_ID) references Kundenauftrag(Kundenauftrag_ID)
);

create table Komponenten (
	Komponenten_ID int auto_increment primary key,
    Solaranlage_ID int,
    foreign key (Solaranlage_ID) references Solaranlage(Solaranlage_ID)
);

create table Lieferung (
	Lieferung_ID int auto_increment primary key,
	Lieferant_ID int,
	foreign key (Lieferant_ID) references Lieferant(Lieferant_ID)
);

create table Lieferantenauftrag (
	Lieferantenauftrag_ID int auto_increment primary key,
    Lieferant_ID int,
    foreign key(Lieferant_ID) references Lieferant(Lieferant_ID)
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 3 – (Kreuztabelle m:n)

create table Komponenten_Lieferantenauftrag (
	Komponenten_ID int,																-- angabe der fremdschlüssel als attribut
    Lieferantenauftrag_ID int,														-- angabe der fremdschlüssel als attribut
    primary key(Komponenten_ID, Lieferantenauftrag_ID),								-- hier sagt man, das der Primärschlüssel die kombination aus den beiden fremdschlüsseln ist!
    
    foreign key (Komponenten_ID) references Komponenten(Komponenten_ID),
    foreign key (Lieferantenauftrag_ID) references Lieferantenauftrag(Lieferantenauftrag_ID)
);


create table Lieferungs_Komponenten (
	Lieferung_ID int,
    Komponenten_ID int,
	primary key(Lieferung_ID, Komponenten_ID),
    
    foreign key (Lieferung_ID) references Lieferung(Lieferung_ID),
    foreign key (Komponenten_ID) references Komponenten(Komponenten_ID)
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 – Spalten/Attribute nachtragen
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4.1 – Basistabellen nachträglich erweitern (ALTER TABLE)
-- Tabelle: Kunde → Name, Ort, E-Mail
ALTER TABLE Kunde
ADD Vorname VARCHAR(100),
add Nachname varchar(100),
ADD Ort VARCHAR(100),
ADD Email VARCHAR(100);

-- Tabelle: Lieferant → Firmenname, Ansprechpartner
ALTER TABLE Lieferant
ADD Firmenname VARCHAR(100),
ADD Ansprechpartner VARCHAR(100);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4.2 – Tabellen mit Fremdschlüsseln erweitern
-- Tabelle: Kundenauftrag → Auftragsdatum
ALTER TABLE Kundenauftrag
ADD Auftragsdatum DATE;

-- Tabelle: Solaranlage → Leistung_kw
ALTER TABLE Solaranlage
ADD Leistung_kw DECIMAL(6,2);

-- Tabelle: Komponenten → Bezeichnung
ALTER TABLE Komponenten
ADD Bezeichnung VARCHAR(100);

-- Tabelle: Lieferung → Lieferdatum
ALTER TABLE Lieferung
ADD Lieferdatum DATE;

-- Tabelle: Lieferantenauftrag → Bestelldatum
ALTER TABLE Lieferantenauftrag
ADD Bestelldatum DATE;

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 5 – Daten einfügen (je 10 Datensätze)
-- Kunde
INSERT INTO Kunde (Vorname, Nachname, Ort, Email) VALUES
('Max',    'Müller',   'Berlin',     'max.mueller@mail.de'),
('Anna',   'Schmidt',  'Hamburg',    'anna.schmidt@mail.de'),
('Tom',    'Becker',   'München',    'tom.becker@mail.de'),
('Lisa',   'Wagner',   'Köln',       'lisa.wagner@mail.de'),
('Paul',   'Fischer',  'Frankfurt',  'paul.f@mail.de'),
('Julia',  'Meyer',    'Stuttgart',  'j.meyer@mail.de'),
('Jan',    'Schulz',   'Dresden',    'j.schulz@mail.de'),
('Nina',   'Hoffmann', 'Leipzig',    'n.hoffmann@mail.de'),
('Markus', 'Braun',    'Bremen',     'm.braun@mail.de'),
('Laura',  'König',    'Hannover',   'l.koenig@mail.de');

-- Lieferant
insert into Lieferant (Firmenname, Ansprechpartner) values
('SolarTech GmbH',     'Herr Weber'),
('GreenPower AG',     'Frau Neumann'),
('EcoSun GmbH',       'Herr Klein'),
('VoltPlus GmbH',     'Frau Richter'),
('SunEnergy KG',      'Herr Wolf'),
('PowerGrid GmbH',    'Frau Brandt'),
('SolarOne AG',       'Herr Busch'),
('EnerTec GmbH',      'Frau Schuster'),
('BrightSun KG',      'Herr Peters'),
('FutureEnergy GmbH', 'Frau Lange');

-- Kundenauftrag
INSERT INTO Kundenauftrag (Kunde_ID, Auftragsdatum) VALUES
(1, '2025-01-01'),
(2, '2025-01-02'),
(3, '2025-01-03'),
(4, '2025-01-04'),
(5, '2025-01-05'),
(6, '2025-01-06'),
(7, '2025-01-07'),
(8, '2025-01-08'),
(9, '2025-01-09'),
(10,'2025-01-10');

-- Solaranlage
INSERT INTO Solaranlage (Kundenauftrag_ID, Leistung_kw) VALUES
(1, 5.50),
(2, 6.00),
(3, 4.80),
(4, 7.20),
(5, 8.00),
(6, 5.00),
(7, 6.50),
(8, 9.00),
(9, 10.00),
(10,4.20);

-- Komponenten
INSERT INTO Komponenten (Solaranlage_ID, Bezeichnung) VALUES
(1, 'Solarmodul Typ A'),
(2, 'Wechselrichter X'),
(3, 'Montagesystem'),
(4, 'Solarmodul Typ B'),
(5, 'Batteriespeicher'),
(6, 'Kabelsatz'),
(7, 'Wechselrichter Y'),
(8, 'Steuerungseinheit'),
(9, 'Solarmodul Premium'),
(10,'Überspannungsschutz');

-- Lieferung
INSERT INTO Lieferung (Lieferant_ID, Lieferdatum) VALUES
(1, '2025-02-01'),
(2, '2025-02-02'),
(3, '2025-02-03'),
(4, '2025-02-04'),
(5, '2025-02-05'),
(6, '2025-02-06'),
(7, '2025-02-07'),
(8, '2025-02-08'),
(9, '2025-02-09'),
(10,'2025-02-10');

-- Lieferantenauftrag
INSERT INTO Lieferantenauftrag (Lieferant_ID, Bestelldatum) VALUES
(1, '2025-01-15'),
(2, '2025-01-16'),
(3, '2025-01-17'),
(4, '2025-01-18'),
(5, '2025-01-19'),
(6, '2025-01-20'),
(7, '2025-01-21'),
(8, '2025-01-22'),
(9, '2025-01-23'),
(10,'2025-01-24');

-- Kreuztabellen
-- Komponenten ↔ Lieferantenauftrag (m:n)
INSERT INTO Komponenten_Lieferantenauftrag (Komponenten_ID, Lieferantenauftrag_ID) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10);

-- Lieferung ↔ Komponenten (m:n)
INSERT INTO Lieferungs_Komponenten (Lieferung_ID, Komponenten_ID) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt ? – Kontrolle (Pflicht!)
-- Abfrage

select * from Kunde;
select * from Lieferant;
select * from Kundenauftrag;
select * from Solaranlage;
select * from Komponenten;
select * from Lieferung;
select * from Lieferantenauftrag;
select * from Komponenten_Lieferantenauftrag;
select * from Lieferungs_Komponenten;
select * from Kunde, Lieferant, Kundenauftrag, Solaranlage, Komponenten, Lieferung, Lieferantenauftrag, Komponenten_Lieferantenauftrag, Lieferungs_Komponenten;

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt ? – Korrekturen/

-- 🔧 Spalten nachträglich hinzufügen – Grundsyntax
ALTER TABLE Kunde
ADD Email VARCHAR(100);

-- Mehrere Spalten auf einmal hinzufügen
ALTER TABLE Kunde
ADD Telefon VARCHAR(30),
ADD Geburtsdatum DATE;

-- ------------------------------------------------------------------------------------------------------------

-- 📍 Spalte an bestimmter Position einfügen
-- Am Anfang
ALTER TABLE Kunde
ADD Kundennummer VARCHAR(20) FIRST;

-- Nach einer bestimmten Spalte
ALTER TABLE Kunde
ADD Ort VARCHAR(50) AFTER Nachname;

-- ------------------------------------------------------------------------------------------------------------

-- Bestehende Spalte ändern (Datentyp / Name)
-- Datentyp ändern
ALTER TABLE Kunde
MODIFY Email VARCHAR(150);

-- Spalte umbenennen
ALTER TABLE Kunde
RENAME COLUMN Email TO EMailAdresse;

-- ------------------------------------------------------------------------------------------------------------

-- ❌ Spalte löschen
ALTER TABLE Kunde
DROP COLUMN SpaltenAttribut;







