# logische_operatoren_aufgaben.py
"""
Thema: Logische Operatoren (and, or, not)
Ziel: Verständnis, wie Wahrheitswerte kombiniert und geprüft werden.
Operatoren: and (UND), or (ODER), not (NICHT)

💡 Lernaufbau der Aufgaben:

Aufgabe 4: Realistisches, verschachteltes Szenario, in dem mehrere Bedingungen gemeinsam geprüft werden.
"""


# --- Aufgabe 4 (schwer) -------------------------------------
# Praxisbeispiel: Zugangskontrolle mit verschachtelten Bedingungen
print("Aufgabe 4:")
benutzername = "admin"
passwort_ok = True
zweifaktor_ok = False
ausnahme_code = True

# Zugang erlaubt, wenn:
# - Benutzer ist admin UND Passwort + 2FA ok
# - ODER Ausnahme-Code vorhanden
if (benutzername == "admin" and passwort_ok and zweifaktor_ok) or ausnahme_code:
    print("Zugang erlaubt")
else:
    print("Zugang verweigert")
