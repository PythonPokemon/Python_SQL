
# 🧠 Beispiel: Exception weitergeben (raise bei IndexError)

try:
    liste = [1, 2, 3]
    print(liste[5])     # teste 0, 1, 2 | Index 5 ist außerhalb der Liste
except IndexError:
    print("❌ Fehler: Dieser Listenindex existiert nicht!")  # eigene Ausgabe
    raise  # Fehler wird an das Hauptprogramm weitergegeben
