# Aufgabe 5: Notenbewertung
# Gib je nach Punktzahl die Note aus.
punkte = int(input("Gib deine Punktzahl ein (0–100): "))
if punkte >= 90:
    print("Note: Sehr gut")
elif punkte >= 75:
    print("Note: Gut")
elif punkte >= 60:
    print("Note: Befriedigend")
else:
    print("Note: Nicht bestanden")
