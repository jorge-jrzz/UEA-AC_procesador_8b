library IEEE;
use IEEE.std_logic_1164.all;

entity Unidad_registros8b is
    port(D :in std_logic_vector (7 downto 0);
         CC,CA,CB:std_logic_vector(2 downto 0);
         W,CLK :in std_logic;
         A,B:out std_logic_vector(7 downto 0)
         );
end Unidad_registros8b;

architecture Funcion  of Unidad_registros8b is
 component Deco3a8
 port (
    W: in std_logic;
    D: in std_logic_vector(2 downto 0);
    Y: out std_logic_vector(7 downto 0)
  );
  end component;

  component Registro_8b
     port(A :in std_logic_vector (7 downto 0);
       W,CLK :in std_logic;
       R:out std_logic_vector(7 downto 0)
       );
  end component;

  component Mux8a1
  port (
    S: in std_logic_vector(2 downto 0);
    d0,d1,d2,d3,d4,d5,d6,d7: in std_logic_vector(7 downto 0);
    Y: out std_logic_vector(7 downto 0)
  );
  end component;
  signal D1 :std_logic_vector(7 downto 0);
  signal X1,X2,X3,X4,X5,X6,X7,X8:std_logic_vector(7 downto 0);


  begin
    
    Deco1:Deco3a8 port map(W,CC,D1);

    Re1:Registro_8b port map(D,D1(0),CLK,X1);
    Re2:Registro_8b port map(D,D1(1),CLK,X2);
    Re3:Registro_8b port map(D,D1(2),CLK,X3);
    Re4:Registro_8b port map(D,D1(3),CLK,X4);
    Re5:Registro_8b port map(D,D1(4),CLK,X5);
    Re6:Registro_8b port map(D,D1(5),CLK,X6);
    Re7:Registro_8b port map(D,D1(6),CLK,X7);
    Re8:Registro_8b port map(D,D1(7),CLK,X8);

    MuxA:Mux8a1 port map(CA,X1,X2,X3,X4,X5,X6,X7,X8,A);
    MuxB:Mux8a1 port map(CB,X1,X2,X3,X4,X5,X6,X7,X8,B);

end Funcion;