"""
🟠 Schwere Aufgabe
Mehrere Sätze zu einem Text zusammensetzen

🧩 Lernziel: .join() auf komplexere Listen anwenden und kreative Trennzeichen nutzen.
"""

saetze = [
    "Python macht Spaß",
    "Man kann viel damit lernen",
    "Übung ist wichtig"
]

text = " | ".join(saetze)          # Trennt Sätze mit einem senkrechten Strich
print(text)
# Ausgabe: Python macht Spaß | Man kann viel damit lernen | Übung ist wichtig
