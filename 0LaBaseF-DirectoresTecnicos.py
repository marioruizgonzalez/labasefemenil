from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import time

# Configuración del WebDriver para Firefox
geckodriver_path = "/Users/marioruiz/Documents/GitHub/labasefemenil/geckodriver"  # Ruta del geckodriver
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)

# URL del sitio
url = "https://www.ligafemenil.mx/cancha/tablas/tablaDrctTcnc/sp/54eaca472140c4"
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
            EC.presence_of_element_located((By.CLASS_NAME, "tabla_lmx"))
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
    filename = f"directores_tecnicos.csv".replace(" ", "_")
    df.to_csv(filename, index=False)
    print(f"Datos guardados en {filename}")

driver.quit()
