"""
🟠 Schwere Aufgabe: Berechne die BMI-Werte (BMI = Gewicht / Alter² * 100) nur für Personen über 18 Jahre.

🧩 Lernziel:
    - Komplexe Berechnungen auf Dictionary-Werten durchführen.
    - Filter + mathematische Operationen in einer List Comprehension kombinieren.
"""

personen = [
    {"name": "Anna", "alter": 17, "gewicht": 55},
    {"name": "Ben", "alter": 21, "gewicht": 75},
    {"name": "Clara", "alter": 19, "gewicht": 60}
]

# Lösung
bmi_liste = [person["gewicht"] / (person["alter"]**2) * 100 for person in personen if person["alter"] > 18]
print(bmi_liste)
