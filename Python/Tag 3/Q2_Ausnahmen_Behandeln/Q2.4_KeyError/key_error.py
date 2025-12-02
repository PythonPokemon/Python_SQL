""" 
KeyError: Zugriff auf einen falschen Schlüssel im Dictionary
"""


try:
    daten = {"name": "Max", "alter": 25}
    print(daten["stadt"])   # teste 'name' oder 'alter' | wenn keine fehlerausgabe kommt, ist der schlüssel vorhanden.
except KeyError:
    print("❌ Fehler: Dieser Schlüssel existiert nicht im Dictionary!")