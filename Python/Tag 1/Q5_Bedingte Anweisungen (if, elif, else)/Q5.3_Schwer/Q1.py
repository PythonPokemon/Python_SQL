"""
🔵 SCHWERE AUFGABEN (mehrere Bedingungen mit and/or)

(Ziel: Logische Operatoren kombinieren und verschachtelte Entscheidungen treffen)
"""

# Aufgabe 7: Kinoeintritt
alter = int(input("Wie alt bist du? "))
mitglied = input("Bist du Mitglied? (ja/nein): ")

if alter >= 18 and mitglied == "ja":
    print("Du darfst kostenlos ins Kino!")
elif alter >= 18 and mitglied == "nein":
    print("Eintritt: 10€")
else:
    print("Kein Zutritt – du bist zu jung.")
