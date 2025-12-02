"""
🟠 Schwere Aufgabe
Zweites Vorkommen eines Wortes finden

🧩 Lernziel: Mit einem zweiten Argument (start) kann man die Suche ab einer bestimmten Position fortsetzen.
"""

text = "Python ist toll, Python ist stark"
erste_position = text.find("Python")               # Erstes Auftreten
zweite_position = text.find("Python", erste_position + 1)  # Suche ab dem nächsten Index
print("Erstes Python:", erste_position)
print("Zweites Python:", zweite_position)
