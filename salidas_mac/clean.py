import os

def clean_file(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            # Split the line by JSON objects (separated by commas outside JSON strings)
            json_strings = line.split(",\"")
            json_strings[0] = json_strings[0].replace('"', '')  # Clean the first JSON

            # Keep only the JSONs we want (indices 0, 1, 3, 5, and 10)
            selected_jsons = [json_strings[i] for i in range(len(json_strings)) if i not in [2, 4, 6, 7, 8, 9]]

            # Reconstruct the cleaned line
            cleaned_line = ",".join(selected_jsons)

            # Write the cleaned line to the output file
            outfile.write(cleaned_line + '\n')

def process_all_files_in_folder(folder_path):
    # Get all files in the folder
    for filename in os.listdir(folder_path):
        # Check if the file is a .csv file
        if filename.endswith(".csv"):
            input_file = os.path.join(folder_path, filename)
            output_file = os.path.join(folder_path, f"cleaned_{filename}")
            
            # Call the clean_file function
            clean_file(input_file, output_file)
            print(f"Processed: {filename}")

# Example usage
folder_path = "./"  # Set to the folder containing the files you want to process
process_all_files_in_folder(folder_path)
