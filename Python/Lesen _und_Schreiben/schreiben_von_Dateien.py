# strg + k + c  auskommentieren
# strg + k + u  einkommentieren

# Datei zum Schreiben



#---------------------- Datei schreiben.py
try:
    texteingabe = input("Geben Sie den Text ein, der in die Datei geschrieben werden soll: ")
    datei = open("beispiel.txt", "w")
    datei.write(texteingabe)
    datei.close()
    print("Text wurde erfolgreich in die Datei geschrieben.")
except IOError:
    print("Fehler beim Schreiben in die Datei.")

