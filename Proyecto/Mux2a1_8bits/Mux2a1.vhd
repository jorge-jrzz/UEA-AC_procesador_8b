--Multiplexor 2 a 1
library IEEE;
use IEEE.std_logic_1164.all;

entity Mux2a1 is
--a se selecciona con s = 1, y b con s = 0.
  port 
  (
    A, B: in std_logic_vector (7 downto 0);
    set: in std_logic;
    r: out std_logic_vector (7 downto 0)
  );
  end Mux2a1;

architecture Ar_Mux2a1 of Mux2a1 is
  begin
    with set select
      r <= A when '1',
           B when others;

end architecture Ar_Mux2a1;
  