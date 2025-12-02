# Beispiel 2: Altersprüfung mit zusätzlicher Bedingung
alter = int(input("Wie alt bist du? "))

if alter >= 18:
    print("Du bist volljährig.")
    if alter >= 65:
        print("Du bist Rentner.")
else:
    print("Du bist minderjährig.")
