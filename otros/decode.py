import base64
from urllib.parse import urlparse

def fix_base64_padding(s: str) -> str:
    """Agrega '=' para que la longitud de s sea múltiplo de 4."""
    return s + "=" * ((4 - len(s) % 4) % 4)

def desenmascarar_url_ligafemenil(enmascarada_url):
    """
    Dada una URL en el formato:
      https://www.ligafemenil.mx/ws/{bloque1_b64}@{bloque2_b64}
    decodifica cada bloque y retorna la URL original (scheme://host/path?query).
    """

    parsed = urlparse(enmascarada_url)
    # Suponiendo que la parte '/ws/' viene en parsed.path
    path_sin_ws = parsed.path
    prefix = "/ws/"
    if path_sin_ws.startswith(prefix):
        path_sin_ws = path_sin_ws[len(prefix):]
    # path_sin_ws ahora debe contener algo tipo: "aHR0cHM6Ly9h...@aHNhaD0..."

    if "@" not in path_sin_ws:
        raise ValueError("No se encontró '@'. Formato no válido o faltan parámetros")

    bloque1_b64, bloque2_b64 = path_sin_ws.split("@", 1)

    # Arreglar padding si fuera necesario
    bloque1_b64 = fix_base64_padding(bloque1_b64)
    bloque2_b64 = fix_base64_padding(bloque2_b64)

    # Decodificar
    bloque1 = base64.b64decode(bloque1_b64).decode("utf-8")
    bloque2 = base64.b64decode(bloque2_b64).decode("utf-8")

    # Reconstruir la URL original
    original_url = f"{bloque1}?{bloque2}"
    return original_url


if __name__ == "__main__":
    # Ejemplo de URL enmascarada
    enmascarada = (
        "https://www.ligafemenil.mx/ws/aHR0cHM6Ly9hcHhqdm0tcHJ0bHdiLmxpZ2FteC5uZXQvYXBpX3NpaWQtdjEvc3J2amF2YXNsY3Q@aHNhaD18NTg5OGJiOWU1Y2JjNTljOTViZmEyOTYzYjMzNjYxZTZkNmE0OGYyNDllODIwOTIzYjcyNDlhMTg4YzA1NTMzZTJhMDgxY2VmNDU3ZjhjODM0YmY4ODM3ZWJhZjVjMzcxZjRlYTAwZDY2YWEzNDQ5YjEyMzRjYzQ3NjRhOTU5NzF8JnBzV2lkZ2V0PURTQ1BfU2dtdFRhcmpldGFzJm9ialRlbXBvcmFkYT03NSZvYmpUb3JuZW89MSZvYmpEaXZpc2lvbj0xNCZvYmpab25hPTAmb2JqSURDbHViPTExMTg1"
    )

    try:
        original = desenmascarar_url_ligafemenil(enmascarada)
        print("URL enmascarada:\n", enmascarada)
        print("\nURL original (desenmascarada):\n", original)

    except Exception as e:
        print("Error al desenmascarar:", e)
