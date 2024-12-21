from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import time

# Configuración del WebDriver para Firefox
geckodriver_path = "C:/Users/ShePlay/Documents/GitHub/labasefemenil/driver/geckodriver.exe"  # Ruta del geckodriver
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)
# Navigate to the URL
url = "https://www.ligafemenil.mx/cancha/tablas/tablaGoleoCompleta/sp/54eaca472140c4"
driver.get(url)

# Click the "Fase Final" button
button = WebDriverWait(driver, 10).until(
    EC.element_to_be_clickable((By.CSS_SELECTOR, ".tabportada:nth-child(2)"))
)
button.click()

# Wait for the table to load
table = WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.CSS_SELECTOR, "table.default.tbl_goleos"))
)

# Get the HTML content of the table
table_html = table.get_attribute('outerHTML')

# Parse the HTML content with BeautifulSoup
soup = BeautifulSoup(table_html, 'html.parser')

# Extract table headers and data
headers = []
for th in soup.find('thead').find_all('th'):
    headers.append(th.text.strip())

data = []
for row in soup.find('tbody').find_all('tr'):
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

# Close the brows