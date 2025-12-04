#---------------------- Datei_lesen_xml.py
"""
Dieses Programm liest eine XML-Datei ein und gibt die Inhalte
zwischen bestimmten Tags aus (name, alter, stadt).
Es wird kein XML-Modul benutzt, nur einfache String-Methoden.
"""

try:
    # Datei öffnen
    datei = open("beispiel.xml", "r", encoding="utf-8")
    inhalt = datei.read()
    datei.close()

    # Hilfsfunktion zum Auslesen eines XML-Tags
    def lese_tag(text, tagname):
        """
        Findet den Inhalt zwischen <tagname>...</tagname>.
        Gibt den gefundenen Wert zurück oder None, falls der Tag nicht existiert.
        """
        start_tag = f"<{tagname}>"
        end_tag = f"</{tagname}>"

        start_index = text.find(start_tag)
        end_index = text.find(end_tag)

        if start_index == -1 or end_index == -1:
            return None
        
        # Inhalt zwischen den Tags extrahieren
        start_index += len(start_tag)
        return text[start_index:end_index].strip()

    # Werte auslesen
    name = lese_tag(inhalt, "name")
    alter = lese_tag(inhalt, "alter")
    stadt = lese_tag(inhalt, "stadt")

    print("📄 XML-Daten:")
    print("Name :", name)
    print("Alter:", alter)
    print("Stadt:", stadt)

except IOError:
    print("Fehler beim Lesen der XML-Datei.")
