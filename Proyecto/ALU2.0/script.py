import os

# Ruta del compilador
RUTA_MAC = "/Users/jorge/ghdl-compiler/bin/ghdl"
RUTA_WIN = "D:\\Ghdl\\bin\\ghdl.exe"

archivo = input("Ingresa el nombre del del archivo (sin extencion): ")

print("1. Verificar sintaxis.")
print("2. Compilar archivo.")
print("3. Compilar tb.")
print("4. Crear ejecutable.")
print("5. Crear .vcd")
print("6. Abrir el archivo .vcd en GTKWave")
print("7. Verificar otro archivo.")
print("8. Salir\n")
opcion = input("Que quieres hacer: ")

if os.name == "posix" or os.name == "mac":

    while opcion != '8':
        if opcion == '1':
            os.system(f"{RUTA_MAC} -s {archivo}.vhd")
        elif opcion == '2':
            os.system(f"{RUTA_MAC} -a {archivo}.vhd")
        elif opcion == '3':
            os.system(f"{RUTA_MAC} -a {archivo}_tb.vhd")
        elif opcion == '4':
            os.system(f"{RUTA_MAC} -e {archivo}_tb")
        elif opcion == '5':
            os.system(f"{RUTA_MAC} -r {archivo}_tb --vcd={archivo}.vcd")
        elif opcion == '6':
            os.system(f"open {archivo}.vcd")
        elif opcion == '7':
            archivo = input("Nuevo archivo (sin extencion): ")

        opcion = input("Que mas quieres hacer?: ")

elif os.name == "ce" or os.name == "nt" or os.name == "dos":
        
    while opcion != '8':
        if opcion == '1':
            os.system(f"{RUTA_WIN} -s {archivo}.vhd")
        elif opcion == '2':
            os.system(f"{RUTA_WIN} -a {archivo}.vhd")
        elif opcion == '3':
            os.system(f"{RUTA_WIN} -a {archivo}_tb.vhd")
        elif opcion == '4':
            os.system(f"{RUTA_WIN} -e {archivo}_tb")
        elif opcion == '5':
            os.system(f"{RUTA_WIN} -r {archivo}_tb --vcd={archivo}.vcd")
        elif opcion == '6':
            os.system(f"start {archivo}.vcd")
        elif opcion == '7':
            archivo = input("Nuevo archivo (sin extencion): ")

        opcion = input("Que mas quieres hacer: ")
