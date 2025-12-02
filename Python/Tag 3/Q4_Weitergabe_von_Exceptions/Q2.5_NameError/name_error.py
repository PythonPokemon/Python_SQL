""" 
NameError: Variable/Funktion nicht definiert

kommentiere das unten drunter aus um es zu testen!
teste, ob diese Zeile funktioniert | wenn keine fehlerausgabe kommt, ist die Variable definiert

"""

#variable_die_es_nicht_gibt = 42  

try:
    print(variable_die_es_nicht_gibt)
except NameError:
    print("❌ Fehler: Diese Variable ist nicht definiert!")
