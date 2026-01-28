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




-- ------------------------------------------------------------------------------------------------------------ 🔴 Schritt 4 – Kontrolle (Pflicht!)
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



