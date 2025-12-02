"""
🟢 Einfache Aufgabe: Gib die ASCII-Codes für die Buchstaben "A", "B" und "C" aus.

🧩 Lernziel: Grundverständnis von ASCII und `ord()` / `chr()`-Funktionen üben.

✅ Erklärung:
    - ord() gibt den Code Point eines Zeichens zurück.
    - ASCII ist ein Teil von Unicode (0–127).
"""


buchstaben = ["A", "B", "C"]

for buchstabe in buchstaben:
    print(buchstabe, "->", ord(buchstabe))
