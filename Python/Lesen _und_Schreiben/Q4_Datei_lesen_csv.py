#---------------------- Datei_lesen_csv.py
"""
Dieses Programm liest die zuvor erstellte CSV-Datei (personen.csv)
und gibt jede Zeile sauber formatiert aus.
"""

try:
    # Datei im Lesemodus öffnen
    csv_datei = open("personen.csv", "r")

    # Jede Zeile der CSV-Datei einlesen
    for zeile in csv_datei:
        # Zeilenende entfernen
        zeile = zeile.strip()

        # Die Werte anhand des Kommas trennen → Liste entsteht
        werte = zeile.split(",")

        print("Gelesene Werte:", werte)

    csv_datei.close()

except IOError:
    print("Fehler beim Lesen der CSV-Datei.")
