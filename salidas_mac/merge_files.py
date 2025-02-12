import os


def merge_cleaned_files(directory, output_file):
    try:
        # Open the output file in write mode
        with open(output_file, 'w', encoding='utf-8') as outfile:
            for root, _, files in os.walk(directory):
                for file in files:
                    if file.startswith("cleaned_"):
                        file_path = os.path.join(root, file)

                        # Read the file content
                        with open(file_path, 'r', encoding='utf-8') as infile:
                            lines = infile.readlines()

                            # Skip the first line and write the rest to the output file
                            if len(lines) > 1:
                                outfile.writelines(lines[1:])
                                outfile.write("\n")  # Add a newline between files

                        print(f"Processed: {file_path}")

        print(f"All files merged into {output_file}")
    except Exception as e:
        print(f"Error processing files: {e}")

if __name__ == "__main__":
    # Use the same directory as the script
    directory = os.path.dirname(os.path.abspath(__file__))
    output_file = os.path.join(directory, "merged_cleaned_files.csv")

    merge_cleaned_files(directory, output_file)
