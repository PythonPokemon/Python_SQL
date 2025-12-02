"""
🔴 EXPERTEN-AUFGABEN – Tiefer verschachtelte Logik (PCEP-Niveau)
"""

# Beispiel 10: Bankkonto-Login mit Sicherheitsprüfung
benutzer = input("Benutzername: ")
passwort = input("Passwort: ")

if benutzer == "admin":
    if passwort == "1234":
        print("Login erfolgreich ✅")
        pin = int(input("Sicherheits-PIN eingeben: "))
        if pin == 9999:
            print("Voller Zugriff gewährt 🔐")
        else:
            print("Falsche PIN ❌")
    else:
        print("Falsches Passwort ❌")
else:
    print("Benutzer unbekannt ❌")
