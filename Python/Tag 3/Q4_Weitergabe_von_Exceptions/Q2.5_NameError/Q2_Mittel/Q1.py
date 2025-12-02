
# 🔁 Beispiel mit Weitergabe an eine höhere Ebene

def test_variable():
    try:
        print(variable_die_es_nicht_gibt)
    except NameError:
        print("⚠️ Funktion: Variable nicht gefunden – gebe den Fehler weiter!")
        raise  # Fehler an das Hauptprogramm weitergeben

try:
    test_variable()
except NameError:
    print("🚨 Hauptprogramm: Variable existiert nicht – bitte prüfen!")
