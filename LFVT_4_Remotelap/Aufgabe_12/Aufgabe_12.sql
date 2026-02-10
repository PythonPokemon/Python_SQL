-- Achtung abhängikeiten bei der Tabellenerstellung beachten!!!
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 0 – Datenbank erstellen & verwenden
create database Aufgabe_12_DB;
use Aufgabe_12_DB;

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen (ohne Fremdschlüssel!)
create table Teilnehmer (
	Teilnehmer_ID int auto_increment primary key,
    Vorname varchar(10),
    Nachname varchar(10),
    E_mail varchar(10)
);

create table Prüfungsmodul (
	Prüfungsmodul_ID int auto_increment primary key,
    Bezeichnung varchar(10)
);

create table Ort (
	Ort_ID int auto_increment primary key,
    PLZ varchar(10)
);


-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln
create table Mitarbeiter (
	Mitarbeiter_ID int auto_increment primary key,
    Ort_ID int,				-- FK
    Vorname varchar(10),
    Nachname varchar(10),
    Strasse varchar(10),
    Hausnummer varchar(10),
    
    foreign key (Ort_ID) references Ort(Ort_ID)
);

create table Standort (
	Standort_ID int auto_increment primary key,
    Ort_ID int,				-- FK
    Mitarbeiter_ID int,		-- FK
    Bezeichnung varchar(10),
    Anzahl_PC_Raume int,
    Strasse varchar(10),
    Hausnummer varchar(10),
    
    foreign key (Ort_ID) references Ort(Ort_ID),
    foreign key (Mitarbeiter_ID) references Mitarbeiter(Mitarbeiter_ID)
);

create table Prüfung (
	Prüfung_ID int auto_increment primary key,
    Mitarbeiter_ID int,		-- FK
    Standort_ID int,		-- FK
    Datum date,
    Gebuehr decimal(8,2),
    
    foreign key (Mitarbeiter_ID) references Mitarbeiter(Mitarbeiter_ID),
    foreign key (Standort_ID) references Standort(Standort_ID)
);

create table Anmeldung (
	Anmeldung_ID int auto_increment primary key,
    Teilnehmer_ID int,		-- FK
    Prüfung_ID int,			-- FK
    Anmeldedatum date,
    
    foreign key (Teilnehmer_ID) references Teilnehmer(Teilnehmer_ID),
    foreign key (Prüfung_ID) references Prüfung(Prüfung_ID)
);

create table Zertifikat (
	Zertifikat_ID int auto_increment primary key,
    Prüfung_ID int,			-- FK
    Bezeichnung varchar(10),
    
    foreign key (Prüfung_ID) references Prüfung(Prüfung_ID)
);



-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 3 – (Kreuztabelle m:n)
create table Prüfung_Prüfungsmodule (
	Prüfung_ID int,			-- FK
    Prüfungsmodul_ID int,	-- FK
    
    primary key(Prüfung_ID, Prüfungsmodul_ID),
    
    foreign key (Prüfung_ID) references Prüfung(Prüfung_ID),
    foreign key (Prüfungsmodul_ID) references Prüfungsmodul(Prüfungsmodul_ID)
);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 – Daten einfügen (je 10 Datensätze)
-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 1 – Basistabellen
-- Teilnehmer
INSERT INTO Teilnehmer (Vorname, Nachname, E_mail) VALUES
('Max','Maier','m1@mail'),
('Anna','Schulz','m2@mail'),
('Tim','Beck','m3@mail'),
('Lisa','Wolf','m4@mail'),
('Paul','Koch','m5@mail'),
('Lena','Berg','m6@mail'),
('Tom','Lang','m7@mail'),
('Eva','Fuchs','m8@mail'),
('Jan','Horn','m9@mail'),
('Mia','Klein','m10@mail');

-- Prüfungsmodul
INSERT INTO Prüfungsmodul (Bezeichnung) VALUES
('SQL'),
('Java'),
('Netz'),
('Linux'),
('Cloud'),
('Python'),
('ITSec'),
('Web'),
('KI'),
('Projekt');

