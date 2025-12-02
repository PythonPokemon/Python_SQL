""" 
7. Eingabe- & Ausgabe-Terminologie verstehen

📌 Was ist Input/Output?
Input: Der Benutzer gibt etwas ein (Tastatur, Datei, etc.)
Output: Das Programm gibt etwas aus (Bildschirm, Datei)
"""
# 💡 Text aus Datei lesen:
# Datei im Lesemodus öffnen ("r")
with open("ausgabe.txt", "r") as datei:
    inhalt = datei.read()
    print(inhalt)
