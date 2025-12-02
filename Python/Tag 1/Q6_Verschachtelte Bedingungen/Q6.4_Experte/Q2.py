# Beispiel 11: Notenbewertung mit Bonusbedingung
punkte = int(input("Punkte eingeben: "))
bonus = input("Hast du Bonuspunkte erhalten? (ja/nein): ")

if punkte >= 50:
    print("Bestanden ✅")
    if bonus == "ja":
        punkte += 5
        print("Bonuspunkte hinzugefügt:", punkte)
        if punkte >= 90:
            print("Mit Auszeichnung bestanden! 🏅")
else:
    print("Nicht bestanden ❌")
