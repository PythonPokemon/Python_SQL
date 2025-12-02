# 🧠 Aufgabe 3: For-Schleife mit continue
# Gib Zahlen von 1 bis 5 aus, überspringe aber die 3.

# Index        0  1  2  3  4
zahlenListe = [1, 2, 3, 4, 5]   # Zahlen in einer Liste

for einzelneZahl in zahlenListe:
    if einzelneZahl == 3:
        continue
    print(einzelneZahl)
