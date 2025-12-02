
# 🔍 Beispiel mit zweiter Fehler-Ebene (weitergereichte Exception abfangen)

def zeige_element():
    try:
        liste = [1, 2, 3]
        print(liste[5])
    except IndexError:
        print("⚠️ Funktion: Falscher Index – gebe den Fehler weiter!")
        raise  # Fehler weitergeben

try:
    zeige_element()
except IndexError:
    print("🚨 Hauptprogramm: Listenindex außerhalb des Bereichs!")
