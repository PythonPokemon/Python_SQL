
"""
Mehrzeilieger Kommentar
"""
# einzeilieger kommentar





try:
    zahleneingabe = int(input("Gib etwas ein: "))
    print(zahleneingabe)
except ValueError:
    print(" Du hast einen falschen Wert eingegeben, zu erwarten ist eine ganzzahl!")