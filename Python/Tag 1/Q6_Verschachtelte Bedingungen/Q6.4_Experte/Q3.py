# Beispiel 12: Stromverbrauchsanalyse
verbrauch = float(input("Jahresverbrauch in kWh: "))
tarif = input("Tarif (Standard/Premium): ").lower()

if verbrauch > 4000:
    print("Hoher Stromverbrauch ⚠️")
    if tarif == "premium":
        print("Premiumtarif: Rabatt auf Mehrverbrauch!")
    else:
        print("Kein Rabatt im Standardtarif.")
else:
    print("Normale Nutzung ✅")
