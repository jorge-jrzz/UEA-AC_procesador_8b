library IEEE;
use IEEE.std_logic_1164.all;

entity Mux8a1 is
    port (
      S: in std_logic_vector(2 downto 0);
      d0,d1,d2,d3,d4,d5,d6,d7: in std_logic_vector(7 downto 0);
      Y: out std_logic_vector(7 downto 0)
    );
  end entity Mux8a1;
  
  architecture Funcion of Mux8a1 is
  begin
    with S select
    Y<= d0 when "000",
        d1 when "001",
        d2 when "010",
        d3 when "011",
        d4 when "100",
        d5 when "101",
        d6 when "110",
        d7 when others;
  end architecture Funcion;
  