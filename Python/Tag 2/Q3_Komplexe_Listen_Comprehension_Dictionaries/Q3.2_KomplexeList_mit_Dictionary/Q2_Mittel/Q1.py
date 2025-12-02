"""
🟡 Mittlere Aufgabe: Erstelle eine neue Liste mit den Namen aller volljährigen Personen.

🧩 Lernziel:
    - List Comprehensions mit Bedingungen anwenden.
    - Filterung von Dictionaries innerhalb einer Liste verstehen.
"""

personen = [
    {"name": "Anna", "alter": 17, "volljährig": False},
    {"name": "Ben", "alter": 21, "volljährig": True},
    {"name": "Clara", "alter": 19, "volljährig": True}
]

# Lösung
volljaehrige_namen = [person["name"] for person in personen if person["volljährig"]]
print(volljaehrige_namen)
