"""
🟠 Schwere Aufgabe
Liste filtern: Nur Wörter mit Buchstaben behalten

🧩 Lernziel: .isalpha() mit List Comprehension kombinieren, um ungültige Elemente herauszufiltern.
"""

texte = ["Apfel", "Banane22", "Kirsche", "123", "Obstsalat!"]
nur_buchstaben = [t for t in texte if t.isalpha()]

print("Gefilterte Liste:", nur_buchstaben)
# Ausgabe: ['Apfel', 'Kirsche']
