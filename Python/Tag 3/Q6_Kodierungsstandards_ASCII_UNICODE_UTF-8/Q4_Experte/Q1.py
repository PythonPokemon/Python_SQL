"""
🔴 Experten Aufgabe:

Nimm einen String mit Sonderzeichen: "Hello ☺ World Δ!".
Wandle jedes Zeichen in UTF-8 Bytes um.
Wandle die Bytes wieder zurück in ein Zeichen und zeige das Ergebnis.

🧩 Lernziel: Umgang mit UTF-8-Kodierung, Bytes und Decodierung.

✅ Erklärung:
    - encode("utf-8") wandelt Zeichen in Bytes um (z. B. für Dateien oder Netzwerke).
    - decode("utf-8") wandelt Bytes wieder zurück in Zeichen.
    - Zeigt, wie Unicode in UTF-8 gespeichert wird.
"""

text = "Hello ☺ World Δ!"
utf8_bytes = [char.encode("utf-8") for char in text]  # Zeichen → Bytes
print("UTF-8 Bytes:", utf8_bytes)

decoded_chars = [b.decode("utf-8") for b in utf8_bytes]  # Bytes → Zeichen
print("Zurückkodiert:", "".join(decoded_chars))