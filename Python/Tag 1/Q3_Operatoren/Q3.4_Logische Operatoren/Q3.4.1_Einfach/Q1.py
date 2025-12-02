# logische_operatoren_aufgaben.py
"""
Thema: Logische Operatoren (and, or, not)
Ziel: Verständnis, wie Wahrheitswerte kombiniert und geprüft werden.
Operatoren: and (UND), or (ODER), not (NICHT)

💡 Lernaufbau der Aufgaben:

Aufgabe 1: Direkte logische Ausdrücke verstehen.
Aufgabe 2: Erste Kombination von Vergleichsoperatoren mit logischen Operatoren.

"""

# --- Aufgabe 1 (Basis) --------------------------------------
# Einfache logische Ausdrücke
print("Aufgabe 1:")
print(True and False)   # UND → False
print(True or False)    # ODER → True
print(not True)         # NICHT → False
print()

# --- Aufgabe 2 (leicht) -------------------------------------
# Mehrere Bedingungen kombinieren
print("Aufgabe 2:")
x = 10
y = 5
print(x > 0 and y > 0)   # True AND True → True | 5 ist größer 0 und 10 ist größer 0
print(x > 0 and y < 0)   # True AND False → False
print(x < 0 or y > 0)    # False OR True → True
print(not (x > y))       # NOT True → False
print()
