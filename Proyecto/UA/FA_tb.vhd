--Full Adder
library IEEE;
use IEEE.std_logic_1164.all;

 entity FA_tb is
 end FA_tb;
 
architecture arch of FA_tb is
    component FA
        port (a, b, cin: in std_logic;
        r, cout: out std_logic
        );
    end component;

    --Entradas
    signal A: std_logic;
    signal B: std_logic;
    signal CIN: std_logic;

    --Salidas
    signal R : std_logic;
    signal COUT: std_logic;

    begin
        f: FA port map(A,B,CIN);   
        process 
            begin    
                --Prueba de FA 1+1 es 10
                A <= '1';
                B <= '1';
                CIN <= '1';
                wait for 1 ns;
                A <= '0';
                B <= '1';
                CIN <= '0';
                wait for 1 ns;
                wait;
            end process;

 end arch;