"""
🔴 Experten Aufgabe: Erstelle eine Liste der Namen der Personen, deren Durchschnittsnote < 2,5 ist.

🧩 Lernziel:

Verschachtelte Dictionaries nutzen.
    - Durchschnittsberechnung + Filterbedingung in einer List Comprehension.
    - Komplexe Datenstrukturen elegant bearbeiten.
"""

personen = [
    {"name": "Anna", "alter": 17, "noten": {"Mathe": 2, "Deutsch": 1}},
    {"name": "Ben", "alter": 21, "noten": {"Mathe": 3, "Deutsch": 2}},
    {"name": "Clara", "alter": 19, "noten": {"Mathe": 1, "Deutsch": 3}}
]

# Lösung
beste_personen = [
    person["name"] 
    for person in personen 
    if sum(person["noten"].values()) / len(person["noten"]) < 2.5
]
print(beste_personen)
