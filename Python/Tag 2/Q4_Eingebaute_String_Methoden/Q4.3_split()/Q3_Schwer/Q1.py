"""
🟠 Schwere Aufgabe
Mehrere Leerzeichen handhaben

🧩 Lernziel: Verstehen, dass .split() aufeinanderfolgende Leerzeichen automatisch zusammenfasst.
"""

text = "Python   ist   toll"
teile = text.split()                   # Automatisch mehrere Leerzeichen ignoriert
print(teile)                           # Ausgabe: ['Python', 'ist', 'toll']

