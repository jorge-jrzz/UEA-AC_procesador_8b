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
        x <= "10101001";
        y <= "10101111";

        Alupas: ALU port map(x,y,senal,R,cou,v);
        senal <= "0000" after 0 ns, "0001" after 5 ns, "0010" after 10 ns, "0011" after 15 ns;


end arch;