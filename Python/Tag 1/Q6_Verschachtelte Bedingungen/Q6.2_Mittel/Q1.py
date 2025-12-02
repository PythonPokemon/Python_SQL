"""
🟡 MITTLERE AUFGABEN – Verschachtelte Prüfungen mit mehreren Ebenen
"""

# Beispiel 4: Prüfungsergebnis mit Notenstufen
punkte = int(input("Gib deine Punktzahl ein: "))

if punkte >= 50:
    print("Bestanden 🎉")

    if punkte >= 90:
        print("Note 1 (sehr gut)")
    elif punkte >= 75:
        print("Note 2 (gut)")
    elif punkte >= 60:
        print("Note 3 (befriedigend)")
    else:
        print("Note 4 (ausreichend)")
else:
    print("Nicht bestanden ❌")
