from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import time

geckodriver_path = "/Users/marioruiz/Documents/GitHub/labasefemenil/driver/geckodriver_mac"  # Ruta del geckodriver
output_dir = "/Users/marioruiz/Documents/GitHub/labasefemenil/salidas_mac"
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)

url = "https://www.ligafemenil.mx/cancha/partidos"
driver.get(url)

def handle_connection_error():
    try:
        retry_button = WebDriverWait(driver, 15).until(
            EC.element_to_be_clickable((By.XPATH, "//button[text()='Intentar de nuevo']"))
        )
        print("Error de conexión detectado. Intentando reconectar...")
        retry_button.click()
        time.sleep(5)
    except Exception as e:
        print("No se detectó el error de conexión o el botón no está disponible:", e)

def extract_table():
    try:
        # Wait for the table to be visible
        table = WebDriverWait(driver, 15).until(
            EC.presence_of_element_located((By.ID, "bodyPartido"))
        )
        
        # Get all rows from the table body
        rows = table.find_elements(By.TAG_NAME, "tr")
        data = []
        
        # Iterate over each row
        for row in rows:
            cols = row.find_elements(By.TAG_NAME, "td")
            row_data = []
            
            for col in cols:
                # Check for <a> tags with the class "loadershow" within the column
                link = col.find_elements(By.CLASS_NAME, "loadershow")
                if link:
                    # Get the href attribute and the text content of the link
                    href = link[0].get_attribute("href")
                    link_text = link[0].text.strip()
                    row_data.append({"type": "link", "href": href, "text": link_text})
                else:
                    # If no link is found, add the text content
                    text = col.text.strip()
                    row_data.append({"type": "text", "value": text})
            
            if row_data:
                data.append(row_data)
        
        return data
    except Exception as e:
        print(f"Error al extraer la tabla: {e}")
        return []



def get_dropdown_options(element_id):
    dropdown = Select(WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, element_id))
    ))
    return [option.text for option in dropdown.options if option.text != "- Todos -"], dropdown

temporadas, temporada_dropdown = get_dropdown_options("temporadasSelect")

for temporada in temporadas:
    try:
        temporada_dropdown = Select(WebDriverWait(driver, 15).until(
            EC.presence_of_element_located((By.ID, "temporadasSelect"))
        ))
        temporada_dropdown.select_by_visible_text(temporada)
        torneos, torneo_dropdown = get_dropdown_options("torneosSelect")
        for torneo in torneos:
            try:
                torneo_dropdown = Select(WebDriverWait(driver, 15).until(
                    EC.presence_of_element_located((By.ID, "torneosSelect"))
                ))
                torneo_dropdown.select_by_visible_text(torneo)
                buscar_button = WebDriverWait(driver, 15).until(
                    EC.element_to_be_clickable((By.ID, "btnBuscarMarcador"))
                )
                buscar_button.click()
                handle_connection_error()
                time.sleep(5)
                print(f"Extrayendo datos para Temporada: {temporada}, Torneo: {torneo}")
                table_data = extract_table()
                if table_data:
                    modified_data = [[temporada, torneo] + row for row in table_data]
                    num_columns = len(modified_data[0])
                    columns = ['Temporada', 'Torneo'] + [f"Columna_{i}" for i in range(3, num_columns + 1)]
                    df = pd.DataFrame(modified_data, columns=columns)
                    filename = f"{output_dir}/1-Debug-Partidos_{temporada}_{torneo}.csv".replace(" ", "_")
                    df.to_csv(filename, index=False)
                    print(f"Datos guardados en {filename}")
            except Exception as e:
                print(f"Error con el torneo '{torneo}' de la temporada '{temporada}': {e}")
    except Exception as e:
        print(f"Error con la temporada '{temporada}': {e}")

driver.quit()
