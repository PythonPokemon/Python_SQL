"""
Festlegen des Zufalls-Startwertes (Seed)
Funktion: random.seed()
Gleicher Seed => gleiche Zufallszahlenfolge

Frage?
wozu dann überhaupt Zufallszahlen, 
wenn der startpunkt von bsp. 42 ignoriert wird und es irgendwo zwischen 0.1 - 1 ausgegeben wird?
"""

import random

def zufallszahlen_mit_seed():
    random.seed(42)  # Startwert setzen
    print(random.random())  # Erster Wert
    print(random.random())  # Zweiter Wert

# Testaufruf
zufallszahlen_mit_seed()

