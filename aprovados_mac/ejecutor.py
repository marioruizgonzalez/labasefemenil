import os
import subprocess

def execute_python_files():
    # Obtener el directorio actual
    current_dir = os.getcwd()

    # Listar todos los archivos en el directorio actual
    python_files = [f for f in os.listdir(current_dir) if f.endswith('.py') and f != os.path.basename(__file__)]

    if not python_files:
        print("No se encontraron archivos .py en el directorio actual.")
        return

    print("Archivos a ejecutar:")
    for i, file in enumerate(python_files, start=1):
        print(f"{i}. {file}")

    # Ejecutar cada archivo Python
    for file in python_files:
        print(f"\nEjecutando: {file}\n")
        try:
            subprocess.run(['python', file], check=True)
        except subprocess.CalledProcessError as e:
            print(f"Error al ejecutar {file}: {e}")

if __name__ == "__main__":
    execute_python_files()
