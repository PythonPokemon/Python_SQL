-- Achtung abhängikeiten bei der Tabellenerstellung beachten!!!
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 0 – Datenbank erstellen & verwenden
create database Aufgabe_13_DB;
use Aufgabe_13_DB;

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen (ohne Fremdschlüssel!)
create table Lieferant (
	Lieferant_ID int auto_increment primary key
);

create table Produkt (
	Produkt_ID int auto_increment primary key 
);

create table Vertreter (
	Vertreter_ID int auto_increment primary key
);

create table Provisionssatz (
	Provisionssatz_ID int auto_increment primary key
);


-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln
create table Produktgruppen (
	Produktgruppen_ID int auto_increment primary key,
    Produkt_ID int, 			-- FK
    
    foreign key (Produkt_ID) references Produkt(Produkt_ID)
);

create table Kunde (
	Kunde_ID int auto_increment primary key,
    Vertreter_ID int,			-- FK
    
    foreign key (Vertreter_ID) references Vertreter(Vertreter_ID)
);

create table Auftrag (
	Auftrag_ID int auto_increment primary key,
	Kunde_ID int,				-- FK
    Provisionssatz_ID int,		-- FK
    
    foreign key (Kunde_ID) references Kunde(Kunde_ID),
    foreign key (Provisionssatz_ID) references Provisionssatz(Provisionssatz_ID)
);


-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 3 – (Kreuztabelle m:n)
create table Lieferanten_Produkt (
	Lieferant_ID int,			-- FK
    Produkt_ID int,				-- FK
    
    primary key(Lieferant_ID, Produkt_ID),	-- PK == Kombination aus: FK & FK
    
    foreign key (Lieferant_ID) references Lieferant(Lieferant_ID),
    foreign key (Produkt_ID) references Produkt(Produkt_ID)
);

