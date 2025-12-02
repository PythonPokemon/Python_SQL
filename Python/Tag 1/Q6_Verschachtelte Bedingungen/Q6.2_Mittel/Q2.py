# Beispiel 5: Temperaturprüfung mit innerer Warnung
temperatur = float(input("Wie viel Grad hat es? "))

if temperatur >= 0:
    print("Kein Frost.")
    if temperatur > 30:
        print("Warnung: Es ist sehr heiß!")
else:
    print("Achtung! Frostgefahr ❄️")
