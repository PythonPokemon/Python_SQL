"""
🟡 Mittlere Aufgabe
String mit Kommas trennen

🧩 Lernziel: .split() mit einem benutzerdefinierten Trennzeichen (z. B. Komma) verwenden.
"""

namenText = "Anna,Ben,Chris"
namenListe = namenText.split(",")      # Trennt an jedem Komma
print(namenListe)                      # Ausgabe: ['Anna', 'Ben', 'Chris']
