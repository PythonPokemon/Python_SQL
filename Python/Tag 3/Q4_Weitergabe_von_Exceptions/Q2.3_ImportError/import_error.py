""" 
Basis fehler
"""

#import nicht_existierend  

try:
    import nicht_existierend
except ImportError:
    print("❌ Fehler: Dieses Modul konnte nicht importiert werden!")
