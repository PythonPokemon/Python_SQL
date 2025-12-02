""" 
ImportError: Modul oder Funktion nicht gefunden

kommentiere das unten drunter aus um es zu testen!
es gibt das Modul tatsächlich nicht, daher wird eine andere Fehlermeldung ausgegeben

ModuleNotFoundError: No module named 'nicht_existierend'.
"""
#import nicht_existierend  

try:
    import nicht_existierend
except ImportError:
    print("❌ Fehler: Dieses Modul konnte nicht importiert werden!")
