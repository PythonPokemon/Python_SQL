""" 
Beispiel: sorted() - Gibt eine neue sortierte Liste zurück (Original bleibt erhalten)

sorted() Funktioniert für jede iterierbare Struktur (Listen, Tupel, Strings, Sets etc.), 
solange die Elemente vergleichbar sind
"""

def neue_sortierte_liste_erstellen():
    namen = ["Lena", "Ben", "Anna", "Tom"]
    sortierte_namen = sorted(namen)  # <--- erstellt neue Liste

    print("Original:", namen)
    print("Sortiert:", sortierte_namen)

neue_sortierte_liste_erstellen()
