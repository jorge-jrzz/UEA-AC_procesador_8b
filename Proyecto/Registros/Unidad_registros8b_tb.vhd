library IEEE;
use IEEE.std_logic_1164.all;

entity Unidad_registros8b_tb is
end Unidad_registros8b_tb;

architecture Ar_Unidad of Unidad_registros8b_tb is
    component Unidad_registros8b
    port(D :in std_logic_vector (7 downto 0);
         CC,CA,CB:std_logic_vector(2 downto 0);
         W,CLK :in std_logic;
         A,B:out std_logic_vector(7 downto 0)
         );
    end component;

    signal d: std_logic_vector(7 downto 0);
    signal cc,ca,cb: std_logic_vector(2 downto 0);
    signal w,clk: std_logic;
    signal a,b:std_logic_vector(7 downto 0);

   begin 
     R1:Unidad_registros8b port map(d,cc,ca,cb,w,clk,a,b);
    process
    begin
        d<="11101101";
        cc<="001";
        ca<="001";
        cb<="010";
        w<='1' after 2 ns;
        clk<='1' after 3 ns;
        wait for 5 ns;
        wait;
    end process;
end Ar_Unidad;