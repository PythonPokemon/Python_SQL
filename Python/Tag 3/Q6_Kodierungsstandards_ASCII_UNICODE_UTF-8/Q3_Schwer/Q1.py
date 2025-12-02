"""
🟠 Schwere Aufgabe: Erstelle eine Liste von Buchstaben, deren Code größer als 100 ist, 
und zeige die Zeichen und ihre Codes.

🧩 Lernziel: Filterung und List Comprehensions mit Zeichenkodierung.

✅ Erklärung:
    - Kombination von List Comprehension + Bedingung + ord().
    - Praktisch, um z. B. Unicode-Zeichen über ASCII hinaus zu filtern.
"""

zeichen = ["A", "B", "C", "é", "☺", "Δ"]
zeichen_ue100 = [(z, ord(z)) for z in zeichen if ord(z) > 100]
print(zeichen_ue100)