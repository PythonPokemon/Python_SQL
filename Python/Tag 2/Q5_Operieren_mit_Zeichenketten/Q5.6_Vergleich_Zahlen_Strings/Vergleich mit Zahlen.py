""" 
Vergleich mit Zahlen
"""

zahl_string = "10"
zahl_1 = 10
zahl_2 = 10

print(zahl_string == zahl_1)  # False (Typen unterschiedlich!)
print(zahl_1 == zahl_2)  # True (beide sind 10)
print(int(zahl_string) == zahl_1)   # True (nach Umwandlung) | Typumwandung, einfach datentyp 
                                    # bsp. int() verwenden und in die klammern, die referenrvariable packen 
                                    # das den anderen datentypen enthält. int(zahl_string)
