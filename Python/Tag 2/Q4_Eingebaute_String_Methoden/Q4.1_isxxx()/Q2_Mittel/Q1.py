"""
🟡 Mittlere Aufgabe
Mehrere Wörter prüfen und nur gültige anzeigen

🧩 Lernziel: .isalpha() in einer Schleife anwenden, um mehrere Strings zu überprüfen.
"""

woerter = ["Hallo", "Welt", "123", "Python3", "Code"]

for wort in woerter:
    if wort.isalpha():
        print(wort, "→ nur Buchstaben")
    else:
        print(wort, "→ enthält andere Zeichen")
