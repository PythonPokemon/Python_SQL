# Aufgabe 9: Kleinste Zahl finden
# Finde die kleinste Zahl aus einer Liste.

zahlen = [4, 7, 2, 9, 1]
kleinste = zahlen[0]

for z in zahlen:
    if z < kleinste:
        kleinste = z
print("Die kleinste Zahl ist:", kleinste)
