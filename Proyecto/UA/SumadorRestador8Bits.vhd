--Sumador de 8 bits empleando FA y HA
--El sumador posee bit de acarreo de entrada y salida

library IEEE;
use IEEE.std_logic_1164.all;


 entity SumadorRestador8Bits is
   --A y B entradas de 8 bits, cin entrada de un bit.
   --R y cout salida de 8 bits y acarreo de salida.
   port (A, B: in std_logic_vector (7 downto 0);
         cin: in std_logic;
         S : in std_logic;
         R: out std_logic_vector (7 downto 0); 
         cout: out std_logic;
         v: out std_logic);
 end SumadorRestador8Bits;
 
 architecture Ar_SumadorRestador8Bits of SumadorRestador8Bits is
   component Sumador8Bits
     port (A, B: in std_logic_vector (7 downto 0);
           cin: in std_logic;
           R: out std_logic_vector (7 downto 0); 
           cout: out std_logic;
           v: out std_logic);
   end component;

 signal Bp : std_logic_vector (7 downto 0);
 signal C : std_logic_vector (6 downto 0);
 signal w : std_logic;
 signal Cinp : std_logic;
 begin   
   Cinp <= S or (Cin and not(S));
   Bp(0) <= (not (S) and B(0)) or (S and not (B(0))); 
   Bp(1) <= (not (S) and B(1)) or (S and not (B(1)));
   Bp(2) <= (not (S) and B(2)) or (S and not (B(1)));
   Bp(3) <= (not (S) and B(3)) or (S and not (B(1)));
   Bp(4) <= (not (S) and B(4)) or (S and not (B(1)));
   Bp(5) <= (not (S) and B(5)) or (S and not (B(1)));
   Bp(6) <= (not (S) and B(6)) or (S and not (B(1)));
   Bp(7) <= (not (S) and B(7)) or (S and not (B(1)));
   Sumador8Bits0 : Sumador8Bits port map (A, Bp, cin, R, cout, v);
 end Ar_SumadorRestador8Bits;
 
 
 
 
 