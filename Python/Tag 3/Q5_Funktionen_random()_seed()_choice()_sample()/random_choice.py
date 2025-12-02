# random_choice.py
"""
Zufälliges Element aus einer Sequenz auswählen
Funktion: random.choice()

Frage?
geht das modul random auch ohne die funktion choice?
"""

import random

def zufaellige_auswahl():
    farben = ["rot", "blau", "grün", "gelb"]
    auswahl = random.choice(farben)  # Zufälliges Element asuwählen
    print("Gewählte Farbe:", auswahl)

# Testaufruf
zufaellige_auswahl()
