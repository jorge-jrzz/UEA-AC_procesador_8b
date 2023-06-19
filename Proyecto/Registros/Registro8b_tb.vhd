library IEEE;
use IEEE.std_logic_1164.all;

entity Registro8b_tb is
end Registro8b_tb;


architecture Ar_Registro8b of Registro8b_tb is
    component Registro8b
    port(A :in std_logic_vector (7 downto 0);
    W,CLK,C :in std_logic;
    R:out std_logic_vector(7 downto 0)
    );
    end component;
    signal a: std_logic_vector(7 downto 0);
    signal w: std_logic;
    signal clk: std_logic;
    signal c:std_logic;
    signal r:std_logic_vector(7 downto 0);
begin 
     R1:Registro8b port map(A=>a,W=>w,CLK=>clk,C=>c,R=>r);
    process
    begin
        a<="10101010";
        w<='1';
        clk<='1';
        c<='0';
      wait for 5 ns;
      wait;
      end process;
end Ar_Registro8b;