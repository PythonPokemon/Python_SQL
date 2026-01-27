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
    Kunde_ID INT,																		-- Attribut FK von Geldinstitut Tabelle
    foreign key (Kunde_ID) references Kunde(Kunde_ID)
);

CREATE TABLE Solaranlage (
    Solaranlage_ID INT AUTO_INCREMENT PRIMARY KEY,
    Kundenauftrag_ID INT,																-- Attribut FK von Geldinstitut Tabelle
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












