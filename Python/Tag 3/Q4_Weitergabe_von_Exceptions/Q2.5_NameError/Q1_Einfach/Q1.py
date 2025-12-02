
# 💡 Beispiel: Exception (NameError) weitergeben

try:
    print(variable_die_es_nicht_gibt)  # Variable ist nicht definiert → NameError
except NameError:
    print("❌ Fehler: Diese Variable ist nicht definiert!")
    raise  # Fehler bewusst weitergeben
