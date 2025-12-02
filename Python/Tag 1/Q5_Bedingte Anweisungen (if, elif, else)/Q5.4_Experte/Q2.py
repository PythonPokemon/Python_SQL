# Aufgabe 11: Versandkostenberechnung

bestellwert = float(input("Bestellwert in €: "))
kunde = input("Bist du Premiumkunde? (ja/nein): ")

if bestellwert >= 50 or kunde == "ja":
    print("Versand kostenlos ✅")
else:
    print("Versandkosten: 4,99 €")
