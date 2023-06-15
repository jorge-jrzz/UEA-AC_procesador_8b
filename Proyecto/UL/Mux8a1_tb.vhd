--Prueba del Mux4a1
library IEEE;
use IEEE.std_logic_1164.all;

 entity Mux8a1_tb is
 end Mux8a1_tb;
 
 architecture Ar_Mux8a1_tb of Mux8a1_tb is
    component Mux8a1 is
      port (
        D : in std_logic_vector(7 downto 0);
        S : in std_logic_vector(2 downto 0);
        R : out std_logic
      );
    end component;

 signal e: std_logic_vector(7 downto 0);
 signal c: std_logic_vector(2 downto 0);
 signal re: std_logic;

 begin 
   e <= "10110011";

   r0: Mux8a1 port map (e, c, re);
   c <= "000" after 0 ns, "001" after 5 ns, "011" after 10 ns, "100" after 15 ns;
 end Ar_Mux8a1_tb;   