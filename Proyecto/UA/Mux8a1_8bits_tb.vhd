library ieee;
use ieee.std_logic_1164.all;

entity Mux8a1_8bits_tb is
end Mux8a1_8bits_tb;

architecture arch of Mux8a1_8bits_tb is
    component Mux8a1_8bits
        port(
            a1,a2,a3,a4,a5,a6,a7,a8: in std_logic_vector(7 downto 0);
            s: in std_logic_vector(2 downto 0);
            R: out std_logic_vector(7 downto 0)
        );
    end component;
    
   signal A1,A2,A3,A4,A5,A6,A7,A8: std_logic_vector(7 downto 0);
   signal S: std_logic_vector(2 downto 0);
   signal Res: std_logic_vector(7 downto 0);

   begin
        A1 <= "10101010";
        A2 <= "11110000";
        A3 <= "00000000";
        A4 <= "11111111";
        A5 <= "01010101";
        A6 <= "00000000";
        A7 <= "00000000";
        A8 <= "00000000";
        mux: Mux8a1_8bits port map(A1,A2,A3,A4,A5,A6,A7,A8,S,Res);
        S <= "000" after 0 ns, "001" after 5 ns, "010" after 10 ns,"011" after 15 ns;
        
end arch;