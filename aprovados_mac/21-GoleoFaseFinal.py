from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select, WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import pandas as pd
import time

# Configuración del WebDriver para Firefox
geckodriver_path = "/Users/marioruiz/Documents/GitHub/labasefemenil/geckodriver"  # Ruta del geckodriver
output_dir = "/Users/marioruiz/Documents/GitHub/labasefemenil/salidas_mac"
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)

# URL del sitio
url = "https://www.ligafemenil.mx/cancha/tablas/tablaGoleoCompleta/sp/54eaca472140c4"
driver.get(url)

def extract_table():
    try:
        # Wait for the table to be visible, not just present
        WebDriverWait(driver, 20).until(
            EC.presence_of_element_located((By.CSS_SELECTOR, "table.default.tbl_goleos")) # Ensure this class name is correct
        )
        
        #table = driver.find_element(By.CLASS_NAME, "default tbl_goleos")
        table = driver.find_element_by_class_name("default tbl_goleos")
        headers = [th.text.strip() for th in table.find_elements(By.TAG_NAME, "th")]
        rows = table.find_elements(By.TAG_NAME, "tr")[1:]  # Skip header row
        data = []
        for row in rows:
            cols = row.find_elements(By.TAG_NAME, "td")
            if cols:  # Check if the row has columns
                data.append([col.text.strip() for col in cols])
        return headers, data
    except Exception as e:
        print(f"Error extracting table: {e}")
        return [], []



buscar_button = WebDriverWait(driver, 10).until(
    EC.element_to_be_clickable((By.ID, "tabFaseFnalGoleo"))
)
buscar_button.click()
time.sleep(10)

table_data = extract_table()

if table_data:
    df = pd.DataFrame(table_data)
    filename = f"21-GoleoFaseFinal3.csv".replace(" ", "_")
    df.to_csv(filename, index=False)
    print(f"Datos guardados en {filename}")
    
  # Wait for the table to load (adjust the selector as needed)
table = WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.CSS_SELECTOR, "table.default.tbl_goleos"))
)
  

# Extract table data using BeautifulSoup
soup = BeautifulSoup(driver.page_source, 'html.parser')

# Extract table headers
headers = []
for th in table.find('thead').find_all('th'):
    headers.append(th.text.strip())

# Extract table data (rows)
data = []
for row in table.find('tbody').find_all('tr'):
    row_data = []
    for td in row.find_all('td'):
        cell_text = td.text.strip()
        row_data.append(cell_text)
    data.append(row_data)

# Print the extracted table data
print("Headers:", headers)
print("Data:")
for row in data:
    print(row)

# Close the browser

driver.quit()
