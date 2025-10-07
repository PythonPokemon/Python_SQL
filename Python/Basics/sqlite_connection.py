import sqlite3
import os

# Pfad zur Datenbank im Unterordner "SQLite"
db_pfad = os.path.join("SQLite", "neueDB.db")

# Verbindung herstellen
verbindung = sqlite3.connect(db_pfad)
cursor = verbindung.cursor()

# SQL-Anweisung zum Erstellen der Tabelle "Person" und befüllen von Datensätzen
sql_anweisung = """
CREATE Table Person (
id int, 
vorname varchar(30),
nachname varchar(30)
);
"""

# SQL ausführen
cursor.execute(sql_anweisung)

# Änderungen speichern und Verbindung schließen
verbindung.commit()
verbindung.close()

print("Tabelle 'Person' wurde erfolgreich erstellt (falls nicht bereits vorhanden).")
