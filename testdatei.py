# """
# ---------------------------------------------------------------
# LZK Vorbereitung! | Übungsaufgaben
# ---------------------------------------------------------------
# """

# #--------------------------------------------------------------Aufgabe 1
# x = 1

# for z in range(0, 10):
#     print(x, z, end=" ") # Ergebnis? 1 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 

# #--------------------------------------------------------------Aufgabe 2
# v1 = v2 = v3 = True

# print(v2)               # Ergebnis? True

# #--------------------------------------------------------------Aufgabe 3
# a = b = c = 0

# print (a==b==c)         # Ergebnis? True

# #--------------------------------------------------------------Aufgabe 4
# anzahl = 8
# i = 0
# j = 1
# r = 1
# while i < anzahl:
#     print (j, end=" ")
#     j = j + r
#     if j == 5: r = -1
#     if j == 1: r = 1
#     i = i + 1          # Ergebnis? 1 2 3 4 5 4 3 2 



# #--------------------------------------------------------------Aufgabe 5
# # Welche Syntax ist für eine einseitige verzweigung richtig?
# """
# ---------------------------------------------------------------variante 1 ? falsch wegen semikolons
# if x>3;
#     a=a+1
# # ---------------------------------------------------------------variante 2 ? zweiseitieg verzweigung!
# if  x>3:
#     a=a+1
# else:
#     a=a-1
# # ---------------------------------------------------------------variante 3  Korrekt!
# if  x >3:
#     a=a+1
# ---------------------------------------------------------------
# """
# #--------------------------------------------------------------Aufgabe 6
# x = 37 % 7
# print( "X hat den wert: " + str(x))   # Ergebnis? Rest 2

# #--------------------------------------------------------------Aufgabe 7
# zahlenvergleich = 100
# if (zahlenvergleich > 30):
#     print("A")
# elif (zahlenvergleich > 50):
#     print("B")
# elif (zahlenvergleich >= 100):
#     print("C")


#Ausgabe ? A
# #--------------------------------------------------------------Aufgabe 8
# # sind die Ausgaben gleich?

# i = 20
# while (i > 0):
#     print(i)
#     i-=2

# #--------------------------------------

# for j in range (20, 0, -2):
#     print(j)                # Ergebnis? gleich!

# #--------------------------------------------------------------Aufgabe 9
# n = int(input("Eingabe: "))
# r=n
# i=n
# while (i!=0):
#     r = r + 1
#     i = i - 1
# print("r ist " + str(r))    # Ergebnis?

# #--------------------------------------------------------------