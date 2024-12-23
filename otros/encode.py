import base64

def enmascarar_url_ligafemenil(original_url: str) -> str:
    """
    Genera una URL con el formato:
        https://www.ligafemenil.mx/ws/{bloque1_b64}@{bloque2_b64}
    donde:
      - bloque1_b64 = Base64(STD, sin '=' padding) de la parte antes del '?'
      - bloque2_b64 = Base64(STD, sin '=' padding) de la parte después del '?'
    """
    # 1) Encontrar posición del '?'
    idx = original_url.find('?')
    if idx == -1:
        # No hay '?', significa que no hay query.
        bloque1_str = original_url
        bloque2_str = ""
    else:
        bloque1_str = original_url[:idx]      # base+path
        bloque2_str = original_url[idx+1:]    # query string
    
    # 2) Codificar en Base64 estándar (no "urlsafe"), y quitar '=' del final
    def b64_no_padding(text):
        b = base64.b64encode(text.encode('utf-8')).decode('utf-8')
        return b.rstrip('=')
    
    bloque1_b64 = b64_no_padding(bloque1_str)
    bloque2_b64 = b64_no_padding(bloque2_str)
    
    # 3) Construir la cadena final: {bloque1_b64}@{bloque2_b64}
    return f"https://www.ligafemenil.mx/ws/{bloque1_b64}@{bloque2_b64}"


# ===== EJEMPLO DE USO =====
if __name__ == "__main__":
    original_url = (
        "https://appjvm-prtlwb.ligamex.net/api_siid-v1/srvjavaslct"
        "?hsh=|5898bb9e5cbc59c95bfa2963b33661e6d6a48f249e820923b7249"
        "a188c05533e2a081cef457f8c834bf8837ebaf5c371f4ea00d66aa3449b"
        "1234cc4764a95971|&psWidget=DSCP_SgmmTarjetas&objTemporada=75"
        "&objTorneo=1&objDivision=14&objZona=0&objIDClub=11185"
    )

    enmascarada = enmascarar_url_ligafemenil(original_url)
    print("URL original:")
    print(original_url)
    print("\nURL enmascarada:")
    print(enmascarada)
