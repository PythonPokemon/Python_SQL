""" 
in-Operator (Teil in String enthalten?)
es wird geschaut ob ein Teilstring in einem String enthalten ist
Beispiel: "ist" in "Python ist toll"  # True
"""

satz = "Python ist toll"

print("ist" in satz)      # True
print("cool" in satz)     # False, da diese Zeichenkette nicht im Satz enthalten ist
print("Python" in satz)   # True
print("Python" not in satz)  # False | da "Python" im Satz enthalten ist
print("Java" not in satz)  # True, da "Java" nicht im Satz enthalten ist
print(" " in satz)        # True, da Leerzeichen im Satz enthalten sind