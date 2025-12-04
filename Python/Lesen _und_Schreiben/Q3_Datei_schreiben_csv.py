#---------------------- Datei_schreiben_csv.py
# Strg + K + C = auskommentieren
# Strg + K + U = einkommentieren

"""
Dieses Programm fragt den Benutzer nach Daten und speichert diese in einer CSV-Datei.
CSV = Comma Separated Values (durch Kommas getrennte Werte)
Die Datei kann später z.B. in Excel geöffnet werden.
"""

try:
    # Benutzer nach Daten fragen
    name = input("Name eingeben: ")
    alter = input("Alter eingeben: ")
    stadt = input("Stadt eingeben: ")

    # Datei im Schreibmodus öffnen („w“ überschreibt bestehende Datei)
    csv_datei = open("personen.csv", "w")

    # Kopfzeile schreiben
    csv_datei.write("Name,Alter,Stadt\n")

    # Nutzereingaben als CSV-Zeile schreiben
    csv_datei.write(name + "," + alter + "," + stadt + "\n")

    csv_datei.close()
    print("CSV-Datei erfolgreich erstellt.")

except IOError:
    print("Fehler beim Schreiben in die CSV-Datei.")