create table Produkt_Auftrag (
	Produkt_ID int,
    Auftrag_ID int,
    
    primary key(Produkt_ID, Auftrag_ID),	-- PK == Kombination aus: FK & FK
    
    foreign key (Produkt_ID) references Produkt(Produkt_ID),
    foreign key (Auftrag_ID) references Auftrag(Auftrag_ID)
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 weitere Spalten/Attribute einfügen 
-- ------------------------------------------------------------------------------------------------------------ 🔹 Schritt 4.1 – Basistabellen (3NF-sauber)
-- Lieferant
ALTER TABLE Lieferant
ADD COLUMN Firmenname VARCHAR(150),
ADD COLUMN Email VARCHAR(100),
ADD COLUMN Telefon VARCHAR(30);

-- Produkt
ALTER TABLE Produkt
ADD COLUMN Bezeichnung VARCHAR(100),
ADD COLUMN Preis DECIMAL(10,2),
ADD COLUMN Lagerbestand INT;

-- Vertreter
ALTER TABLE Vertreter
ADD COLUMN Vorname VARCHAR(100),
ADD COLUMN Nachname VARCHAR(100),
ADD COLUMN Email VARCHAR(100);

-- Provisionssatz
ALTER TABLE Provisionssatz
ADD COLUMN Bezeichnung VARCHAR(50),
ADD COLUMN Prozentsatz DECIMAL(5,2);

-- ------------------------------------------------------------------------------------------------------------ 🔹 Schritt 4.2 – Tabellen mit Fremdschlüsseln
-- Produktgruppen
ALTER TABLE Produktgruppen
ADD COLUMN Gruppenname VARCHAR(100),
ADD COLUMN Beschreibung VARCHAR(255);

-- Kunde
ALTER TABLE Kunde
ADD COLUMN Vorname VARCHAR(100),
ADD COLUMN Nachname VARCHAR(100),
ADD COLUMN Email VARCHAR(100),
ADD COLUMN Telefon VARCHAR(30);

-- Auftrag
ALTER TABLE Auftrag
ADD COLUMN Auftragsdatum DATE,
ADD COLUMN Gesamtbetrag DECIMAL(12,2),
ADD COLUMN Statusmeldung VARCHAR(30);

-- ------------------------------------------------------------------------------------------------------------ 🔹 Schritt 4.3 – Kreuztabellen (n:m)
-- Lieferanten_Produkt
ALTER TABLE Lieferanten_Produkt
ADD COLUMN Einkaufspreis DECIMAL(10,2),
ADD COLUMN Lieferzeit_Tage INT;

-- Produkt_Auftrag
ALTER TABLE Produkt_Auftrag
ADD COLUMN Menge INT,
ADD COLUMN Einzelpreis DECIMAL(10,2);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 5 – Daten einfügen (je 10 Datensätze)
-- Lieferant ok
INSERT INTO Lieferant (Firmenname, Email, Telefon) VALUES
('SolarTech GmbH', 'kontakt@solartech.de', '030-111111'),
('EcoPower AG', 'info@ecopower.de', '030-222222'),
('GreenSun GmbH', 'mail@greensun.de', '030-333333'),
('SunBuild KG', 'info@sunbuild.de', '030-444444'),
('VoltPlus GmbH', 'kontakt@voltplus.de', '030-555555'),
('SolarOne GmbH', 'info@solarone.de', '030-666666'),
('EnergiePro AG', 'kontakt@energiepro.de', '030-777777'),
('HelioTech GmbH', 'mail@heliotech.de', '030-888888'),
('Photonik Solutions', 'info@photonik.de', '030-999999'),
('SunEnergy AG', 'kontakt@sunenergy.de', '030-101010');

-- Produkt ok
INSERT INTO Produkt (Bezeichnung, Preis, Lagerbestand) VALUES
('Solarmodul A', 199.99, 100),
('Solarmodul B', 249.99, 80),
('Wechselrichter X', 499.99, 40),
('Wechselrichter Y', 599.99, 30),
('Montageset Standard', 79.99, 200),
('Montageset Premium', 129.99, 150),
('Batteriespeicher 5kWh', 1999.99, 20),
('Batteriespeicher 10kWh', 3499.99, 10),
('Energiemanager', 299.99, 60),
('Monitoring-System', 149.99, 90);

-- Vertreter ok
INSERT INTO Vertreter (Vorname, Nachname, Email) VALUES
('Max', 'Müller', 'max.mueller@firma.de'),
('Anna', 'Schmidt', 'anna.schmidt@firma.de'),
('Tom', 'Becker', 'tom.becker@firma.de'),
('Laura', 'Hoffmann', 'laura.hoffmann@firma.de'),
('Jan', 'Klein', 'jan.klein@firma.de'),
('Lisa', 'Wagner', 'lisa.wagner@firma.de'),
('Paul', 'Neumann', 'paul.neumann@firma.de'),
('Sarah', 'Krüger', 'sarah.krueger@firma.de'),
('Tim', 'Fischer', 'tim.fischer@firma.de'),
('Nina', 'Wolf', 'nina.wolf@firma.de');

-- Provisionssatz ok
INSERT INTO Provisionssatz (Bezeichnung, Prozentsatz) VALUES
('Standard', 5.00),
('Premium', 7.50),
('VIP', 10.00),
('Neukunde', 6.00),
('Großauftrag', 12.00),
('Aktionssatz', 8.00),
('Online', 4.00),
('Partner', 9.00),
('Langzeitkunde', 6.50),
('Sondervertrag', 11.00);

-- Produktgruppen ok
INSERT INTO Produktgruppen (Produkt_ID, Gruppenname, Beschreibung) VALUES
(1, 'Module', 'Solarmodule'),
(2, 'Module', 'Leistungsstarke Module'),
(3, 'Wechselrichter', 'Standard Wechselrichter'),
(4, 'Wechselrichter', 'Premium Wechselrichter'),
(5, 'Montage', 'Montagesysteme'),
(6, 'Montage', 'Premium Montagesysteme'),
(7, 'Speicher', 'Batteriespeicher'),
(8, 'Speicher', 'Großspeicher'),
(9, 'Steuerung', 'Energiemanagement'),
(10, 'Monitoring', 'Überwachungssysteme');

-- Kunde ok
INSERT INTO Kunde (Vertreter_ID, Vorname, Nachname, Email, Telefon) VALUES
(1, 'Max', 'Meier', 'max.meier@mail.de', '040-111111'),
(2, 'Anna', 'Schulz', 'anna.schulz@mail.de', '040-222222'),
(3, 'Tom', 'Becker', 'tom.becker@mail.de', '040-333333'),
(4, 'Laura', 'Hoffmann', 'laura.h@mail.de', '040-444444'),
(5, 'Jan', 'Klein', 'jan.klein@mail.de', '040-555555'),
(6, 'Lisa', 'Wagner', 'lisa.w@mail.de', '040-666666'),
(7, 'Paul', 'Neumann', 'paul.neumann@mail.de', '040-777777'),
(8, 'Sarah', 'Krüger', 'sarah.k@mail.de', '040-888888'),
(9, 'Tim', 'Fischer', 'tim.f@mail.de', '040-999999'),
(10,'Nina', 'Wolf', 'nina.wolf@mail.de', '040-101010');

-- Auftrag ok
INSERT INTO Auftrag (Kunde_ID, Provisionssatz_ID, Auftragsdatum, Gesamtbetrag, Statusmeldung) VALUES
(11, 1, '2024-01-10', 5000.00, 'offen'),
(12, 2, '2024-01-12', 7200.00, 'offen'),
(13, 3, '2024-01-15', 12000.00, 'bezahlt'),
(14, 4, '2024-01-18', 3400.00, 'offen'),
(15, 5, '2024-01-20', 25000.00, 'bezahlt'),
(16, 6, '2024-01-22', 4100.00, 'storniert'),
(17, 7, '2024-01-25', 2900.00, 'offen'),
(18, 8, '2024-01-27', 8300.00, 'bezahlt'),
(19, 9, '2024-01-29', 6700.00, 'offen'),
(20,10,'2024-02-01',15000.00,'bezahlt');

-- Lieferanten_Produkt ok
INSERT INTO Lieferanten_Produkt (Lieferant_ID, Produkt_ID, Einkaufspreis, Lieferzeit_Tage) VALUES
(1,1,150.00,5),
(2,2,180.00,6),
(3,3,420.00,7),
(4,4,500.00,8),
(5,5,60.00,3),
(6,6,90.00,4),
(7,7,1700.00,10),
(8,8,3000.00,12),
(9,9,220.00,5),
(10,10,100.00,4);

-- Produkt_Auftrag
INSERT INTO Produkt_Auftrag (Produkt_ID, Auftrag_ID, Menge, Einzelpreis) VALUES
(1,21,10,199.99),
(2,22,12,249.99),
(3,23,2,499.99),
(4,24,1,599.99),
(5,25,20,79.99),
(6,26,15,129.99),
(7,27,1,1999.99),
(8,28,1,3499.99),
(9,29,3,299.99),
(10,30,5,149.99);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 6 – Kontrolle (Pflicht!)
-- Abfrage
select * from Lieferant;
select * from Produkt;
select * from Vertreter;
select * from Provisionssatz;
select * from Produktgruppen;
select * from Kunde;
select * from Auftrag;
select * from Lieferanten_Produkt;
select * from Produkt_Auftrag;

select * from Lieferant, Produkt, Vertreter, Provisionssatz, Produktgruppen, Kunde, Auftrag, Lieferanten_Produkt, Produkt_Auftrag;
-- ------------------------------------------------------------------------------------------------------------
show tables;						-- zeigt alle tabellen
show columns from auftrag;			-- Spalten anzeigen in einer tabelle
SHOW CREATE TABLE Produkt;			-- CREATE-Statement sehen



