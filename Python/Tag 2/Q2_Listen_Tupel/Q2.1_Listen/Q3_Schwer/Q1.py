"""
🟠 SCHWERE AUFGABE – Durchlaufen und Auswerten einer Liste

🧩 Lernziel:
    - Iteration über Listen mit for
    - Vergleichslogik innerhalb der Schleife
"""

# 🧠 Aufgabe 3: Finde die längste Zeichenkette in der Liste.

woerter = ["Baum", "Auto", "Schmetterling", "Haus"]
laengstes_wort = woerter[0]  # Startwert

for wort in woerter:
    if len(wort) > len(laengstes_wort):
        laengstes_wort = wort

print("Das längste Wort ist:", laengstes_wort)
