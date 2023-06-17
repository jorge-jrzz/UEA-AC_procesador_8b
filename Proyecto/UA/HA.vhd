--Half Adder
library IEEE;
use IEEE.std_logic_1164.all;

 entity HA is
   --a y b entradas.
   --r y cout salida y acarreo de salida.
   port (a, b: in std_logic;
         r, cout: out std_logic);
 end HA;
 
 architecture Ar_HA of HA is
 begin
   cout <= (a and b);
   r <= (a xor b);
 end Ar_HA;