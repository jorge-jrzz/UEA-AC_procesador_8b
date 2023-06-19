@echo off
REM El script puede mejorar, pero para nuestros fines servirá...
REM Analiza los archivos
D:\MisProgramas\GHDL\bin\ghdl.exe -a %1.vhd 
D:\MisProgramas\GHDL\bin\ghdl.exe -a %1_tb.vhd
REM Crea el "ejecutable"...
D:\MisProgramas\GHDL\bin\ghdl.exe -e %1_tb
REM Ejecuta...
D:\MisProgramas\GHDL\bin\ghdl.exe -r %1_tb --vcd=%1.vcd
REM Muestra los resultados de la ejecución en GTKWave.
D:\MisProgramas\gtkwave64\bin\gtkwave.exe %1.vcd
