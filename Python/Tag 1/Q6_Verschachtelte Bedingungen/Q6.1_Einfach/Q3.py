# Beispiel 3: Rabatt prüfen
kunde = input("Bist du Premiumkunde? (ja/nein): ")

if kunde == "ja":
    print("Willkommen, Premiumkunde!")
    rabatt = 20
else:
    rabatt = 5

print("Dein Rabatt beträgt:", rabatt, "%")
