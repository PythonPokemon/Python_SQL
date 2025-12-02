""" 
Falsche Operation zwischen Datentypen
"""


try:
    ergebnis = 5 + "abc"  # teste 5 + 10 | fehler da ganzzahl mit zeichenkette versucht wird zu addieren.
except TypeError:
    print("❌ Fehler: Du kannst keine Zahl und einen Text addieren!")
