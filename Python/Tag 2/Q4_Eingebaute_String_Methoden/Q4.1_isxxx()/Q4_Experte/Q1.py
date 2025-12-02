"""
🔴 Experten-Aufgabe
Benutzerwörter zählen – nur wenn sie alphabetisch sind

🧩 Lernziel: Kombination aus .split(), .isalpha() und Generatorausdruck für zählende Prüfungen.
"""

eingabe = input("Gib mehrere Wörter ein (mit Leerzeichen getrennt): ")

# Wörter aufteilen
woerter = eingabe.split()

# Nur alphabetische Wörter zählen
anzahl = sum(1 for wort in woerter if wort.isalpha())

print("Anzahl gültiger Wörter:", anzahl)
