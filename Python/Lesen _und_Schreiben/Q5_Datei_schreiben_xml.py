#---------------------- Datei_schreiben_xml.py
"""
Dieses Programm erstellt eine einfache XML-Datei.
Die XML-Datei enthält eine kleine Beispielstruktur mit Personendaten.
"""

try:
    # XML-Datei im Schreibmodus öffnen
    xml_datei = open("beispiel.xml", "w", encoding="utf-8")

    # XML-Inhalt schreiben
    xml_datei.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
    xml_datei.write("<personen>\n")
    xml_datei.write("    <person>\n")
    xml_datei.write("        <name>Jakob</name>\n")
    xml_datei.write("        <alter>28</alter>\n")
    xml_datei.write("        <stadt>Freiburg</stadt>\n")
    xml_datei.write("    </person>\n")
    xml_datei.write("</personen>\n")

    xml_datei.close()

    print("XML-Datei wurde erfolgreich erstellt!")

except IOError:
    print("Fehler beim Schreiben der XML-Datei.")
