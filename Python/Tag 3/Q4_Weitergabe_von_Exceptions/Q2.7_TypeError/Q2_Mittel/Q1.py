
# 🔍 Beispiel mit Weitergabe an eine höhere Ebene

def berechne_summe():
    try:
        return 5 + "abc"
    except TypeError:
        print("⚠️ Funktion: Fehler erkannt und weitergegeben.")
        raise  # gibt den Fehler an das Hauptprogramm weiter

try:
    berechne_summe()
except TypeError:
    print("🚨 Hauptprogramm: Es trat ein Typfehler auf!")
