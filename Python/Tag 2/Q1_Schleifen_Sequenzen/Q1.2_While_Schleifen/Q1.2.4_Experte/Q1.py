"""
🔴 Expertenaufgabe (PCEP-Level-4-Style)

Benutzereingabe prüfen und nur gültige Zahlen akzeptieren.

👉 Lernziel:
    - Kombination von while True + break
    - Eingabevalidierung
    - Verschachtelte Bedingungen
    - Bereichsprüfung
"""

# Aufgabe: Der Benutzer soll eine Zahl zwischen 1 und 5 eingeben.
# Nur gültige Zahlen werden akzeptiert, sonst Wiederholung.

while True:
    eingabe = input("Gib eine Zahl zwischen 1 und 5 ein: ")

    if eingabe.isdigit():                      # Prüfe, ob Zahl eingegeben wurde
        zahl = int(eingabe)

        if 1 <= zahl <= 5:                     # Verschachtelte Bedingung!
            print("Danke! Deine Zahl ist:", zahl)
            break
        else:
            print("Zahl außerhalb des Bereichs!")
    else:
        print("Ungültige Eingabe! Bitte gib eine Zahl ein.")
