# --- Arithmetische Operatoren ---
print(5 + 3)    # Addition → 8
print(5 - 3)    # Subtraktion → 2
print(5 * 3)    # Multiplikation → 15
print(5 / 2)    # Division (float) → 2.5
print(5 // 2)   # Ganzzahldivision → 2
print(5 % 2)    # Modulo (Rest) → 1
print(2 ** 3)   # Potenzieren → 8
print("\n")

# Aufgabe 4 (Experte):
# Erweitere die Funktion so, dass sie Eingabefehler abfängt (z.B. Division durch 0 oder ungültiger Operator).
# Gib passende Fehlermeldungen aus.
print("\n")
print("Aufgabe 4 (Experte):")
def sichere_berechnung(a, b, operator):
    try:
        if operator == '+':
            return a + b
        elif operator == '-':
            return a - b
        elif operator == '*':
            return a * b
        elif operator == '/':
            return a / b
        elif operator == '//':
            return a // b
        elif operator == '%':
            return a % b
        elif operator == '**':
            return a ** b
        else:
            return "Ungültiger Operator"
    except ZeroDivisionError:
        return "Fehler: Division durch 0 ist nicht erlaubt."

print(sichere_berechnung(5, 0, '/'))
print(sichere_berechnung(5, 0, '%'))
print(sichere_berechnung(5, 2, '^'))  # Ungültiger Operator
