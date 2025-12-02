""" 
Beispiel: .isalpha()  Prüfen, ob ein String nur Buchstaben enthält
"""

def nur_buchstaben_pruefen():   
    text = "HalloWelt"  # testen Sie mit verschiedenen Strings, z.B. "Hallo Welt", oder "Hallo123"
    
    if text.isalpha():
        print("Der Text enthält nur Buchstaben.")
    else:
        print("Der Text enthält auch andere Zeichen.")

nur_buchstaben_pruefen()    #methodenaufruf
