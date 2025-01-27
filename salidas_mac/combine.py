import os

def combine_files(input_directory, output_file):
    with open(output_file, 'w') as outfile:
        for filename in os.listdir(input_directory):
            # Check if the file starts with 'final_' and is a file
            if filename.startswith("final_") and os.path.isfile(os.path.join(input_directory, filename)):
                file_path = os.path.join(input_directory, filename)
                print(f"Adding content from {filename}")  # Debug: Show which file is being processed
                
                with open(file_path, 'r') as infile:
                    for line in infile:
                        outfile.write(line)  # Write each line to the output file

    print(f"All files combined into {output_file}")

# Example usage
input_directory = "./"  # Replace with the directory containing your files
output_file = "combined_final_output.csv"  # The output file to store the combined content

combine_files(input_directory, output_file)
