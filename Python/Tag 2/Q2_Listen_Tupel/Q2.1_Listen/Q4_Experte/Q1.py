"""
🔴 EXPERTENAUFGABE – Listen kombinieren und filtern

🧩 Lernziel:
    - Listen zusammenführen (+)
    - Bedingte Filterung mit if
    - Dynamische Listen-Erstellung
"""

# 🧠 Aufgabe 4: Filtere Zahlen aus zwei Listen, die größer als 5 sind.

listeA = [1, 6, 3, 8]
listeB = [5, 9, 2, 7]

kombiniert = listeA + listeB             # Beide Listen zusammenfügen
gefiltert = []                           # Neue leere Liste

for zahl in kombiniert:
    if zahl > 5:                         # Nur Zahlen > 5 übernehmen
        gefiltert.append(zahl)

print("Gefilterte Zahlen:", gefiltert)
