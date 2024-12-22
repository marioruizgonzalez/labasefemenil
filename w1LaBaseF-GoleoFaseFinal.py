import requests
from bs4 import BeautifulSoup
import pandas as pd

# URL of the API that returns the HTML code
url = "https://www.ligafemenil.mx/cancha/tablas/tablaGoleoCompleta/sp/54eaca472140c4"

# Send a GET request to the API
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    html_content = response.text  # Save the HTML response in memory
    
    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(html_content, 'html.parser')
    
    # Find all tables with the class "tbl_goleos"
    tables = soup.find_all("table", {"class": "default tbl_goleos"})
    
    # Extract data from each table
    table_data = []
    for index, table in enumerate(tables, start=1):
        # Extract headers
        headers = [th.text.strip() for th in table.find('thead').find_all('th')]
        
        # Extract rows of data
        data = []
        for row in table.find('tbody').find_all('tr'):
            row_data = [td.text.strip() for td in row.find_all('td')]
            data.append(row_data)
        
        # Create a Pandas DataFrame
        df = pd.DataFrame(data, columns=headers)
        table_data.append(df)
        
        # Print the table data
        print(f"\nTable {index} Data:")
        print(df)
        
        # Optionally save each table to a separate CSV file
        df.to_csv(f"table_{index}_data.csv", index=False, encoding="utf-8")
else:
    print(f"Failed to fetch data from the API. Status code: {response.status_code}")
