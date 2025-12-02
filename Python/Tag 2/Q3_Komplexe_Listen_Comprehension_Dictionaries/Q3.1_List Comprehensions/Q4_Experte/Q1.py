"""
🔴 Experten-Aufgabe
Paare aus zwei Listen bilden (ohne gleiche Werte)

🧩 Lernziel: Verschachtelte List Comprehension (mehrere for) und Bedingung kombinieren; 
Reihenfolge und Logik verstehen.
"""

zahlen = [1, 2, 3]
paare = [(i, j) for i in zahlen for j in zahlen if i != j]
print(paare)  
# Ausgabe: [(1, 2), (1, 3), (2, 1), (2, 3), (3, 1), (3, 2)]
