"""
🔴 EXPERTENAUFGABE (PCEP-Niveau 4)

Vergleiche Listen miteinander und gib nur gemeinsame Werte aus.

🧠 Lernziel:
    - Kombinierte Nutzung von verschachtelten Schleifen und Bedingungen
    - Vergleichslogik trainieren
    - Effizienzgedanken verstehen
"""
# Aufgabe: Finde gemeinsame Elemente zweier Listen mit verschachtelten Schleifen.

listeA = [1, 2, 3, 4, 5]
listeB = [3, 5, 7, 9]

for a in listeA:
    for b in listeB:
        if a == b:
            print(f"Gemeinsames Element gefunden: {a}")
