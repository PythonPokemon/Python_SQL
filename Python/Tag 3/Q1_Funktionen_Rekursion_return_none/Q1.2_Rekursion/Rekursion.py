""" 
📌 Was ist Rekursion?
Eine Funktion, die sich selbst aufruft. Wird oft in Mathe benutzt.

💡 Beispiel: Fakultät (5! = 5×4×3×2×1)
"""

def fakultaet(n):
    if n == 1:
        return 1
    return n * fakultaet(n - 1)

print(fakultaet(5))  # Ergebnis: 120
