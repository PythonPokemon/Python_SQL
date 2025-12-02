
# 💡 Beispiel: ValueError – Exception weitergeben mit raise

try:
    zahl = int(input("Gib eine Zahl ein: "))       # teste 5, 10, "abc"
    print("✅ Deine Zahl ist:", zahl)
except ValueError:
    print("❌ Fehler: Das war keine gültige Zahl, sondern ein Buchstabe oder ein anderes Zeichen.")
    raise  # ➕ Fehler wird weitergegeben, z. B. an das Hauptprogramm
