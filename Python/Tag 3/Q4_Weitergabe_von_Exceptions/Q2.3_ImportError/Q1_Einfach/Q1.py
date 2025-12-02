""" 
🧠 Beispiel: Exception weitergeben (raise ohne Argument)

🧩 Erklärung Schritt für Schritt:
    - try: versucht, ein Modul zu importieren.
    - except ImportError: fängt den Fehler ab, wenn das Modul nicht gefunden wird.
    - print(...) zeigt eine Benutzerfreundliche Meldung an.
    - raise ohne Argument bedeutet:
        👉 „Gib die ursprüngliche Exception erneut weiter.“
        So kann sie weiter oben im Programm oder vom Interpreter behandelt werden.
"""



try:
    import nicht_existierend
except ImportError:
    print("❌ Fehler: Dieses Modul konnte nicht importiert werden!")
            # Exception wird weitergegeben, damit sie vom nächsten try-except
            # oder vom System behandelt werden kann
    raise   # Fehler weitergeben
