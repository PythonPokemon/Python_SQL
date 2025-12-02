# --- Arithmetische Operatoren ---
print(5 + 3)    # Addition → 8
print(5 - 3)    # Subtraktion → 2
print(5 * 3)    # Multiplikation → 15
print(5 / 2)    # Division (float) → 2.5
print(5 // 2)   # Ganzzahldivision → 2
print(5 % 2)    # Modulo (Rest) → 1
print(2 ** 3)   # Potenzieren → 8
print("\n")


# Aufgabe 3 (Schwer):
# Schreibe eine Funktion, die aus zwei Zahlen und einem Operator (+, -, *, /, //, %, **) das Ergebnis berechnet.
# Verwende eine if-elif-else-Struktur.
# Teste die Funktion mit verschiedenen Operatoren.
print("\n")
print("Aufgabe 3 (Schwer):")
def berechne(a, b, operator):
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

print(berechne(5, 3, '+'))
print(berechne(5, 3, '//'))
print(berechne(2, 3, '**'))
