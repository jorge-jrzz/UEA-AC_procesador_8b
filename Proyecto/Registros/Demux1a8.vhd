library IEEE;
use IEEE.std_logic_1164.all;

entity Demux1a8  is
 port (
      A: in std_logic_vector(7 downto 0);
      S: in std_logic_vector(2 downto 0);
      y0,y1,y2,y3,y4,y5,y6,y7: out std_logic_vector(7 downto 0)
    );
  end entity Demux1a8 ;

  architecture Funcion of Demux1a8 is
  begin
    process(A, S)
    begin
      case S is
        when "000" =>
          y0<= A;
        when "001" =>
          y1<= A;
        when "010" =>
          y2<= A;
        when "011" =>
          y3<= A;
        when "100" =>
          y4<= A;
        when "101" =>
          y5<= A;
        when "110" =>
          y6<= A;
        when "111" =>
           y7<= A;
        when others =>
           y0<="00000000";
      end case;
    end process;
  end architecture Funcion;
  