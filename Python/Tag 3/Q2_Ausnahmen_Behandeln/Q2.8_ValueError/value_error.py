""" 
💡 Merksatz:
hier muss man eine zahl und keinen buchstaben eingeben,
falls ein buchstabe eingegeben wird, wird dieser abgefangen und eine Fehlermeldung ausgegeben..
"""

# ValueError: Falscher Wert / nicht umwandelbar
try:
    zahl = int(input("Gib eine Zahl ein: "))    # teste 5, 10, "abc" | wenn keine fehlerausgabe kommt, ist die Eingabe eine gültige Zahl
    print("Deine Zahl ist:", zahl)
except ValueError:
    print("❌ Fehler: Das war keine gültige Zahl, sondern ein Buchstabe oder ein anderes Zeichen.")
