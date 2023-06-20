library IEEE;
use IEEE.std_logic_1164.all;

entity Deco3a8_tb is
end Deco3a8_tb;

architecture Ar_Registro of Deco3a8_tb is
    component Deco3a8
    port (
        W: in std_logic;
        D: in std_logic_vector(2 downto 0);
        Y: out std_logic_vector(7 downto 0)
      );
    end component;
 
    signal w: std_logic;
    signal a: std_logic_vector(2 downto 0);
    signal r:std_logic_vector(7 downto 0);

   begin 
     R1:Deco3a8 port map(w,a,r);
    process
    begin
        a<="001";
        w<='1'; 
      wait for 5 ns;
      wait;
      end process;
end Ar_Registro;