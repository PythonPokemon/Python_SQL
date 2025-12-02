"""
🟠 SCHWERE AUFGABE – Durchlaufen und Vergleichen von Tupeln

🧩 Lernziel:
    - Vergleichsoperatoren (==, !=) bei unveränderlichen Datentypen
    - Verständnis für Positionsabhängigkeit in Tupeln
"""

# 🧠 Aufgabe 3: Zwei Tupel vergleichen
# Prüfe, ob beide Tupel gleich sind.

tupel1 = (1, 2, 3)
tupel2 = (1, 2, 3)
tupel3 = (3, 2, 1)

print(tupel1 == tupel2)  # True  -> gleiche Werte, gleiche Reihenfolge
print(tupel1 == tupel3)  # False -> gleiche Werte, aber andere Reihenfolge
