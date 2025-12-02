""" 
Vergleich von Zeichenketten

Beachte: Zeichenketten werden zeichenweise verglichen, nicht numerisch!
"""


print("Apfel" == "Apfel")   # True. da beides zeuchenketten sind und gleich
print("Apfel" < "Banane")   # True 'ACHTUNG'!, da alphabetisch sind!
print("10" < "2")           # True (Zeichenvergleich, nicht als Zahl!)
print("1" == 1)             # False (Typen sind unterschiedlich: String vs. Integer)