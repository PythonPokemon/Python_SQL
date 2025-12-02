"""
🟡 MITTLERE AUFGABEN (verschachtelte Bedingungen / Bereichsprüfungen)

(Ziel: Komplexere Prüfungen und elif-Ketten verstehen)
"""

# Aufgabe 4: Notenbewertung
punkte = int(input("Wie viele Punkte hast du erreicht? "))

if punkte >= 90:
    print("Note: Sehr gut")
elif punkte >= 75:
    print("Note: Gut")
elif punkte >= 60:
    print("Note: Befriedigend")
elif punkte >= 50:
    print("Note: Ausreichend")
else:
    print("Nicht bestanden")
