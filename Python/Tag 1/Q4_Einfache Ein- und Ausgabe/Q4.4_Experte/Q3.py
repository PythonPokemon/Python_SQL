# Aufgabe 12: Passwortprüfung
# Das Passwort muss mindestens 8 Zeichen lang sein und eine Zahl enthalten.
pw = input("Gib dein Passwort ein: ")
if len(pw) >= 8 and any(ch.isdigit() for ch in pw):
    print("Passwort akzeptiert ✅")
else:
    print("Passwort zu schwach ❌")
