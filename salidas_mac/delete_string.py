import os

# Define the strings to remove
strings_to_remove = ["{", "}", "type", "'", "text", "value", ":", "href", "link"]

# Define the additional replacements
additional_replacements = {
    ", ,": ",",
    '"': ''
}

def remove_strings_from_file(file_path, strings_to_remove, additional_replacements):
    try:
        # Read the file content
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()

        # Remove each string from the content
        for string in strings_to_remove:
            content = content.replace(string, '')

        # Perform additional replacements
        for target, replacement in additional_replacements.items():
            content = content.replace(target, replacement)

        # Write the updated content back to the file
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content)

        print(f"Processed: {file_path}")
    except Exception as e:
        print(f"Error processing {file_path}: {e}")

def process_files_in_directory(directory, strings_to_remove, additional_replacements):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.startswith("cleaned_"):
                file_path = os.path.join(root, file)
                remove_strings_from_file(file_path, strings_to_remove, additional_replacements)

if __name__ == "__main__":
    # Use the same directory as the script
    directory = os.path.dirname(os.path.abspath(__file__))

    if os.path.isdir(directory):
        process_files_in_directory(directory, strings_to_remove, additional_replacements)
        print("Processing completed.")
    else:
        print("Invalid directory path.")
