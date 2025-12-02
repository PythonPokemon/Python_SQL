# --- Arithmetische Operatoren ---
print(5 + 3)    # Addition → 8
print(5 - 3)    # Subtraktion → 2
print(5 * 3)    # Multiplikation → 15
print(5 / 2)    # Division (float) → 2.5
print(5 // 2)   # Ganzzahldivision → 2
print(5 % 2)    # Modulo (Rest) → 1
print(2 ** 3)   # Potenzieren → 8
print("\n")

zahl1 = int(input("Gib die erste Zahl ein: "))
zahl2 = int(input("Gib die zweite Zahl ein: "))


# Aufgabe 2 (Mittel):
# Erweitere das Programm um Ganzzahldivision (//), Modulo (%) und Potenzieren (**).
# Gib für jede Operation eine Erklärung aus.
print("\n")
print("Aufgabe 2: Erweiterung der arithmetischen Operationen")
print("Ganzzahldivision:", zahl1 // zahl2, "(Ergebnis ohne Nachkommastellen)")
print("Modulo:", zahl1 % zahl2, "(Rest bei der Division)")
print("Potenz:", zahl1 ** zahl2, "(Ergebnis von zahl1 hoch zahl2)")
