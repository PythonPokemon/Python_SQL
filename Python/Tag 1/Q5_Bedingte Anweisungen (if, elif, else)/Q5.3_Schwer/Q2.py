# Aufgabe 8: Bonusberechnung
umsatz = float(input("Gib deinen Monatsumsatz in € ein: "))

if umsatz >= 10000:
    bonus = 500
elif umsatz >= 5000:
    bonus = 250
elif umsatz >= 1000:
    bonus = 100
else:
    bonus = 0

print("Dein Bonus beträgt:", bonus, "€")
