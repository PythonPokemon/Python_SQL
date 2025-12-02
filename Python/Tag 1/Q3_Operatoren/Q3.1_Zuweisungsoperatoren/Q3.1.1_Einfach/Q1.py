"""
Thema: Zuweisungsoperatoren (Compound Assignment Operators)
Ziel: Verständnis, wie Werte in Variablen verändert werden können.
Operatoren: +=, -=, *=, /=, //=, %=, **=

💡 Lernlogik in den Aufgaben:

Aufgabe 1: Einfache schrittweise Anwendung.
Aufgabe 2: Alle Operatoren einmal durchspielen.
"""
x = 5
print(x)  # Ausgabe: 5
x += 2    # x = x + 2 → 7
print(x)  # Ausgabe: 7
x -= 1    # x = x - 1 → 6
print(x)  # Ausgabe: 6
x *= 3    # x = x * 3 → 18
print(x)  # Ausgabe: 18
x /= 2    # x = x / 2 → 9.0
print(x)  # Ausgabe: 9.0
x //= 2   # x = x // 2 → 4.0
print(x)  # Ausgabe: 4.0
x %= 3    # x = x % 3 → 1.0
print(x)  # Ausgabe: 1.0
x **= 2   # x = x ** 2 → 1.0
print(x)  # Ausgabe: 1.0
    

# --- Aufgabe 1 (Basis) --------------------------------------
# Schrittweise Veränderung einer Zahl
print("Aufgabe 1:")
x = 5
x += 2    # 7
x -= 1    # 6
x *= 3    # 18
x /= 2    # 9.0
print("Endwert von x:", x)
print()

# --- Aufgabe 2 (leicht) -------------------------------------
# Alle Operatoren einmal ausprobieren
print("Aufgabe 2:")
y = 10
y //= 3   # 3
y %= 2    # 1
y **= 3   # 1
print("Endwert von y:", y)


