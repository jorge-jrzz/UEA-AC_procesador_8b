--Sumador de 8 bits empleando FA y HA
--El sumador posee bit de acarreo de entrada y salida

library IEEE;
use IEEE.std_logic_1164.all;


 entity Sumador8Bits is
   --A y B entradas de 8 bits, cin entrada de un bit.
   --R y cout salida de 8 bits y acarreo de salida.
   port (A, B: in std_logic_vector (7 downto 0);
         cin: in std_logic;
         R: out std_logic_vector (7 downto 0); 
         cout: out std_logic;
         v: out std_logic);
 end Sumador8Bits;
 
 architecture Ar_Sumador8Bits of Sumador8Bits is
   component FA
     port (a, b, cin: in std_logic;
           r, cout: out std_logic);
   end component;

 signal C : std_logic_vector (6 downto 0);
 signal w : std_logic;
 begin
   Sumador0: FA port map (A(0), B(0), cin, R(0), C(0)); 
   Sumador1: FA port map (A(1), B(1), C(0), R(1), C(1)); 
   Sumador2: FA port map (A(2), B(2), C(1), R(2), C(2)); 
   Sumador3: FA port map (A(3), B(3), C(2), R(3), C(3)); 
   Sumador4: FA port map (A(4), B(4), C(3), R(4), C(4)); 
   Sumador5: FA port map (A(5), B(5), C(4), R(5), C(5)); 
   Sumador6: FA port map (A(6), B(6), C(5), R(6), C(6)); 
   Sumador7: FA port map (A(7), B(7), C(6), R(7), cout => w); 
   cout <= w;
   v <= w xor C(6);
 end Ar_Sumador8Bits;
 
 
 
 
 