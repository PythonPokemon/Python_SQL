""" 
📌 Was ist None?
None ist ein spezieller Wert in Python und bedeutet: "nichts zurückgegeben

🔍 Erklärung
pass
Ist ein Platzhalter in Python, der einfach „nichts tut“.
Er ist oft da, um eine leere Funktion, Klasse oder Schleife vorerst zu definieren, ohne einen Syntaxfehler zu bekommen.

None
Ist in Python ein spezieller Wert, der „keinen Wert“ oder „nichts“ repräsentiert.
Jede Funktion, die nichts mit return zurückgibt, gibt automatisch None zurück.
"""


# Bsp.1 methode wird einer variable zugewiesen und dies variable wird dann in print ausgegeben
def tue_nichts():
    pass  # tut nichts

x = tue_nichts()
print(x)  # Ausgabe: None

# Bsp. 2

def gib_nichts_zurueck():
    pass  # tut nichts, gibt aber auch nichts zurück

print(gib_nichts_zurueck())  # Ausgabe: None

# Bsp. 3
""" 
💡 Merksatz:
Ohne Klammern → nur die Adresse/Referenz der Funktion
Mit Klammern → Funktion wird aufgerufen, Rückgabewert wird angezeigt
"""
def sag_hallo():
    pass

print(sag_hallo)   # Referenz -> <function  ...>
print(sag_hallo()) # Aufruf -> none!
