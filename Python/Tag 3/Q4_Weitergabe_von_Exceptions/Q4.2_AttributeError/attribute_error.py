""" 
AttributeError: Objekt hat kein bestimmtes Attribut
"""


try:
    zahl = 5
    zahl.append(10)  # append gibt's nur bei Listen
except AttributeError:
    print("❌ Fehler: Diese Operation gibt es für diesen Typ nicht!")
