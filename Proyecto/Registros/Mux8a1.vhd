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
    process(S,d0,d1,d2,d3,d4,d5,d6,d7)
    begin
      case S is
        when "000" =>
          Y <= d0;
        when "001" =>
          Y <= d1;
        when "010" =>
          Y <= d2;
        when "011" =>
          Y <= d3;
        when "100" =>
          Y <= d4;
        when "101" =>
          Y <= d5;
        when "110" =>
          Y <= d6;
        when "111" =>
          Y <= d7;
        when others =>
          Y<="00000000";
      end case;
    end process;
  end architecture Funcion;
  