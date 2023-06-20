--Prueba del Full Adder
library IEEE;
use IEEE.std_logic_1164.all;

 entity FA_tb is
 end FA_tb;
 
 architecture Ar_FA of FA_tb is
 component FA
   port (a, b, cin: in std_logic;
         r, cout: out std_logic);
 end component;
 --Entradas
 signal a: std_logic;
 signal b: std_logic;
 signal cin: std_logic;
 --Salidas
 signal r0: std_logic;
 signal cout0: std_logic;
 begin 
   FA0: FA port map (a=>a, b=>b, cin => cin, r => r0, cout => cout0);
   process
   begin
     a <= '0';
     b <= '0';
     cin <= '0';
     wait for 1 ns;
     a <= '0';
     b <= '0';
     cin <= '1';   
     wait for 1 ns;
     a <= '1';
     b <= '0';
     cin <= '1';   
     wait for 1 ns;
     a <= '1';
     b <= '1';
     cin <= '1';   
     wait for 1 ns;
     wait;
   end process;
 end Ar_FA;  