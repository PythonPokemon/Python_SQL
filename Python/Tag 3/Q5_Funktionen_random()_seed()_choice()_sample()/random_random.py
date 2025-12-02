"""
Erzeugen einer Zufallszahl zwischen 0.0 und 1.0
Funktion: random.random()
"""

import random  # Modul importieren



def zufallszahl_zwischen_null_und_eins():
    wert = random.random()  # float zwischen 0.0 und 1.0
    print("Zufallswert:", wert)

# Testaufruf
zufallszahl_zwischen_null_und_eins()
