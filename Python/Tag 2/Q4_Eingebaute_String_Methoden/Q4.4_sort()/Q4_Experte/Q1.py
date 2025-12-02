"""
🔴 Experten-Aufgabe
Liste nach Länge der Wörter sortieren

🧩 Lernziel: .sort(key=...) erlaubt individuelle Sortierlogik, z. B. nach Wortlänge oder bestimmten Eigenschaften.
"""

woerter = ["Python", "ist", "toll", "zu", "lernen"]
woerter.sort(key=len)                # Sortiert nach der Länge jedes Wortes
print("Nach Wortlänge sortiert:", woerter)  # Ausgabe: ['zu', 'ist', 'toll', 'Python', 'lernen']
