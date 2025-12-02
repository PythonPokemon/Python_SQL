
# 🔍 Beispiel mit Weitergabe an eine höhere Ebene

def lade_daten():
    try:
        daten = {"name": "Max", "alter": 25}
        print(daten["stadt"])
    except KeyError:
        print("⚠️ Funktion: Schlüssel nicht gefunden – gebe den Fehler weiter!")
        raise  # Fehler an das Hauptprogramm weitergeben

try:
    lade_daten()
except KeyError:
    print("🚨 Hauptprogramm: Dictionary-Schlüssel fehlt!")
