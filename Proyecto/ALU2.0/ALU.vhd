library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
    port(
        A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        S: in std_logic_vector(3 downto 0);
        R: out std_logic_vector(7 downto 0);
        cout: out std_logic;
        v: out std_logic
    );
end ALU;
--S(3,2,1,0);
architecture arch of ALU is

    component Unidad_Aritmetica is
        port (
            A, B: in std_logic_vector(7 downto 0);
            S: in std_logic_vector(2 downto 0);
            R: out std_logic_vector(7 downto 0);
            cout: out std_logic;
            v: out std_logic
	    );
    end component;

    component UnidadLogica is 
        port (
            A, B: in std_logic_vector (7 downto 0);
            s: in std_logic_vector (2 downto 0);
            Result: out std_logic_vector(7 downto 0)
        );
    end component;

    component Mux2a1 is
        port(
            A, B: in std_logic_vector (7 downto 0);
            set: in std_logic;
            r: out std_logic_vector (7 downto 0)
        );  
    end component; 

    signal auxUS: std_logic_vector(2 downto 0);
    signal UA_1: std_logic_vector(7 downto 0);
    signal UL_1: std_logic_vector(7 downto 0);


    begin
        auxUS(0) <= S(0);
        auxUS(1) <= S(1);
        auxUS(2) <= S(2);

        UA2: Unidad_Aritmetica port map(A, B, auxUS, UA_1, cout, v);
        UL2: UnidadLogica port map(A, B, auxUS, UL_1);
        MUX2: Mux2a1 port map(UA_1, UL_1, S(3), R);
end arch;
