# Beispiel 8: Versandkosten mit Premiumprüfung
betrag = float(input("Gib den Bestellwert ein (€): "))
premium = input("Premiumkunde? (ja/nein): ")

if betrag >= 50:
    print("Versand kostenlos ✅")
else:
    print("Versandkosten: 4,99 €")
    if premium == "ja":
        print("Aber Premiumkunden erhalten kostenlosen Versand.")
