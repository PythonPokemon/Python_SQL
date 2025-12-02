"""
🟠 Schwere Aufgabe
Errate die geheime Zahl (Zufallszahl 1–10) mit while und break.

👉 Lernziel: while True, break, Eingaben auswerten, Bedingungen kombinieren.
"""

import random

# Aufgabe: Errate die geheime Zahl zwischen 1 und 10

geheimzahl = random.randint(1, 10)
versuch = 0

while True:
    eingabe = int(input("Rate eine Zahl zwischen 1 und 10: "))
    versuch += 1

    if eingabe == geheimzahl:
        print("Richtig! Du hast", versuch, "Versuche gebraucht.")
        break
    elif eingabe < geheimzahl:
        print("Zu niedrig!")
    else:
        print("Zu hoch!")
