""" 
Immutability (Unveränderbarkeit von Strings)
"""

""" 
# in die referenzvariable 'sprache' wird eine neue Zeichenkette gespeichert "J" 
# + der erste Index ausgegeben aus der Zeichenkette der in der Variable 'sprache' gespeichert ist

-----------------------------------
| Zeichen | P | y | t | h | o | n |
| Index   | 0 | 1 | 2 | 3 | 4 | 5 |
-----------------------------------

# J + Index 0 == P
"""

sprache = "Python"
# sprache[0] = "J"  # ❌ Fehler! 'Strings' sind unveränderbar (immutable)
# Stattdessen:
sprache = "J" + sprache[0] 

print(sprache)  # 'JP'

