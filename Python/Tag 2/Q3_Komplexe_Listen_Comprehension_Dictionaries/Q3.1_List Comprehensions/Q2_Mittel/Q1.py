"""
🟡 Mittlere Aufgabe
Nur gerade Zahlen herausfiltern

🧩 Lernziel: List Comprehension mit Bedingung (Filter) verwenden.
"""

zahlen = [1, 2, 3, 4, 5, 6, 7, 8, 9]
gerade_zahlen = [zahl for zahl in zahlen if zahl % 2 == 0]

print(gerade_zahlen)  # Ausgabe: [2, 4, 6, 8]
