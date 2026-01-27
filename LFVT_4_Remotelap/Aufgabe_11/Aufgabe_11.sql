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








