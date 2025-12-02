# Aufgabe 5: Temperaturbewertung
temperatur = float(input("Wie viel Grad zeigt das Thermometer? "))

if temperatur > 30:
    print("Es ist heiß! ☀️")
elif temperatur >= 20:
    print("Angenehm warm 😊")
elif temperatur >= 10:
    print("Etwas kühl 🌤️")
else:
    print("Kalt 🥶")
