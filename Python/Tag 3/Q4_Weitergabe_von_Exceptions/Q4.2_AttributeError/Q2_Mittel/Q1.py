
# Exception in eine höhere ebene weitergeben

def dummy():
    try:
        zahl = 5
        zahl.append(10)  # append gibt's nur bei Listen
    except AttributeError:
        print("❌ Fehler: Diese Operation gibt es für diesen Typ nicht!")
        raise   # Fehler bewusst weitergeben



try:
    dummy()
except AttributeError:
    print("🚨 Hauptprogramm: findet den Fehler auch nicht!")
