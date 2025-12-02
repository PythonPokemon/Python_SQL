"""
🟠 SCHWERE AUFGABE – Summe aller Zahlen in einer 2D-Liste berechnen

🧠 Lernziel:
    - Iteration über mehrdimensionale Strukturen
    - Verwendung von Akkumulatorvariablen
"""

# Aufgabe: Berechne die Summe aller Werte in einer 2D-Liste.

matrix = [
    [5, 3, 2],
    [1, 4, 7],
    [8, 6, 9]
]

summe = 0

for i in range(len(matrix)):           # Zeilen
    for j in range(len(matrix[i])):    # Spalten
        summe += matrix[i][j]          # Wert zur Summe addieren

print("Gesamtsumme aller Zahlen:", summe)
