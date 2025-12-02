""" 
Beispiel: sorted() - Gibt eine neue sortierte Liste zurück (Original bleibt erhalten)
"""

def erstes_e_vorkommen_finden():

    text = "Regenschauer"
    position = text.index  # liefert den ersten Fund (von links nach rechts)
    print("erstes 'e' bei Index:", position)    # 1

erstes_e_vorkommen_finden() # Methodenaufruf

""" 
Beispiel: 

| Zeichen | R | e | g | e | n | s | c | h | a | u | e  | r  |
| Index   | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |

"""
