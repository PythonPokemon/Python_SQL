-- ------------------------------------------------------------------------------------------------------------
-- ACHTUNG bitte jedes statement einzeln ausführen zum testen und üben!
-- ------------------------------------------------------------------------------------------------------------
-- strg + k + c  auskommentieren
-- strg + k + u  einkommentieren

-- Korrekturen!
-- drop table Aufgabe_4_DB;
-- drop database Aufgabe_4_DB;
-- ------------------------------------------------------------------------------------------------------------
-- Roter Leitfaden
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 0 – Datenbank erstellen & verwenden
-- 
CREATE DATABASE Aufgabe_4_DB;
USE Aufgabe_4_DB;
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen (ohne Fremdschlüssel!)
-- 

-- Regel:
-- Tabellen, die nicht von anderen abhängen, kommen zuerst.

CREATE TABLE Geldinstitut (
    Geldinstitut_ID INT AUTO_INCREMENT PRIMARY KEY,
    Institutame VARCHAR(100),
    BIC VARCHAR(20)
);

create table Tarif (
	Tarif_ID int auto_increment primary key,
    Bezeichnung varchar(100),
    Grundgebuehr decimal(8, 2)
);
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln
-- 
CREATE TABLE Kunde (
    Kunde_ID INT AUTO_INCREMENT PRIMARY KEY,
    Vorname VARCHAR(100),
    Nachname varchar(100),
    Geldinstitut_ID INT,												-- Attribut FK von Geldinstitut Tabelle
    foreign key (Geldinstitut_ID) references Geldinstitut(Geldinstitut_ID)
);

CREATE TABLE Telefon (
    Telefon_ID INT AUTO_INCREMENT PRIMARY KEY,
    Rufnummer VARCHAR(20),
    Kunde_ID INT,														-- Attribut FK von Kunde Tabelle
    Tarif_ID INT,														-- Attribut FK von Tarif Tabelle
    FOREIGN KEY (Kunde_ID) REFERENCES Kunde(Kunde_ID),					-- damit sagt man Fremdschlüssel (Kunde_ID) wird referenziert aus Tabelle: Kunde(Kunde_ID) ist der Primärschlüssel in klammern
    FOREIGN KEY (Tarif_ID) REFERENCES Tarif(Tarif_ID)
);

CREATE TABLE Einzelverbindungsnachweis (
    EVN_ID INT AUTO_INCREMENT PRIMARY KEY,
    Telefon_ID INT,
    Datum DATETIME,
    Dauer INT,
    Kosten DECIMAL(6,2),
    FOREIGN KEY (Telefon_ID) REFERENCES Telefon(Telefon_ID)
);
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 3 – Daten für Basistabellen
-- Wichtig: Inserts immer in dieser Reihenfolge ausführen!

-- 🏦 Tabelle: Geldinstitut (10 Datensätze)
INSERT INTO Geldinstitut (Institutame, BIC) VALUES
('Sparkasse Köln', 'COLSDE33'),
('Deutsche Bank', 'DEUTDEFF'),
('Commerzbank', 'COBADEFF'),
('Volksbank Rhein', 'GENODED1'),
('ING', 'INGDDEFF'),
('DKB', 'BYLADEM1'),
('Postbank', 'PBNKDEFF'),
('HypoVereinsbank', 'HYVEDEMM'),
('N26 Bank', 'NTSBDEB1'),
('Santander', 'SCFBDE33');

-- 📦 Tabelle: Tarif (10 Datensätze)
INSERT INTO Tarif (Bezeichnung, Grundgebuehr) VALUES
('Basic', 9.99),
('Standard', 14.99),
('Premium', 24.99),
('Business', 39.99),
('Family', 29.99),
('Student', 7.99),
('Unlimited', 49.99),
('Prepaid', 0.00),
('Senior', 5.99),
('Data Only', 12.99);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 – Tabellen mit Fremdschlüsseln
-- 👤 Tabelle: Kunde (10 Datensätze)
INSERT INTO Kunde (Vorname, Nachname, Geldinstitut_ID) VALUES
('Max', 'Müller', 1),
('Anna', 'Schmidt', 2),
('Tim', 'Becker', 3),
('Laura', 'Fischer', 4),
('Jonas', 'Weber', 5),
('Sarah', 'Meyer', 6),
('Daniel', 'Wagner', 7),
('Julia', 'Koch', 8),
('Kevin', 'Richter', 9),
('Lisa', 'Bauer', 10);

-- 📱 Tabelle: Telefon (10 Datensätze)
INSERT INTO Telefon (Rufnummer, Kunde_ID, Tarif_ID) VALUES
('01701234501', 1, 1),
('01701234502', 2, 2),
('01701234503', 3, 3),
('01701234504', 4, 4),
('01701234505', 5, 5),
('01701234506', 6, 6),
('01701234507', 7, 7),
('01701234508', 8, 8),
('01701234509', 9, 9),
('01701234510', 10, 10);

-- 📞 Tabelle: Einzelverbindungsnachweis (10 Datensätze)
INSERT INTO Einzelverbindungsnachweis (Telefon_ID, Datum, Dauer, Kosten) VALUES
(1, '2025-01-01 10:15:00', 120, 0.49),
(2, '2025-01-02 11:30:00', 300, 0.99),
(3, '2025-01-03 09:45:00', 60, 0.19),
(4, '2025-01-04 14:20:00', 180, 0.59),
(5, '2025-01-05 16:10:00', 240, 0.79),
(6, '2025-01-06 18:55:00', 90, 0.29),
(7, '2025-01-07 08:05:00', 600, 1.99),
(8, '2025-01-08 12:40:00', 200, 0.69),
(9, '2025-01-09 20:15:00', 150, 0.49),
(10, '2025-01-10 22:00:00', 360, 1.29);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 5 – Kontrolle (Pflicht!)
-- Abfrage
select * from Geldinstitut;
select * from Tarif;
select * from Kunde;
select * from Telefon;
select * from Einzelverbindungsnachweis;
-- ------------------------------------------------------------------------------------------------------------