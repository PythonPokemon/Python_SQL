"""
🟠 SCHWERE AUFGABE

Erstelle ein einfaches Muster (Pyramide).

🧠 Lernziel:
    - Steuerung der inneren Schleife durch äußere Schleife
    - Verständnis für Abhängigkeiten zwischen Schleifen
"""

# Aufgabe: Erzeuge folgendes Muster mit Sternen:
# *
# **
# ***
# ****

hoehe = 4

for i in range(1, hoehe + 1):      # Anzahl der Zeilen
    for j in range(i):             # Anzahl der Sterne pro Zeile
        print("*", end="")
    print()                        # Neue Zeile
