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
url = "https://www.ligafemenil.mx/cancha/estadisticahistorica"
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
            EC.presence_of_element_located((By.CLASS_NAME, "tbl_grals"))
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
    
def extract_table_goleo():
    try:
        table = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.CLASS_NAME, "tbl_goleos"))
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

def get_dropdown_options(element_id):
    dropdown = Select(WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, element_id))
    ))
    return [option.text for option in dropdown.options], dropdown

temporadas, temporada_dropdown = get_dropdown_options("temporadasSelect")
torneos, torneo_dropdown = get_dropdown_options("torneosSelect")

all_data = []

for temporada in temporadas:
    try:
        temporada_dropdown = Select(WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.ID, "temporadasSelect"))
        ))
        temporada_dropdown.select_by_visible_text(temporada)
        torneos, torneo_dropdown = get_dropdown_options("torneosSelect")
        for torneo in torneos:
            try:
                torneo_dropdown = Select(WebDriverWait(driver, 10).until(
                    EC.presence_of_element_located((By.ID, "torneosSelect"))
                ))
                torneo_dropdown.select_by_visible_text(torneo)
                buscar_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.ID, "btnBuscar"))
                )
                buscar_button.click()
                handle_connection_error()
                time.sleep(5)
                print(f"Extrayendo datos para Temporada: {temporada}, Torneo: {torneo}")
                table_data = extract_table()
                table_data2 = extract_table_goleo()
                if table_data:
                    modified_data = [[temporada, torneo] + row for row in table_data]
                    num_columns = len(modified_data[0])
                    columns = ['Temporada', 'Torneo'] + [f"Columna_{i}" for i in range(3, num_columns + 1)]
                    df = pd.DataFrame(modified_data, columns=columns)
                    filename = f"1-EstHist_{temporada}_{torneo}.csv".replace(" ", "_")
                    df.to_csv(filename, index=False)
                    print(f"Datos guardados en {filename}")
                    
                if table_data2:
                    modified_data = [[temporada, torneo] + row for row in table_data2]
                    num_columns = len(modified_data[0])
                    columns = ['Temporada', 'Torneo'] + [f"Columna_{i}" for i in range(3, num_columns + 1)]
                    df = pd.DataFrame(modified_data, columns=columns)
                    filename = f"1-EstHist_{temporada}_{torneo}_goleo.csv".replace(" ", "_")
                    df.to_csv(filename, index=False)
                    print(f"Datos guardados en {filename}")
            except Exception as e:
                print(f"Error con el torneo '{torneo}' de la temporada '{temporada}': {e}")
    except Exception as e:
        print(f"Error con la temporada '{temporada}': {e}")

driver.quit()
