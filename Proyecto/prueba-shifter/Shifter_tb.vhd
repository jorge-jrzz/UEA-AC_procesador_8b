--Prueba del Shifter
library IEEE;
use IEEE.std_logic_1164.all;

 entity Shifter_tb is
 end Shifter_tb;
 
 architecture Ar_Shifter_tb of Shifter_tb is
    component Shifter is
        port
        (
            A: in std_logic_vector (7 downto 0);
            set: in std_logic_vector (1 downto 0);
            R: out std_logic_vector (7 downto 0)
        );
    end component;

 signal a: std_logic_vector(7 downto 0);
 signal s: std_logic_vector(1 downto 0);

 begin 
   a <= "10001101";

   r: Shifter port map (a, s);
   s <= "10" after 0 ns, "11" after 5 ns, "10" after 10 ns;
 end Ar_Shifter_tb;   