# Aufgabe 12: Ampelsimulation

farbe = input("Welche Farbe zeigt die Ampel? ").lower()

if farbe == "grün":
    print("Du darfst gehen 🚶‍♂️")
elif farbe == "gelb":
    print("Warte, gleich geht’s los ⏳")
elif farbe == "rot":
    print("Stehen bleiben! 🚫")
else:
    print("Ungültige Eingabe ⚠️")
