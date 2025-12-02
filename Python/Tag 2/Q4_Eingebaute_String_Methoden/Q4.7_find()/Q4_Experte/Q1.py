"""
🔴 Experten-Aufgabe
Überprüfung, ob ein Wort existiert (ohne if "wort" in text)

🧩 Lernziel: .find() kann genutzt werden, um Wörter oder Zeichen manuell zu prüfen, 
ob sie im Text vorkommen — eine häufige Prüfungslogik im PCEP.
"""

beschreibung = "Programmieren in Python ist spannend"
suchwort = "Java"
if beschreibung.find(suchwort) != -1:        # -1 bedeutet: nicht gefunden
    print(f"'{suchwort}' wurde gefunden!")
else:
    print(f"'{suchwort}' wurde nicht gefunden!")
