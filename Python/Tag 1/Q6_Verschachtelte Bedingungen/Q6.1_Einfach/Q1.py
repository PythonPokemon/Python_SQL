"""
🟢 EINFACHE AUFGABEN – Verschachtelte Bedingungen verstehen
"""

# Beispiel 1: Prüfung mit Auszeichnung
punktzahl = int(input("Wie viele Punkte hast du? "))

if punktzahl >= 50:
    print("Bestanden ✅")

    if punktzahl >= 90:
        print("sogar mit Auszeichnung! 🏅")  # wird nur geprüft, wenn >= 50
else:
    print("Nicht bestanden ❌")
