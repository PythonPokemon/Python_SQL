"""
Thema: Identitätsoperatoren (is / is not)
Ziel: Verständnis, wann zwei Variablen auf dasselbe Objekt im Speicher zeigen.
Hinweis: Identität ≠ Gleichheit (is prüft Speicheradresse, == prüft Wert)
-------------------------------------------------------------------------------
💡 Lernfortschritt in der Datei:

Aufgabe 3: Best Practice zur Prüfung auf None.
"""

# --- Aufgabe 3 (mittel) -------------------------------------
# Prüfen, ob None korrekt erkannt wird (Best Practice!)
wert = None
print("Aufgabe 3:")
if wert is None:
    print("Wert ist None (empfohlene Prüfung)")
else:
    print("Wert ist nicht None")
print()
print("\n")
