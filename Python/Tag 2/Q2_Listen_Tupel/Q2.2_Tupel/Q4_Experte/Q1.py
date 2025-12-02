"""
🔴 EXPERTENAUFGABE – Tupel in Schleifen und mit Index suchen

🧩 Lernziel:
    - Verwenden von Tupel-Methoden (index(), count())
    - Iteration über Tupel mittels for und range()
    - Verständnis, dass Tupel nicht veränderbar sind
"""

# 🧠 Aufgabe 4: Arbeite mit Tupel-Methoden
# Finde heraus, an welcher Position sich ein bestimmter Wert befindet.

zahlen = (4, 2, 3, 2, 1)

print(zahlen.index(3))  # 2 → Position (Index) des Werts 3
print(zahlen.count(2))  # 2 → Der Wert 2 kommt zweimal vor

# Durchlauf aller Werte mit Position
for i in range(len(zahlen)):
    print("Index:", i, "Wert:", zahlen[i])
