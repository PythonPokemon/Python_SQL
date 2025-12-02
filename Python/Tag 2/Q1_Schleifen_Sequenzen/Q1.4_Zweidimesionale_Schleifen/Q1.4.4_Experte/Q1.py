"""
🔴 EXPERTENAUFGABE – Maximum in einer 2D-Liste finden

🧠 Lernziel:
    - Bedingte Prüfung innerhalb verschachtelter Schleifen
    - Arbeiten mit Indexpositionen in 2D-Strukturen
"""

# Aufgabe: Finde den größten Wert und seine Position in einer 2D-Liste.

matrix = [
    [7, 2, 9],
    [4, 8, 1],
    [3, 5, 6]
]

max_wert = matrix[0][0]
pos_i = 0
pos_j = 0

for i in range(len(matrix)):
    for j in range(len(matrix[i])):
        if matrix[i][j] > max_wert:
            max_wert = matrix[i][j]
            pos_i = i
            pos_j = j

print(f"Größter Wert: {max_wert} an Position [{pos_i}][{pos_j}]")
