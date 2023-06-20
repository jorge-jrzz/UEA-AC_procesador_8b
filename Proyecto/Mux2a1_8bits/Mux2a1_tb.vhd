--Prueba del Shifter
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux2a1_tb is
end Mux2a1_tb;

architecture Ar_Mux2a1_tb of Mux2a1_tb is
    component Mux2a1_8 is
        port 
        (
            A, B: in std_logic_vector (7 downto 0);
            set: in std_logic;
            r: out std_logic_vector (7 downto 0)
        );
    end component;

    signal a: std_logic_vector(7 downto 0);
    signal b: std_logic_vector(7 downto 0);
    signal s: std_logic;

    begin 
        a <= "10001101";
        b <= "11110000";

        r: Mux2a1_8 port map (a, b, s);
        s <= '0' after 0 ns, '1' after 5 ns, '0' after 10 ns;
    end Ar_Mux2a1_tb;   