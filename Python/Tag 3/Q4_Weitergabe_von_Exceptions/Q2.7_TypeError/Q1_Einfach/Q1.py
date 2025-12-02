
# 💡 Beispiel: TypeError – Exception weitergeben mit raise


try:
    ergebnis = 5 + "abc"  # ⛔ Fehler: Zahl + Text geht nicht
except TypeError as e:
    print("❌ Fehler: Du kannst keine Zahl und einen Text addieren!")  # eigene Fehlermeldung
    raise  # ➕ gibt den Fehler weiter an das Hauptprogramm
