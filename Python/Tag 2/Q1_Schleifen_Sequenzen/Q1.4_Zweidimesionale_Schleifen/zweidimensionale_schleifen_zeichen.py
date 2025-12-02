"""
Von oben nach unten: Zeilenindex → äußere Schleife (<i>) → Regale
Von links nach rechts: Spaltenindex → innere Schleife (<j>) → Fächer

|   Zeile <i> (Regal)   |   Spalte <j> / Fach 0  |   Spalte <j> / Fach 1   |
|-----------------------|------------------------|-------------------------|
|   [0] (= 1. Regal)    | Hund [0][0]            | Katze [0][1]            |
|-----------------------|------------------------|-------------------------|
|   [1] (= 2. Regal)    | Maus [1][0]            | Vogel [1][1]            |
|-----------------------|------------------------|-------------------------|
"""

tiere = [
    ["Hund", "Katze"],   
    ["Maus", "Vogel"]    
]

for i in range(len(tiere)):            # äußere Schleife → Regale
    for j in range(len(tiere[i])):     # innere Schleife → Fächer
        print(f"Regal {i}, Fach {j} → {tiere[i][j]}")
