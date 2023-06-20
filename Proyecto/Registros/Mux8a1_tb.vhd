library IEEE;
use IEEE.std_logic_1164.all;

entity Mux8a1_tb is
end Mux8a1_tb;

architecture Ar_Mux of Mux8a1_tb is
    component Mux8a1
    port (
        S: in std_logic_vector(2 downto 0);
        d0,d1,d2,d3,d4,d5,d6,d7: in std_logic_vector(7 downto 0);
        Y: out std_logic_vector(7 downto 0)
      );
    end component;

    signal s: std_logic_vector(2 downto 0);
    signal D0,D1,D2,D3,D4,D5,D6,D7: std_logic_vector(7 downto 0);
    signal r:std_logic_vector(7 downto 0);

   begin 
     R1:Mux8a1 port map(s,D0,D1,D2,D3,D4,D5,D6,D7,r);
    process
    begin
        s<="001";
        D0<="11111111";
        D1<="00000000";
        D2<="11110000";
        D3<="11100000";
        D4<="11100001";
        D5<="10000000";
        D6<="11111100";
        D7<="00000000";
        wait for 5 ns;
        wait;
        
      end process;
end Ar_Mux;