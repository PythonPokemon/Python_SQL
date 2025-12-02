"""
🔴 Experten-Aufgabe
CSV-Zeile in Daten aufteilen

🧩 Lernziel: .split() für einfache Datenverarbeitung (CSV-Trennung) einsetzen und Listeninhalte weiterverwenden.
"""

csv_zeile = "Max;Mustermann;30;Informatiker"

daten = csv_zeile.split(";")           # Trennt an jedem Semikolon
print(daten)                           # Ausgabe: ['Max', 'Mustermann', '30', 'Informatiker']

# Zugriff auf einzelne Daten
vorname = daten[0]
beruf = daten[3]
print(vorname, "arbeitet als", beruf)
