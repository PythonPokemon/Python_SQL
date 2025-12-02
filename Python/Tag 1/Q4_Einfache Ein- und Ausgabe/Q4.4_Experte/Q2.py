# Aufgabe 11: Zähle Vokale in einem Wort

wort = input("Gib ein Wort ein: ")
vokale = "aeiou"
anzahl = 0

for buchstabe in wort:
    if buchstabe.lower() in vokale:
        anzahl += 1
print("Das Wort enthält", anzahl, "Vokale.")
