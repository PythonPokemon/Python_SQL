# vergleichsoperatoren_aufgaben.py
"""
Thema: Vergleichsoperatoren
Ziel: Werte und Variablen mit ==, !=, >, <, >=, <= vergleichen lernen.

💡 Aufbau der Aufgaben:

Aufgabe 4: Realistisches Beispiel mit String-Vergleich und Zahlenprüfung.
"""

# --- Aufgabe 4 (schwer) -------------------------------------
# Praxisbeispiel: Login-Prüfung mit Alterskontrolle
print("Aufgabe 4:")
benutzername = "max"
eingabe_name = "Max"
eingabe_alter = 20

# Zugang nur, wenn Name exakt übereinstimmt (Groß-/Kleinschreibung egal) UND Alter >= 18
if benutzername.lower() == eingabe_name.lower() and eingabe_alter >= 18:
    print("Login erfolgreich.")
else:
    print("Login fehlgeschlagen.")
