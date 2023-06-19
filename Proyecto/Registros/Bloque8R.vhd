library IEEE;
use IEEE.std_logic_1164.all;

entity Bloque8R is
    port(D :in std_logic_vector (7 downto 0);
         W,CLK,C :in std_logic;
         CC,CA,CB :in std_logic_vector(2 downto 0);
         A,B:out std_logic_vector(7 downto 0)
         );
end Bloque8R;

architecture Funcion  of Bloque8R is
    component Registro8b
        port(A :in std_logic_vector (7 downto 0);
             W,CLK,C :in std_logic;
             R:out std_logic_vector(7 downto 0)
             );
    end component;
    component Demux1a8   
    port (
        A: in std_logic_vector(7 downto 0);
        S: in std_logic_vector(2 downto 0);
        y0,y1,y2,y3,y4,y5,y6,y7: out std_logic_vector(7 downto 0)
      );
    end component;
    component Mux8a1 is
        port (
      S: in std_logic_vector(2 downto 0);
      d0,d1,d2,d3,d4,d5,d6,d7: in std_logic_vector(7 downto 0);
      Y: out std_logic_vector(7 downto 0)
    );
      end component;
      --señales para el demux
    signal M1:std_logic_vector(7 downto 0);
    signal M2:std_logic_vector(7 downto 0);
    signal M3:std_logic_vector(7 downto 0);
    signal M4:std_logic_vector(7 downto 0);
    signal M5:std_logic_vector(7 downto 0);
    signal M6:std_logic_vector(7 downto 0);
    signal M7:std_logic_vector(7 downto 0);
    signal M8:std_logic_vector(7 downto 0);
    
    --señales para canalizar el registro al mux
    signal x1:std_logic_vector(7 downto 0);
    signal x2:std_logic_vector(7 downto 0);
    signal x3:std_logic_vector(7 downto 0);
    signal x4:std_logic_vector(7 downto 0);
    signal x5:std_logic_vector(7 downto 0);
    signal x6:std_logic_vector(7 downto 0);
    signal x7:std_logic_vector(7 downto 0);
    signal x8:std_logic_vector(7 downto 0);

    
    
     begin
    Demux1:Demux1a8 port map(D,CC,M1,M2,M3,M4,M5,M6,M7,M8);--pendiente

    R0:Registro8b port map(M1,W,CLK,C,x1);
    R1:Registro8b port map(M2,W,CLK,C,x2);
    R2:Registro8b port map(M3,W,CLK,C,x3);
    R3:Registro8b port map(M4,W,CLK,C,x4);
    R4:Registro8b port map(M5,W,CLK,C,x5);
    R5:Registro8b port map(M6,W,CLK,C,x6);
    R6:Registro8b port map(M7,W,CLK,C,x7);
    R7:Registro8b port map(M8,W,CLK,C,x8);

    MUXA: Mux8a1 port map(CA,x1,x2,x3,x4,x5,x6,x7,x8,A);
    MUXB: Mux8a1 port map(CB,x1,x2,x3,x4,x5,x6,x7,x8,B);
   end Funcion;