library IEEE;
use IEEE.std_logic_1164.all;

entity Deco3a8 is
    port (
      W: in std_logic;
      D: in std_logic_vector(2 downto 0);
      Y: out std_logic_vector(7 downto 0)
    );
  end entity Deco3a8;
  
  architecture Ar_Deco of Deco3a8 is
  signal aux: std_logic_vector(7 downto 0);
  begin
    
     with D select
     aux <= "00000001" when "000",
           "00000010" when "001",
           "00000100" when "010",
           "00001000" when "011",
           "00010000" when "100",
           "00100000" when "101",
           "01000000" when "110",
           "10000000" when "111",
           "00000000" when others;

     Y <= aux when W = '1' else
           (others => '0');
  end architecture Ar_Deco;
  