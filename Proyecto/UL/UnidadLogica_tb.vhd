library ieee;
use ieee.std_logic_1164.all;

entity UnidadLogica_tb is
end entity UnidadLogica_tb;

architecture arch of UnidadLogica_tb is
    component UnidadLogica
        port (
            A, B: in std_logic_vector (7 downto 0);
            s: in std_logic_vector (2 downto 0);
            Result: out std_logic_vector(7 downto 0)
        );
    end component;

    signal a: std_logic_vector(7 downto 0);
    signal b: std_logic_vector(7 downto 0);
    signal s: std_logic_vector(2 downto 0);

    begin
        a <= "10101001";
        b <= "10101111";
        
        r : UnidadLogica port map(a,b,s);
        s <= "000" after 0 ns, "001" after 5 ns, "010" after 10 ns,"011" after 15 ns;

end arch;