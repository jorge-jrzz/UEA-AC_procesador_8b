library IEEE;
use IEEE.std_logic_1164.all;

entity Registro8b is
    port(A :in std_logic_vector (7 downto 0);
         W,CLK,C :in std_logic;
         R:out std_logic_vector(7 downto 0)
         );
end Registro8b;

architecture Funcion  of Registro8b is
 component FFD
   port (D, W, C, clk: in  std_logic; Q: out  std_logic);
  end component;
  begin
  Registro1:FFD port map(A(0),W,C,CLK,R(0));
  Registro2:FFD port map(A(1),W,C,CLK,R(1));
  Registro3:FFD port map(A(2),W,C,CLK,R(2));
  Registro4:FFD port map(A(3),W,C,CLK,R(3));
  Registro5:FFD port map(A(4),W,C,CLK,R(4));
  Registro6:FFD port map(A(5),W,C,CLK,R(5));
  Registro7:FFD port map(A(6),W,C,CLK,R(6));
  Registro8:FFD port map(A(7),W,C,CLK,R(7));

end Funcion;