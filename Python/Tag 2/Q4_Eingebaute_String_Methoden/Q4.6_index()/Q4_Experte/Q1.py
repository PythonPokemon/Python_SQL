"""
🔴 Experten-Aufgabe
Umgang mit Fehlern (ValueError)

🧩 Lernziel: .index() löst einen ValueError aus, wenn das Element nicht existiert —
    - dies kann mit try/except abgefangen werden, um Programmabbrüche zu vermeiden.
"""

wort = "Regenschauer"

try:
    position = wort.index("x")         # 'x' ist nicht im Wort → Fehler
    print("Index:", position)
except ValueError:
    print("🔴--->x<---🔴 Zeichen wurde nicht gefunden!")
