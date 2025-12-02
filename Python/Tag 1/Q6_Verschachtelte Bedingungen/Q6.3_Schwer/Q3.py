# Beispiel 9: Fahrzeugtyp und Umweltplakette
typ = input("Fahrzeugtyp (Benzin/Diesel/E-Auto): ").lower()

if typ == "e-auto":
    print("E-Auto erkannt ⚡ – keine Umweltplakette nötig.")
else:
    plakette = input("Hast du eine grüne Umweltplakette? (ja/nein): ")
    if plakette == "ja":
        print("Zufahrt erlaubt ✅")
    else:
        print("Zufahrt verboten ❌")
