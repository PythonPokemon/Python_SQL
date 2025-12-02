""" 
Beispiel: sorted() - Gibt eine neue sortierte Liste zurück (Original bleibt erhalten)
"""

def letztes_e_vorkommen_finden():

    text = "Regenschauer"
    position = text.rfind("e")  #  liefert den letzten Fund | von links nach rechts durchlaufen! 
    print("Letztes 'e' bei Index:", position)   # 10

letztes_e_vorkommen_finden()

""" 
Beispiel: 

| Zeichen | R | e | g | e | n | s | c | h | a | u | e  | r  |
| Index   | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 |

"""