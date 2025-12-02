
# ✅ Beispiel mit einer Funktion (Weitergabe an Hauptprogramm)

def lese_zahl():
    try:
        zahl = int(input("Bitte gib eine ganze Zahl ein: "))
        print("Du hast eingegeben:", zahl)
    except ValueError:
        print("⚠️ Funktion: Ungültige Eingabe erkannt, Fehler wird weitergegeben.")
        raise  # gibt den Fehler weiter an das Hauptprogramm

# Hauptprogramm
try:
    lese_zahl()
except ValueError:
    print("🚨 Hauptprogramm: Fehler empfangen – Bitte Eingabe prüfen!")
