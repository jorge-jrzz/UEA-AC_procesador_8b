library IEEE;
use IEEE.std_logic_1164.all;

entity Bloque8R_tb is
end Bloque8R_tb;


architecture Ar_BloqueR of Bloque8R_tb is
    component Bloque8R 
    port(D :in std_logic_vector (7 downto 0);
         W,CLK,C :in std_logic;
         CC,CA,CB :in std_logic_vector(2 downto 0);
         A,B:out std_logic_vector(7 downto 0)
         );
    end component;
    --señales
    signal d: std_logic_vector(7 downto 0);
    signal w: std_logic;
    signal clk: std_logic;
    signal c: std_logic;
    signal cc: std_logic_vector(2 downto 0);
    signal ca: std_logic_vector(2 downto 0);
    signal cb: std_logic_vector(2 downto 0);
    signal a,b:std_logic_vector(7 downto 0);
begin 
--mapeos
     B1:Bloque8R port map(D=>d,W=>w,CLK=>clk,C=>c,CC=>cc,CA=>ca,CB=>cb,A=>a,B=>b);
    process
    begin
        --dar valores
        d<="10101010";
        w<='1';
        clk<='1';
        c<='0';
        cc<="001";
        ca<="000";
        cb<="001";
      wait for 5 ns;
      d<="10101010";
        w<='1';
        clk<='1';
        c<='0';
        cc<="010";
        ca<="010";
        cb<="000";
      wait for 10 ns;
      wait for 10 ns;

      wait;
      end process;
end Ar_BloqueR;