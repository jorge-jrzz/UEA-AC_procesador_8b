import os

# Ruta del compilador
RUTA_JORGE = "/Users/jorge/Desktop/VHDL/ghdl-compiler/bin/ghdl"
RUTA_LEO = ""
RUTA_RO = ""

archivo = input("Ingresa el nombre del del archivo (sin extencion): ")

print("1. Verificar sintaxis.")
print("2. Compilar archivo.")
print("3. Compilar tb.")
print("4. Crear ejecutable.")
print("5. Crear .vcd")
print("6. Salir\n")
opcion = input("Que quieres hacer: ")

if os.name == "posix" or os.name == "mac":

    while opcion != '6':
        if opcion == '1':
            os.system(f"{RUTA_JORGE} -s {archivo}.vhd")
        elif opcion == '2':
            os.system(f"{RUTA_JORGE} -a {archivo}.vhd")
        elif opcion == '3':
            os.system(f"{RUTA_JORGE} -a {archivo}_tb.vhd")
        elif opcion == '4':
            os.system(f"{RUTA_JORGE} -e {archivo}_tb")
        elif opcion == '5':
            os.system(f"{RUTA_JORGE} -r {archivo}_tb --vcd={archivo}.vcd")

        opcion = input("Que mas quieres hacer: ")

    # print(f"{RUTA_JORGE} -s {archivo}.vhd")
elif os.name == "ce" or os.name == "nt" or os.name == "dos":

    who = input("¿Quien eres? (R/L ")
    if who == 'R':
        while opcion != '6':
            if opcion == '1':
                os.system(f"{RUTA_RO} -s {archivo}.vhd")
            elif opcion == '2':
                os.system(f"{RUTA_RO} -a {archivo}.vhd")
            elif opcion == '3':
                os.system(f"{RUTA_RO} -a {archivo}_tb.vhd")
            elif opcion == '4':
                os.system(f"{RUTA_RO} -e {archivo}_tb")
            elif opcion == '5':
                os.system(f"{RUTA_RO} -r {archivo}_tb --vcd={archivo}.vcd")

            opcion = input("Que mas quieres hacer: ")

    elif who == 'L':
        while opcion != '6':
            if opcion == '1':
                os.system(f"{RUTA_LEO} -s {archivo}.vhd")
            elif opcion == '2':
                os.system(f"{RUTA_LEO} -a {archivo}.vhd")
            elif opcion == '3':
                os.system(f"{RUTA_LEO} -a {archivo}_tb.vhd")
            elif opcion == '4':
                os.system(f"{RUTA_LEO} -e {archivo}_tb")
            elif opcion == '5':
                os.system(f"{RUTA_LEO} -r {archivo}_tb --vcd={archivo}.vcd")

            opcion = input("Que mas quieres hacer: ")
