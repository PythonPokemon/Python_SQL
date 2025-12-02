# strg + k + c  auskommentieren
# strg + k + u  einkommentieren

# Datei zum lesen

#---------------------- Datei lesen.py
try:
    datei = open("beispiel.txt", "r")
    inhalt = datei.read()
    datei.close()
    print("Inhalt der Datei:")
    print(inhalt)
except FileNotFoundError:
    print("Die Datei wurde nicht gefunden.")