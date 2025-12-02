"""
Thema: Identitätsoperatoren (is / is not)
Ziel: Verständnis, wann zwei Variablen auf dasselbe Objekt im Speicher zeigen.
Hinweis: Identität ≠ Gleichheit (is prüft Speicheradresse, == prüft Wert)
-------------------------------------------------------------------------------
💡 Lernfortschritt in der Datei:

Aufgabe 4: Tiefergehendes Verständnis von Python-Optimierungen (Caching / Interning).
"""


# --- Aufgabe 4 (schwer) -------------------------------------
# Unterschied zwischen kleinen Zahlen, Strings und Listen bei Identität
print("Aufgabe 4:")
x = 256
y = 256
print("256 is 256:", x is y)  # True – kleine int-Werte werden intern gecached

x_big = 257
y_big = 257
print("257 is 257:", x_big is y_big)  # Kann True oder False sein, abhängig von der Python-Implementierung

s1 = "Hallo"
s2 = "Hallo"
print('"Hallo" is "Hallo":', s1 is s2)  # Meist True wegen String-Interning

l1 = [1, 2, 3]
l2 = [1, 2, 3]
print("[1, 2, 3] is [1, 2, 3]:", l1 is l2)  # False – Listen werden immer neu erstellt
