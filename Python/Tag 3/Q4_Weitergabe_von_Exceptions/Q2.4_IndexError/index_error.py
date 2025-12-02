""" 
IndexError: Zugriff auf einen nicht existierenden Index
"""



try:
    liste = [1, 2, 3]
    print(liste[5])     # teste 0, 1, 2 | wenn keine fehlerausgabe kommt, ist der index vorhanden
except IndexError:
    print("❌ Fehler: Dieser Listenindex existiert nicht!")
