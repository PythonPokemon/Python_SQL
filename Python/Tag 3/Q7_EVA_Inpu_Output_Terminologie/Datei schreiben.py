""" 
7. Eingabe- & Ausgabe-Terminologie verstehen

📌 Was ist Input/Output?
Input: Der Benutzer gibt etwas ein (Tastatur, Datei, etc.)

Output: Das Programm gibt etwas aus (Bildschirm, Datei)
"""
# 💡 Text in Datei schreiben:
# Datei im Schreibmodus öffnen ("w")
with open("ausgabe.txt", "w") as datei:
    datei.write("Hallo Datei!")

