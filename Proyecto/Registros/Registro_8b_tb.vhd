library IEEE;
use IEEE.std_logic_1164.all;

entity Registro_8b_tb is
end Registro_8b_tb;

architecture Ar_Registro of Registro_8b_tb is
    component Registro_8b
    port(A :in std_logic_vector (7 downto 0);
    W,CLK :in std_logic;
    R:out std_logic_vector(7 downto 0)
    );
    end component;

    signal a: std_logic_vector(7 downto 0);
    signal w: std_logic;
    signal clk: std_logic;
    signal r:std_logic_vector(7 downto 0);

   begin 
     R1:Registro_8b port map(a,w,clk,r);
    process
    begin
        a<="10101010";
        w<='1';
        clk<='0' after 1 ns, '1' after 3 ns;
      wait for 5 ns;
        a<="10011000";
        w<='1';
        clk<='0' after 1 ns, '1' after 3 ns;
        wait for 5 ns;
      wait;
      end process;
end Ar_Registro;