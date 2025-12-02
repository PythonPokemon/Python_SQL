""" 
Teilen durch Null geht nicht!
"""

# ZeroDivisionError: Division durch Null nicht möglich.
try:
    ergebnis = 10 / 0   # teste 2, 5, 10 | wenn keine fehlerausgabe kommt, ist die Division durch Null nicht erfolgt           
except ZeroDivisionError:
    print("❌ Fehler: Durch Null darf man nicht teilen!")
