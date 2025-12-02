# Beispiel 6: Passwortvalidierung mit Länge
passwort = input("Gib dein Passwort ein: ")

if len(passwort) >= 6:
    print("Passwort akzeptiert.")
    if passwort == "python123":
        print("Admin-Zugang erkannt ✅")
else:
    print("Passwort zu kurz ❌")
