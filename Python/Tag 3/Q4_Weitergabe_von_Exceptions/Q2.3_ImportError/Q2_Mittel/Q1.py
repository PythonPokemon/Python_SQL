"""
🔍 Beispiel mit zweiter Abfangebene:
Manchmal will man in einer höheren Ebene den Fehler endgültig behandeln:

🧩 Lernziel:
Verstehen, dass Exceptions in tieferen Programmteilen weitergegeben werden können,
damit sie an zentraler Stelle behandelt werden (z. B. im Hauptprogramm).
"""

def lade_modul():
    try:
        import nicht_existierend
    except ImportError:
        print("⚠️ Modul fehlt – gebe Fehler weiter an Hauptprogramm!")
        raise  # Fehler weitergeben

try:
    lade_modul()
except ImportError:
    print("🚨 Hauptprogramm: Modul konnte auch hier nicht geladen werden!")
