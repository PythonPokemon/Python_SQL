"""
🟡 MITTLERE AUFGABE
Erstelle eine Multiplikationstabelle (1–5).

🧠 Lernziel:
Verwendung von range() in Schleifen
Ausgabe in tabellarischer Form
"""

# Aufgabe: Gib eine einfache Multiplikationstabelle von 1 bis 5 aus.

for i in range(1, 6):       # Äußere Schleife für Zeilen
    for j in range(1, 6):   # Innere Schleife für Spalten
        print(i * j, end="\t")   # Ergebnis mit Tab-Abstand
    print()   # Neue Zeile nach jeder Zeile
