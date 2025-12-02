
# 🔹 Beispiel mit weitergereichter Exception an höhere Ebene

def teile(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        print("Fehler in Funktion 'teile': Division durch Null erkannt.")
        raise  # gibt den Fehler weiter

try:
    ergebnis = teile(10, 0)
except ZeroDivisionError:
    print("❌ Fehler wurde an die Hauptfunktion weitergegeben.")
