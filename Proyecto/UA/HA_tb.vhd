--Prueba del Half Adder
library IEEE;
use IEEE.std_logic_1164.all;

 entity HA_tb is
 end HA_tb;
 
 architecture Ar_HA of HA_tb is
 component HA
   port (a, b: in std_logic;
         r, cout: out std_logic);
 end component;
 --Entradas
 signal a: std_logic;
 signal b: std_logic;
 --Salidas
 signal r0: std_logic;
 signal cout0: std_logic;
 begin 
   HA0: HA port map (a=>a, b=>b, r => r0, cout => cout0);
   process
   begin
     a <= '0';
     b <= '0';     
     wait for 1 ns;
     a <= '1';
     b <= '1';
     wait for 1 ns;
     wait;
   end process;
 end Ar_HA;   