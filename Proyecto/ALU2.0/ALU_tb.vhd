library IEEE;
use IEEE.std_logic_1164.all;

entity ALU_tb is 
end ALU_tb;

architecture arch of ALU_tb is

    component ALU is
        port(
            A: in std_logic_vector(7 downto 0);
            B: in std_logic_vector(7 downto 0);
            S: in std_logic_vector(3 downto 0);
            R: out std_logic_vector(7 downto 0);
            cout: out std_logic;
            v: out std_logic
        );
    end component;

    signal x: std_logic_vector(7 downto 0);
    signal y: std_logic_vector(7 downto 0);
    signal senal: std_logic_vector(3 downto 0);
    signal resulto: std_logic_vector(7 downto 0);
    signal R: std_logic_vector(7 downto 0);
    signal cou: std_logic;
    signal v: std_logic;

    begin   
        x <= "00001111";
        y <= "00000011";

        Alupas: ALU port map(x,y,senal,R,cou,v);
        senal <= "1000" after 0 ns, "1001" after 5 ns, "1010" after 10 ns, "1011" after 15 ns, "1100" after 20 ns, "1101" after 25 ns, "1110" after 30 ns, "1111" after 35 ns, "1000" after 40 ns;


end arch;