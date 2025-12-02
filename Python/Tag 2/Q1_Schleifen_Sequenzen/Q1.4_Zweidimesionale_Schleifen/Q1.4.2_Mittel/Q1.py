"""
🟡 MITTLERE AUFGABE – Zweidimensionale Ausgabe als Tabelle

🧠 Lernziel:
    - Strukturierte Ausgabe (ähnlich Tabellen in PCEP-Aufgaben)
    - Steuerung der inneren Schleife mit end="\t"
"""

# Aufgabe: Gib eine 3x3-Matrix als saubere Tabelle aus.

matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for i in range(len(matrix)):           # Zeilen
    for j in range(len(matrix[i])):    # Spalten
        print(matrix[i][j], end="\t")  # Tab für Abstand
    print()                            # Neue Zeile nach jeder Zeile
