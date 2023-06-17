library IEEE;
use IEEE.std_logic_1164.all;

entity Sumador8Bits_tb is
end Sumador8Bits_tb;

architecture arch of Sumador8Bits_tb is
   
    component Sumador8Bits
        port (A, B: in std_logic_vector (7 downto 0);
         cin: in std_logic;
         R: out std_logic_vector (7 downto 0); 
         cout: out std_logic;
         v: out std_logic
         );
    end component;

    signal a: std_logic_vector(7 downto 0);
    signal b: std_logic_vector(7 downto 0);
    signal cin: std_logic;

    begin 
        sum: Sumador8bits port map(a,b,cin);
        process
            begin   
                a <= "01010101";
                b <= "01010100";
                cin <= '0';
                wait for 1 ns;
                a <= "00000001";
                b <= "00000011";
                cin <= '0';
                wait for 1 ns;
                wait;
        end process;
end arch;