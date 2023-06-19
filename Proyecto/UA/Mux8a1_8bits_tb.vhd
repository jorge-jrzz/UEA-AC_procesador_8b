library ieee;
use ieee.std_logic_1164.all;

entity Mux8a1_8bits_tb is
end Mux8a1_8bits_tb;

architecture arch of Mux8a1_8bits_tb is
    component Mux8a1A 
            port(
                a1,a2,a3,a4,a5,a6,a7,a8: in std_logic;
                s: in std_logic_vector(2 downto 0);
                R: out std_logic
            );
    end component;

    signal A1: std_logic;
    signal A2: std_logic;
    signal A3: std_logic;
    signal A4: std_logic;
    signal A5: std_logic;
    signal A6: std_logic;
    signal A7: std_logic;
    signal A8: std_logic;
    signal s: std_logic_vector(2 downto 0);

    begin 
        A1 <= '1';
        A2 <= '1';
        A3 <= '0';
        A4 <= '1';
        A5 <= '0';
        A6 <= '0';
        A7 <= '1';
        A8 <= '1';

    m: Mux8a1A port map(A1,A2,A3,A4,A5,A6,A7,A8,s);

    s <= "000" after 0 ns, "001" after 5 ns, "010" after 10 ns,"011" after 15 ns;

end arch;