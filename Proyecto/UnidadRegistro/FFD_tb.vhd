library IEEE;
use IEEE.std_logic_1164.all;

entity FFD_tb is
end FFD_tb;

architecture Ar_FFD of FFD_tb is
    component FFD
    port (D, W, C, clk: in  std_logic; Q: out  std_logic
    );
    end component;

    signal a: std_logic;
    signal w: std_logic;
    signal clk: std_logic;
    signal c:std_logic;

begin 
        a<='1';
        R1:FFD port map(a,w,clk,c);
        w <= '1' after 0 ns, '0' after 5 ns;
        clk<= '1' after 0 ns, '0' after 5 ns;
        c<= '0'after 0 ns;
end Ar_FFD;