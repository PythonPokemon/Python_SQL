#---------------------- Datei_lesen_json.py
"""
Dieses Programm liest die zuvor erstellte JSON-Datei (beispiel.json)
und gibt die gespeicherten Daten aus.
"""

import json  # JSON-Modul zum Einlesen

try:
    # Datei im Lesemodus öffnen
    json_datei = open("beispiel.json", "r", encoding="utf-8")

    # JSON-Inhalt als Python-Dictionary einlesen
    daten = json.load(json_datei)

    json_datei.close()

    # Ausgabe der Daten
    print("📄 JSON-Daten:")
    print("Name :", daten["name"])
    print("Alter:", daten["alter"])
    print("Stadt:", daten["stadt"])

except IOError:
    print("Fehler beim Lesen der JSON-Datei.")

except KeyError:
    print("Fehler: Ein benötigter Schlüssel fehlt in der JSON-Datei.")
