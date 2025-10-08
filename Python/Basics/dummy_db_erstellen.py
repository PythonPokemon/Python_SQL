import sqlite3

# Verbindung (erstellt Datei "Dummy.db" im aktuellen Ordner, sogar dann, falls nicht vorhanden)
connection = sqlite3.connect("Dummy.db")

# Cursor zum Ausführen von SQL-Befehlen
cursor = connection.cursor()

# Tabelle anlegen (falls noch nicht da)
cursor.execute("CREATE TABLE IF NOT EXISTS Person (id INTEGER PRIMARY KEY, vorname TEXT, nachname TEXT);")

# Beispiel-Datensatz einfügen
cursor.execute("INSERT INTO Person (vorname, nachname) VALUES ('Max', 'Mustermann');")

# Änderungen speichern und Verbindung schließen
connection.commit()
connection.close()
