"""
🟡 Mittlere Aufgabe
Berechne die Summe aller Zahlen von 1 bis 100.

👉 Lernziel: Variable innerhalb der Schleife verändern, kumulative Berechnung.
"""

# Aufgabe: Berechne die Summe von 1 bis 100

zahl = 1
summe = 0

while zahl <= 100:
    summe += zahl
    zahl += 1

print("Die Summe ist:", summe)
