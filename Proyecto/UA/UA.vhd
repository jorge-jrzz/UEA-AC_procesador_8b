library ieee;
use ieee.std_logic_1164.all;

entity UA is
    port(
        A,B: in std_logic_vector (7 downto 0);
        S: in std_logic_vector(2 downto 0);
        Cout_port, Vout : out std_logic;
        R: out std_logic_vector(7 downto 0)
    );
end UA;

architecture arch of UA is
    component SumadorRestador8Bits 
        port (A, B: in std_logic_vector (7 downto 0);
        cin: in std_logic;
        S : in std_logic;
        R: out std_logic_vector (7 downto 0); 
        cout: out std_logic;
        v: out std_logic);
    end component;

    component Mux8a1_8bits
        port(
            a1,a2,a3,a4,a5,a6,a7,a8: in std_logic_vector(7 downto 0);
            s: in std_logic_vector(2 downto 0);
            R: out std_logic_vector(7 downto 0)
        );
    end component;

    signal suma: std_logic_vector(7 downto 0);
    signal resta: std_logic_vector(7 downto 0);
    signal aADD: std_logic_vector(7 downto 0);
    signal bADD: std_logic_vector(7 downto 0);
    signal aTransf: std_logic_vector(7 downto 0); 
    signal bTransf: std_logic_vector(7 downto 0);
    signal COUT: std_logic;
    signal V: std_logic;
    begin
        sum: SumadorRestador8Bits port map(A, B, '0','0', suma , COUT, V);
        dec: SumadorRestador8Bits port map(A , B, '0','1', resta,  COUT, V);
        Aadd_c: SumadorRestador8Bits port map(A, "00000000", '1','0', aADD  , COUT, V);
        Badd_c: SumadorRestador8Bits port map("00000000", B , '1','0', bADD , COUT, V);
        aTransf <= A;
        bTransf <= B;

        salida: Mux8a1_8bits port map (suma, resta, aADD, bADD, aTransf, bTransf,COUT,V);



end arch;
