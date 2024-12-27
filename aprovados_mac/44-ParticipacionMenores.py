from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import time

# Configuración del WebDriver para Firefox
geckodriver_path = "/Users/marioruiz/Documents/GitHub/labasefemenil/driver/geckodriver_mac"  # Ruta del geckodriver
output_dir = "/Users/marioruiz/Documents/GitHub/labasefemenil/salidas_mac"
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)

# URL del sitio
url = "https://www.ligafemenil.mx/cancha/tablas/tablaMnrs/eyAicGllVGFibGEiOiI8ZGl2PjxzdHJvbmc+TWVub3JlcyBMSUdBIE1YIEZlbWVuaWw8L3N0cm9uZz48L2Rpdj5SZWdsYW1lbnRvIGRlIENvbXBldGVuY2lhIExJR0EgTVggRmVtZW5pbCwgVGVtcG9yYWRhIDIwMjQtMjAyNTwvYnI+TWludXRvcyBt7W5pbW9zIHBvciBBY3VtdWxhciBlbiBlbCBUb3JuZW86IDEsMDAwPC9icj5N4XhpbW8gZGUgbWludXRvcyBhIGNvbnNpZGVyYXIgcG9yIFBhcnRpZG86IDE4MDwvYnI+PC9icj48ZGl2PjxzdHJvbmc+Q2F0ZWdvcu1hczwvc3Ryb25nPjwvZGl2PjEuIEVsIDEwMCUgZGUgbG9zIG1pbnV0b3MganVnYWRvcyBhIGxhcyBKdWdhZG9yYXMgbmFjaWRhcyBkZWwgMbAgZGUgZW5lcm8gZGUgMjAwNCBhbCAzMSBkZSBkaWNpZW1icmUgMjAwOC4ifQ==/54eaca472140c4"
driver.get(url)

def handle_connection_error():
    try:
        retry_button = WebDriverWait(driver, 5).until(
            EC.element_to_be_clickable((By.XPATH, "//button[text()='Intentar de nuevo']"))
        )
        print("Error de conexión detectado. Intentando reconectar...")
        retry_button.click()
        time.sleep(5)  # Esperar después de presionar el botón
    except Exception as e:
        print("No se detectó el error de conexión o el botón no está disponible:", e)

def extract_table():
    try:
        table = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.CLASS_NAME, "tblmnrs"))
        )
        rows = table.find_elements(By.TAG_NAME, "tr")
        data = []
        for row in rows:
            cols = row.find_elements(By.TAG_NAME, "td")
            cols_text = [col.text.strip() for col in cols]
            if cols_text:
                data.append(cols_text)
        return data
    except Exception as e:
        print(f"Error al extraer la tabla: {e}")
        return []

all_data = []

handle_connection_error()
time.sleep(5)
table_data = extract_table()

if table_data:
    num_columns = len(table_data[0])
    df = pd.DataFrame(table_data)
    filename = f"44-ParticipacionMenores.csv".replace(" ", "_")
    df.to_csv(filename, index=False)
    print(f"Datos guardados en {filename}")

driver.quit()
