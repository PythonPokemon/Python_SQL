"""
🟢 Einfache Aufgabe
Neue sortierte Zahlenliste erstellen

🧩 Lernziel: .sorted() gibt eine neue Liste zurück, ohne die ursprüngliche zu verändern.
"""

zahlen = [5, 3, 9, 1]
sortierte_zahlen = sorted(zahlen)           # Erstellt eine neue sortierte Liste
print("Original:", zahlen)                  # Original bleibt unverändert
print("Sortiert:", sortierte_zahlen)        # Ausgabe: [1, 3, 5, 9]
