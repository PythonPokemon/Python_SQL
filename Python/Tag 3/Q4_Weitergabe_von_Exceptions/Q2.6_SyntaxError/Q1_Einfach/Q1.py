
# ❌ Beispiel: SyntaxError kann nicht mit try-except gefangen werden

# ❌ Dieser Code funktioniert nicht – Python kann ihn gar nicht ausführen!
try:
    if True print("Hallo")  # ⛔ SyntaxError – fehlt der Doppelpunkt
except SyntaxError:
    print("Fehler erkannt!")
