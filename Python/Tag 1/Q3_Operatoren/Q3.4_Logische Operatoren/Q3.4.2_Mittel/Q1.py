# logische_operatoren_aufgaben.py
"""
Thema: Logische Operatoren (and, or, not)
Ziel: Verständnis, wie Wahrheitswerte kombiniert und geprüft werden.
Operatoren: and (UND), or (ODER), not (NICHT)

💡 Lernaufbau der Aufgaben:

Aufgabe 3: Anwendung in einer if-Struktur mit einfachen Bedingungen.

"""


# --- Aufgabe 3 (mittel) -------------------------------------
# Logische Operatoren in einer if-Bedingung
print("Aufgabe 3:")
alter = 20
ticket = True
mitglied = False

# Bedingung: Eintritt nur, wenn über 18 UND Ticket vorhanden
if alter >= 18 and ticket:
    print("Eintritt erlaubt")
else:
    print("Kein Eintritt")

# Bedingung: Rabatt, wenn unter 18 ODER Mitglied
if alter < 18 or mitglied:
    print("Rabatt gewährt")
else:
    print("Kein Rabatt")
print()
