"""
🟢 EINFACHE AUFGABE

Gib alle Kombinationen zweier Zahlen aus – einfache Verschachtelung.
🧠 Lernziel: Verständnis der Funktionsweise verschachtelter Schleifen
"""

# Aufgabe: Gib alle Kombinationen von 1–3 und A–C aus.

zahlen = [1, 2, 3]
buchstaben = ["A", "B", "C"]

for zahl in zahlen:
    for buchstabe in buchstaben:
        print(zahl, buchstabe)
