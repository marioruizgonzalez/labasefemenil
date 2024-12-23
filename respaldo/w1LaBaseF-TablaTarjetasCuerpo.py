import requests
from bs4 import BeautifulSoup
import pandas as pd

# URL of the API that returns the HTML code
url = "https://www.ligafemenil.mx/cancha/tablas/tablaTrjtCT/sp/54eaca472140c4"

# Send a GET request to the API
print(f"Sending GET request to {url}...")
response = requests.get(url)

# Check if the request was successful
print(f"Response status code: {response.status_code}")

if response.status_code == 200:
    html_content = response.text  # Save the HTML response in memory
    
    # Check if the response contains HTML
    if not html_content.strip():
        print("The response contains no content!")
    else:
        print("HTML content fetched successfully.")
    
    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(html_content, 'html.parser')
    
    # Check if the soup contains tables
    tables = soup.find_all("table", {"class": "tabla_lmx center_tabla text-center tbla-trjt"})
    print(f"Number of tables found with class 'tabla_lmx': {len(tables)}")
    
    if not tables:
        print("No tables with the specified class were found. Printing a portion of the HTML for debugging...")
        print(html_content[:1000])  # Print the first 1000 characters of the HTML to inspect
    
    # Extract data from each table
    table_data = []
    for index, table in enumerate(tables, start=1):
        print(f"Processing table {index}...")
        
        # Extract headers
        headers = [th.text.strip() for th in table.find('thead').find_all('th')]
        print(f"Headers for table {index}: {headers}")
        
        # Extract rows of data
        data = []
        for row in table.find('tbody').find_all('tr'):
            row_data = [td.text.strip() for td in row.find_all('td')]
            
            # Debug row length
            print(f"Row data: {row_data} (Length: {len(row_data)})")
            
            # Handle mismatched row length
            if len(row_data) == len(headers):
                data.append(row_data)
            else:
                print(f"Skipping row due to mismatch: {row_data}")
        
        print(f"Number of rows in table {index}: {len(data)}")
        
        # Create a Pandas DataFrame
        try:
            df = pd.DataFrame(data, columns=headers)
            table_data.append(df)
            
            # Print the table data
            print(f"\nTable {index} Data:")
            print(df)
            
            # Optionally save each table to a separate CSV file
            df.to_csv(f"table_{index}_data.csv", index=False, encoding="utf-8")
        except ValueError as e:
            print(f"Error creating DataFrame for table {index}: {e}")
else:
    print(f"Failed to fetch data from the API. Status code: {response.status_code}")