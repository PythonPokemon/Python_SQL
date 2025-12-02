"""
🔵 SCHWERE AUFGABEN – Mehrfache Bedingungen und kombinierte Logik
"""

# Beispiel 7: Zugangssystem mit Mitgliedschaft & Alter
mitglied = input("Bist du Mitglied? (ja/nein): ")
alter = int(input("Wie alt bist du? "))

if mitglied == "ja":
    print("Mitglied erkannt.")
    if alter >= 18:
        print("Zugang gewährt ✅")
    else:
        print("Zugang verweigert (unter 18) ❌")
else:
    print("Kein Mitglied – bitte registrieren.")
