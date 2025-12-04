#---------------------- Datei_schreiben_json.py
"""
Dieses Programm erstellt eine JSON-Datei.
JSON = JavaScript Object Notation (leichtes Datenformat)
"""

import json  # Modul zum Arbeiten mit JSON-Dateien

try:
    # Daten im Python-Format (Dictionary)
    daten = {
        "name": "Ali G",
        "alter": 21,
        "stadt": "Frankfurt"
    }

    # Datei im Schreibmodus öffnen
    json_datei = open("beispiel.json", "w", encoding="utf-8")

    # JSON in Datei schreiben (mit schöner Formatierung)
    json.dump(daten, json_datei, indent=4)

    json_datei.close()
    print("JSON-Datei erfolgreich erstellt!")

except IOError:
    print("Fehler beim Schreiben der JSON-Datei.")
