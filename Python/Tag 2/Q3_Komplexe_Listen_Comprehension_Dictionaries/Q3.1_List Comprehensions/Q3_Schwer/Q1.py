"""
🟠 Schwere Aufgabe
Wörter in Großbuchstaben umwandeln (nur lange Wörter)

🧩 Lernziel: Kombination aus Filter (if) und Transformation (Ausdruck) in einer List Comprehension.
"""

woerter = ["Apfel", "Ei", "Banane", "Pfirsich", "Tee"]
lange_woerter = [wort.upper() for wort in woerter if len(wort) > 4]
print(lange_woerter)  # Ausgabe: ['APFEL', 'BANANE', 'PFIRSICH']
