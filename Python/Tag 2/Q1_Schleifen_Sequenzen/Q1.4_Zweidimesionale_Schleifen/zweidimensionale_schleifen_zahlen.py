"""
Von oben nach unten: Zeilenindex → äußere Schleife (<i>) → Regale
Von links nach rechts: Spaltenindex → innere Schleife (<j>) → Fächer

|   Zeile <i> (Regal)   |   Spalte <j> / Fach 0  |   Spalte <j> / Fach 1   |
|-----------------------|------------------------|-------------------------|
|   [0] (= 1. Regal)    |       1 [0][0]         |         2 [0][1]        |
|-----------------------|------------------------|-------------------------|
|   [1] (= 2. Regal)    |       3 [1][0]         |         4 [1][1]        |
|-----------------------|------------------------|-------------------------|
"""

# Regal mit Zahlen
zahlen = [
    [1, 2],   # Regal 0
    [3, 4]    # Regal 1
]

for i in range(len(zahlen)):        # Äußere Schleife → Regale
    for j in range(len(zahlen[i])): # Innere Schleife → Fächer
        print("Regal", i, "Fach", j, "befindet sich Zahl:", zahlen[i][j])
