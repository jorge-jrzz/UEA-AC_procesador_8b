library ieee;
use ieee.std_logic_1164.all;

entity UnidadLogica is
    port (
            A, B: in std_logic_vector (7 downto 0);
            s: in std_logic_vector (2 downto 0);
            Result: out std_logic_vector(7 downto 0)
        );
end entity UnidadLogica;

architecture Ar_UnidadLogica of UnidadLogica is
    component Mux8a1A
        port (
            a1,a2,a3,a4,a5,a6,a7,a8: in std_logic;
            S : in std_logic_vector(2 downto 0);
            R : out std_logic
        );
    end component;

    signal andM: std_logic_vector (7 downto 0);
    signal orM: std_logic_vector (7 downto 0);
    signal notA: std_logic_vector (7 downto 0);
    signal notB: std_logic_vector (7 downto 0);  
    signal xnorM: std_logic_vector (7 downto 0);  
    signal norM: std_logic_vector (7 downto 0);
    signal nandM: std_logic_vector (7 downto 0);
    signal xorM: std_logic_vector(7 downto 0);
    signal R: std_logic_vector(7 downto 0);

    begin 
    andM <= A and B;
    orM <= A or B;
    notA <= not(A);
    notB <= not(B);
    xorM <= A xor B;
    xnorM <= A xnor B;
    norM <= A nor B;
    nandM <= A nand B;

        mux1: Mux8a1A port map(andM(0),orM(0),notA(0),notB(0),xorM(0),norM(0),nandM(0),xnorM(0),s,Result(0));
        mux2: Mux8a1A port map(andM(1),orM(1),notA(1),notB(1),xorM(1),norM(1),nandM(1),xnorM(1),s,Result(1));
        mux3: Mux8a1A port map(andM(2),orM(2),notA(2),notB(2),xorM(2),norM(2),nandM(2),xnorM(2),s,Result(2));
        mux4: Mux8a1A port map(andM(3),orM(3),notA(3),notB(3),xorM(3),norM(3),nandM(3),xnorM(3),s,Result(3));
        mux5: Mux8a1A port map(andM(4),orM(4),notA(4),notB(4),xorM(4),norM(4),nandM(4),xnorM(4),s,Result(4));
        mux6: Mux8a1A port map(andM(5),orM(5),notA(5),notB(5),xorM(5),norM(5),nandM(5),xnorM(5),s,Result(5));
        mux7: Mux8a1A port map(andM(6),orM(6),notA(6),notB(6),xorM(6),norM(6),nandM(6),xnorM(6),s,Result(6));
        mux8: Mux8a1A port map(andM(7),orM(7),notA(7),notB(7),xorM(7),norM(7),nandM(7),xnorM(7),s,Result(7));
       
end architecture Ar_UnidadLogica;
        
