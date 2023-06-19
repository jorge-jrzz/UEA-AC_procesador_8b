--Prueba del Mux4a1
library IEEE;
use IEEE.std_logic_1164.all;

 entity Mux4a1_tb is
 end Mux4a1_tb;
 
 architecture Ar_Mux4a1_tb of Mux4a1_tb is
    component Mux4a1 is
        port(
            in1,in2,in3,in4: in std_logic_vector(7 downto 0);
            ctrl : in std_logic_vector (1 downto 0);
            R: out std_logic_vector (7 downto 0)
        );
    end component;

 signal a: std_logic_vector(7 downto 0);
 signal b: std_logic_vector(7 downto 0);
 signal c: std_logic_vector(7 downto 0);
 signal d: std_logic_vector(7 downto 0);
 signal s: std_logic_vector(1 downto 0);

 begin 
   a <= "10110010"; 
   b <= "11111101";
   c <= "10101000";
   d <= "01011100";
   r0: Mux4a1 port map (a, b, c, d, s);
   s <= "00" after 0 ns, "01" after 5 ns, "11" after 10 ns;
 end Ar_Mux4a1_tb;   