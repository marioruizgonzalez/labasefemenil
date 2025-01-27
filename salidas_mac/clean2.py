import os
import re  # Import regex for cleaner extraction

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

                # Extract match description (from "value" field)
                value_match = re.search(r'"value":"(.*?)"', line)
                description = value_match.group(1) if value_match else "N/A"

                # Extract score from the "text" field
                text_match = re.search(r'"text":"(.*?)"', line)
                score = text_match.group(1) if text_match else "N/A"

                # Extract estadio href
                estadio_match = re.search(r'"href":"(https://www\.ligafemenil\.mx/cancha/estadio.*?)"', line)
                estadio_href = estadio_match.group(1) if estadio_match else "N/A"

                # Extract playlist href
                playlist_match = re.search(r'"href":"(https://www\.ligafemenil\.mx/cancha/playlist.*?)"', line)
                playlist_href = playlist_match.group(1) if playlist_match else "N/A"

                # Combine into a cleaned line
                cleaned_line = f"{season},{tournament},{description},{score},{estadio_href},{playlist_href}"
                outfile.write(cleaned_line + '\n')

                # Debug: Show the cleaned line
                print(f"Extracted: {cleaned_line}")
            except Exception as e:
                # Debug: Show problematic lines
                print(f"Skipping malformed line: {line.strip()}\nError: {e}")
                continue

def process_cleaned_files(folder_path):
    for filename in os.listdir(folder_path):
        if filename.startswith("cleaned_") and filename.endswith(".csv"):
            input_file = os.path.join(folder_path, filename)
            output_file = os.path.join(folder_path, f"final_{filename}")
            
            # Clean and extract
            clean_and_extract(input_file, output_file)
            print(f"Processed: {filename}")

# Example usage
folder_path = "./"  # Update to the directory containing your files
process_cleaned_files(folder_path)
