# 🔁 Beispiel mit Weitergabe an Hauptprogramm

def prüfe_code(code_text):
    try:
        exec(code_text)
    except SyntaxError as e:
        print("⚠️ Funktion: Syntaxfehler im Code erkannt!")
        raise  # Fehler an das Hauptprogramm weitergeben

try:
    prüfe_code("if True print('Hallo')")  # absichtlich falscher Code
except SyntaxError:
    print("🚨 Hauptprogramm: Der eingegebene Code enthält einen Syntaxfehler!")
