from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import time

# Configuración del WebDriver para Firefox
geckodriver_path = "/Users/marioruiz/Downloads/chromedriver-mac-arm64/geckodriver"  # Ruta del geckodriver
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)

# URL del sitio
url = "https://www.ligafemenil.mx/cancha/estadisticahistorica"

# Abrir la página
driver.get(url)

# Función para manejar el error de conexión segura
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

# Función para extraer los datos de la tabla
def extract_table():
    try:
        # Esperar a que la tabla esté presente
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

# Obtener listas desplegables de temporadas y torneos
def get_dropdown_options(element_id):
    dropdown = Select(WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, element_id))
    ))
    return [option.text for option in dropdown.options], dropdown

# Obtener todas las opciones
temporadas, temporada_dropdown = get_dropdown_options("temporadasSelect")
torneos, torneo_dropdown = get_dropdown_options("torneosSelect")

# Almacenar los datos extraídos
all_data = []

# Iterar sobre temporadas y torneos
for temporada in temporadas:
    try:
        # Seleccionar temporada
        temporada_dropdown = Select(WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.ID, "temporadasSelect"))
        ))
        temporada_dropdown.select_by_visible_text(temporada)

        # Obtener las opciones disponibles en torneos
        torneos, torneo_dropdown = get_dropdown_options("torneosSelect")

        for torneo in torneos:
            try:
                # Seleccionar torneo
                torneo_dropdown = Select(WebDriverWait(driver, 10).until(
                    EC.presence_of_element_located((By.ID, "torneosSelect"))
                ))
                torneo_dropdown.select_by_visible_text(torneo)

                # Hacer clic en el botón "Buscar"
                buscar_button = WebDriverWait(driver, 10).until(
                    EC.element_to_be_clickable((By.ID, "btnBuscar"))
                )
                buscar_button.click()

                # Manejar el error de conexión segura si aparece
                handle_connection_error()

                # Esperar a que la tabla se actualice
                time.sleep(5)  # Ajusta este valor según sea necesario

                # Extraer datos de la tabla
                print(f"Extrayendo datos para Temporada: {temporada}, Torneo: {torneo}")
                table_data = extract_table()

                # Guardar cada tabla en un archivo CSV
                if table_data:
                    num_columns = len(table_data[0])
                    columns = [f"Columna_{i}" for i in range(1, num_columns + 1)]
                    df = pd.DataFrame(table_data, columns=columns)
                    filename = f"{temporada}_{torneo}.csv".replace(" ", "_")
                    df.to_csv(filename, index=False)
                    print(f"Datos guardados en {filename}")
            except Exception as e:
                print(f"Error con el torneo '{torneo}' de la temporada '{temporada}': {e}")
    except Exception as e:
        print(f"Error con la temporada '{temporada}': {e}")

# Cerrar el navegador
driver.quit()
