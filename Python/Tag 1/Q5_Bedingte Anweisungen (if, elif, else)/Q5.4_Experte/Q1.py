"""
🔴 EXPERTEN-AUFGABEN (verschachtelte if-Bedingungen + Validierung)

(Ziel: Fehlerbehandlung und logische Tiefe kombinieren)
"""

# Aufgabe 10: Login mit Sicherheitsprüfung
benutzer = input("Benutzername: ")
passwort = input("Passwort: ")

if benutzer == "admin":
    if passwort == "1234":
        print("Login erfolgreich ✅")
    else:
        print("Falsches Passwort ❌")
else:
    print("Unbekannter Benutzer ❌")
