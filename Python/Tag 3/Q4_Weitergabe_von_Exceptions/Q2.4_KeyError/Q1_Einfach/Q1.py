
# 🧠 Beispiel: Exception (KeyError) weitergeben

try:
    daten = {"name": "Max", "alter": 25}
    print(daten["stadt"])   # teste 'name' oder 'alter' → 'stadt' löst KeyError aus
except KeyError:
    print("❌ Fehler: Dieser Schlüssel existiert nicht im Dictionary!")
    raise  # Fehler wird bewusst weitergegeben
