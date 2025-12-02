"""
🟢 Einfache Aufgabe
Prüfe, ob eine Benutzereingabe nur Buchstaben enthält

🧩 Lernziel: Verstehen, wie .isalpha() funktioniert und wie man eine einfache Bedingung prüft.
"""

wort = input("Gib ein Wort ein: ")

if wort.isalpha():
    print("Das Wort besteht nur aus Buchstaben.")
else:
    print("Das Wort enthält auch andere Zeichen.")
