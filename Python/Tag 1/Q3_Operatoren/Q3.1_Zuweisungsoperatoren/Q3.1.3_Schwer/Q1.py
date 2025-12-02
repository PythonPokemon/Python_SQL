"""
Thema: Zuweisungsoperatoren (Compound Assignment Operators)
Ziel: Verständnis, wie Werte in Variablen verändert werden können.
Operatoren: +=, -=, *=, /=, //=, %=, **=

💡 Lernlogik in den Aufgaben:

Aufgabe 4: Realistische Anwendung - hier merkst du, wie praktisch Zuweisungsoperatoren im Alltag sind.
"""

# --- Aufgabe 4 (schwer) -------------------------------------
# Praxisbeispiel: Kontostand-Berechnung mit Zuweisungsoperatoren
print("Aufgabe 4:")
kontostand = 1000.0

# Einzahlung
kontostand += 250.0  # +250€
# Abhebung
kontostand -= 120.0  # -120€
# Jahreszins 3%
kontostand *= 1.03
# Gebühren pro Quartal (4x 5€)
kontostand -= 4 * 5
# Abrunden auf ganze Euro
kontostand //= 1

print("Kontostand am Jahresende:", kontostand, "Euro")
