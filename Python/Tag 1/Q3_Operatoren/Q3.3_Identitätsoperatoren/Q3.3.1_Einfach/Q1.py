"""
Thema: Identitätsoperatoren (is / is not)
Ziel: Verständnis, wann zwei Variablen auf dasselbe Objekt im Speicher zeigen.
Hinweis: Identität ≠ Gleichheit (is prüft Speicheradresse, == prüft Wert)
-------------------------------------------------------------------------------
💡 Lernfortschritt in der Datei:

Aufgabe 1: Einfachster Fall – zwei Variablen zeigen auf dasselbe Objekt.
Aufgabe 2: Vergleich von is und ==.
"""

# --- Aufgabe 1 (Basis) --------------------------------------
# Prüfe, ob zwei Variablen auf dasselbe Objekt zeigen
a = [1, 2, 3]
b = a   # alles was in a ist, wird auch in b sein (Referenz auf dasselbe Objekt)

# überprüfung der speicheradresse indem man das pbejkt aufruft!
print(a)
print(b)

print("Aufgabe 1:")
print(a is b)      # True – b ist nur eine andere Referenz auf dasselbe Objekt
print(a is not b)  # False – weil a und b dasselbe Objekt sind
print(b is a)

print("\n")

# --- Aufgabe 2 (leicht) -------------------------------------
# Unterschied zwischen is und == prüfen
c = [1, 2, 3]
d = [1, 2, 3]
print("Aufgabe 2:")
print(c == d)      # True – Werte sind gleich
print(c is d)      # False – aber im Speicher zwei verschiedene Objekte
print()
print("\n")