-- Ort
INSERT INTO Ort (PLZ) VALUES
('10115'),
('10243'),
('20095'),
('30159'),
('40213'),
('50667'),
('60311'),
('70173'),
('80331'),
('90402');

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 2 – Tabellen mit Fremdschlüsseln
-- Mitarbeiter
INSERT INTO Mitarbeiter (Ort_ID, Vorname, Nachname, Strasse, Hausnummer) VALUES
(1,'Max','Must','Main','1'),
(2,'Anna','Meier','Ring','2'),
(3,'Tom','Schul','Weg','3'),
(4,'Eva','Koch','Park','4'),
(5,'Jan','Wolf','Berg','5'),
(6,'Lena','Lang','Tal','6'),
(7,'Paul','Horn','See','7'),
(8,'Lisa','Fuchs','Ufer','8'),
(9,'Tim','Beck','Feld','9'),
(10,'Mia','Klein','Hof','10');

-- Standort
INSERT INTO Standort (Ort_ID, Mitarbeiter_ID, Bezeichnung, Anzahl_PC_Raume, Strasse, Hausnummer) VALUES
(1,1,'Berlin',5,'Main','1'),
(2,2,'Ost',4,'Ring','2'),
(3,3,'Nord',3,'Weg','3'),
(4,4,'West',6,'Park','4'),
(5,5,'Sued',2,'Berg','5'),
(6,6,'Z1',4,'Tal','6'),
(7,7,'Z2',3,'See','7'),
(8,8,'Z3',5,'Ufer','8'),
(9,9,'Z4',2,'Feld','9'),
(10,10,'Z5',6,'Hof','10');

-- Prüfung
INSERT INTO Prüfung (Mitarbeiter_ID, Standort_ID, Datum, Gebuehr) VALUES
(1,1,'2025-01-10',199.99),
(2,2,'2025-01-11',189.99),
(3,3,'2025-01-12',179.99),
(4,4,'2025-01-13',169.99),
(5,5,'2025-01-14',159.99),
(6,6,'2025-01-15',149.99),
(7,7,'2025-01-16',139.99),
(8,8,'2025-01-17',129.99),
(9,9,'2025-01-18',119.99),
(10,10,'2025-01-19',109.99);

--
INSERT INTO Anmeldung (Teilnehmer_ID, Prüfung_ID, Anmeldedatum) VALUES
(1,1,'2024-12-01'),
(2,2,'2024-12-02'),
(3,3,'2024-12-03'),
(4,4,'2024-12-04'),
(5,5,'2024-12-05'),
(6,6,'2024-12-06'),
(7,7,'2024-12-07'),
(8,8,'2024-12-08'),
(9,9,'2024-12-09'),
(10,10,'2024-12-10');

-- Zertifikat
INSERT INTO Zertifikat (Prüfung_ID, Bezeichnung) VALUES
(1,'SQL'),
(2,'Java'),
(3,'Netz'),
(4,'Linux'),
(5,'Cloud'),
(6,'Python'),
(7,'ITSec'),
(8,'Web'),
(9,'KI'),
(10,'Projekt');

-- Prüfung_Prüfungsmodule
INSERT INTO Prüfung_Prüfungsmodule (Prüfung_ID, Prüfungsmodul_ID) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 5 – Kontrolle (Pflicht!)
-- Abfrage
select * from Teilnehmer;
select * from Prüfungsmodul;
select * from Ort;
select * from Standort;
select * from Mitarbeiter;
select * from Prüfung;
select * from Anmeldung;
select * from Zertifikat;
select * from Prüfung_Prüfungsmodule;
select * from Teilnehmer, Prüfungsmodul, Ort, Standort, Mitarbeiter, Prüfung, Anmeldung, Zertifikat, Prüfung_Prüfungsmodule;
-- ------------------------------------------------------------------------------------------------------------










