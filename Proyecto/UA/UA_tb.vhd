library ieee;
use ieee.std_logic_1164.all;

entity UA_tb is
end entity UA_tb;

architecture arch of UA_tb is
    component UA 
        port(
            A,B: in std_logic_vector (7 downto 0);
            S: in std_logic_vector(2 downto 0);
           --Cout_port, Vout : out std_logic;
            R: out std_logic_vector(7 downto 0)
        );
    end component;

    signal A: std_logic_vector(7 downto 0);
    signal B: std_logic_vector(7 downto 0);
    signal S: std_logic_vector(2 downto 0);
    
    begin
        A <= "10101010";
        B <= "10100100";
        
        Res: UA port map(A, B, S);
        S <= "000" after 0 ns, "001" after 5 ns, "010" after 10 ns,"011" after 15 ns;
  

end arch;
