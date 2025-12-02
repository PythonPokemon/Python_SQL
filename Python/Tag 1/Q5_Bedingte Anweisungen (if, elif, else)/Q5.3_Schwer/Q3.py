# Aufgabe 9: Zahlenvergleich mit drei Werten
a = int(input("Zahl 1: "))
b = int(input("Zahl 2: "))
c = int(input("Zahl 3: "))

if a >= b and a >= c:
    print("Die größte Zahl ist:", a)
elif b >= a and b >= c:
    print("Die größte Zahl ist:", b)
else:
    print("Die größte Zahl ist:", c)
