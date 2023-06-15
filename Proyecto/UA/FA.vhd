--Full Adder
library IEEE;
use IEEE.std_logic_1164.all;

 entity FA is
   --a y b entradas, cin acarreo de entrada.
   --r y cout salida y acarreo de salida.
   port (a, b, cin: in std_logic;
         r, cout: out std_logic);
 end FA;
 
 architecture Ar_FA of FA is
 begin
   cout <= (a and cin) or (a and b) or (b and cin);
   r <= (a xor (b xor cin));
 end Ar_FA;