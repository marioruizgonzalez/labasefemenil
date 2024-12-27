import time
from selenium import webdriver
from selenium.webdriver.firefox.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import csv

# Setup the Selenium WebDriver
geckodriver_path = "/Users/marioruiz/Documents/GitHub/labasefemenil/driver/geckodriver_mac"
output_dir = "/Users/marioruiz/Documents/GitHub/labasefemenil/salidas_mac"
service = Service(geckodriver_path)
driver = webdriver.Firefox(service=service)
driver.get("https://www.ligafemenil.mx/cancha/tablas/tablaGoleoCompleta/sp/54eaca472140c4")

# Click on the "Fase Final" tab
WebDriverWait(driver, 10).until(
    EC.element_to_be_clickable((By.ID, "tabFaseFnalGoleo"))).click()

# Wait for the AJAX content to load
WebDriverWait(driver, 10).until(
    EC.presence_of_element_located((By.CSS_SELECTOR, "table.tbl_goleos")))

# Extract and save initial data
def extract_and_save_data(filename):
    table_html = driver.find_element(By.CSS_SELECTOR, "table.tbl_goleos").get_attribute('outerHTML')
    soup = BeautifulSoup(table_html, 'html.parser')
    headers = [th.text.strip() for th in soup.find('thead').find_all('th')]
    data = [[td.text.strip() for td in tr.find_all('td')] for tr in soup.find('tbody').find_all('tr')]
    
    # Write data to CSV
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(headers)
        writer.writerows(data)
    print(f"Data extracted and saved to {filename}")

extract_and_save_data('2-GoleoFaseFinal.csv')

driver.quit()
