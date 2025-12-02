"""
Thema: Zuweisungsoperatoren (Compound Assignment Operators)
Ziel: Verständnis, wie Werte in Variablen verändert werden können.
Operatoren: +=, -=, *=, /=, //=, %=, **=

💡 Lernlogik in den Aufgaben:

Aufgabe 3: Mehrere Variablen in Kombination - zeigt, dass Operatoren nicht nur mit Konstanten funktionieren.

"""


# --- Aufgabe 3 (mittel) -------------------------------------
# Zuweisungsoperatoren in einer Berechnung mit mehreren Variablen
print("Aufgabe 3:")
a = 4
b = 2
a *= b        # a = 8
b += a        # b = 10
a //= b       # a = 0
print("a:", a, "b:", b)
print()
