library IEEE;
use IEEE.std_logic_1164.all;

entity FFD_tb is
end FFD_tb;

architecture Ar_FFD of FFD_tb is
    component FFD
    port (D, W, clk: in std_logic; 
    Q: out  std_logic);
    end component;

    signal a: std_logic;
    signal w: std_logic;
    signal clk: std_logic;
    signal r:std_logic;

   begin 
     R1:FFD port map(a,w,clk,r);
    process
    begin
        a<='1';
        w<='1';
        clk<='0' after 1 ns, '1' after 3 ns;
      wait for 5 ns;
        a<='0';
        w<='1';
        clk<='0' after 1 ns, '1' after 3 ns;
        wait for 5 ns;
      wait;
      end process;
end Ar_FFD;