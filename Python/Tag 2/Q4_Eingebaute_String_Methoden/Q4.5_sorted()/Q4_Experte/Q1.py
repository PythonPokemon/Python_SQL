"""
🔴 Experten-Aufgabe
Wörter nach Länge sortieren

🧩 Lernziel: .sorted(key=...) ermöglicht benutzerdefinierte Sortierlogik, 
    - z. B. nach Länge, Alphabet oder individuellen Regeln.
"""

woerter = ["Python", "ist", "super", "zu", "lernen"]
nach_laenge = sorted(woerter, key=len)      # Sortiert nach der Wortlänge
print("Original:", woerter)
print("Nach Länge sortiert:", nach_laenge)
