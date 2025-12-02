"""
🟡 Mittlere Aufgabe: Wandle die Unicode-Zeichen ☺ (9786) und ♫ (9835) in ihre Codes um, und wieder zurück.

🧩 Lernziel: Mit Unicode arbeiten und `ord()` / `chr()` kombinieren.

✅ Erklärung:
    - chr() wandelt einen Code Point zurück in ein Zeichen.
    - Zeigt, dass Unicode auch nicht-ASCII-Zeichen unterstützt.
"""



zeichen = ["☺", "♫"]

for z in zeichen:
    code = ord(z)
    print(z, "-> Code:", code, "-> zurück:", chr(code))
