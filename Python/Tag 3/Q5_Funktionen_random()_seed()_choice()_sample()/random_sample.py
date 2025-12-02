# random_sample.py
"""
Mehrere eindeutige zufällige Elemente aus einer Sequenz auswählen
Funktion: random.sample()


"""

import random

def zufaellige_mehrfachauswahl():
    zahlen = [1, 2, 3, 4, 5, 6]             # Liste von Zahlen
    auswahl = random.sample(zahlen, 3)      # es werden mit der methode/funktion: .sample() 3 eindeutige Elemente, aus der variable: 'zahlen' ausgewählt und in der variable: 'auswahl' gespeichert
    
    print("Zufällige Auswahl:", auswahl)    # Ausgabe der gespeicherten/übergebenen werte in der variable: 'auswahl'

# Testaufruf
zufaellige_mehrfachauswahl()
