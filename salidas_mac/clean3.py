import os

def clean_and_extract(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            # Skip empty lines
            if not line.strip():
                continue
            
            try:
                # Debug: Show the line being processed
                print(f"Processing line: {line.strip()}")

                # Extract season
                season = line.split(",")[0].strip()

                # Extract tournament (e.g., "Apertura", "Clausura")
                tournament = line.split(",")[1].strip().strip('"')

                # Extract match date and description from the first JSON object with "value"
                value_start = line.find("'value': '") + len("'value': '")
                value_end = line.find("'}", value_start)
                description = line[value_start:value_end]

                # Extract estadio href
                estadio_start = line.find("'href': 'https://www.ligafemenil.mx/cancha/estadio") + len("'href': '")
                estadio_end = line.find("',", estadio_start)
                estadio_href = line[estadio_start:estadio_end]

                # Extract playlist href
                playlist_start = line.find("'href': 'https://www.ligafemenil.mx/cancha/playlist") + len("'href': '")
                playlist_end = line.find("',", playlist_start)
                playlist_href = line[playlist_start:playlist_end]

                # Construct the cleaned line as a single line
                cleaned_line = f'{season},"{tournament}",{description},{estadio_href},{playlist_href}'
                outfile.write(cleaned_line + '\n')

                # Debug: Show the cleaned line
                print(f"Extracted: {cleaned_line}")
            except Exception as e:
                print(f"Error processing line: {line.strip()}\nError: {e}")
                continue

def process_cleaned_files(folder_path):
    print(f"Looking for files in folder: {folder_path}")  # Debug: Show folder being processed
    for filename in os.listdir(folder_path):
        if filename.startswith("cleaned_") and filename.endswith(".csv"):
            input_file = os.path.join(folder_path, filename)
            output_file = os.path.join(folder_path, f"final_{filename}")
            
            print(f"Processing file: {filename}")  # Debug: Show file being processed
            clean_and_extract(input_file, output_file)
            print(f"Finished processing file: {filename}")

# Example usage
folder_path = "./"  # Update to the directory containing your files
process_cleaned_files(folder_path)
