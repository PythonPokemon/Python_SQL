""" 
Zeichenkodierung (ASCII, Unicode, UTF-8)
📌 Was ist das?
Ein Computer speichert Buchstaben als Zahlen.
Jeder Buchstabe hat einen sogenannten Code Point.
"""

print(ord("A"))     # → 65 (ASCII)
print(chr(65))      # 'A'  (Unicode)


# Escape-Sequenz: z. B. \n (neue Zeile), \t (Tab)
print("Hallo\nWelt!")  # Zeilenumbruch..............

A = ord("A")
B = ord("B")

summe = A + B

print("A entspricht: ", A)
print("B entspricht: ", B)
print("A:", A,  " + B:",  B, " = ", summe, "\n")


